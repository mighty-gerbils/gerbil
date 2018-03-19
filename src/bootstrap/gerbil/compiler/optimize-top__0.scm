(declare (block) (standard-bindings) (extended-bindings))
(begin
  (declare (inlining-limit 100))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl25884_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl25884_ (force gxc#&void))
           (table-set! _tbl25884_ '%#begin gxc#collect-begin%)
           (table-set! _tbl25884_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl25884_ '%#module gxc#collect-module%)
           (table-set!
            _tbl25884_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set!
            _tbl25884_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl25884_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl25884_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl25884_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl25884_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl25884_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl25884_ '%#call gxc#collect-type-call%)
           (table-set! _tbl25884_ '%#if gxc#collect-operands)
           (table-set! _tbl25884_ '%#set! gxc#collect-body-setq%)
           _tbl25884_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx25877_ . _args25879_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx25877_ _args25879_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl25874_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl25874_ (force gxc#&false))
           (table-set! _tbl25874_ '%#begin gxc#basic-expression-type-begin%)
           (table-set!
            _tbl25874_
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%)
           (table-set! _tbl25874_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl25874_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl25874_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl25874_ '%#ref gxc#basic-expression-type-ref%)
           _tbl25874_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx25867_ . _args25869_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx25867_ _args25869_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl25864_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl25864_ (force gxc#&basic-xform))
           (table-set!
            _tbl25864_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl25864_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl25864_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl25864_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl25864_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx25857_ . _args25859_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx25857_ _args25859_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#collect-type-define-values%
    (lambda (_stx25713_)
      (let* ((___stx2589725898_ _stx25713_)
             (_g2571625747_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2589725898_))))
        (let ((___kont2589925900_
               (lambda (_L25829_ _L25830_)
                 (let ((_sym25846_ (gxc#identifier-symbol _L25830_)))
                   (begin
                     (if (table-ref
                          (gxc#current-compile-mutators)
                          _sym25846_
                          '#f)
                         (gxc#verbose
                          '"skipping type declaration for mutable binding "
                          _sym25846_)
                         (let ((_type2584725849_
                                (gxc#apply-basic-expression-type _L25829_)))
                           (if _type2584725849_
                               (let ((_type25852_ _type2584725849_))
                                 (gxc#optimizer-declare-type!__0
                                  _sym25846_
                                  _type25852_))
                               '#f)))
                     (gxc#compile-e _L25829_)))))
              (___kont2590125902_
               (lambda (_L25776_ _L25777_) (gxc#compile-e _L25776_))))
          (let ((___match2593025931_
                 (lambda (_e2572025797_
                          _hd2572125800_
                          _tl2572225802_
                          _e2572325805_
                          _hd2572425808_
                          _tl2572525810_
                          _e2572625813_
                          _hd2572725816_
                          _tl2572825818_
                          _e2572925821_
                          _hd2573025824_
                          _tl2573125826_)
                   (let ((_L25829_ _hd2573025824_) (_L25830_ _hd2572725816_))
                     (if (gx#identifier? _L25830_)
                         (___kont2589925900_ _L25829_ _L25830_)
                         (___kont2590125902_
                          _hd2573025824_
                          _hd2572425808_))))))
            (if (gx#stx-pair? ___stx2589725898_)
                (let ((_e2572025797_ (gx#stx-e ___stx2589725898_)))
                  (let ((_tl2572225802_ (##cdr _e2572025797_))
                        (_hd2572125800_ (##car _e2572025797_)))
                    (if (gx#stx-pair? _tl2572225802_)
                        (let ((_e2572325805_ (gx#stx-e _tl2572225802_)))
                          (let ((_tl2572525810_ (##cdr _e2572325805_))
                                (_hd2572425808_ (##car _e2572325805_)))
                            (if (gx#stx-pair? _hd2572425808_)
                                (let ((_e2572625813_
                                       (gx#stx-e _hd2572425808_)))
                                  (let ((_tl2572825818_ (##cdr _e2572625813_))
                                        (_hd2572725816_ (##car _e2572625813_)))
                                    (if (gx#stx-null? _tl2572825818_)
                                        (if (gx#stx-pair? _tl2572525810_)
                                            (let ((_e2572925821_
                                                   (gx#stx-e _tl2572525810_)))
                                              (let ((_tl2573125826_
                                                     (##cdr _e2572925821_))
                                                    (_hd2573025824_
                                                     (##car _e2572925821_)))
                                                (if (gx#stx-null?
                                                     _tl2573125826_)
                                                    (___match2593025931_
                                                     _e2572025797_
                                                     _hd2572125800_
                                                     _tl2572225802_
                                                     _e2572325805_
                                                     _hd2572425808_
                                                     _tl2572525810_
                                                     _e2572625813_
                                                     _hd2572725816_
                                                     _tl2572825818_
                                                     _e2572925821_
                                                     _hd2573025824_
                                                     _tl2573125826_)
                                                    (_g2571625747_))))
                                            (_g2571625747_))
                                        (if (gx#stx-pair? _tl2572525810_)
                                            (let ((_e2574025768_
                                                   (gx#stx-e _tl2572525810_)))
                                              (let ((_tl2574225773_
                                                     (##cdr _e2574025768_))
                                                    (_hd2574125771_
                                                     (##car _e2574025768_)))
                                                (if (gx#stx-null?
                                                     _tl2574225773_)
                                                    (___kont2590125902_
                                                     _hd2574125771_
                                                     _hd2572425808_)
                                                    (_g2571625747_))))
                                            (_g2571625747_)))))
                                (if (gx#stx-pair? _tl2572525810_)
                                    (let ((_e2574025768_
                                           (gx#stx-e _tl2572525810_)))
                                      (let ((_tl2574225773_
                                             (##cdr _e2574025768_))
                                            (_hd2574125771_
                                             (##car _e2574025768_)))
                                        (if (gx#stx-null? _tl2574225773_)
                                            (___kont2590125902_
                                             _hd2574125771_
                                             _hd2572425808_)
                                            (_g2571625747_))))
                                    (_g2571625747_)))))
                        (_g2571625747_))))
                (_g2571625747_)))))))
  (define gxc#collect-type-let-values%
    (lambda (_stx25498_)
      (letrec ((_collect-e25500_
                (lambda (_hd25657_ _expr25658_)
                  (let* ((___stx2595325954_ _hd25657_)
                         (_g2566125671_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx2595325954_))))
                    (let ((___kont2595525956_
                           (lambda (_L25691_)
                             (let ((_sym25702_
                                    (gxc#identifier-symbol _L25691_)))
                               (if (table-ref
                                    (gxc#current-compile-mutators)
                                    _sym25702_
                                    '#f)
                                   (gxc#verbose
                                    '"skipping type declaration for mutable binding "
                                    _sym25702_)
                                   (let ((_type2570325705_
                                          (gxc#apply-basic-expression-type
                                           _expr25658_)))
                                     (if _type2570325705_
                                         (let ((_type25708_ _type2570325705_))
                                           (gxc#optimizer-declare-type!__%
                                            _sym25702_
                                            _type25708_
                                            '#t))
                                         '#f))))))
                          (___kont2595725958_ (lambda () '#!void)))
                      (let ((___match2596625967_
                             (lambda (_e2566425683_
                                      _hd2566525686_
                                      _tl2566625688_)
                               (let ((_L25691_ _hd2566525686_))
                                 (if (gx#identifier? _L25691_)
                                     (___kont2595525956_ _L25691_)
                                     (___kont2595725958_))))))
                        (if (gx#stx-pair? ___stx2595325954_)
                            (let ((_e2566425683_ (gx#stx-e ___stx2595325954_)))
                              (let ((_tl2566625688_ (##cdr _e2566425683_))
                                    (_hd2566525686_ (##car _e2566425683_)))
                                (if (gx#stx-null? _tl2566625688_)
                                    (___match2596625967_
                                     _e2566425683_
                                     _hd2566525686_
                                     _tl2566625688_)
                                    (___kont2595725958_))))
                            (___kont2595725958_))))))))
        (let* ((_g2550225537_
                (lambda (_g2550325534_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2550325534_)))
               (_g2550125654_
                (lambda (_g2550325540_)
                  (if (gx#stx-pair? _g2550325540_)
                      (let ((_e2550725542_ (gx#stx-e _g2550325540_)))
                        (let ((_hd2550825545_ (##car _e2550725542_))
                              (_tl2550925547_ (##cdr _e2550725542_)))
                          (if (gx#stx-pair? _tl2550925547_)
                              (let ((_e2551025550_ (gx#stx-e _tl2550925547_)))
                                (let ((_hd2551125553_ (##car _e2551025550_))
                                      (_tl2551225555_ (##cdr _e2551025550_)))
                                  (if (gx#stx-pair/null? _hd2551125553_)
                                      (let ((_g28482_
                                             (gx#syntax-split-splice
                                              _hd2551125553_
                                              '0)))
                                        (begin
                                          (let ((_g28483_
                                                 (if (##values? _g28482_)
                                                     (##vector-length _g28482_)
                                                     1)))
                                            (if (not (##fx= _g28483_ 2))
                                                (error "Context expects 2 values"
                                                       _g28483_)))
                                          (let ((_target2551325558_
                                                 (##vector-ref _g28482_ 0))
                                                (_tl2551525560_
                                                 (##vector-ref _g28482_ 1)))
                                            (if (gx#stx-null? _tl2551525560_)
                                                (letrec ((_loop2551625563_
                                                          (lambda (_hd2551425566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr2552025568_
                           _hd2552125570_)
                    (if (gx#stx-pair? _hd2551425566_)
                        (let ((_e2551725573_ (gx#stx-e _hd2551425566_)))
                          (let ((_lp-hd2551825576_ (##car _e2551725573_))
                                (_lp-tl2551925578_ (##cdr _e2551725573_)))
                            (if (gx#stx-pair? _lp-hd2551825576_)
                                (let ((_e2552425581_
                                       (gx#stx-e _lp-hd2551825576_)))
                                  (let ((_hd2552525584_ (##car _e2552425581_))
                                        (_tl2552625586_ (##cdr _e2552425581_)))
                                    (if (gx#stx-pair? _tl2552625586_)
                                        (let ((_e2552725589_
                                               (gx#stx-e _tl2552625586_)))
                                          (let ((_hd2552825592_
                                                 (##car _e2552725589_))
                                                (_tl2552925594_
                                                 (##cdr _e2552725589_)))
                                            (if (gx#stx-null? _tl2552925594_)
                                                (_loop2551625563_
                                                 _lp-tl2551925578_
                                                 (cons _hd2552825592_
                                                       _expr2552025568_)
                                                 (cons _hd2552525584_
                                                       _hd2552125570_))
                                                (_g2550225537_
                                                 _g2550325540_))))
                                        (_g2550225537_ _g2550325540_))))
                                (_g2550225537_ _g2550325540_))))
                        (let ((_expr2552225597_ (reverse _expr2552025568_))
                              (_hd2552325599_ (reverse _hd2552125570_)))
                          (if (gx#stx-pair? _tl2551225555_)
                              (let ((_e2553025602_ (gx#stx-e _tl2551225555_)))
                                (let ((_hd2553125605_ (##car _e2553025602_))
                                      (_tl2553225607_ (##cdr _e2553025602_)))
                                  (if (gx#stx-null? _tl2553225607_)
                                      ((lambda (_L25610_ _L25611_ _L25612_)
                                         (begin
                                           (for-each
                                            _collect-e25500_
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g2563225635_
                                                               _g2563325637_)
                                                        (cons _g2563225635_
                                                              _g2563325637_))
                                                      '()
                                                      _L25612_))
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g2563925642_
                                                               _g2564025644_)
                                                        (cons _g2563925642_
                                                              _g2564025644_))
                                                      '()
                                                      _L25611_)))
                                           (for-each
                                            gxc#compile-e
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g2564625649_
                                                               _g2564725651_)
                                                        (cons _g2564625649_
                                                              _g2564725651_))
                                                      '()
                                                      _L25611_)))
                                           (gxc#compile-e _L25610_)))
                                       _hd2553125605_
                                       _expr2552225597_
                                       _hd2552325599_)
                                      (_g2550225537_ _g2550325540_))))
                              (_g2550225537_ _g2550325540_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2551625563_
                                                   _target2551325558_
                                                   '()
                                                   '()))
                                                (_g2550225537_
                                                 _g2550325540_)))))
                                      (_g2550225537_ _g2550325540_))))
                              (_g2550225537_ _g2550325540_))))
                      (_g2550225537_ _g2550325540_)))))
          (_g2550125654_ _stx25498_)))))
  (define gxc#collect-type-call%
    (lambda (_stx25052_)
      (let* ((___stx2596925970_ _stx25052_)
             (_g2505625158_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2596925970_))))
        (let ((___kont2597125972_
               (lambda (_L25448_ _L25449_ _L25450_ _L25451_ _L25452_)
                 (gxc#optimizer-declare-method!__%
                  (gxc#identifier-symbol _L25451_)
                  (gx#stx-e _L25450_)
                  (gxc#identifier-symbol _L25449_)
                  (gx#stx-e _L25448_))))
              (___kont2597325974_
               (lambda (_L25274_ _L25275_ _L25276_ _L25277_)
                 (gxc#optimizer-declare-method!__%
                  (gxc#identifier-symbol _L25276_)
                  (gx#stx-e _L25275_)
                  (gxc#identifier-symbol _L25274_)
                  '#f)))
              (___kont2597525976_ (lambda () '#!void)))
          (let ((___match2610426105_
                 (lambda (_e2506325320_
                          _hd2506425323_
                          _tl2506525325_
                          _e2506625328_
                          _hd2506725331_
                          _tl2506825333_
                          _e2506925336_
                          _hd2507025339_
                          _tl2507125341_
                          _e2507225344_
                          _hd2507325347_
                          _tl2507425349_
                          _e2507525352_
                          _hd2507625355_
                          _tl2507725357_
                          _e2507825360_
                          _hd2507925363_
                          _tl2508025365_
                          _e2508125368_
                          _hd2508225371_
                          _tl2508325373_
                          _e2508425376_
                          _hd2508525379_
                          _tl2508625381_
                          _e2508725384_
                          _hd2508825387_
                          _tl2508925389_
                          _e2509025392_
                          _hd2509125395_
                          _tl2509225397_
                          _e2509325400_
                          _hd2509425403_
                          _tl2509525405_
                          _e2509625408_
                          _hd2509725411_
                          _tl2509825413_
                          _e2509925416_
                          _hd2510025419_
                          _tl2510125421_
                          _e2510225424_
                          _hd2510325427_
                          _tl2510425429_
                          _e2510525432_
                          _hd2510625435_
                          _tl2510725437_
                          _e2510825440_
                          _hd2510925443_
                          _tl2511025445_)
                   (let ((_L25448_ _hd2510925443_)
                         (_L25449_ _hd2510025419_)
                         (_L25450_ _hd2509125395_)
                         (_L25451_ _hd2508225371_)
                         (_L25452_ _hd2507325347_))
                     (if (gxc#runtime-identifier=? _L25452_ 'bind-method!)
                         (___kont2597125972_
                          _L25448_
                          _L25449_
                          _L25450_
                          _L25451_
                          _L25452_)
                         (___kont2597525976_))))))
            (if (gx#stx-pair? ___stx2596925970_)
                (let ((_e2506325320_ (gx#stx-e ___stx2596925970_)))
                  (let ((_tl2506525325_ (##cdr _e2506325320_))
                        (_hd2506425323_ (##car _e2506325320_)))
                    (if (gx#stx-pair? _tl2506525325_)
                        (let ((_e2506625328_ (gx#stx-e _tl2506525325_)))
                          (let ((_tl2506825333_ (##cdr _e2506625328_))
                                (_hd2506725331_ (##car _e2506625328_)))
                            (if (gx#stx-pair? _hd2506725331_)
                                (let ((_e2506925336_
                                       (gx#stx-e _hd2506725331_)))
                                  (let ((_tl2507125341_ (##cdr _e2506925336_))
                                        (_hd2507025339_ (##car _e2506925336_)))
                                    (if (gx#identifier? _hd2507025339_)
                                        (if (gx#stx-eq? '%#ref _hd2507025339_)
                                            (if (gx#stx-pair? _tl2507125341_)
                                                (let ((_e2507225344_
                                                       (gx#stx-e
                                                        _tl2507125341_)))
                                                  (let ((_tl2507425349_
                                                         (##cdr _e2507225344_))
                                                        (_hd2507325347_
                                                         (##car _e2507225344_)))
                                                    (if (gx#stx-null?
                                                         _tl2507425349_)
                                                        (if (gx#stx-pair?
                                                             _tl2506825333_)
                                                            (let ((_e2507525352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2506825333_)))
                      (let ((_tl2507725357_ (##cdr _e2507525352_))
                            (_hd2507625355_ (##car _e2507525352_)))
                        (if (gx#stx-pair? _hd2507625355_)
                            (let ((_e2507825360_ (gx#stx-e _hd2507625355_)))
                              (let ((_tl2508025365_ (##cdr _e2507825360_))
                                    (_hd2507925363_ (##car _e2507825360_)))
                                (if (gx#identifier? _hd2507925363_)
                                    (if (gx#stx-eq? '%#ref _hd2507925363_)
                                        (if (gx#stx-pair? _tl2508025365_)
                                            (let ((_e2508125368_
                                                   (gx#stx-e _tl2508025365_)))
                                              (let ((_tl2508325373_
                                                     (##cdr _e2508125368_))
                                                    (_hd2508225371_
                                                     (##car _e2508125368_)))
                                                (if (gx#stx-null?
                                                     _tl2508325373_)
                                                    (if (gx#stx-pair?
                                                         _tl2507725357_)
                                                        (let ((_e2508425376_
                                                               (gx#stx-e
                                                                _tl2507725357_)))
                                                          (let ((_tl2508625381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2508425376_))
                        (_hd2508525379_ (##car _e2508425376_)))
                    (if (gx#stx-pair? _hd2508525379_)
                        (let ((_e2508725384_ (gx#stx-e _hd2508525379_)))
                          (let ((_tl2508925389_ (##cdr _e2508725384_))
                                (_hd2508825387_ (##car _e2508725384_)))
                            (if (gx#identifier? _hd2508825387_)
                                (if (gx#stx-eq? '%#quote _hd2508825387_)
                                    (if (gx#stx-pair? _tl2508925389_)
                                        (let ((_e2509025392_
                                               (gx#stx-e _tl2508925389_)))
                                          (let ((_tl2509225397_
                                                 (##cdr _e2509025392_))
                                                (_hd2509125395_
                                                 (##car _e2509025392_)))
                                            (if (gx#stx-null? _tl2509225397_)
                                                (if (gx#stx-pair?
                                                     _tl2508625381_)
                                                    (let ((_e2509325400_
                                                           (gx#stx-e
                                                            _tl2508625381_)))
                                                      (let ((_tl2509525405_
                                                             (##cdr _e2509325400_))
                                                            (_hd2509425403_
                                                             (##car _e2509325400_)))
                                                        (if (gx#stx-pair?
                                                             _hd2509425403_)
                                                            (let ((_e2509625408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2509425403_)))
                      (let ((_tl2509825413_ (##cdr _e2509625408_))
                            (_hd2509725411_ (##car _e2509625408_)))
                        (if (gx#identifier? _hd2509725411_)
                            (if (gx#stx-eq? '%#ref _hd2509725411_)
                                (if (gx#stx-pair? _tl2509825413_)
                                    (let ((_e2509925416_
                                           (gx#stx-e _tl2509825413_)))
                                      (let ((_tl2510125421_
                                             (##cdr _e2509925416_))
                                            (_hd2510025419_
                                             (##car _e2509925416_)))
                                        (if (gx#stx-null? _tl2510125421_)
                                            (if (gx#stx-pair? _tl2509525405_)
                                                (let ((_e2510225424_
                                                       (gx#stx-e
                                                        _tl2509525405_)))
                                                  (let ((_tl2510425429_
                                                         (##cdr _e2510225424_))
                                                        (_hd2510325427_
                                                         (##car _e2510225424_)))
                                                    (if (gx#stx-pair?
                                                         _hd2510325427_)
                                                        (let ((_e2510525432_
                                                               (gx#stx-e
                                                                _hd2510325427_)))
                                                          (let ((_tl2510725437_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2510525432_))
                        (_hd2510625435_ (##car _e2510525432_)))
                    (if (gx#identifier? _hd2510625435_)
                        (if (gx#stx-eq? '%#quote _hd2510625435_)
                            (if (gx#stx-pair? _tl2510725437_)
                                (let ((_e2510825440_
                                       (gx#stx-e _tl2510725437_)))
                                  (let ((_tl2511025445_ (##cdr _e2510825440_))
                                        (_hd2510925443_ (##car _e2510825440_)))
                                    (if (gx#stx-null? _tl2511025445_)
                                        (if (gx#stx-null? _tl2510425429_)
                                            (___match2610426105_
                                             _e2506325320_
                                             _hd2506425323_
                                             _tl2506525325_
                                             _e2506625328_
                                             _hd2506725331_
                                             _tl2506825333_
                                             _e2506925336_
                                             _hd2507025339_
                                             _tl2507125341_
                                             _e2507225344_
                                             _hd2507325347_
                                             _tl2507425349_
                                             _e2507525352_
                                             _hd2507625355_
                                             _tl2507725357_
                                             _e2507825360_
                                             _hd2507925363_
                                             _tl2508025365_
                                             _e2508125368_
                                             _hd2508225371_
                                             _tl2508325373_
                                             _e2508425376_
                                             _hd2508525379_
                                             _tl2508625381_
                                             _e2508725384_
                                             _hd2508825387_
                                             _tl2508925389_
                                             _e2509025392_
                                             _hd2509125395_
                                             _tl2509225397_
                                             _e2509325400_
                                             _hd2509425403_
                                             _tl2509525405_
                                             _e2509625408_
                                             _hd2509725411_
                                             _tl2509825413_
                                             _e2509925416_
                                             _hd2510025419_
                                             _tl2510125421_
                                             _e2510225424_
                                             _hd2510325427_
                                             _tl2510425429_
                                             _e2510525432_
                                             _hd2510625435_
                                             _tl2510725437_
                                             _e2510825440_
                                             _hd2510925443_
                                             _tl2511025445_)
                                            (___kont2597525976_))
                                        (___kont2597525976_))))
                                (___kont2597525976_))
                            (___kont2597525976_))
                        (___kont2597525976_))))
                (___kont2597525976_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl2509525405_)
                                                    (if (gxc#runtime-identifier=?
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '-bind-method)
                                                         'bind-method!)
                                                        (let ((_L25274_
                                                               _hd2510025419_)
                                                              (_L25275_
                                                               _hd2509125395_)
                                                              (_L25276_
                                                               _hd2508225371_)
                                                              (_L25277_
                                                               _hd2507325347_))
                                                          (___kont2597325974_
                                                           _L25274_
                                                           _L25275_
                                                           _L25276_
                                                           _L25277_))
                                                        (___kont2597525976_))
                                                    (___kont2597525976_)))
                                            (___kont2597525976_))))
                                    (___kont2597525976_))
                                (___kont2597525976_))
                            (___kont2597525976_))))
                    (___kont2597525976_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2597525976_))
                                                (___kont2597525976_))))
                                        (___kont2597525976_))
                                    (___kont2597525976_))
                                (___kont2597525976_))))
                        (___kont2597525976_))))
                (___kont2597525976_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2597525976_))))
                                            (___kont2597525976_))
                                        (___kont2597525976_))
                                    (___kont2597525976_))))
                            (___kont2597525976_))))
                    (___kont2597525976_))
                (___kont2597525976_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2597525976_))
                                            (___kont2597525976_))
                                        (___kont2597525976_))))
                                (___kont2597525976_))))
                        (___kont2597525976_))))
                (___kont2597525976_)))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx24992_)
      (let* ((___stx2621326214_ _stx24992_)
             (_g2499525008_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2621326214_))))
        (let ((___kont2621526216_ (lambda (_L25036_) (gxc#compile-e _L25036_)))
              (___kont2621726218_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2621326214_)
              (let ((_e2499825020_ (gx#stx-e ___stx2621326214_)))
                (let ((_tl2500025025_ (##cdr _e2499825020_))
                      (_hd2499925023_ (##car _e2499825020_)))
                  (if (gx#stx-pair? _tl2500025025_)
                      (let ((_e2500125028_ (gx#stx-e _tl2500025025_)))
                        (let ((_tl2500325033_ (##cdr _e2500125028_))
                              (_hd2500225031_ (##car _e2500125028_)))
                          (if (gx#stx-null? _tl2500325033_)
                              (___kont2621526216_ _hd2500225031_)
                              (___kont2621726218_))))
                      (___kont2621726218_))))
              (___kont2621726218_))))))
  (define gxc#basic-expression-type-begin-annotation%
    (lambda (_stx24925_)
      (let* ((_g2492724944_
              (lambda (_g2492824941_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2492824941_)))
             (_g2492624989_
              (lambda (_g2492824947_)
                (if (gx#stx-pair? _g2492824947_)
                    (let ((_e2493124949_ (gx#stx-e _g2492824947_)))
                      (let ((_hd2493224952_ (##car _e2493124949_))
                            (_tl2493324954_ (##cdr _e2493124949_)))
                        (if (gx#stx-pair? _tl2493324954_)
                            (let ((_e2493424957_ (gx#stx-e _tl2493324954_)))
                              (let ((_hd2493524960_ (##car _e2493424957_))
                                    (_tl2493624962_ (##cdr _e2493424957_)))
                                (if (gx#stx-pair? _tl2493624962_)
                                    (let ((_e2493724965_
                                           (gx#stx-e _tl2493624962_)))
                                      (let ((_hd2493824968_
                                             (##car _e2493724965_))
                                            (_tl2493924970_
                                             (##cdr _e2493724965_)))
                                        (if (gx#stx-null? _tl2493924970_)
                                            ((lambda (_L24973_ _L24974_)
                                               (gxc#compile-e _L24973_))
                                             _hd2493824968_
                                             _hd2493524960_)
                                            (_g2492724944_ _g2492824947_))))
                                    (_g2492724944_ _g2492824947_))))
                            (_g2492724944_ _g2492824947_))))
                    (_g2492724944_ _g2492824947_)))))
        (_g2492624989_ _stx24925_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx23562_)
      (let* ((___stx2623526236_ _stx23562_)
             (_g2356923868_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2623526236_))))
        (let ((___kont2623726238_
               (lambda (_L24870_ _L24871_ _L24872_ _L24873_ _L24874_)
                 (let* ((_type-t24917_ (gxc#identifier-symbol _L24871_))
                        (_type24919_
                         (gxc#optimizer-resolve-type _type-t24917_)))
                   (if (##structure-instance-of?
                        _type24919_
                        'gxc#!struct-type::t)
                       (##structure gxc#!struct-cons::t _type-t24917_)
                       '#f))))
              (___kont2623926240_
               (lambda (_L24656_ _L24657_ _L24658_ _L24659_)
                 (let* ((_type-t24732_ (gxc#identifier-symbol _L24657_))
                        (_type24734_
                         (gxc#optimizer-resolve-type _type-t24732_)))
                   (if (##structure-instance-of?
                        _type24734_
                        'gxc#!struct-type::t)
                       (##structure gxc#!struct-cons::t _type-t24732_)
                       '#f))))
              (___kont2624526246_
               (lambda (_L24498_)
                 (let ((__obj28476 (make-object gxc#!lambda::t '5)))
                   (begin
                     (gxc#!lambda:::init!__0
                      __obj28476
                      'lambda
                      (gxc#lambda-form-arity _L24498_)
                      (gxc#dispatch-lambda-form-delegate _L24498_))
                     __obj28476))))
              (___kont2624726248_
               (lambda (_L24425_ _L24426_ _L24427_ _L24428_ _L24429_ _L24430_)
                 (let* ((_tab24480_ (gx#stx-e _L24427_))
                        (_keys24482_
                         (if _tab24480_
                             (filter values (vector->list _tab24480_))
                             '#f)))
                   (##structure
                    gxc#!kw-lambda::t
                    'kw-lambda
                    _keys24482_
                    (gxc#identifier-symbol _L24426_)))))
              (___kont2624926250_
               (lambda (_L24156_
                        _L24157_
                        _L24158_
                        _L24159_
                        _L24160_
                        _L24161_
                        _L24162_
                        _L24163_
                        _L24164_
                        _L24165_)
                 (##structure
                  gxc#!kw-lambda-primary::t
                  'kw-lambda-dispatch
                  (map gx#stx-e
                       (begin
                         '#!void
                         (foldr1 (lambda (_g2426024263_ _g2426124265_)
                                   (cons _g2426024263_ _g2426124265_))
                                 '()
                                 _L24158_)))
                  (gxc#identifier-symbol _L24162_))))
              (___kont2625326254_ (lambda () '#f)))
          (let* ((___match2670026701_
                  (lambda (_e2375923880_
                           _hd2376023883_
                           _tl2376123885_
                           _e2376223888_
                           _hd2376323891_
                           _tl2376423893_
                           _e2376523896_
                           _hd2376623899_
                           _tl2376723901_
                           _e2376823904_
                           _hd2376923907_
                           _tl2377023909_
                           _e2377123912_
                           _hd2377223915_
                           _tl2377323917_
                           _e2377423920_
                           _hd2377523923_
                           _tl2377623925_
                           _e2377723928_
                           _hd2377823931_
                           _tl2377923933_
                           _e2378023936_
                           _hd2378123939_
                           _tl2378223941_
                           _e2378323944_
                           _hd2378423947_
                           _tl2378523949_
                           _e2378623952_
                           _hd2378723955_
                           _tl2378823957_
                           _e2378923960_
                           _hd2379023963_
                           _tl2379123965_
                           _e2379223968_
                           _hd2379323971_
                           _tl2379423973_
                           _e2379523976_
                           _hd2379623979_
                           _tl2379723981_
                           _e2379823984_
                           _hd2379923987_
                           _tl2380023989_
                           ___splice2625126252_
                           _target2380123992_
                           _tl2380323994_
                           _e2381623997_
                           _hd2381724000_
                           _tl2381824002_
                           _e2381924005_
                           _hd2382024008_
                           _tl2382124010_
                           _e2382224013_
                           _hd2382324016_
                           _tl2382424018_)
                    (letrec ((_loop2380424021_
                              (lambda (_hd2380224024_
                                       _-absent-value2380824026_
                                       _key2380924028_
                                       _-xkwvar2381024030_
                                       _-hash-ref2381124032_)
                                (if (gx#stx-pair? _hd2380224024_)
                                    (let ((_e2380524035_
                                           (gx#stx-e _hd2380224024_)))
                                      (let ((_lp-tl2380724040_
                                             (##cdr _e2380524035_))
                                            (_lp-hd2380624038_
                                             (##car _e2380524035_)))
                                        (if (gx#stx-pair? _lp-hd2380624038_)
                                            (let ((_e2382524043_
                                                   (gx#stx-e
                                                    _lp-hd2380624038_)))
                                              (let ((_tl2382724048_
                                                     (##cdr _e2382524043_))
                                                    (_hd2382624046_
                                                     (##car _e2382524043_)))
                                                (if (gx#identifier?
                                                     _hd2382624046_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd2382624046_)
                                                        (if (gx#stx-pair?
                                                             _tl2382724048_)
                                                            (let ((_e2382824051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2382724048_)))
                      (let ((_tl2383024056_ (##cdr _e2382824051_))
                            (_hd2382924054_ (##car _e2382824051_)))
                        (if (gx#stx-pair? _hd2382924054_)
                            (let ((_e2383124059_ (gx#stx-e _hd2382924054_)))
                              (let ((_tl2383324064_ (##cdr _e2383124059_))
                                    (_hd2383224062_ (##car _e2383124059_)))
                                (if (gx#identifier? _hd2383224062_)
                                    (if (gx#stx-eq? '%#ref _hd2383224062_)
                                        (if (gx#stx-pair? _tl2383324064_)
                                            (let ((_e2383424067_
                                                   (gx#stx-e _tl2383324064_)))
                                              (let ((_tl2383624072_
                                                     (##cdr _e2383424067_))
                                                    (_hd2383524070_
                                                     (##car _e2383424067_)))
                                                (if (gx#stx-null?
                                                     _tl2383624072_)
                                                    (if (gx#stx-pair?
                                                         _tl2383024056_)
                                                        (let ((_e2383724075_
                                                               (gx#stx-e
                                                                _tl2383024056_)))
                                                          (let ((_tl2383924080_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2383724075_))
                        (_hd2383824078_ (##car _e2383724075_)))
                    (if (gx#stx-pair? _hd2383824078_)
                        (let ((_e2384024083_ (gx#stx-e _hd2383824078_)))
                          (let ((_tl2384224088_ (##cdr _e2384024083_))
                                (_hd2384124086_ (##car _e2384024083_)))
                            (if (gx#identifier? _hd2384124086_)
                                (if (gx#stx-eq? '%#ref _hd2384124086_)
                                    (if (gx#stx-pair? _tl2384224088_)
                                        (let ((_e2384324091_
                                               (gx#stx-e _tl2384224088_)))
                                          (let ((_tl2384524096_
                                                 (##cdr _e2384324091_))
                                                (_hd2384424094_
                                                 (##car _e2384324091_)))
                                            (if (gx#stx-null? _tl2384524096_)
                                                (if (gx#stx-pair?
                                                     _tl2383924080_)
                                                    (let ((_e2384624099_
                                                           (gx#stx-e
                                                            _tl2383924080_)))
                                                      (let ((_tl2384824104_
                                                             (##cdr _e2384624099_))
                                                            (_hd2384724102_
                                                             (##car _e2384624099_)))
                                                        (if (gx#stx-pair?
                                                             _hd2384724102_)
                                                            (let ((_e2384924107_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2384724102_)))
                      (let ((_tl2385124112_ (##cdr _e2384924107_))
                            (_hd2385024110_ (##car _e2384924107_)))
                        (if (gx#identifier? _hd2385024110_)
                            (if (gx#stx-eq? '%#quote _hd2385024110_)
                                (if (gx#stx-pair? _tl2385124112_)
                                    (let ((_e2385224115_
                                           (gx#stx-e _tl2385124112_)))
                                      (let ((_tl2385424120_
                                             (##cdr _e2385224115_))
                                            (_hd2385324118_
                                             (##car _e2385224115_)))
                                        (if (gx#stx-null? _tl2385424120_)
                                            (if (gx#stx-pair? _tl2384824104_)
                                                (let ((_e2385524123_
                                                       (gx#stx-e
                                                        _tl2384824104_)))
                                                  (let ((_tl2385724128_
                                                         (##cdr _e2385524123_))
                                                        (_hd2385624126_
                                                         (##car _e2385524123_)))
                                                    (if (gx#stx-pair?
                                                         _hd2385624126_)
                                                        (let ((_e2385824131_
                                                               (gx#stx-e
                                                                _hd2385624126_)))
                                                          (let ((_tl2386024136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2385824131_))
                        (_hd2385924134_ (##car _e2385824131_)))
                    (if (gx#identifier? _hd2385924134_)
                        (if (gx#stx-eq? '%#ref _hd2385924134_)
                            (if (gx#stx-pair? _tl2386024136_)
                                (let ((_e2386124139_
                                       (gx#stx-e _tl2386024136_)))
                                  (let ((_tl2386324144_ (##cdr _e2386124139_))
                                        (_hd2386224142_ (##car _e2386124139_)))
                                    (if (gx#stx-null? _tl2386324144_)
                                        (if (gx#stx-null? _tl2385724128_)
                                            (_loop2380424021_
                                             _lp-tl2380724040_
                                             (cons _hd2386224142_
                                                   _-absent-value2380824026_)
                                             (cons _hd2385324118_
                                                   _key2380924028_)
                                             (cons _hd2384424094_
                                                   _-xkwvar2381024030_)
                                             (cons _hd2383524070_
                                                   _-hash-ref2381124032_))
                                            (___kont2625326254_))
                                        (___kont2625326254_))))
                                (___kont2625326254_))
                            (___kont2625326254_))
                        (___kont2625326254_))))
                (___kont2625326254_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2625326254_))
                                            (___kont2625326254_))))
                                    (___kont2625326254_))
                                (___kont2625326254_))
                            (___kont2625326254_))))
                    (___kont2625326254_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2625326254_))
                                                (___kont2625326254_))))
                                        (___kont2625326254_))
                                    (___kont2625326254_))
                                (___kont2625326254_))))
                        (___kont2625326254_))))
                (___kont2625326254_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2625326254_))))
                                            (___kont2625326254_))
                                        (___kont2625326254_))
                                    (___kont2625326254_))))
                            (___kont2625326254_))))
                    (___kont2625326254_))
                (___kont2625326254_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2625326254_))))
                                            (___kont2625326254_))))
                                    (let ((_-hash-ref2381524153_
                                           (reverse _-hash-ref2381124032_))
                                          (_-xkwvar2381424151_
                                           (reverse _-xkwvar2381024030_))
                                          (_key2381324149_
                                           (reverse _key2380924028_))
                                          (_-absent-value2381224147_
                                           (reverse _-absent-value2380824026_)))
                                      (if (gx#stx-null? _tl2377023909_)
                                          (let ((_L24156_ _hd2382324016_)
                                                (_L24157_
                                                 _-absent-value2381224147_)
                                                (_L24158_ _key2381324149_)
                                                (_L24159_ _-xkwvar2381424151_)
                                                (_L24160_
                                                 _-hash-ref2381524153_)
                                                (_L24161_ _hd2379923987_)
                                                (_L24162_ _hd2379023963_)
                                                (_L24163_ _hd2378123939_)
                                                (_L24164_ _tl2376723901_)
                                                (_L24165_ _hd2376623899_))
                                            (if (if (gx#identifier? _L24165_)
                                                    (if (gx#identifier?
                                                         _L24164_)
                                                        (if (gxc#runtime-identifier=?
                                                             _L24163_
                                                             'apply)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L24165_
                         _L24161_)
                        (if (andmap1 gx#stx-keyword?
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g2422024223_
                                                        _g2422124225_)
                                                 (cons _g2422024223_
                                                       _g2422124225_))
                                               '()
                                               _L24158_)))
                            (if (andmap1 (lambda (_g2422724229_)
                                           (gxc#runtime-identifier=?
                                            _g2422724229_
                                            'hash-ref))
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g2423124234_
                                                            _g2423224236_)
                                                     (cons _g2423124234_
                                                           _g2423224236_))
                                                   '()
                                                   _L24160_)))
                                (if (andmap1 (lambda (_g2423824240_)
                                               (gxc#runtime-identifier=?
                                                _g2423824240_
                                                'absent-value))
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g2424224245_
                                                                _g2424324247_)
                                                         (cons _g2424224245_
                                                               _g2424324247_))
                                                       '()
                                                       _L24157_)))
                                    (andmap1 (lambda (_g2424924251_)
                                               (gx#free-identifier=?
                                                _g2424924251_
                                                _L24165_))
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g2425324256_
                                                                _g2425424258_)
                                                         (cons _g2425324256_
                                                               _g2425424258_))
                                                       '()
                                                       _L24159_)))
                                    '#f)
                                '#f)
                            '#f)
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                (___kont2624926250_
                                                 _L24156_
                                                 _L24157_
                                                 _L24158_
                                                 _L24159_
                                                 _L24160_
                                                 _L24161_
                                                 _L24162_
                                                 _L24163_
                                                 _L24164_
                                                 _L24165_)
                                                (___kont2625326254_)))
                                          (___kont2625326254_)))))))
                      (_loop2380424021_ _target2380123992_ '() '() '() '()))))
                 (___match2656026561_
                  (lambda (_e2369224273_
                           _hd2369324276_
                           _tl2369424278_
                           _e2369524281_
                           _hd2369624284_
                           _tl2369724286_
                           _e2369824289_
                           _hd2369924292_
                           _tl2370024294_
                           _e2370124297_
                           _hd2370224300_
                           _tl2370324302_
                           _e2370424305_
                           _hd2370524308_
                           _tl2370624310_
                           _e2370724313_
                           _hd2370824316_
                           _tl2370924318_
                           _e2371024321_
                           _hd2371124324_
                           _tl2371224326_
                           _e2371324329_
                           _hd2371424332_
                           _tl2371524334_
                           _e2371624337_
                           _hd2371724340_
                           _tl2371824342_
                           _e2371924345_
                           _hd2372024348_
                           _tl2372124350_
                           _e2372224353_
                           _hd2372324356_
                           _tl2372424358_
                           _e2372524361_
                           _hd2372624364_
                           _tl2372724366_
                           _e2372824369_
                           _hd2372924372_
                           _tl2373024374_
                           _e2373124377_
                           _hd2373224380_
                           _tl2373324382_
                           _e2373424385_
                           _hd2373524388_
                           _tl2373624390_
                           _e2373724393_
                           _hd2373824396_
                           _tl2373924398_
                           _e2374024401_
                           _hd2374124404_
                           _tl2374224406_
                           _e2374324409_
                           _hd2374424412_
                           _tl2374524414_
                           _e2374624417_
                           _hd2374724420_
                           _tl2374824422_)
                    (let ((_L24425_ _hd2374724420_)
                          (_L24426_ _hd2373824396_)
                          (_L24427_ _hd2372924372_)
                          (_L24428_ _hd2372024348_)
                          (_L24429_ _hd2371124324_)
                          (_L24430_ _hd2369624284_))
                      (if (if (gx#identifier? _L24430_)
                              (if (gxc#runtime-identifier=? _L24429_ 'apply)
                                  (if (gxc#runtime-identifier=?
                                       _L24428_
                                       'keyword-dispatch)
                                      (gx#free-identifier=? _L24430_ _L24425_)
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont2624726248_
                           _L24425_
                           _L24426_
                           _L24427_
                           _L24428_
                           _L24429_
                           _L24430_)
                          (if (gx#stx-pair? _hd2369624284_)
                              (let ((_e2376523896_ (gx#stx-e _hd2369624284_)))
                                (let ((_tl2376723901_ (##cdr _e2376523896_))
                                      (_hd2376623899_ (##car _e2376523896_)))
                                  (___kont2625326254_)))
                              (___kont2625326254_))))))
                 (___match2640826409_
                  (lambda (_e2368324490_ _hd2368424493_ _tl2368524495_)
                    (let ((_L24498_ _tl2368524495_))
                      (if (gxc#dispatch-lambda-form? _L24498_)
                          (___kont2624526246_ _L24498_)
                          (if (gx#stx-pair? _tl2368524495_)
                              (let ((_e2369524281_ (gx#stx-e _tl2368524495_)))
                                (let ((_tl2369724286_ (##cdr _e2369524281_))
                                      (_hd2369624284_ (##car _e2369524281_)))
                                  (if (gx#stx-pair? _tl2369724286_)
                                      (let ((_e2369824289_
                                             (gx#stx-e _tl2369724286_)))
                                        (let ((_tl2370024294_
                                               (##cdr _e2369824289_))
                                              (_hd2369924292_
                                               (##car _e2369824289_)))
                                          (if (gx#stx-pair? _hd2369924292_)
                                              (let ((_e2370124297_
                                                     (gx#stx-e
                                                      _hd2369924292_)))
                                                (let ((_tl2370324302_
                                                       (##cdr _e2370124297_))
                                                      (_hd2370224300_
                                                       (##car _e2370124297_)))
                                                  (if (gx#identifier?
                                                       _hd2370224300_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd2370224300_)
                                                          (if (gx#stx-pair?
                                                               _tl2370324302_)
                                                              (let ((_e2370424305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2370324302_)))
                        (let ((_tl2370624310_ (##cdr _e2370424305_))
                              (_hd2370524308_ (##car _e2370424305_)))
                          (if (gx#stx-pair? _hd2370524308_)
                              (let ((_e2370724313_ (gx#stx-e _hd2370524308_)))
                                (let ((_tl2370924318_ (##cdr _e2370724313_))
                                      (_hd2370824316_ (##car _e2370724313_)))
                                  (if (gx#identifier? _hd2370824316_)
                                      (if (gx#stx-eq? '%#ref _hd2370824316_)
                                          (if (gx#stx-pair? _tl2370924318_)
                                              (let ((_e2371024321_
                                                     (gx#stx-e
                                                      _tl2370924318_)))
                                                (let ((_tl2371224326_
                                                       (##cdr _e2371024321_))
                                                      (_hd2371124324_
                                                       (##car _e2371024321_)))
                                                  (if (gx#stx-null?
                                                       _tl2371224326_)
                                                      (if (gx#stx-pair?
                                                           _tl2370624310_)
                                                          (let ((_e2371324329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2370624310_)))
                    (let ((_tl2371524334_ (##cdr _e2371324329_))
                          (_hd2371424332_ (##car _e2371324329_)))
                      (if (gx#stx-pair? _hd2371424332_)
                          (let ((_e2371624337_ (gx#stx-e _hd2371424332_)))
                            (let ((_tl2371824342_ (##cdr _e2371624337_))
                                  (_hd2371724340_ (##car _e2371624337_)))
                              (if (gx#identifier? _hd2371724340_)
                                  (if (gx#stx-eq? '%#ref _hd2371724340_)
                                      (if (gx#stx-pair? _tl2371824342_)
                                          (let ((_e2371924345_
                                                 (gx#stx-e _tl2371824342_)))
                                            (let ((_tl2372124350_
                                                   (##cdr _e2371924345_))
                                                  (_hd2372024348_
                                                   (##car _e2371924345_)))
                                              (if (gx#stx-null? _tl2372124350_)
                                                  (if (gx#stx-pair?
                                                       _tl2371524334_)
                                                      (let ((_e2372224353_
                                                             (gx#stx-e
                                                              _tl2371524334_)))
                                                        (let ((_tl2372424358_
                                                               (##cdr _e2372224353_))
                                                              (_hd2372324356_
                                                               (##car _e2372224353_)))
                                                          (if (gx#stx-pair?
                                                               _hd2372324356_)
                                                              (let ((_e2372524361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2372324356_)))
                        (let ((_tl2372724366_ (##cdr _e2372524361_))
                              (_hd2372624364_ (##car _e2372524361_)))
                          (if (gx#identifier? _hd2372624364_)
                              (if (gx#stx-eq? '%#quote _hd2372624364_)
                                  (if (gx#stx-pair? _tl2372724366_)
                                      (let ((_e2372824369_
                                             (gx#stx-e _tl2372724366_)))
                                        (let ((_tl2373024374_
                                               (##cdr _e2372824369_))
                                              (_hd2372924372_
                                               (##car _e2372824369_)))
                                          (if (gx#stx-null? _tl2373024374_)
                                              (if (gx#stx-pair? _tl2372424358_)
                                                  (let ((_e2373124377_
                                                         (gx#stx-e
                                                          _tl2372424358_)))
                                                    (let ((_tl2373324382_
                                                           (##cdr _e2373124377_))
                                                          (_hd2373224380_
                                                           (##car _e2373124377_)))
                                                      (if (gx#stx-pair?
                                                           _hd2373224380_)
                                                          (let ((_e2373424385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2373224380_)))
                    (let ((_tl2373624390_ (##cdr _e2373424385_))
                          (_hd2373524388_ (##car _e2373424385_)))
                      (if (gx#identifier? _hd2373524388_)
                          (if (gx#stx-eq? '%#ref _hd2373524388_)
                              (if (gx#stx-pair? _tl2373624390_)
                                  (let ((_e2373724393_
                                         (gx#stx-e _tl2373624390_)))
                                    (let ((_tl2373924398_
                                           (##cdr _e2373724393_))
                                          (_hd2373824396_
                                           (##car _e2373724393_)))
                                      (if (gx#stx-null? _tl2373924398_)
                                          (if (gx#stx-pair? _tl2373324382_)
                                              (let ((_e2374024401_
                                                     (gx#stx-e
                                                      _tl2373324382_)))
                                                (let ((_tl2374224406_
                                                       (##cdr _e2374024401_))
                                                      (_hd2374124404_
                                                       (##car _e2374024401_)))
                                                  (if (gx#stx-pair?
                                                       _hd2374124404_)
                                                      (let ((_e2374324409_
                                                             (gx#stx-e
                                                              _hd2374124404_)))
                                                        (let ((_tl2374524414_
                                                               (##cdr _e2374324409_))
                                                              (_hd2374424412_
                                                               (##car _e2374324409_)))
                                                          (if (gx#identifier?
                                                               _hd2374424412_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2374424412_)
                          (if (gx#stx-pair? _tl2374524414_)
                              (let ((_e2374624417_ (gx#stx-e _tl2374524414_)))
                                (let ((_tl2374824422_ (##cdr _e2374624417_))
                                      (_hd2374724420_ (##car _e2374624417_)))
                                  (if (gx#stx-null? _tl2374824422_)
                                      (if (gx#stx-null? _tl2374224406_)
                                          (if (gx#stx-null? _tl2370024294_)
                                              (___match2656026561_
                                               _e2368324490_
                                               _hd2368424493_
                                               _tl2368524495_
                                               _e2369524281_
                                               _hd2369624284_
                                               _tl2369724286_
                                               _e2369824289_
                                               _hd2369924292_
                                               _tl2370024294_
                                               _e2370124297_
                                               _hd2370224300_
                                               _tl2370324302_
                                               _e2370424305_
                                               _hd2370524308_
                                               _tl2370624310_
                                               _e2370724313_
                                               _hd2370824316_
                                               _tl2370924318_
                                               _e2371024321_
                                               _hd2371124324_
                                               _tl2371224326_
                                               _e2371324329_
                                               _hd2371424332_
                                               _tl2371524334_
                                               _e2371624337_
                                               _hd2371724340_
                                               _tl2371824342_
                                               _e2371924345_
                                               _hd2372024348_
                                               _tl2372124350_
                                               _e2372224353_
                                               _hd2372324356_
                                               _tl2372424358_
                                               _e2372524361_
                                               _hd2372624364_
                                               _tl2372724366_
                                               _e2372824369_
                                               _hd2372924372_
                                               _tl2373024374_
                                               _e2373124377_
                                               _hd2373224380_
                                               _tl2373324382_
                                               _e2373424385_
                                               _hd2373524388_
                                               _tl2373624390_
                                               _e2373724393_
                                               _hd2373824396_
                                               _tl2373924398_
                                               _e2374024401_
                                               _hd2374124404_
                                               _tl2374224406_
                                               _e2374324409_
                                               _hd2374424412_
                                               _tl2374524414_
                                               _e2374624417_
                                               _hd2374724420_
                                               _tl2374824422_)
                                              (if (gx#stx-pair? _hd2369624284_)
                                                  (let ((_e2376523896_
                                                         (gx#stx-e
                                                          _hd2369624284_)))
                                                    (let ((_tl2376723901_
                                                           (##cdr _e2376523896_))
                                                          (_hd2376623899_
                                                           (##car _e2376523896_)))
                                                      (___kont2625326254_)))
                                                  (___kont2625326254_)))
                                          (if (gx#stx-pair? _hd2369624284_)
                                              (let ((_e2376523896_
                                                     (gx#stx-e
                                                      _hd2369624284_)))
                                                (let ((_tl2376723901_
                                                       (##cdr _e2376523896_))
                                                      (_hd2376623899_
                                                       (##car _e2376523896_)))
                                                  (___kont2625326254_)))
                                              (___kont2625326254_)))
                                      (if (gx#stx-pair? _hd2369624284_)
                                          (let ((_e2376523896_
                                                 (gx#stx-e _hd2369624284_)))
                                            (let ((_tl2376723901_
                                                   (##cdr _e2376523896_))
                                                  (_hd2376623899_
                                                   (##car _e2376523896_)))
                                              (___kont2625326254_)))
                                          (___kont2625326254_)))))
                              (if (gx#stx-pair? _hd2369624284_)
                                  (let ((_e2376523896_
                                         (gx#stx-e _hd2369624284_)))
                                    (let ((_tl2376723901_
                                           (##cdr _e2376523896_))
                                          (_hd2376623899_
                                           (##car _e2376523896_)))
                                      (___kont2625326254_)))
                                  (___kont2625326254_)))
                          (if (gx#stx-pair? _hd2369624284_)
                              (let ((_e2376523896_ (gx#stx-e _hd2369624284_)))
                                (let ((_tl2376723901_ (##cdr _e2376523896_))
                                      (_hd2376623899_ (##car _e2376523896_)))
                                  (___kont2625326254_)))
                              (___kont2625326254_)))
                      (if (gx#stx-pair? _hd2369624284_)
                          (let ((_e2376523896_ (gx#stx-e _hd2369624284_)))
                            (let ((_tl2376723901_ (##cdr _e2376523896_))
                                  (_hd2376623899_ (##car _e2376523896_)))
                              (___kont2625326254_)))
                          (___kont2625326254_)))))
              (if (gx#stx-pair? _hd2369624284_)
                  (let ((_e2376523896_ (gx#stx-e _hd2369624284_)))
                    (let ((_tl2376723901_ (##cdr _e2376523896_))
                          (_hd2376623899_ (##car _e2376523896_)))
                      (___kont2625326254_)))
                  (___kont2625326254_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _hd2369624284_)
                                                  (let ((_e2376523896_
                                                         (gx#stx-e
                                                          _hd2369624284_)))
                                                    (let ((_tl2376723901_
                                                           (##cdr _e2376523896_))
                                                          (_hd2376623899_
                                                           (##car _e2376523896_)))
                                                      (___kont2625326254_)))
                                                  (___kont2625326254_)))
                                          (if (gx#stx-pair? _hd2369624284_)
                                              (let ((_e2376523896_
                                                     (gx#stx-e
                                                      _hd2369624284_)))
                                                (let ((_tl2376723901_
                                                       (##cdr _e2376523896_))
                                                      (_hd2376623899_
                                                       (##car _e2376523896_)))
                                                  (___kont2625326254_)))
                                              (___kont2625326254_)))))
                                  (if (gx#stx-pair? _hd2369624284_)
                                      (let ((_e2376523896_
                                             (gx#stx-e _hd2369624284_)))
                                        (let ((_tl2376723901_
                                               (##cdr _e2376523896_))
                                              (_hd2376623899_
                                               (##car _e2376523896_)))
                                          (___kont2625326254_)))
                                      (___kont2625326254_)))
                              (if (gx#stx-pair? _hd2369624284_)
                                  (let ((_e2376523896_
                                         (gx#stx-e _hd2369624284_)))
                                    (let ((_tl2376723901_
                                           (##cdr _e2376523896_))
                                          (_hd2376623899_
                                           (##car _e2376523896_)))
                                      (___kont2625326254_)))
                                  (___kont2625326254_)))
                          (if (gx#stx-pair? _hd2369624284_)
                              (let ((_e2376523896_ (gx#stx-e _hd2369624284_)))
                                (let ((_tl2376723901_ (##cdr _e2376523896_))
                                      (_hd2376623899_ (##car _e2376523896_)))
                                  (___kont2625326254_)))
                              (___kont2625326254_)))))
                  (if (gx#stx-pair? _hd2369624284_)
                      (let ((_e2376523896_ (gx#stx-e _hd2369624284_)))
                        (let ((_tl2376723901_ (##cdr _e2376523896_))
                              (_hd2376623899_ (##car _e2376523896_)))
                          (___kont2625326254_)))
                      (___kont2625326254_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _hd2369624284_)
                                                      (let ((_e2376523896_
                                                             (gx#stx-e
                                                              _hd2369624284_)))
                                                        (let ((_tl2376723901_
                                                               (##cdr _e2376523896_))
                                                              (_hd2376623899_
                                                               (##car _e2376523896_)))
                                                          (___kont2625326254_)))
                                                      (___kont2625326254_)))
                                              (if (gx#stx-pair? _hd2369624284_)
                                                  (let ((_e2376523896_
                                                         (gx#stx-e
                                                          _hd2369624284_)))
                                                    (let ((_tl2376723901_
                                                           (##cdr _e2376523896_))
                                                          (_hd2376623899_
                                                           (##car _e2376523896_)))
                                                      (___kont2625326254_)))
                                                  (___kont2625326254_)))))
                                      (if (gx#stx-pair? _hd2369624284_)
                                          (let ((_e2376523896_
                                                 (gx#stx-e _hd2369624284_)))
                                            (let ((_tl2376723901_
                                                   (##cdr _e2376523896_))
                                                  (_hd2376623899_
                                                   (##car _e2376523896_)))
                                              (___kont2625326254_)))
                                          (___kont2625326254_)))
                                  (if (gx#stx-pair? _hd2369624284_)
                                      (let ((_e2376523896_
                                             (gx#stx-e _hd2369624284_)))
                                        (let ((_tl2376723901_
                                               (##cdr _e2376523896_))
                                              (_hd2376623899_
                                               (##car _e2376523896_)))
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2372624364_)
                                              (if (gx#stx-pair? _tl2372724366_)
                                                  (let ((_e2379823984_
                                                         (gx#stx-e
                                                          _tl2372724366_)))
                                                    (let ((_tl2380023989_
                                                           (##cdr _e2379823984_))
                                                          (_hd2379923987_
                                                           (##car _e2379823984_)))
                                                      (if (gx#stx-null?
                                                           _tl2380023989_)
                                                          (if (gx#stx-pair/null?
                                                               _tl2372424358_)
                                                              (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _tl2372424358_)
                                '1)
                          (let ((___splice2625126252_
                                 (gx#syntax-split-splice _tl2372424358_ '1)))
                            (let ((_tl2380323994_
                                   (##vector-ref ___splice2625126252_ '1))
                                  (_target2380123992_
                                   (##vector-ref ___splice2625126252_ '0)))
                              (if (gx#stx-pair? _tl2380323994_)
                                  (let ((_e2381623997_
                                         (gx#stx-e _tl2380323994_)))
                                    (let ((_tl2381824002_
                                           (##cdr _e2381623997_))
                                          (_hd2381724000_
                                           (##car _e2381623997_)))
                                      (if (gx#stx-pair? _hd2381724000_)
                                          (let ((_e2381924005_
                                                 (gx#stx-e _hd2381724000_)))
                                            (let ((_tl2382124010_
                                                   (##cdr _e2381924005_))
                                                  (_hd2382024008_
                                                   (##car _e2381924005_)))
                                              (if (gx#identifier?
                                                   _hd2382024008_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2382024008_)
                                                      (if (gx#stx-pair?
                                                           _tl2382124010_)
                                                          (let ((_e2382224013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2382124010_)))
                    (let ((_tl2382424018_ (##cdr _e2382224013_))
                          (_hd2382324016_ (##car _e2382224013_)))
                      (if (gx#stx-null? _tl2382424018_)
                          (if (gx#stx-null? _tl2381824002_)
                              (___match2670026701_
                               _e2368324490_
                               _hd2368424493_
                               _tl2368524495_
                               _e2369524281_
                               _hd2369624284_
                               _tl2369724286_
                               _e2376523896_
                               _hd2376623899_
                               _tl2376723901_
                               _e2369824289_
                               _hd2369924292_
                               _tl2370024294_
                               _e2370124297_
                               _hd2370224300_
                               _tl2370324302_
                               _e2370424305_
                               _hd2370524308_
                               _tl2370624310_
                               _e2370724313_
                               _hd2370824316_
                               _tl2370924318_
                               _e2371024321_
                               _hd2371124324_
                               _tl2371224326_
                               _e2371324329_
                               _hd2371424332_
                               _tl2371524334_
                               _e2371624337_
                               _hd2371724340_
                               _tl2371824342_
                               _e2371924345_
                               _hd2372024348_
                               _tl2372124350_
                               _e2372224353_
                               _hd2372324356_
                               _tl2372424358_
                               _e2372524361_
                               _hd2372624364_
                               _tl2372724366_
                               _e2379823984_
                               _hd2379923987_
                               _tl2380023989_
                               ___splice2625126252_
                               _target2380123992_
                               _tl2380323994_
                               _e2381623997_
                               _hd2381724000_
                               _tl2381824002_
                               _e2381924005_
                               _hd2382024008_
                               _tl2382124010_
                               _e2382224013_
                               _hd2382324016_
                               _tl2382424018_)
                              (___kont2625326254_))
                          (___kont2625326254_))))
                  (___kont2625326254_))
              (___kont2625326254_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2625326254_))))
                                          (___kont2625326254_))))
                                  (___kont2625326254_))))
                          (___kont2625326254_))
                      (___kont2625326254_))
                  (___kont2625326254_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2625326254_))
                                              (___kont2625326254_))))
                                      (___kont2625326254_)))
                              (if (gx#stx-pair? _hd2369624284_)
                                  (let ((_e2376523896_
                                         (gx#stx-e _hd2369624284_)))
                                    (let ((_tl2376723901_
                                           (##cdr _e2376523896_))
                                          (_hd2376623899_
                                           (##car _e2376523896_)))
                                      (___kont2625326254_)))
                                  (___kont2625326254_)))))
                      (if (gx#stx-pair? _hd2369624284_)
                          (let ((_e2376523896_ (gx#stx-e _hd2369624284_)))
                            (let ((_tl2376723901_ (##cdr _e2376523896_))
                                  (_hd2376623899_ (##car _e2376523896_)))
                              (___kont2625326254_)))
                          (___kont2625326254_)))))
              (if (gx#stx-pair? _hd2369624284_)
                  (let ((_e2376523896_ (gx#stx-e _hd2369624284_)))
                    (let ((_tl2376723901_ (##cdr _e2376523896_))
                          (_hd2376623899_ (##car _e2376523896_)))
                      (___kont2625326254_)))
                  (___kont2625326254_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _hd2369624284_)
                                                      (let ((_e2376523896_
                                                             (gx#stx-e
                                                              _hd2369624284_)))
                                                        (let ((_tl2376723901_
                                                               (##cdr _e2376523896_))
                                                              (_hd2376623899_
                                                               (##car _e2376523896_)))
                                                          (___kont2625326254_)))
                                                      (___kont2625326254_)))))
                                          (if (gx#stx-pair? _hd2369624284_)
                                              (let ((_e2376523896_
                                                     (gx#stx-e
                                                      _hd2369624284_)))
                                                (let ((_tl2376723901_
                                                       (##cdr _e2376523896_))
                                                      (_hd2376623899_
                                                       (##car _e2376523896_)))
                                                  (___kont2625326254_)))
                                              (___kont2625326254_)))
                                      (if (gx#stx-pair? _hd2369624284_)
                                          (let ((_e2376523896_
                                                 (gx#stx-e _hd2369624284_)))
                                            (let ((_tl2376723901_
                                                   (##cdr _e2376523896_))
                                                  (_hd2376623899_
                                                   (##car _e2376523896_)))
                                              (___kont2625326254_)))
                                          (___kont2625326254_)))
                                  (if (gx#stx-pair? _hd2369624284_)
                                      (let ((_e2376523896_
                                             (gx#stx-e _hd2369624284_)))
                                        (let ((_tl2376723901_
                                               (##cdr _e2376523896_))
                                              (_hd2376623899_
                                               (##car _e2376523896_)))
                                          (___kont2625326254_)))
                                      (___kont2625326254_)))))
                          (if (gx#stx-pair? _hd2369624284_)
                              (let ((_e2376523896_ (gx#stx-e _hd2369624284_)))
                                (let ((_tl2376723901_ (##cdr _e2376523896_))
                                      (_hd2376623899_ (##car _e2376523896_)))
                                  (___kont2625326254_)))
                              (___kont2625326254_)))))
                  (if (gx#stx-pair? _hd2369624284_)
                      (let ((_e2376523896_ (gx#stx-e _hd2369624284_)))
                        (let ((_tl2376723901_ (##cdr _e2376523896_))
                              (_hd2376623899_ (##car _e2376523896_)))
                          (___kont2625326254_)))
                      (___kont2625326254_)))
              (if (gx#stx-pair? _hd2369624284_)
                  (let ((_e2376523896_ (gx#stx-e _hd2369624284_)))
                    (let ((_tl2376723901_ (##cdr _e2376523896_))
                          (_hd2376623899_ (##car _e2376523896_)))
                      (___kont2625326254_)))
                  (___kont2625326254_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _hd2369624284_)
                                                  (let ((_e2376523896_
                                                         (gx#stx-e
                                                          _hd2369624284_)))
                                                    (let ((_tl2376723901_
                                                           (##cdr _e2376523896_))
                                                          (_hd2376623899_
                                                           (##car _e2376523896_)))
                                                      (___kont2625326254_)))
                                                  (___kont2625326254_)))
                                          (if (gx#stx-pair? _hd2369624284_)
                                              (let ((_e2376523896_
                                                     (gx#stx-e
                                                      _hd2369624284_)))
                                                (let ((_tl2376723901_
                                                       (##cdr _e2376523896_))
                                                      (_hd2376623899_
                                                       (##car _e2376523896_)))
                                                  (___kont2625326254_)))
                                              (___kont2625326254_)))
                                      (if (gx#stx-pair? _hd2369624284_)
                                          (let ((_e2376523896_
                                                 (gx#stx-e _hd2369624284_)))
                                            (let ((_tl2376723901_
                                                   (##cdr _e2376523896_))
                                                  (_hd2376623899_
                                                   (##car _e2376523896_)))
                                              (___kont2625326254_)))
                                          (___kont2625326254_)))))
                              (if (gx#stx-pair? _hd2369624284_)
                                  (let ((_e2376523896_
                                         (gx#stx-e _hd2369624284_)))
                                    (let ((_tl2376723901_
                                           (##cdr _e2376523896_))
                                          (_hd2376623899_
                                           (##car _e2376523896_)))
                                      (___kont2625326254_)))
                                  (___kont2625326254_)))))
                      (if (gx#stx-pair? _hd2369624284_)
                          (let ((_e2376523896_ (gx#stx-e _hd2369624284_)))
                            (let ((_tl2376723901_ (##cdr _e2376523896_))
                                  (_hd2376623899_ (##car _e2376523896_)))
                              (___kont2625326254_)))
                          (___kont2625326254_)))
                  (if (gx#stx-pair? _hd2369624284_)
                      (let ((_e2376523896_ (gx#stx-e _hd2369624284_)))
                        (let ((_tl2376723901_ (##cdr _e2376523896_))
                              (_hd2376623899_ (##car _e2376523896_)))
                          (___kont2625326254_)))
                      (___kont2625326254_)))
              (if (gx#stx-pair? _hd2369624284_)
                  (let ((_e2376523896_ (gx#stx-e _hd2369624284_)))
                    (let ((_tl2376723901_ (##cdr _e2376523896_))
                          (_hd2376623899_ (##car _e2376523896_)))
                      (___kont2625326254_)))
                  (___kont2625326254_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _hd2369624284_)
                                                  (let ((_e2376523896_
                                                         (gx#stx-e
                                                          _hd2369624284_)))
                                                    (let ((_tl2376723901_
                                                           (##cdr _e2376523896_))
                                                          (_hd2376623899_
                                                           (##car _e2376523896_)))
                                                      (___kont2625326254_)))
                                                  (___kont2625326254_)))))
                                      (if (gx#stx-pair? _hd2369624284_)
                                          (let ((_e2376523896_
                                                 (gx#stx-e _hd2369624284_)))
                                            (let ((_tl2376723901_
                                                   (##cdr _e2376523896_))
                                                  (_hd2376623899_
                                                   (##car _e2376523896_)))
                                              (___kont2625326254_)))
                                          (___kont2625326254_)))))
                              (___kont2625326254_))))))
                 (___match2640226403_
                  (lambda (_e2362824512_
                           _hd2362924515_
                           _tl2363024517_
                           _e2363124520_
                           _hd2363224523_
                           _tl2363324525_
                           ___splice2624126242_
                           _target2363424528_
                           _tl2363624530_)
                    (letrec ((_loop2363724533_
                              (lambda (_hd2363524536_ _arg2364124538_)
                                (if (gx#stx-pair? _hd2363524536_)
                                    (let ((_e2363824541_
                                           (gx#stx-e _hd2363524536_)))
                                      (let ((_lp-tl2364024546_
                                             (##cdr _e2363824541_))
                                            (_lp-hd2363924544_
                                             (##car _e2363824541_)))
                                        (_loop2363724533_
                                         _lp-tl2364024546_
                                         (cons _lp-hd2363924544_
                                               _arg2364124538_))))
                                    (let ((_arg2364224549_
                                           (reverse _arg2364124538_)))
                                      (if (gx#stx-pair? _tl2363324525_)
                                          (let ((_e2364324552_
                                                 (gx#stx-e _tl2363324525_)))
                                            (let ((_tl2364524557_
                                                   (##cdr _e2364324552_))
                                                  (_hd2364424555_
                                                   (##car _e2364324552_)))
                                              (if (gx#stx-pair? _hd2364424555_)
                                                  (let ((_e2364624560_
                                                         (gx#stx-e
                                                          _hd2364424555_)))
                                                    (let ((_tl2364824565_
                                                           (##cdr _e2364624560_))
                                                          (_hd2364724563_
                                                           (##car _e2364624560_)))
                                                      (if (gx#identifier?
                                                           _hd2364724563_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2364724563_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2364824565_)
                          (let ((_e2364924568_ (gx#stx-e _tl2364824565_)))
                            (let ((_tl2365124573_ (##cdr _e2364924568_))
                                  (_hd2365024571_ (##car _e2364924568_)))
                              (if (gx#stx-pair? _hd2365024571_)
                                  (let ((_e2365224576_
                                         (gx#stx-e _hd2365024571_)))
                                    (let ((_tl2365424581_
                                           (##cdr _e2365224576_))
                                          (_hd2365324579_
                                           (##car _e2365224576_)))
                                      (if (gx#identifier? _hd2365324579_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2365324579_)
                                              (if (gx#stx-pair? _tl2365424581_)
                                                  (let ((_e2365524584_
                                                         (gx#stx-e
                                                          _tl2365424581_)))
                                                    (let ((_tl2365724589_
                                                           (##cdr _e2365524584_))
                                                          (_hd2365624587_
                                                           (##car _e2365524584_)))
                                                      (if (gx#stx-null?
                                                           _tl2365724589_)
                                                          (if (gx#stx-pair?
                                                               _tl2365124573_)
                                                              (let ((_e2365824592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2365124573_)))
                        (let ((_tl2366024597_ (##cdr _e2365824592_))
                              (_hd2365924595_ (##car _e2365824592_)))
                          (if (gx#stx-pair? _hd2365924595_)
                              (let ((_e2366124600_ (gx#stx-e _hd2365924595_)))
                                (let ((_tl2366324605_ (##cdr _e2366124600_))
                                      (_hd2366224603_ (##car _e2366124600_)))
                                  (if (gx#identifier? _hd2366224603_)
                                      (if (gx#stx-eq? '%#ref _hd2366224603_)
                                          (if (gx#stx-pair? _tl2366324605_)
                                              (let ((_e2366424608_
                                                     (gx#stx-e
                                                      _tl2366324605_)))
                                                (let ((_tl2366624613_
                                                       (##cdr _e2366424608_))
                                                      (_hd2366524611_
                                                       (##car _e2366424608_)))
                                                  (if (gx#stx-null?
                                                       _tl2366624613_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2366024597_)
                                                          (let ((___splice2624326244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl2366024597_ '0)))
                    (let ((_tl2366924618_
                           (##vector-ref ___splice2624326244_ '1))
                          (_target2366724616_
                           (##vector-ref ___splice2624326244_ '0)))
                      (if (gx#stx-null? _tl2366924618_)
                          (letrec ((_loop2367024621_
                                    (lambda (_hd2366824624_ _xarg2367424626_)
                                      (if (gx#stx-pair? _hd2366824624_)
                                          (let ((_e2367124629_
                                                 (gx#stx-e _hd2366824624_)))
                                            (let ((_lp-tl2367324634_
                                                   (##cdr _e2367124629_))
                                                  (_lp-hd2367224632_
                                                   (##car _e2367124629_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd2367224632_)
                                                  (let ((_e2367624637_
                                                         (gx#stx-e
                                                          _lp-hd2367224632_)))
                                                    (let ((_tl2367824642_
                                                           (##cdr _e2367624637_))
                                                          (_hd2367724640_
                                                           (##car _e2367624637_)))
                                                      (if (gx#identifier?
                                                           _hd2367724640_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2367724640_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2367824642_)
                          (let ((_e2367924645_ (gx#stx-e _tl2367824642_)))
                            (let ((_tl2368124650_ (##cdr _e2367924645_))
                                  (_hd2368024648_ (##car _e2367924645_)))
                              (if (gx#stx-null? _tl2368124650_)
                                  (_loop2367024621_
                                   _lp-tl2367324634_
                                   (cons _hd2368024648_ _xarg2367424626_))
                                  (___match2640826409_
                                   _e2362824512_
                                   _hd2362924515_
                                   _tl2363024517_))))
                          (___match2640826409_
                           _e2362824512_
                           _hd2362924515_
                           _tl2363024517_))
                      (___match2640826409_
                       _e2362824512_
                       _hd2362924515_
                       _tl2363024517_))
                  (___match2640826409_
                   _e2362824512_
                   _hd2362924515_
                   _tl2363024517_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2640826409_
                                                   _e2362824512_
                                                   _hd2362924515_
                                                   _tl2363024517_))))
                                          (let ((_xarg2367524653_
                                                 (reverse _xarg2367424626_)))
                                            (if (gx#stx-null? _tl2364524557_)
                                                (let ((_L24656_
                                                       _xarg2367524653_)
                                                      (_L24657_ _hd2366524611_)
                                                      (_L24658_ _hd2365624587_)
                                                      (_L24659_
                                                       _arg2364224549_))
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g2469624699_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2469724701_)
                               (cons _g2469624699_ _g2469724701_))
                             '()
                             _L24659_)))
                  (if (gxc#runtime-identifier=? _L24658_ 'make-struct-instance)
                      (if (fx= (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2470324706_
                                                          _g2470424708_)
                                                   (cons _g2470324706_
                                                         _g2470424708_))
                                                 '()
                                                 _L24659_)))
                               (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2471024713_
                                                          _g2471124715_)
                                                   (cons _g2471024713_
                                                         _g2471124715_))
                                                 '()
                                                 _L24656_))))
                          (andmap2 gx#free-identifier=?
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g2471724720_
                                                      _g2471824722_)
                                               (cons _g2471724720_
                                                     _g2471824722_))
                                             '()
                                             _L24659_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g2472424727_
                                                      _g2472524729_)
                                               (cons _g2472424727_
                                                     _g2472524729_))
                                             '()
                                             _L24656_)))
                          '#f)
                      '#f)
                  '#f)
              (___kont2623926240_ _L24656_ _L24657_ _L24658_ _L24659_)
              (___match2640826409_
               _e2362824512_
               _hd2362924515_
               _tl2363024517_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2640826409_
                                                 _e2362824512_
                                                 _hd2362924515_
                                                 _tl2363024517_)))))))
                            (_loop2367024621_ _target2366724616_ '()))
                          (___match2640826409_
                           _e2362824512_
                           _hd2362924515_
                           _tl2363024517_))))
                  (___match2640826409_
                   _e2362824512_
                   _hd2362924515_
                   _tl2363024517_))
              (___match2640826409_
               _e2362824512_
               _hd2362924515_
               _tl2363024517_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match2640826409_
                                               _e2362824512_
                                               _hd2362924515_
                                               _tl2363024517_))
                                          (___match2640826409_
                                           _e2362824512_
                                           _hd2362924515_
                                           _tl2363024517_))
                                      (___match2640826409_
                                       _e2362824512_
                                       _hd2362924515_
                                       _tl2363024517_))))
                              (___match2640826409_
                               _e2362824512_
                               _hd2362924515_
                               _tl2363024517_))))
                      (___match2640826409_
                       _e2362824512_
                       _hd2362924515_
                       _tl2363024517_))
                  (___match2640826409_
                   _e2362824512_
                   _hd2362924515_
                   _tl2363024517_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2640826409_
                                                   _e2362824512_
                                                   _hd2362924515_
                                                   _tl2363024517_))
                                              (___match2640826409_
                                               _e2362824512_
                                               _hd2362924515_
                                               _tl2363024517_))
                                          (___match2640826409_
                                           _e2362824512_
                                           _hd2362924515_
                                           _tl2363024517_))))
                                  (___match2640826409_
                                   _e2362824512_
                                   _hd2362924515_
                                   _tl2363024517_))))
                          (___match2640826409_
                           _e2362824512_
                           _hd2362924515_
                           _tl2363024517_))
                      (___match2640826409_
                       _e2362824512_
                       _hd2362924515_
                       _tl2363024517_))
                  (___match2640826409_
                   _e2362824512_
                   _hd2362924515_
                   _tl2363024517_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2640826409_
                                                   _e2362824512_
                                                   _hd2362924515_
                                                   _tl2363024517_))))
                                          (___match2640826409_
                                           _e2362824512_
                                           _hd2362924515_
                                           _tl2363024517_)))))))
                      (_loop2363724533_ _target2363424528_ '()))))
                 (___match2638226383_
                  (lambda (_e2357624742_
                           _hd2357724745_
                           _tl2357824747_
                           _e2357924750_
                           _hd2358024753_
                           _tl2358124755_
                           _e2358224758_
                           _hd2358324761_
                           _tl2358424763_
                           _e2358524766_
                           _hd2358624769_
                           _tl2358724771_
                           _e2358824774_
                           _hd2358924777_
                           _tl2359024779_
                           _e2359124782_
                           _hd2359224785_
                           _tl2359324787_
                           _e2359424790_
                           _hd2359524793_
                           _tl2359624795_
                           _e2359724798_
                           _hd2359824801_
                           _tl2359924803_
                           _e2360024806_
                           _hd2360124809_
                           _tl2360224811_
                           _e2360324814_
                           _hd2360424817_
                           _tl2360524819_
                           _e2360624822_
                           _hd2360724825_
                           _tl2360824827_
                           _e2360924830_
                           _hd2361024833_
                           _tl2361124835_
                           _e2361224838_
                           _hd2361324841_
                           _tl2361424843_
                           _e2361524846_
                           _hd2361624849_
                           _tl2361724851_
                           _e2361824854_
                           _hd2361924857_
                           _tl2362024859_
                           _e2362124862_
                           _hd2362224865_
                           _tl2362324867_)
                    (let ((_L24870_ _hd2362224865_)
                          (_L24871_ _hd2361324841_)
                          (_L24872_ _hd2360424817_)
                          (_L24873_ _hd2359524793_)
                          (_L24874_ _hd2358024753_))
                      (if (if (gx#identifier? _L24874_)
                              (if (gxc#runtime-identifier=? _L24873_ 'apply)
                                  (if (gxc#runtime-identifier=?
                                       _L24872_
                                       'make-struct-instance)
                                      (gx#free-identifier=? _L24874_ _L24870_)
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont2623726238_
                           _L24870_
                           _L24871_
                           _L24872_
                           _L24873_
                           _L24874_)
                          (if (gx#stx-pair/null? _hd2358024753_)
                              (let ((___splice2624126242_
                                     (gx#syntax-split-splice
                                      _hd2358024753_
                                      '0)))
                                (let ((_tl2363624530_
                                       (##vector-ref ___splice2624126242_ '1))
                                      (_target2363424528_
                                       (##vector-ref ___splice2624126242_ '0)))
                                  (if (gx#stx-null? _tl2363624530_)
                                      (___match2640226403_
                                       _e2357624742_
                                       _hd2357724745_
                                       _tl2357824747_
                                       _e2357924750_
                                       _hd2358024753_
                                       _tl2358124755_
                                       ___splice2624126242_
                                       _target2363424528_
                                       _tl2363624530_)
                                      (___match2640826409_
                                       _e2357624742_
                                       _hd2357724745_
                                       _tl2357824747_))))
                              (___match2640826409_
                               _e2357624742_
                               _hd2357724745_
                               _tl2357824747_)))))))
            (if (gx#stx-pair? ___stx2623526236_)
                (let ((_e2357624742_ (gx#stx-e ___stx2623526236_)))
                  (let ((_tl2357824747_ (##cdr _e2357624742_))
                        (_hd2357724745_ (##car _e2357624742_)))
                    (if (gx#stx-pair? _tl2357824747_)
                        (let ((_e2357924750_ (gx#stx-e _tl2357824747_)))
                          (let ((_tl2358124755_ (##cdr _e2357924750_))
                                (_hd2358024753_ (##car _e2357924750_)))
                            (if (gx#stx-pair? _tl2358124755_)
                                (let ((_e2358224758_
                                       (gx#stx-e _tl2358124755_)))
                                  (let ((_tl2358424763_ (##cdr _e2358224758_))
                                        (_hd2358324761_ (##car _e2358224758_)))
                                    (if (gx#stx-pair? _hd2358324761_)
                                        (let ((_e2358524766_
                                               (gx#stx-e _hd2358324761_)))
                                          (let ((_tl2358724771_
                                                 (##cdr _e2358524766_))
                                                (_hd2358624769_
                                                 (##car _e2358524766_)))
                                            (if (gx#identifier? _hd2358624769_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd2358624769_)
                                                    (if (gx#stx-pair?
                                                         _tl2358724771_)
                                                        (let ((_e2358824774_
                                                               (gx#stx-e
                                                                _tl2358724771_)))
                                                          (let ((_tl2359024779_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2358824774_))
                        (_hd2358924777_ (##car _e2358824774_)))
                    (if (gx#stx-pair? _hd2358924777_)
                        (let ((_e2359124782_ (gx#stx-e _hd2358924777_)))
                          (let ((_tl2359324787_ (##cdr _e2359124782_))
                                (_hd2359224785_ (##car _e2359124782_)))
                            (if (gx#identifier? _hd2359224785_)
                                (if (gx#stx-eq? '%#ref _hd2359224785_)
                                    (if (gx#stx-pair? _tl2359324787_)
                                        (let ((_e2359424790_
                                               (gx#stx-e _tl2359324787_)))
                                          (let ((_tl2359624795_
                                                 (##cdr _e2359424790_))
                                                (_hd2359524793_
                                                 (##car _e2359424790_)))
                                            (if (gx#stx-null? _tl2359624795_)
                                                (if (gx#stx-pair?
                                                     _tl2359024779_)
                                                    (let ((_e2359724798_
                                                           (gx#stx-e
                                                            _tl2359024779_)))
                                                      (let ((_tl2359924803_
                                                             (##cdr _e2359724798_))
                                                            (_hd2359824801_
                                                             (##car _e2359724798_)))
                                                        (if (gx#stx-pair?
                                                             _hd2359824801_)
                                                            (let ((_e2360024806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2359824801_)))
                      (let ((_tl2360224811_ (##cdr _e2360024806_))
                            (_hd2360124809_ (##car _e2360024806_)))
                        (if (gx#identifier? _hd2360124809_)
                            (if (gx#stx-eq? '%#ref _hd2360124809_)
                                (if (gx#stx-pair? _tl2360224811_)
                                    (let ((_e2360324814_
                                           (gx#stx-e _tl2360224811_)))
                                      (let ((_tl2360524819_
                                             (##cdr _e2360324814_))
                                            (_hd2360424817_
                                             (##car _e2360324814_)))
                                        (if (gx#stx-null? _tl2360524819_)
                                            (if (gx#stx-pair? _tl2359924803_)
                                                (let ((_e2360624822_
                                                       (gx#stx-e
                                                        _tl2359924803_)))
                                                  (let ((_tl2360824827_
                                                         (##cdr _e2360624822_))
                                                        (_hd2360724825_
                                                         (##car _e2360624822_)))
                                                    (if (gx#stx-pair?
                                                         _hd2360724825_)
                                                        (let ((_e2360924830_
                                                               (gx#stx-e
                                                                _hd2360724825_)))
                                                          (let ((_tl2361124835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2360924830_))
                        (_hd2361024833_ (##car _e2360924830_)))
                    (if (gx#identifier? _hd2361024833_)
                        (if (gx#stx-eq? '%#ref _hd2361024833_)
                            (if (gx#stx-pair? _tl2361124835_)
                                (let ((_e2361224838_
                                       (gx#stx-e _tl2361124835_)))
                                  (let ((_tl2361424843_ (##cdr _e2361224838_))
                                        (_hd2361324841_ (##car _e2361224838_)))
                                    (if (gx#stx-null? _tl2361424843_)
                                        (if (gx#stx-pair? _tl2360824827_)
                                            (let ((_e2361524846_
                                                   (gx#stx-e _tl2360824827_)))
                                              (let ((_tl2361724851_
                                                     (##cdr _e2361524846_))
                                                    (_hd2361624849_
                                                     (##car _e2361524846_)))
                                                (if (gx#stx-pair?
                                                     _hd2361624849_)
                                                    (let ((_e2361824854_
                                                           (gx#stx-e
                                                            _hd2361624849_)))
                                                      (let ((_tl2362024859_
                                                             (##cdr _e2361824854_))
                                                            (_hd2361924857_
                                                             (##car _e2361824854_)))
                                                        (if (gx#identifier?
                                                             _hd2361924857_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2361924857_)
                        (if (gx#stx-pair? _tl2362024859_)
                            (let ((_e2362124862_ (gx#stx-e _tl2362024859_)))
                              (let ((_tl2362324867_ (##cdr _e2362124862_))
                                    (_hd2362224865_ (##car _e2362124862_)))
                                (if (gx#stx-null? _tl2362324867_)
                                    (if (gx#stx-null? _tl2361724851_)
                                        (if (gx#stx-null? _tl2358424763_)
                                            (___match2638226383_
                                             _e2357624742_
                                             _hd2357724745_
                                             _tl2357824747_
                                             _e2357924750_
                                             _hd2358024753_
                                             _tl2358124755_
                                             _e2358224758_
                                             _hd2358324761_
                                             _tl2358424763_
                                             _e2358524766_
                                             _hd2358624769_
                                             _tl2358724771_
                                             _e2358824774_
                                             _hd2358924777_
                                             _tl2359024779_
                                             _e2359124782_
                                             _hd2359224785_
                                             _tl2359324787_
                                             _e2359424790_
                                             _hd2359524793_
                                             _tl2359624795_
                                             _e2359724798_
                                             _hd2359824801_
                                             _tl2359924803_
                                             _e2360024806_
                                             _hd2360124809_
                                             _tl2360224811_
                                             _e2360324814_
                                             _hd2360424817_
                                             _tl2360524819_
                                             _e2360624822_
                                             _hd2360724825_
                                             _tl2360824827_
                                             _e2360924830_
                                             _hd2361024833_
                                             _tl2361124835_
                                             _e2361224838_
                                             _hd2361324841_
                                             _tl2361424843_
                                             _e2361524846_
                                             _hd2361624849_
                                             _tl2361724851_
                                             _e2361824854_
                                             _hd2361924857_
                                             _tl2362024859_
                                             _e2362124862_
                                             _hd2362224865_
                                             _tl2362324867_)
                                            (if (gx#stx-pair/null?
                                                 _hd2358024753_)
                                                (let ((___splice2624126242_
                                                       (gx#syntax-split-splice
                                                        _hd2358024753_
                                                        '0)))
                                                  (let ((_tl2363624530_
                                                         (##vector-ref
                                                          ___splice2624126242_
                                                          '1))
                                                        (_target2363424528_
                                                         (##vector-ref
                                                          ___splice2624126242_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2363624530_)
                                                        (___match2640226403_
                                                         _e2357624742_
                                                         _hd2357724745_
                                                         _tl2357824747_
                                                         _e2357924750_
                                                         _hd2358024753_
                                                         _tl2358124755_
                                                         ___splice2624126242_
                                                         _target2363424528_
                                                         _tl2363624530_)
                                                        (___match2640826409_
                                                         _e2357624742_
                                                         _hd2357724745_
                                                         _tl2357824747_))))
                                                (___match2640826409_
                                                 _e2357624742_
                                                 _hd2357724745_
                                                 _tl2357824747_)))
                                        (if (gx#stx-pair/null? _hd2358024753_)
                                            (let ((___splice2624126242_
                                                   (gx#syntax-split-splice
                                                    _hd2358024753_
                                                    '0)))
                                              (let ((_tl2363624530_
                                                     (##vector-ref
                                                      ___splice2624126242_
                                                      '1))
                                                    (_target2363424528_
                                                     (##vector-ref
                                                      ___splice2624126242_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2363624530_)
                                                    (___match2640226403_
                                                     _e2357624742_
                                                     _hd2357724745_
                                                     _tl2357824747_
                                                     _e2357924750_
                                                     _hd2358024753_
                                                     _tl2358124755_
                                                     ___splice2624126242_
                                                     _target2363424528_
                                                     _tl2363624530_)
                                                    (___match2640826409_
                                                     _e2357624742_
                                                     _hd2357724745_
                                                     _tl2357824747_))))
                                            (___match2640826409_
                                             _e2357624742_
                                             _hd2357724745_
                                             _tl2357824747_)))
                                    (if (gx#stx-pair/null? _hd2358024753_)
                                        (let ((___splice2624126242_
                                               (gx#syntax-split-splice
                                                _hd2358024753_
                                                '0)))
                                          (let ((_tl2363624530_
                                                 (##vector-ref
                                                  ___splice2624126242_
                                                  '1))
                                                (_target2363424528_
                                                 (##vector-ref
                                                  ___splice2624126242_
                                                  '0)))
                                            (if (gx#stx-null? _tl2363624530_)
                                                (___match2640226403_
                                                 _e2357624742_
                                                 _hd2357724745_
                                                 _tl2357824747_
                                                 _e2357924750_
                                                 _hd2358024753_
                                                 _tl2358124755_
                                                 ___splice2624126242_
                                                 _target2363424528_
                                                 _tl2363624530_)
                                                (___match2640826409_
                                                 _e2357624742_
                                                 _hd2357724745_
                                                 _tl2357824747_))))
                                        (___match2640826409_
                                         _e2357624742_
                                         _hd2357724745_
                                         _tl2357824747_)))))
                            (if (gx#stx-pair/null? _hd2358024753_)
                                (let ((___splice2624126242_
                                       (gx#syntax-split-splice
                                        _hd2358024753_
                                        '0)))
                                  (let ((_tl2363624530_
                                         (##vector-ref
                                          ___splice2624126242_
                                          '1))
                                        (_target2363424528_
                                         (##vector-ref
                                          ___splice2624126242_
                                          '0)))
                                    (if (gx#stx-null? _tl2363624530_)
                                        (___match2640226403_
                                         _e2357624742_
                                         _hd2357724745_
                                         _tl2357824747_
                                         _e2357924750_
                                         _hd2358024753_
                                         _tl2358124755_
                                         ___splice2624126242_
                                         _target2363424528_
                                         _tl2363624530_)
                                        (___match2640826409_
                                         _e2357624742_
                                         _hd2357724745_
                                         _tl2357824747_))))
                                (___match2640826409_
                                 _e2357624742_
                                 _hd2357724745_
                                 _tl2357824747_)))
                        (if (gx#stx-pair/null? _hd2358024753_)
                            (let ((___splice2624126242_
                                   (gx#syntax-split-splice _hd2358024753_ '0)))
                              (let ((_tl2363624530_
                                     (##vector-ref ___splice2624126242_ '1))
                                    (_target2363424528_
                                     (##vector-ref ___splice2624126242_ '0)))
                                (if (gx#stx-null? _tl2363624530_)
                                    (___match2640226403_
                                     _e2357624742_
                                     _hd2357724745_
                                     _tl2357824747_
                                     _e2357924750_
                                     _hd2358024753_
                                     _tl2358124755_
                                     ___splice2624126242_
                                     _target2363424528_
                                     _tl2363624530_)
                                    (___match2640826409_
                                     _e2357624742_
                                     _hd2357724745_
                                     _tl2357824747_))))
                            (___match2640826409_
                             _e2357624742_
                             _hd2357724745_
                             _tl2357824747_)))
                    (if (gx#stx-pair/null? _hd2358024753_)
                        (let ((___splice2624126242_
                               (gx#syntax-split-splice _hd2358024753_ '0)))
                          (let ((_tl2363624530_
                                 (##vector-ref ___splice2624126242_ '1))
                                (_target2363424528_
                                 (##vector-ref ___splice2624126242_ '0)))
                            (if (gx#stx-null? _tl2363624530_)
                                (___match2640226403_
                                 _e2357624742_
                                 _hd2357724745_
                                 _tl2357824747_
                                 _e2357924750_
                                 _hd2358024753_
                                 _tl2358124755_
                                 ___splice2624126242_
                                 _target2363424528_
                                 _tl2363624530_)
                                (___match2640826409_
                                 _e2357624742_
                                 _hd2357724745_
                                 _tl2357824747_))))
                        (___match2640826409_
                         _e2357624742_
                         _hd2357724745_
                         _tl2357824747_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _hd2358024753_)
                                                        (let ((___splice2624126242_
                                                               (gx#syntax-split-splice
                                                                _hd2358024753_
                                                                '0)))
                                                          (let ((_tl2363624530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2624126242_ '1))
                        (_target2363424528_
                         (##vector-ref ___splice2624126242_ '0)))
                    (if (gx#stx-null? _tl2363624530_)
                        (___match2640226403_
                         _e2357624742_
                         _hd2357724745_
                         _tl2357824747_
                         _e2357924750_
                         _hd2358024753_
                         _tl2358124755_
                         ___splice2624126242_
                         _target2363424528_
                         _tl2363624530_)
                        (___match2640826409_
                         _e2357624742_
                         _hd2357724745_
                         _tl2357824747_))))
                (___match2640826409_
                 _e2357624742_
                 _hd2357724745_
                 _tl2357824747_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _hd2358024753_)
                                                (let ((___splice2624126242_
                                                       (gx#syntax-split-splice
                                                        _hd2358024753_
                                                        '0)))
                                                  (let ((_tl2363624530_
                                                         (##vector-ref
                                                          ___splice2624126242_
                                                          '1))
                                                        (_target2363424528_
                                                         (##vector-ref
                                                          ___splice2624126242_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2363624530_)
                                                        (___match2640226403_
                                                         _e2357624742_
                                                         _hd2357724745_
                                                         _tl2357824747_
                                                         _e2357924750_
                                                         _hd2358024753_
                                                         _tl2358124755_
                                                         ___splice2624126242_
                                                         _target2363424528_
                                                         _tl2363624530_)
                                                        (___match2640826409_
                                                         _e2357624742_
                                                         _hd2357724745_
                                                         _tl2357824747_))))
                                                (___match2640826409_
                                                 _e2357624742_
                                                 _hd2357724745_
                                                 _tl2357824747_)))
                                        (if (gx#stx-pair/null? _hd2358024753_)
                                            (let ((___splice2624126242_
                                                   (gx#syntax-split-splice
                                                    _hd2358024753_
                                                    '0)))
                                              (let ((_tl2363624530_
                                                     (##vector-ref
                                                      ___splice2624126242_
                                                      '1))
                                                    (_target2363424528_
                                                     (##vector-ref
                                                      ___splice2624126242_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2363624530_)
                                                    (___match2640226403_
                                                     _e2357624742_
                                                     _hd2357724745_
                                                     _tl2357824747_
                                                     _e2357924750_
                                                     _hd2358024753_
                                                     _tl2358124755_
                                                     ___splice2624126242_
                                                     _target2363424528_
                                                     _tl2363624530_)
                                                    (___match2640826409_
                                                     _e2357624742_
                                                     _hd2357724745_
                                                     _tl2357824747_))))
                                            (___match2640826409_
                                             _e2357624742_
                                             _hd2357724745_
                                             _tl2357824747_)))))
                                (if (gx#stx-pair/null? _hd2358024753_)
                                    (let ((___splice2624126242_
                                           (gx#syntax-split-splice
                                            _hd2358024753_
                                            '0)))
                                      (let ((_tl2363624530_
                                             (##vector-ref
                                              ___splice2624126242_
                                              '1))
                                            (_target2363424528_
                                             (##vector-ref
                                              ___splice2624126242_
                                              '0)))
                                        (if (gx#stx-null? _tl2363624530_)
                                            (___match2640226403_
                                             _e2357624742_
                                             _hd2357724745_
                                             _tl2357824747_
                                             _e2357924750_
                                             _hd2358024753_
                                             _tl2358124755_
                                             ___splice2624126242_
                                             _target2363424528_
                                             _tl2363624530_)
                                            (___match2640826409_
                                             _e2357624742_
                                             _hd2357724745_
                                             _tl2357824747_))))
                                    (___match2640826409_
                                     _e2357624742_
                                     _hd2357724745_
                                     _tl2357824747_)))
                            (if (gx#stx-pair/null? _hd2358024753_)
                                (let ((___splice2624126242_
                                       (gx#syntax-split-splice
                                        _hd2358024753_
                                        '0)))
                                  (let ((_tl2363624530_
                                         (##vector-ref
                                          ___splice2624126242_
                                          '1))
                                        (_target2363424528_
                                         (##vector-ref
                                          ___splice2624126242_
                                          '0)))
                                    (if (gx#stx-null? _tl2363624530_)
                                        (___match2640226403_
                                         _e2357624742_
                                         _hd2357724745_
                                         _tl2357824747_
                                         _e2357924750_
                                         _hd2358024753_
                                         _tl2358124755_
                                         ___splice2624126242_
                                         _target2363424528_
                                         _tl2363624530_)
                                        (___match2640826409_
                                         _e2357624742_
                                         _hd2357724745_
                                         _tl2357824747_))))
                                (___match2640826409_
                                 _e2357624742_
                                 _hd2357724745_
                                 _tl2357824747_)))
                        (if (gx#stx-pair/null? _hd2358024753_)
                            (let ((___splice2624126242_
                                   (gx#syntax-split-splice _hd2358024753_ '0)))
                              (let ((_tl2363624530_
                                     (##vector-ref ___splice2624126242_ '1))
                                    (_target2363424528_
                                     (##vector-ref ___splice2624126242_ '0)))
                                (if (gx#stx-null? _tl2363624530_)
                                    (___match2640226403_
                                     _e2357624742_
                                     _hd2357724745_
                                     _tl2357824747_
                                     _e2357924750_
                                     _hd2358024753_
                                     _tl2358124755_
                                     ___splice2624126242_
                                     _target2363424528_
                                     _tl2363624530_)
                                    (___match2640826409_
                                     _e2357624742_
                                     _hd2357724745_
                                     _tl2357824747_))))
                            (___match2640826409_
                             _e2357624742_
                             _hd2357724745_
                             _tl2357824747_)))))
                (if (gx#stx-pair/null? _hd2358024753_)
                    (let ((___splice2624126242_
                           (gx#syntax-split-splice _hd2358024753_ '0)))
                      (let ((_tl2363624530_
                             (##vector-ref ___splice2624126242_ '1))
                            (_target2363424528_
                             (##vector-ref ___splice2624126242_ '0)))
                        (if (gx#stx-null? _tl2363624530_)
                            (___match2640226403_
                             _e2357624742_
                             _hd2357724745_
                             _tl2357824747_
                             _e2357924750_
                             _hd2358024753_
                             _tl2358124755_
                             ___splice2624126242_
                             _target2363424528_
                             _tl2363624530_)
                            (___match2640826409_
                             _e2357624742_
                             _hd2357724745_
                             _tl2357824747_))))
                    (___match2640826409_
                     _e2357624742_
                     _hd2357724745_
                     _tl2357824747_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _hd2358024753_)
                                                    (let ((___splice2624126242_
                                                           (gx#syntax-split-splice
                                                            _hd2358024753_
                                                            '0)))
                                                      (let ((_tl2363624530_
                                                             (##vector-ref
                                                              ___splice2624126242_
                                                              '1))
                                                            (_target2363424528_
                                                             (##vector-ref
                                                              ___splice2624126242_
                                                              '0)))
                                                        (if (gx#stx-null?
                                                             _tl2363624530_)
                                                            (___match2640226403_
                                                             _e2357624742_
                                                             _hd2357724745_
                                                             _tl2357824747_
                                                             _e2357924750_
                                                             _hd2358024753_
                                                             _tl2358124755_
                                                             ___splice2624126242_
                                                             _target2363424528_
                                                             _tl2363624530_)
                                                            (___match2640826409_
                                                             _e2357624742_
                                                             _hd2357724745_
                                                             _tl2357824747_))))
                                                    (___match2640826409_
                                                     _e2357624742_
                                                     _hd2357724745_
                                                     _tl2357824747_)))
                                            (if (gx#stx-pair/null?
                                                 _hd2358024753_)
                                                (let ((___splice2624126242_
                                                       (gx#syntax-split-splice
                                                        _hd2358024753_
                                                        '0)))
                                                  (let ((_tl2363624530_
                                                         (##vector-ref
                                                          ___splice2624126242_
                                                          '1))
                                                        (_target2363424528_
                                                         (##vector-ref
                                                          ___splice2624126242_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2363624530_)
                                                        (___match2640226403_
                                                         _e2357624742_
                                                         _hd2357724745_
                                                         _tl2357824747_
                                                         _e2357924750_
                                                         _hd2358024753_
                                                         _tl2358124755_
                                                         ___splice2624126242_
                                                         _target2363424528_
                                                         _tl2363624530_)
                                                        (___match2640826409_
                                                         _e2357624742_
                                                         _hd2357724745_
                                                         _tl2357824747_))))
                                                (___match2640826409_
                                                 _e2357624742_
                                                 _hd2357724745_
                                                 _tl2357824747_)))))
                                    (if (gx#stx-pair/null? _hd2358024753_)
                                        (let ((___splice2624126242_
                                               (gx#syntax-split-splice
                                                _hd2358024753_
                                                '0)))
                                          (let ((_tl2363624530_
                                                 (##vector-ref
                                                  ___splice2624126242_
                                                  '1))
                                                (_target2363424528_
                                                 (##vector-ref
                                                  ___splice2624126242_
                                                  '0)))
                                            (if (gx#stx-null? _tl2363624530_)
                                                (___match2640226403_
                                                 _e2357624742_
                                                 _hd2357724745_
                                                 _tl2357824747_
                                                 _e2357924750_
                                                 _hd2358024753_
                                                 _tl2358124755_
                                                 ___splice2624126242_
                                                 _target2363424528_
                                                 _tl2363624530_)
                                                (___match2640826409_
                                                 _e2357624742_
                                                 _hd2357724745_
                                                 _tl2357824747_))))
                                        (___match2640826409_
                                         _e2357624742_
                                         _hd2357724745_
                                         _tl2357824747_)))
                                (if (gx#stx-pair/null? _hd2358024753_)
                                    (let ((___splice2624126242_
                                           (gx#syntax-split-splice
                                            _hd2358024753_
                                            '0)))
                                      (let ((_tl2363624530_
                                             (##vector-ref
                                              ___splice2624126242_
                                              '1))
                                            (_target2363424528_
                                             (##vector-ref
                                              ___splice2624126242_
                                              '0)))
                                        (if (gx#stx-null? _tl2363624530_)
                                            (___match2640226403_
                                             _e2357624742_
                                             _hd2357724745_
                                             _tl2357824747_
                                             _e2357924750_
                                             _hd2358024753_
                                             _tl2358124755_
                                             ___splice2624126242_
                                             _target2363424528_
                                             _tl2363624530_)
                                            (___match2640826409_
                                             _e2357624742_
                                             _hd2357724745_
                                             _tl2357824747_))))
                                    (___match2640826409_
                                     _e2357624742_
                                     _hd2357724745_
                                     _tl2357824747_)))
                            (if (gx#stx-pair/null? _hd2358024753_)
                                (let ((___splice2624126242_
                                       (gx#syntax-split-splice
                                        _hd2358024753_
                                        '0)))
                                  (let ((_tl2363624530_
                                         (##vector-ref
                                          ___splice2624126242_
                                          '1))
                                        (_target2363424528_
                                         (##vector-ref
                                          ___splice2624126242_
                                          '0)))
                                    (if (gx#stx-null? _tl2363624530_)
                                        (___match2640226403_
                                         _e2357624742_
                                         _hd2357724745_
                                         _tl2357824747_
                                         _e2357924750_
                                         _hd2358024753_
                                         _tl2358124755_
                                         ___splice2624126242_
                                         _target2363424528_
                                         _tl2363624530_)
                                        (___match2640826409_
                                         _e2357624742_
                                         _hd2357724745_
                                         _tl2357824747_))))
                                (___match2640826409_
                                 _e2357624742_
                                 _hd2357724745_
                                 _tl2357824747_)))))
                    (if (gx#stx-pair/null? _hd2358024753_)
                        (let ((___splice2624126242_
                               (gx#syntax-split-splice _hd2358024753_ '0)))
                          (let ((_tl2363624530_
                                 (##vector-ref ___splice2624126242_ '1))
                                (_target2363424528_
                                 (##vector-ref ___splice2624126242_ '0)))
                            (if (gx#stx-null? _tl2363624530_)
                                (___match2640226403_
                                 _e2357624742_
                                 _hd2357724745_
                                 _tl2357824747_
                                 _e2357924750_
                                 _hd2358024753_
                                 _tl2358124755_
                                 ___splice2624126242_
                                 _target2363424528_
                                 _tl2363624530_)
                                (___match2640826409_
                                 _e2357624742_
                                 _hd2357724745_
                                 _tl2357824747_))))
                        (___match2640826409_
                         _e2357624742_
                         _hd2357724745_
                         _tl2357824747_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _hd2358024753_)
                                                        (let ((___splice2624126242_
                                                               (gx#syntax-split-splice
                                                                _hd2358024753_
                                                                '0)))
                                                          (let ((_tl2363624530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2624126242_ '1))
                        (_target2363424528_
                         (##vector-ref ___splice2624126242_ '0)))
                    (if (gx#stx-null? _tl2363624530_)
                        (___match2640226403_
                         _e2357624742_
                         _hd2357724745_
                         _tl2357824747_
                         _e2357924750_
                         _hd2358024753_
                         _tl2358124755_
                         ___splice2624126242_
                         _target2363424528_
                         _tl2363624530_)
                        (___match2640826409_
                         _e2357624742_
                         _hd2357724745_
                         _tl2357824747_))))
                (___match2640826409_
                 _e2357624742_
                 _hd2357724745_
                 _tl2357824747_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _hd2358024753_)
                                                    (let ((___splice2624126242_
                                                           (gx#syntax-split-splice
                                                            _hd2358024753_
                                                            '0)))
                                                      (let ((_tl2363624530_
                                                             (##vector-ref
                                                              ___splice2624126242_
                                                              '1))
                                                            (_target2363424528_
                                                             (##vector-ref
                                                              ___splice2624126242_
                                                              '0)))
                                                        (if (gx#stx-null?
                                                             _tl2363624530_)
                                                            (___match2640226403_
                                                             _e2357624742_
                                                             _hd2357724745_
                                                             _tl2357824747_
                                                             _e2357924750_
                                                             _hd2358024753_
                                                             _tl2358124755_
                                                             ___splice2624126242_
                                                             _target2363424528_
                                                             _tl2363624530_)
                                                            (___match2640826409_
                                                             _e2357624742_
                                                             _hd2357724745_
                                                             _tl2357824747_))))
                                                    (___match2640826409_
                                                     _e2357624742_
                                                     _hd2357724745_
                                                     _tl2357824747_)))))
                                        (if (gx#stx-pair/null? _hd2358024753_)
                                            (let ((___splice2624126242_
                                                   (gx#syntax-split-splice
                                                    _hd2358024753_
                                                    '0)))
                                              (let ((_tl2363624530_
                                                     (##vector-ref
                                                      ___splice2624126242_
                                                      '1))
                                                    (_target2363424528_
                                                     (##vector-ref
                                                      ___splice2624126242_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2363624530_)
                                                    (___match2640226403_
                                                     _e2357624742_
                                                     _hd2357724745_
                                                     _tl2357824747_
                                                     _e2357924750_
                                                     _hd2358024753_
                                                     _tl2358124755_
                                                     ___splice2624126242_
                                                     _target2363424528_
                                                     _tl2363624530_)
                                                    (___match2640826409_
                                                     _e2357624742_
                                                     _hd2357724745_
                                                     _tl2357824747_))))
                                            (___match2640826409_
                                             _e2357624742_
                                             _hd2357724745_
                                             _tl2357824747_)))
                                    (if (gx#stx-pair/null? _hd2358024753_)
                                        (let ((___splice2624126242_
                                               (gx#syntax-split-splice
                                                _hd2358024753_
                                                '0)))
                                          (let ((_tl2363624530_
                                                 (##vector-ref
                                                  ___splice2624126242_
                                                  '1))
                                                (_target2363424528_
                                                 (##vector-ref
                                                  ___splice2624126242_
                                                  '0)))
                                            (if (gx#stx-null? _tl2363624530_)
                                                (___match2640226403_
                                                 _e2357624742_
                                                 _hd2357724745_
                                                 _tl2357824747_
                                                 _e2357924750_
                                                 _hd2358024753_
                                                 _tl2358124755_
                                                 ___splice2624126242_
                                                 _target2363424528_
                                                 _tl2363624530_)
                                                (___match2640826409_
                                                 _e2357624742_
                                                 _hd2357724745_
                                                 _tl2357824747_))))
                                        (___match2640826409_
                                         _e2357624742_
                                         _hd2357724745_
                                         _tl2357824747_)))
                                (if (gx#stx-pair/null? _hd2358024753_)
                                    (let ((___splice2624126242_
                                           (gx#syntax-split-splice
                                            _hd2358024753_
                                            '0)))
                                      (let ((_tl2363624530_
                                             (##vector-ref
                                              ___splice2624126242_
                                              '1))
                                            (_target2363424528_
                                             (##vector-ref
                                              ___splice2624126242_
                                              '0)))
                                        (if (gx#stx-null? _tl2363624530_)
                                            (___match2640226403_
                                             _e2357624742_
                                             _hd2357724745_
                                             _tl2357824747_
                                             _e2357924750_
                                             _hd2358024753_
                                             _tl2358124755_
                                             ___splice2624126242_
                                             _target2363424528_
                                             _tl2363624530_)
                                            (___match2640826409_
                                             _e2357624742_
                                             _hd2357724745_
                                             _tl2357824747_))))
                                    (___match2640826409_
                                     _e2357624742_
                                     _hd2357724745_
                                     _tl2357824747_)))))
                        (if (gx#stx-pair/null? _hd2358024753_)
                            (let ((___splice2624126242_
                                   (gx#syntax-split-splice _hd2358024753_ '0)))
                              (let ((_tl2363624530_
                                     (##vector-ref ___splice2624126242_ '1))
                                    (_target2363424528_
                                     (##vector-ref ___splice2624126242_ '0)))
                                (if (gx#stx-null? _tl2363624530_)
                                    (___match2640226403_
                                     _e2357624742_
                                     _hd2357724745_
                                     _tl2357824747_
                                     _e2357924750_
                                     _hd2358024753_
                                     _tl2358124755_
                                     ___splice2624126242_
                                     _target2363424528_
                                     _tl2363624530_)
                                    (___match2640826409_
                                     _e2357624742_
                                     _hd2357724745_
                                     _tl2357824747_))))
                            (___match2640826409_
                             _e2357624742_
                             _hd2357724745_
                             _tl2357824747_)))))
                (if (gx#stx-pair/null? _hd2358024753_)
                    (let ((___splice2624126242_
                           (gx#syntax-split-splice _hd2358024753_ '0)))
                      (let ((_tl2363624530_
                             (##vector-ref ___splice2624126242_ '1))
                            (_target2363424528_
                             (##vector-ref ___splice2624126242_ '0)))
                        (if (gx#stx-null? _tl2363624530_)
                            (___match2640226403_
                             _e2357624742_
                             _hd2357724745_
                             _tl2357824747_
                             _e2357924750_
                             _hd2358024753_
                             _tl2358124755_
                             ___splice2624126242_
                             _target2363424528_
                             _tl2363624530_)
                            (___match2640826409_
                             _e2357624742_
                             _hd2357724745_
                             _tl2357824747_))))
                    (___match2640826409_
                     _e2357624742_
                     _hd2357724745_
                     _tl2357824747_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _hd2358024753_)
                                                        (let ((___splice2624126242_
                                                               (gx#syntax-split-splice
                                                                _hd2358024753_
                                                                '0)))
                                                          (let ((_tl2363624530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2624126242_ '1))
                        (_target2363424528_
                         (##vector-ref ___splice2624126242_ '0)))
                    (if (gx#stx-null? _tl2363624530_)
                        (___match2640226403_
                         _e2357624742_
                         _hd2357724745_
                         _tl2357824747_
                         _e2357924750_
                         _hd2358024753_
                         _tl2358124755_
                         ___splice2624126242_
                         _target2363424528_
                         _tl2363624530_)
                        (___match2640826409_
                         _e2357624742_
                         _hd2357724745_
                         _tl2357824747_))))
                (___match2640826409_
                 _e2357624742_
                 _hd2357724745_
                 _tl2357824747_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _hd2358024753_)
                                                    (let ((___splice2624126242_
                                                           (gx#syntax-split-splice
                                                            _hd2358024753_
                                                            '0)))
                                                      (let ((_tl2363624530_
                                                             (##vector-ref
                                                              ___splice2624126242_
                                                              '1))
                                                            (_target2363424528_
                                                             (##vector-ref
                                                              ___splice2624126242_
                                                              '0)))
                                                        (if (gx#stx-null?
                                                             _tl2363624530_)
                                                            (___match2640226403_
                                                             _e2357624742_
                                                             _hd2357724745_
                                                             _tl2357824747_
                                                             _e2357924750_
                                                             _hd2358024753_
                                                             _tl2358124755_
                                                             ___splice2624126242_
                                                             _target2363424528_
                                                             _tl2363624530_)
                                                            (___match2640826409_
                                                             _e2357624742_
                                                             _hd2357724745_
                                                             _tl2357824747_))))
                                                    (___match2640826409_
                                                     _e2357624742_
                                                     _hd2357724745_
                                                     _tl2357824747_)))))
                                        (if (gx#stx-pair/null? _hd2358024753_)
                                            (let ((___splice2624126242_
                                                   (gx#syntax-split-splice
                                                    _hd2358024753_
                                                    '0)))
                                              (let ((_tl2363624530_
                                                     (##vector-ref
                                                      ___splice2624126242_
                                                      '1))
                                                    (_target2363424528_
                                                     (##vector-ref
                                                      ___splice2624126242_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2363624530_)
                                                    (___match2640226403_
                                                     _e2357624742_
                                                     _hd2357724745_
                                                     _tl2357824747_
                                                     _e2357924750_
                                                     _hd2358024753_
                                                     _tl2358124755_
                                                     ___splice2624126242_
                                                     _target2363424528_
                                                     _tl2363624530_)
                                                    (___match2640826409_
                                                     _e2357624742_
                                                     _hd2357724745_
                                                     _tl2357824747_))))
                                            (___match2640826409_
                                             _e2357624742_
                                             _hd2357724745_
                                             _tl2357824747_)))))
                                (if (gx#stx-pair/null? _hd2358024753_)
                                    (let ((___splice2624126242_
                                           (gx#syntax-split-splice
                                            _hd2358024753_
                                            '0)))
                                      (let ((_tl2363624530_
                                             (##vector-ref
                                              ___splice2624126242_
                                              '1))
                                            (_target2363424528_
                                             (##vector-ref
                                              ___splice2624126242_
                                              '0)))
                                        (if (gx#stx-null? _tl2363624530_)
                                            (___match2640226403_
                                             _e2357624742_
                                             _hd2357724745_
                                             _tl2357824747_
                                             _e2357924750_
                                             _hd2358024753_
                                             _tl2358124755_
                                             ___splice2624126242_
                                             _target2363424528_
                                             _tl2363624530_)
                                            (___match2640826409_
                                             _e2357624742_
                                             _hd2357724745_
                                             _tl2357824747_))))
                                    (___match2640826409_
                                     _e2357624742_
                                     _hd2357724745_
                                     _tl2357824747_)))))
                        (___match2640826409_
                         _e2357624742_
                         _hd2357724745_
                         _tl2357824747_))))
                (___kont2625326254_)))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx23508_)
      (letrec ((_clause-e23510_
                (lambda (_form23560_)
                  (let ((__obj28477 (make-object gxc#!lambda::t '5)))
                    (begin
                      (gxc#!lambda:::init!__0
                       __obj28477
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form23560_)
                       (gxc#dispatch-lambda-form-delegate _form23560_))
                      __obj28477)))))
        (let* ((___stx2670326704_ _stx23508_)
               (_g2351323523_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2670326704_))))
          (let ((___kont2670526706_
                 (lambda (_L23543_)
                   (let ((_clauses23555_ (map _clause-e23510_ _L23543_)))
                     (##structure
                      gxc#!case-lambda::t
                      'case-lambda
                      _clauses23555_))))
                (___kont2670726708_ (lambda () '#f)))
            (let ((___match2671426715_
                   (lambda (_e2351623535_ _hd2351723538_ _tl2351823540_)
                     (let ((_L23543_ _tl2351823540_))
                       (if (andmap1 gxc#dispatch-lambda-form? _L23543_)
                           (___kont2670526706_ _L23543_)
                           (___kont2670726708_))))))
              (if (gx#stx-pair? ___stx2670326704_)
                  (let ((_e2351623535_ (gx#stx-e ___stx2670326704_)))
                    (let ((_tl2351823540_ (##cdr _e2351623535_))
                          (_hd2351723538_ (##car _e2351623535_)))
                      (___match2671426715_
                       _e2351623535_
                       _hd2351723538_
                       _tl2351823540_)))
                  (___kont2670726708_))))))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx23413_)
      (let* ((___stx2671726718_ _stx23413_)
             (_g2341623436_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2671726718_))))
        (let ((___kont2671926720_
               (lambda (_L23480_ _L23481_)
                 (let ((_type-e2349823500_
                        (table-ref
                         gxc#basic-expression-type-builtin
                         (gxc#identifier-symbol _L23481_)
                         '#f)))
                   (if _type-e2349823500_
                       (let ((_type-e23503_ _type-e2349823500_))
                         (_type-e23503_ _stx23413_ _L23480_))
                       '#f))))
              (___kont2672126722_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2671726718_)
              (let ((_e2342023448_ (gx#stx-e ___stx2671726718_)))
                (let ((_tl2342223453_ (##cdr _e2342023448_))
                      (_hd2342123451_ (##car _e2342023448_)))
                  (if (gx#stx-pair? _tl2342223453_)
                      (let ((_e2342323456_ (gx#stx-e _tl2342223453_)))
                        (let ((_tl2342523461_ (##cdr _e2342323456_))
                              (_hd2342423459_ (##car _e2342323456_)))
                          (if (gx#stx-pair? _hd2342423459_)
                              (let ((_e2342623464_ (gx#stx-e _hd2342423459_)))
                                (let ((_tl2342823469_ (##cdr _e2342623464_))
                                      (_hd2342723467_ (##car _e2342623464_)))
                                  (if (gx#identifier? _hd2342723467_)
                                      (if (gx#stx-eq? '%#ref _hd2342723467_)
                                          (if (gx#stx-pair? _tl2342823469_)
                                              (let ((_e2342923472_
                                                     (gx#stx-e
                                                      _tl2342823469_)))
                                                (let ((_tl2343123477_
                                                       (##cdr _e2342923472_))
                                                      (_hd2343023475_
                                                       (##car _e2342923472_)))
                                                  (if (gx#stx-null?
                                                       _tl2343123477_)
                                                      (___kont2671926720_
                                                       _tl2342523461_
                                                       _hd2343023475_)
                                                      (___kont2672126722_))))
                                              (___kont2672126722_))
                                          (___kont2672126722_))
                                      (___kont2672126722_))))
                              (___kont2672126722_))))
                      (___kont2672126722_))))
              (___kont2672126722_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx22893_ _args22894_)
      (let* ((___stx2675526756_ _args22894_)
             (_g2289823012_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2675526756_))))
        (let ((___kont2675726758_
               (lambda (_L23362_ _L23363_ _L23364_ _L23365_ _L23366_)
                 (let ((__obj28478 (make-object gxc#!struct-type::t '7)))
                   (begin
                     (gxc#!struct-type:::init!
                      __obj28478
                      (gx#stx-e _L23366_)
                      '#f
                      (gx#stx-e _L23365_)
                      '0
                      (gx#stx-e _L23362_)
                      (gx#stx-e _L23363_))
                     __obj28478))))
              (___kont2675926760_
               (lambda (_L23152_ _L23153_ _L23154_ _L23155_ _L23156_ _L23157_)
                 (let* ((_super-t23203_
                         (if (gx#stx-e _L23156_)
                             (gxc#identifier-symbol _L23156_)
                             '#f))
                        (_super-type23205_
                         (if _super-t23203_
                             (gxc#optimizer-resolve-type _super-t23203_)
                             '#f)))
                   (begin
                     (if (if _super-type23205_
                             (not (##structure-instance-of?
                                   _super-type23205_
                                   'gxc#!struct-type::t))
                             '#f)
                         (gxc#raise-compile-error
                          '"Illegal struct-type construction; invalid super type"
                          _stx22893_
                          _L23156_)
                         '#!void)
                     (let ((_fields23221_ (gx#stx-e _L23155_))
                           (_xfields23222_
                            (if _super-type23205_
                                (let ((_super-fields2320723210_
                                       (##structure-ref
                                        _super-type23205_
                                        '3
                                        gxc#!struct-type::t
                                        '#f))
                                      (_super-xfields2320823212_
                                       (##structure-ref
                                        _super-type23205_
                                        '4
                                        gxc#!struct-type::t
                                        '#f)))
                                  (if _super-fields2320723210_
                                      (if _super-xfields2320823212_
                                          (let ((_super-fields23215_
                                                 _super-fields2320723210_)
                                                (_super-xfields23216_
                                                 _super-xfields2320823212_))
                                            (fx+ _super-fields23215_
                                                 _super-xfields23216_))
                                          '#f)
                                      '#f))
                                '#f))
                           (_plist23223_ (gx#stx-e _L23153_))
                           (_ctor23224_
                            (let ((_$e23218_ (gx#stx-e _L23152_)))
                              (if _$e23218_
                                  (values _$e23218_)
                                  (if _super-type23205_
                                      (##structure-ref
                                       _super-type23205_
                                       '5
                                       gxc#!struct-type::t
                                       '#f)
                                      (if _super-t23203_ '#!void '#f))))))
                       (let ((__obj28479 (make-object gxc#!struct-type::t '7)))
                         (begin
                           (gxc#!struct-type:::init!
                            __obj28479
                            (gx#stx-e _L23157_)
                            _super-t23203_
                            _fields23221_
                            _xfields23222_
                            _ctor23224_
                            _plist23223_)
                           __obj28479)))))))
              (___kont2676126762_
               (lambda ()
                 (begin
                   (gxc#verbose
                    '"make-struct-type: can't infer type "
                    (gx#syntax->datum _stx22893_))
                   '#f))))
          (if (gx#stx-pair? ___stx2675526756_)
              (let ((_e2290523231_ (gx#stx-e ___stx2675526756_)))
                (let ((_tl2290723236_ (##cdr _e2290523231_))
                      (_hd2290623234_ (##car _e2290523231_)))
                  (if (gx#stx-pair? _hd2290623234_)
                      (let ((_e2290823239_ (gx#stx-e _hd2290623234_)))
                        (let ((_tl2291023244_ (##cdr _e2290823239_))
                              (_hd2290923242_ (##car _e2290823239_)))
                          (if (gx#identifier? _hd2290923242_)
                              (if (gx#stx-eq? '%#quote _hd2290923242_)
                                  (if (gx#stx-pair? _tl2291023244_)
                                      (let ((_e2291123247_
                                             (gx#stx-e _tl2291023244_)))
                                        (let ((_tl2291323252_
                                               (##cdr _e2291123247_))
                                              (_hd2291223250_
                                               (##car _e2291123247_)))
                                          (if (gx#stx-null? _tl2291323252_)
                                              (if (gx#stx-pair? _tl2290723236_)
                                                  (let ((_e2291423255_
                                                         (gx#stx-e
                                                          _tl2290723236_)))
                                                    (let ((_tl2291623260_
                                                           (##cdr _e2291423255_))
                                                          (_hd2291523258_
                                                           (##car _e2291423255_)))
                                                      (if (gx#stx-pair?
                                                           _hd2291523258_)
                                                          (let ((_e2291723263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2291523258_)))
                    (let ((_tl2291923268_ (##cdr _e2291723263_))
                          (_hd2291823266_ (##car _e2291723263_)))
                      (if (gx#identifier? _hd2291823266_)
                          (if (gx#stx-eq? '%#quote _hd2291823266_)
                              (if (gx#stx-pair? _tl2291923268_)
                                  (let ((_e2292023271_
                                         (gx#stx-e _tl2291923268_)))
                                    (let ((_tl2292223276_
                                           (##cdr _e2292023271_))
                                          (_hd2292123274_
                                           (##car _e2292023271_)))
                                      (if (gx#stx-datum? _hd2292123274_)
                                          (let ((_e2292323279_
                                                 (gx#stx-e _hd2292123274_)))
                                            (if (equal? _e2292323279_ '#f)
                                                (if (gx#stx-null?
                                                     _tl2292223276_)
                                                    (if (gx#stx-pair?
                                                         _tl2291623260_)
                                                        (let ((_e2292423282_
                                                               (gx#stx-e
                                                                _tl2291623260_)))
                                                          (let ((_tl2292623287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2292423282_))
                        (_hd2292523285_ (##car _e2292423282_)))
                    (if (gx#stx-pair? _hd2292523285_)
                        (let ((_e2292723290_ (gx#stx-e _hd2292523285_)))
                          (let ((_tl2292923295_ (##cdr _e2292723290_))
                                (_hd2292823293_ (##car _e2292723290_)))
                            (if (gx#identifier? _hd2292823293_)
                                (if (gx#stx-eq? '%#quote _hd2292823293_)
                                    (if (gx#stx-pair? _tl2292923295_)
                                        (let ((_e2293023298_
                                               (gx#stx-e _tl2292923295_)))
                                          (let ((_tl2293223303_
                                                 (##cdr _e2293023298_))
                                                (_hd2293123301_
                                                 (##car _e2293023298_)))
                                            (if (gx#stx-null? _tl2293223303_)
                                                (if (gx#stx-pair?
                                                     _tl2292623287_)
                                                    (let ((_e2293323306_
                                                           (gx#stx-e
                                                            _tl2292623287_)))
                                                      (let ((_tl2293523311_
                                                             (##cdr _e2293323306_))
                                                            (_hd2293423309_
                                                             (##car _e2293323306_)))
                                                        (if (gx#stx-pair?
                                                             _tl2293523311_)
                                                            (let ((_e2293623314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2293523311_)))
                      (let ((_tl2293823319_ (##cdr _e2293623314_))
                            (_hd2293723317_ (##car _e2293623314_)))
                        (if (gx#stx-pair? _hd2293723317_)
                            (let ((_e2293923322_ (gx#stx-e _hd2293723317_)))
                              (let ((_tl2294123327_ (##cdr _e2293923322_))
                                    (_hd2294023325_ (##car _e2293923322_)))
                                (if (gx#identifier? _hd2294023325_)
                                    (if (gx#stx-eq? '%#quote _hd2294023325_)
                                        (if (gx#stx-pair? _tl2294123327_)
                                            (let ((_e2294223330_
                                                   (gx#stx-e _tl2294123327_)))
                                              (let ((_tl2294423335_
                                                     (##cdr _e2294223330_))
                                                    (_hd2294323333_
                                                     (##car _e2294223330_)))
                                                (if (gx#stx-null?
                                                     _tl2294423335_)
                                                    (if (gx#stx-pair?
                                                         _tl2293823319_)
                                                        (let ((_e2294523338_
                                                               (gx#stx-e
                                                                _tl2293823319_)))
                                                          (let ((_tl2294723343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2294523338_))
                        (_hd2294623341_ (##car _e2294523338_)))
                    (if (gx#stx-pair? _hd2294623341_)
                        (let ((_e2294823346_ (gx#stx-e _hd2294623341_)))
                          (let ((_tl2295023351_ (##cdr _e2294823346_))
                                (_hd2294923349_ (##car _e2294823346_)))
                            (if (gx#identifier? _hd2294923349_)
                                (if (gx#stx-eq? '%#quote _hd2294923349_)
                                    (if (gx#stx-pair? _tl2295023351_)
                                        (let ((_e2295123354_
                                               (gx#stx-e _tl2295023351_)))
                                          (let ((_tl2295323359_
                                                 (##cdr _e2295123354_))
                                                (_hd2295223357_
                                                 (##car _e2295123354_)))
                                            (if (gx#stx-null? _tl2295323359_)
                                                (___kont2675726758_
                                                 _hd2295223357_
                                                 _hd2294323333_
                                                 _hd2293423309_
                                                 _hd2293123301_
                                                 _hd2291223250_)
                                                (___kont2676126762_))))
                                        (___kont2676126762_))
                                    (___kont2676126762_))
                                (___kont2676126762_))))
                        (___kont2676126762_))))
                (___kont2676126762_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2676126762_))))
                                            (___kont2676126762_))
                                        (___kont2676126762_))
                                    (___kont2676126762_))))
                            (___kont2676126762_))))
                    (___kont2676126762_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2676126762_))
                                                (___kont2676126762_))))
                                        (___kont2676126762_))
                                    (___kont2676126762_))
                                (___kont2676126762_))))
                        (___kont2676126762_))))
                (___kont2676126762_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2676126762_))
                                                (___kont2676126762_)))
                                          (___kont2676126762_))))
                                  (___kont2676126762_))
                              (if (gx#stx-eq? '%#ref _hd2291823266_)
                                  (if (gx#stx-pair? _tl2291923268_)
                                      (let ((_e2297523064_
                                             (gx#stx-e _tl2291923268_)))
                                        (let ((_tl2297723069_
                                               (##cdr _e2297523064_))
                                              (_hd2297623067_
                                               (##car _e2297523064_)))
                                          (if (gx#stx-null? _tl2297723069_)
                                              (if (gx#stx-pair? _tl2291623260_)
                                                  (let ((_e2297823072_
                                                         (gx#stx-e
                                                          _tl2291623260_)))
                                                    (let ((_tl2298023077_
                                                           (##cdr _e2297823072_))
                                                          (_hd2297923075_
                                                           (##car _e2297823072_)))
                                                      (if (gx#stx-pair?
                                                           _hd2297923075_)
                                                          (let ((_e2298123080_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2297923075_)))
                    (let ((_tl2298323085_ (##cdr _e2298123080_))
                          (_hd2298223083_ (##car _e2298123080_)))
                      (if (gx#identifier? _hd2298223083_)
                          (if (gx#stx-eq? '%#quote _hd2298223083_)
                              (if (gx#stx-pair? _tl2298323085_)
                                  (let ((_e2298423088_
                                         (gx#stx-e _tl2298323085_)))
                                    (let ((_tl2298623093_
                                           (##cdr _e2298423088_))
                                          (_hd2298523091_
                                           (##car _e2298423088_)))
                                      (if (gx#stx-null? _tl2298623093_)
                                          (if (gx#stx-pair? _tl2298023077_)
                                              (let ((_e2298723096_
                                                     (gx#stx-e
                                                      _tl2298023077_)))
                                                (let ((_tl2298923101_
                                                       (##cdr _e2298723096_))
                                                      (_hd2298823099_
                                                       (##car _e2298723096_)))
                                                  (if (gx#stx-pair?
                                                       _tl2298923101_)
                                                      (let ((_e2299023104_
                                                             (gx#stx-e
                                                              _tl2298923101_)))
                                                        (let ((_tl2299223109_
                                                               (##cdr _e2299023104_))
                                                              (_hd2299123107_
                                                               (##car _e2299023104_)))
                                                          (if (gx#stx-pair?
                                                               _hd2299123107_)
                                                              (let ((_e2299323112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2299123107_)))
                        (let ((_tl2299523117_ (##cdr _e2299323112_))
                              (_hd2299423115_ (##car _e2299323112_)))
                          (if (gx#identifier? _hd2299423115_)
                              (if (gx#stx-eq? '%#quote _hd2299423115_)
                                  (if (gx#stx-pair? _tl2299523117_)
                                      (let ((_e2299623120_
                                             (gx#stx-e _tl2299523117_)))
                                        (let ((_tl2299823125_
                                               (##cdr _e2299623120_))
                                              (_hd2299723123_
                                               (##car _e2299623120_)))
                                          (if (gx#stx-null? _tl2299823125_)
                                              (if (gx#stx-pair? _tl2299223109_)
                                                  (let ((_e2299923128_
                                                         (gx#stx-e
                                                          _tl2299223109_)))
                                                    (let ((_tl2300123133_
                                                           (##cdr _e2299923128_))
                                                          (_hd2300023131_
                                                           (##car _e2299923128_)))
                                                      (if (gx#stx-pair?
                                                           _hd2300023131_)
                                                          (let ((_e2300223136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2300023131_)))
                    (let ((_tl2300423141_ (##cdr _e2300223136_))
                          (_hd2300323139_ (##car _e2300223136_)))
                      (if (gx#identifier? _hd2300323139_)
                          (if (gx#stx-eq? '%#quote _hd2300323139_)
                              (if (gx#stx-pair? _tl2300423141_)
                                  (let ((_e2300523144_
                                         (gx#stx-e _tl2300423141_)))
                                    (let ((_tl2300723149_
                                           (##cdr _e2300523144_))
                                          (_hd2300623147_
                                           (##car _e2300523144_)))
                                      (if (gx#stx-null? _tl2300723149_)
                                          (___kont2675926760_
                                           _hd2300623147_
                                           _hd2299723123_
                                           _hd2298823099_
                                           _hd2298523091_
                                           _hd2297623067_
                                           _hd2291223250_)
                                          (___kont2676126762_))))
                                  (___kont2676126762_))
                              (___kont2676126762_))
                          (___kont2676126762_))))
                  (___kont2676126762_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2676126762_))
                                              (___kont2676126762_))))
                                      (___kont2676126762_))
                                  (___kont2676126762_))
                              (___kont2676126762_))))
                      (___kont2676126762_))))
              (___kont2676126762_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2676126762_))
                                          (___kont2676126762_))))
                                  (___kont2676126762_))
                              (___kont2676126762_))
                          (___kont2676126762_))))
                  (___kont2676126762_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2676126762_))
                                              (___kont2676126762_))))
                                      (___kont2676126762_))
                                  (___kont2676126762_)))
                          (___kont2676126762_))))
                  (___kont2676126762_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2676126762_))
                                              (___kont2676126762_))))
                                      (___kont2676126762_))
                                  (___kont2676126762_))
                              (___kont2676126762_))))
                      (___kont2676126762_))))
              (___kont2676126762_))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx22819_ _args22820_)
      (let* ((___stx2702327024_ _args22820_)
             (_g2282322839_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2702327024_))))
        (let ((___kont2702527026_
               (lambda (_L22875_)
                 (##structure
                  gxc#!struct-pred::t
                  (gxc#identifier-symbol _L22875_))))
              (___kont2702727028_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2702327024_)
              (let ((_e2282622851_ (gx#stx-e ___stx2702327024_)))
                (let ((_tl2282822856_ (##cdr _e2282622851_))
                      (_hd2282722854_ (##car _e2282622851_)))
                  (if (gx#stx-pair? _hd2282722854_)
                      (let ((_e2282922859_ (gx#stx-e _hd2282722854_)))
                        (let ((_tl2283122864_ (##cdr _e2282922859_))
                              (_hd2283022862_ (##car _e2282922859_)))
                          (if (gx#identifier? _hd2283022862_)
                              (if (gx#stx-eq? '%#ref _hd2283022862_)
                                  (if (gx#stx-pair? _tl2283122864_)
                                      (let ((_e2283222867_
                                             (gx#stx-e _tl2283122864_)))
                                        (let ((_tl2283422872_
                                               (##cdr _e2283222867_))
                                              (_hd2283322870_
                                               (##car _e2283222867_)))
                                          (if (gx#stx-null? _tl2283422872_)
                                              (if (gx#stx-null? _tl2282822856_)
                                                  (___kont2702527026_
                                                   _hd2283322870_)
                                                  (___kont2702727028_))
                                              (___kont2702727028_))))
                                      (___kont2702727028_))
                                  (___kont2702727028_))
                              (___kont2702727028_))))
                      (___kont2702727028_))))
              (___kont2702727028_))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__%
      (lambda (_stx22690_ _args22691_ _unchecked?22692_)
        (let* ((___stx2705727058_ _args22691_)
               (_g2269522721_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2705727058_))))
          (let ((___kont2705927060_
                 (lambda (_L22781_ _L22782_)
                   (##structure
                    gxc#!struct-getf::t
                    (gxc#identifier-symbol _L22782_)
                    (gx#stx-e _L22781_)
                    _unchecked?22692_)))
                (___kont2706127062_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx2705727058_)
                (let ((_e2269922733_ (gx#stx-e ___stx2705727058_)))
                  (let ((_tl2270122738_ (##cdr _e2269922733_))
                        (_hd2270022736_ (##car _e2269922733_)))
                    (if (gx#stx-pair? _hd2270022736_)
                        (let ((_e2270222741_ (gx#stx-e _hd2270022736_)))
                          (let ((_tl2270422746_ (##cdr _e2270222741_))
                                (_hd2270322744_ (##car _e2270222741_)))
                            (if (gx#identifier? _hd2270322744_)
                                (if (gx#stx-eq? '%#ref _hd2270322744_)
                                    (if (gx#stx-pair? _tl2270422746_)
                                        (let ((_e2270522749_
                                               (gx#stx-e _tl2270422746_)))
                                          (let ((_tl2270722754_
                                                 (##cdr _e2270522749_))
                                                (_hd2270622752_
                                                 (##car _e2270522749_)))
                                            (if (gx#stx-null? _tl2270722754_)
                                                (if (gx#stx-pair?
                                                     _tl2270122738_)
                                                    (let ((_e2270822757_
                                                           (gx#stx-e
                                                            _tl2270122738_)))
                                                      (let ((_tl2271022762_
                                                             (##cdr _e2270822757_))
                                                            (_hd2270922760_
                                                             (##car _e2270822757_)))
                                                        (if (gx#stx-pair?
                                                             _hd2270922760_)
                                                            (let ((_e2271122765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2270922760_)))
                      (let ((_tl2271322770_ (##cdr _e2271122765_))
                            (_hd2271222768_ (##car _e2271122765_)))
                        (if (gx#identifier? _hd2271222768_)
                            (if (gx#stx-eq? '%#quote _hd2271222768_)
                                (if (gx#stx-pair? _tl2271322770_)
                                    (let ((_e2271422773_
                                           (gx#stx-e _tl2271322770_)))
                                      (let ((_tl2271622778_
                                             (##cdr _e2271422773_))
                                            (_hd2271522776_
                                             (##car _e2271422773_)))
                                        (if (gx#stx-null? _tl2271622778_)
                                            (if (gx#stx-null? _tl2271022762_)
                                                (___kont2705927060_
                                                 _hd2271522776_
                                                 _hd2270622752_)
                                                (___kont2706127062_))
                                            (___kont2706127062_))))
                                    (___kont2706127062_))
                                (___kont2706127062_))
                            (___kont2706127062_))))
                    (___kont2706127062_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2706127062_))
                                                (___kont2706127062_))))
                                        (___kont2706127062_))
                                    (___kont2706127062_))
                                (___kont2706127062_))))
                        (___kont2706127062_))))
                (___kont2706127062_))))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx22810_ _args22811_)
          (let ((_unchecked?22813_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__%
             _stx22810_
             _args22811_
             _unchecked?22813_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g28485_
          (let ((_g28484_ (length _g28485_)))
            (cond ((##fx= _g28484_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g28485_))
                  ((##fx= _g28484_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__%
                          _g28485_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g28485_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__%
      (lambda (_stx22560_ _args22561_ _unchecked?22562_)
        (let* ((___stx2711527116_ _args22561_)
               (_g2256522591_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2711527116_))))
          (let ((___kont2711727118_
                 (lambda (_L22651_ _L22652_)
                   (##structure
                    gxc#!struct-setf::t
                    (gxc#identifier-symbol _L22652_)
                    (gx#stx-e _L22651_)
                    _unchecked?22562_)))
                (___kont2711927120_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx2711527116_)
                (let ((_e2256922603_ (gx#stx-e ___stx2711527116_)))
                  (let ((_tl2257122608_ (##cdr _e2256922603_))
                        (_hd2257022606_ (##car _e2256922603_)))
                    (if (gx#stx-pair? _hd2257022606_)
                        (let ((_e2257222611_ (gx#stx-e _hd2257022606_)))
                          (let ((_tl2257422616_ (##cdr _e2257222611_))
                                (_hd2257322614_ (##car _e2257222611_)))
                            (if (gx#identifier? _hd2257322614_)
                                (if (gx#stx-eq? '%#ref _hd2257322614_)
                                    (if (gx#stx-pair? _tl2257422616_)
                                        (let ((_e2257522619_
                                               (gx#stx-e _tl2257422616_)))
                                          (let ((_tl2257722624_
                                                 (##cdr _e2257522619_))
                                                (_hd2257622622_
                                                 (##car _e2257522619_)))
                                            (if (gx#stx-null? _tl2257722624_)
                                                (if (gx#stx-pair?
                                                     _tl2257122608_)
                                                    (let ((_e2257822627_
                                                           (gx#stx-e
                                                            _tl2257122608_)))
                                                      (let ((_tl2258022632_
                                                             (##cdr _e2257822627_))
                                                            (_hd2257922630_
                                                             (##car _e2257822627_)))
                                                        (if (gx#stx-pair?
                                                             _hd2257922630_)
                                                            (let ((_e2258122635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2257922630_)))
                      (let ((_tl2258322640_ (##cdr _e2258122635_))
                            (_hd2258222638_ (##car _e2258122635_)))
                        (if (gx#identifier? _hd2258222638_)
                            (if (gx#stx-eq? '%#quote _hd2258222638_)
                                (if (gx#stx-pair? _tl2258322640_)
                                    (let ((_e2258422643_
                                           (gx#stx-e _tl2258322640_)))
                                      (let ((_tl2258622648_
                                             (##cdr _e2258422643_))
                                            (_hd2258522646_
                                             (##car _e2258422643_)))
                                        (if (gx#stx-null? _tl2258622648_)
                                            (if (gx#stx-null? _tl2258022632_)
                                                (___kont2711727118_
                                                 _hd2258522646_
                                                 _hd2257622622_)
                                                (___kont2711927120_))
                                            (___kont2711927120_))))
                                    (___kont2711927120_))
                                (___kont2711927120_))
                            (___kont2711927120_))))
                    (___kont2711927120_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2711927120_))
                                                (___kont2711927120_))))
                                        (___kont2711927120_))
                                    (___kont2711927120_))
                                (___kont2711927120_))))
                        (___kont2711927120_))))
                (___kont2711927120_))))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx22680_ _args22681_)
          (let ((_unchecked?22683_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__%
             _stx22680_
             _args22681_
             _unchecked?22683_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g28487_
          (let ((_g28486_ (length _g28487_)))
            (cond ((##fx= _g28486_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g28487_))
                  ((##fx= _g28486_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__%
                          _g28487_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g28487_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx22556_ _args22557_)
      (gxc#basic-expression-type-make-struct-field-accessor__%
       _stx22556_
       _args22557_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx22553_ _args22554_)
      (gxc#basic-expression-type-make-struct-field-mutator__%
       _stx22553_
       _args22554_
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
    (lambda (_stx22502_)
      (let* ((_g2250422517_
              (lambda (_g2250522514_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2250522514_)))
             (_g2250322550_
              (lambda (_g2250522520_)
                (if (gx#stx-pair? _g2250522520_)
                    (let ((_e2250722522_ (gx#stx-e _g2250522520_)))
                      (let ((_hd2250822525_ (##car _e2250722522_))
                            (_tl2250922527_ (##cdr _e2250722522_)))
                        (if (gx#stx-pair? _tl2250922527_)
                            (let ((_e2251022530_ (gx#stx-e _tl2250922527_)))
                              (let ((_hd2251122533_ (##car _e2251022530_))
                                    (_tl2251222535_ (##cdr _e2251022530_)))
                                (if (gx#stx-null? _tl2251222535_)
                                    ((lambda (_L22538_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#identifier-symbol _L22538_)))
                                     _hd2251122533_)
                                    (_g2250422517_ _g2250522520_))))
                            (_g2250422517_ _g2250522520_))))
                    (_g2250422517_ _g2250522520_)))))
        (_g2250322550_ _stx22502_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form21736_)
      (let* ((___stx2717327174_ _form21736_)
             (_g2174121898_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2717327174_))))
        (let ((___kont2717527176_ (lambda (_L22422_ _L22423_ _L22424_) '#t))
              (___kont2718127182_
               (lambda (_L22210_ _L22211_ _L22212_ _L22213_ _L22214_ _L22215_)
                 '#t))
              (___kont2718727188_
               (lambda (_L22006_ _L22007_ _L22008_ _L22009_) '#t))
              (___kont2718927190_ (lambda () '#f)))
          (let* ((___match2731427315_
                  (lambda (_e2185821910_
                           _hd2185921913_
                           _tl2186021915_
                           _e2186121918_
                           _hd2186221921_
                           _tl2186321923_
                           _e2186421926_
                           _hd2186521929_
                           _tl2186621931_
                           _e2186721934_
                           _hd2186821937_
                           _tl2186921939_
                           _e2187021942_
                           _hd2187121945_
                           _tl2187221947_
                           _e2187321950_
                           _hd2187421953_
                           _tl2187521955_
                           _e2187621958_
                           _hd2187721961_
                           _tl2187821963_
                           _e2187921966_
                           _hd2188021969_
                           _tl2188121971_
                           _e2188221974_
                           _hd2188321977_
                           _tl2188421979_
                           _e2188521982_
                           _hd2188621985_
                           _tl2188721987_
                           _e2188821990_
                           _hd2188921993_
                           _tl2189021995_
                           _e2189121998_
                           _hd2189222001_
                           _tl2189322003_)
                    (let ((_L22006_ _hd2189222001_)
                          (_L22007_ _hd2188321977_)
                          (_L22008_ _hd2187421953_)
                          (_L22009_ _hd2185921913_))
                      (if (if (gx#identifier? _L22009_)
                              (if (gxc#runtime-identifier=? _L22008_ 'apply)
                                  (if (gx#free-identifier=? _L22009_ _L22006_)
                                      (not (gx#free-identifier=?
                                            _L22007_
                                            _L22009_))
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont2718727188_
                           _L22006_
                           _L22007_
                           _L22008_
                           _L22009_)
                          (___kont2718927190_)))))
                 (___match2728627287_
                  (lambda (_e2185821910_
                           _hd2185921913_
                           _tl2186021915_
                           _e2186121918_
                           _hd2186221921_
                           _tl2186321923_
                           _e2186421926_
                           _hd2186521929_
                           _tl2186621931_
                           _e2186721934_
                           _hd2186821937_
                           _tl2186921939_
                           _e2187021942_
                           _hd2187121945_
                           _tl2187221947_
                           _e2187321950_
                           _hd2187421953_
                           _tl2187521955_
                           _e2187621958_
                           _hd2187721961_
                           _tl2187821963_
                           _e2187921966_
                           _hd2188021969_
                           _tl2188121971_
                           _e2188221974_
                           _hd2188321977_
                           _tl2188421979_)
                    (if (gx#stx-pair? _tl2187821963_)
                        (let ((_e2188521982_ (gx#stx-e _tl2187821963_)))
                          (let ((_tl2188721987_ (##cdr _e2188521982_))
                                (_hd2188621985_ (##car _e2188521982_)))
                            (if (gx#stx-pair? _hd2188621985_)
                                (let ((_e2188821990_
                                       (gx#stx-e _hd2188621985_)))
                                  (let ((_tl2189021995_ (##cdr _e2188821990_))
                                        (_hd2188921993_ (##car _e2188821990_)))
                                    (if (gx#identifier? _hd2188921993_)
                                        (if (gx#stx-eq? '%#ref _hd2188921993_)
                                            (if (gx#stx-pair? _tl2189021995_)
                                                (let ((_e2189121998_
                                                       (gx#stx-e
                                                        _tl2189021995_)))
                                                  (let ((_tl2189322003_
                                                         (##cdr _e2189121998_))
                                                        (_hd2189222001_
                                                         (##car _e2189121998_)))
                                                    (if (gx#stx-null?
                                                         _tl2189322003_)
                                                        (if (gx#stx-null?
                                                             _tl2188721987_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2186321923_)
                        (___match2731427315_
                         _e2185821910_
                         _hd2185921913_
                         _tl2186021915_
                         _e2186121918_
                         _hd2186221921_
                         _tl2186321923_
                         _e2186421926_
                         _hd2186521929_
                         _tl2186621931_
                         _e2186721934_
                         _hd2186821937_
                         _tl2186921939_
                         _e2187021942_
                         _hd2187121945_
                         _tl2187221947_
                         _e2187321950_
                         _hd2187421953_
                         _tl2187521955_
                         _e2187621958_
                         _hd2187721961_
                         _tl2187821963_
                         _e2187921966_
                         _hd2188021969_
                         _tl2188121971_
                         _e2188221974_
                         _hd2188321977_
                         _tl2188421979_
                         _e2188521982_
                         _hd2188621985_
                         _tl2188721987_
                         _e2188821990_
                         _hd2188921993_
                         _tl2189021995_
                         _e2189121998_
                         _hd2189222001_
                         _tl2189322003_)
                        (___kont2718927190_))
                    (___kont2718927190_))
                (___kont2718927190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2718927190_))
                                            (___kont2718927190_))
                                        (___kont2718927190_))))
                                (___kont2718927190_))))
                        (___kont2718927190_))))
                 (___match2721627217_
                  (lambda (_e2179422050_
                           _hd2179522053_
                           _tl2179622055_
                           ___splice2718327184_
                           _target2179722058_
                           _tl2179922060_)
                    (letrec ((_loop2180022063_
                              (lambda (_hd2179822066_ _arg2180422068_)
                                (if (gx#stx-pair? _hd2179822066_)
                                    (let ((_e2180122071_
                                           (gx#stx-e _hd2179822066_)))
                                      (let ((_lp-tl2180322076_
                                             (##cdr _e2180122071_))
                                            (_lp-hd2180222074_
                                             (##car _e2180122071_)))
                                        (_loop2180022063_
                                         _lp-tl2180322076_
                                         (cons _lp-hd2180222074_
                                               _arg2180422068_))))
                                    (let ((_arg2180522079_
                                           (reverse _arg2180422068_)))
                                      (if (gx#stx-pair? _tl2179622055_)
                                          (let ((_e2180622082_
                                                 (gx#stx-e _tl2179622055_)))
                                            (let ((_tl2180822087_
                                                   (##cdr _e2180622082_))
                                                  (_hd2180722085_
                                                   (##car _e2180622082_)))
                                              (if (gx#stx-pair? _hd2180722085_)
                                                  (let ((_e2180922090_
                                                         (gx#stx-e
                                                          _hd2180722085_)))
                                                    (let ((_tl2181122095_
                                                           (##cdr _e2180922090_))
                                                          (_hd2181022093_
                                                           (##car _e2180922090_)))
                                                      (if (gx#identifier?
                                                           _hd2181022093_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2181022093_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2181122095_)
                          (let ((_e2181222098_ (gx#stx-e _tl2181122095_)))
                            (let ((_tl2181422103_ (##cdr _e2181222098_))
                                  (_hd2181322101_ (##car _e2181222098_)))
                              (if (gx#stx-pair? _hd2181322101_)
                                  (let ((_e2181522106_
                                         (gx#stx-e _hd2181322101_)))
                                    (let ((_tl2181722111_
                                           (##cdr _e2181522106_))
                                          (_hd2181622109_
                                           (##car _e2181522106_)))
                                      (if (gx#identifier? _hd2181622109_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2181622109_)
                                              (if (gx#stx-pair? _tl2181722111_)
                                                  (let ((_e2181822114_
                                                         (gx#stx-e
                                                          _tl2181722111_)))
                                                    (let ((_tl2182022119_
                                                           (##cdr _e2181822114_))
                                                          (_hd2181922117_
                                                           (##car _e2181822114_)))
                                                      (if (gx#stx-null?
                                                           _tl2182022119_)
                                                          (if (gx#stx-pair?
                                                               _tl2181422103_)
                                                              (let ((_e2182122122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2181422103_)))
                        (let ((_tl2182322127_ (##cdr _e2182122122_))
                              (_hd2182222125_ (##car _e2182122122_)))
                          (if (gx#stx-pair? _hd2182222125_)
                              (let ((_e2182422130_ (gx#stx-e _hd2182222125_)))
                                (let ((_tl2182622135_ (##cdr _e2182422130_))
                                      (_hd2182522133_ (##car _e2182422130_)))
                                  (if (gx#identifier? _hd2182522133_)
                                      (if (gx#stx-eq? '%#ref _hd2182522133_)
                                          (if (gx#stx-pair? _tl2182622135_)
                                              (let ((_e2182722138_
                                                     (gx#stx-e
                                                      _tl2182622135_)))
                                                (let ((_tl2182922143_
                                                       (##cdr _e2182722138_))
                                                      (_hd2182822141_
                                                       (##car _e2182722138_)))
                                                  (if (gx#stx-null?
                                                       _tl2182922143_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2182322127_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl2182322127_)
                            '1)
                      (let ((___splice2718527186_
                             (gx#syntax-split-splice _tl2182322127_ '1)))
                        (let ((_tl2183222148_
                               (##vector-ref ___splice2718527186_ '1))
                              (_target2183022146_
                               (##vector-ref ___splice2718527186_ '0)))
                          (if (gx#stx-pair? _tl2183222148_)
                              (let ((_e2183922151_ (gx#stx-e _tl2183222148_)))
                                (let ((_tl2184122156_ (##cdr _e2183922151_))
                                      (_hd2184022154_ (##car _e2183922151_)))
                                  (if (gx#stx-pair? _hd2184022154_)
                                      (let ((_e2184222159_
                                             (gx#stx-e _hd2184022154_)))
                                        (let ((_tl2184422164_
                                               (##cdr _e2184222159_))
                                              (_hd2184322162_
                                               (##car _e2184222159_)))
                                          (if (gx#identifier? _hd2184322162_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _hd2184322162_)
                                                  (if (gx#stx-pair?
                                                       _tl2184422164_)
                                                      (let ((_e2184522167_
                                                             (gx#stx-e
                                                              _tl2184422164_)))
                                                        (let ((_tl2184722172_
                                                               (##cdr _e2184522167_))
                                                              (_hd2184622170_
                                                               (##car _e2184522167_)))
                                                          (if (gx#stx-null?
                                                               _tl2184722172_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2184122156_)
                          (letrec ((_loop2183322175_
                                    (lambda (_hd2183122178_ _xarg2183722180_)
                                      (if (gx#stx-pair? _hd2183122178_)
                                          (let ((_e2183422183_
                                                 (gx#stx-e _hd2183122178_)))
                                            (let ((_lp-tl2183622188_
                                                   (##cdr _e2183422183_))
                                                  (_lp-hd2183522186_
                                                   (##car _e2183422183_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd2183522186_)
                                                  (let ((_e2184822191_
                                                         (gx#stx-e
                                                          _lp-hd2183522186_)))
                                                    (let ((_tl2185022196_
                                                           (##cdr _e2184822191_))
                                                          (_hd2184922194_
                                                           (##car _e2184822191_)))
                                                      (if (gx#identifier?
                                                           _hd2184922194_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2184922194_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2185022196_)
                          (let ((_e2185122199_ (gx#stx-e _tl2185022196_)))
                            (let ((_tl2185322204_ (##cdr _e2185122199_))
                                  (_hd2185222202_ (##car _e2185122199_)))
                              (if (gx#stx-null? _tl2185322204_)
                                  (_loop2183322175_
                                   _lp-tl2183622188_
                                   (cons _hd2185222202_ _xarg2183722180_))
                                  (___match2728627287_
                                   _e2179422050_
                                   _hd2179522053_
                                   _tl2179622055_
                                   _e2180622082_
                                   _hd2180722085_
                                   _tl2180822087_
                                   _e2180922090_
                                   _hd2181022093_
                                   _tl2181122095_
                                   _e2181222098_
                                   _hd2181322101_
                                   _tl2181422103_
                                   _e2181522106_
                                   _hd2181622109_
                                   _tl2181722111_
                                   _e2181822114_
                                   _hd2181922117_
                                   _tl2182022119_
                                   _e2182122122_
                                   _hd2182222125_
                                   _tl2182322127_
                                   _e2182422130_
                                   _hd2182522133_
                                   _tl2182622135_
                                   _e2182722138_
                                   _hd2182822141_
                                   _tl2182922143_))))
                          (___match2728627287_
                           _e2179422050_
                           _hd2179522053_
                           _tl2179622055_
                           _e2180622082_
                           _hd2180722085_
                           _tl2180822087_
                           _e2180922090_
                           _hd2181022093_
                           _tl2181122095_
                           _e2181222098_
                           _hd2181322101_
                           _tl2181422103_
                           _e2181522106_
                           _hd2181622109_
                           _tl2181722111_
                           _e2181822114_
                           _hd2181922117_
                           _tl2182022119_
                           _e2182122122_
                           _hd2182222125_
                           _tl2182322127_
                           _e2182422130_
                           _hd2182522133_
                           _tl2182622135_
                           _e2182722138_
                           _hd2182822141_
                           _tl2182922143_))
                      (___match2728627287_
                       _e2179422050_
                       _hd2179522053_
                       _tl2179622055_
                       _e2180622082_
                       _hd2180722085_
                       _tl2180822087_
                       _e2180922090_
                       _hd2181022093_
                       _tl2181122095_
                       _e2181222098_
                       _hd2181322101_
                       _tl2181422103_
                       _e2181522106_
                       _hd2181622109_
                       _tl2181722111_
                       _e2181822114_
                       _hd2181922117_
                       _tl2182022119_
                       _e2182122122_
                       _hd2182222125_
                       _tl2182322127_
                       _e2182422130_
                       _hd2182522133_
                       _tl2182622135_
                       _e2182722138_
                       _hd2182822141_
                       _tl2182922143_))
                  (___match2728627287_
                   _e2179422050_
                   _hd2179522053_
                   _tl2179622055_
                   _e2180622082_
                   _hd2180722085_
                   _tl2180822087_
                   _e2180922090_
                   _hd2181022093_
                   _tl2181122095_
                   _e2181222098_
                   _hd2181322101_
                   _tl2181422103_
                   _e2181522106_
                   _hd2181622109_
                   _tl2181722111_
                   _e2181822114_
                   _hd2181922117_
                   _tl2182022119_
                   _e2182122122_
                   _hd2182222125_
                   _tl2182322127_
                   _e2182422130_
                   _hd2182522133_
                   _tl2182622135_
                   _e2182722138_
                   _hd2182822141_
                   _tl2182922143_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2728627287_
                                                   _e2179422050_
                                                   _hd2179522053_
                                                   _tl2179622055_
                                                   _e2180622082_
                                                   _hd2180722085_
                                                   _tl2180822087_
                                                   _e2180922090_
                                                   _hd2181022093_
                                                   _tl2181122095_
                                                   _e2181222098_
                                                   _hd2181322101_
                                                   _tl2181422103_
                                                   _e2181522106_
                                                   _hd2181622109_
                                                   _tl2181722111_
                                                   _e2181822114_
                                                   _hd2181922117_
                                                   _tl2182022119_
                                                   _e2182122122_
                                                   _hd2182222125_
                                                   _tl2182322127_
                                                   _e2182422130_
                                                   _hd2182522133_
                                                   _tl2182622135_
                                                   _e2182722138_
                                                   _hd2182822141_
                                                   _tl2182922143_))))
                                          (let ((_xarg2183822207_
                                                 (reverse _xarg2183722180_)))
                                            (if (gx#stx-null? _tl2180822087_)
                                                (let ((_L22210_ _hd2184622170_)
                                                      (_L22211_
                                                       _xarg2183822207_)
                                                      (_L22212_ _hd2182822141_)
                                                      (_L22213_ _hd2181922117_)
                                                      (_L22214_ _tl2179922060_)
                                                      (_L22215_
                                                       _arg2180522079_))
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g2225822261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2225922263_)
                               (cons _g2225822261_ _g2225922263_))
                             '()
                             _L22215_)))
                  (if (gx#identifier? _L22214_)
                      (if (gxc#runtime-identifier=? _L22213_ 'apply)
                          (if (fx= (length (begin
                                             '#!void
                                             (foldr1 (lambda (_g2226522268_
                                                              _g2226622270_)
                                                       (cons _g2226522268_
                                                             _g2226622270_))
                                                     '()
                                                     _L22215_)))
                                   (length (begin
                                             '#!void
                                             (foldr1 (lambda (_g2227222275_
                                                              _g2227322277_)
                                                       (cons _g2227222275_
                                                             _g2227322277_))
                                                     '()
                                                     _L22211_))))
                              (if (andmap2 gx#free-identifier=?
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g2227922282_
                                                              _g2228022284_)
                                                       (cons _g2227922282_
                                                             _g2228022284_))
                                                     '()
                                                     _L22215_))
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g2228622289_
                                                              _g2228722291_)
                                                       (cons _g2228622289_
                                                             _g2228722291_))
                                                     '()
                                                     _L22211_)))
                                  (if (gx#free-identifier=? _L22214_ _L22210_)
                                      (not (find (lambda (_g2229322295_)
                                                   (gx#free-identifier=?
                                                    _g2229322295_
                                                    _L22212_))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g2229722300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2229822302_)
                     (cons _g2229722300_ _g2229822302_))
                   (cons _L22214_ '())
                   _L22215_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '#f)
                                  '#f)
                              '#f)
                          '#f)
                      '#f)
                  '#f)
              (___kont2718127182_
               _L22210_
               _L22211_
               _L22212_
               _L22213_
               _L22214_
               _L22215_)
              (___match2728627287_
               _e2179422050_
               _hd2179522053_
               _tl2179622055_
               _e2180622082_
               _hd2180722085_
               _tl2180822087_
               _e2180922090_
               _hd2181022093_
               _tl2181122095_
               _e2181222098_
               _hd2181322101_
               _tl2181422103_
               _e2181522106_
               _hd2181622109_
               _tl2181722111_
               _e2181822114_
               _hd2181922117_
               _tl2182022119_
               _e2182122122_
               _hd2182222125_
               _tl2182322127_
               _e2182422130_
               _hd2182522133_
               _tl2182622135_
               _e2182722138_
               _hd2182822141_
               _tl2182922143_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2728627287_
                                                 _e2179422050_
                                                 _hd2179522053_
                                                 _tl2179622055_
                                                 _e2180622082_
                                                 _hd2180722085_
                                                 _tl2180822087_
                                                 _e2180922090_
                                                 _hd2181022093_
                                                 _tl2181122095_
                                                 _e2181222098_
                                                 _hd2181322101_
                                                 _tl2181422103_
                                                 _e2181522106_
                                                 _hd2181622109_
                                                 _tl2181722111_
                                                 _e2181822114_
                                                 _hd2181922117_
                                                 _tl2182022119_
                                                 _e2182122122_
                                                 _hd2182222125_
                                                 _tl2182322127_
                                                 _e2182422130_
                                                 _hd2182522133_
                                                 _tl2182622135_
                                                 _e2182722138_
                                                 _hd2182822141_
                                                 _tl2182922143_)))))))
                            (_loop2183322175_ _target2183022146_ '()))
                          (___match2728627287_
                           _e2179422050_
                           _hd2179522053_
                           _tl2179622055_
                           _e2180622082_
                           _hd2180722085_
                           _tl2180822087_
                           _e2180922090_
                           _hd2181022093_
                           _tl2181122095_
                           _e2181222098_
                           _hd2181322101_
                           _tl2181422103_
                           _e2181522106_
                           _hd2181622109_
                           _tl2181722111_
                           _e2181822114_
                           _hd2181922117_
                           _tl2182022119_
                           _e2182122122_
                           _hd2182222125_
                           _tl2182322127_
                           _e2182422130_
                           _hd2182522133_
                           _tl2182622135_
                           _e2182722138_
                           _hd2182822141_
                           _tl2182922143_))
                      (___match2728627287_
                       _e2179422050_
                       _hd2179522053_
                       _tl2179622055_
                       _e2180622082_
                       _hd2180722085_
                       _tl2180822087_
                       _e2180922090_
                       _hd2181022093_
                       _tl2181122095_
                       _e2181222098_
                       _hd2181322101_
                       _tl2181422103_
                       _e2181522106_
                       _hd2181622109_
                       _tl2181722111_
                       _e2181822114_
                       _hd2181922117_
                       _tl2182022119_
                       _e2182122122_
                       _hd2182222125_
                       _tl2182322127_
                       _e2182422130_
                       _hd2182522133_
                       _tl2182622135_
                       _e2182722138_
                       _hd2182822141_
                       _tl2182922143_))))
              (___match2728627287_
               _e2179422050_
               _hd2179522053_
               _tl2179622055_
               _e2180622082_
               _hd2180722085_
               _tl2180822087_
               _e2180922090_
               _hd2181022093_
               _tl2181122095_
               _e2181222098_
               _hd2181322101_
               _tl2181422103_
               _e2181522106_
               _hd2181622109_
               _tl2181722111_
               _e2181822114_
               _hd2181922117_
               _tl2182022119_
               _e2182122122_
               _hd2182222125_
               _tl2182322127_
               _e2182422130_
               _hd2182522133_
               _tl2182622135_
               _e2182722138_
               _hd2182822141_
               _tl2182922143_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2728627287_
                                                   _e2179422050_
                                                   _hd2179522053_
                                                   _tl2179622055_
                                                   _e2180622082_
                                                   _hd2180722085_
                                                   _tl2180822087_
                                                   _e2180922090_
                                                   _hd2181022093_
                                                   _tl2181122095_
                                                   _e2181222098_
                                                   _hd2181322101_
                                                   _tl2181422103_
                                                   _e2181522106_
                                                   _hd2181622109_
                                                   _tl2181722111_
                                                   _e2181822114_
                                                   _hd2181922117_
                                                   _tl2182022119_
                                                   _e2182122122_
                                                   _hd2182222125_
                                                   _tl2182322127_
                                                   _e2182422130_
                                                   _hd2182522133_
                                                   _tl2182622135_
                                                   _e2182722138_
                                                   _hd2182822141_
                                                   _tl2182922143_))
                                              (___match2728627287_
                                               _e2179422050_
                                               _hd2179522053_
                                               _tl2179622055_
                                               _e2180622082_
                                               _hd2180722085_
                                               _tl2180822087_
                                               _e2180922090_
                                               _hd2181022093_
                                               _tl2181122095_
                                               _e2181222098_
                                               _hd2181322101_
                                               _tl2181422103_
                                               _e2181522106_
                                               _hd2181622109_
                                               _tl2181722111_
                                               _e2181822114_
                                               _hd2181922117_
                                               _tl2182022119_
                                               _e2182122122_
                                               _hd2182222125_
                                               _tl2182322127_
                                               _e2182422130_
                                               _hd2182522133_
                                               _tl2182622135_
                                               _e2182722138_
                                               _hd2182822141_
                                               _tl2182922143_))))
                                      (___match2728627287_
                                       _e2179422050_
                                       _hd2179522053_
                                       _tl2179622055_
                                       _e2180622082_
                                       _hd2180722085_
                                       _tl2180822087_
                                       _e2180922090_
                                       _hd2181022093_
                                       _tl2181122095_
                                       _e2181222098_
                                       _hd2181322101_
                                       _tl2181422103_
                                       _e2181522106_
                                       _hd2181622109_
                                       _tl2181722111_
                                       _e2181822114_
                                       _hd2181922117_
                                       _tl2182022119_
                                       _e2182122122_
                                       _hd2182222125_
                                       _tl2182322127_
                                       _e2182422130_
                                       _hd2182522133_
                                       _tl2182622135_
                                       _e2182722138_
                                       _hd2182822141_
                                       _tl2182922143_))))
                              (___match2728627287_
                               _e2179422050_
                               _hd2179522053_
                               _tl2179622055_
                               _e2180622082_
                               _hd2180722085_
                               _tl2180822087_
                               _e2180922090_
                               _hd2181022093_
                               _tl2181122095_
                               _e2181222098_
                               _hd2181322101_
                               _tl2181422103_
                               _e2181522106_
                               _hd2181622109_
                               _tl2181722111_
                               _e2181822114_
                               _hd2181922117_
                               _tl2182022119_
                               _e2182122122_
                               _hd2182222125_
                               _tl2182322127_
                               _e2182422130_
                               _hd2182522133_
                               _tl2182622135_
                               _e2182722138_
                               _hd2182822141_
                               _tl2182922143_))))
                      (___match2728627287_
                       _e2179422050_
                       _hd2179522053_
                       _tl2179622055_
                       _e2180622082_
                       _hd2180722085_
                       _tl2180822087_
                       _e2180922090_
                       _hd2181022093_
                       _tl2181122095_
                       _e2181222098_
                       _hd2181322101_
                       _tl2181422103_
                       _e2181522106_
                       _hd2181622109_
                       _tl2181722111_
                       _e2181822114_
                       _hd2181922117_
                       _tl2182022119_
                       _e2182122122_
                       _hd2182222125_
                       _tl2182322127_
                       _e2182422130_
                       _hd2182522133_
                       _tl2182622135_
                       _e2182722138_
                       _hd2182822141_
                       _tl2182922143_))
                  (___match2728627287_
                   _e2179422050_
                   _hd2179522053_
                   _tl2179622055_
                   _e2180622082_
                   _hd2180722085_
                   _tl2180822087_
                   _e2180922090_
                   _hd2181022093_
                   _tl2181122095_
                   _e2181222098_
                   _hd2181322101_
                   _tl2181422103_
                   _e2181522106_
                   _hd2181622109_
                   _tl2181722111_
                   _e2181822114_
                   _hd2181922117_
                   _tl2182022119_
                   _e2182122122_
                   _hd2182222125_
                   _tl2182322127_
                   _e2182422130_
                   _hd2182522133_
                   _tl2182622135_
                   _e2182722138_
                   _hd2182822141_
                   _tl2182922143_))
              (___kont2718927190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2718927190_))
                                          (___kont2718927190_))
                                      (___kont2718927190_))))
                              (___kont2718927190_))))
                      (___kont2718927190_))
                  (___kont2718927190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2718927190_))
                                              (___kont2718927190_))
                                          (___kont2718927190_))))
                                  (___kont2718927190_))))
                          (___kont2718927190_))
                      (___kont2718927190_))
                  (___kont2718927190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2718927190_))))
                                          (___kont2718927190_)))))))
                      (_loop2180022063_ _target2179722058_ '()))))
                 (___match2720427205_
                  (lambda (_e2174622310_
                           _hd2174722313_
                           _tl2174822315_
                           ___splice2717727178_
                           _target2174922318_
                           _tl2175122320_)
                    (letrec ((_loop2175222323_
                              (lambda (_hd2175022326_ _arg2175622328_)
                                (if (gx#stx-pair? _hd2175022326_)
                                    (let ((_e2175322331_
                                           (gx#stx-e _hd2175022326_)))
                                      (let ((_lp-tl2175522336_
                                             (##cdr _e2175322331_))
                                            (_lp-hd2175422334_
                                             (##car _e2175322331_)))
                                        (_loop2175222323_
                                         _lp-tl2175522336_
                                         (cons _lp-hd2175422334_
                                               _arg2175622328_))))
                                    (let ((_arg2175722339_
                                           (reverse _arg2175622328_)))
                                      (if (gx#stx-pair? _tl2174822315_)
                                          (let ((_e2175822342_
                                                 (gx#stx-e _tl2174822315_)))
                                            (let ((_tl2176022347_
                                                   (##cdr _e2175822342_))
                                                  (_hd2175922345_
                                                   (##car _e2175822342_)))
                                              (if (gx#stx-pair? _hd2175922345_)
                                                  (let ((_e2176122350_
                                                         (gx#stx-e
                                                          _hd2175922345_)))
                                                    (let ((_tl2176322355_
                                                           (##cdr _e2176122350_))
                                                          (_hd2176222353_
                                                           (##car _e2176122350_)))
                                                      (if (gx#identifier?
                                                           _hd2176222353_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2176222353_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2176322355_)
                          (let ((_e2176422358_ (gx#stx-e _tl2176322355_)))
                            (let ((_tl2176622363_ (##cdr _e2176422358_))
                                  (_hd2176522361_ (##car _e2176422358_)))
                              (if (gx#stx-pair? _hd2176522361_)
                                  (let ((_e2176722366_
                                         (gx#stx-e _hd2176522361_)))
                                    (let ((_tl2176922371_
                                           (##cdr _e2176722366_))
                                          (_hd2176822369_
                                           (##car _e2176722366_)))
                                      (if (gx#identifier? _hd2176822369_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2176822369_)
                                              (if (gx#stx-pair? _tl2176922371_)
                                                  (let ((_e2177022374_
                                                         (gx#stx-e
                                                          _tl2176922371_)))
                                                    (let ((_tl2177222379_
                                                           (##cdr _e2177022374_))
                                                          (_hd2177122377_
                                                           (##car _e2177022374_)))
                                                      (if (gx#stx-null?
                                                           _tl2177222379_)
                                                          (if (gx#stx-pair/null?
                                                               _tl2176622363_)
                                                              (let ((___splice2717927180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl2176622363_ '0)))
                        (let ((_tl2177522384_
                               (##vector-ref ___splice2717927180_ '1))
                              (_target2177322382_
                               (##vector-ref ___splice2717927180_ '0)))
                          (if (gx#stx-null? _tl2177522384_)
                              (letrec ((_loop2177622387_
                                        (lambda (_hd2177422390_
                                                 _xarg2178022392_)
                                          (if (gx#stx-pair? _hd2177422390_)
                                              (let ((_e2177722395_
                                                     (gx#stx-e
                                                      _hd2177422390_)))
                                                (let ((_lp-tl2177922400_
                                                       (##cdr _e2177722395_))
                                                      (_lp-hd2177822398_
                                                       (##car _e2177722395_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd2177822398_)
                                                      (let ((_e2178222403_
                                                             (gx#stx-e
                                                              _lp-hd2177822398_)))
                                                        (let ((_tl2178422408_
                                                               (##cdr _e2178222403_))
                                                              (_hd2178322406_
                                                               (##car _e2178222403_)))
                                                          (if (gx#identifier?
                                                               _hd2178322406_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2178322406_)
                          (if (gx#stx-pair? _tl2178422408_)
                              (let ((_e2178522411_ (gx#stx-e _tl2178422408_)))
                                (let ((_tl2178722416_ (##cdr _e2178522411_))
                                      (_hd2178622414_ (##car _e2178522411_)))
                                  (if (gx#stx-null? _tl2178722416_)
                                      (_loop2177622387_
                                       _lp-tl2177922400_
                                       (cons _hd2178622414_ _xarg2178022392_))
                                      (___match2721627217_
                                       _e2174622310_
                                       _hd2174722313_
                                       _tl2174822315_
                                       ___splice2717727178_
                                       _target2174922318_
                                       _tl2175122320_))))
                              (___match2721627217_
                               _e2174622310_
                               _hd2174722313_
                               _tl2174822315_
                               ___splice2717727178_
                               _target2174922318_
                               _tl2175122320_))
                          (___match2721627217_
                           _e2174622310_
                           _hd2174722313_
                           _tl2174822315_
                           ___splice2717727178_
                           _target2174922318_
                           _tl2175122320_))
                      (___match2721627217_
                       _e2174622310_
                       _hd2174722313_
                       _tl2174822315_
                       ___splice2717727178_
                       _target2174922318_
                       _tl2175122320_))))
              (___match2721627217_
               _e2174622310_
               _hd2174722313_
               _tl2174822315_
               ___splice2717727178_
               _target2174922318_
               _tl2175122320_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg2178122419_
                                                     (reverse _xarg2178022392_)))
                                                (if (gx#stx-null?
                                                     _tl2176022347_)
                                                    (let ((_L22422_
                                                           _xarg2178122419_)
                                                          (_L22423_
                                                           _hd2177122377_)
                                                          (_L22424_
                                                           _arg2175722339_))
                                                      (if (if (gx#identifier-list?
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr1 (lambda (_g2245222455_ _g2245322457_)
                                   (cons _g2245222455_ _g2245322457_))
                                 '()
                                 _L22424_)))
                      (if (fx= (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2245922462_
                                                          _g2246022464_)
                                                   (cons _g2245922462_
                                                         _g2246022464_))
                                                 '()
                                                 _L22424_)))
                               (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2246622469_
                                                          _g2246722471_)
                                                   (cons _g2246622469_
                                                         _g2246722471_))
                                                 '()
                                                 _L22422_))))
                          (if (andmap2 gx#free-identifier=?
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2247322476_
                                                          _g2247422478_)
                                                   (cons _g2247322476_
                                                         _g2247422478_))
                                                 '()
                                                 _L22424_))
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2248022483_
                                                          _g2248122485_)
                                                   (cons _g2248022483_
                                                         _g2248122485_))
                                                 '()
                                                 _L22422_)))
                              (not (find (lambda (_g2248722489_)
                                           (gx#free-identifier=?
                                            _g2248722489_
                                            _L22423_))
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g2249122494_
                                                            _g2249222496_)
                                                     (cons _g2249122494_
                                                           _g2249222496_))
                                                   '()
                                                   _L22424_))))
                              '#f)
                          '#f)
                      '#f)
                  (___kont2717527176_ _L22422_ _L22423_ _L22424_)
                  (___match2721627217_
                   _e2174622310_
                   _hd2174722313_
                   _tl2174822315_
                   ___splice2717727178_
                   _target2174922318_
                   _tl2175122320_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2721627217_
                                                     _e2174622310_
                                                     _hd2174722313_
                                                     _tl2174822315_
                                                     ___splice2717727178_
                                                     _target2174922318_
                                                     _tl2175122320_)))))))
                                (_loop2177622387_ _target2177322382_ '()))
                              (___match2721627217_
                               _e2174622310_
                               _hd2174722313_
                               _tl2174822315_
                               ___splice2717727178_
                               _target2174922318_
                               _tl2175122320_))))
                      (___match2721627217_
                       _e2174622310_
                       _hd2174722313_
                       _tl2174822315_
                       ___splice2717727178_
                       _target2174922318_
                       _tl2175122320_))
                  (___match2721627217_
                   _e2174622310_
                   _hd2174722313_
                   _tl2174822315_
                   ___splice2717727178_
                   _target2174922318_
                   _tl2175122320_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2721627217_
                                                   _e2174622310_
                                                   _hd2174722313_
                                                   _tl2174822315_
                                                   ___splice2717727178_
                                                   _target2174922318_
                                                   _tl2175122320_))
                                              (___match2721627217_
                                               _e2174622310_
                                               _hd2174722313_
                                               _tl2174822315_
                                               ___splice2717727178_
                                               _target2174922318_
                                               _tl2175122320_))
                                          (___match2721627217_
                                           _e2174622310_
                                           _hd2174722313_
                                           _tl2174822315_
                                           ___splice2717727178_
                                           _target2174922318_
                                           _tl2175122320_))))
                                  (___match2721627217_
                                   _e2174622310_
                                   _hd2174722313_
                                   _tl2174822315_
                                   ___splice2717727178_
                                   _target2174922318_
                                   _tl2175122320_))))
                          (___match2721627217_
                           _e2174622310_
                           _hd2174722313_
                           _tl2174822315_
                           ___splice2717727178_
                           _target2174922318_
                           _tl2175122320_))
                      (___match2721627217_
                       _e2174622310_
                       _hd2174722313_
                       _tl2174822315_
                       ___splice2717727178_
                       _target2174922318_
                       _tl2175122320_))
                  (___match2721627217_
                   _e2174622310_
                   _hd2174722313_
                   _tl2174822315_
                   ___splice2717727178_
                   _target2174922318_
                   _tl2175122320_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2721627217_
                                                   _e2174622310_
                                                   _hd2174722313_
                                                   _tl2174822315_
                                                   ___splice2717727178_
                                                   _target2174922318_
                                                   _tl2175122320_))))
                                          (___match2721627217_
                                           _e2174622310_
                                           _hd2174722313_
                                           _tl2174822315_
                                           ___splice2717727178_
                                           _target2174922318_
                                           _tl2175122320_)))))))
                      (_loop2175222323_ _target2174922318_ '())))))
            (if (gx#stx-pair? ___stx2717327174_)
                (let ((_e2174622310_ (gx#stx-e ___stx2717327174_)))
                  (let ((_tl2174822315_ (##cdr _e2174622310_))
                        (_hd2174722313_ (##car _e2174622310_)))
                    (if (gx#stx-pair/null? _hd2174722313_)
                        (let ((___splice2717727178_
                               (gx#syntax-split-splice _hd2174722313_ '0)))
                          (let ((_tl2175122320_
                                 (##vector-ref ___splice2717727178_ '1))
                                (_target2174922318_
                                 (##vector-ref ___splice2717727178_ '0)))
                            (if (gx#stx-null? _tl2175122320_)
                                (___match2720427205_
                                 _e2174622310_
                                 _hd2174722313_
                                 _tl2174822315_
                                 ___splice2717727178_
                                 _target2174922318_
                                 _tl2175122320_)
                                (___match2721627217_
                                 _e2174622310_
                                 _hd2174722313_
                                 _tl2174822315_
                                 ___splice2717727178_
                                 _target2174922318_
                                 _tl2175122320_))))
                        (if (gx#stx-pair? _tl2174822315_)
                            (let ((_e2186121918_ (gx#stx-e _tl2174822315_)))
                              (let ((_tl2186321923_ (##cdr _e2186121918_))
                                    (_hd2186221921_ (##car _e2186121918_)))
                                (if (gx#stx-pair? _hd2186221921_)
                                    (let ((_e2186421926_
                                           (gx#stx-e _hd2186221921_)))
                                      (let ((_tl2186621931_
                                             (##cdr _e2186421926_))
                                            (_hd2186521929_
                                             (##car _e2186421926_)))
                                        (if (gx#identifier? _hd2186521929_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2186521929_)
                                                (if (gx#stx-pair?
                                                     _tl2186621931_)
                                                    (let ((_e2186721934_
                                                           (gx#stx-e
                                                            _tl2186621931_)))
                                                      (let ((_tl2186921939_
                                                             (##cdr _e2186721934_))
                                                            (_hd2186821937_
                                                             (##car _e2186721934_)))
                                                        (if (gx#stx-pair?
                                                             _hd2186821937_)
                                                            (let ((_e2187021942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2186821937_)))
                      (let ((_tl2187221947_ (##cdr _e2187021942_))
                            (_hd2187121945_ (##car _e2187021942_)))
                        (if (gx#identifier? _hd2187121945_)
                            (if (gx#stx-eq? '%#ref _hd2187121945_)
                                (if (gx#stx-pair? _tl2187221947_)
                                    (let ((_e2187321950_
                                           (gx#stx-e _tl2187221947_)))
                                      (let ((_tl2187521955_
                                             (##cdr _e2187321950_))
                                            (_hd2187421953_
                                             (##car _e2187321950_)))
                                        (if (gx#stx-null? _tl2187521955_)
                                            (if (gx#stx-pair? _tl2186921939_)
                                                (let ((_e2187621958_
                                                       (gx#stx-e
                                                        _tl2186921939_)))
                                                  (let ((_tl2187821963_
                                                         (##cdr _e2187621958_))
                                                        (_hd2187721961_
                                                         (##car _e2187621958_)))
                                                    (if (gx#stx-pair?
                                                         _hd2187721961_)
                                                        (let ((_e2187921966_
                                                               (gx#stx-e
                                                                _hd2187721961_)))
                                                          (let ((_tl2188121971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2187921966_))
                        (_hd2188021969_ (##car _e2187921966_)))
                    (if (gx#identifier? _hd2188021969_)
                        (if (gx#stx-eq? '%#ref _hd2188021969_)
                            (if (gx#stx-pair? _tl2188121971_)
                                (let ((_e2188221974_
                                       (gx#stx-e _tl2188121971_)))
                                  (let ((_tl2188421979_ (##cdr _e2188221974_))
                                        (_hd2188321977_ (##car _e2188221974_)))
                                    (if (gx#stx-null? _tl2188421979_)
                                        (if (gx#stx-pair? _tl2187821963_)
                                            (let ((_e2188521982_
                                                   (gx#stx-e _tl2187821963_)))
                                              (let ((_tl2188721987_
                                                     (##cdr _e2188521982_))
                                                    (_hd2188621985_
                                                     (##car _e2188521982_)))
                                                (if (gx#stx-pair?
                                                     _hd2188621985_)
                                                    (let ((_e2188821990_
                                                           (gx#stx-e
                                                            _hd2188621985_)))
                                                      (let ((_tl2189021995_
                                                             (##cdr _e2188821990_))
                                                            (_hd2188921993_
                                                             (##car _e2188821990_)))
                                                        (if (gx#identifier?
                                                             _hd2188921993_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2188921993_)
                        (if (gx#stx-pair? _tl2189021995_)
                            (let ((_e2189121998_ (gx#stx-e _tl2189021995_)))
                              (let ((_tl2189322003_ (##cdr _e2189121998_))
                                    (_hd2189222001_ (##car _e2189121998_)))
                                (if (gx#stx-null? _tl2189322003_)
                                    (if (gx#stx-null? _tl2188721987_)
                                        (if (gx#stx-null? _tl2186321923_)
                                            (___match2731427315_
                                             _e2174622310_
                                             _hd2174722313_
                                             _tl2174822315_
                                             _e2186121918_
                                             _hd2186221921_
                                             _tl2186321923_
                                             _e2186421926_
                                             _hd2186521929_
                                             _tl2186621931_
                                             _e2186721934_
                                             _hd2186821937_
                                             _tl2186921939_
                                             _e2187021942_
                                             _hd2187121945_
                                             _tl2187221947_
                                             _e2187321950_
                                             _hd2187421953_
                                             _tl2187521955_
                                             _e2187621958_
                                             _hd2187721961_
                                             _tl2187821963_
                                             _e2187921966_
                                             _hd2188021969_
                                             _tl2188121971_
                                             _e2188221974_
                                             _hd2188321977_
                                             _tl2188421979_
                                             _e2188521982_
                                             _hd2188621985_
                                             _tl2188721987_
                                             _e2188821990_
                                             _hd2188921993_
                                             _tl2189021995_
                                             _e2189121998_
                                             _hd2189222001_
                                             _tl2189322003_)
                                            (___kont2718927190_))
                                        (___kont2718927190_))
                                    (___kont2718927190_))))
                            (___kont2718927190_))
                        (___kont2718927190_))
                    (___kont2718927190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2718927190_))))
                                            (___kont2718927190_))
                                        (___kont2718927190_))))
                                (___kont2718927190_))
                            (___kont2718927190_))
                        (___kont2718927190_))))
                (___kont2718927190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2718927190_))
                                            (___kont2718927190_))))
                                    (___kont2718927190_))
                                (___kont2718927190_))
                            (___kont2718927190_))))
                    (___kont2718927190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2718927190_))
                                                (___kont2718927190_))
                                            (___kont2718927190_))))
                                    (___kont2718927190_))))
                            (___kont2718927190_)))))
                (___kont2718927190_)))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form21204_)
      (let* ((___stx2731727318_ _form21204_)
             (_g2120821332_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2731727318_))))
        (let ((___kont2731927320_
               (lambda (_L21702_ _L21703_ _L21704_)
                 (gxc#identifier-symbol _L21703_)))
              (___kont2732527326_
               (lambda (_L21550_ _L21551_ _L21552_ _L21553_)
                 (gxc#identifier-symbol _L21550_)))
              (___kont2732927330_
               (lambda (_L21417_ _L21418_ _L21419_)
                 (gxc#identifier-symbol _L21417_))))
          (let* ((___match2742627427_
                  (lambda (_e2129821337_
                           _hd2129921340_
                           _tl2130021342_
                           _e2130121345_
                           _hd2130221348_
                           _tl2130321350_
                           _e2130421353_
                           _hd2130521356_
                           _tl2130621358_
                           _e2130721361_
                           _hd2130821364_
                           _tl2130921366_
                           _e2131021369_
                           _hd2131121372_
                           _tl2131221374_
                           _e2131321377_
                           _hd2131421380_
                           _tl2131521382_
                           _e2131621385_
                           _hd2131721388_
                           _tl2131821390_
                           _e2131921393_
                           _hd2132021396_
                           _tl2132121398_
                           _e2132221401_
                           _hd2132321404_
                           _tl2132421406_)
                    (if (gx#stx-pair? _tl2131821390_)
                        (let ((_e2132521409_ (gx#stx-e _tl2131821390_)))
                          (let ((_tl2132721414_ (##cdr _e2132521409_))
                                (_hd2132621412_ (##car _e2132521409_)))
                            (if (gx#stx-null? _tl2132721414_)
                                (if (gx#stx-null? _tl2130321350_)
                                    (___kont2732927330_
                                     _hd2132321404_
                                     _hd2131421380_
                                     _hd2129921340_)
                                    (_g2120821332_))
                                (_g2120821332_))))
                        (_g2120821332_))))
                 (___match2735627357_
                  (lambda (_e2125921454_
                           _hd2126021457_
                           _tl2126121459_
                           ___splice2732727328_
                           _target2126221462_
                           _tl2126421464_)
                    (letrec ((_loop2126521467_
                              (lambda (_hd2126321470_ _arg2126921472_)
                                (if (gx#stx-pair? _hd2126321470_)
                                    (let ((_e2126621475_
                                           (gx#stx-e _hd2126321470_)))
                                      (let ((_lp-tl2126821480_
                                             (##cdr _e2126621475_))
                                            (_lp-hd2126721478_
                                             (##car _e2126621475_)))
                                        (_loop2126521467_
                                         _lp-tl2126821480_
                                         (cons _lp-hd2126721478_
                                               _arg2126921472_))))
                                    (let ((_arg2127021483_
                                           (reverse _arg2126921472_)))
                                      (if (gx#stx-pair? _tl2126121459_)
                                          (let ((_e2127121486_
                                                 (gx#stx-e _tl2126121459_)))
                                            (let ((_tl2127321491_
                                                   (##cdr _e2127121486_))
                                                  (_hd2127221489_
                                                   (##car _e2127121486_)))
                                              (if (gx#stx-pair? _hd2127221489_)
                                                  (let ((_e2127421494_
                                                         (gx#stx-e
                                                          _hd2127221489_)))
                                                    (let ((_tl2127621499_
                                                           (##cdr _e2127421494_))
                                                          (_hd2127521497_
                                                           (##car _e2127421494_)))
                                                      (if (gx#identifier?
                                                           _hd2127521497_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2127521497_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2127621499_)
                          (let ((_e2127721502_ (gx#stx-e _tl2127621499_)))
                            (let ((_tl2127921507_ (##cdr _e2127721502_))
                                  (_hd2127821505_ (##car _e2127721502_)))
                              (if (gx#stx-pair? _hd2127821505_)
                                  (let ((_e2128021510_
                                         (gx#stx-e _hd2127821505_)))
                                    (let ((_tl2128221515_
                                           (##cdr _e2128021510_))
                                          (_hd2128121513_
                                           (##car _e2128021510_)))
                                      (if (gx#identifier? _hd2128121513_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2128121513_)
                                              (if (gx#stx-pair? _tl2128221515_)
                                                  (let ((_e2128321518_
                                                         (gx#stx-e
                                                          _tl2128221515_)))
                                                    (let ((_tl2128521523_
                                                           (##cdr _e2128321518_))
                                                          (_hd2128421521_
                                                           (##car _e2128321518_)))
                                                      (if (gx#stx-null?
                                                           _tl2128521523_)
                                                          (if (gx#stx-pair?
                                                               _tl2127921507_)
                                                              (let ((_e2128621526_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2127921507_)))
                        (let ((_tl2128821531_ (##cdr _e2128621526_))
                              (_hd2128721529_ (##car _e2128621526_)))
                          (if (gx#stx-pair? _hd2128721529_)
                              (let ((_e2128921534_ (gx#stx-e _hd2128721529_)))
                                (let ((_tl2129121539_ (##cdr _e2128921534_))
                                      (_hd2129021537_ (##car _e2128921534_)))
                                  (if (gx#identifier? _hd2129021537_)
                                      (if (gx#stx-eq? '%#ref _hd2129021537_)
                                          (if (gx#stx-pair? _tl2129121539_)
                                              (let ((_e2129221542_
                                                     (gx#stx-e
                                                      _tl2129121539_)))
                                                (let ((_tl2129421547_
                                                       (##cdr _e2129221542_))
                                                      (_hd2129321545_
                                                       (##car _e2129221542_)))
                                                  (if (gx#stx-null?
                                                       _tl2129421547_)
                                                      (if (gx#stx-null?
                                                           _tl2127321491_)
                                                          (___kont2732527326_
                                                           _hd2129321545_
                                                           _hd2128421521_
                                                           _tl2126421464_
                                                           _arg2127021483_)
                                                          (___match2742627427_
                                                           _e2125921454_
                                                           _hd2126021457_
                                                           _tl2126121459_
                                                           _e2127121486_
                                                           _hd2127221489_
                                                           _tl2127321491_
                                                           _e2127421494_
                                                           _hd2127521497_
                                                           _tl2127621499_
                                                           _e2127721502_
                                                           _hd2127821505_
                                                           _tl2127921507_
                                                           _e2128021510_
                                                           _hd2128121513_
                                                           _tl2128221515_
                                                           _e2128321518_
                                                           _hd2128421521_
                                                           _tl2128521523_
                                                           _e2128621526_
                                                           _hd2128721529_
                                                           _tl2128821531_
                                                           _e2128921534_
                                                           _hd2129021537_
                                                           _tl2129121539_
                                                           _e2129221542_
                                                           _hd2129321545_
                                                           _tl2129421547_))
                                                      (_g2120821332_))))
                                              (_g2120821332_))
                                          (_g2120821332_))
                                      (_g2120821332_))))
                              (_g2120821332_))))
                      (_g2120821332_))
                  (_g2120821332_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2120821332_))
                                              (_g2120821332_))
                                          (_g2120821332_))))
                                  (_g2120821332_))))
                          (_g2120821332_))
                      (_g2120821332_))
                  (_g2120821332_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2120821332_))))
                                          (_g2120821332_)))))))
                      (_loop2126521467_ _target2126221462_ '()))))
                 (___match2734427345_
                  (lambda (_e2121321590_
                           _hd2121421593_
                           _tl2121521595_
                           ___splice2732127322_
                           _target2121621598_
                           _tl2121821600_)
                    (letrec ((_loop2121921603_
                              (lambda (_hd2121721606_ _arg2122321608_)
                                (if (gx#stx-pair? _hd2121721606_)
                                    (let ((_e2122021611_
                                           (gx#stx-e _hd2121721606_)))
                                      (let ((_lp-tl2122221616_
                                             (##cdr _e2122021611_))
                                            (_lp-hd2122121614_
                                             (##car _e2122021611_)))
                                        (_loop2121921603_
                                         _lp-tl2122221616_
                                         (cons _lp-hd2122121614_
                                               _arg2122321608_))))
                                    (let ((_arg2122421619_
                                           (reverse _arg2122321608_)))
                                      (if (gx#stx-pair? _tl2121521595_)
                                          (let ((_e2122521622_
                                                 (gx#stx-e _tl2121521595_)))
                                            (let ((_tl2122721627_
                                                   (##cdr _e2122521622_))
                                                  (_hd2122621625_
                                                   (##car _e2122521622_)))
                                              (if (gx#stx-pair? _hd2122621625_)
                                                  (let ((_e2122821630_
                                                         (gx#stx-e
                                                          _hd2122621625_)))
                                                    (let ((_tl2123021635_
                                                           (##cdr _e2122821630_))
                                                          (_hd2122921633_
                                                           (##car _e2122821630_)))
                                                      (if (gx#identifier?
                                                           _hd2122921633_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2122921633_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2123021635_)
                          (let ((_e2123121638_ (gx#stx-e _tl2123021635_)))
                            (let ((_tl2123321643_ (##cdr _e2123121638_))
                                  (_hd2123221641_ (##car _e2123121638_)))
                              (if (gx#stx-pair? _hd2123221641_)
                                  (let ((_e2123421646_
                                         (gx#stx-e _hd2123221641_)))
                                    (let ((_tl2123621651_
                                           (##cdr _e2123421646_))
                                          (_hd2123521649_
                                           (##car _e2123421646_)))
                                      (if (gx#identifier? _hd2123521649_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2123521649_)
                                              (if (gx#stx-pair? _tl2123621651_)
                                                  (let ((_e2123721654_
                                                         (gx#stx-e
                                                          _tl2123621651_)))
                                                    (let ((_tl2123921659_
                                                           (##cdr _e2123721654_))
                                                          (_hd2123821657_
                                                           (##car _e2123721654_)))
                                                      (if (gx#stx-null?
                                                           _tl2123921659_)
                                                          (if (gx#stx-pair/null?
                                                               _tl2123321643_)
                                                              (let ((___splice2732327324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl2123321643_ '0)))
                        (let ((_tl2124221664_
                               (##vector-ref ___splice2732327324_ '1))
                              (_target2124021662_
                               (##vector-ref ___splice2732327324_ '0)))
                          (if (gx#stx-null? _tl2124221664_)
                              (letrec ((_loop2124321667_
                                        (lambda (_hd2124121670_
                                                 _xarg2124721672_)
                                          (if (gx#stx-pair? _hd2124121670_)
                                              (let ((_e2124421675_
                                                     (gx#stx-e
                                                      _hd2124121670_)))
                                                (let ((_lp-tl2124621680_
                                                       (##cdr _e2124421675_))
                                                      (_lp-hd2124521678_
                                                       (##car _e2124421675_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd2124521678_)
                                                      (let ((_e2124921683_
                                                             (gx#stx-e
                                                              _lp-hd2124521678_)))
                                                        (let ((_tl2125121688_
                                                               (##cdr _e2124921683_))
                                                              (_hd2125021686_
                                                               (##car _e2124921683_)))
                                                          (if (gx#identifier?
                                                               _hd2125021686_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2125021686_)
                          (if (gx#stx-pair? _tl2125121688_)
                              (let ((_e2125221691_ (gx#stx-e _tl2125121688_)))
                                (let ((_tl2125421696_ (##cdr _e2125221691_))
                                      (_hd2125321694_ (##car _e2125221691_)))
                                  (if (gx#stx-null? _tl2125421696_)
                                      (_loop2124321667_
                                       _lp-tl2124621680_
                                       (cons _hd2125321694_ _xarg2124721672_))
                                      (___match2735627357_
                                       _e2121321590_
                                       _hd2121421593_
                                       _tl2121521595_
                                       ___splice2732127322_
                                       _target2121621598_
                                       _tl2121821600_))))
                              (___match2735627357_
                               _e2121321590_
                               _hd2121421593_
                               _tl2121521595_
                               ___splice2732127322_
                               _target2121621598_
                               _tl2121821600_))
                          (___match2735627357_
                           _e2121321590_
                           _hd2121421593_
                           _tl2121521595_
                           ___splice2732127322_
                           _target2121621598_
                           _tl2121821600_))
                      (___match2735627357_
                       _e2121321590_
                       _hd2121421593_
                       _tl2121521595_
                       ___splice2732127322_
                       _target2121621598_
                       _tl2121821600_))))
              (___match2735627357_
               _e2121321590_
               _hd2121421593_
               _tl2121521595_
               ___splice2732127322_
               _target2121621598_
               _tl2121821600_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg2124821699_
                                                     (reverse _xarg2124721672_)))
                                                (if (gx#stx-null?
                                                     _tl2122721627_)
                                                    (___kont2731927320_
                                                     _xarg2124821699_
                                                     _hd2123821657_
                                                     _arg2122421619_)
                                                    (___match2735627357_
                                                     _e2121321590_
                                                     _hd2121421593_
                                                     _tl2121521595_
                                                     ___splice2732127322_
                                                     _target2121621598_
                                                     _tl2121821600_)))))))
                                (_loop2124321667_ _target2124021662_ '()))
                              (___match2735627357_
                               _e2121321590_
                               _hd2121421593_
                               _tl2121521595_
                               ___splice2732127322_
                               _target2121621598_
                               _tl2121821600_))))
                      (___match2735627357_
                       _e2121321590_
                       _hd2121421593_
                       _tl2121521595_
                       ___splice2732127322_
                       _target2121621598_
                       _tl2121821600_))
                  (___match2735627357_
                   _e2121321590_
                   _hd2121421593_
                   _tl2121521595_
                   ___splice2732127322_
                   _target2121621598_
                   _tl2121821600_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2735627357_
                                                   _e2121321590_
                                                   _hd2121421593_
                                                   _tl2121521595_
                                                   ___splice2732127322_
                                                   _target2121621598_
                                                   _tl2121821600_))
                                              (___match2735627357_
                                               _e2121321590_
                                               _hd2121421593_
                                               _tl2121521595_
                                               ___splice2732127322_
                                               _target2121621598_
                                               _tl2121821600_))
                                          (___match2735627357_
                                           _e2121321590_
                                           _hd2121421593_
                                           _tl2121521595_
                                           ___splice2732127322_
                                           _target2121621598_
                                           _tl2121821600_))))
                                  (___match2735627357_
                                   _e2121321590_
                                   _hd2121421593_
                                   _tl2121521595_
                                   ___splice2732127322_
                                   _target2121621598_
                                   _tl2121821600_))))
                          (___match2735627357_
                           _e2121321590_
                           _hd2121421593_
                           _tl2121521595_
                           ___splice2732127322_
                           _target2121621598_
                           _tl2121821600_))
                      (___match2735627357_
                       _e2121321590_
                       _hd2121421593_
                       _tl2121521595_
                       ___splice2732127322_
                       _target2121621598_
                       _tl2121821600_))
                  (___match2735627357_
                   _e2121321590_
                   _hd2121421593_
                   _tl2121521595_
                   ___splice2732127322_
                   _target2121621598_
                   _tl2121821600_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2735627357_
                                                   _e2121321590_
                                                   _hd2121421593_
                                                   _tl2121521595_
                                                   ___splice2732127322_
                                                   _target2121621598_
                                                   _tl2121821600_))))
                                          (___match2735627357_
                                           _e2121321590_
                                           _hd2121421593_
                                           _tl2121521595_
                                           ___splice2732127322_
                                           _target2121621598_
                                           _tl2121821600_)))))))
                      (_loop2121921603_ _target2121621598_ '())))))
            (if (gx#stx-pair? ___stx2731727318_)
                (let ((_e2121321590_ (gx#stx-e ___stx2731727318_)))
                  (let ((_tl2121521595_ (##cdr _e2121321590_))
                        (_hd2121421593_ (##car _e2121321590_)))
                    (if (gx#stx-pair/null? _hd2121421593_)
                        (let ((___splice2732127322_
                               (gx#syntax-split-splice _hd2121421593_ '0)))
                          (let ((_tl2121821600_
                                 (##vector-ref ___splice2732127322_ '1))
                                (_target2121621598_
                                 (##vector-ref ___splice2732127322_ '0)))
                            (if (gx#stx-null? _tl2121821600_)
                                (___match2734427345_
                                 _e2121321590_
                                 _hd2121421593_
                                 _tl2121521595_
                                 ___splice2732127322_
                                 _target2121621598_
                                 _tl2121821600_)
                                (___match2735627357_
                                 _e2121321590_
                                 _hd2121421593_
                                 _tl2121521595_
                                 ___splice2732127322_
                                 _target2121621598_
                                 _tl2121821600_))))
                        (if (gx#stx-pair? _tl2121521595_)
                            (let ((_e2130121345_ (gx#stx-e _tl2121521595_)))
                              (let ((_tl2130321350_ (##cdr _e2130121345_))
                                    (_hd2130221348_ (##car _e2130121345_)))
                                (if (gx#stx-pair? _hd2130221348_)
                                    (let ((_e2130421353_
                                           (gx#stx-e _hd2130221348_)))
                                      (let ((_tl2130621358_
                                             (##cdr _e2130421353_))
                                            (_hd2130521356_
                                             (##car _e2130421353_)))
                                        (if (gx#identifier? _hd2130521356_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2130521356_)
                                                (if (gx#stx-pair?
                                                     _tl2130621358_)
                                                    (let ((_e2130721361_
                                                           (gx#stx-e
                                                            _tl2130621358_)))
                                                      (let ((_tl2130921366_
                                                             (##cdr _e2130721361_))
                                                            (_hd2130821364_
                                                             (##car _e2130721361_)))
                                                        (if (gx#stx-pair?
                                                             _hd2130821364_)
                                                            (let ((_e2131021369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2130821364_)))
                      (let ((_tl2131221374_ (##cdr _e2131021369_))
                            (_hd2131121372_ (##car _e2131021369_)))
                        (if (gx#identifier? _hd2131121372_)
                            (if (gx#stx-eq? '%#ref _hd2131121372_)
                                (if (gx#stx-pair? _tl2131221374_)
                                    (let ((_e2131321377_
                                           (gx#stx-e _tl2131221374_)))
                                      (let ((_tl2131521382_
                                             (##cdr _e2131321377_))
                                            (_hd2131421380_
                                             (##car _e2131321377_)))
                                        (if (gx#stx-null? _tl2131521382_)
                                            (if (gx#stx-pair? _tl2130921366_)
                                                (let ((_e2131621385_
                                                       (gx#stx-e
                                                        _tl2130921366_)))
                                                  (let ((_tl2131821390_
                                                         (##cdr _e2131621385_))
                                                        (_hd2131721388_
                                                         (##car _e2131621385_)))
                                                    (if (gx#stx-pair?
                                                         _hd2131721388_)
                                                        (let ((_e2131921393_
                                                               (gx#stx-e
                                                                _hd2131721388_)))
                                                          (let ((_tl2132121398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2131921393_))
                        (_hd2132021396_ (##car _e2131921393_)))
                    (if (gx#identifier? _hd2132021396_)
                        (if (gx#stx-eq? '%#ref _hd2132021396_)
                            (if (gx#stx-pair? _tl2132121398_)
                                (let ((_e2132221401_
                                       (gx#stx-e _tl2132121398_)))
                                  (let ((_tl2132421406_ (##cdr _e2132221401_))
                                        (_hd2132321404_ (##car _e2132221401_)))
                                    (if (gx#stx-null? _tl2132421406_)
                                        (if (gx#stx-pair? _tl2131821390_)
                                            (let ((_e2132521409_
                                                   (gx#stx-e _tl2131821390_)))
                                              (let ((_tl2132721414_
                                                     (##cdr _e2132521409_))
                                                    (_hd2132621412_
                                                     (##car _e2132521409_)))
                                                (if (gx#stx-null?
                                                     _tl2132721414_)
                                                    (if (gx#stx-null?
                                                         _tl2130321350_)
                                                        (___kont2732927330_
                                                         _hd2132321404_
                                                         _hd2131421380_
                                                         _hd2121421593_)
                                                        (_g2120821332_))
                                                    (_g2120821332_))))
                                            (_g2120821332_))
                                        (_g2120821332_))))
                                (_g2120821332_))
                            (_g2120821332_))
                        (_g2120821332_))))
                (_g2120821332_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2120821332_))
                                            (_g2120821332_))))
                                    (_g2120821332_))
                                (_g2120821332_))
                            (_g2120821332_))))
                    (_g2120821332_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2120821332_))
                                                (_g2120821332_))
                                            (_g2120821332_))))
                                    (_g2120821332_))))
                            (_g2120821332_)))))
                (_g2120821332_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form21008_)
      (let* ((_g2101021024_
              (lambda (_g2101121021_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2101121021_)))
             (_g2100921201_
              (lambda (_g2101121027_)
                (if (gx#stx-pair? _g2101121027_)
                    (let ((_e2101421029_ (gx#stx-e _g2101121027_)))
                      (let ((_hd2101521032_ (##car _e2101421029_))
                            (_tl2101621034_ (##cdr _e2101421029_)))
                        (if (gx#stx-pair? _tl2101621034_)
                            (let ((_e2101721037_ (gx#stx-e _tl2101621034_)))
                              (let ((_hd2101821040_ (##car _e2101721037_))
                                    (_tl2101921042_ (##cdr _e2101721037_)))
                                (if (gx#stx-null? _tl2101921042_)
                                    ((lambda (_L21045_ _L21046_)
                                       (let* ((___stx2743927440_ _L21046_)
                                              (_g2106121089_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  ___stx2743927440_))))
                                         (let ((___kont2744127442_
                                                (lambda (_L21180_)
                                                  (length (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g2119021193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2119121195_)
                              (cons _g2119021193_ _g2119121195_))
                            '()
                            _L21180_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2744527446_
                                                (lambda (_L21131_ _L21132_)
                                                  (cons (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2114321146_ _g2114421148_)
                                    (cons _g2114321146_ _g2114421148_))
                                  '()
                                  _L21132_)))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2744927450_
                                                (lambda (_L21094_)
                                                  (cons '0 '()))))
                                           (let* ((___match2746427465_
                                                   (lambda (___splice2744727448_
                                                            _target2107521107_
                                                            _tl2107721109_)
                                                     (letrec ((_loop2107821112_
                                                               (lambda (_hd2107621115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _arg2108221117_)
                         (if (gx#stx-pair? _hd2107621115_)
                             (let ((_e2107921120_ (gx#stx-e _hd2107621115_)))
                               (let ((_lp-tl2108121125_ (##cdr _e2107921120_))
                                     (_lp-hd2108021123_ (##car _e2107921120_)))
                                 (_loop2107821112_
                                  _lp-tl2108121125_
                                  (cons _lp-hd2108021123_ _arg2108221117_))))
                             (let ((_arg2108321128_ (reverse _arg2108221117_)))
                               (___kont2744527446_
                                _tl2107721109_
                                _arg2108321128_))))))
               (_loop2107821112_ _target2107521107_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2745827459_
                                                   (lambda (___splice2744327444_
                                                            _target2106421156_
                                                            _tl2106621158_)
                                                     (letrec ((_loop2106721161_
                                                               (lambda (_hd2106521164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _arg2107121166_)
                         (if (gx#stx-pair? _hd2106521164_)
                             (let ((_e2106821169_ (gx#stx-e _hd2106521164_)))
                               (let ((_lp-tl2107021174_ (##cdr _e2106821169_))
                                     (_lp-hd2106921172_ (##car _e2106821169_)))
                                 (_loop2106721161_
                                  _lp-tl2107021174_
                                  (cons _lp-hd2106921172_ _arg2107121166_))))
                             (let ((_arg2107221177_ (reverse _arg2107121166_)))
                               (___kont2744127442_ _arg2107221177_))))))
               (_loop2106721161_ _target2106421156_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  ___stx2743927440_)
                                                 (let ((___splice2744327444_
                                                        (gx#syntax-split-splice
                                                         ___stx2743927440_
                                                         '0)))
                                                   (let ((_tl2106621158_
                                                          (##vector-ref
                                                           ___splice2744327444_
                                                           '1))
                                                         (_target2106421156_
                                                          (##vector-ref
                                                           ___splice2744327444_
                                                           '0)))
                                                     (if (gx#stx-null?
                                                          _tl2106621158_)
                                                         (___match2745827459_
                                                          ___splice2744327444_
                                                          _target2106421156_
                                                          _tl2106621158_)
                                                         (___match2746427465_
                                                          ___splice2744327444_
                                                          _target2106421156_
                                                          _tl2106621158_))))
                                                 (___kont2744927450_
                                                  ___stx2743927440_))))))
                                     _hd2101821040_
                                     _hd2101521032_)
                                    (_g2101021024_ _g2101121027_))))
                            (_g2101021024_ _g2101121027_))))
                    (_g2101021024_ _g2101121027_)))))
        (_g2100921201_ _form21008_))))
  (define gxc#lambda-expr?
    (lambda (_expr20961_)
      (let* ((___stx2746727468_ _expr20961_)
             (_g2096420974_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2746727468_))))
        (let ((___kont2746927470_ (lambda (_L20994_) '#t))
              (___kont2747127472_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2746727468_)
              (let ((_e2096720986_ (gx#stx-e ___stx2746727468_)))
                (let ((_tl2096920991_ (##cdr _e2096720986_))
                      (_hd2096820989_ (##car _e2096720986_)))
                  (if (gx#identifier? _hd2096820989_)
                      (if (gx#stx-eq? '%#lambda _hd2096820989_)
                          (___kont2746927470_ _tl2096920991_)
                          (___kont2747127472_))
                      (___kont2747127472_))))
              (___kont2747127472_))))))
  (define gxc#case-lambda-expr?
    (lambda (_expr20914_)
      (let* ((___stx2748527486_ _expr20914_)
             (_g2091720927_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2748527486_))))
        (let ((___kont2748727488_ (lambda (_L20947_) '#t))
              (___kont2748927490_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2748527486_)
              (let ((_e2092020939_ (gx#stx-e ___stx2748527486_)))
                (let ((_tl2092220944_ (##cdr _e2092020939_))
                      (_hd2092120942_ (##car _e2092020939_)))
                  (if (gx#identifier? _hd2092120942_)
                      (if (gx#stx-eq? '%#case-lambda _hd2092120942_)
                          (___kont2748727488_ _tl2092220944_)
                          (___kont2748927490_))
                      (___kont2748927490_))))
              (___kont2748927490_))))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr20783_)
      (let* ((___stx2750327504_ _expr20783_)
             (_g2078620816_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2750327504_))))
        (let ((___kont2750527506_
               (lambda (_L20884_ _L20885_ _L20886_)
                 (if (gx#identifier? _L20886_)
                     (if (gxc#lambda-expr? _L20885_)
                         (gxc#case-lambda-expr? _L20884_)
                         '#f)
                     '#f)))
              (___kont2750727508_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2750327504_)
              (let ((_e2079120828_ (gx#stx-e ___stx2750327504_)))
                (let ((_tl2079320833_ (##cdr _e2079120828_))
                      (_hd2079220831_ (##car _e2079120828_)))
                  (if (gx#identifier? _hd2079220831_)
                      (if (gx#stx-eq? '%#let-values _hd2079220831_)
                          (if (gx#stx-pair? _tl2079320833_)
                              (let ((_e2079420836_ (gx#stx-e _tl2079320833_)))
                                (let ((_tl2079620841_ (##cdr _e2079420836_))
                                      (_hd2079520839_ (##car _e2079420836_)))
                                  (if (gx#stx-pair? _hd2079520839_)
                                      (let ((_e2079720844_
                                             (gx#stx-e _hd2079520839_)))
                                        (let ((_tl2079920849_
                                               (##cdr _e2079720844_))
                                              (_hd2079820847_
                                               (##car _e2079720844_)))
                                          (if (gx#stx-pair? _hd2079820847_)
                                              (let ((_e2080020852_
                                                     (gx#stx-e
                                                      _hd2079820847_)))
                                                (let ((_tl2080220857_
                                                       (##cdr _e2080020852_))
                                                      (_hd2080120855_
                                                       (##car _e2080020852_)))
                                                  (if (gx#stx-pair?
                                                       _hd2080120855_)
                                                      (let ((_e2080320860_
                                                             (gx#stx-e
                                                              _hd2080120855_)))
                                                        (let ((_tl2080520865_
                                                               (##cdr _e2080320860_))
                                                              (_hd2080420863_
                                                               (##car _e2080320860_)))
                                                          (if (gx#stx-null?
                                                               _tl2080520865_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2080220857_)
                          (let ((_e2080620868_ (gx#stx-e _tl2080220857_)))
                            (let ((_tl2080820873_ (##cdr _e2080620868_))
                                  (_hd2080720871_ (##car _e2080620868_)))
                              (if (gx#stx-null? _tl2080820873_)
                                  (if (gx#stx-null? _tl2079920849_)
                                      (if (gx#stx-pair? _tl2079620841_)
                                          (let ((_e2080920876_
                                                 (gx#stx-e _tl2079620841_)))
                                            (let ((_tl2081120881_
                                                   (##cdr _e2080920876_))
                                                  (_hd2081020879_
                                                   (##car _e2080920876_)))
                                              (if (gx#stx-null? _tl2081120881_)
                                                  (___kont2750527506_
                                                   _hd2081020879_
                                                   _hd2080720871_
                                                   _hd2080420863_)
                                                  (___kont2750727508_))))
                                          (___kont2750727508_))
                                      (___kont2750727508_))
                                  (___kont2750727508_))))
                          (___kont2750727508_))
                      (___kont2750727508_))))
              (___kont2750727508_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2750727508_))))
                                      (___kont2750727508_))))
                              (___kont2750727508_))
                          (___kont2750727508_))
                      (___kont2750727508_))))
              (___kont2750727508_))))))
  (define gxc#kw-lambda-expr?
    (lambda (_expr20108_)
      (let* ((___stx2756527566_ _expr20108_)
             (_g2011120269_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2756527566_))))
        (let ((___kont2756727568_
               (lambda (_L20657_
                        _L20658_
                        _L20659_
                        _L20660_
                        _L20661_
                        _L20662_
                        _L20663_
                        _L20664_
                        _L20665_
                        _L20666_
                        _L20667_)
                 (if (gxc#runtime-identifier=? _L20664_ 'apply)
                     (if (gxc#runtime-identifier=? _L20660_ 'apply)
                         (if (gxc#runtime-identifier=?
                              _L20659_
                              'keyword-dispatch)
                             (if (gx#free-identifier=? _L20667_ _L20658_)
                                 (if (gx#free-identifier=? _L20666_ _L20663_)
                                     (if (gx#free-identifier=?
                                          _L20661_
                                          _L20657_)
                                         (gx#free-identifier=?
                                          _L20665_
                                          _L20662_)
                                         '#f)
                                     '#f)
                                 '#f)
                             '#f)
                         '#f)
                     '#f)))
              (___kont2756927570_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2756527566_)
              (let ((_e2012420281_ (gx#stx-e ___stx2756527566_)))
                (let ((_tl2012620286_ (##cdr _e2012420281_))
                      (_hd2012520284_ (##car _e2012420281_)))
                  (if (gx#identifier? _hd2012520284_)
                      (if (gx#stx-eq? '%#let-values _hd2012520284_)
                          (if (gx#stx-pair? _tl2012620286_)
                              (let ((_e2012720289_ (gx#stx-e _tl2012620286_)))
                                (let ((_tl2012920294_ (##cdr _e2012720289_))
                                      (_hd2012820292_ (##car _e2012720289_)))
                                  (if (gx#stx-pair? _hd2012820292_)
                                      (let ((_e2013020297_
                                             (gx#stx-e _hd2012820292_)))
                                        (let ((_tl2013220302_
                                               (##cdr _e2013020297_))
                                              (_hd2013120300_
                                               (##car _e2013020297_)))
                                          (if (gx#stx-pair? _hd2013120300_)
                                              (let ((_e2013320305_
                                                     (gx#stx-e
                                                      _hd2013120300_)))
                                                (let ((_tl2013520310_
                                                       (##cdr _e2013320305_))
                                                      (_hd2013420308_
                                                       (##car _e2013320305_)))
                                                  (if (gx#stx-pair?
                                                       _hd2013420308_)
                                                      (let ((_e2013620313_
                                                             (gx#stx-e
                                                              _hd2013420308_)))
                                                        (let ((_tl2013820318_
                                                               (##cdr _e2013620313_))
                                                              (_hd2013720316_
                                                               (##car _e2013620313_)))
                                                          (if (gx#stx-null?
                                                               _tl2013820318_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2013520310_)
                          (let ((_e2013920321_ (gx#stx-e _tl2013520310_)))
                            (let ((_tl2014120326_ (##cdr _e2013920321_))
                                  (_hd2014020324_ (##car _e2013920321_)))
                              (if (gx#stx-pair? _hd2014020324_)
                                  (let ((_e2014220329_
                                         (gx#stx-e _hd2014020324_)))
                                    (let ((_tl2014420334_
                                           (##cdr _e2014220329_))
                                          (_hd2014320332_
                                           (##car _e2014220329_)))
                                      (if (gx#identifier? _hd2014320332_)
                                          (if (gx#stx-eq?
                                               '%#let-values
                                               _hd2014320332_)
                                              (if (gx#stx-pair? _tl2014420334_)
                                                  (let ((_e2014520337_
                                                         (gx#stx-e
                                                          _tl2014420334_)))
                                                    (let ((_tl2014720342_
                                                           (##cdr _e2014520337_))
                                                          (_hd2014620340_
                                                           (##car _e2014520337_)))
                                                      (if (gx#stx-pair?
                                                           _hd2014620340_)
                                                          (let ((_e2014820345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2014620340_)))
                    (let ((_tl2015020350_ (##cdr _e2014820345_))
                          (_hd2014920348_ (##car _e2014820345_)))
                      (if (gx#stx-pair? _hd2014920348_)
                          (let ((_e2015120353_ (gx#stx-e _hd2014920348_)))
                            (let ((_tl2015320358_ (##cdr _e2015120353_))
                                  (_hd2015220356_ (##car _e2015120353_)))
                              (if (gx#stx-pair? _hd2015220356_)
                                  (let ((_e2015420361_
                                         (gx#stx-e _hd2015220356_)))
                                    (let ((_tl2015620366_
                                           (##cdr _e2015420361_))
                                          (_hd2015520364_
                                           (##car _e2015420361_)))
                                      (if (gx#stx-null? _tl2015620366_)
                                          (if (gx#stx-pair? _tl2015320358_)
                                              (let ((_e2015720369_
                                                     (gx#stx-e
                                                      _tl2015320358_)))
                                                (let ((_tl2015920374_
                                                       (##cdr _e2015720369_))
                                                      (_hd2015820372_
                                                       (##car _e2015720369_)))
                                                  (if (gx#stx-null?
                                                       _tl2015920374_)
                                                      (if (gx#stx-null?
                                                           _tl2015020350_)
                                                          (if (gx#stx-pair?
                                                               _tl2014720342_)
                                                              (let ((_e2016020377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2014720342_)))
                        (let ((_tl2016220382_ (##cdr _e2016020377_))
                              (_hd2016120380_ (##car _e2016020377_)))
                          (if (gx#stx-pair? _hd2016120380_)
                              (let ((_e2016320385_ (gx#stx-e _hd2016120380_)))
                                (let ((_tl2016520390_ (##cdr _e2016320385_))
                                      (_hd2016420388_ (##car _e2016320385_)))
                                  (if (gx#identifier? _hd2016420388_)
                                      (if (gx#stx-eq? '%#lambda _hd2016420388_)
                                          (if (gx#stx-pair? _tl2016520390_)
                                              (let ((_e2016620393_
                                                     (gx#stx-e
                                                      _tl2016520390_)))
                                                (let ((_tl2016820398_
                                                       (##cdr _e2016620393_))
                                                      (_hd2016720396_
                                                       (##car _e2016620393_)))
                                                  (if (gx#stx-pair?
                                                       _hd2016720396_)
                                                      (let ((_e2016920401_
                                                             (gx#stx-e
                                                              _hd2016720396_)))
                                                        (let ((_tl2017120406_
                                                               (##cdr _e2016920401_))
                                                              (_hd2017020404_
                                                               (##car _e2016920401_)))
                                                          (if (gx#stx-pair?
                                                               _tl2016820398_)
                                                              (let ((_e2017220409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2016820398_)))
                        (let ((_tl2017420414_ (##cdr _e2017220409_))
                              (_hd2017320412_ (##car _e2017220409_)))
                          (if (gx#stx-pair? _hd2017320412_)
                              (let ((_e2017520417_ (gx#stx-e _hd2017320412_)))
                                (let ((_tl2017720422_ (##cdr _e2017520417_))
                                      (_hd2017620420_ (##car _e2017520417_)))
                                  (if (gx#identifier? _hd2017620420_)
                                      (if (gx#stx-eq? '%#call _hd2017620420_)
                                          (if (gx#stx-pair? _tl2017720422_)
                                              (let ((_e2017820425_
                                                     (gx#stx-e
                                                      _tl2017720422_)))
                                                (let ((_tl2018020430_
                                                       (##cdr _e2017820425_))
                                                      (_hd2017920428_
                                                       (##car _e2017820425_)))
                                                  (if (gx#stx-pair?
                                                       _hd2017920428_)
                                                      (let ((_e2018120433_
                                                             (gx#stx-e
                                                              _hd2017920428_)))
                                                        (let ((_tl2018320438_
                                                               (##cdr _e2018120433_))
                                                              (_hd2018220436_
                                                               (##car _e2018120433_)))
                                                          (if (gx#identifier?
                                                               _hd2018220436_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2018220436_)
                          (if (gx#stx-pair? _tl2018320438_)
                              (let ((_e2018420441_ (gx#stx-e _tl2018320438_)))
                                (let ((_tl2018620446_ (##cdr _e2018420441_))
                                      (_hd2018520444_ (##car _e2018420441_)))
                                  (if (gx#stx-null? _tl2018620446_)
                                      (if (gx#stx-pair? _tl2018020430_)
                                          (let ((_e2018720449_
                                                 (gx#stx-e _tl2018020430_)))
                                            (let ((_tl2018920454_
                                                   (##cdr _e2018720449_))
                                                  (_hd2018820452_
                                                   (##car _e2018720449_)))
                                              (if (gx#stx-pair? _hd2018820452_)
                                                  (let ((_e2019020457_
                                                         (gx#stx-e
                                                          _hd2018820452_)))
                                                    (let ((_tl2019220462_
                                                           (##cdr _e2019020457_))
                                                          (_hd2019120460_
                                                           (##car _e2019020457_)))
                                                      (if (gx#identifier?
                                                           _hd2019120460_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2019120460_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2019220462_)
                          (let ((_e2019320465_ (gx#stx-e _tl2019220462_)))
                            (let ((_tl2019520470_ (##cdr _e2019320465_))
                                  (_hd2019420468_ (##car _e2019320465_)))
                              (if (gx#stx-null? _tl2019520470_)
                                  (if (gx#stx-pair? _tl2018920454_)
                                      (let ((_e2019620473_
                                             (gx#stx-e _tl2018920454_)))
                                        (let ((_tl2019820478_
                                               (##cdr _e2019620473_))
                                              (_hd2019720476_
                                               (##car _e2019620473_)))
                                          (if (gx#stx-pair? _hd2019720476_)
                                              (let ((_e2019920481_
                                                     (gx#stx-e
                                                      _hd2019720476_)))
                                                (let ((_tl2020120486_
                                                       (##cdr _e2019920481_))
                                                      (_hd2020020484_
                                                       (##car _e2019920481_)))
                                                  (if (gx#identifier?
                                                       _hd2020020484_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd2020020484_)
                                                          (if (gx#stx-pair?
                                                               _tl2020120486_)
                                                              (let ((_e2020220489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2020120486_)))
                        (let ((_tl2020420494_ (##cdr _e2020220489_))
                              (_hd2020320492_ (##car _e2020220489_)))
                          (if (gx#stx-null? _tl2020420494_)
                              (if (gx#stx-null? _tl2017420414_)
                                  (if (gx#stx-null? _tl2016220382_)
                                      (if (gx#stx-null? _tl2014120326_)
                                          (if (gx#stx-null? _tl2013220302_)
                                              (if (gx#stx-pair? _tl2012920294_)
                                                  (let ((_e2020520497_
                                                         (gx#stx-e
                                                          _tl2012920294_)))
                                                    (let ((_tl2020720502_
                                                           (##cdr _e2020520497_))
                                                          (_hd2020620500_
                                                           (##car _e2020520497_)))
                                                      (if (gx#stx-pair?
                                                           _hd2020620500_)
                                                          (let ((_e2020820505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2020620500_)))
                    (let ((_tl2021020510_ (##cdr _e2020820505_))
                          (_hd2020920508_ (##car _e2020820505_)))
                      (if (gx#identifier? _hd2020920508_)
                          (if (gx#stx-eq? '%#lambda _hd2020920508_)
                              (if (gx#stx-pair? _tl2021020510_)
                                  (let ((_e2021120513_
                                         (gx#stx-e _tl2021020510_)))
                                    (let ((_tl2021320518_
                                           (##cdr _e2021120513_))
                                          (_hd2021220516_
                                           (##car _e2021120513_)))
                                      (if (gx#stx-pair? _tl2021320518_)
                                          (let ((_e2021420521_
                                                 (gx#stx-e _tl2021320518_)))
                                            (let ((_tl2021620526_
                                                   (##cdr _e2021420521_))
                                                  (_hd2021520524_
                                                   (##car _e2021420521_)))
                                              (if (gx#stx-pair? _hd2021520524_)
                                                  (let ((_e2021720529_
                                                         (gx#stx-e
                                                          _hd2021520524_)))
                                                    (let ((_tl2021920534_
                                                           (##cdr _e2021720529_))
                                                          (_hd2021820532_
                                                           (##car _e2021720529_)))
                                                      (if (gx#identifier?
                                                           _hd2021820532_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2021820532_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2021920534_)
                          (let ((_e2022020537_ (gx#stx-e _tl2021920534_)))
                            (let ((_tl2022220542_ (##cdr _e2022020537_))
                                  (_hd2022120540_ (##car _e2022020537_)))
                              (if (gx#stx-pair? _hd2022120540_)
                                  (let ((_e2022320545_
                                         (gx#stx-e _hd2022120540_)))
                                    (let ((_tl2022520550_
                                           (##cdr _e2022320545_))
                                          (_hd2022420548_
                                           (##car _e2022320545_)))
                                      (if (gx#identifier? _hd2022420548_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2022420548_)
                                              (if (gx#stx-pair? _tl2022520550_)
                                                  (let ((_e2022620553_
                                                         (gx#stx-e
                                                          _tl2022520550_)))
                                                    (let ((_tl2022820558_
                                                           (##cdr _e2022620553_))
                                                          (_hd2022720556_
                                                           (##car _e2022620553_)))
                                                      (if (gx#stx-null?
                                                           _tl2022820558_)
                                                          (if (gx#stx-pair?
                                                               _tl2022220542_)
                                                              (let ((_e2022920561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2022220542_)))
                        (let ((_tl2023120566_ (##cdr _e2022920561_))
                              (_hd2023020564_ (##car _e2022920561_)))
                          (if (gx#stx-pair? _hd2023020564_)
                              (let ((_e2023220569_ (gx#stx-e _hd2023020564_)))
                                (let ((_tl2023420574_ (##cdr _e2023220569_))
                                      (_hd2023320572_ (##car _e2023220569_)))
                                  (if (gx#identifier? _hd2023320572_)
                                      (if (gx#stx-eq? '%#ref _hd2023320572_)
                                          (if (gx#stx-pair? _tl2023420574_)
                                              (let ((_e2023520577_
                                                     (gx#stx-e
                                                      _tl2023420574_)))
                                                (let ((_tl2023720582_
                                                       (##cdr _e2023520577_))
                                                      (_hd2023620580_
                                                       (##car _e2023520577_)))
                                                  (if (gx#stx-null?
                                                       _tl2023720582_)
                                                      (if (gx#stx-pair?
                                                           _tl2023120566_)
                                                          (let ((_e2023820585_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2023120566_)))
                    (let ((_tl2024020590_ (##cdr _e2023820585_))
                          (_hd2023920588_ (##car _e2023820585_)))
                      (if (gx#stx-pair? _hd2023920588_)
                          (let ((_e2024120593_ (gx#stx-e _hd2023920588_)))
                            (let ((_tl2024320598_ (##cdr _e2024120593_))
                                  (_hd2024220596_ (##car _e2024120593_)))
                              (if (gx#identifier? _hd2024220596_)
                                  (if (gx#stx-eq? '%#quote _hd2024220596_)
                                      (if (gx#stx-pair? _tl2024320598_)
                                          (let ((_e2024420601_
                                                 (gx#stx-e _tl2024320598_)))
                                            (let ((_tl2024620606_
                                                   (##cdr _e2024420601_))
                                                  (_hd2024520604_
                                                   (##car _e2024420601_)))
                                              (if (gx#stx-null? _tl2024620606_)
                                                  (if (gx#stx-pair?
                                                       _tl2024020590_)
                                                      (let ((_e2024720609_
                                                             (gx#stx-e
                                                              _tl2024020590_)))
                                                        (let ((_tl2024920614_
                                                               (##cdr _e2024720609_))
                                                              (_hd2024820612_
                                                               (##car _e2024720609_)))
                                                          (if (gx#stx-pair?
                                                               _hd2024820612_)
                                                              (let ((_e2025020617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2024820612_)))
                        (let ((_tl2025220622_ (##cdr _e2025020617_))
                              (_hd2025120620_ (##car _e2025020617_)))
                          (if (gx#identifier? _hd2025120620_)
                              (if (gx#stx-eq? '%#ref _hd2025120620_)
                                  (if (gx#stx-pair? _tl2025220622_)
                                      (let ((_e2025320625_
                                             (gx#stx-e _tl2025220622_)))
                                        (let ((_tl2025520630_
                                               (##cdr _e2025320625_))
                                              (_hd2025420628_
                                               (##car _e2025320625_)))
                                          (if (gx#stx-null? _tl2025520630_)
                                              (if (gx#stx-pair? _tl2024920614_)
                                                  (let ((_e2025620633_
                                                         (gx#stx-e
                                                          _tl2024920614_)))
                                                    (let ((_tl2025820638_
                                                           (##cdr _e2025620633_))
                                                          (_hd2025720636_
                                                           (##car _e2025620633_)))
                                                      (if (gx#stx-pair?
                                                           _hd2025720636_)
                                                          (let ((_e2025920641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2025720636_)))
                    (let ((_tl2026120646_ (##cdr _e2025920641_))
                          (_hd2026020644_ (##car _e2025920641_)))
                      (if (gx#identifier? _hd2026020644_)
                          (if (gx#stx-eq? '%#ref _hd2026020644_)
                              (if (gx#stx-pair? _tl2026120646_)
                                  (let ((_e2026220649_
                                         (gx#stx-e _tl2026120646_)))
                                    (let ((_tl2026420654_
                                           (##cdr _e2026220649_))
                                          (_hd2026320652_
                                           (##car _e2026220649_)))
                                      (if (gx#stx-null? _tl2026420654_)
                                          (if (gx#stx-null? _tl2025820638_)
                                              (if (gx#stx-null? _tl2021620526_)
                                                  (if (gx#stx-null?
                                                       _tl2020720502_)
                                                      (___kont2756727568_
                                                       _hd2026320652_
                                                       _hd2025420628_
                                                       _hd2023620580_
                                                       _hd2022720556_
                                                       _hd2021220516_
                                                       _hd2020320492_
                                                       _hd2019420468_
                                                       _hd2018520444_
                                                       _hd2017020404_
                                                       _hd2015520364_
                                                       _hd2013720316_)
                                                      (___kont2756927570_))
                                                  (___kont2756927570_))
                                              (___kont2756927570_))
                                          (___kont2756927570_))))
                                  (___kont2756927570_))
                              (___kont2756927570_))
                          (___kont2756927570_))))
                  (___kont2756927570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2756927570_))
                                              (___kont2756927570_))))
                                      (___kont2756927570_))
                                  (___kont2756927570_))
                              (___kont2756927570_))))
                      (___kont2756927570_))))
              (___kont2756927570_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2756927570_))))
                                          (___kont2756927570_))
                                      (___kont2756927570_))
                                  (___kont2756927570_))))
                          (___kont2756927570_))))
                  (___kont2756927570_))
              (___kont2756927570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2756927570_))
                                          (___kont2756927570_))
                                      (___kont2756927570_))))
                              (___kont2756927570_))))
                      (___kont2756927570_))
                  (___kont2756927570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2756927570_))
                                              (___kont2756927570_))
                                          (___kont2756927570_))))
                                  (___kont2756927570_))))
                          (___kont2756927570_))
                      (___kont2756927570_))
                  (___kont2756927570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2756927570_))))
                                          (___kont2756927570_))))
                                  (___kont2756927570_))
                              (___kont2756927570_))
                          (___kont2756927570_))))
                  (___kont2756927570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2756927570_))
                                              (___kont2756927570_))
                                          (___kont2756927570_))
                                      (___kont2756927570_))
                                  (___kont2756927570_))
                              (___kont2756927570_))))
                      (___kont2756927570_))
                  (___kont2756927570_))
              (___kont2756927570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2756927570_))))
                                      (___kont2756927570_))
                                  (___kont2756927570_))))
                          (___kont2756927570_))
                      (___kont2756927570_))
                  (___kont2756927570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2756927570_))))
                                          (___kont2756927570_))
                                      (___kont2756927570_))))
                              (___kont2756927570_))
                          (___kont2756927570_))
                      (___kont2756927570_))))
              (___kont2756927570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2756927570_))
                                          (___kont2756927570_))
                                      (___kont2756927570_))))
                              (___kont2756927570_))))
                      (___kont2756927570_))))
              (___kont2756927570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2756927570_))
                                          (___kont2756927570_))
                                      (___kont2756927570_))))
                              (___kont2756927570_))))
                      (___kont2756927570_))
                  (___kont2756927570_))
              (___kont2756927570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2756927570_))
                                          (___kont2756927570_))))
                                  (___kont2756927570_))))
                          (___kont2756927570_))))
                  (___kont2756927570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2756927570_))
                                              (___kont2756927570_))
                                          (___kont2756927570_))))
                                  (___kont2756927570_))))
                          (___kont2756927570_))
                      (___kont2756927570_))))
              (___kont2756927570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2756927570_))))
                                      (___kont2756927570_))))
                              (___kont2756927570_))
                          (___kont2756927570_))
                      (___kont2756927570_))))
              (___kont2756927570_))))))
  (begin
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx19850_ _id19851_ _clauses19852_ _gensym?19853_)
        (let _lp19855_ ((_rest19857_ _clauses19852_)
                        (_ids19858_ '())
                        (_impls19859_ '())
                        (_clauses19860_ '()))
          (let* ((_rest1986119869_ _rest19857_)
                 (_else1986319877_
                  (lambda ()
                    (values (reverse _ids19858_)
                            (reverse _impls19859_)
                            (reverse _clauses19860_))))
                 (_K1986520082_
                  (lambda (_rest19880_ _clause19881_)
                    (if (gxc#dispatch-lambda-form? _clause19881_)
                        (_lp19855_
                         _rest19880_
                         _ids19858_
                         _impls19859_
                         (cons _clause19881_ _clauses19860_))
                        (let* ((_g1988319894_
                                (lambda (_g1988419891_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g1988419891_)))
                               (_g1988220079_
                                (lambda (_g1988419897_)
                                  (if (gx#stx-pair? _g1988419897_)
                                      (let ((_e1988719899_
                                             (gx#stx-e _g1988419897_)))
                                        (let ((_hd1988819902_
                                               (##car _e1988719899_))
                                              (_tl1988919904_
                                               (##cdr _e1988719899_)))
                                          ((lambda (_L19907_ _L19908_)
                                             (let* ((_id19925_
                                                     (make-symbol
                                                      (gx#stx-e _id19851_)
                                                      '"__"
                                                      (length _clauses19860_)
                                                      (if _gensym?19853_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id19927_
                                                     (gx#core-quote-syntax__1
                                                      _id19925_
                                                      (gx#stx-source
                                                       _stx19850_)))
                                                    (_impl19929_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L19908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L19907_))
              _stx19850_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause20076_
                                                     (let* ((___stx2794927950_
                                                             _L19908_)
                                                            (_g1993319961_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                ___stx2794927950_))))
                                                       (let ((___kont2795127952_
                                                              (lambda (_L20055_)
                                                                (cons _L19908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons _id19927_ '()))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g2006520068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2006620070_)
                     (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                 (cons _g2006520068_ '()))
                           _g2006620070_))
                   '()
                   _L20055_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx19850_)
                                    '()))))
                     (___kont2795527956_
                      (lambda (_L20006_ _L20007_)
                        (cons _L19908_
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'apply '()))
                                                 (cons (cons '%#ref
                                                             (cons _id19927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (foldr1 cons
                       (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                   (cons _L20006_ '()))
                             '())
                       (begin
                         '#!void
                         (foldr1 (lambda (_g2001820021_ _g2001920023_)
                                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                               (cons _g2001820021_ '()))
                                         _g2001920023_))
                                 '()
                                 _L20007_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx19850_)
                                    '()))))
                     (___kont2795927960_
                      (lambda (_L19966_)
                        (cons _L19908_
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'apply '()))
                                                 (cons (cons '%#ref
                                                             (cons _id19927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                           (cons _L19966_ '()))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx19850_)
                                    '())))))
                 (let* ((___match2797427975_
                         (lambda (___splice2795727958_
                                  _target1994719982_
                                  _tl1994919984_)
                           (letrec ((_loop1995019987_
                                     (lambda (_hd1994819990_ _arg1995419992_)
                                       (if (gx#stx-pair? _hd1994819990_)
                                           (let ((_e1995119995_
                                                  (gx#stx-e _hd1994819990_)))
                                             (let ((_lp-tl1995320000_
                                                    (##cdr _e1995119995_))
                                                   (_lp-hd1995219998_
                                                    (##car _e1995119995_)))
                                               (_loop1995019987_
                                                _lp-tl1995320000_
                                                (cons _lp-hd1995219998_
                                                      _arg1995419992_))))
                                           (let ((_arg1995520003_
                                                  (reverse _arg1995419992_)))
                                             (___kont2795527956_
                                              _tl1994919984_
                                              _arg1995520003_))))))
                             (_loop1995019987_ _target1994719982_ '()))))
                        (___match2796827969_
                         (lambda (___splice2795327954_
                                  _target1993620031_
                                  _tl1993820033_)
                           (letrec ((_loop1993920036_
                                     (lambda (_hd1993720039_ _arg1994320041_)
                                       (if (gx#stx-pair? _hd1993720039_)
                                           (let ((_e1994020044_
                                                  (gx#stx-e _hd1993720039_)))
                                             (let ((_lp-tl1994220049_
                                                    (##cdr _e1994020044_))
                                                   (_lp-hd1994120047_
                                                    (##car _e1994020044_)))
                                               (_loop1993920036_
                                                _lp-tl1994220049_
                                                (cons _lp-hd1994120047_
                                                      _arg1994320041_))))
                                           (let ((_arg1994420052_
                                                  (reverse _arg1994320041_)))
                                             (___kont2795127952_
                                              _arg1994420052_))))))
                             (_loop1993920036_ _target1993620031_ '())))))
                   (if (gx#stx-pair/null? ___stx2794927950_)
                       (let ((___splice2795327954_
                              (gx#syntax-split-splice ___stx2794927950_ '0)))
                         (let ((_tl1993820033_
                                (##vector-ref ___splice2795327954_ '1))
                               (_target1993620031_
                                (##vector-ref ___splice2795327954_ '0)))
                           (if (gx#stx-null? _tl1993820033_)
                               (___match2796827969_
                                ___splice2795327954_
                                _target1993620031_
                                _tl1993820033_)
                               (___match2797427975_
                                ___splice2795327954_
                                _target1993620031_
                                _tl1993820033_))))
                       (___kont2795927960_ ___stx2794927950_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp19855_
                                                _rest19880_
                                                (cons _id19927_ _ids19858_)
                                                (cons _impl19929_ _impls19859_)
                                                (cons _clause20076_
                                                      _clauses19860_))))
                                           _tl1988919904_
                                           _hd1988819902_)))
                                      (_g1988319894_ _g1988419897_)))))
                          (_g1988220079_ _clause19881_))))))
            (if (##pair? _rest1986119869_)
                (let ((_hd1986620085_ (##car _rest1986119869_))
                      (_tl1986720087_ (##cdr _rest1986119869_)))
                  (let* ((_clause20090_ _hd1986620085_)
                         (_rest20092_ _tl1986720087_))
                    (_K1986520082_ _rest20092_ _clause20090_)))
                (_else1986319877_))))))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx20097_ _id20098_ _clauses20099_)
          (let ((_gensym?20101_ '#f))
            (gxc#lift-case-lambda-clauses__%
             _stx20097_
             _id20098_
             _clauses20099_
             _gensym?20101_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g28489_
          (let ((_g28488_ (length _g28489_)))
            (cond ((##fx= _g28488_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g28489_))
                  ((##fx= _g28488_ 4)
                   (apply gxc#lift-case-lambda-clauses__% _g28489_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g28489_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx19127_)
      (letrec ((_case-lambda-clause-def19129_
                (lambda (_id19846_ _impl19847_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id19846_ '())
                               (cons (gxc#compile-e _impl19847_) '())))
                   _stx19127_)))
               (_opt-lambda-dispatch-name19130_
                (lambda (_id19842_)
                  (if (uninterned-symbol? _id19842_)
                      (let ((_str19844_ (symbol->string _id19842_)))
                        (if (string-prefix? _str19844_ '"opt-lambda")
                            '"%"
                            _id19842_))
                      _id19842_)))
               (_kw-lambda-dispatch-name19131_
                (lambda (_id19837_ _name19838_)
                  (if (uninterned-symbol? _id19837_)
                      (let ((_str19840_ (symbol->string _id19837_)))
                        (if (string-prefix? _str19840_ '"kw-lambda")
                            _name19838_
                            _id19837_))
                      _id19837_))))
        (let* ((___stx2799727998_ _stx19127_)
               (_g1913619195_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2799727998_))))
          (let ((___kont2799928000_
                 (lambda (_L19746_ _L19747_)
                   (let* ((___stx2797727978_ _L19746_)
                          (_g1976419778_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx2797727978_))))
                     (let ((___kont2797927980_ (lambda (_L19822_) _stx19127_))
                           (___kont2798127982_
                            (lambda (_L19791_)
                              (let ((_g28490_
                                     (gxc#lift-case-lambda-clauses__0
                                      _stx19127_
                                      _L19747_
                                      _L19791_)))
                                (begin
                                  (let ((_g28491_
                                         (if (##values? _g28490_)
                                             (##vector-length _g28490_)
                                             1)))
                                    (if (not (##fx= _g28491_ 3))
                                        (error "Context expects 3 values"
                                               _g28491_)))
                                  (let ((_ids19801_ (##vector-ref _g28490_ 0))
                                        (_impls19802_
                                         (##vector-ref _g28490_ 1))
                                        (_clauses19803_
                                         (##vector-ref _g28490_ 2)))
                                    (let* ((_g28492_
                                            (for-each
                                             gx#core-bind-runtime!
                                             _ids19801_))
                                           (_defs19806_
                                            (map _case-lambda-clause-def19129_
                                                 _ids19801_
                                                 _impls19802_)))
                                      (begin
                                        (gxc#verbose
                                         '"lift case-lambda clauses "
                                         (gxc#identifier-symbol _L19747_)
                                         '" => "
                                         (map gxc#identifier-symbol
                                              _ids19801_))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin
                                               (foldr1 cons
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#define-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _L19747_ '())
                                  (cons (gxc#xform-wrap-source
                                         (cons '%#case-lambda _clauses19803_)
                                         (gx#datum->syntax__0
                                          '#f
                                          'case-lambda-expr))
                                        '())))
                      _stx19127_)
                     '())
               _defs19806_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx19127_)))))))))
                       (let ((___match2798827989_
                              (lambda (_e1976719814_
                                       _hd1976819817_
                                       _tl1976919819_)
                                (let ((_L19822_ _tl1976919819_))
                                  (if (andmap1 gxc#dispatch-lambda-form?
                                               _L19822_)
                                      (___kont2797927980_ _L19822_)
                                      (___kont2798127982_ _tl1976919819_))))))
                         (if (gx#stx-pair? ___stx2797727978_)
                             (let ((_e1976719814_
                                    (gx#stx-e ___stx2797727978_)))
                               (let ((_tl1976919819_ (##cdr _e1976719814_))
                                     (_hd1976819817_ (##car _e1976719814_)))
                                 (___match2798827989_
                                  _e1976719814_
                                  _hd1976819817_
                                  _tl1976919819_)))
                             (_g1976419778_)))))))
                (___kont2800128002_
                 (lambda (_L19564_ _L19565_)
                   (let* ((_g1958119611_
                           (lambda (_g1958219608_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1958219608_)))
                          (_g1958019706_
                           (lambda (_g1958219614_)
                             (if (gx#stx-pair? _g1958219614_)
                                 (let ((_e1958619616_
                                        (gx#stx-e _g1958219614_)))
                                   (let ((_hd1958719619_ (##car _e1958619616_))
                                         (_tl1958819621_
                                          (##cdr _e1958619616_)))
                                     (if (gx#stx-pair? _tl1958819621_)
                                         (let ((_e1958919624_
                                                (gx#stx-e _tl1958819621_)))
                                           (let ((_hd1959019627_
                                                  (##car _e1958919624_))
                                                 (_tl1959119629_
                                                  (##cdr _e1958919624_)))
                                             (if (gx#stx-pair? _hd1959019627_)
                                                 (let ((_e1959219632_
                                                        (gx#stx-e
                                                         _hd1959019627_)))
                                                   (let ((_hd1959319635_
                                                          (##car _e1959219632_))
                                                         (_tl1959419637_
                                                          (##cdr _e1959219632_)))
                                                     (if (gx#stx-pair?
                                                          _hd1959319635_)
                                                         (let ((_e1959519640_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1959319635_)))
                   (let ((_hd1959619643_ (##car _e1959519640_))
                         (_tl1959719645_ (##cdr _e1959519640_)))
                     (if (gx#stx-pair? _hd1959619643_)
                         (let ((_e1959819648_ (gx#stx-e _hd1959619643_)))
                           (let ((_hd1959919651_ (##car _e1959819648_))
                                 (_tl1960019653_ (##cdr _e1959819648_)))
                             (if (gx#stx-null? _tl1960019653_)
                                 (if (gx#stx-pair? _tl1959719645_)
                                     (let ((_e1960119656_
                                            (gx#stx-e _tl1959719645_)))
                                       (let ((_hd1960219659_
                                              (##car _e1960119656_))
                                             (_tl1960319661_
                                              (##cdr _e1960119656_)))
                                         (if (gx#stx-null? _tl1960319661_)
                                             (if (gx#stx-null? _tl1959419637_)
                                                 (if (gx#stx-pair?
                                                      _tl1959119629_)
                                                     (let ((_e1960419664_
                                                            (gx#stx-e
                                                             _tl1959119629_)))
                                                       (let ((_hd1960519667_
                                                              (##car _e1960419664_))
                                                             (_tl1960619669_
                                                              (##cdr _e1960419664_)))
                                                         (if (gx#stx-null?
                                                              _tl1960619669_)
                                                             ((lambda (_L19672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L19673_
                               _L19674_)
                        (let* ((_lambda-id19698_
                                (make-symbol
                                 (gx#stx-e _L19565_)
                                 '"__"
                                 (_opt-lambda-dispatch-name19130_
                                  (gx#stx-e _L19674_))))
                               (_lambda-id19700_
                                (gx#core-quote-syntax__1
                                 _lambda-id19698_
                                 (gx#stx-source _stx19127_)))
                               (_g28493_
                                (gx#core-bind-runtime!__0 _lambda-id19700_))
                               (_new-case-lambda-expr19703_
                                (gxc#apply-expression-subst
                                 _L19672_
                                 _L19674_
                                 _lambda-id19700_)))
                          (begin
                            (gxc#verbose
                             '"lift opt-lambda dispatch "
                             (gxc#identifier-symbol _L19565_)
                             '" => "
                             (gxc#identifier-symbol _lambda-id19700_))
                            (gxc#xform-wrap-source
                             (cons '%#begin
                                   (cons (gxc#xform-wrap-source
                                          (cons '%#define-values
                                                (cons (cons _lambda-id19700_
                                                            '())
                                                      (cons (gxc#compile-e
                                                             _L19673_)
                                                            '())))
                                          _stx19127_)
                                         (cons (gxc#lift-top-lambda-define-values%
                                                (gxc#xform-wrap-source
                                                 (cons '%#define-values
                                                       (cons (cons _L19565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons _new-case-lambda-expr19703_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _stx19127_))
                                               '())))
                             _stx19127_))))
                      _hd1960519667_
                      _hd1960219659_
                      _hd1959919651_)
                     (_g1958119611_ _g1958219614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1958119611_
                                                      _g1958219614_))
                                                 (_g1958119611_ _g1958219614_))
                                             (_g1958119611_ _g1958219614_))))
                                     (_g1958119611_ _g1958219614_))
                                 (_g1958119611_ _g1958219614_))))
                         (_g1958119611_ _g1958219614_))))
                 (_g1958119611_ _g1958219614_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1958119611_
                                                  _g1958219614_))))
                                         (_g1958119611_ _g1958219614_))))
                                 (_g1958119611_ _g1958219614_)))))
                     (_g1958019706_ _L19564_))))
                (___kont2800328004_
                 (lambda (_L19278_ _L19279_)
                   (let* ((_g1929519348_
                           (lambda (_g1929619345_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1929619345_)))
                          (_g1929419524_
                           (lambda (_g1929619351_)
                             (if (gx#stx-pair? _g1929619351_)
                                 (let ((_e1930219353_
                                        (gx#stx-e _g1929619351_)))
                                   (let ((_hd1930319356_ (##car _e1930219353_))
                                         (_tl1930419358_
                                          (##cdr _e1930219353_)))
                                     (if (gx#stx-pair? _tl1930419358_)
                                         (let ((_e1930519361_
                                                (gx#stx-e _tl1930419358_)))
                                           (let ((_hd1930619364_
                                                  (##car _e1930519361_))
                                                 (_tl1930719366_
                                                  (##cdr _e1930519361_)))
                                             (if (gx#stx-pair? _hd1930619364_)
                                                 (let ((_e1930819369_
                                                        (gx#stx-e
                                                         _hd1930619364_)))
                                                   (let ((_hd1930919372_
                                                          (##car _e1930819369_))
                                                         (_tl1931019374_
                                                          (##cdr _e1930819369_)))
                                                     (if (gx#stx-pair?
                                                          _hd1930919372_)
                                                         (let ((_e1931119377_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1930919372_)))
                   (let ((_hd1931219380_ (##car _e1931119377_))
                         (_tl1931319382_ (##cdr _e1931119377_)))
                     (if (gx#stx-pair? _hd1931219380_)
                         (let ((_e1931419385_ (gx#stx-e _hd1931219380_)))
                           (let ((_hd1931519388_ (##car _e1931419385_))
                                 (_tl1931619390_ (##cdr _e1931419385_)))
                             (if (gx#stx-null? _tl1931619390_)
                                 (if (gx#stx-pair? _tl1931319382_)
                                     (let ((_e1931719393_
                                            (gx#stx-e _tl1931319382_)))
                                       (let ((_hd1931819396_
                                              (##car _e1931719393_))
                                             (_tl1931919398_
                                              (##cdr _e1931719393_)))
                                         (if (gx#stx-pair? _hd1931819396_)
                                             (let ((_e1932019401_
                                                    (gx#stx-e _hd1931819396_)))
                                               (let ((_hd1932119404_
                                                      (##car _e1932019401_))
                                                     (_tl1932219406_
                                                      (##cdr _e1932019401_)))
                                                 (if (gx#stx-pair?
                                                      _tl1932219406_)
                                                     (let ((_e1932319409_
                                                            (gx#stx-e
                                                             _tl1932219406_)))
                                                       (let ((_hd1932419412_
                                                              (##car _e1932319409_))
                                                             (_tl1932519414_
                                                              (##cdr _e1932319409_)))
                                                         (if (gx#stx-pair?
                                                              _hd1932419412_)
                                                             (let ((_e1932619417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1932419412_)))
                       (let ((_hd1932719420_ (##car _e1932619417_))
                             (_tl1932819422_ (##cdr _e1932619417_)))
                         (if (gx#stx-pair? _hd1932719420_)
                             (let ((_e1932919425_ (gx#stx-e _hd1932719420_)))
                               (let ((_hd1933019428_ (##car _e1932919425_))
                                     (_tl1933119430_ (##cdr _e1932919425_)))
                                 (if (gx#stx-pair? _hd1933019428_)
                                     (let ((_e1933219433_
                                            (gx#stx-e _hd1933019428_)))
                                       (let ((_hd1933319436_
                                              (##car _e1933219433_))
                                             (_tl1933419438_
                                              (##cdr _e1933219433_)))
                                         (if (gx#stx-null? _tl1933419438_)
                                             (if (gx#stx-pair? _tl1933119430_)
                                                 (let ((_e1933519441_
                                                        (gx#stx-e
                                                         _tl1933119430_)))
                                                   (let ((_hd1933619444_
                                                          (##car _e1933519441_))
                                                         (_tl1933719446_
                                                          (##cdr _e1933519441_)))
                                                     (if (gx#stx-null?
                                                          _tl1933719446_)
                                                         (if (gx#stx-null?
                                                              _tl1932819422_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1932519414_)
                         (let ((_e1933819449_ (gx#stx-e _tl1932519414_)))
                           (let ((_hd1933919452_ (##car _e1933819449_))
                                 (_tl1934019454_ (##cdr _e1933819449_)))
                             (if (gx#stx-null? _tl1934019454_)
                                 (if (gx#stx-null? _tl1931919398_)
                                     (if (gx#stx-null? _tl1931019374_)
                                         (if (gx#stx-pair? _tl1930719366_)
                                             (let ((_e1934119457_
                                                    (gx#stx-e _tl1930719366_)))
                                               (let ((_hd1934219460_
                                                      (##car _e1934119457_))
                                                     (_tl1934319462_
                                                      (##cdr _e1934119457_)))
                                                 (if (gx#stx-null?
                                                      _tl1934319462_)
                                                     ((lambda (_L19465_
                                                               _L19466_
                                                               _L19467_
                                                               _L19468_
                                                               _L19469_)
                                                        (let* ((_get-kws-id19509_
                                                                (make-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _L19279_)
                         '"__"
                         (_kw-lambda-dispatch-name19131_
                          (gx#stx-e _L19469_)
                          '"@")))
                       (_get-kws-id19511_
                        (gx#core-quote-syntax__1
                         _get-kws-id19509_
                         (gx#stx-source _stx19127_)))
                       (_main-id19513_
                        (make-symbol
                         (gx#stx-e _L19279_)
                         '"__"
                         (_kw-lambda-dispatch-name19131_
                          (gx#stx-e _L19468_)
                          '"%")))
                       (_main-id19515_
                        (gx#core-quote-syntax__1
                         _main-id19513_
                         (gx#stx-source _stx19127_)))
                       (_g28494_ (gx#core-bind-runtime!__0 _get-kws-id19511_))
                       (_g28495_ (gx#core-bind-runtime!__0 _main-id19515_))
                       (_new-kw-dispatch19519_
                        (gxc#apply-expression-subst
                         _L19465_
                         _L19469_
                         _get-kws-id19511_))
                       (_new-get-kws19521_
                        (gxc#apply-expression-subst
                         _L19466_
                         _L19468_
                         _main-id19515_)))
                  (begin
                    (gxc#verbose
                     '"lift kw-lambda dispatch "
                     (gxc#identifier-symbol _L19279_)
                     '" => "
                     (gxc#identifier-symbol _get-kws-id19511_)
                     '" => "
                     (gxc#identifier-symbol _main-id19515_))
                    (gxc#xform-wrap-source
                     (cons '%#begin
                           (cons (gxc#lift-top-lambda-define-values%
                                  (gxc#xform-wrap-source
                                   (cons '%#define-values
                                         (cons (cons _main-id19515_ '())
                                               (cons _L19467_ '())))
                                   _stx19127_))
                                 (cons (gxc#xform-wrap-source
                                        (cons '%#define-values
                                              (cons (cons _get-kws-id19511_
                                                          '())
                                                    (cons _new-get-kws19521_
                                                          '())))
                                        _stx19127_)
                                       (cons (gxc#xform-wrap-source
                                              (cons '%#define-values
                                                    (cons (cons _L19279_ '())
                                                          (cons _new-kw-dispatch19519_
                                                                '())))
                                              _stx19127_)
                                             '()))))
                     _stx19127_))))
              _hd1934219460_
              _hd1933919452_
              _hd1933619444_
              _hd1933319436_
              _hd1931519388_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1929519348_
                                                      _g1929619351_))))
                                             (_g1929519348_ _g1929619351_))
                                         (_g1929519348_ _g1929619351_))
                                     (_g1929519348_ _g1929619351_))
                                 (_g1929519348_ _g1929619351_))))
                         (_g1929519348_ _g1929619351_))
                     (_g1929519348_ _g1929619351_))
                 (_g1929519348_ _g1929619351_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1929519348_ _g1929619351_))
                                             (_g1929519348_ _g1929619351_))))
                                     (_g1929519348_ _g1929619351_))))
                             (_g1929519348_ _g1929619351_))))
                     (_g1929519348_ _g1929619351_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1929519348_
                                                      _g1929619351_))))
                                             (_g1929519348_ _g1929619351_))))
                                     (_g1929519348_ _g1929619351_))
                                 (_g1929519348_ _g1929619351_))))
                         (_g1929519348_ _g1929619351_))))
                 (_g1929519348_ _g1929619351_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1929519348_
                                                  _g1929619351_))))
                                         (_g1929519348_ _g1929619351_))))
                                 (_g1929519348_ _g1929619351_)))))
                     (_g1929419524_ _L19278_))))
                (___kont2800528006_
                 (lambda (_L19224_ _L19225_)
                   (gxc#xform-wrap-source
                    (cons '%#define-values
                          (cons _L19225_ (cons (gxc#compile-e _L19224_) '())))
                    _stx19127_))))
            (let* ((___match2809028091_
                    (lambda (_e1916819246_
                             _hd1916919249_
                             _tl1917019251_
                             _e1917119254_
                             _hd1917219257_
                             _tl1917319259_
                             _e1917419262_
                             _hd1917519265_
                             _tl1917619267_
                             _e1917719270_
                             _hd1917819273_
                             _tl1917919275_)
                      (let ((_L19278_ _hd1917819273_)
                            (_L19279_ _hd1917519265_))
                        (if (if (gx#identifier? _L19279_)
                                (gxc#kw-lambda-expr? _L19278_)
                                '#f)
                            (___kont2800328004_ _L19278_ _L19279_)
                            (___kont2800528006_
                             _hd1917819273_
                             _hd1917219257_)))))
                   (___match2806228063_
                    (lambda (_e1915419532_
                             _hd1915519535_
                             _tl1915619537_
                             _e1915719540_
                             _hd1915819543_
                             _tl1915919545_
                             _e1916019548_
                             _hd1916119551_
                             _tl1916219553_
                             _e1916319556_
                             _hd1916419559_
                             _tl1916519561_)
                      (let ((_L19564_ _hd1916419559_)
                            (_L19565_ _hd1916119551_))
                        (if (if (gx#identifier? _L19565_)
                                (gxc#opt-lambda-expr? _L19564_)
                                '#f)
                            (___kont2800128002_ _L19564_ _L19565_)
                            (___match2809028091_
                             _e1915419532_
                             _hd1915519535_
                             _tl1915619537_
                             _e1915719540_
                             _hd1915819543_
                             _tl1915919545_
                             _e1916019548_
                             _hd1916119551_
                             _tl1916219553_
                             _e1916319556_
                             _hd1916419559_
                             _tl1916519561_)))))
                   (___match2803428035_
                    (lambda (_e1914019714_
                             _hd1914119717_
                             _tl1914219719_
                             _e1914319722_
                             _hd1914419725_
                             _tl1914519727_
                             _e1914619730_
                             _hd1914719733_
                             _tl1914819735_
                             _e1914919738_
                             _hd1915019741_
                             _tl1915119743_)
                      (let ((_L19746_ _hd1915019741_)
                            (_L19747_ _hd1914719733_))
                        (if (if (gx#identifier? _L19747_)
                                (gxc#case-lambda-expr? _L19746_)
                                '#f)
                            (___kont2799928000_ _L19746_ _L19747_)
                            (___match2806228063_
                             _e1914019714_
                             _hd1914119717_
                             _tl1914219719_
                             _e1914319722_
                             _hd1914419725_
                             _tl1914519727_
                             _e1914619730_
                             _hd1914719733_
                             _tl1914819735_
                             _e1914919738_
                             _hd1915019741_
                             _tl1915119743_))))))
              (if (gx#stx-pair? ___stx2799727998_)
                  (let ((_e1914019714_ (gx#stx-e ___stx2799727998_)))
                    (let ((_tl1914219719_ (##cdr _e1914019714_))
                          (_hd1914119717_ (##car _e1914019714_)))
                      (if (gx#stx-pair? _tl1914219719_)
                          (let ((_e1914319722_ (gx#stx-e _tl1914219719_)))
                            (let ((_tl1914519727_ (##cdr _e1914319722_))
                                  (_hd1914419725_ (##car _e1914319722_)))
                              (if (gx#stx-pair? _hd1914419725_)
                                  (let ((_e1914619730_
                                         (gx#stx-e _hd1914419725_)))
                                    (let ((_tl1914819735_
                                           (##cdr _e1914619730_))
                                          (_hd1914719733_
                                           (##car _e1914619730_)))
                                      (if (gx#stx-null? _tl1914819735_)
                                          (if (gx#stx-pair? _tl1914519727_)
                                              (let ((_e1914919738_
                                                     (gx#stx-e
                                                      _tl1914519727_)))
                                                (let ((_tl1915119743_
                                                       (##cdr _e1914919738_))
                                                      (_hd1915019741_
                                                       (##car _e1914919738_)))
                                                  (if (gx#stx-null?
                                                       _tl1915119743_)
                                                      (___match2803428035_
                                                       _e1914019714_
                                                       _hd1914119717_
                                                       _tl1914219719_
                                                       _e1914319722_
                                                       _hd1914419725_
                                                       _tl1914519727_
                                                       _e1914619730_
                                                       _hd1914719733_
                                                       _tl1914819735_
                                                       _e1914919738_
                                                       _hd1915019741_
                                                       _tl1915119743_)
                                                      (_g1913619195_))))
                                              (_g1913619195_))
                                          (if (gx#stx-pair? _tl1914519727_)
                                              (let ((_e1918819216_
                                                     (gx#stx-e
                                                      _tl1914519727_)))
                                                (let ((_tl1919019221_
                                                       (##cdr _e1918819216_))
                                                      (_hd1918919219_
                                                       (##car _e1918819216_)))
                                                  (if (gx#stx-null?
                                                       _tl1919019221_)
                                                      (___kont2800528006_
                                                       _hd1918919219_
                                                       _hd1914419725_)
                                                      (_g1913619195_))))
                                              (_g1913619195_)))))
                                  (if (gx#stx-pair? _tl1914519727_)
                                      (let ((_e1918819216_
                                             (gx#stx-e _tl1914519727_)))
                                        (let ((_tl1919019221_
                                               (##cdr _e1918819216_))
                                              (_hd1918919219_
                                               (##car _e1918819216_)))
                                          (if (gx#stx-null? _tl1919019221_)
                                              (___kont2800528006_
                                               _hd1918919219_
                                               _hd1914419725_)
                                              (_g1913619195_))))
                                      (_g1913619195_)))))
                          (_g1913619195_))))
                  (_g1913619195_))))))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx18059_)
      (letrec* ((_bind-e__2588725888_
                 (lambda (_id19111_ _expr19112_ _compile?19113_)
                   (cons (cons _id19111_ '())
                         (cons (if _compile?19113_
                                   (gxc#compile-e _expr19112_)
                                   _expr19112_)
                               '()))))
                (_bind-e__0__2588925890_
                 (lambda (_id19118_ _expr19119_)
                   (let ((_compile?19121_ '#t))
                     (_bind-e__2588725888_
                      _id19118_
                      _expr19119_
                      _compile?19121_))))
                (_bind-e18061_
                 (lambda _g28497_
                   (let ((_g28496_ (length _g28497_)))
                     (cond ((##fx= _g28496_ 2)
                            (apply _bind-e__0__2588925890_ _g28497_))
                           ((##fx= _g28496_ 3)
                            (apply _bind-e__2588725888_ _g28497_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g28497_))))))
                (_compile-bindings18062_
                 (lambda (_bindings18695_)
                   (let _lp18697_ ((_rest18699_ _bindings18695_)
                                   (_lift118700_ '())
                                   (_lift218701_ '())
                                   (_bind18702_ '()))
                     (let* ((_rest1870318711_ _rest18699_)
                            (_else1870518719_
                             (lambda ()
                               (values (reverse _lift118700_)
                                       (reverse _lift218701_)
                                       (reverse _bind18702_))))
                            (_K1870719098_
                             (lambda (_rest18722_ _hd18723_)
                               (let* ((___stx2813328134_ _hd18723_)
                                      (_g1872718763_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx2813328134_))))
                                 (let ((___kont2813528136_
                                        (lambda (_L19005_ _L19006_)
                                          (let* ((___stx2811328114_ _L19005_)
                                                 (_g1902119035_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx2811328114_))))
                                            (let ((___kont2811528116_
                                                   (lambda (_L19083_)
                                                     (_lp18697_
                                                      _rest18722_
                                                      _lift118700_
                                                      _lift218701_
                                                      (cons (_bind-e__2588725888_
                                                             _L19006_
                                                             _L19005_
                                                             '#f)
                                                            _bind18702_))))
                                                  (___kont2811728118_
                                                   (lambda (_L19048_)
                                                     (let ((_g28498_
                                                            (gxc#lift-case-lambda-clauses__%
                                                             _stx18059_
                                                             _L19006_
                                                             _L19048_
                                                             '#t)))
                                                       (begin
                                                         (let ((_g28499_
                                                                (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g28498_)
                            (##vector-length _g28498_)
                            1)))
                   (if (not (##fx= _g28499_ 3))
                       (error "Context expects 3 values" _g28499_)))
                 (let ((_ids19058_ (##vector-ref _g28498_ 0))
                       (_impls19059_ (##vector-ref _g28498_ 1))
                       (_clauses19060_ (##vector-ref _g28498_ 2)))
                   (let* ((_g28500_
                           (for-each gx#core-bind-runtime! _ids19058_))
                          (_xbind19063_
                           (map _bind-e18061_ _ids19058_ _impls19059_))
                          (_expr*19065_
                           (gxc#xform-wrap-source
                            (cons '%#case-lambda _clauses19060_)
                            (gx#datum->syntax__0 '#f 'case-lambda-expr)))
                          (_bind*19067_
                           (_bind-e__2588725888_ _L19006_ _expr*19065_ '#f)))
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#identifier-symbol _L19006_)
                        '" => "
                        (map gxc#identifier-symbol _ids19058_))
                       (_lp18697_
                        _rest18722_
                        _lift118700_
                        (foldl1 cons _lift218701_ _xbind19063_)
                        (cons _bind*19067_ _bind18702_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((___match2812428125_
                                                     (lambda (_e1902419075_
                                                              _hd1902519078_
                                                              _tl1902619080_)
                                                       (let ((_L19083_
                                                              _tl1902619080_))
                                                         (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L19083_)
                     (___kont2811528116_ _L19083_)
                     (___kont2811728118_ _tl1902619080_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx2811328114_)
                                                    (let ((_e1902419075_
                                                           (gx#stx-e
                                                            ___stx2811328114_)))
                                                      (let ((_tl1902619080_
                                                             (##cdr _e1902419075_))
                                                            (_hd1902519078_
                                                             (##car _e1902419075_)))
                                                        (___match2812428125_
                                                         _e1902419075_
                                                         _hd1902519078_
                                                         _tl1902619080_)))
                                                    (_g1902119035_)))))))
                                       (___kont2813728138_
                                        (lambda (_L18833_ _L18834_)
                                          (let* ((_g1884818878_
                                                  (lambda (_g1884918875_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1884918875_)))
                                                 (_g1884718973_
                                                  (lambda (_g1884918881_)
                                                    (if (gx#stx-pair?
                                                         _g1884918881_)
                                                        (let ((_e1885318883_
                                                               (gx#stx-e
                                                                _g1884918881_)))
                                                          (let ((_hd1885418886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1885318883_))
                        (_tl1885518888_ (##cdr _e1885318883_)))
                    (if (gx#stx-pair? _tl1885518888_)
                        (let ((_e1885618891_ (gx#stx-e _tl1885518888_)))
                          (let ((_hd1885718894_ (##car _e1885618891_))
                                (_tl1885818896_ (##cdr _e1885618891_)))
                            (if (gx#stx-pair? _hd1885718894_)
                                (let ((_e1885918899_
                                       (gx#stx-e _hd1885718894_)))
                                  (let ((_hd1886018902_ (##car _e1885918899_))
                                        (_tl1886118904_ (##cdr _e1885918899_)))
                                    (if (gx#stx-pair? _hd1886018902_)
                                        (let ((_e1886218907_
                                               (gx#stx-e _hd1886018902_)))
                                          (let ((_hd1886318910_
                                                 (##car _e1886218907_))
                                                (_tl1886418912_
                                                 (##cdr _e1886218907_)))
                                            (if (gx#stx-pair? _hd1886318910_)
                                                (let ((_e1886518915_
                                                       (gx#stx-e
                                                        _hd1886318910_)))
                                                  (let ((_hd1886618918_
                                                         (##car _e1886518915_))
                                                        (_tl1886718920_
                                                         (##cdr _e1886518915_)))
                                                    (if (gx#stx-null?
                                                         _tl1886718920_)
                                                        (if (gx#stx-pair?
                                                             _tl1886418912_)
                                                            (let ((_e1886818923_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1886418912_)))
                      (let ((_hd1886918926_ (##car _e1886818923_))
                            (_tl1887018928_ (##cdr _e1886818923_)))
                        (if (gx#stx-null? _tl1887018928_)
                            (if (gx#stx-null? _tl1886118904_)
                                (if (gx#stx-pair? _tl1885818896_)
                                    (let ((_e1887118931_
                                           (gx#stx-e _tl1885818896_)))
                                      (let ((_hd1887218934_
                                             (##car _e1887118931_))
                                            (_tl1887318936_
                                             (##cdr _e1887118931_)))
                                        (if (gx#stx-null? _tl1887318936_)
                                            ((lambda (_L18939_
                                                      _L18940_
                                                      _L18941_)
                                               (let* ((_lambda-id18965_
                                                       (make-symbol
                                                        (gx#stx-e _L18834_)
                                                        (gensym '__)))
                                                      (_lambda-id18967_
                                                       (gx#core-quote-syntax__1
                                                        _lambda-id18965_
                                                        (gx#stx-source
                                                         _stx18059_)))
                                                      (_g28501_
                                                       (gx#core-bind-runtime!__0
                                                        _lambda-id18967_))
                                                      (_new-case-lambda-expr18970_
                                                       (gxc#apply-expression-subst
                                                        _L18939_
                                                        _L18941_
                                                        _lambda-id18967_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"lift opt-lambda dispatch "
                                                    (gxc#identifier-symbol
                                                     _L18834_)
                                                    '" => "
                                                    (gxc#identifier-symbol
                                                     _lambda-id18967_))
                                                   (_lp18697_
                                                    (cons (_bind-e__2588725888_
                                                           _L18834_
                                                           _new-case-lambda-expr18970_
                                                           '#f)
                                                          _rest18722_)
                                                    (cons (_bind-e__0__2588925890_
                                                           _lambda-id18967_
                                                           _L18940_)
                                                          _lift118700_)
                                                    _lift218701_
                                                    _bind18702_))))
                                             _hd1887218934_
                                             _hd1886918926_
                                             _hd1886618918_)
                                            (_g1884818878_ _g1884918881_))))
                                    (_g1884818878_ _g1884918881_))
                                (_g1884818878_ _g1884918881_))
                            (_g1884818878_ _g1884918881_))))
                    (_g1884818878_ _g1884918881_))
                (_g1884818878_ _g1884918881_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1884818878_
                                                 _g1884918881_))))
                                        (_g1884818878_ _g1884918881_))))
                                (_g1884818878_ _g1884918881_))))
                        (_g1884818878_ _g1884918881_))))
                (_g1884818878_ _g1884918881_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1884718973_ _L18833_))))
                                       (___kont2813928140_
                                        (lambda (_L18784_ _L18785_)
                                          (_lp18697_
                                           _rest18722_
                                           _lift118700_
                                           _lift218701_
                                           (cons (cons _L18785_
                                                       (cons (gxc#compile-e
                                                              _L18784_)
                                                             '()))
                                                 _bind18702_)))))
                                   (let* ((___match2818428185_
                                           (lambda (_e1874218809_
                                                    _hd1874318812_
                                                    _tl1874418814_
                                                    _e1874518817_
                                                    _hd1874618820_
                                                    _tl1874718822_
                                                    _e1874818825_
                                                    _hd1874918828_
                                                    _tl1875018830_)
                                             (let ((_L18833_ _hd1874918828_)
                                                   (_L18834_ _hd1874618820_))
                                               (if (if (gx#identifier?
                                                        _L18834_)
                                                       (gxc#opt-lambda-expr?
                                                        _L18833_)
                                                       '#f)
                                                   (___kont2813728138_
                                                    _L18833_
                                                    _L18834_)
                                                   (___kont2813928140_
                                                    _hd1874918828_
                                                    _hd1874318812_)))))
                                          (___match2816228163_
                                           (lambda (_e1873118981_
                                                    _hd1873218984_
                                                    _tl1873318986_
                                                    _e1873418989_
                                                    _hd1873518992_
                                                    _tl1873618994_
                                                    _e1873718997_
                                                    _hd1873819000_
                                                    _tl1873919002_)
                                             (let ((_L19005_ _hd1873819000_)
                                                   (_L19006_ _hd1873518992_))
                                               (if (if (gx#identifier?
                                                        _L19006_)
                                                       (gxc#case-lambda-expr?
                                                        _L19005_)
                                                       '#f)
                                                   (___kont2813528136_
                                                    _L19005_
                                                    _L19006_)
                                                   (___match2818428185_
                                                    _e1873118981_
                                                    _hd1873218984_
                                                    _tl1873318986_
                                                    _e1873418989_
                                                    _hd1873518992_
                                                    _tl1873618994_
                                                    _e1873718997_
                                                    _hd1873819000_
                                                    _tl1873919002_))))))
                                     (if (gx#stx-pair? ___stx2813328134_)
                                         (let ((_e1873118981_
                                                (gx#stx-e ___stx2813328134_)))
                                           (let ((_tl1873318986_
                                                  (##cdr _e1873118981_))
                                                 (_hd1873218984_
                                                  (##car _e1873118981_)))
                                             (if (gx#stx-pair? _hd1873218984_)
                                                 (let ((_e1873418989_
                                                        (gx#stx-e
                                                         _hd1873218984_)))
                                                   (let ((_tl1873618994_
                                                          (##cdr _e1873418989_))
                                                         (_hd1873518992_
                                                          (##car _e1873418989_)))
                                                     (if (gx#stx-null?
                                                          _tl1873618994_)
                                                         (if (gx#stx-pair?
                                                              _tl1873318986_)
                                                             (let ((_e1873718997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1873318986_)))
                       (let ((_tl1873919002_ (##cdr _e1873718997_))
                             (_hd1873819000_ (##car _e1873718997_)))
                         (if (gx#stx-null? _tl1873919002_)
                             (___match2816228163_
                              _e1873118981_
                              _hd1873218984_
                              _tl1873318986_
                              _e1873418989_
                              _hd1873518992_
                              _tl1873618994_
                              _e1873718997_
                              _hd1873819000_
                              _tl1873919002_)
                             (_g1872718763_))))
                     (_g1872718763_))
                 (if (gx#stx-pair? _tl1873318986_)
                     (let ((_e1875618776_ (gx#stx-e _tl1873318986_)))
                       (let ((_tl1875818781_ (##cdr _e1875618776_))
                             (_hd1875718779_ (##car _e1875618776_)))
                         (if (gx#stx-null? _tl1875818781_)
                             (___kont2813928140_ _hd1875718779_ _hd1873218984_)
                             (_g1872718763_))))
                     (_g1872718763_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1873318986_)
                                                     (let ((_e1875618776_
                                                            (gx#stx-e
                                                             _tl1873318986_)))
                                                       (let ((_tl1875818781_
                                                              (##cdr _e1875618776_))
                                                             (_hd1875718779_
                                                              (##car _e1875618776_)))
                                                         (if (gx#stx-null?
                                                              _tl1875818781_)
                                                             (___kont2813928140_
                                                              _hd1875718779_
                                                              _hd1873218984_)
                                                             (_g1872718763_))))
                                                     (_g1872718763_)))))
                                         (_g1872718763_))))))))
                       (if (##pair? _rest1870318711_)
                           (let ((_hd1870819101_ (##car _rest1870318711_))
                                 (_tl1870919103_ (##cdr _rest1870318711_)))
                             (let* ((_hd19106_ _hd1870819101_)
                                    (_rest19108_ _tl1870919103_))
                               (_K1870719098_ _rest19108_ _hd19106_)))
                           (_else1870518719_))))))
                (_lift-kw-lambda?18063_
                 (lambda (_bind18619_)
                   (let* ((___stx2820128202_ _bind18619_)
                          (_g1862218639_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx2820128202_))))
                     (let ((___kont2820328204_
                            (lambda (_L18675_ _L18676_)
                              (if (gx#identifier? _L18676_)
                                  (gxc#kw-lambda-expr? _L18675_)
                                  '#f)))
                           (___kont2820528206_ (lambda () '#f)))
                       (if (gx#stx-pair? ___stx2820128202_)
                           (let ((_e1862618651_ (gx#stx-e ___stx2820128202_)))
                             (let ((_tl1862818656_ (##cdr _e1862618651_))
                                   (_hd1862718654_ (##car _e1862618651_)))
                               (if (gx#stx-pair? _hd1862718654_)
                                   (let ((_e1862918659_
                                          (gx#stx-e _hd1862718654_)))
                                     (let ((_tl1863118664_
                                            (##cdr _e1862918659_))
                                           (_hd1863018662_
                                            (##car _e1862918659_)))
                                       (if (gx#stx-null? _tl1863118664_)
                                           (if (gx#stx-pair? _tl1862818656_)
                                               (let ((_e1863218667_
                                                      (gx#stx-e
                                                       _tl1862818656_)))
                                                 (let ((_tl1863418672_
                                                        (##cdr _e1863218667_))
                                                       (_hd1863318670_
                                                        (##car _e1863218667_)))
                                                   (if (gx#stx-null?
                                                        _tl1863418672_)
                                                       (___kont2820328204_
                                                        _hd1863318670_
                                                        _hd1863018662_)
                                                       (___kont2820528206_))))
                                               (___kont2820528206_))
                                           (___kont2820528206_))))
                                   (___kont2820528206_))))
                           (___kont2820528206_))))))
                (_lift-kw-lambda-bindings18064_
                 (lambda (_bindings18231_)
                   (let _lp18233_ ((_rest18235_ _bindings18231_)
                                   (_lift118236_ '())
                                   (_lift218237_ '())
                                   (_bind18238_ '()))
                     (let* ((_rest1823918247_ _rest18235_)
                            (_else1824118255_
                             (lambda ()
                               (values (reverse _lift118236_)
                                       (reverse _lift218237_)
                                       (reverse _bind18238_))))
                            (_K1824318607_
                             (lambda (_rest18258_ _hd18259_)
                               (let* ((___stx2823128232_ _hd18259_)
                                      (_g1826218287_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx2823128232_))))
                                 (let ((___kont2823328234_
                                        (lambda (_L18357_ _L18358_)
                                          (let* ((_g1837218425_
                                                  (lambda (_g1837318422_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1837318422_)))
                                                 (_g1837118601_
                                                  (lambda (_g1837318428_)
                                                    (if (gx#stx-pair?
                                                         _g1837318428_)
                                                        (let ((_e1837918430_
                                                               (gx#stx-e
                                                                _g1837318428_)))
                                                          (let ((_hd1838018433_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1837918430_))
                        (_tl1838118435_ (##cdr _e1837918430_)))
                    (if (gx#stx-pair? _tl1838118435_)
                        (let ((_e1838218438_ (gx#stx-e _tl1838118435_)))
                          (let ((_hd1838318441_ (##car _e1838218438_))
                                (_tl1838418443_ (##cdr _e1838218438_)))
                            (if (gx#stx-pair? _hd1838318441_)
                                (let ((_e1838518446_
                                       (gx#stx-e _hd1838318441_)))
                                  (let ((_hd1838618449_ (##car _e1838518446_))
                                        (_tl1838718451_ (##cdr _e1838518446_)))
                                    (if (gx#stx-pair? _hd1838618449_)
                                        (let ((_e1838818454_
                                               (gx#stx-e _hd1838618449_)))
                                          (let ((_hd1838918457_
                                                 (##car _e1838818454_))
                                                (_tl1839018459_
                                                 (##cdr _e1838818454_)))
                                            (if (gx#stx-pair? _hd1838918457_)
                                                (let ((_e1839118462_
                                                       (gx#stx-e
                                                        _hd1838918457_)))
                                                  (let ((_hd1839218465_
                                                         (##car _e1839118462_))
                                                        (_tl1839318467_
                                                         (##cdr _e1839118462_)))
                                                    (if (gx#stx-null?
                                                         _tl1839318467_)
                                                        (if (gx#stx-pair?
                                                             _tl1839018459_)
                                                            (let ((_e1839418470_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1839018459_)))
                      (let ((_hd1839518473_ (##car _e1839418470_))
                            (_tl1839618475_ (##cdr _e1839418470_)))
                        (if (gx#stx-pair? _hd1839518473_)
                            (let ((_e1839718478_ (gx#stx-e _hd1839518473_)))
                              (let ((_hd1839818481_ (##car _e1839718478_))
                                    (_tl1839918483_ (##cdr _e1839718478_)))
                                (if (gx#stx-pair? _tl1839918483_)
                                    (let ((_e1840018486_
                                           (gx#stx-e _tl1839918483_)))
                                      (let ((_hd1840118489_
                                             (##car _e1840018486_))
                                            (_tl1840218491_
                                             (##cdr _e1840018486_)))
                                        (if (gx#stx-pair? _hd1840118489_)
                                            (let ((_e1840318494_
                                                   (gx#stx-e _hd1840118489_)))
                                              (let ((_hd1840418497_
                                                     (##car _e1840318494_))
                                                    (_tl1840518499_
                                                     (##cdr _e1840318494_)))
                                                (if (gx#stx-pair?
                                                     _hd1840418497_)
                                                    (let ((_e1840618502_
                                                           (gx#stx-e
                                                            _hd1840418497_)))
                                                      (let ((_hd1840718505_
                                                             (##car _e1840618502_))
                                                            (_tl1840818507_
                                                             (##cdr _e1840618502_)))
                                                        (if (gx#stx-pair?
                                                             _hd1840718505_)
                                                            (let ((_e1840918510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1840718505_)))
                      (let ((_hd1841018513_ (##car _e1840918510_))
                            (_tl1841118515_ (##cdr _e1840918510_)))
                        (if (gx#stx-null? _tl1841118515_)
                            (if (gx#stx-pair? _tl1840818507_)
                                (let ((_e1841218518_
                                       (gx#stx-e _tl1840818507_)))
                                  (let ((_hd1841318521_ (##car _e1841218518_))
                                        (_tl1841418523_ (##cdr _e1841218518_)))
                                    (if (gx#stx-null? _tl1841418523_)
                                        (if (gx#stx-null? _tl1840518499_)
                                            (if (gx#stx-pair? _tl1840218491_)
                                                (let ((_e1841518526_
                                                       (gx#stx-e
                                                        _tl1840218491_)))
                                                  (let ((_hd1841618529_
                                                         (##car _e1841518526_))
                                                        (_tl1841718531_
                                                         (##cdr _e1841518526_)))
                                                    (if (gx#stx-null?
                                                         _tl1841718531_)
                                                        (if (gx#stx-null?
                                                             _tl1839618475_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1838718451_)
                        (if (gx#stx-pair? _tl1838418443_)
                            (let ((_e1841818534_ (gx#stx-e _tl1838418443_)))
                              (let ((_hd1841918537_ (##car _e1841818534_))
                                    (_tl1842018539_ (##cdr _e1841818534_)))
                                (if (gx#stx-null? _tl1842018539_)
                                    ((lambda (_L18542_
                                              _L18543_
                                              _L18544_
                                              _L18545_
                                              _L18546_)
                                       (let* ((_get-kws-id18586_
                                               (make-symbol
                                                (gx#stx-e _L18358_)
                                                (gensym '__)))
                                              (_get-kws-id18588_
                                               (gx#core-quote-syntax__1
                                                _get-kws-id18586_
                                                (gx#stx-source _stx18059_)))
                                              (_main-id18590_
                                               (make-symbol
                                                (gx#stx-e _L18358_)
                                                (gensym '__)))
                                              (_main-id18592_
                                               (gx#core-quote-syntax__1
                                                _main-id18590_
                                                (gx#stx-source _stx18059_)))
                                              (_g28502_
                                               (gx#core-bind-runtime!__0
                                                _get-kws-id18588_))
                                              (_g28503_
                                               (gx#core-bind-runtime!__0
                                                _main-id18592_))
                                              (_new-kw-dispatch18596_
                                               (gxc#apply-expression-subst
                                                _L18542_
                                                _L18546_
                                                _get-kws-id18588_))
                                              (_new-get-kws18598_
                                               (gxc#apply-expression-subst
                                                _L18543_
                                                _L18545_
                                                _main-id18592_)))
                                         (begin
                                           (gxc#verbose
                                            '"lift kw-lambda dispatch "
                                            (gxc#identifier-symbol _L18358_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _get-kws-id18588_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _main-id18592_))
                                           (_lp18233_
                                            _rest18258_
                                            (cons (_bind-e__2588725888_
                                                   _main-id18592_
                                                   _L18544_
                                                   '#f)
                                                  _lift118236_)
                                            (cons (_bind-e__2588725888_
                                                   _get-kws-id18588_
                                                   _new-get-kws18598_
                                                   '#f)
                                                  _lift218237_)
                                            (cons (_bind-e__2588725888_
                                                   _L18358_
                                                   _new-kw-dispatch18596_
                                                   '#f)
                                                  _bind18238_)))))
                                     _hd1841918537_
                                     _hd1841618529_
                                     _hd1841318521_
                                     _hd1841018513_
                                     _hd1839218465_)
                                    (_g1837218425_ _g1837318428_))))
                            (_g1837218425_ _g1837318428_))
                        (_g1837218425_ _g1837318428_))
                    (_g1837218425_ _g1837318428_))
                (_g1837218425_ _g1837318428_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1837218425_ _g1837318428_))
                                            (_g1837218425_ _g1837318428_))
                                        (_g1837218425_ _g1837318428_))))
                                (_g1837218425_ _g1837318428_))
                            (_g1837218425_ _g1837318428_))))
                    (_g1837218425_ _g1837318428_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1837218425_
                                                     _g1837318428_))))
                                            (_g1837218425_ _g1837318428_))))
                                    (_g1837218425_ _g1837318428_))))
                            (_g1837218425_ _g1837318428_))))
                    (_g1837218425_ _g1837318428_))
                (_g1837218425_ _g1837318428_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1837218425_
                                                 _g1837318428_))))
                                        (_g1837218425_ _g1837318428_))))
                                (_g1837218425_ _g1837318428_))))
                        (_g1837218425_ _g1837318428_))))
                (_g1837218425_ _g1837318428_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1837118601_ _L18357_))))
                                       (___kont2823528236_
                                        (lambda (_L18308_ _L18309_)
                                          (_lp18233_
                                           _rest18258_
                                           _lift118236_
                                           _lift218237_
                                           (cons (cons _L18309_
                                                       (cons _L18308_ '()))
                                                 _bind18238_)))))
                                   (let ((___match2825828259_
                                          (lambda (_e1826618333_
                                                   _hd1826718336_
                                                   _tl1826818338_
                                                   _e1826918341_
                                                   _hd1827018344_
                                                   _tl1827118346_
                                                   _e1827218349_
                                                   _hd1827318352_
                                                   _tl1827418354_)
                                            (let ((_L18357_ _hd1827318352_)
                                                  (_L18358_ _hd1827018344_))
                                              (if (if (gx#identifier? _L18358_)
                                                      (gxc#kw-lambda-expr?
                                                       _L18357_)
                                                      '#f)
                                                  (___kont2823328234_
                                                   _L18357_
                                                   _L18358_)
                                                  (___kont2823528236_
                                                   _hd1827318352_
                                                   _hd1826718336_))))))
                                     (if (gx#stx-pair? ___stx2823128232_)
                                         (let ((_e1826618333_
                                                (gx#stx-e ___stx2823128232_)))
                                           (let ((_tl1826818338_
                                                  (##cdr _e1826618333_))
                                                 (_hd1826718336_
                                                  (##car _e1826618333_)))
                                             (if (gx#stx-pair? _hd1826718336_)
                                                 (let ((_e1826918341_
                                                        (gx#stx-e
                                                         _hd1826718336_)))
                                                   (let ((_tl1827118346_
                                                          (##cdr _e1826918341_))
                                                         (_hd1827018344_
                                                          (##car _e1826918341_)))
                                                     (if (gx#stx-null?
                                                          _tl1827118346_)
                                                         (if (gx#stx-pair?
                                                              _tl1826818338_)
                                                             (let ((_e1827218349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1826818338_)))
                       (let ((_tl1827418354_ (##cdr _e1827218349_))
                             (_hd1827318352_ (##car _e1827218349_)))
                         (if (gx#stx-null? _tl1827418354_)
                             (___match2825828259_
                              _e1826618333_
                              _hd1826718336_
                              _tl1826818338_
                              _e1826918341_
                              _hd1827018344_
                              _tl1827118346_
                              _e1827218349_
                              _hd1827318352_
                              _tl1827418354_)
                             (_g1826218287_))))
                     (_g1826218287_))
                 (if (gx#stx-pair? _tl1826818338_)
                     (let ((_e1828018300_ (gx#stx-e _tl1826818338_)))
                       (let ((_tl1828218305_ (##cdr _e1828018300_))
                             (_hd1828118303_ (##car _e1828018300_)))
                         (if (gx#stx-null? _tl1828218305_)
                             (___kont2823528236_ _hd1828118303_ _hd1826718336_)
                             (_g1826218287_))))
                     (_g1826218287_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1826818338_)
                                                     (let ((_e1828018300_
                                                            (gx#stx-e
                                                             _tl1826818338_)))
                                                       (let ((_tl1828218305_
                                                              (##cdr _e1828018300_))
                                                             (_hd1828118303_
                                                              (##car _e1828018300_)))
                                                         (if (gx#stx-null?
                                                              _tl1828218305_)
                                                             (___kont2823528236_
                                                              _hd1828118303_
                                                              _hd1826718336_)
                                                             (_g1826218287_))))
                                                     (_g1826218287_)))))
                                         (_g1826218287_))))))))
                       (if (##pair? _rest1823918247_)
                           (let ((_hd1824418610_ (##car _rest1823918247_))
                                 (_tl1824518612_ (##cdr _rest1823918247_)))
                             (let* ((_hd18615_ _hd1824418610_)
                                    (_rest18617_ _tl1824518612_))
                               (_K1824318607_ _rest18617_ _hd18615_)))
                           (_else1824118255_)))))))
        (let* ((___stx2827528276_ _stx18059_)
               (_g1806718093_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2827528276_))))
          (let ((___kont2827728278_
                 (lambda (_L18153_ _L18154_)
                   (call-with-parameters
                    (lambda ()
                      (if (ormap1 _lift-kw-lambda?18063_
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1818218185_
                                                     _g1818318187_)
                                              (cons _g1818218185_
                                                    _g1818318187_))
                                            '()
                                            _L18154_)))
                          (let ((_g28504_
                                 (_lift-kw-lambda-bindings18064_
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1818918192_
                                                     _g1819018194_)
                                              (cons _g1818918192_
                                                    _g1819018194_))
                                            '()
                                            _L18154_)))))
                            (begin
                              (let ((_g28505_
                                     (if (##values? _g28504_)
                                         (##vector-length _g28504_)
                                         1)))
                                (if (not (##fx= _g28505_ 3))
                                    (error "Context expects 3 values"
                                           _g28505_)))
                              (let ((_lift118197_ (##vector-ref _g28504_ 0))
                                    (_lift218198_ (##vector-ref _g28504_ 1))
                                    (_hd18199_ (##vector-ref _g28504_ 2)))
                                (let* ((_expr18201_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _hd18199_
                                                     (cons _L18153_ '())))
                                         _stx18059_))
                                       (_expr18203_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _lift218198_
                                                     (cons _expr18201_ '())))
                                         _stx18059_))
                                       (_expr18205_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _lift118197_
                                                     (cons _expr18203_ '())))
                                         _stx18059_)))
                                  (gxc#lift-top-lambda-let-values%
                                   _expr18205_)))))
                          (let ((_g28506_
                                 (_compile-bindings18062_
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1820718210_
                                                     _g1820818212_)
                                              (cons _g1820718210_
                                                    _g1820818212_))
                                            '()
                                            _L18154_)))))
                            (begin
                              (let ((_g28507_
                                     (if (##values? _g28506_)
                                         (##vector-length _g28506_)
                                         1)))
                                (if (not (##fx= _g28507_ 3))
                                    (error "Context expects 3 values"
                                           _g28507_)))
                              (let ((_lift118215_ (##vector-ref _g28506_ 0))
                                    (_lift218216_ (##vector-ref _g28506_ 1))
                                    (_hd18217_ (##vector-ref _g28506_ 2)))
                                (let* ((_body18219_ (gxc#compile-e _L18153_))
                                       (_expr18221_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _hd18217_
                                                     (cons _body18219_ '())))
                                         _stx18059_))
                                       (_expr18223_
                                        (if (null? _lift218216_)
                                            _expr18221_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift218216_
                                                         (cons _expr18221_
                                                               '())))
                                             _stx18059_)))
                                       (_expr18225_
                                        (if (null? _lift118215_)
                                            _expr18223_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift118215_
                                                         (cons _expr18223_
                                                               '())))
                                             _stx18059_))))
                                  _expr18225_))))))
                    gx#current-expander-context
                    (let ((__obj28480 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj28480)
                        __obj28480)))))
                (___kont2828128282_
                 (lambda () (gxc#xform-let-values% _stx18059_))))
            (let ((___match2830228303_
                   (lambda (_e1807118105_
                            _hd1807218108_
                            _tl1807318110_
                            _e1807418113_
                            _hd1807518116_
                            _tl1807618118_
                            ___splice2827928280_
                            _target1807718121_
                            _tl1807918123_)
                     (letrec ((_loop1808018126_
                               (lambda (_hd1807818129_ _bind1808418131_)
                                 (if (gx#stx-pair? _hd1807818129_)
                                     (let ((_e1808118134_
                                            (gx#stx-e _hd1807818129_)))
                                       (let ((_lp-tl1808318139_
                                              (##cdr _e1808118134_))
                                             (_lp-hd1808218137_
                                              (##car _e1808118134_)))
                                         (_loop1808018126_
                                          _lp-tl1808318139_
                                          (cons _lp-hd1808218137_
                                                _bind1808418131_))))
                                     (let ((_bind1808518142_
                                            (reverse _bind1808418131_)))
                                       (if (gx#stx-pair? _tl1807618118_)
                                           (let ((_e1808618145_
                                                  (gx#stx-e _tl1807618118_)))
                                             (let ((_tl1808818150_
                                                    (##cdr _e1808618145_))
                                                   (_hd1808718148_
                                                    (##car _e1808618145_)))
                                               (if (gx#stx-null?
                                                    _tl1808818150_)
                                                   (let ((_L18153_
                                                          _hd1808718148_)
                                                         (_L18154_
                                                          _bind1808518142_))
                                                     (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr1 (lambda (_g1817418177_ _g1817518179_)
                                     (cons _g1817418177_ _g1817518179_))
                                   '()
                                   _L18154_)))
                 (___kont2827728278_ _L18153_ _L18154_)
                 (___kont2828128282_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont2828128282_))))
                                           (___kont2828128282_)))))))
                       (_loop1808018126_ _target1807718121_ '())))))
              (if (gx#stx-pair? ___stx2827528276_)
                  (let ((_e1807118105_ (gx#stx-e ___stx2827528276_)))
                    (let ((_tl1807318110_ (##cdr _e1807118105_))
                          (_hd1807218108_ (##car _e1807118105_)))
                      (if (gx#stx-pair? _tl1807318110_)
                          (let ((_e1807418113_ (gx#stx-e _tl1807318110_)))
                            (let ((_tl1807618118_ (##cdr _e1807418113_))
                                  (_hd1807518116_ (##car _e1807418113_)))
                              (if (gx#stx-pair/null? _hd1807518116_)
                                  (let ((___splice2827928280_
                                         (gx#syntax-split-splice
                                          _hd1807518116_
                                          '0)))
                                    (let ((_tl1807918123_
                                           (##vector-ref
                                            ___splice2827928280_
                                            '1))
                                          (_target1807718121_
                                           (##vector-ref
                                            ___splice2827928280_
                                            '0)))
                                      (if (gx#stx-null? _tl1807918123_)
                                          (___match2830228303_
                                           _e1807118105_
                                           _hd1807218108_
                                           _tl1807318110_
                                           _e1807418113_
                                           _hd1807518116_
                                           _tl1807618118_
                                           ___splice2827928280_
                                           _target1807718121_
                                           _tl1807918123_)
                                          (___kont2828128282_))))
                                  (___kont2828128282_))))
                          (___kont2828128282_))))
                  (___kont2828128282_))))))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx17203_)
      (letrec* ((_bind-e__2589225893_
                 (lambda (_id18043_ _expr18044_ _compile?18045_)
                   (cons (cons _id18043_ '())
                         (cons (if _compile?18045_
                                   (gxc#compile-e _expr18044_)
                                   _expr18044_)
                               '()))))
                (_bind-e__0__2589425895_
                 (lambda (_id18050_ _expr18051_)
                   (let ((_compile?18053_ '#t))
                     (_bind-e__2589225893_
                      _id18050_
                      _expr18051_
                      _compile?18053_))))
                (_bind-e17205_
                 (lambda _g28509_
                   (let ((_g28508_ (length _g28509_)))
                     (cond ((##fx= _g28508_ 2)
                            (apply _bind-e__0__2589425895_ _g28509_))
                           ((##fx= _g28508_ 3)
                            (apply _bind-e__2589225893_ _g28509_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g28509_))))))
                (_compile-bindings17206_
                 (lambda (_rest17341_)
                   (let _lp17343_ ((_rest17345_ _rest17341_) (_bind17346_ '()))
                     (let* ((_rest1734717355_ _rest17345_)
                            (_else1734917363_
                             (lambda () (reverse _bind17346_)))
                            (_K1735118030_
                             (lambda (_rest17366_ _hd17367_)
                               (let* ((___stx2832528326_ _hd17367_)
                                      (_g1737217419_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx2832528326_))))
                                 (let ((___kont2832728328_
                                        (lambda (_L17937_ _L17938_)
                                          (let* ((___stx2830528306_ _L17937_)
                                                 (_g1795317967_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx2830528306_))))
                                            (let ((___kont2830728308_
                                                   (lambda (_L18015_)
                                                     (_lp17343_
                                                      _rest17366_
                                                      (cons (_bind-e__2589225893_
                                                             _L17938_
                                                             _L17937_
                                                             '#f)
                                                            _bind17346_))))
                                                  (___kont2830928310_
                                                   (lambda (_L17980_)
                                                     (let ((_g28510_
                                                            (gxc#lift-case-lambda-clauses__%
                                                             _stx17203_
                                                             _L17938_
                                                             _L17980_
                                                             '#t)))
                                                       (begin
                                                         (let ((_g28511_
                                                                (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g28510_)
                            (##vector-length _g28510_)
                            1)))
                   (if (not (##fx= _g28511_ 3))
                       (error "Context expects 3 values" _g28511_)))
                 (let ((_ids17990_ (##vector-ref _g28510_ 0))
                       (_impls17991_ (##vector-ref _g28510_ 1))
                       (_clauses17992_ (##vector-ref _g28510_ 2)))
                   (let* ((_g28512_
                           (for-each gx#core-bind-runtime! _ids17990_))
                          (_xbind17995_
                           (map _bind-e17205_ _ids17990_ _impls17991_))
                          (_expr*17997_
                           (gxc#xform-wrap-source
                            (cons '%#case-lambda _clauses17992_)
                            (gx#datum->syntax__0 '#f 'case-lambda-expr)))
                          (_bind*17999_
                           (_bind-e__2589225893_ _L17938_ _expr*17997_ '#f)))
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#identifier-symbol _L17938_)
                        '" => "
                        (map gxc#identifier-symbol _ids17990_))
                       (_lp17343_
                        _rest17366_
                        (cons _bind*17999_
                              (foldl1 cons _bind17346_ _xbind17995_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((___match2831628317_
                                                     (lambda (_e1795618007_
                                                              _hd1795718010_
                                                              _tl1795818012_)
                                                       (let ((_L18015_
                                                              _tl1795818012_))
                                                         (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L18015_)
                     (___kont2830728308_ _L18015_)
                     (___kont2830928310_ _tl1795818012_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx2830528306_)
                                                    (let ((_e1795618007_
                                                           (gx#stx-e
                                                            ___stx2830528306_)))
                                                      (let ((_tl1795818012_
                                                             (##cdr _e1795618007_))
                                                            (_hd1795718010_
                                                             (##car _e1795618007_)))
                                                        (___match2831628317_
                                                         _e1795618007_
                                                         _hd1795718010_
                                                         _tl1795818012_)))
                                                    (_g1795317967_)))))))
                                       (___kont2832928330_
                                        (lambda (_L17765_ _L17766_)
                                          (let* ((_g1778017810_
                                                  (lambda (_g1778117807_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1778117807_)))
                                                 (_g1777917905_
                                                  (lambda (_g1778117813_)
                                                    (if (gx#stx-pair?
                                                         _g1778117813_)
                                                        (let ((_e1778517815_
                                                               (gx#stx-e
                                                                _g1778117813_)))
                                                          (let ((_hd1778617818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1778517815_))
                        (_tl1778717820_ (##cdr _e1778517815_)))
                    (if (gx#stx-pair? _tl1778717820_)
                        (let ((_e1778817823_ (gx#stx-e _tl1778717820_)))
                          (let ((_hd1778917826_ (##car _e1778817823_))
                                (_tl1779017828_ (##cdr _e1778817823_)))
                            (if (gx#stx-pair? _hd1778917826_)
                                (let ((_e1779117831_
                                       (gx#stx-e _hd1778917826_)))
                                  (let ((_hd1779217834_ (##car _e1779117831_))
                                        (_tl1779317836_ (##cdr _e1779117831_)))
                                    (if (gx#stx-pair? _hd1779217834_)
                                        (let ((_e1779417839_
                                               (gx#stx-e _hd1779217834_)))
                                          (let ((_hd1779517842_
                                                 (##car _e1779417839_))
                                                (_tl1779617844_
                                                 (##cdr _e1779417839_)))
                                            (if (gx#stx-pair? _hd1779517842_)
                                                (let ((_e1779717847_
                                                       (gx#stx-e
                                                        _hd1779517842_)))
                                                  (let ((_hd1779817850_
                                                         (##car _e1779717847_))
                                                        (_tl1779917852_
                                                         (##cdr _e1779717847_)))
                                                    (if (gx#stx-null?
                                                         _tl1779917852_)
                                                        (if (gx#stx-pair?
                                                             _tl1779617844_)
                                                            (let ((_e1780017855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1779617844_)))
                      (let ((_hd1780117858_ (##car _e1780017855_))
                            (_tl1780217860_ (##cdr _e1780017855_)))
                        (if (gx#stx-null? _tl1780217860_)
                            (if (gx#stx-null? _tl1779317836_)
                                (if (gx#stx-pair? _tl1779017828_)
                                    (let ((_e1780317863_
                                           (gx#stx-e _tl1779017828_)))
                                      (let ((_hd1780417866_
                                             (##car _e1780317863_))
                                            (_tl1780517868_
                                             (##cdr _e1780317863_)))
                                        (if (gx#stx-null? _tl1780517868_)
                                            ((lambda (_L17871_
                                                      _L17872_
                                                      _L17873_)
                                               (let* ((_lambda-id17897_
                                                       (make-symbol
                                                        (gx#stx-e _L17766_)
                                                        (gensym '__)))
                                                      (_lambda-id17899_
                                                       (gx#core-quote-syntax__1
                                                        _lambda-id17897_
                                                        (gx#stx-source
                                                         _stx17203_)))
                                                      (_g28513_
                                                       (gx#core-bind-runtime!__0
                                                        _lambda-id17899_))
                                                      (_new-case-lambda-expr17902_
                                                       (gxc#apply-expression-subst
                                                        _L17871_
                                                        _L17873_
                                                        _lambda-id17899_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"lift opt-lambda dispatch "
                                                    (gxc#identifier-symbol
                                                     _L17766_)
                                                    '" => "
                                                    (gxc#identifier-symbol
                                                     _lambda-id17899_))
                                                   (_lp17343_
                                                    (cons (_bind-e__2589225893_
                                                           _L17766_
                                                           _new-case-lambda-expr17902_
                                                           '#f)
                                                          _rest17366_)
                                                    (cons (_bind-e__0__2589425895_
                                                           _lambda-id17899_
                                                           _L17872_)
                                                          _bind17346_)))))
                                             _hd1780417866_
                                             _hd1780117858_
                                             _hd1779817850_)
                                            (_g1778017810_ _g1778117813_))))
                                    (_g1778017810_ _g1778117813_))
                                (_g1778017810_ _g1778117813_))
                            (_g1778017810_ _g1778117813_))))
                    (_g1778017810_ _g1778117813_))
                (_g1778017810_ _g1778117813_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1778017810_
                                                 _g1778117813_))))
                                        (_g1778017810_ _g1778117813_))))
                                (_g1778017810_ _g1778117813_))))
                        (_g1778017810_ _g1778117813_))))
                (_g1778017810_ _g1778117813_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1777917905_ _L17765_))))
                                       (___kont2833128332_
                                        (lambda (_L17489_ _L17490_)
                                          (let* ((_g1750417557_
                                                  (lambda (_g1750517554_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1750517554_)))
                                                 (_g1750317733_
                                                  (lambda (_g1750517560_)
                                                    (if (gx#stx-pair?
                                                         _g1750517560_)
                                                        (let ((_e1751117562_
                                                               (gx#stx-e
                                                                _g1750517560_)))
                                                          (let ((_hd1751217565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1751117562_))
                        (_tl1751317567_ (##cdr _e1751117562_)))
                    (if (gx#stx-pair? _tl1751317567_)
                        (let ((_e1751417570_ (gx#stx-e _tl1751317567_)))
                          (let ((_hd1751517573_ (##car _e1751417570_))
                                (_tl1751617575_ (##cdr _e1751417570_)))
                            (if (gx#stx-pair? _hd1751517573_)
                                (let ((_e1751717578_
                                       (gx#stx-e _hd1751517573_)))
                                  (let ((_hd1751817581_ (##car _e1751717578_))
                                        (_tl1751917583_ (##cdr _e1751717578_)))
                                    (if (gx#stx-pair? _hd1751817581_)
                                        (let ((_e1752017586_
                                               (gx#stx-e _hd1751817581_)))
                                          (let ((_hd1752117589_
                                                 (##car _e1752017586_))
                                                (_tl1752217591_
                                                 (##cdr _e1752017586_)))
                                            (if (gx#stx-pair? _hd1752117589_)
                                                (let ((_e1752317594_
                                                       (gx#stx-e
                                                        _hd1752117589_)))
                                                  (let ((_hd1752417597_
                                                         (##car _e1752317594_))
                                                        (_tl1752517599_
                                                         (##cdr _e1752317594_)))
                                                    (if (gx#stx-null?
                                                         _tl1752517599_)
                                                        (if (gx#stx-pair?
                                                             _tl1752217591_)
                                                            (let ((_e1752617602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1752217591_)))
                      (let ((_hd1752717605_ (##car _e1752617602_))
                            (_tl1752817607_ (##cdr _e1752617602_)))
                        (if (gx#stx-pair? _hd1752717605_)
                            (let ((_e1752917610_ (gx#stx-e _hd1752717605_)))
                              (let ((_hd1753017613_ (##car _e1752917610_))
                                    (_tl1753117615_ (##cdr _e1752917610_)))
                                (if (gx#stx-pair? _tl1753117615_)
                                    (let ((_e1753217618_
                                           (gx#stx-e _tl1753117615_)))
                                      (let ((_hd1753317621_
                                             (##car _e1753217618_))
                                            (_tl1753417623_
                                             (##cdr _e1753217618_)))
                                        (if (gx#stx-pair? _hd1753317621_)
                                            (let ((_e1753517626_
                                                   (gx#stx-e _hd1753317621_)))
                                              (let ((_hd1753617629_
                                                     (##car _e1753517626_))
                                                    (_tl1753717631_
                                                     (##cdr _e1753517626_)))
                                                (if (gx#stx-pair?
                                                     _hd1753617629_)
                                                    (let ((_e1753817634_
                                                           (gx#stx-e
                                                            _hd1753617629_)))
                                                      (let ((_hd1753917637_
                                                             (##car _e1753817634_))
                                                            (_tl1754017639_
                                                             (##cdr _e1753817634_)))
                                                        (if (gx#stx-pair?
                                                             _hd1753917637_)
                                                            (let ((_e1754117642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1753917637_)))
                      (let ((_hd1754217645_ (##car _e1754117642_))
                            (_tl1754317647_ (##cdr _e1754117642_)))
                        (if (gx#stx-null? _tl1754317647_)
                            (if (gx#stx-pair? _tl1754017639_)
                                (let ((_e1754417650_
                                       (gx#stx-e _tl1754017639_)))
                                  (let ((_hd1754517653_ (##car _e1754417650_))
                                        (_tl1754617655_ (##cdr _e1754417650_)))
                                    (if (gx#stx-null? _tl1754617655_)
                                        (if (gx#stx-null? _tl1753717631_)
                                            (if (gx#stx-pair? _tl1753417623_)
                                                (let ((_e1754717658_
                                                       (gx#stx-e
                                                        _tl1753417623_)))
                                                  (let ((_hd1754817661_
                                                         (##car _e1754717658_))
                                                        (_tl1754917663_
                                                         (##cdr _e1754717658_)))
                                                    (if (gx#stx-null?
                                                         _tl1754917663_)
                                                        (if (gx#stx-null?
                                                             _tl1752817607_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1751917583_)
                        (if (gx#stx-pair? _tl1751617575_)
                            (let ((_e1755017666_ (gx#stx-e _tl1751617575_)))
                              (let ((_hd1755117669_ (##car _e1755017666_))
                                    (_tl1755217671_ (##cdr _e1755017666_)))
                                (if (gx#stx-null? _tl1755217671_)
                                    ((lambda (_L17674_
                                              _L17675_
                                              _L17676_
                                              _L17677_
                                              _L17678_)
                                       (let* ((_get-kws-id17718_
                                               (make-symbol
                                                (gx#stx-e _L17490_)
                                                (gensym '__)))
                                              (_get-kws-id17720_
                                               (gx#core-quote-syntax__1
                                                _get-kws-id17718_
                                                (gx#stx-source _stx17203_)))
                                              (_main-id17722_
                                               (make-symbol
                                                (gx#stx-e _L17490_)
                                                (gensym '__)))
                                              (_main-id17724_
                                               (gx#core-quote-syntax__1
                                                _main-id17722_
                                                (gx#stx-source _stx17203_)))
                                              (_g28514_
                                               (gx#core-bind-runtime!__0
                                                _get-kws-id17720_))
                                              (_g28515_
                                               (gx#core-bind-runtime!__0
                                                _main-id17724_))
                                              (_new-kw-dispatch17728_
                                               (gxc#apply-expression-subst
                                                _L17674_
                                                _L17678_
                                                _get-kws-id17720_))
                                              (_new-get-kws17730_
                                               (gxc#apply-expression-subst
                                                _L17675_
                                                _L17677_
                                                _main-id17724_)))
                                         (begin
                                           (gxc#verbose
                                            '"lift kw-lambda dispatch "
                                            (gxc#identifier-symbol _L17490_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _get-kws-id17720_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _main-id17724_))
                                           (_lp17343_
                                            (cons (_bind-e__2589225893_
                                                   _main-id17724_
                                                   _L17676_
                                                   '#f)
                                                  (cons (_bind-e__2589225893_
                                                         _get-kws-id17720_
                                                         _new-get-kws17730_
                                                         '#f)
                                                        (cons (_bind-e__2589225893_
                                                               _L17490_
                                                               _new-kw-dispatch17728_
                                                               '#f)
                                                              _rest17366_)))
                                            _bind17346_))))
                                     _hd1755117669_
                                     _hd1754817661_
                                     _hd1754517653_
                                     _hd1754217645_
                                     _hd1752417597_)
                                    (_g1750417557_ _g1750517560_))))
                            (_g1750417557_ _g1750517560_))
                        (_g1750417557_ _g1750517560_))
                    (_g1750417557_ _g1750517560_))
                (_g1750417557_ _g1750517560_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1750417557_ _g1750517560_))
                                            (_g1750417557_ _g1750517560_))
                                        (_g1750417557_ _g1750517560_))))
                                (_g1750417557_ _g1750517560_))
                            (_g1750417557_ _g1750517560_))))
                    (_g1750417557_ _g1750517560_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1750417557_
                                                     _g1750517560_))))
                                            (_g1750417557_ _g1750517560_))))
                                    (_g1750417557_ _g1750517560_))))
                            (_g1750417557_ _g1750517560_))))
                    (_g1750417557_ _g1750517560_))
                (_g1750417557_ _g1750517560_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1750417557_
                                                 _g1750517560_))))
                                        (_g1750417557_ _g1750517560_))))
                                (_g1750417557_ _g1750517560_))))
                        (_g1750417557_ _g1750517560_))))
                (_g1750417557_ _g1750517560_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1750317733_ _L17489_))))
                                       (___kont2833328334_
                                        (lambda (_L17440_ _L17441_)
                                          (_lp17343_
                                           _rest17366_
                                           (cons (cons _L17441_
                                                       (cons (gxc#compile-e
                                                              _L17440_)
                                                             '()))
                                                 _bind17346_)))))
                                   (let* ((___match2840028401_
                                           (lambda (_e1739817465_
                                                    _hd1739917468_
                                                    _tl1740017470_
                                                    _e1740117473_
                                                    _hd1740217476_
                                                    _tl1740317478_
                                                    _e1740417481_
                                                    _hd1740517484_
                                                    _tl1740617486_)
                                             (let ((_L17489_ _hd1740517484_)
                                                   (_L17490_ _hd1740217476_))
                                               (if (if (gx#identifier?
                                                        _L17490_)
                                                       (gxc#kw-lambda-expr?
                                                        _L17489_)
                                                       '#f)
                                                   (___kont2833128332_
                                                    _L17489_
                                                    _L17490_)
                                                   (___kont2833328334_
                                                    _hd1740517484_
                                                    _hd1739917468_)))))
                                          (___match2837828379_
                                           (lambda (_e1738717741_
                                                    _hd1738817744_
                                                    _tl1738917746_
                                                    _e1739017749_
                                                    _hd1739117752_
                                                    _tl1739217754_
                                                    _e1739317757_
                                                    _hd1739417760_
                                                    _tl1739517762_)
                                             (let ((_L17765_ _hd1739417760_)
                                                   (_L17766_ _hd1739117752_))
                                               (if (if (gx#identifier?
                                                        _L17766_)
                                                       (gxc#opt-lambda-expr?
                                                        _L17765_)
                                                       '#f)
                                                   (___kont2832928330_
                                                    _L17765_
                                                    _L17766_)
                                                   (___match2840028401_
                                                    _e1738717741_
                                                    _hd1738817744_
                                                    _tl1738917746_
                                                    _e1739017749_
                                                    _hd1739117752_
                                                    _tl1739217754_
                                                    _e1739317757_
                                                    _hd1739417760_
                                                    _tl1739517762_)))))
                                          (___match2835628357_
                                           (lambda (_e1737617913_
                                                    _hd1737717916_
                                                    _tl1737817918_
                                                    _e1737917921_
                                                    _hd1738017924_
                                                    _tl1738117926_
                                                    _e1738217929_
                                                    _hd1738317932_
                                                    _tl1738417934_)
                                             (let ((_L17937_ _hd1738317932_)
                                                   (_L17938_ _hd1738017924_))
                                               (if (if (gx#identifier?
                                                        _L17938_)
                                                       (gxc#case-lambda-expr?
                                                        _L17937_)
                                                       '#f)
                                                   (___kont2832728328_
                                                    _L17937_
                                                    _L17938_)
                                                   (___match2837828379_
                                                    _e1737617913_
                                                    _hd1737717916_
                                                    _tl1737817918_
                                                    _e1737917921_
                                                    _hd1738017924_
                                                    _tl1738117926_
                                                    _e1738217929_
                                                    _hd1738317932_
                                                    _tl1738417934_))))))
                                     (if (gx#stx-pair? ___stx2832528326_)
                                         (let ((_e1737617913_
                                                (gx#stx-e ___stx2832528326_)))
                                           (let ((_tl1737817918_
                                                  (##cdr _e1737617913_))
                                                 (_hd1737717916_
                                                  (##car _e1737617913_)))
                                             (if (gx#stx-pair? _hd1737717916_)
                                                 (let ((_e1737917921_
                                                        (gx#stx-e
                                                         _hd1737717916_)))
                                                   (let ((_tl1738117926_
                                                          (##cdr _e1737917921_))
                                                         (_hd1738017924_
                                                          (##car _e1737917921_)))
                                                     (if (gx#stx-null?
                                                          _tl1738117926_)
                                                         (if (gx#stx-pair?
                                                              _tl1737817918_)
                                                             (let ((_e1738217929_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1737817918_)))
                       (let ((_tl1738417934_ (##cdr _e1738217929_))
                             (_hd1738317932_ (##car _e1738217929_)))
                         (if (gx#stx-null? _tl1738417934_)
                             (___match2835628357_
                              _e1737617913_
                              _hd1737717916_
                              _tl1737817918_
                              _e1737917921_
                              _hd1738017924_
                              _tl1738117926_
                              _e1738217929_
                              _hd1738317932_
                              _tl1738417934_)
                             (_g1737217419_))))
                     (_g1737217419_))
                 (if (gx#stx-pair? _tl1737817918_)
                     (let ((_e1741217432_ (gx#stx-e _tl1737817918_)))
                       (let ((_tl1741417437_ (##cdr _e1741217432_))
                             (_hd1741317435_ (##car _e1741217432_)))
                         (if (gx#stx-null? _tl1741417437_)
                             (___kont2833328334_ _hd1741317435_ _hd1737717916_)
                             (_g1737217419_))))
                     (_g1737217419_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1737817918_)
                                                     (let ((_e1741217432_
                                                            (gx#stx-e
                                                             _tl1737817918_)))
                                                       (let ((_tl1741417437_
                                                              (##cdr _e1741217432_))
                                                             (_hd1741317435_
                                                              (##car _e1741217432_)))
                                                         (if (gx#stx-null?
                                                              _tl1741417437_)
                                                             (___kont2833328334_
                                                              _hd1741317435_
                                                              _hd1737717916_)
                                                             (_g1737217419_))))
                                                     (_g1737217419_)))))
                                         (_g1737217419_))))))))
                       (if (##pair? _rest1734717355_)
                           (let ((_hd1735218033_ (##car _rest1734717355_))
                                 (_tl1735318035_ (##cdr _rest1734717355_)))
                             (let* ((_hd18038_ _hd1735218033_)
                                    (_rest18040_ _tl1735318035_))
                               (_K1735118030_ _rest18040_ _hd18038_)))
                           (_else1734917363_)))))))
        (let* ((___stx2841728418_ _stx17203_)
               (_g1720917236_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2841728418_))))
          (let ((___kont2841928420_
                 (lambda (_L17296_ _L17297_ _L17298_)
                   (call-with-parameters
                    (lambda ()
                      (let ((_hd17335_
                             (_compile-bindings17206_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g1732717330_ _g1732817332_)
                                          (cons _g1732717330_ _g1732817332_))
                                        '()
                                        _L17297_))))
                            (_body17336_ (gxc#compile-e _L17296_)))
                        (gxc#xform-wrap-source
                         (cons _L17298_
                               (cons _hd17335_ (cons _body17336_ '())))
                         _stx17203_)))
                    gx#current-expander-context
                    (let ((__obj28481 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj28481)
                        __obj28481)))))
                (___kont2842328424_
                 (lambda () (gxc#xform-let-values% _stx17203_))))
            (let ((___match2844428445_
                   (lambda (_e1721417248_
                            _hd1721517251_
                            _tl1721617253_
                            _e1721717256_
                            _hd1721817259_
                            _tl1721917261_
                            ___splice2842128422_
                            _target1722017264_
                            _tl1722217266_)
                     (letrec ((_loop1722317269_
                               (lambda (_hd1722117272_ _bind1722717274_)
                                 (if (gx#stx-pair? _hd1722117272_)
                                     (let ((_e1722417277_
                                            (gx#stx-e _hd1722117272_)))
                                       (let ((_lp-tl1722617282_
                                              (##cdr _e1722417277_))
                                             (_lp-hd1722517280_
                                              (##car _e1722417277_)))
                                         (_loop1722317269_
                                          _lp-tl1722617282_
                                          (cons _lp-hd1722517280_
                                                _bind1722717274_))))
                                     (let ((_bind1722817285_
                                            (reverse _bind1722717274_)))
                                       (if (gx#stx-pair? _tl1721917261_)
                                           (let ((_e1722917288_
                                                  (gx#stx-e _tl1721917261_)))
                                             (let ((_tl1723117293_
                                                    (##cdr _e1722917288_))
                                                   (_hd1723017291_
                                                    (##car _e1722917288_)))
                                               (if (gx#stx-null?
                                                    _tl1723117293_)
                                                   (let ((_L17296_
                                                          _hd1723017291_)
                                                         (_L17297_
                                                          _bind1722817285_)
                                                         (_L17298_
                                                          _hd1721517251_))
                                                     (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr1 (lambda (_g1731917322_ _g1732017324_)
                                     (cons _g1731917322_ _g1732017324_))
                                   '()
                                   _L17297_)))
                 (___kont2841928420_ _L17296_ _L17297_ _L17298_)
                 (___kont2842328424_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont2842328424_))))
                                           (___kont2842328424_)))))))
                       (_loop1722317269_ _target1722017264_ '())))))
              (if (gx#stx-pair? ___stx2841728418_)
                  (let ((_e1721417248_ (gx#stx-e ___stx2841728418_)))
                    (let ((_tl1721617253_ (##cdr _e1721417248_))
                          (_hd1721517251_ (##car _e1721417248_)))
                      (if (gx#stx-pair? _tl1721617253_)
                          (let ((_e1721717256_ (gx#stx-e _tl1721617253_)))
                            (let ((_tl1721917261_ (##cdr _e1721717256_))
                                  (_hd1721817259_ (##car _e1721717256_)))
                              (if (gx#stx-pair/null? _hd1721817259_)
                                  (let ((___splice2842128422_
                                         (gx#syntax-split-splice
                                          _hd1721817259_
                                          '0)))
                                    (let ((_tl1722217266_
                                           (##vector-ref
                                            ___splice2842128422_
                                            '1))
                                          (_target1722017264_
                                           (##vector-ref
                                            ___splice2842128422_
                                            '0)))
                                      (if (gx#stx-null? _tl1722217266_)
                                          (___match2844428445_
                                           _e1721417248_
                                           _hd1721517251_
                                           _tl1721617253_
                                           _e1721717256_
                                           _hd1721817259_
                                           _tl1721917261_
                                           ___splice2842128422_
                                           _target1722017264_
                                           _tl1722217266_)
                                          (___kont2842328424_))))
                                  (___kont2842328424_))))
                          (___kont2842328424_))))
                  (___kont2842328424_))))))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind17121_)
      (let* ((___stx2844728448_ _bind17121_)
             (_g1712417141_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2844728448_))))
        (let ((___kont2844928450_
               (lambda (_L17177_ _L17178_)
                 (if (gx#identifier? _L17178_)
                     (let ((_$e17194_ (gxc#case-lambda-expr? _L17177_)))
                       (if _$e17194_
                           _$e17194_
                           (let ((_$e17197_ (gxc#opt-lambda-expr? _L17177_)))
                             (if _$e17197_
                                 _$e17197_
                                 (gxc#kw-lambda-expr? _L17177_)))))
                     '#f)))
              (___kont2845128452_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2844728448_)
              (let ((_e1712817153_ (gx#stx-e ___stx2844728448_)))
                (let ((_tl1713017158_ (##cdr _e1712817153_))
                      (_hd1712917156_ (##car _e1712817153_)))
                  (if (gx#stx-pair? _hd1712917156_)
                      (let ((_e1713117161_ (gx#stx-e _hd1712917156_)))
                        (let ((_tl1713317166_ (##cdr _e1713117161_))
                              (_hd1713217164_ (##car _e1713117161_)))
                          (if (gx#stx-null? _tl1713317166_)
                              (if (gx#stx-pair? _tl1713017158_)
                                  (let ((_e1713417169_
                                         (gx#stx-e _tl1713017158_)))
                                    (let ((_tl1713617174_
                                           (##cdr _e1713417169_))
                                          (_hd1713517172_
                                           (##car _e1713417169_)))
                                      (if (gx#stx-null? _tl1713617174_)
                                          (___kont2844928450_
                                           _hd1713517172_
                                           _hd1713217164_)
                                          (___kont2845128452_))))
                                  (___kont2845128452_))
                              (___kont2845128452_))))
                      (___kont2845128452_))))
              (___kont2845128452_)))))))
