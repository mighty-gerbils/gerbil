(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&collect-type-info
    (##make-promise
     (lambda ()
       (let ((_tbl25901_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl25901_ (force gxc#&void))
           (table-set! _tbl25901_ '%#begin gxc#collect-begin%)
           (table-set! _tbl25901_ '%#begin-syntax gxc#collect-begin-syntax%)
           (table-set! _tbl25901_ '%#module gxc#collect-module%)
           (table-set!
            _tbl25901_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set!
            _tbl25901_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl25901_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl25901_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl25901_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl25901_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl25901_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl25901_ '%#call gxc#collect-type-call%)
           (table-set! _tbl25901_ '%#if gxc#collect-operands)
           (table-set! _tbl25901_ '%#set! gxc#collect-body-setq%)
           _tbl25901_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx25894_ . _args25896_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx25894_ _args25896_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (##make-promise
     (lambda ()
       (let ((_tbl25891_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl25891_ (force gxc#&false))
           (table-set! _tbl25891_ '%#begin gxc#basic-expression-type-begin%)
           (table-set!
            _tbl25891_
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%)
           (table-set! _tbl25891_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl25891_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl25891_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl25891_ '%#ref gxc#basic-expression-type-ref%)
           _tbl25891_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx25884_ . _args25886_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx25884_ _args25886_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&lift-top-lambdas
    (##make-promise
     (lambda ()
       (let ((_tbl25881_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl25881_ (force gxc#&basic-xform))
           (table-set!
            _tbl25881_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl25881_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl25881_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl25881_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl25881_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx25874_ . _args25876_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx25874_ _args25876_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#collect-type-define-values%
    (lambda (_stx25730_)
      (let* ((___stx2591425915_ _stx25730_)
             (_g2573325764_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2591425915_))))
        (let ((___kont2591625917_
               (lambda (_L25846_ _L25847_)
                 (let ((_sym25863_ (gxc#identifier-symbol _L25847_)))
                   (begin
                     (if (table-ref
                          (gxc#current-compile-mutators)
                          _sym25863_
                          '#f)
                         (gxc#verbose
                          '"skipping type declaration for mutable binding "
                          _sym25863_)
                         (let ((_type2586425866_
                                (gxc#apply-basic-expression-type _L25846_)))
                           (if _type2586425866_
                               (let ((_type25869_ _type2586425866_))
                                 (gxc#optimizer-declare-type!__0
                                  _sym25863_
                                  _type25869_))
                               '#f)))
                     (gxc#compile-e _L25846_)))))
              (___kont2591825919_
               (lambda (_L25793_ _L25794_) (gxc#compile-e _L25793_))))
          (let ((___match2594725948_
                 (lambda (_e2573725814_
                          _hd2573825817_
                          _tl2573925819_
                          _e2574025822_
                          _hd2574125825_
                          _tl2574225827_
                          _e2574325830_
                          _hd2574425833_
                          _tl2574525835_
                          _e2574625838_
                          _hd2574725841_
                          _tl2574825843_)
                   (let ((_L25846_ _hd2574725841_) (_L25847_ _hd2574425833_))
                     (if (gx#identifier? _L25847_)
                         (___kont2591625917_ _L25846_ _L25847_)
                         (___kont2591825919_
                          _hd2574725841_
                          _hd2574125825_))))))
            (if (gx#stx-pair? ___stx2591425915_)
                (let ((_e2573725814_ (gx#stx-e ___stx2591425915_)))
                  (let ((_tl2573925819_ (##cdr _e2573725814_))
                        (_hd2573825817_ (##car _e2573725814_)))
                    (if (gx#stx-pair? _tl2573925819_)
                        (let ((_e2574025822_ (gx#stx-e _tl2573925819_)))
                          (let ((_tl2574225827_ (##cdr _e2574025822_))
                                (_hd2574125825_ (##car _e2574025822_)))
                            (if (gx#stx-pair? _hd2574125825_)
                                (let ((_e2574325830_
                                       (gx#stx-e _hd2574125825_)))
                                  (let ((_tl2574525835_ (##cdr _e2574325830_))
                                        (_hd2574425833_ (##car _e2574325830_)))
                                    (if (gx#stx-null? _tl2574525835_)
                                        (if (gx#stx-pair? _tl2574225827_)
                                            (let ((_e2574625838_
                                                   (gx#stx-e _tl2574225827_)))
                                              (let ((_tl2574825843_
                                                     (##cdr _e2574625838_))
                                                    (_hd2574725841_
                                                     (##car _e2574625838_)))
                                                (if (gx#stx-null?
                                                     _tl2574825843_)
                                                    (___match2594725948_
                                                     _e2573725814_
                                                     _hd2573825817_
                                                     _tl2573925819_
                                                     _e2574025822_
                                                     _hd2574125825_
                                                     _tl2574225827_
                                                     _e2574325830_
                                                     _hd2574425833_
                                                     _tl2574525835_
                                                     _e2574625838_
                                                     _hd2574725841_
                                                     _tl2574825843_)
                                                    (_g2573325764_))))
                                            (_g2573325764_))
                                        (if (gx#stx-pair? _tl2574225827_)
                                            (let ((_e2575725785_
                                                   (gx#stx-e _tl2574225827_)))
                                              (let ((_tl2575925790_
                                                     (##cdr _e2575725785_))
                                                    (_hd2575825788_
                                                     (##car _e2575725785_)))
                                                (if (gx#stx-null?
                                                     _tl2575925790_)
                                                    (___kont2591825919_
                                                     _hd2575825788_
                                                     _hd2574125825_)
                                                    (_g2573325764_))))
                                            (_g2573325764_)))))
                                (if (gx#stx-pair? _tl2574225827_)
                                    (let ((_e2575725785_
                                           (gx#stx-e _tl2574225827_)))
                                      (let ((_tl2575925790_
                                             (##cdr _e2575725785_))
                                            (_hd2575825788_
                                             (##car _e2575725785_)))
                                        (if (gx#stx-null? _tl2575925790_)
                                            (___kont2591825919_
                                             _hd2575825788_
                                             _hd2574125825_)
                                            (_g2573325764_))))
                                    (_g2573325764_)))))
                        (_g2573325764_))))
                (_g2573325764_)))))))
  (define gxc#collect-type-let-values%
    (lambda (_stx25515_)
      (letrec ((_collect-e25517_
                (lambda (_hd25674_ _expr25675_)
                  (let* ((___stx2597025971_ _hd25674_)
                         (_g2567825688_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx2597025971_))))
                    (let ((___kont2597225973_
                           (lambda (_L25708_)
                             (let ((_sym25719_
                                    (gxc#identifier-symbol _L25708_)))
                               (if (table-ref
                                    (gxc#current-compile-mutators)
                                    _sym25719_
                                    '#f)
                                   (gxc#verbose
                                    '"skipping type declaration for mutable binding "
                                    _sym25719_)
                                   (let ((_type2572025722_
                                          (gxc#apply-basic-expression-type
                                           _expr25675_)))
                                     (if _type2572025722_
                                         (let ((_type25725_ _type2572025722_))
                                           (gxc#optimizer-declare-type!__%
                                            _sym25719_
                                            _type25725_
                                            '#t))
                                         '#f))))))
                          (___kont2597425975_ (lambda () '#!void)))
                      (let ((___match2598325984_
                             (lambda (_e2568125700_
                                      _hd2568225703_
                                      _tl2568325705_)
                               (let ((_L25708_ _hd2568225703_))
                                 (if (gx#identifier? _L25708_)
                                     (___kont2597225973_ _L25708_)
                                     (___kont2597425975_))))))
                        (if (gx#stx-pair? ___stx2597025971_)
                            (let ((_e2568125700_ (gx#stx-e ___stx2597025971_)))
                              (let ((_tl2568325705_ (##cdr _e2568125700_))
                                    (_hd2568225703_ (##car _e2568125700_)))
                                (if (gx#stx-null? _tl2568325705_)
                                    (___match2598325984_
                                     _e2568125700_
                                     _hd2568225703_
                                     _tl2568325705_)
                                    (___kont2597425975_))))
                            (___kont2597425975_))))))))
        (let* ((_g2551925554_
                (lambda (_g2552025551_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2552025551_)))
               (_g2551825671_
                (lambda (_g2552025557_)
                  (if (gx#stx-pair? _g2552025557_)
                      (let ((_e2552425559_ (gx#stx-e _g2552025557_)))
                        (let ((_hd2552525562_ (##car _e2552425559_))
                              (_tl2552625564_ (##cdr _e2552425559_)))
                          (if (gx#stx-pair? _tl2552625564_)
                              (let ((_e2552725567_ (gx#stx-e _tl2552625564_)))
                                (let ((_hd2552825570_ (##car _e2552725567_))
                                      (_tl2552925572_ (##cdr _e2552725567_)))
                                  (if (gx#stx-pair/null? _hd2552825570_)
                                      (let ((_g28499_
                                             (gx#syntax-split-splice
                                              _hd2552825570_
                                              '0)))
                                        (begin
                                          (let ((_g28500_
                                                 (if (##values? _g28499_)
                                                     (##vector-length _g28499_)
                                                     1)))
                                            (if (not (##fx= _g28500_ 2))
                                                (error "Context expects 2 values"
                                                       _g28500_)))
                                          (let ((_target2553025575_
                                                 (##vector-ref _g28499_ 0))
                                                (_tl2553225577_
                                                 (##vector-ref _g28499_ 1)))
                                            (if (gx#stx-null? _tl2553225577_)
                                                (letrec ((_loop2553325580_
                                                          (lambda (_hd2553125583_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr2553725585_
                           _hd2553825587_)
                    (if (gx#stx-pair? _hd2553125583_)
                        (let ((_e2553425590_ (gx#stx-e _hd2553125583_)))
                          (let ((_lp-hd2553525593_ (##car _e2553425590_))
                                (_lp-tl2553625595_ (##cdr _e2553425590_)))
                            (if (gx#stx-pair? _lp-hd2553525593_)
                                (let ((_e2554125598_
                                       (gx#stx-e _lp-hd2553525593_)))
                                  (let ((_hd2554225601_ (##car _e2554125598_))
                                        (_tl2554325603_ (##cdr _e2554125598_)))
                                    (if (gx#stx-pair? _tl2554325603_)
                                        (let ((_e2554425606_
                                               (gx#stx-e _tl2554325603_)))
                                          (let ((_hd2554525609_
                                                 (##car _e2554425606_))
                                                (_tl2554625611_
                                                 (##cdr _e2554425606_)))
                                            (if (gx#stx-null? _tl2554625611_)
                                                (_loop2553325580_
                                                 _lp-tl2553625595_
                                                 (cons _hd2554525609_
                                                       _expr2553725585_)
                                                 (cons _hd2554225601_
                                                       _hd2553825587_))
                                                (_g2551925554_
                                                 _g2552025557_))))
                                        (_g2551925554_ _g2552025557_))))
                                (_g2551925554_ _g2552025557_))))
                        (let ((_expr2553925614_ (reverse _expr2553725585_))
                              (_hd2554025616_ (reverse _hd2553825587_)))
                          (if (gx#stx-pair? _tl2552925572_)
                              (let ((_e2554725619_ (gx#stx-e _tl2552925572_)))
                                (let ((_hd2554825622_ (##car _e2554725619_))
                                      (_tl2554925624_ (##cdr _e2554725619_)))
                                  (if (gx#stx-null? _tl2554925624_)
                                      ((lambda (_L25627_ _L25628_ _L25629_)
                                         (begin
                                           (for-each
                                            _collect-e25517_
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g2564925652_
                                                               _g2565025654_)
                                                        (cons _g2564925652_
                                                              _g2565025654_))
                                                      '()
                                                      _L25629_))
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g2565625659_
                                                               _g2565725661_)
                                                        (cons _g2565625659_
                                                              _g2565725661_))
                                                      '()
                                                      _L25628_)))
                                           (for-each
                                            gxc#compile-e
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g2566325666_
                                                               _g2566425668_)
                                                        (cons _g2566325666_
                                                              _g2566425668_))
                                                      '()
                                                      _L25628_)))
                                           (gxc#compile-e _L25627_)))
                                       _hd2554825622_
                                       _expr2553925614_
                                       _hd2554025616_)
                                      (_g2551925554_ _g2552025557_))))
                              (_g2551925554_ _g2552025557_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2553325580_
                                                   _target2553025575_
                                                   '()
                                                   '()))
                                                (_g2551925554_
                                                 _g2552025557_)))))
                                      (_g2551925554_ _g2552025557_))))
                              (_g2551925554_ _g2552025557_))))
                      (_g2551925554_ _g2552025557_)))))
          (_g2551825671_ _stx25515_)))))
  (define gxc#collect-type-call%
    (lambda (_stx25069_)
      (let* ((___stx2598625987_ _stx25069_)
             (_g2507325175_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2598625987_))))
        (let ((___kont2598825989_
               (lambda (_L25465_ _L25466_ _L25467_ _L25468_ _L25469_)
                 (gxc#optimizer-declare-method!__%
                  (gxc#identifier-symbol _L25468_)
                  (gx#stx-e _L25467_)
                  (gxc#identifier-symbol _L25466_)
                  (gx#stx-e _L25465_))))
              (___kont2599025991_
               (lambda (_L25291_ _L25292_ _L25293_ _L25294_)
                 (gxc#optimizer-declare-method!__%
                  (gxc#identifier-symbol _L25293_)
                  (gx#stx-e _L25292_)
                  (gxc#identifier-symbol _L25291_)
                  '#f)))
              (___kont2599225993_ (lambda () '#!void)))
          (let ((___match2612126122_
                 (lambda (_e2508025337_
                          _hd2508125340_
                          _tl2508225342_
                          _e2508325345_
                          _hd2508425348_
                          _tl2508525350_
                          _e2508625353_
                          _hd2508725356_
                          _tl2508825358_
                          _e2508925361_
                          _hd2509025364_
                          _tl2509125366_
                          _e2509225369_
                          _hd2509325372_
                          _tl2509425374_
                          _e2509525377_
                          _hd2509625380_
                          _tl2509725382_
                          _e2509825385_
                          _hd2509925388_
                          _tl2510025390_
                          _e2510125393_
                          _hd2510225396_
                          _tl2510325398_
                          _e2510425401_
                          _hd2510525404_
                          _tl2510625406_
                          _e2510725409_
                          _hd2510825412_
                          _tl2510925414_
                          _e2511025417_
                          _hd2511125420_
                          _tl2511225422_
                          _e2511325425_
                          _hd2511425428_
                          _tl2511525430_
                          _e2511625433_
                          _hd2511725436_
                          _tl2511825438_
                          _e2511925441_
                          _hd2512025444_
                          _tl2512125446_
                          _e2512225449_
                          _hd2512325452_
                          _tl2512425454_
                          _e2512525457_
                          _hd2512625460_
                          _tl2512725462_)
                   (let ((_L25465_ _hd2512625460_)
                         (_L25466_ _hd2511725436_)
                         (_L25467_ _hd2510825412_)
                         (_L25468_ _hd2509925388_)
                         (_L25469_ _hd2509025364_))
                     (if (gxc#runtime-identifier=? _L25469_ 'bind-method!)
                         (___kont2598825989_
                          _L25465_
                          _L25466_
                          _L25467_
                          _L25468_
                          _L25469_)
                         (___kont2599225993_))))))
            (if (gx#stx-pair? ___stx2598625987_)
                (let ((_e2508025337_ (gx#stx-e ___stx2598625987_)))
                  (let ((_tl2508225342_ (##cdr _e2508025337_))
                        (_hd2508125340_ (##car _e2508025337_)))
                    (if (gx#stx-pair? _tl2508225342_)
                        (let ((_e2508325345_ (gx#stx-e _tl2508225342_)))
                          (let ((_tl2508525350_ (##cdr _e2508325345_))
                                (_hd2508425348_ (##car _e2508325345_)))
                            (if (gx#stx-pair? _hd2508425348_)
                                (let ((_e2508625353_
                                       (gx#stx-e _hd2508425348_)))
                                  (let ((_tl2508825358_ (##cdr _e2508625353_))
                                        (_hd2508725356_ (##car _e2508625353_)))
                                    (if (gx#identifier? _hd2508725356_)
                                        (if (gx#stx-eq? '%#ref _hd2508725356_)
                                            (if (gx#stx-pair? _tl2508825358_)
                                                (let ((_e2508925361_
                                                       (gx#stx-e
                                                        _tl2508825358_)))
                                                  (let ((_tl2509125366_
                                                         (##cdr _e2508925361_))
                                                        (_hd2509025364_
                                                         (##car _e2508925361_)))
                                                    (if (gx#stx-null?
                                                         _tl2509125366_)
                                                        (if (gx#stx-pair?
                                                             _tl2508525350_)
                                                            (let ((_e2509225369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2508525350_)))
                      (let ((_tl2509425374_ (##cdr _e2509225369_))
                            (_hd2509325372_ (##car _e2509225369_)))
                        (if (gx#stx-pair? _hd2509325372_)
                            (let ((_e2509525377_ (gx#stx-e _hd2509325372_)))
                              (let ((_tl2509725382_ (##cdr _e2509525377_))
                                    (_hd2509625380_ (##car _e2509525377_)))
                                (if (gx#identifier? _hd2509625380_)
                                    (if (gx#stx-eq? '%#ref _hd2509625380_)
                                        (if (gx#stx-pair? _tl2509725382_)
                                            (let ((_e2509825385_
                                                   (gx#stx-e _tl2509725382_)))
                                              (let ((_tl2510025390_
                                                     (##cdr _e2509825385_))
                                                    (_hd2509925388_
                                                     (##car _e2509825385_)))
                                                (if (gx#stx-null?
                                                     _tl2510025390_)
                                                    (if (gx#stx-pair?
                                                         _tl2509425374_)
                                                        (let ((_e2510125393_
                                                               (gx#stx-e
                                                                _tl2509425374_)))
                                                          (let ((_tl2510325398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2510125393_))
                        (_hd2510225396_ (##car _e2510125393_)))
                    (if (gx#stx-pair? _hd2510225396_)
                        (let ((_e2510425401_ (gx#stx-e _hd2510225396_)))
                          (let ((_tl2510625406_ (##cdr _e2510425401_))
                                (_hd2510525404_ (##car _e2510425401_)))
                            (if (gx#identifier? _hd2510525404_)
                                (if (gx#stx-eq? '%#quote _hd2510525404_)
                                    (if (gx#stx-pair? _tl2510625406_)
                                        (let ((_e2510725409_
                                               (gx#stx-e _tl2510625406_)))
                                          (let ((_tl2510925414_
                                                 (##cdr _e2510725409_))
                                                (_hd2510825412_
                                                 (##car _e2510725409_)))
                                            (if (gx#stx-null? _tl2510925414_)
                                                (if (gx#stx-pair?
                                                     _tl2510325398_)
                                                    (let ((_e2511025417_
                                                           (gx#stx-e
                                                            _tl2510325398_)))
                                                      (let ((_tl2511225422_
                                                             (##cdr _e2511025417_))
                                                            (_hd2511125420_
                                                             (##car _e2511025417_)))
                                                        (if (gx#stx-pair?
                                                             _hd2511125420_)
                                                            (let ((_e2511325425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2511125420_)))
                      (let ((_tl2511525430_ (##cdr _e2511325425_))
                            (_hd2511425428_ (##car _e2511325425_)))
                        (if (gx#identifier? _hd2511425428_)
                            (if (gx#stx-eq? '%#ref _hd2511425428_)
                                (if (gx#stx-pair? _tl2511525430_)
                                    (let ((_e2511625433_
                                           (gx#stx-e _tl2511525430_)))
                                      (let ((_tl2511825438_
                                             (##cdr _e2511625433_))
                                            (_hd2511725436_
                                             (##car _e2511625433_)))
                                        (if (gx#stx-null? _tl2511825438_)
                                            (if (gx#stx-pair? _tl2511225422_)
                                                (let ((_e2511925441_
                                                       (gx#stx-e
                                                        _tl2511225422_)))
                                                  (let ((_tl2512125446_
                                                         (##cdr _e2511925441_))
                                                        (_hd2512025444_
                                                         (##car _e2511925441_)))
                                                    (if (gx#stx-pair?
                                                         _hd2512025444_)
                                                        (let ((_e2512225449_
                                                               (gx#stx-e
                                                                _hd2512025444_)))
                                                          (let ((_tl2512425454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2512225449_))
                        (_hd2512325452_ (##car _e2512225449_)))
                    (if (gx#identifier? _hd2512325452_)
                        (if (gx#stx-eq? '%#quote _hd2512325452_)
                            (if (gx#stx-pair? _tl2512425454_)
                                (let ((_e2512525457_
                                       (gx#stx-e _tl2512425454_)))
                                  (let ((_tl2512725462_ (##cdr _e2512525457_))
                                        (_hd2512625460_ (##car _e2512525457_)))
                                    (if (gx#stx-null? _tl2512725462_)
                                        (if (gx#stx-null? _tl2512125446_)
                                            (___match2612126122_
                                             _e2508025337_
                                             _hd2508125340_
                                             _tl2508225342_
                                             _e2508325345_
                                             _hd2508425348_
                                             _tl2508525350_
                                             _e2508625353_
                                             _hd2508725356_
                                             _tl2508825358_
                                             _e2508925361_
                                             _hd2509025364_
                                             _tl2509125366_
                                             _e2509225369_
                                             _hd2509325372_
                                             _tl2509425374_
                                             _e2509525377_
                                             _hd2509625380_
                                             _tl2509725382_
                                             _e2509825385_
                                             _hd2509925388_
                                             _tl2510025390_
                                             _e2510125393_
                                             _hd2510225396_
                                             _tl2510325398_
                                             _e2510425401_
                                             _hd2510525404_
                                             _tl2510625406_
                                             _e2510725409_
                                             _hd2510825412_
                                             _tl2510925414_
                                             _e2511025417_
                                             _hd2511125420_
                                             _tl2511225422_
                                             _e2511325425_
                                             _hd2511425428_
                                             _tl2511525430_
                                             _e2511625433_
                                             _hd2511725436_
                                             _tl2511825438_
                                             _e2511925441_
                                             _hd2512025444_
                                             _tl2512125446_
                                             _e2512225449_
                                             _hd2512325452_
                                             _tl2512425454_
                                             _e2512525457_
                                             _hd2512625460_
                                             _tl2512725462_)
                                            (___kont2599225993_))
                                        (___kont2599225993_))))
                                (___kont2599225993_))
                            (___kont2599225993_))
                        (___kont2599225993_))))
                (___kont2599225993_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl2511225422_)
                                                    (if (gxc#runtime-identifier=?
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '-bind-method)
                                                         'bind-method!)
                                                        (let ((_L25291_
                                                               _hd2511725436_)
                                                              (_L25292_
                                                               _hd2510825412_)
                                                              (_L25293_
                                                               _hd2509925388_)
                                                              (_L25294_
                                                               _hd2509025364_))
                                                          (___kont2599025991_
                                                           _L25291_
                                                           _L25292_
                                                           _L25293_
                                                           _L25294_))
                                                        (___kont2599225993_))
                                                    (___kont2599225993_)))
                                            (___kont2599225993_))))
                                    (___kont2599225993_))
                                (___kont2599225993_))
                            (___kont2599225993_))))
                    (___kont2599225993_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2599225993_))
                                                (___kont2599225993_))))
                                        (___kont2599225993_))
                                    (___kont2599225993_))
                                (___kont2599225993_))))
                        (___kont2599225993_))))
                (___kont2599225993_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2599225993_))))
                                            (___kont2599225993_))
                                        (___kont2599225993_))
                                    (___kont2599225993_))))
                            (___kont2599225993_))))
                    (___kont2599225993_))
                (___kont2599225993_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2599225993_))
                                            (___kont2599225993_))
                                        (___kont2599225993_))))
                                (___kont2599225993_))))
                        (___kont2599225993_))))
                (___kont2599225993_)))))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx25009_)
      (let* ((___stx2623026231_ _stx25009_)
             (_g2501225025_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2623026231_))))
        (let ((___kont2623226233_ (lambda (_L25053_) (gxc#compile-e _L25053_)))
              (___kont2623426235_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2623026231_)
              (let ((_e2501525037_ (gx#stx-e ___stx2623026231_)))
                (let ((_tl2501725042_ (##cdr _e2501525037_))
                      (_hd2501625040_ (##car _e2501525037_)))
                  (if (gx#stx-pair? _tl2501725042_)
                      (let ((_e2501825045_ (gx#stx-e _tl2501725042_)))
                        (let ((_tl2502025050_ (##cdr _e2501825045_))
                              (_hd2501925048_ (##car _e2501825045_)))
                          (if (gx#stx-null? _tl2502025050_)
                              (___kont2623226233_ _hd2501925048_)
                              (___kont2623426235_))))
                      (___kont2623426235_))))
              (___kont2623426235_))))))
  (define gxc#basic-expression-type-begin-annotation%
    (lambda (_stx24942_)
      (let* ((_g2494424961_
              (lambda (_g2494524958_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2494524958_)))
             (_g2494325006_
              (lambda (_g2494524964_)
                (if (gx#stx-pair? _g2494524964_)
                    (let ((_e2494824966_ (gx#stx-e _g2494524964_)))
                      (let ((_hd2494924969_ (##car _e2494824966_))
                            (_tl2495024971_ (##cdr _e2494824966_)))
                        (if (gx#stx-pair? _tl2495024971_)
                            (let ((_e2495124974_ (gx#stx-e _tl2495024971_)))
                              (let ((_hd2495224977_ (##car _e2495124974_))
                                    (_tl2495324979_ (##cdr _e2495124974_)))
                                (if (gx#stx-pair? _tl2495324979_)
                                    (let ((_e2495424982_
                                           (gx#stx-e _tl2495324979_)))
                                      (let ((_hd2495524985_
                                             (##car _e2495424982_))
                                            (_tl2495624987_
                                             (##cdr _e2495424982_)))
                                        (if (gx#stx-null? _tl2495624987_)
                                            ((lambda (_L24990_ _L24991_)
                                               (gxc#compile-e _L24990_))
                                             _hd2495524985_
                                             _hd2495224977_)
                                            (_g2494424961_ _g2494524964_))))
                                    (_g2494424961_ _g2494524964_))))
                            (_g2494424961_ _g2494524964_))))
                    (_g2494424961_ _g2494524964_)))))
        (_g2494325006_ _stx24942_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx23579_)
      (let* ((___stx2625226253_ _stx23579_)
             (_g2358623885_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2625226253_))))
        (let ((___kont2625426255_
               (lambda (_L24887_ _L24888_ _L24889_ _L24890_ _L24891_)
                 (let* ((_type-t24934_ (gxc#identifier-symbol _L24888_))
                        (_type24936_
                         (gxc#optimizer-resolve-type _type-t24934_)))
                   (if (##structure-instance-of?
                        _type24936_
                        'gxc#!struct-type::t)
                       (##structure gxc#!struct-cons::t _type-t24934_)
                       '#f))))
              (___kont2625626257_
               (lambda (_L24673_ _L24674_ _L24675_ _L24676_)
                 (let* ((_type-t24749_ (gxc#identifier-symbol _L24674_))
                        (_type24751_
                         (gxc#optimizer-resolve-type _type-t24749_)))
                   (if (##structure-instance-of?
                        _type24751_
                        'gxc#!struct-type::t)
                       (##structure gxc#!struct-cons::t _type-t24749_)
                       '#f))))
              (___kont2626226263_
               (lambda (_L24515_)
                 (let ((__obj28493 (make-object gxc#!lambda::t '5)))
                   (begin
                     (gxc#!lambda:::init!__0
                      __obj28493
                      'lambda
                      (gxc#lambda-form-arity _L24515_)
                      (gxc#dispatch-lambda-form-delegate _L24515_))
                     __obj28493))))
              (___kont2626426265_
               (lambda (_L24442_ _L24443_ _L24444_ _L24445_ _L24446_ _L24447_)
                 (let* ((_tab24497_ (gx#stx-e _L24444_))
                        (_keys24499_
                         (if _tab24497_
                             (filter values (vector->list _tab24497_))
                             '#f)))
                   (##structure
                    gxc#!kw-lambda::t
                    'kw-lambda
                    _keys24499_
                    (gxc#identifier-symbol _L24443_)))))
              (___kont2626626267_
               (lambda (_L24173_
                        _L24174_
                        _L24175_
                        _L24176_
                        _L24177_
                        _L24178_
                        _L24179_
                        _L24180_
                        _L24181_
                        _L24182_)
                 (##structure
                  gxc#!kw-lambda-primary::t
                  'kw-lambda-dispatch
                  (map gx#stx-e
                       (begin
                         '#!void
                         (foldr1 (lambda (_g2427724280_ _g2427824282_)
                                   (cons _g2427724280_ _g2427824282_))
                                 '()
                                 _L24175_)))
                  (gxc#identifier-symbol _L24179_))))
              (___kont2627026271_ (lambda () '#f)))
          (let* ((___match2671726718_
                  (lambda (_e2377623897_
                           _hd2377723900_
                           _tl2377823902_
                           _e2377923905_
                           _hd2378023908_
                           _tl2378123910_
                           _e2378223913_
                           _hd2378323916_
                           _tl2378423918_
                           _e2378523921_
                           _hd2378623924_
                           _tl2378723926_
                           _e2378823929_
                           _hd2378923932_
                           _tl2379023934_
                           _e2379123937_
                           _hd2379223940_
                           _tl2379323942_
                           _e2379423945_
                           _hd2379523948_
                           _tl2379623950_
                           _e2379723953_
                           _hd2379823956_
                           _tl2379923958_
                           _e2380023961_
                           _hd2380123964_
                           _tl2380223966_
                           _e2380323969_
                           _hd2380423972_
                           _tl2380523974_
                           _e2380623977_
                           _hd2380723980_
                           _tl2380823982_
                           _e2380923985_
                           _hd2381023988_
                           _tl2381123990_
                           _e2381223993_
                           _hd2381323996_
                           _tl2381423998_
                           _e2381524001_
                           _hd2381624004_
                           _tl2381724006_
                           ___splice2626826269_
                           _target2381824009_
                           _tl2382024011_
                           _e2383324014_
                           _hd2383424017_
                           _tl2383524019_
                           _e2383624022_
                           _hd2383724025_
                           _tl2383824027_
                           _e2383924030_
                           _hd2384024033_
                           _tl2384124035_)
                    (letrec ((_loop2382124038_
                              (lambda (_hd2381924041_
                                       _-absent-value2382524043_
                                       _key2382624045_
                                       _-xkwvar2382724047_
                                       _-hash-ref2382824049_)
                                (if (gx#stx-pair? _hd2381924041_)
                                    (let ((_e2382224052_
                                           (gx#stx-e _hd2381924041_)))
                                      (let ((_lp-tl2382424057_
                                             (##cdr _e2382224052_))
                                            (_lp-hd2382324055_
                                             (##car _e2382224052_)))
                                        (if (gx#stx-pair? _lp-hd2382324055_)
                                            (let ((_e2384224060_
                                                   (gx#stx-e
                                                    _lp-hd2382324055_)))
                                              (let ((_tl2384424065_
                                                     (##cdr _e2384224060_))
                                                    (_hd2384324063_
                                                     (##car _e2384224060_)))
                                                (if (gx#identifier?
                                                     _hd2384324063_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd2384324063_)
                                                        (if (gx#stx-pair?
                                                             _tl2384424065_)
                                                            (let ((_e2384524068_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2384424065_)))
                      (let ((_tl2384724073_ (##cdr _e2384524068_))
                            (_hd2384624071_ (##car _e2384524068_)))
                        (if (gx#stx-pair? _hd2384624071_)
                            (let ((_e2384824076_ (gx#stx-e _hd2384624071_)))
                              (let ((_tl2385024081_ (##cdr _e2384824076_))
                                    (_hd2384924079_ (##car _e2384824076_)))
                                (if (gx#identifier? _hd2384924079_)
                                    (if (gx#stx-eq? '%#ref _hd2384924079_)
                                        (if (gx#stx-pair? _tl2385024081_)
                                            (let ((_e2385124084_
                                                   (gx#stx-e _tl2385024081_)))
                                              (let ((_tl2385324089_
                                                     (##cdr _e2385124084_))
                                                    (_hd2385224087_
                                                     (##car _e2385124084_)))
                                                (if (gx#stx-null?
                                                     _tl2385324089_)
                                                    (if (gx#stx-pair?
                                                         _tl2384724073_)
                                                        (let ((_e2385424092_
                                                               (gx#stx-e
                                                                _tl2384724073_)))
                                                          (let ((_tl2385624097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2385424092_))
                        (_hd2385524095_ (##car _e2385424092_)))
                    (if (gx#stx-pair? _hd2385524095_)
                        (let ((_e2385724100_ (gx#stx-e _hd2385524095_)))
                          (let ((_tl2385924105_ (##cdr _e2385724100_))
                                (_hd2385824103_ (##car _e2385724100_)))
                            (if (gx#identifier? _hd2385824103_)
                                (if (gx#stx-eq? '%#ref _hd2385824103_)
                                    (if (gx#stx-pair? _tl2385924105_)
                                        (let ((_e2386024108_
                                               (gx#stx-e _tl2385924105_)))
                                          (let ((_tl2386224113_
                                                 (##cdr _e2386024108_))
                                                (_hd2386124111_
                                                 (##car _e2386024108_)))
                                            (if (gx#stx-null? _tl2386224113_)
                                                (if (gx#stx-pair?
                                                     _tl2385624097_)
                                                    (let ((_e2386324116_
                                                           (gx#stx-e
                                                            _tl2385624097_)))
                                                      (let ((_tl2386524121_
                                                             (##cdr _e2386324116_))
                                                            (_hd2386424119_
                                                             (##car _e2386324116_)))
                                                        (if (gx#stx-pair?
                                                             _hd2386424119_)
                                                            (let ((_e2386624124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2386424119_)))
                      (let ((_tl2386824129_ (##cdr _e2386624124_))
                            (_hd2386724127_ (##car _e2386624124_)))
                        (if (gx#identifier? _hd2386724127_)
                            (if (gx#stx-eq? '%#quote _hd2386724127_)
                                (if (gx#stx-pair? _tl2386824129_)
                                    (let ((_e2386924132_
                                           (gx#stx-e _tl2386824129_)))
                                      (let ((_tl2387124137_
                                             (##cdr _e2386924132_))
                                            (_hd2387024135_
                                             (##car _e2386924132_)))
                                        (if (gx#stx-null? _tl2387124137_)
                                            (if (gx#stx-pair? _tl2386524121_)
                                                (let ((_e2387224140_
                                                       (gx#stx-e
                                                        _tl2386524121_)))
                                                  (let ((_tl2387424145_
                                                         (##cdr _e2387224140_))
                                                        (_hd2387324143_
                                                         (##car _e2387224140_)))
                                                    (if (gx#stx-pair?
                                                         _hd2387324143_)
                                                        (let ((_e2387524148_
                                                               (gx#stx-e
                                                                _hd2387324143_)))
                                                          (let ((_tl2387724153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2387524148_))
                        (_hd2387624151_ (##car _e2387524148_)))
                    (if (gx#identifier? _hd2387624151_)
                        (if (gx#stx-eq? '%#ref _hd2387624151_)
                            (if (gx#stx-pair? _tl2387724153_)
                                (let ((_e2387824156_
                                       (gx#stx-e _tl2387724153_)))
                                  (let ((_tl2388024161_ (##cdr _e2387824156_))
                                        (_hd2387924159_ (##car _e2387824156_)))
                                    (if (gx#stx-null? _tl2388024161_)
                                        (if (gx#stx-null? _tl2387424145_)
                                            (_loop2382124038_
                                             _lp-tl2382424057_
                                             (cons _hd2387924159_
                                                   _-absent-value2382524043_)
                                             (cons _hd2387024135_
                                                   _key2382624045_)
                                             (cons _hd2386124111_
                                                   _-xkwvar2382724047_)
                                             (cons _hd2385224087_
                                                   _-hash-ref2382824049_))
                                            (___kont2627026271_))
                                        (___kont2627026271_))))
                                (___kont2627026271_))
                            (___kont2627026271_))
                        (___kont2627026271_))))
                (___kont2627026271_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2627026271_))
                                            (___kont2627026271_))))
                                    (___kont2627026271_))
                                (___kont2627026271_))
                            (___kont2627026271_))))
                    (___kont2627026271_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2627026271_))
                                                (___kont2627026271_))))
                                        (___kont2627026271_))
                                    (___kont2627026271_))
                                (___kont2627026271_))))
                        (___kont2627026271_))))
                (___kont2627026271_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2627026271_))))
                                            (___kont2627026271_))
                                        (___kont2627026271_))
                                    (___kont2627026271_))))
                            (___kont2627026271_))))
                    (___kont2627026271_))
                (___kont2627026271_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2627026271_))))
                                            (___kont2627026271_))))
                                    (let ((_-hash-ref2383224170_
                                           (reverse _-hash-ref2382824049_))
                                          (_-xkwvar2383124168_
                                           (reverse _-xkwvar2382724047_))
                                          (_key2383024166_
                                           (reverse _key2382624045_))
                                          (_-absent-value2382924164_
                                           (reverse _-absent-value2382524043_)))
                                      (if (gx#stx-null? _tl2378723926_)
                                          (let ((_L24173_ _hd2384024033_)
                                                (_L24174_
                                                 _-absent-value2382924164_)
                                                (_L24175_ _key2383024166_)
                                                (_L24176_ _-xkwvar2383124168_)
                                                (_L24177_
                                                 _-hash-ref2383224170_)
                                                (_L24178_ _hd2381624004_)
                                                (_L24179_ _hd2380723980_)
                                                (_L24180_ _hd2379823956_)
                                                (_L24181_ _tl2378423918_)
                                                (_L24182_ _hd2378323916_))
                                            (if (if (gx#identifier? _L24182_)
                                                    (if (gx#identifier?
                                                         _L24181_)
                                                        (if (gxc#runtime-identifier=?
                                                             _L24180_
                                                             'apply)
                                                            (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L24182_
                         _L24178_)
                        (if (andmap1 gx#stx-keyword?
                                     (begin
                                       '#!void
                                       (foldr1 (lambda (_g2423724240_
                                                        _g2423824242_)
                                                 (cons _g2423724240_
                                                       _g2423824242_))
                                               '()
                                               _L24175_)))
                            (if (andmap1 (lambda (_g2424424246_)
                                           (gxc#runtime-identifier=?
                                            _g2424424246_
                                            'hash-ref))
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g2424824251_
                                                            _g2424924253_)
                                                     (cons _g2424824251_
                                                           _g2424924253_))
                                                   '()
                                                   _L24177_)))
                                (if (andmap1 (lambda (_g2425524257_)
                                               (gxc#runtime-identifier=?
                                                _g2425524257_
                                                'absent-value))
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g2425924262_
                                                                _g2426024264_)
                                                         (cons _g2425924262_
                                                               _g2426024264_))
                                                       '()
                                                       _L24174_)))
                                    (andmap1 (lambda (_g2426624268_)
                                               (gx#free-identifier=?
                                                _g2426624268_
                                                _L24182_))
                                             (begin
                                               '#!void
                                               (foldr1 (lambda (_g2427024273_
                                                                _g2427124275_)
                                                         (cons _g2427024273_
                                                               _g2427124275_))
                                                       '()
                                                       _L24176_)))
                                    '#f)
                                '#f)
                            '#f)
                        '#f)
                    '#f)
                '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '#f)
                                                (___kont2626626267_
                                                 _L24173_
                                                 _L24174_
                                                 _L24175_
                                                 _L24176_
                                                 _L24177_
                                                 _L24178_
                                                 _L24179_
                                                 _L24180_
                                                 _L24181_
                                                 _L24182_)
                                                (___kont2627026271_)))
                                          (___kont2627026271_)))))))
                      (_loop2382124038_ _target2381824009_ '() '() '() '()))))
                 (___match2657726578_
                  (lambda (_e2370924290_
                           _hd2371024293_
                           _tl2371124295_
                           _e2371224298_
                           _hd2371324301_
                           _tl2371424303_
                           _e2371524306_
                           _hd2371624309_
                           _tl2371724311_
                           _e2371824314_
                           _hd2371924317_
                           _tl2372024319_
                           _e2372124322_
                           _hd2372224325_
                           _tl2372324327_
                           _e2372424330_
                           _hd2372524333_
                           _tl2372624335_
                           _e2372724338_
                           _hd2372824341_
                           _tl2372924343_
                           _e2373024346_
                           _hd2373124349_
                           _tl2373224351_
                           _e2373324354_
                           _hd2373424357_
                           _tl2373524359_
                           _e2373624362_
                           _hd2373724365_
                           _tl2373824367_
                           _e2373924370_
                           _hd2374024373_
                           _tl2374124375_
                           _e2374224378_
                           _hd2374324381_
                           _tl2374424383_
                           _e2374524386_
                           _hd2374624389_
                           _tl2374724391_
                           _e2374824394_
                           _hd2374924397_
                           _tl2375024399_
                           _e2375124402_
                           _hd2375224405_
                           _tl2375324407_
                           _e2375424410_
                           _hd2375524413_
                           _tl2375624415_
                           _e2375724418_
                           _hd2375824421_
                           _tl2375924423_
                           _e2376024426_
                           _hd2376124429_
                           _tl2376224431_
                           _e2376324434_
                           _hd2376424437_
                           _tl2376524439_)
                    (let ((_L24442_ _hd2376424437_)
                          (_L24443_ _hd2375524413_)
                          (_L24444_ _hd2374624389_)
                          (_L24445_ _hd2373724365_)
                          (_L24446_ _hd2372824341_)
                          (_L24447_ _hd2371324301_))
                      (if (if (gx#identifier? _L24447_)
                              (if (gxc#runtime-identifier=? _L24446_ 'apply)
                                  (if (gxc#runtime-identifier=?
                                       _L24445_
                                       'keyword-dispatch)
                                      (gx#free-identifier=? _L24447_ _L24442_)
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont2626426265_
                           _L24442_
                           _L24443_
                           _L24444_
                           _L24445_
                           _L24446_
                           _L24447_)
                          (if (gx#stx-pair? _hd2371324301_)
                              (let ((_e2378223913_ (gx#stx-e _hd2371324301_)))
                                (let ((_tl2378423918_ (##cdr _e2378223913_))
                                      (_hd2378323916_ (##car _e2378223913_)))
                                  (___kont2627026271_)))
                              (___kont2627026271_))))))
                 (___match2642526426_
                  (lambda (_e2370024507_ _hd2370124510_ _tl2370224512_)
                    (let ((_L24515_ _tl2370224512_))
                      (if (gxc#dispatch-lambda-form? _L24515_)
                          (___kont2626226263_ _L24515_)
                          (if (gx#stx-pair? _tl2370224512_)
                              (let ((_e2371224298_ (gx#stx-e _tl2370224512_)))
                                (let ((_tl2371424303_ (##cdr _e2371224298_))
                                      (_hd2371324301_ (##car _e2371224298_)))
                                  (if (gx#stx-pair? _tl2371424303_)
                                      (let ((_e2371524306_
                                             (gx#stx-e _tl2371424303_)))
                                        (let ((_tl2371724311_
                                               (##cdr _e2371524306_))
                                              (_hd2371624309_
                                               (##car _e2371524306_)))
                                          (if (gx#stx-pair? _hd2371624309_)
                                              (let ((_e2371824314_
                                                     (gx#stx-e
                                                      _hd2371624309_)))
                                                (let ((_tl2372024319_
                                                       (##cdr _e2371824314_))
                                                      (_hd2371924317_
                                                       (##car _e2371824314_)))
                                                  (if (gx#identifier?
                                                       _hd2371924317_)
                                                      (if (gx#stx-eq?
                                                           '%#call
                                                           _hd2371924317_)
                                                          (if (gx#stx-pair?
                                                               _tl2372024319_)
                                                              (let ((_e2372124322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2372024319_)))
                        (let ((_tl2372324327_ (##cdr _e2372124322_))
                              (_hd2372224325_ (##car _e2372124322_)))
                          (if (gx#stx-pair? _hd2372224325_)
                              (let ((_e2372424330_ (gx#stx-e _hd2372224325_)))
                                (let ((_tl2372624335_ (##cdr _e2372424330_))
                                      (_hd2372524333_ (##car _e2372424330_)))
                                  (if (gx#identifier? _hd2372524333_)
                                      (if (gx#stx-eq? '%#ref _hd2372524333_)
                                          (if (gx#stx-pair? _tl2372624335_)
                                              (let ((_e2372724338_
                                                     (gx#stx-e
                                                      _tl2372624335_)))
                                                (let ((_tl2372924343_
                                                       (##cdr _e2372724338_))
                                                      (_hd2372824341_
                                                       (##car _e2372724338_)))
                                                  (if (gx#stx-null?
                                                       _tl2372924343_)
                                                      (if (gx#stx-pair?
                                                           _tl2372324327_)
                                                          (let ((_e2373024346_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2372324327_)))
                    (let ((_tl2373224351_ (##cdr _e2373024346_))
                          (_hd2373124349_ (##car _e2373024346_)))
                      (if (gx#stx-pair? _hd2373124349_)
                          (let ((_e2373324354_ (gx#stx-e _hd2373124349_)))
                            (let ((_tl2373524359_ (##cdr _e2373324354_))
                                  (_hd2373424357_ (##car _e2373324354_)))
                              (if (gx#identifier? _hd2373424357_)
                                  (if (gx#stx-eq? '%#ref _hd2373424357_)
                                      (if (gx#stx-pair? _tl2373524359_)
                                          (let ((_e2373624362_
                                                 (gx#stx-e _tl2373524359_)))
                                            (let ((_tl2373824367_
                                                   (##cdr _e2373624362_))
                                                  (_hd2373724365_
                                                   (##car _e2373624362_)))
                                              (if (gx#stx-null? _tl2373824367_)
                                                  (if (gx#stx-pair?
                                                       _tl2373224351_)
                                                      (let ((_e2373924370_
                                                             (gx#stx-e
                                                              _tl2373224351_)))
                                                        (let ((_tl2374124375_
                                                               (##cdr _e2373924370_))
                                                              (_hd2374024373_
                                                               (##car _e2373924370_)))
                                                          (if (gx#stx-pair?
                                                               _hd2374024373_)
                                                              (let ((_e2374224378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2374024373_)))
                        (let ((_tl2374424383_ (##cdr _e2374224378_))
                              (_hd2374324381_ (##car _e2374224378_)))
                          (if (gx#identifier? _hd2374324381_)
                              (if (gx#stx-eq? '%#quote _hd2374324381_)
                                  (if (gx#stx-pair? _tl2374424383_)
                                      (let ((_e2374524386_
                                             (gx#stx-e _tl2374424383_)))
                                        (let ((_tl2374724391_
                                               (##cdr _e2374524386_))
                                              (_hd2374624389_
                                               (##car _e2374524386_)))
                                          (if (gx#stx-null? _tl2374724391_)
                                              (if (gx#stx-pair? _tl2374124375_)
                                                  (let ((_e2374824394_
                                                         (gx#stx-e
                                                          _tl2374124375_)))
                                                    (let ((_tl2375024399_
                                                           (##cdr _e2374824394_))
                                                          (_hd2374924397_
                                                           (##car _e2374824394_)))
                                                      (if (gx#stx-pair?
                                                           _hd2374924397_)
                                                          (let ((_e2375124402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2374924397_)))
                    (let ((_tl2375324407_ (##cdr _e2375124402_))
                          (_hd2375224405_ (##car _e2375124402_)))
                      (if (gx#identifier? _hd2375224405_)
                          (if (gx#stx-eq? '%#ref _hd2375224405_)
                              (if (gx#stx-pair? _tl2375324407_)
                                  (let ((_e2375424410_
                                         (gx#stx-e _tl2375324407_)))
                                    (let ((_tl2375624415_
                                           (##cdr _e2375424410_))
                                          (_hd2375524413_
                                           (##car _e2375424410_)))
                                      (if (gx#stx-null? _tl2375624415_)
                                          (if (gx#stx-pair? _tl2375024399_)
                                              (let ((_e2375724418_
                                                     (gx#stx-e
                                                      _tl2375024399_)))
                                                (let ((_tl2375924423_
                                                       (##cdr _e2375724418_))
                                                      (_hd2375824421_
                                                       (##car _e2375724418_)))
                                                  (if (gx#stx-pair?
                                                       _hd2375824421_)
                                                      (let ((_e2376024426_
                                                             (gx#stx-e
                                                              _hd2375824421_)))
                                                        (let ((_tl2376224431_
                                                               (##cdr _e2376024426_))
                                                              (_hd2376124429_
                                                               (##car _e2376024426_)))
                                                          (if (gx#identifier?
                                                               _hd2376124429_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2376124429_)
                          (if (gx#stx-pair? _tl2376224431_)
                              (let ((_e2376324434_ (gx#stx-e _tl2376224431_)))
                                (let ((_tl2376524439_ (##cdr _e2376324434_))
                                      (_hd2376424437_ (##car _e2376324434_)))
                                  (if (gx#stx-null? _tl2376524439_)
                                      (if (gx#stx-null? _tl2375924423_)
                                          (if (gx#stx-null? _tl2371724311_)
                                              (___match2657726578_
                                               _e2370024507_
                                               _hd2370124510_
                                               _tl2370224512_
                                               _e2371224298_
                                               _hd2371324301_
                                               _tl2371424303_
                                               _e2371524306_
                                               _hd2371624309_
                                               _tl2371724311_
                                               _e2371824314_
                                               _hd2371924317_
                                               _tl2372024319_
                                               _e2372124322_
                                               _hd2372224325_
                                               _tl2372324327_
                                               _e2372424330_
                                               _hd2372524333_
                                               _tl2372624335_
                                               _e2372724338_
                                               _hd2372824341_
                                               _tl2372924343_
                                               _e2373024346_
                                               _hd2373124349_
                                               _tl2373224351_
                                               _e2373324354_
                                               _hd2373424357_
                                               _tl2373524359_
                                               _e2373624362_
                                               _hd2373724365_
                                               _tl2373824367_
                                               _e2373924370_
                                               _hd2374024373_
                                               _tl2374124375_
                                               _e2374224378_
                                               _hd2374324381_
                                               _tl2374424383_
                                               _e2374524386_
                                               _hd2374624389_
                                               _tl2374724391_
                                               _e2374824394_
                                               _hd2374924397_
                                               _tl2375024399_
                                               _e2375124402_
                                               _hd2375224405_
                                               _tl2375324407_
                                               _e2375424410_
                                               _hd2375524413_
                                               _tl2375624415_
                                               _e2375724418_
                                               _hd2375824421_
                                               _tl2375924423_
                                               _e2376024426_
                                               _hd2376124429_
                                               _tl2376224431_
                                               _e2376324434_
                                               _hd2376424437_
                                               _tl2376524439_)
                                              (if (gx#stx-pair? _hd2371324301_)
                                                  (let ((_e2378223913_
                                                         (gx#stx-e
                                                          _hd2371324301_)))
                                                    (let ((_tl2378423918_
                                                           (##cdr _e2378223913_))
                                                          (_hd2378323916_
                                                           (##car _e2378223913_)))
                                                      (___kont2627026271_)))
                                                  (___kont2627026271_)))
                                          (if (gx#stx-pair? _hd2371324301_)
                                              (let ((_e2378223913_
                                                     (gx#stx-e
                                                      _hd2371324301_)))
                                                (let ((_tl2378423918_
                                                       (##cdr _e2378223913_))
                                                      (_hd2378323916_
                                                       (##car _e2378223913_)))
                                                  (___kont2627026271_)))
                                              (___kont2627026271_)))
                                      (if (gx#stx-pair? _hd2371324301_)
                                          (let ((_e2378223913_
                                                 (gx#stx-e _hd2371324301_)))
                                            (let ((_tl2378423918_
                                                   (##cdr _e2378223913_))
                                                  (_hd2378323916_
                                                   (##car _e2378223913_)))
                                              (___kont2627026271_)))
                                          (___kont2627026271_)))))
                              (if (gx#stx-pair? _hd2371324301_)
                                  (let ((_e2378223913_
                                         (gx#stx-e _hd2371324301_)))
                                    (let ((_tl2378423918_
                                           (##cdr _e2378223913_))
                                          (_hd2378323916_
                                           (##car _e2378223913_)))
                                      (___kont2627026271_)))
                                  (___kont2627026271_)))
                          (if (gx#stx-pair? _hd2371324301_)
                              (let ((_e2378223913_ (gx#stx-e _hd2371324301_)))
                                (let ((_tl2378423918_ (##cdr _e2378223913_))
                                      (_hd2378323916_ (##car _e2378223913_)))
                                  (___kont2627026271_)))
                              (___kont2627026271_)))
                      (if (gx#stx-pair? _hd2371324301_)
                          (let ((_e2378223913_ (gx#stx-e _hd2371324301_)))
                            (let ((_tl2378423918_ (##cdr _e2378223913_))
                                  (_hd2378323916_ (##car _e2378223913_)))
                              (___kont2627026271_)))
                          (___kont2627026271_)))))
              (if (gx#stx-pair? _hd2371324301_)
                  (let ((_e2378223913_ (gx#stx-e _hd2371324301_)))
                    (let ((_tl2378423918_ (##cdr _e2378223913_))
                          (_hd2378323916_ (##car _e2378223913_)))
                      (___kont2627026271_)))
                  (___kont2627026271_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _hd2371324301_)
                                                  (let ((_e2378223913_
                                                         (gx#stx-e
                                                          _hd2371324301_)))
                                                    (let ((_tl2378423918_
                                                           (##cdr _e2378223913_))
                                                          (_hd2378323916_
                                                           (##car _e2378223913_)))
                                                      (___kont2627026271_)))
                                                  (___kont2627026271_)))
                                          (if (gx#stx-pair? _hd2371324301_)
                                              (let ((_e2378223913_
                                                     (gx#stx-e
                                                      _hd2371324301_)))
                                                (let ((_tl2378423918_
                                                       (##cdr _e2378223913_))
                                                      (_hd2378323916_
                                                       (##car _e2378223913_)))
                                                  (___kont2627026271_)))
                                              (___kont2627026271_)))))
                                  (if (gx#stx-pair? _hd2371324301_)
                                      (let ((_e2378223913_
                                             (gx#stx-e _hd2371324301_)))
                                        (let ((_tl2378423918_
                                               (##cdr _e2378223913_))
                                              (_hd2378323916_
                                               (##car _e2378223913_)))
                                          (___kont2627026271_)))
                                      (___kont2627026271_)))
                              (if (gx#stx-pair? _hd2371324301_)
                                  (let ((_e2378223913_
                                         (gx#stx-e _hd2371324301_)))
                                    (let ((_tl2378423918_
                                           (##cdr _e2378223913_))
                                          (_hd2378323916_
                                           (##car _e2378223913_)))
                                      (___kont2627026271_)))
                                  (___kont2627026271_)))
                          (if (gx#stx-pair? _hd2371324301_)
                              (let ((_e2378223913_ (gx#stx-e _hd2371324301_)))
                                (let ((_tl2378423918_ (##cdr _e2378223913_))
                                      (_hd2378323916_ (##car _e2378223913_)))
                                  (___kont2627026271_)))
                              (___kont2627026271_)))))
                  (if (gx#stx-pair? _hd2371324301_)
                      (let ((_e2378223913_ (gx#stx-e _hd2371324301_)))
                        (let ((_tl2378423918_ (##cdr _e2378223913_))
                              (_hd2378323916_ (##car _e2378223913_)))
                          (___kont2627026271_)))
                      (___kont2627026271_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _hd2371324301_)
                                                      (let ((_e2378223913_
                                                             (gx#stx-e
                                                              _hd2371324301_)))
                                                        (let ((_tl2378423918_
                                                               (##cdr _e2378223913_))
                                                              (_hd2378323916_
                                                               (##car _e2378223913_)))
                                                          (___kont2627026271_)))
                                                      (___kont2627026271_)))
                                              (if (gx#stx-pair? _hd2371324301_)
                                                  (let ((_e2378223913_
                                                         (gx#stx-e
                                                          _hd2371324301_)))
                                                    (let ((_tl2378423918_
                                                           (##cdr _e2378223913_))
                                                          (_hd2378323916_
                                                           (##car _e2378223913_)))
                                                      (___kont2627026271_)))
                                                  (___kont2627026271_)))))
                                      (if (gx#stx-pair? _hd2371324301_)
                                          (let ((_e2378223913_
                                                 (gx#stx-e _hd2371324301_)))
                                            (let ((_tl2378423918_
                                                   (##cdr _e2378223913_))
                                                  (_hd2378323916_
                                                   (##car _e2378223913_)))
                                              (___kont2627026271_)))
                                          (___kont2627026271_)))
                                  (if (gx#stx-pair? _hd2371324301_)
                                      (let ((_e2378223913_
                                             (gx#stx-e _hd2371324301_)))
                                        (let ((_tl2378423918_
                                               (##cdr _e2378223913_))
                                              (_hd2378323916_
                                               (##car _e2378223913_)))
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2374324381_)
                                              (if (gx#stx-pair? _tl2374424383_)
                                                  (let ((_e2381524001_
                                                         (gx#stx-e
                                                          _tl2374424383_)))
                                                    (let ((_tl2381724006_
                                                           (##cdr _e2381524001_))
                                                          (_hd2381624004_
                                                           (##car _e2381524001_)))
                                                      (if (gx#stx-null?
                                                           _tl2381724006_)
                                                          (if (gx#stx-pair/null?
                                                               _tl2374124375_)
                                                              (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _tl2374124375_)
                                '1)
                          (let ((___splice2626826269_
                                 (gx#syntax-split-splice _tl2374124375_ '1)))
                            (let ((_tl2382024011_
                                   (##vector-ref ___splice2626826269_ '1))
                                  (_target2381824009_
                                   (##vector-ref ___splice2626826269_ '0)))
                              (if (gx#stx-pair? _tl2382024011_)
                                  (let ((_e2383324014_
                                         (gx#stx-e _tl2382024011_)))
                                    (let ((_tl2383524019_
                                           (##cdr _e2383324014_))
                                          (_hd2383424017_
                                           (##car _e2383324014_)))
                                      (if (gx#stx-pair? _hd2383424017_)
                                          (let ((_e2383624022_
                                                 (gx#stx-e _hd2383424017_)))
                                            (let ((_tl2383824027_
                                                   (##cdr _e2383624022_))
                                                  (_hd2383724025_
                                                   (##car _e2383624022_)))
                                              (if (gx#identifier?
                                                   _hd2383724025_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2383724025_)
                                                      (if (gx#stx-pair?
                                                           _tl2383824027_)
                                                          (let ((_e2383924030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2383824027_)))
                    (let ((_tl2384124035_ (##cdr _e2383924030_))
                          (_hd2384024033_ (##car _e2383924030_)))
                      (if (gx#stx-null? _tl2384124035_)
                          (if (gx#stx-null? _tl2383524019_)
                              (___match2671726718_
                               _e2370024507_
                               _hd2370124510_
                               _tl2370224512_
                               _e2371224298_
                               _hd2371324301_
                               _tl2371424303_
                               _e2378223913_
                               _hd2378323916_
                               _tl2378423918_
                               _e2371524306_
                               _hd2371624309_
                               _tl2371724311_
                               _e2371824314_
                               _hd2371924317_
                               _tl2372024319_
                               _e2372124322_
                               _hd2372224325_
                               _tl2372324327_
                               _e2372424330_
                               _hd2372524333_
                               _tl2372624335_
                               _e2372724338_
                               _hd2372824341_
                               _tl2372924343_
                               _e2373024346_
                               _hd2373124349_
                               _tl2373224351_
                               _e2373324354_
                               _hd2373424357_
                               _tl2373524359_
                               _e2373624362_
                               _hd2373724365_
                               _tl2373824367_
                               _e2373924370_
                               _hd2374024373_
                               _tl2374124375_
                               _e2374224378_
                               _hd2374324381_
                               _tl2374424383_
                               _e2381524001_
                               _hd2381624004_
                               _tl2381724006_
                               ___splice2626826269_
                               _target2381824009_
                               _tl2382024011_
                               _e2383324014_
                               _hd2383424017_
                               _tl2383524019_
                               _e2383624022_
                               _hd2383724025_
                               _tl2383824027_
                               _e2383924030_
                               _hd2384024033_
                               _tl2384124035_)
                              (___kont2627026271_))
                          (___kont2627026271_))))
                  (___kont2627026271_))
              (___kont2627026271_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2627026271_))))
                                          (___kont2627026271_))))
                                  (___kont2627026271_))))
                          (___kont2627026271_))
                      (___kont2627026271_))
                  (___kont2627026271_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2627026271_))
                                              (___kont2627026271_))))
                                      (___kont2627026271_)))
                              (if (gx#stx-pair? _hd2371324301_)
                                  (let ((_e2378223913_
                                         (gx#stx-e _hd2371324301_)))
                                    (let ((_tl2378423918_
                                           (##cdr _e2378223913_))
                                          (_hd2378323916_
                                           (##car _e2378223913_)))
                                      (___kont2627026271_)))
                                  (___kont2627026271_)))))
                      (if (gx#stx-pair? _hd2371324301_)
                          (let ((_e2378223913_ (gx#stx-e _hd2371324301_)))
                            (let ((_tl2378423918_ (##cdr _e2378223913_))
                                  (_hd2378323916_ (##car _e2378223913_)))
                              (___kont2627026271_)))
                          (___kont2627026271_)))))
              (if (gx#stx-pair? _hd2371324301_)
                  (let ((_e2378223913_ (gx#stx-e _hd2371324301_)))
                    (let ((_tl2378423918_ (##cdr _e2378223913_))
                          (_hd2378323916_ (##car _e2378223913_)))
                      (___kont2627026271_)))
                  (___kont2627026271_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _hd2371324301_)
                                                      (let ((_e2378223913_
                                                             (gx#stx-e
                                                              _hd2371324301_)))
                                                        (let ((_tl2378423918_
                                                               (##cdr _e2378223913_))
                                                              (_hd2378323916_
                                                               (##car _e2378223913_)))
                                                          (___kont2627026271_)))
                                                      (___kont2627026271_)))))
                                          (if (gx#stx-pair? _hd2371324301_)
                                              (let ((_e2378223913_
                                                     (gx#stx-e
                                                      _hd2371324301_)))
                                                (let ((_tl2378423918_
                                                       (##cdr _e2378223913_))
                                                      (_hd2378323916_
                                                       (##car _e2378223913_)))
                                                  (___kont2627026271_)))
                                              (___kont2627026271_)))
                                      (if (gx#stx-pair? _hd2371324301_)
                                          (let ((_e2378223913_
                                                 (gx#stx-e _hd2371324301_)))
                                            (let ((_tl2378423918_
                                                   (##cdr _e2378223913_))
                                                  (_hd2378323916_
                                                   (##car _e2378223913_)))
                                              (___kont2627026271_)))
                                          (___kont2627026271_)))
                                  (if (gx#stx-pair? _hd2371324301_)
                                      (let ((_e2378223913_
                                             (gx#stx-e _hd2371324301_)))
                                        (let ((_tl2378423918_
                                               (##cdr _e2378223913_))
                                              (_hd2378323916_
                                               (##car _e2378223913_)))
                                          (___kont2627026271_)))
                                      (___kont2627026271_)))))
                          (if (gx#stx-pair? _hd2371324301_)
                              (let ((_e2378223913_ (gx#stx-e _hd2371324301_)))
                                (let ((_tl2378423918_ (##cdr _e2378223913_))
                                      (_hd2378323916_ (##car _e2378223913_)))
                                  (___kont2627026271_)))
                              (___kont2627026271_)))))
                  (if (gx#stx-pair? _hd2371324301_)
                      (let ((_e2378223913_ (gx#stx-e _hd2371324301_)))
                        (let ((_tl2378423918_ (##cdr _e2378223913_))
                              (_hd2378323916_ (##car _e2378223913_)))
                          (___kont2627026271_)))
                      (___kont2627026271_)))
              (if (gx#stx-pair? _hd2371324301_)
                  (let ((_e2378223913_ (gx#stx-e _hd2371324301_)))
                    (let ((_tl2378423918_ (##cdr _e2378223913_))
                          (_hd2378323916_ (##car _e2378223913_)))
                      (___kont2627026271_)))
                  (___kont2627026271_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _hd2371324301_)
                                                  (let ((_e2378223913_
                                                         (gx#stx-e
                                                          _hd2371324301_)))
                                                    (let ((_tl2378423918_
                                                           (##cdr _e2378223913_))
                                                          (_hd2378323916_
                                                           (##car _e2378223913_)))
                                                      (___kont2627026271_)))
                                                  (___kont2627026271_)))
                                          (if (gx#stx-pair? _hd2371324301_)
                                              (let ((_e2378223913_
                                                     (gx#stx-e
                                                      _hd2371324301_)))
                                                (let ((_tl2378423918_
                                                       (##cdr _e2378223913_))
                                                      (_hd2378323916_
                                                       (##car _e2378223913_)))
                                                  (___kont2627026271_)))
                                              (___kont2627026271_)))
                                      (if (gx#stx-pair? _hd2371324301_)
                                          (let ((_e2378223913_
                                                 (gx#stx-e _hd2371324301_)))
                                            (let ((_tl2378423918_
                                                   (##cdr _e2378223913_))
                                                  (_hd2378323916_
                                                   (##car _e2378223913_)))
                                              (___kont2627026271_)))
                                          (___kont2627026271_)))))
                              (if (gx#stx-pair? _hd2371324301_)
                                  (let ((_e2378223913_
                                         (gx#stx-e _hd2371324301_)))
                                    (let ((_tl2378423918_
                                           (##cdr _e2378223913_))
                                          (_hd2378323916_
                                           (##car _e2378223913_)))
                                      (___kont2627026271_)))
                                  (___kont2627026271_)))))
                      (if (gx#stx-pair? _hd2371324301_)
                          (let ((_e2378223913_ (gx#stx-e _hd2371324301_)))
                            (let ((_tl2378423918_ (##cdr _e2378223913_))
                                  (_hd2378323916_ (##car _e2378223913_)))
                              (___kont2627026271_)))
                          (___kont2627026271_)))
                  (if (gx#stx-pair? _hd2371324301_)
                      (let ((_e2378223913_ (gx#stx-e _hd2371324301_)))
                        (let ((_tl2378423918_ (##cdr _e2378223913_))
                              (_hd2378323916_ (##car _e2378223913_)))
                          (___kont2627026271_)))
                      (___kont2627026271_)))
              (if (gx#stx-pair? _hd2371324301_)
                  (let ((_e2378223913_ (gx#stx-e _hd2371324301_)))
                    (let ((_tl2378423918_ (##cdr _e2378223913_))
                          (_hd2378323916_ (##car _e2378223913_)))
                      (___kont2627026271_)))
                  (___kont2627026271_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _hd2371324301_)
                                                  (let ((_e2378223913_
                                                         (gx#stx-e
                                                          _hd2371324301_)))
                                                    (let ((_tl2378423918_
                                                           (##cdr _e2378223913_))
                                                          (_hd2378323916_
                                                           (##car _e2378223913_)))
                                                      (___kont2627026271_)))
                                                  (___kont2627026271_)))))
                                      (if (gx#stx-pair? _hd2371324301_)
                                          (let ((_e2378223913_
                                                 (gx#stx-e _hd2371324301_)))
                                            (let ((_tl2378423918_
                                                   (##cdr _e2378223913_))
                                                  (_hd2378323916_
                                                   (##car _e2378223913_)))
                                              (___kont2627026271_)))
                                          (___kont2627026271_)))))
                              (___kont2627026271_))))))
                 (___match2641926420_
                  (lambda (_e2364524529_
                           _hd2364624532_
                           _tl2364724534_
                           _e2364824537_
                           _hd2364924540_
                           _tl2365024542_
                           ___splice2625826259_
                           _target2365124545_
                           _tl2365324547_)
                    (letrec ((_loop2365424550_
                              (lambda (_hd2365224553_ _arg2365824555_)
                                (if (gx#stx-pair? _hd2365224553_)
                                    (let ((_e2365524558_
                                           (gx#stx-e _hd2365224553_)))
                                      (let ((_lp-tl2365724563_
                                             (##cdr _e2365524558_))
                                            (_lp-hd2365624561_
                                             (##car _e2365524558_)))
                                        (_loop2365424550_
                                         _lp-tl2365724563_
                                         (cons _lp-hd2365624561_
                                               _arg2365824555_))))
                                    (let ((_arg2365924566_
                                           (reverse _arg2365824555_)))
                                      (if (gx#stx-pair? _tl2365024542_)
                                          (let ((_e2366024569_
                                                 (gx#stx-e _tl2365024542_)))
                                            (let ((_tl2366224574_
                                                   (##cdr _e2366024569_))
                                                  (_hd2366124572_
                                                   (##car _e2366024569_)))
                                              (if (gx#stx-pair? _hd2366124572_)
                                                  (let ((_e2366324577_
                                                         (gx#stx-e
                                                          _hd2366124572_)))
                                                    (let ((_tl2366524582_
                                                           (##cdr _e2366324577_))
                                                          (_hd2366424580_
                                                           (##car _e2366324577_)))
                                                      (if (gx#identifier?
                                                           _hd2366424580_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2366424580_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2366524582_)
                          (let ((_e2366624585_ (gx#stx-e _tl2366524582_)))
                            (let ((_tl2366824590_ (##cdr _e2366624585_))
                                  (_hd2366724588_ (##car _e2366624585_)))
                              (if (gx#stx-pair? _hd2366724588_)
                                  (let ((_e2366924593_
                                         (gx#stx-e _hd2366724588_)))
                                    (let ((_tl2367124598_
                                           (##cdr _e2366924593_))
                                          (_hd2367024596_
                                           (##car _e2366924593_)))
                                      (if (gx#identifier? _hd2367024596_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2367024596_)
                                              (if (gx#stx-pair? _tl2367124598_)
                                                  (let ((_e2367224601_
                                                         (gx#stx-e
                                                          _tl2367124598_)))
                                                    (let ((_tl2367424606_
                                                           (##cdr _e2367224601_))
                                                          (_hd2367324604_
                                                           (##car _e2367224601_)))
                                                      (if (gx#stx-null?
                                                           _tl2367424606_)
                                                          (if (gx#stx-pair?
                                                               _tl2366824590_)
                                                              (let ((_e2367524609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2366824590_)))
                        (let ((_tl2367724614_ (##cdr _e2367524609_))
                              (_hd2367624612_ (##car _e2367524609_)))
                          (if (gx#stx-pair? _hd2367624612_)
                              (let ((_e2367824617_ (gx#stx-e _hd2367624612_)))
                                (let ((_tl2368024622_ (##cdr _e2367824617_))
                                      (_hd2367924620_ (##car _e2367824617_)))
                                  (if (gx#identifier? _hd2367924620_)
                                      (if (gx#stx-eq? '%#ref _hd2367924620_)
                                          (if (gx#stx-pair? _tl2368024622_)
                                              (let ((_e2368124625_
                                                     (gx#stx-e
                                                      _tl2368024622_)))
                                                (let ((_tl2368324630_
                                                       (##cdr _e2368124625_))
                                                      (_hd2368224628_
                                                       (##car _e2368124625_)))
                                                  (if (gx#stx-null?
                                                       _tl2368324630_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2367724614_)
                                                          (let ((___splice2626026261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl2367724614_ '0)))
                    (let ((_tl2368624635_
                           (##vector-ref ___splice2626026261_ '1))
                          (_target2368424633_
                           (##vector-ref ___splice2626026261_ '0)))
                      (if (gx#stx-null? _tl2368624635_)
                          (letrec ((_loop2368724638_
                                    (lambda (_hd2368524641_ _xarg2369124643_)
                                      (if (gx#stx-pair? _hd2368524641_)
                                          (let ((_e2368824646_
                                                 (gx#stx-e _hd2368524641_)))
                                            (let ((_lp-tl2369024651_
                                                   (##cdr _e2368824646_))
                                                  (_lp-hd2368924649_
                                                   (##car _e2368824646_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd2368924649_)
                                                  (let ((_e2369324654_
                                                         (gx#stx-e
                                                          _lp-hd2368924649_)))
                                                    (let ((_tl2369524659_
                                                           (##cdr _e2369324654_))
                                                          (_hd2369424657_
                                                           (##car _e2369324654_)))
                                                      (if (gx#identifier?
                                                           _hd2369424657_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2369424657_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2369524659_)
                          (let ((_e2369624662_ (gx#stx-e _tl2369524659_)))
                            (let ((_tl2369824667_ (##cdr _e2369624662_))
                                  (_hd2369724665_ (##car _e2369624662_)))
                              (if (gx#stx-null? _tl2369824667_)
                                  (_loop2368724638_
                                   _lp-tl2369024651_
                                   (cons _hd2369724665_ _xarg2369124643_))
                                  (___match2642526426_
                                   _e2364524529_
                                   _hd2364624532_
                                   _tl2364724534_))))
                          (___match2642526426_
                           _e2364524529_
                           _hd2364624532_
                           _tl2364724534_))
                      (___match2642526426_
                       _e2364524529_
                       _hd2364624532_
                       _tl2364724534_))
                  (___match2642526426_
                   _e2364524529_
                   _hd2364624532_
                   _tl2364724534_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2642526426_
                                                   _e2364524529_
                                                   _hd2364624532_
                                                   _tl2364724534_))))
                                          (let ((_xarg2369224670_
                                                 (reverse _xarg2369124643_)))
                                            (if (gx#stx-null? _tl2366224574_)
                                                (let ((_L24673_
                                                       _xarg2369224670_)
                                                      (_L24674_ _hd2368224628_)
                                                      (_L24675_ _hd2367324604_)
                                                      (_L24676_
                                                       _arg2365924566_))
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g2471324716_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2471424718_)
                               (cons _g2471324716_ _g2471424718_))
                             '()
                             _L24676_)))
                  (if (gxc#runtime-identifier=? _L24675_ 'make-struct-instance)
                      (if (fx= (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2472024723_
                                                          _g2472124725_)
                                                   (cons _g2472024723_
                                                         _g2472124725_))
                                                 '()
                                                 _L24676_)))
                               (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2472724730_
                                                          _g2472824732_)
                                                   (cons _g2472724730_
                                                         _g2472824732_))
                                                 '()
                                                 _L24673_))))
                          (andmap2 gx#free-identifier=?
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g2473424737_
                                                      _g2473524739_)
                                               (cons _g2473424737_
                                                     _g2473524739_))
                                             '()
                                             _L24676_))
                                   (begin
                                     '#!void
                                     (foldr1 (lambda (_g2474124744_
                                                      _g2474224746_)
                                               (cons _g2474124744_
                                                     _g2474224746_))
                                             '()
                                             _L24673_)))
                          '#f)
                      '#f)
                  '#f)
              (___kont2625626257_ _L24673_ _L24674_ _L24675_ _L24676_)
              (___match2642526426_
               _e2364524529_
               _hd2364624532_
               _tl2364724534_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2642526426_
                                                 _e2364524529_
                                                 _hd2364624532_
                                                 _tl2364724534_)))))))
                            (_loop2368724638_ _target2368424633_ '()))
                          (___match2642526426_
                           _e2364524529_
                           _hd2364624532_
                           _tl2364724534_))))
                  (___match2642526426_
                   _e2364524529_
                   _hd2364624532_
                   _tl2364724534_))
              (___match2642526426_
               _e2364524529_
               _hd2364624532_
               _tl2364724534_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match2642526426_
                                               _e2364524529_
                                               _hd2364624532_
                                               _tl2364724534_))
                                          (___match2642526426_
                                           _e2364524529_
                                           _hd2364624532_
                                           _tl2364724534_))
                                      (___match2642526426_
                                       _e2364524529_
                                       _hd2364624532_
                                       _tl2364724534_))))
                              (___match2642526426_
                               _e2364524529_
                               _hd2364624532_
                               _tl2364724534_))))
                      (___match2642526426_
                       _e2364524529_
                       _hd2364624532_
                       _tl2364724534_))
                  (___match2642526426_
                   _e2364524529_
                   _hd2364624532_
                   _tl2364724534_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2642526426_
                                                   _e2364524529_
                                                   _hd2364624532_
                                                   _tl2364724534_))
                                              (___match2642526426_
                                               _e2364524529_
                                               _hd2364624532_
                                               _tl2364724534_))
                                          (___match2642526426_
                                           _e2364524529_
                                           _hd2364624532_
                                           _tl2364724534_))))
                                  (___match2642526426_
                                   _e2364524529_
                                   _hd2364624532_
                                   _tl2364724534_))))
                          (___match2642526426_
                           _e2364524529_
                           _hd2364624532_
                           _tl2364724534_))
                      (___match2642526426_
                       _e2364524529_
                       _hd2364624532_
                       _tl2364724534_))
                  (___match2642526426_
                   _e2364524529_
                   _hd2364624532_
                   _tl2364724534_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2642526426_
                                                   _e2364524529_
                                                   _hd2364624532_
                                                   _tl2364724534_))))
                                          (___match2642526426_
                                           _e2364524529_
                                           _hd2364624532_
                                           _tl2364724534_)))))))
                      (_loop2365424550_ _target2365124545_ '()))))
                 (___match2639926400_
                  (lambda (_e2359324759_
                           _hd2359424762_
                           _tl2359524764_
                           _e2359624767_
                           _hd2359724770_
                           _tl2359824772_
                           _e2359924775_
                           _hd2360024778_
                           _tl2360124780_
                           _e2360224783_
                           _hd2360324786_
                           _tl2360424788_
                           _e2360524791_
                           _hd2360624794_
                           _tl2360724796_
                           _e2360824799_
                           _hd2360924802_
                           _tl2361024804_
                           _e2361124807_
                           _hd2361224810_
                           _tl2361324812_
                           _e2361424815_
                           _hd2361524818_
                           _tl2361624820_
                           _e2361724823_
                           _hd2361824826_
                           _tl2361924828_
                           _e2362024831_
                           _hd2362124834_
                           _tl2362224836_
                           _e2362324839_
                           _hd2362424842_
                           _tl2362524844_
                           _e2362624847_
                           _hd2362724850_
                           _tl2362824852_
                           _e2362924855_
                           _hd2363024858_
                           _tl2363124860_
                           _e2363224863_
                           _hd2363324866_
                           _tl2363424868_
                           _e2363524871_
                           _hd2363624874_
                           _tl2363724876_
                           _e2363824879_
                           _hd2363924882_
                           _tl2364024884_)
                    (let ((_L24887_ _hd2363924882_)
                          (_L24888_ _hd2363024858_)
                          (_L24889_ _hd2362124834_)
                          (_L24890_ _hd2361224810_)
                          (_L24891_ _hd2359724770_))
                      (if (if (gx#identifier? _L24891_)
                              (if (gxc#runtime-identifier=? _L24890_ 'apply)
                                  (if (gxc#runtime-identifier=?
                                       _L24889_
                                       'make-struct-instance)
                                      (gx#free-identifier=? _L24891_ _L24887_)
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont2625426255_
                           _L24887_
                           _L24888_
                           _L24889_
                           _L24890_
                           _L24891_)
                          (if (gx#stx-pair/null? _hd2359724770_)
                              (let ((___splice2625826259_
                                     (gx#syntax-split-splice
                                      _hd2359724770_
                                      '0)))
                                (let ((_tl2365324547_
                                       (##vector-ref ___splice2625826259_ '1))
                                      (_target2365124545_
                                       (##vector-ref ___splice2625826259_ '0)))
                                  (if (gx#stx-null? _tl2365324547_)
                                      (___match2641926420_
                                       _e2359324759_
                                       _hd2359424762_
                                       _tl2359524764_
                                       _e2359624767_
                                       _hd2359724770_
                                       _tl2359824772_
                                       ___splice2625826259_
                                       _target2365124545_
                                       _tl2365324547_)
                                      (___match2642526426_
                                       _e2359324759_
                                       _hd2359424762_
                                       _tl2359524764_))))
                              (___match2642526426_
                               _e2359324759_
                               _hd2359424762_
                               _tl2359524764_)))))))
            (if (gx#stx-pair? ___stx2625226253_)
                (let ((_e2359324759_ (gx#stx-e ___stx2625226253_)))
                  (let ((_tl2359524764_ (##cdr _e2359324759_))
                        (_hd2359424762_ (##car _e2359324759_)))
                    (if (gx#stx-pair? _tl2359524764_)
                        (let ((_e2359624767_ (gx#stx-e _tl2359524764_)))
                          (let ((_tl2359824772_ (##cdr _e2359624767_))
                                (_hd2359724770_ (##car _e2359624767_)))
                            (if (gx#stx-pair? _tl2359824772_)
                                (let ((_e2359924775_
                                       (gx#stx-e _tl2359824772_)))
                                  (let ((_tl2360124780_ (##cdr _e2359924775_))
                                        (_hd2360024778_ (##car _e2359924775_)))
                                    (if (gx#stx-pair? _hd2360024778_)
                                        (let ((_e2360224783_
                                               (gx#stx-e _hd2360024778_)))
                                          (let ((_tl2360424788_
                                                 (##cdr _e2360224783_))
                                                (_hd2360324786_
                                                 (##car _e2360224783_)))
                                            (if (gx#identifier? _hd2360324786_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd2360324786_)
                                                    (if (gx#stx-pair?
                                                         _tl2360424788_)
                                                        (let ((_e2360524791_
                                                               (gx#stx-e
                                                                _tl2360424788_)))
                                                          (let ((_tl2360724796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2360524791_))
                        (_hd2360624794_ (##car _e2360524791_)))
                    (if (gx#stx-pair? _hd2360624794_)
                        (let ((_e2360824799_ (gx#stx-e _hd2360624794_)))
                          (let ((_tl2361024804_ (##cdr _e2360824799_))
                                (_hd2360924802_ (##car _e2360824799_)))
                            (if (gx#identifier? _hd2360924802_)
                                (if (gx#stx-eq? '%#ref _hd2360924802_)
                                    (if (gx#stx-pair? _tl2361024804_)
                                        (let ((_e2361124807_
                                               (gx#stx-e _tl2361024804_)))
                                          (let ((_tl2361324812_
                                                 (##cdr _e2361124807_))
                                                (_hd2361224810_
                                                 (##car _e2361124807_)))
                                            (if (gx#stx-null? _tl2361324812_)
                                                (if (gx#stx-pair?
                                                     _tl2360724796_)
                                                    (let ((_e2361424815_
                                                           (gx#stx-e
                                                            _tl2360724796_)))
                                                      (let ((_tl2361624820_
                                                             (##cdr _e2361424815_))
                                                            (_hd2361524818_
                                                             (##car _e2361424815_)))
                                                        (if (gx#stx-pair?
                                                             _hd2361524818_)
                                                            (let ((_e2361724823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2361524818_)))
                      (let ((_tl2361924828_ (##cdr _e2361724823_))
                            (_hd2361824826_ (##car _e2361724823_)))
                        (if (gx#identifier? _hd2361824826_)
                            (if (gx#stx-eq? '%#ref _hd2361824826_)
                                (if (gx#stx-pair? _tl2361924828_)
                                    (let ((_e2362024831_
                                           (gx#stx-e _tl2361924828_)))
                                      (let ((_tl2362224836_
                                             (##cdr _e2362024831_))
                                            (_hd2362124834_
                                             (##car _e2362024831_)))
                                        (if (gx#stx-null? _tl2362224836_)
                                            (if (gx#stx-pair? _tl2361624820_)
                                                (let ((_e2362324839_
                                                       (gx#stx-e
                                                        _tl2361624820_)))
                                                  (let ((_tl2362524844_
                                                         (##cdr _e2362324839_))
                                                        (_hd2362424842_
                                                         (##car _e2362324839_)))
                                                    (if (gx#stx-pair?
                                                         _hd2362424842_)
                                                        (let ((_e2362624847_
                                                               (gx#stx-e
                                                                _hd2362424842_)))
                                                          (let ((_tl2362824852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2362624847_))
                        (_hd2362724850_ (##car _e2362624847_)))
                    (if (gx#identifier? _hd2362724850_)
                        (if (gx#stx-eq? '%#ref _hd2362724850_)
                            (if (gx#stx-pair? _tl2362824852_)
                                (let ((_e2362924855_
                                       (gx#stx-e _tl2362824852_)))
                                  (let ((_tl2363124860_ (##cdr _e2362924855_))
                                        (_hd2363024858_ (##car _e2362924855_)))
                                    (if (gx#stx-null? _tl2363124860_)
                                        (if (gx#stx-pair? _tl2362524844_)
                                            (let ((_e2363224863_
                                                   (gx#stx-e _tl2362524844_)))
                                              (let ((_tl2363424868_
                                                     (##cdr _e2363224863_))
                                                    (_hd2363324866_
                                                     (##car _e2363224863_)))
                                                (if (gx#stx-pair?
                                                     _hd2363324866_)
                                                    (let ((_e2363524871_
                                                           (gx#stx-e
                                                            _hd2363324866_)))
                                                      (let ((_tl2363724876_
                                                             (##cdr _e2363524871_))
                                                            (_hd2363624874_
                                                             (##car _e2363524871_)))
                                                        (if (gx#identifier?
                                                             _hd2363624874_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2363624874_)
                        (if (gx#stx-pair? _tl2363724876_)
                            (let ((_e2363824879_ (gx#stx-e _tl2363724876_)))
                              (let ((_tl2364024884_ (##cdr _e2363824879_))
                                    (_hd2363924882_ (##car _e2363824879_)))
                                (if (gx#stx-null? _tl2364024884_)
                                    (if (gx#stx-null? _tl2363424868_)
                                        (if (gx#stx-null? _tl2360124780_)
                                            (___match2639926400_
                                             _e2359324759_
                                             _hd2359424762_
                                             _tl2359524764_
                                             _e2359624767_
                                             _hd2359724770_
                                             _tl2359824772_
                                             _e2359924775_
                                             _hd2360024778_
                                             _tl2360124780_
                                             _e2360224783_
                                             _hd2360324786_
                                             _tl2360424788_
                                             _e2360524791_
                                             _hd2360624794_
                                             _tl2360724796_
                                             _e2360824799_
                                             _hd2360924802_
                                             _tl2361024804_
                                             _e2361124807_
                                             _hd2361224810_
                                             _tl2361324812_
                                             _e2361424815_
                                             _hd2361524818_
                                             _tl2361624820_
                                             _e2361724823_
                                             _hd2361824826_
                                             _tl2361924828_
                                             _e2362024831_
                                             _hd2362124834_
                                             _tl2362224836_
                                             _e2362324839_
                                             _hd2362424842_
                                             _tl2362524844_
                                             _e2362624847_
                                             _hd2362724850_
                                             _tl2362824852_
                                             _e2362924855_
                                             _hd2363024858_
                                             _tl2363124860_
                                             _e2363224863_
                                             _hd2363324866_
                                             _tl2363424868_
                                             _e2363524871_
                                             _hd2363624874_
                                             _tl2363724876_
                                             _e2363824879_
                                             _hd2363924882_
                                             _tl2364024884_)
                                            (if (gx#stx-pair/null?
                                                 _hd2359724770_)
                                                (let ((___splice2625826259_
                                                       (gx#syntax-split-splice
                                                        _hd2359724770_
                                                        '0)))
                                                  (let ((_tl2365324547_
                                                         (##vector-ref
                                                          ___splice2625826259_
                                                          '1))
                                                        (_target2365124545_
                                                         (##vector-ref
                                                          ___splice2625826259_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2365324547_)
                                                        (___match2641926420_
                                                         _e2359324759_
                                                         _hd2359424762_
                                                         _tl2359524764_
                                                         _e2359624767_
                                                         _hd2359724770_
                                                         _tl2359824772_
                                                         ___splice2625826259_
                                                         _target2365124545_
                                                         _tl2365324547_)
                                                        (___match2642526426_
                                                         _e2359324759_
                                                         _hd2359424762_
                                                         _tl2359524764_))))
                                                (___match2642526426_
                                                 _e2359324759_
                                                 _hd2359424762_
                                                 _tl2359524764_)))
                                        (if (gx#stx-pair/null? _hd2359724770_)
                                            (let ((___splice2625826259_
                                                   (gx#syntax-split-splice
                                                    _hd2359724770_
                                                    '0)))
                                              (let ((_tl2365324547_
                                                     (##vector-ref
                                                      ___splice2625826259_
                                                      '1))
                                                    (_target2365124545_
                                                     (##vector-ref
                                                      ___splice2625826259_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2365324547_)
                                                    (___match2641926420_
                                                     _e2359324759_
                                                     _hd2359424762_
                                                     _tl2359524764_
                                                     _e2359624767_
                                                     _hd2359724770_
                                                     _tl2359824772_
                                                     ___splice2625826259_
                                                     _target2365124545_
                                                     _tl2365324547_)
                                                    (___match2642526426_
                                                     _e2359324759_
                                                     _hd2359424762_
                                                     _tl2359524764_))))
                                            (___match2642526426_
                                             _e2359324759_
                                             _hd2359424762_
                                             _tl2359524764_)))
                                    (if (gx#stx-pair/null? _hd2359724770_)
                                        (let ((___splice2625826259_
                                               (gx#syntax-split-splice
                                                _hd2359724770_
                                                '0)))
                                          (let ((_tl2365324547_
                                                 (##vector-ref
                                                  ___splice2625826259_
                                                  '1))
                                                (_target2365124545_
                                                 (##vector-ref
                                                  ___splice2625826259_
                                                  '0)))
                                            (if (gx#stx-null? _tl2365324547_)
                                                (___match2641926420_
                                                 _e2359324759_
                                                 _hd2359424762_
                                                 _tl2359524764_
                                                 _e2359624767_
                                                 _hd2359724770_
                                                 _tl2359824772_
                                                 ___splice2625826259_
                                                 _target2365124545_
                                                 _tl2365324547_)
                                                (___match2642526426_
                                                 _e2359324759_
                                                 _hd2359424762_
                                                 _tl2359524764_))))
                                        (___match2642526426_
                                         _e2359324759_
                                         _hd2359424762_
                                         _tl2359524764_)))))
                            (if (gx#stx-pair/null? _hd2359724770_)
                                (let ((___splice2625826259_
                                       (gx#syntax-split-splice
                                        _hd2359724770_
                                        '0)))
                                  (let ((_tl2365324547_
                                         (##vector-ref
                                          ___splice2625826259_
                                          '1))
                                        (_target2365124545_
                                         (##vector-ref
                                          ___splice2625826259_
                                          '0)))
                                    (if (gx#stx-null? _tl2365324547_)
                                        (___match2641926420_
                                         _e2359324759_
                                         _hd2359424762_
                                         _tl2359524764_
                                         _e2359624767_
                                         _hd2359724770_
                                         _tl2359824772_
                                         ___splice2625826259_
                                         _target2365124545_
                                         _tl2365324547_)
                                        (___match2642526426_
                                         _e2359324759_
                                         _hd2359424762_
                                         _tl2359524764_))))
                                (___match2642526426_
                                 _e2359324759_
                                 _hd2359424762_
                                 _tl2359524764_)))
                        (if (gx#stx-pair/null? _hd2359724770_)
                            (let ((___splice2625826259_
                                   (gx#syntax-split-splice _hd2359724770_ '0)))
                              (let ((_tl2365324547_
                                     (##vector-ref ___splice2625826259_ '1))
                                    (_target2365124545_
                                     (##vector-ref ___splice2625826259_ '0)))
                                (if (gx#stx-null? _tl2365324547_)
                                    (___match2641926420_
                                     _e2359324759_
                                     _hd2359424762_
                                     _tl2359524764_
                                     _e2359624767_
                                     _hd2359724770_
                                     _tl2359824772_
                                     ___splice2625826259_
                                     _target2365124545_
                                     _tl2365324547_)
                                    (___match2642526426_
                                     _e2359324759_
                                     _hd2359424762_
                                     _tl2359524764_))))
                            (___match2642526426_
                             _e2359324759_
                             _hd2359424762_
                             _tl2359524764_)))
                    (if (gx#stx-pair/null? _hd2359724770_)
                        (let ((___splice2625826259_
                               (gx#syntax-split-splice _hd2359724770_ '0)))
                          (let ((_tl2365324547_
                                 (##vector-ref ___splice2625826259_ '1))
                                (_target2365124545_
                                 (##vector-ref ___splice2625826259_ '0)))
                            (if (gx#stx-null? _tl2365324547_)
                                (___match2641926420_
                                 _e2359324759_
                                 _hd2359424762_
                                 _tl2359524764_
                                 _e2359624767_
                                 _hd2359724770_
                                 _tl2359824772_
                                 ___splice2625826259_
                                 _target2365124545_
                                 _tl2365324547_)
                                (___match2642526426_
                                 _e2359324759_
                                 _hd2359424762_
                                 _tl2359524764_))))
                        (___match2642526426_
                         _e2359324759_
                         _hd2359424762_
                         _tl2359524764_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _hd2359724770_)
                                                        (let ((___splice2625826259_
                                                               (gx#syntax-split-splice
                                                                _hd2359724770_
                                                                '0)))
                                                          (let ((_tl2365324547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2625826259_ '1))
                        (_target2365124545_
                         (##vector-ref ___splice2625826259_ '0)))
                    (if (gx#stx-null? _tl2365324547_)
                        (___match2641926420_
                         _e2359324759_
                         _hd2359424762_
                         _tl2359524764_
                         _e2359624767_
                         _hd2359724770_
                         _tl2359824772_
                         ___splice2625826259_
                         _target2365124545_
                         _tl2365324547_)
                        (___match2642526426_
                         _e2359324759_
                         _hd2359424762_
                         _tl2359524764_))))
                (___match2642526426_
                 _e2359324759_
                 _hd2359424762_
                 _tl2359524764_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _hd2359724770_)
                                                (let ((___splice2625826259_
                                                       (gx#syntax-split-splice
                                                        _hd2359724770_
                                                        '0)))
                                                  (let ((_tl2365324547_
                                                         (##vector-ref
                                                          ___splice2625826259_
                                                          '1))
                                                        (_target2365124545_
                                                         (##vector-ref
                                                          ___splice2625826259_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2365324547_)
                                                        (___match2641926420_
                                                         _e2359324759_
                                                         _hd2359424762_
                                                         _tl2359524764_
                                                         _e2359624767_
                                                         _hd2359724770_
                                                         _tl2359824772_
                                                         ___splice2625826259_
                                                         _target2365124545_
                                                         _tl2365324547_)
                                                        (___match2642526426_
                                                         _e2359324759_
                                                         _hd2359424762_
                                                         _tl2359524764_))))
                                                (___match2642526426_
                                                 _e2359324759_
                                                 _hd2359424762_
                                                 _tl2359524764_)))
                                        (if (gx#stx-pair/null? _hd2359724770_)
                                            (let ((___splice2625826259_
                                                   (gx#syntax-split-splice
                                                    _hd2359724770_
                                                    '0)))
                                              (let ((_tl2365324547_
                                                     (##vector-ref
                                                      ___splice2625826259_
                                                      '1))
                                                    (_target2365124545_
                                                     (##vector-ref
                                                      ___splice2625826259_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2365324547_)
                                                    (___match2641926420_
                                                     _e2359324759_
                                                     _hd2359424762_
                                                     _tl2359524764_
                                                     _e2359624767_
                                                     _hd2359724770_
                                                     _tl2359824772_
                                                     ___splice2625826259_
                                                     _target2365124545_
                                                     _tl2365324547_)
                                                    (___match2642526426_
                                                     _e2359324759_
                                                     _hd2359424762_
                                                     _tl2359524764_))))
                                            (___match2642526426_
                                             _e2359324759_
                                             _hd2359424762_
                                             _tl2359524764_)))))
                                (if (gx#stx-pair/null? _hd2359724770_)
                                    (let ((___splice2625826259_
                                           (gx#syntax-split-splice
                                            _hd2359724770_
                                            '0)))
                                      (let ((_tl2365324547_
                                             (##vector-ref
                                              ___splice2625826259_
                                              '1))
                                            (_target2365124545_
                                             (##vector-ref
                                              ___splice2625826259_
                                              '0)))
                                        (if (gx#stx-null? _tl2365324547_)
                                            (___match2641926420_
                                             _e2359324759_
                                             _hd2359424762_
                                             _tl2359524764_
                                             _e2359624767_
                                             _hd2359724770_
                                             _tl2359824772_
                                             ___splice2625826259_
                                             _target2365124545_
                                             _tl2365324547_)
                                            (___match2642526426_
                                             _e2359324759_
                                             _hd2359424762_
                                             _tl2359524764_))))
                                    (___match2642526426_
                                     _e2359324759_
                                     _hd2359424762_
                                     _tl2359524764_)))
                            (if (gx#stx-pair/null? _hd2359724770_)
                                (let ((___splice2625826259_
                                       (gx#syntax-split-splice
                                        _hd2359724770_
                                        '0)))
                                  (let ((_tl2365324547_
                                         (##vector-ref
                                          ___splice2625826259_
                                          '1))
                                        (_target2365124545_
                                         (##vector-ref
                                          ___splice2625826259_
                                          '0)))
                                    (if (gx#stx-null? _tl2365324547_)
                                        (___match2641926420_
                                         _e2359324759_
                                         _hd2359424762_
                                         _tl2359524764_
                                         _e2359624767_
                                         _hd2359724770_
                                         _tl2359824772_
                                         ___splice2625826259_
                                         _target2365124545_
                                         _tl2365324547_)
                                        (___match2642526426_
                                         _e2359324759_
                                         _hd2359424762_
                                         _tl2359524764_))))
                                (___match2642526426_
                                 _e2359324759_
                                 _hd2359424762_
                                 _tl2359524764_)))
                        (if (gx#stx-pair/null? _hd2359724770_)
                            (let ((___splice2625826259_
                                   (gx#syntax-split-splice _hd2359724770_ '0)))
                              (let ((_tl2365324547_
                                     (##vector-ref ___splice2625826259_ '1))
                                    (_target2365124545_
                                     (##vector-ref ___splice2625826259_ '0)))
                                (if (gx#stx-null? _tl2365324547_)
                                    (___match2641926420_
                                     _e2359324759_
                                     _hd2359424762_
                                     _tl2359524764_
                                     _e2359624767_
                                     _hd2359724770_
                                     _tl2359824772_
                                     ___splice2625826259_
                                     _target2365124545_
                                     _tl2365324547_)
                                    (___match2642526426_
                                     _e2359324759_
                                     _hd2359424762_
                                     _tl2359524764_))))
                            (___match2642526426_
                             _e2359324759_
                             _hd2359424762_
                             _tl2359524764_)))))
                (if (gx#stx-pair/null? _hd2359724770_)
                    (let ((___splice2625826259_
                           (gx#syntax-split-splice _hd2359724770_ '0)))
                      (let ((_tl2365324547_
                             (##vector-ref ___splice2625826259_ '1))
                            (_target2365124545_
                             (##vector-ref ___splice2625826259_ '0)))
                        (if (gx#stx-null? _tl2365324547_)
                            (___match2641926420_
                             _e2359324759_
                             _hd2359424762_
                             _tl2359524764_
                             _e2359624767_
                             _hd2359724770_
                             _tl2359824772_
                             ___splice2625826259_
                             _target2365124545_
                             _tl2365324547_)
                            (___match2642526426_
                             _e2359324759_
                             _hd2359424762_
                             _tl2359524764_))))
                    (___match2642526426_
                     _e2359324759_
                     _hd2359424762_
                     _tl2359524764_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _hd2359724770_)
                                                    (let ((___splice2625826259_
                                                           (gx#syntax-split-splice
                                                            _hd2359724770_
                                                            '0)))
                                                      (let ((_tl2365324547_
                                                             (##vector-ref
                                                              ___splice2625826259_
                                                              '1))
                                                            (_target2365124545_
                                                             (##vector-ref
                                                              ___splice2625826259_
                                                              '0)))
                                                        (if (gx#stx-null?
                                                             _tl2365324547_)
                                                            (___match2641926420_
                                                             _e2359324759_
                                                             _hd2359424762_
                                                             _tl2359524764_
                                                             _e2359624767_
                                                             _hd2359724770_
                                                             _tl2359824772_
                                                             ___splice2625826259_
                                                             _target2365124545_
                                                             _tl2365324547_)
                                                            (___match2642526426_
                                                             _e2359324759_
                                                             _hd2359424762_
                                                             _tl2359524764_))))
                                                    (___match2642526426_
                                                     _e2359324759_
                                                     _hd2359424762_
                                                     _tl2359524764_)))
                                            (if (gx#stx-pair/null?
                                                 _hd2359724770_)
                                                (let ((___splice2625826259_
                                                       (gx#syntax-split-splice
                                                        _hd2359724770_
                                                        '0)))
                                                  (let ((_tl2365324547_
                                                         (##vector-ref
                                                          ___splice2625826259_
                                                          '1))
                                                        (_target2365124545_
                                                         (##vector-ref
                                                          ___splice2625826259_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2365324547_)
                                                        (___match2641926420_
                                                         _e2359324759_
                                                         _hd2359424762_
                                                         _tl2359524764_
                                                         _e2359624767_
                                                         _hd2359724770_
                                                         _tl2359824772_
                                                         ___splice2625826259_
                                                         _target2365124545_
                                                         _tl2365324547_)
                                                        (___match2642526426_
                                                         _e2359324759_
                                                         _hd2359424762_
                                                         _tl2359524764_))))
                                                (___match2642526426_
                                                 _e2359324759_
                                                 _hd2359424762_
                                                 _tl2359524764_)))))
                                    (if (gx#stx-pair/null? _hd2359724770_)
                                        (let ((___splice2625826259_
                                               (gx#syntax-split-splice
                                                _hd2359724770_
                                                '0)))
                                          (let ((_tl2365324547_
                                                 (##vector-ref
                                                  ___splice2625826259_
                                                  '1))
                                                (_target2365124545_
                                                 (##vector-ref
                                                  ___splice2625826259_
                                                  '0)))
                                            (if (gx#stx-null? _tl2365324547_)
                                                (___match2641926420_
                                                 _e2359324759_
                                                 _hd2359424762_
                                                 _tl2359524764_
                                                 _e2359624767_
                                                 _hd2359724770_
                                                 _tl2359824772_
                                                 ___splice2625826259_
                                                 _target2365124545_
                                                 _tl2365324547_)
                                                (___match2642526426_
                                                 _e2359324759_
                                                 _hd2359424762_
                                                 _tl2359524764_))))
                                        (___match2642526426_
                                         _e2359324759_
                                         _hd2359424762_
                                         _tl2359524764_)))
                                (if (gx#stx-pair/null? _hd2359724770_)
                                    (let ((___splice2625826259_
                                           (gx#syntax-split-splice
                                            _hd2359724770_
                                            '0)))
                                      (let ((_tl2365324547_
                                             (##vector-ref
                                              ___splice2625826259_
                                              '1))
                                            (_target2365124545_
                                             (##vector-ref
                                              ___splice2625826259_
                                              '0)))
                                        (if (gx#stx-null? _tl2365324547_)
                                            (___match2641926420_
                                             _e2359324759_
                                             _hd2359424762_
                                             _tl2359524764_
                                             _e2359624767_
                                             _hd2359724770_
                                             _tl2359824772_
                                             ___splice2625826259_
                                             _target2365124545_
                                             _tl2365324547_)
                                            (___match2642526426_
                                             _e2359324759_
                                             _hd2359424762_
                                             _tl2359524764_))))
                                    (___match2642526426_
                                     _e2359324759_
                                     _hd2359424762_
                                     _tl2359524764_)))
                            (if (gx#stx-pair/null? _hd2359724770_)
                                (let ((___splice2625826259_
                                       (gx#syntax-split-splice
                                        _hd2359724770_
                                        '0)))
                                  (let ((_tl2365324547_
                                         (##vector-ref
                                          ___splice2625826259_
                                          '1))
                                        (_target2365124545_
                                         (##vector-ref
                                          ___splice2625826259_
                                          '0)))
                                    (if (gx#stx-null? _tl2365324547_)
                                        (___match2641926420_
                                         _e2359324759_
                                         _hd2359424762_
                                         _tl2359524764_
                                         _e2359624767_
                                         _hd2359724770_
                                         _tl2359824772_
                                         ___splice2625826259_
                                         _target2365124545_
                                         _tl2365324547_)
                                        (___match2642526426_
                                         _e2359324759_
                                         _hd2359424762_
                                         _tl2359524764_))))
                                (___match2642526426_
                                 _e2359324759_
                                 _hd2359424762_
                                 _tl2359524764_)))))
                    (if (gx#stx-pair/null? _hd2359724770_)
                        (let ((___splice2625826259_
                               (gx#syntax-split-splice _hd2359724770_ '0)))
                          (let ((_tl2365324547_
                                 (##vector-ref ___splice2625826259_ '1))
                                (_target2365124545_
                                 (##vector-ref ___splice2625826259_ '0)))
                            (if (gx#stx-null? _tl2365324547_)
                                (___match2641926420_
                                 _e2359324759_
                                 _hd2359424762_
                                 _tl2359524764_
                                 _e2359624767_
                                 _hd2359724770_
                                 _tl2359824772_
                                 ___splice2625826259_
                                 _target2365124545_
                                 _tl2365324547_)
                                (___match2642526426_
                                 _e2359324759_
                                 _hd2359424762_
                                 _tl2359524764_))))
                        (___match2642526426_
                         _e2359324759_
                         _hd2359424762_
                         _tl2359524764_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _hd2359724770_)
                                                        (let ((___splice2625826259_
                                                               (gx#syntax-split-splice
                                                                _hd2359724770_
                                                                '0)))
                                                          (let ((_tl2365324547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2625826259_ '1))
                        (_target2365124545_
                         (##vector-ref ___splice2625826259_ '0)))
                    (if (gx#stx-null? _tl2365324547_)
                        (___match2641926420_
                         _e2359324759_
                         _hd2359424762_
                         _tl2359524764_
                         _e2359624767_
                         _hd2359724770_
                         _tl2359824772_
                         ___splice2625826259_
                         _target2365124545_
                         _tl2365324547_)
                        (___match2642526426_
                         _e2359324759_
                         _hd2359424762_
                         _tl2359524764_))))
                (___match2642526426_
                 _e2359324759_
                 _hd2359424762_
                 _tl2359524764_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _hd2359724770_)
                                                    (let ((___splice2625826259_
                                                           (gx#syntax-split-splice
                                                            _hd2359724770_
                                                            '0)))
                                                      (let ((_tl2365324547_
                                                             (##vector-ref
                                                              ___splice2625826259_
                                                              '1))
                                                            (_target2365124545_
                                                             (##vector-ref
                                                              ___splice2625826259_
                                                              '0)))
                                                        (if (gx#stx-null?
                                                             _tl2365324547_)
                                                            (___match2641926420_
                                                             _e2359324759_
                                                             _hd2359424762_
                                                             _tl2359524764_
                                                             _e2359624767_
                                                             _hd2359724770_
                                                             _tl2359824772_
                                                             ___splice2625826259_
                                                             _target2365124545_
                                                             _tl2365324547_)
                                                            (___match2642526426_
                                                             _e2359324759_
                                                             _hd2359424762_
                                                             _tl2359524764_))))
                                                    (___match2642526426_
                                                     _e2359324759_
                                                     _hd2359424762_
                                                     _tl2359524764_)))))
                                        (if (gx#stx-pair/null? _hd2359724770_)
                                            (let ((___splice2625826259_
                                                   (gx#syntax-split-splice
                                                    _hd2359724770_
                                                    '0)))
                                              (let ((_tl2365324547_
                                                     (##vector-ref
                                                      ___splice2625826259_
                                                      '1))
                                                    (_target2365124545_
                                                     (##vector-ref
                                                      ___splice2625826259_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2365324547_)
                                                    (___match2641926420_
                                                     _e2359324759_
                                                     _hd2359424762_
                                                     _tl2359524764_
                                                     _e2359624767_
                                                     _hd2359724770_
                                                     _tl2359824772_
                                                     ___splice2625826259_
                                                     _target2365124545_
                                                     _tl2365324547_)
                                                    (___match2642526426_
                                                     _e2359324759_
                                                     _hd2359424762_
                                                     _tl2359524764_))))
                                            (___match2642526426_
                                             _e2359324759_
                                             _hd2359424762_
                                             _tl2359524764_)))
                                    (if (gx#stx-pair/null? _hd2359724770_)
                                        (let ((___splice2625826259_
                                               (gx#syntax-split-splice
                                                _hd2359724770_
                                                '0)))
                                          (let ((_tl2365324547_
                                                 (##vector-ref
                                                  ___splice2625826259_
                                                  '1))
                                                (_target2365124545_
                                                 (##vector-ref
                                                  ___splice2625826259_
                                                  '0)))
                                            (if (gx#stx-null? _tl2365324547_)
                                                (___match2641926420_
                                                 _e2359324759_
                                                 _hd2359424762_
                                                 _tl2359524764_
                                                 _e2359624767_
                                                 _hd2359724770_
                                                 _tl2359824772_
                                                 ___splice2625826259_
                                                 _target2365124545_
                                                 _tl2365324547_)
                                                (___match2642526426_
                                                 _e2359324759_
                                                 _hd2359424762_
                                                 _tl2359524764_))))
                                        (___match2642526426_
                                         _e2359324759_
                                         _hd2359424762_
                                         _tl2359524764_)))
                                (if (gx#stx-pair/null? _hd2359724770_)
                                    (let ((___splice2625826259_
                                           (gx#syntax-split-splice
                                            _hd2359724770_
                                            '0)))
                                      (let ((_tl2365324547_
                                             (##vector-ref
                                              ___splice2625826259_
                                              '1))
                                            (_target2365124545_
                                             (##vector-ref
                                              ___splice2625826259_
                                              '0)))
                                        (if (gx#stx-null? _tl2365324547_)
                                            (___match2641926420_
                                             _e2359324759_
                                             _hd2359424762_
                                             _tl2359524764_
                                             _e2359624767_
                                             _hd2359724770_
                                             _tl2359824772_
                                             ___splice2625826259_
                                             _target2365124545_
                                             _tl2365324547_)
                                            (___match2642526426_
                                             _e2359324759_
                                             _hd2359424762_
                                             _tl2359524764_))))
                                    (___match2642526426_
                                     _e2359324759_
                                     _hd2359424762_
                                     _tl2359524764_)))))
                        (if (gx#stx-pair/null? _hd2359724770_)
                            (let ((___splice2625826259_
                                   (gx#syntax-split-splice _hd2359724770_ '0)))
                              (let ((_tl2365324547_
                                     (##vector-ref ___splice2625826259_ '1))
                                    (_target2365124545_
                                     (##vector-ref ___splice2625826259_ '0)))
                                (if (gx#stx-null? _tl2365324547_)
                                    (___match2641926420_
                                     _e2359324759_
                                     _hd2359424762_
                                     _tl2359524764_
                                     _e2359624767_
                                     _hd2359724770_
                                     _tl2359824772_
                                     ___splice2625826259_
                                     _target2365124545_
                                     _tl2365324547_)
                                    (___match2642526426_
                                     _e2359324759_
                                     _hd2359424762_
                                     _tl2359524764_))))
                            (___match2642526426_
                             _e2359324759_
                             _hd2359424762_
                             _tl2359524764_)))))
                (if (gx#stx-pair/null? _hd2359724770_)
                    (let ((___splice2625826259_
                           (gx#syntax-split-splice _hd2359724770_ '0)))
                      (let ((_tl2365324547_
                             (##vector-ref ___splice2625826259_ '1))
                            (_target2365124545_
                             (##vector-ref ___splice2625826259_ '0)))
                        (if (gx#stx-null? _tl2365324547_)
                            (___match2641926420_
                             _e2359324759_
                             _hd2359424762_
                             _tl2359524764_
                             _e2359624767_
                             _hd2359724770_
                             _tl2359824772_
                             ___splice2625826259_
                             _target2365124545_
                             _tl2365324547_)
                            (___match2642526426_
                             _e2359324759_
                             _hd2359424762_
                             _tl2359524764_))))
                    (___match2642526426_
                     _e2359324759_
                     _hd2359424762_
                     _tl2359524764_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _hd2359724770_)
                                                        (let ((___splice2625826259_
                                                               (gx#syntax-split-splice
                                                                _hd2359724770_
                                                                '0)))
                                                          (let ((_tl2365324547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2625826259_ '1))
                        (_target2365124545_
                         (##vector-ref ___splice2625826259_ '0)))
                    (if (gx#stx-null? _tl2365324547_)
                        (___match2641926420_
                         _e2359324759_
                         _hd2359424762_
                         _tl2359524764_
                         _e2359624767_
                         _hd2359724770_
                         _tl2359824772_
                         ___splice2625826259_
                         _target2365124545_
                         _tl2365324547_)
                        (___match2642526426_
                         _e2359324759_
                         _hd2359424762_
                         _tl2359524764_))))
                (___match2642526426_
                 _e2359324759_
                 _hd2359424762_
                 _tl2359524764_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _hd2359724770_)
                                                    (let ((___splice2625826259_
                                                           (gx#syntax-split-splice
                                                            _hd2359724770_
                                                            '0)))
                                                      (let ((_tl2365324547_
                                                             (##vector-ref
                                                              ___splice2625826259_
                                                              '1))
                                                            (_target2365124545_
                                                             (##vector-ref
                                                              ___splice2625826259_
                                                              '0)))
                                                        (if (gx#stx-null?
                                                             _tl2365324547_)
                                                            (___match2641926420_
                                                             _e2359324759_
                                                             _hd2359424762_
                                                             _tl2359524764_
                                                             _e2359624767_
                                                             _hd2359724770_
                                                             _tl2359824772_
                                                             ___splice2625826259_
                                                             _target2365124545_
                                                             _tl2365324547_)
                                                            (___match2642526426_
                                                             _e2359324759_
                                                             _hd2359424762_
                                                             _tl2359524764_))))
                                                    (___match2642526426_
                                                     _e2359324759_
                                                     _hd2359424762_
                                                     _tl2359524764_)))))
                                        (if (gx#stx-pair/null? _hd2359724770_)
                                            (let ((___splice2625826259_
                                                   (gx#syntax-split-splice
                                                    _hd2359724770_
                                                    '0)))
                                              (let ((_tl2365324547_
                                                     (##vector-ref
                                                      ___splice2625826259_
                                                      '1))
                                                    (_target2365124545_
                                                     (##vector-ref
                                                      ___splice2625826259_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2365324547_)
                                                    (___match2641926420_
                                                     _e2359324759_
                                                     _hd2359424762_
                                                     _tl2359524764_
                                                     _e2359624767_
                                                     _hd2359724770_
                                                     _tl2359824772_
                                                     ___splice2625826259_
                                                     _target2365124545_
                                                     _tl2365324547_)
                                                    (___match2642526426_
                                                     _e2359324759_
                                                     _hd2359424762_
                                                     _tl2359524764_))))
                                            (___match2642526426_
                                             _e2359324759_
                                             _hd2359424762_
                                             _tl2359524764_)))))
                                (if (gx#stx-pair/null? _hd2359724770_)
                                    (let ((___splice2625826259_
                                           (gx#syntax-split-splice
                                            _hd2359724770_
                                            '0)))
                                      (let ((_tl2365324547_
                                             (##vector-ref
                                              ___splice2625826259_
                                              '1))
                                            (_target2365124545_
                                             (##vector-ref
                                              ___splice2625826259_
                                              '0)))
                                        (if (gx#stx-null? _tl2365324547_)
                                            (___match2641926420_
                                             _e2359324759_
                                             _hd2359424762_
                                             _tl2359524764_
                                             _e2359624767_
                                             _hd2359724770_
                                             _tl2359824772_
                                             ___splice2625826259_
                                             _target2365124545_
                                             _tl2365324547_)
                                            (___match2642526426_
                                             _e2359324759_
                                             _hd2359424762_
                                             _tl2359524764_))))
                                    (___match2642526426_
                                     _e2359324759_
                                     _hd2359424762_
                                     _tl2359524764_)))))
                        (___match2642526426_
                         _e2359324759_
                         _hd2359424762_
                         _tl2359524764_))))
                (___kont2627026271_)))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx23525_)
      (letrec ((_clause-e23527_
                (lambda (_form23577_)
                  (let ((__obj28494 (make-object gxc#!lambda::t '5)))
                    (begin
                      (gxc#!lambda:::init!__0
                       __obj28494
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form23577_)
                       (gxc#dispatch-lambda-form-delegate _form23577_))
                      __obj28494)))))
        (let* ((___stx2672026721_ _stx23525_)
               (_g2353023540_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2672026721_))))
          (let ((___kont2672226723_
                 (lambda (_L23560_)
                   (let ((_clauses23572_ (map _clause-e23527_ _L23560_)))
                     (##structure
                      gxc#!case-lambda::t
                      'case-lambda
                      _clauses23572_))))
                (___kont2672426725_ (lambda () '#f)))
            (let ((___match2673126732_
                   (lambda (_e2353323552_ _hd2353423555_ _tl2353523557_)
                     (let ((_L23560_ _tl2353523557_))
                       (if (andmap1 gxc#dispatch-lambda-form? _L23560_)
                           (___kont2672226723_ _L23560_)
                           (___kont2672426725_))))))
              (if (gx#stx-pair? ___stx2672026721_)
                  (let ((_e2353323552_ (gx#stx-e ___stx2672026721_)))
                    (let ((_tl2353523557_ (##cdr _e2353323552_))
                          (_hd2353423555_ (##car _e2353323552_)))
                      (___match2673126732_
                       _e2353323552_
                       _hd2353423555_
                       _tl2353523557_)))
                  (___kont2672426725_))))))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx23430_)
      (let* ((___stx2673426735_ _stx23430_)
             (_g2343323453_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2673426735_))))
        (let ((___kont2673626737_
               (lambda (_L23497_ _L23498_)
                 (let ((_type-e2351523517_
                        (table-ref
                         gxc#basic-expression-type-builtin
                         (gxc#identifier-symbol _L23498_)
                         '#f)))
                   (if _type-e2351523517_
                       (let ((_type-e23520_ _type-e2351523517_))
                         (_type-e23520_ _stx23430_ _L23497_))
                       '#f))))
              (___kont2673826739_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2673426735_)
              (let ((_e2343723465_ (gx#stx-e ___stx2673426735_)))
                (let ((_tl2343923470_ (##cdr _e2343723465_))
                      (_hd2343823468_ (##car _e2343723465_)))
                  (if (gx#stx-pair? _tl2343923470_)
                      (let ((_e2344023473_ (gx#stx-e _tl2343923470_)))
                        (let ((_tl2344223478_ (##cdr _e2344023473_))
                              (_hd2344123476_ (##car _e2344023473_)))
                          (if (gx#stx-pair? _hd2344123476_)
                              (let ((_e2344323481_ (gx#stx-e _hd2344123476_)))
                                (let ((_tl2344523486_ (##cdr _e2344323481_))
                                      (_hd2344423484_ (##car _e2344323481_)))
                                  (if (gx#identifier? _hd2344423484_)
                                      (if (gx#stx-eq? '%#ref _hd2344423484_)
                                          (if (gx#stx-pair? _tl2344523486_)
                                              (let ((_e2344623489_
                                                     (gx#stx-e
                                                      _tl2344523486_)))
                                                (let ((_tl2344823494_
                                                       (##cdr _e2344623489_))
                                                      (_hd2344723492_
                                                       (##car _e2344623489_)))
                                                  (if (gx#stx-null?
                                                       _tl2344823494_)
                                                      (___kont2673626737_
                                                       _tl2344223478_
                                                       _hd2344723492_)
                                                      (___kont2673826739_))))
                                              (___kont2673826739_))
                                          (___kont2673826739_))
                                      (___kont2673826739_))))
                              (___kont2673826739_))))
                      (___kont2673826739_))))
              (___kont2673826739_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx22910_ _args22911_)
      (let* ((___stx2677226773_ _args22911_)
             (_g2291523029_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2677226773_))))
        (let ((___kont2677426775_
               (lambda (_L23379_ _L23380_ _L23381_ _L23382_ _L23383_)
                 (let ((__obj28495 (make-object gxc#!struct-type::t '7)))
                   (begin
                     (gxc#!struct-type:::init!
                      __obj28495
                      (gx#stx-e _L23383_)
                      '#f
                      (gx#stx-e _L23382_)
                      '0
                      (gx#stx-e _L23379_)
                      (gx#stx-e _L23380_))
                     __obj28495))))
              (___kont2677626777_
               (lambda (_L23169_ _L23170_ _L23171_ _L23172_ _L23173_ _L23174_)
                 (let* ((_super-t23220_
                         (if (gx#stx-e _L23173_)
                             (gxc#identifier-symbol _L23173_)
                             '#f))
                        (_super-type23222_
                         (if _super-t23220_
                             (gxc#optimizer-resolve-type _super-t23220_)
                             '#f)))
                   (begin
                     (if (if _super-type23222_
                             (not (##structure-instance-of?
                                   _super-type23222_
                                   'gxc#!struct-type::t))
                             '#f)
                         (gxc#raise-compile-error
                          '"Illegal struct-type construction; invalid super type"
                          _stx22910_
                          _L23173_)
                         '#!void)
                     (let ((_fields23238_ (gx#stx-e _L23172_))
                           (_xfields23239_
                            (if _super-type23222_
                                (let ((_super-fields2322423227_
                                       (##structure-ref
                                        _super-type23222_
                                        '3
                                        gxc#!struct-type::t
                                        '#f))
                                      (_super-xfields2322523229_
                                       (##structure-ref
                                        _super-type23222_
                                        '4
                                        gxc#!struct-type::t
                                        '#f)))
                                  (if _super-fields2322423227_
                                      (if _super-xfields2322523229_
                                          (let ((_super-fields23232_
                                                 _super-fields2322423227_)
                                                (_super-xfields23233_
                                                 _super-xfields2322523229_))
                                            (fx+ _super-fields23232_
                                                 _super-xfields23233_))
                                          '#f)
                                      '#f))
                                '#f))
                           (_plist23240_ (gx#stx-e _L23170_))
                           (_ctor23241_
                            (let ((_$e23235_ (gx#stx-e _L23169_)))
                              (if _$e23235_
                                  (values _$e23235_)
                                  (if _super-type23222_
                                      (##structure-ref
                                       _super-type23222_
                                       '5
                                       gxc#!struct-type::t
                                       '#f)
                                      (if _super-t23220_ '#!void '#f))))))
                       (let ((__obj28496 (make-object gxc#!struct-type::t '7)))
                         (begin
                           (gxc#!struct-type:::init!
                            __obj28496
                            (gx#stx-e _L23174_)
                            _super-t23220_
                            _fields23238_
                            _xfields23239_
                            _ctor23241_
                            _plist23240_)
                           __obj28496)))))))
              (___kont2677826779_
               (lambda ()
                 (begin
                   (gxc#verbose
                    '"make-struct-type: can't infer type "
                    (gx#syntax->datum _stx22910_))
                   '#f))))
          (if (gx#stx-pair? ___stx2677226773_)
              (let ((_e2292223248_ (gx#stx-e ___stx2677226773_)))
                (let ((_tl2292423253_ (##cdr _e2292223248_))
                      (_hd2292323251_ (##car _e2292223248_)))
                  (if (gx#stx-pair? _hd2292323251_)
                      (let ((_e2292523256_ (gx#stx-e _hd2292323251_)))
                        (let ((_tl2292723261_ (##cdr _e2292523256_))
                              (_hd2292623259_ (##car _e2292523256_)))
                          (if (gx#identifier? _hd2292623259_)
                              (if (gx#stx-eq? '%#quote _hd2292623259_)
                                  (if (gx#stx-pair? _tl2292723261_)
                                      (let ((_e2292823264_
                                             (gx#stx-e _tl2292723261_)))
                                        (let ((_tl2293023269_
                                               (##cdr _e2292823264_))
                                              (_hd2292923267_
                                               (##car _e2292823264_)))
                                          (if (gx#stx-null? _tl2293023269_)
                                              (if (gx#stx-pair? _tl2292423253_)
                                                  (let ((_e2293123272_
                                                         (gx#stx-e
                                                          _tl2292423253_)))
                                                    (let ((_tl2293323277_
                                                           (##cdr _e2293123272_))
                                                          (_hd2293223275_
                                                           (##car _e2293123272_)))
                                                      (if (gx#stx-pair?
                                                           _hd2293223275_)
                                                          (let ((_e2293423280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2293223275_)))
                    (let ((_tl2293623285_ (##cdr _e2293423280_))
                          (_hd2293523283_ (##car _e2293423280_)))
                      (if (gx#identifier? _hd2293523283_)
                          (if (gx#stx-eq? '%#quote _hd2293523283_)
                              (if (gx#stx-pair? _tl2293623285_)
                                  (let ((_e2293723288_
                                         (gx#stx-e _tl2293623285_)))
                                    (let ((_tl2293923293_
                                           (##cdr _e2293723288_))
                                          (_hd2293823291_
                                           (##car _e2293723288_)))
                                      (if (gx#stx-datum? _hd2293823291_)
                                          (let ((_e2294023296_
                                                 (gx#stx-e _hd2293823291_)))
                                            (if (equal? _e2294023296_ '#f)
                                                (if (gx#stx-null?
                                                     _tl2293923293_)
                                                    (if (gx#stx-pair?
                                                         _tl2293323277_)
                                                        (let ((_e2294123299_
                                                               (gx#stx-e
                                                                _tl2293323277_)))
                                                          (let ((_tl2294323304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2294123299_))
                        (_hd2294223302_ (##car _e2294123299_)))
                    (if (gx#stx-pair? _hd2294223302_)
                        (let ((_e2294423307_ (gx#stx-e _hd2294223302_)))
                          (let ((_tl2294623312_ (##cdr _e2294423307_))
                                (_hd2294523310_ (##car _e2294423307_)))
                            (if (gx#identifier? _hd2294523310_)
                                (if (gx#stx-eq? '%#quote _hd2294523310_)
                                    (if (gx#stx-pair? _tl2294623312_)
                                        (let ((_e2294723315_
                                               (gx#stx-e _tl2294623312_)))
                                          (let ((_tl2294923320_
                                                 (##cdr _e2294723315_))
                                                (_hd2294823318_
                                                 (##car _e2294723315_)))
                                            (if (gx#stx-null? _tl2294923320_)
                                                (if (gx#stx-pair?
                                                     _tl2294323304_)
                                                    (let ((_e2295023323_
                                                           (gx#stx-e
                                                            _tl2294323304_)))
                                                      (let ((_tl2295223328_
                                                             (##cdr _e2295023323_))
                                                            (_hd2295123326_
                                                             (##car _e2295023323_)))
                                                        (if (gx#stx-pair?
                                                             _tl2295223328_)
                                                            (let ((_e2295323331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2295223328_)))
                      (let ((_tl2295523336_ (##cdr _e2295323331_))
                            (_hd2295423334_ (##car _e2295323331_)))
                        (if (gx#stx-pair? _hd2295423334_)
                            (let ((_e2295623339_ (gx#stx-e _hd2295423334_)))
                              (let ((_tl2295823344_ (##cdr _e2295623339_))
                                    (_hd2295723342_ (##car _e2295623339_)))
                                (if (gx#identifier? _hd2295723342_)
                                    (if (gx#stx-eq? '%#quote _hd2295723342_)
                                        (if (gx#stx-pair? _tl2295823344_)
                                            (let ((_e2295923347_
                                                   (gx#stx-e _tl2295823344_)))
                                              (let ((_tl2296123352_
                                                     (##cdr _e2295923347_))
                                                    (_hd2296023350_
                                                     (##car _e2295923347_)))
                                                (if (gx#stx-null?
                                                     _tl2296123352_)
                                                    (if (gx#stx-pair?
                                                         _tl2295523336_)
                                                        (let ((_e2296223355_
                                                               (gx#stx-e
                                                                _tl2295523336_)))
                                                          (let ((_tl2296423360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2296223355_))
                        (_hd2296323358_ (##car _e2296223355_)))
                    (if (gx#stx-pair? _hd2296323358_)
                        (let ((_e2296523363_ (gx#stx-e _hd2296323358_)))
                          (let ((_tl2296723368_ (##cdr _e2296523363_))
                                (_hd2296623366_ (##car _e2296523363_)))
                            (if (gx#identifier? _hd2296623366_)
                                (if (gx#stx-eq? '%#quote _hd2296623366_)
                                    (if (gx#stx-pair? _tl2296723368_)
                                        (let ((_e2296823371_
                                               (gx#stx-e _tl2296723368_)))
                                          (let ((_tl2297023376_
                                                 (##cdr _e2296823371_))
                                                (_hd2296923374_
                                                 (##car _e2296823371_)))
                                            (if (gx#stx-null? _tl2297023376_)
                                                (___kont2677426775_
                                                 _hd2296923374_
                                                 _hd2296023350_
                                                 _hd2295123326_
                                                 _hd2294823318_
                                                 _hd2292923267_)
                                                (___kont2677826779_))))
                                        (___kont2677826779_))
                                    (___kont2677826779_))
                                (___kont2677826779_))))
                        (___kont2677826779_))))
                (___kont2677826779_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2677826779_))))
                                            (___kont2677826779_))
                                        (___kont2677826779_))
                                    (___kont2677826779_))))
                            (___kont2677826779_))))
                    (___kont2677826779_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2677826779_))
                                                (___kont2677826779_))))
                                        (___kont2677826779_))
                                    (___kont2677826779_))
                                (___kont2677826779_))))
                        (___kont2677826779_))))
                (___kont2677826779_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2677826779_))
                                                (___kont2677826779_)))
                                          (___kont2677826779_))))
                                  (___kont2677826779_))
                              (if (gx#stx-eq? '%#ref _hd2293523283_)
                                  (if (gx#stx-pair? _tl2293623285_)
                                      (let ((_e2299223081_
                                             (gx#stx-e _tl2293623285_)))
                                        (let ((_tl2299423086_
                                               (##cdr _e2299223081_))
                                              (_hd2299323084_
                                               (##car _e2299223081_)))
                                          (if (gx#stx-null? _tl2299423086_)
                                              (if (gx#stx-pair? _tl2293323277_)
                                                  (let ((_e2299523089_
                                                         (gx#stx-e
                                                          _tl2293323277_)))
                                                    (let ((_tl2299723094_
                                                           (##cdr _e2299523089_))
                                                          (_hd2299623092_
                                                           (##car _e2299523089_)))
                                                      (if (gx#stx-pair?
                                                           _hd2299623092_)
                                                          (let ((_e2299823097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2299623092_)))
                    (let ((_tl2300023102_ (##cdr _e2299823097_))
                          (_hd2299923100_ (##car _e2299823097_)))
                      (if (gx#identifier? _hd2299923100_)
                          (if (gx#stx-eq? '%#quote _hd2299923100_)
                              (if (gx#stx-pair? _tl2300023102_)
                                  (let ((_e2300123105_
                                         (gx#stx-e _tl2300023102_)))
                                    (let ((_tl2300323110_
                                           (##cdr _e2300123105_))
                                          (_hd2300223108_
                                           (##car _e2300123105_)))
                                      (if (gx#stx-null? _tl2300323110_)
                                          (if (gx#stx-pair? _tl2299723094_)
                                              (let ((_e2300423113_
                                                     (gx#stx-e
                                                      _tl2299723094_)))
                                                (let ((_tl2300623118_
                                                       (##cdr _e2300423113_))
                                                      (_hd2300523116_
                                                       (##car _e2300423113_)))
                                                  (if (gx#stx-pair?
                                                       _tl2300623118_)
                                                      (let ((_e2300723121_
                                                             (gx#stx-e
                                                              _tl2300623118_)))
                                                        (let ((_tl2300923126_
                                                               (##cdr _e2300723121_))
                                                              (_hd2300823124_
                                                               (##car _e2300723121_)))
                                                          (if (gx#stx-pair?
                                                               _hd2300823124_)
                                                              (let ((_e2301023129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2300823124_)))
                        (let ((_tl2301223134_ (##cdr _e2301023129_))
                              (_hd2301123132_ (##car _e2301023129_)))
                          (if (gx#identifier? _hd2301123132_)
                              (if (gx#stx-eq? '%#quote _hd2301123132_)
                                  (if (gx#stx-pair? _tl2301223134_)
                                      (let ((_e2301323137_
                                             (gx#stx-e _tl2301223134_)))
                                        (let ((_tl2301523142_
                                               (##cdr _e2301323137_))
                                              (_hd2301423140_
                                               (##car _e2301323137_)))
                                          (if (gx#stx-null? _tl2301523142_)
                                              (if (gx#stx-pair? _tl2300923126_)
                                                  (let ((_e2301623145_
                                                         (gx#stx-e
                                                          _tl2300923126_)))
                                                    (let ((_tl2301823150_
                                                           (##cdr _e2301623145_))
                                                          (_hd2301723148_
                                                           (##car _e2301623145_)))
                                                      (if (gx#stx-pair?
                                                           _hd2301723148_)
                                                          (let ((_e2301923153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2301723148_)))
                    (let ((_tl2302123158_ (##cdr _e2301923153_))
                          (_hd2302023156_ (##car _e2301923153_)))
                      (if (gx#identifier? _hd2302023156_)
                          (if (gx#stx-eq? '%#quote _hd2302023156_)
                              (if (gx#stx-pair? _tl2302123158_)
                                  (let ((_e2302223161_
                                         (gx#stx-e _tl2302123158_)))
                                    (let ((_tl2302423166_
                                           (##cdr _e2302223161_))
                                          (_hd2302323164_
                                           (##car _e2302223161_)))
                                      (if (gx#stx-null? _tl2302423166_)
                                          (___kont2677626777_
                                           _hd2302323164_
                                           _hd2301423140_
                                           _hd2300523116_
                                           _hd2300223108_
                                           _hd2299323084_
                                           _hd2292923267_)
                                          (___kont2677826779_))))
                                  (___kont2677826779_))
                              (___kont2677826779_))
                          (___kont2677826779_))))
                  (___kont2677826779_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2677826779_))
                                              (___kont2677826779_))))
                                      (___kont2677826779_))
                                  (___kont2677826779_))
                              (___kont2677826779_))))
                      (___kont2677826779_))))
              (___kont2677826779_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2677826779_))
                                          (___kont2677826779_))))
                                  (___kont2677826779_))
                              (___kont2677826779_))
                          (___kont2677826779_))))
                  (___kont2677826779_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2677826779_))
                                              (___kont2677826779_))))
                                      (___kont2677826779_))
                                  (___kont2677826779_)))
                          (___kont2677826779_))))
                  (___kont2677826779_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2677826779_))
                                              (___kont2677826779_))))
                                      (___kont2677826779_))
                                  (___kont2677826779_))
                              (___kont2677826779_))))
                      (___kont2677826779_))))
              (___kont2677826779_))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx22836_ _args22837_)
      (let* ((___stx2704027041_ _args22837_)
             (_g2284022856_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2704027041_))))
        (let ((___kont2704227043_
               (lambda (_L22892_)
                 (##structure
                  gxc#!struct-pred::t
                  (gxc#identifier-symbol _L22892_))))
              (___kont2704427045_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2704027041_)
              (let ((_e2284322868_ (gx#stx-e ___stx2704027041_)))
                (let ((_tl2284522873_ (##cdr _e2284322868_))
                      (_hd2284422871_ (##car _e2284322868_)))
                  (if (gx#stx-pair? _hd2284422871_)
                      (let ((_e2284622876_ (gx#stx-e _hd2284422871_)))
                        (let ((_tl2284822881_ (##cdr _e2284622876_))
                              (_hd2284722879_ (##car _e2284622876_)))
                          (if (gx#identifier? _hd2284722879_)
                              (if (gx#stx-eq? '%#ref _hd2284722879_)
                                  (if (gx#stx-pair? _tl2284822881_)
                                      (let ((_e2284922884_
                                             (gx#stx-e _tl2284822881_)))
                                        (let ((_tl2285122889_
                                               (##cdr _e2284922884_))
                                              (_hd2285022887_
                                               (##car _e2284922884_)))
                                          (if (gx#stx-null? _tl2285122889_)
                                              (if (gx#stx-null? _tl2284522873_)
                                                  (___kont2704227043_
                                                   _hd2285022887_)
                                                  (___kont2704427045_))
                                              (___kont2704427045_))))
                                      (___kont2704427045_))
                                  (___kont2704427045_))
                              (___kont2704427045_))))
                      (___kont2704427045_))))
              (___kont2704427045_))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__%
      (lambda (_stx22707_ _args22708_ _unchecked?22709_)
        (let* ((___stx2707427075_ _args22708_)
               (_g2271222738_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2707427075_))))
          (let ((___kont2707627077_
                 (lambda (_L22798_ _L22799_)
                   (##structure
                    gxc#!struct-getf::t
                    (gxc#identifier-symbol _L22799_)
                    (gx#stx-e _L22798_)
                    _unchecked?22709_)))
                (___kont2707827079_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx2707427075_)
                (let ((_e2271622750_ (gx#stx-e ___stx2707427075_)))
                  (let ((_tl2271822755_ (##cdr _e2271622750_))
                        (_hd2271722753_ (##car _e2271622750_)))
                    (if (gx#stx-pair? _hd2271722753_)
                        (let ((_e2271922758_ (gx#stx-e _hd2271722753_)))
                          (let ((_tl2272122763_ (##cdr _e2271922758_))
                                (_hd2272022761_ (##car _e2271922758_)))
                            (if (gx#identifier? _hd2272022761_)
                                (if (gx#stx-eq? '%#ref _hd2272022761_)
                                    (if (gx#stx-pair? _tl2272122763_)
                                        (let ((_e2272222766_
                                               (gx#stx-e _tl2272122763_)))
                                          (let ((_tl2272422771_
                                                 (##cdr _e2272222766_))
                                                (_hd2272322769_
                                                 (##car _e2272222766_)))
                                            (if (gx#stx-null? _tl2272422771_)
                                                (if (gx#stx-pair?
                                                     _tl2271822755_)
                                                    (let ((_e2272522774_
                                                           (gx#stx-e
                                                            _tl2271822755_)))
                                                      (let ((_tl2272722779_
                                                             (##cdr _e2272522774_))
                                                            (_hd2272622777_
                                                             (##car _e2272522774_)))
                                                        (if (gx#stx-pair?
                                                             _hd2272622777_)
                                                            (let ((_e2272822782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2272622777_)))
                      (let ((_tl2273022787_ (##cdr _e2272822782_))
                            (_hd2272922785_ (##car _e2272822782_)))
                        (if (gx#identifier? _hd2272922785_)
                            (if (gx#stx-eq? '%#quote _hd2272922785_)
                                (if (gx#stx-pair? _tl2273022787_)
                                    (let ((_e2273122790_
                                           (gx#stx-e _tl2273022787_)))
                                      (let ((_tl2273322795_
                                             (##cdr _e2273122790_))
                                            (_hd2273222793_
                                             (##car _e2273122790_)))
                                        (if (gx#stx-null? _tl2273322795_)
                                            (if (gx#stx-null? _tl2272722779_)
                                                (___kont2707627077_
                                                 _hd2273222793_
                                                 _hd2272322769_)
                                                (___kont2707827079_))
                                            (___kont2707827079_))))
                                    (___kont2707827079_))
                                (___kont2707827079_))
                            (___kont2707827079_))))
                    (___kont2707827079_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2707827079_))
                                                (___kont2707827079_))))
                                        (___kont2707827079_))
                                    (___kont2707827079_))
                                (___kont2707827079_))))
                        (___kont2707827079_))))
                (___kont2707827079_))))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx22827_ _args22828_)
          (let ((_unchecked?22830_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__%
             _stx22827_
             _args22828_
             _unchecked?22830_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g28502_
          (let ((_g28501_ (length _g28502_)))
            (cond ((##fx= _g28501_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g28502_))
                  ((##fx= _g28501_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__%
                          _g28502_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g28502_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__%
      (lambda (_stx22577_ _args22578_ _unchecked?22579_)
        (let* ((___stx2713227133_ _args22578_)
               (_g2258222608_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2713227133_))))
          (let ((___kont2713427135_
                 (lambda (_L22668_ _L22669_)
                   (##structure
                    gxc#!struct-setf::t
                    (gxc#identifier-symbol _L22669_)
                    (gx#stx-e _L22668_)
                    _unchecked?22579_)))
                (___kont2713627137_ (lambda () '#f)))
            (if (gx#stx-pair? ___stx2713227133_)
                (let ((_e2258622620_ (gx#stx-e ___stx2713227133_)))
                  (let ((_tl2258822625_ (##cdr _e2258622620_))
                        (_hd2258722623_ (##car _e2258622620_)))
                    (if (gx#stx-pair? _hd2258722623_)
                        (let ((_e2258922628_ (gx#stx-e _hd2258722623_)))
                          (let ((_tl2259122633_ (##cdr _e2258922628_))
                                (_hd2259022631_ (##car _e2258922628_)))
                            (if (gx#identifier? _hd2259022631_)
                                (if (gx#stx-eq? '%#ref _hd2259022631_)
                                    (if (gx#stx-pair? _tl2259122633_)
                                        (let ((_e2259222636_
                                               (gx#stx-e _tl2259122633_)))
                                          (let ((_tl2259422641_
                                                 (##cdr _e2259222636_))
                                                (_hd2259322639_
                                                 (##car _e2259222636_)))
                                            (if (gx#stx-null? _tl2259422641_)
                                                (if (gx#stx-pair?
                                                     _tl2258822625_)
                                                    (let ((_e2259522644_
                                                           (gx#stx-e
                                                            _tl2258822625_)))
                                                      (let ((_tl2259722649_
                                                             (##cdr _e2259522644_))
                                                            (_hd2259622647_
                                                             (##car _e2259522644_)))
                                                        (if (gx#stx-pair?
                                                             _hd2259622647_)
                                                            (let ((_e2259822652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2259622647_)))
                      (let ((_tl2260022657_ (##cdr _e2259822652_))
                            (_hd2259922655_ (##car _e2259822652_)))
                        (if (gx#identifier? _hd2259922655_)
                            (if (gx#stx-eq? '%#quote _hd2259922655_)
                                (if (gx#stx-pair? _tl2260022657_)
                                    (let ((_e2260122660_
                                           (gx#stx-e _tl2260022657_)))
                                      (let ((_tl2260322665_
                                             (##cdr _e2260122660_))
                                            (_hd2260222663_
                                             (##car _e2260122660_)))
                                        (if (gx#stx-null? _tl2260322665_)
                                            (if (gx#stx-null? _tl2259722649_)
                                                (___kont2713427135_
                                                 _hd2260222663_
                                                 _hd2259322639_)
                                                (___kont2713627137_))
                                            (___kont2713627137_))))
                                    (___kont2713627137_))
                                (___kont2713627137_))
                            (___kont2713627137_))))
                    (___kont2713627137_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2713627137_))
                                                (___kont2713627137_))))
                                        (___kont2713627137_))
                                    (___kont2713627137_))
                                (___kont2713627137_))))
                        (___kont2713627137_))))
                (___kont2713627137_))))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx22697_ _args22698_)
          (let ((_unchecked?22700_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__%
             _stx22697_
             _args22698_
             _unchecked?22700_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g28504_
          (let ((_g28503_ (length _g28504_)))
            (cond ((##fx= _g28503_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g28504_))
                  ((##fx= _g28503_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__%
                          _g28504_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g28504_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx22573_ _args22574_)
      (gxc#basic-expression-type-make-struct-field-accessor__%
       _stx22573_
       _args22574_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx22570_ _args22571_)
      (gxc#basic-expression-type-make-struct-field-mutator__%
       _stx22570_
       _args22571_
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
    (lambda (_stx22519_)
      (let* ((_g2252122534_
              (lambda (_g2252222531_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2252222531_)))
             (_g2252022567_
              (lambda (_g2252222537_)
                (if (gx#stx-pair? _g2252222537_)
                    (let ((_e2252422539_ (gx#stx-e _g2252222537_)))
                      (let ((_hd2252522542_ (##car _e2252422539_))
                            (_tl2252622544_ (##cdr _e2252422539_)))
                        (if (gx#stx-pair? _tl2252622544_)
                            (let ((_e2252722547_ (gx#stx-e _tl2252622544_)))
                              (let ((_hd2252822550_ (##car _e2252722547_))
                                    (_tl2252922552_ (##cdr _e2252722547_)))
                                (if (gx#stx-null? _tl2252922552_)
                                    ((lambda (_L22555_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#identifier-symbol _L22555_)))
                                     _hd2252822550_)
                                    (_g2252122534_ _g2252222537_))))
                            (_g2252122534_ _g2252222537_))))
                    (_g2252122534_ _g2252222537_)))))
        (_g2252022567_ _stx22519_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form21753_)
      (let* ((___stx2719027191_ _form21753_)
             (_g2175821915_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2719027191_))))
        (let ((___kont2719227193_ (lambda (_L22439_ _L22440_ _L22441_) '#t))
              (___kont2719827199_
               (lambda (_L22227_ _L22228_ _L22229_ _L22230_ _L22231_ _L22232_)
                 '#t))
              (___kont2720427205_
               (lambda (_L22023_ _L22024_ _L22025_ _L22026_) '#t))
              (___kont2720627207_ (lambda () '#f)))
          (let* ((___match2733127332_
                  (lambda (_e2187521927_
                           _hd2187621930_
                           _tl2187721932_
                           _e2187821935_
                           _hd2187921938_
                           _tl2188021940_
                           _e2188121943_
                           _hd2188221946_
                           _tl2188321948_
                           _e2188421951_
                           _hd2188521954_
                           _tl2188621956_
                           _e2188721959_
                           _hd2188821962_
                           _tl2188921964_
                           _e2189021967_
                           _hd2189121970_
                           _tl2189221972_
                           _e2189321975_
                           _hd2189421978_
                           _tl2189521980_
                           _e2189621983_
                           _hd2189721986_
                           _tl2189821988_
                           _e2189921991_
                           _hd2190021994_
                           _tl2190121996_
                           _e2190221999_
                           _hd2190322002_
                           _tl2190422004_
                           _e2190522007_
                           _hd2190622010_
                           _tl2190722012_
                           _e2190822015_
                           _hd2190922018_
                           _tl2191022020_)
                    (let ((_L22023_ _hd2190922018_)
                          (_L22024_ _hd2190021994_)
                          (_L22025_ _hd2189121970_)
                          (_L22026_ _hd2187621930_))
                      (if (if (gx#identifier? _L22026_)
                              (if (gxc#runtime-identifier=? _L22025_ 'apply)
                                  (if (gx#free-identifier=? _L22026_ _L22023_)
                                      (not (gx#free-identifier=?
                                            _L22024_
                                            _L22026_))
                                      '#f)
                                  '#f)
                              '#f)
                          (___kont2720427205_
                           _L22023_
                           _L22024_
                           _L22025_
                           _L22026_)
                          (___kont2720627207_)))))
                 (___match2730327304_
                  (lambda (_e2187521927_
                           _hd2187621930_
                           _tl2187721932_
                           _e2187821935_
                           _hd2187921938_
                           _tl2188021940_
                           _e2188121943_
                           _hd2188221946_
                           _tl2188321948_
                           _e2188421951_
                           _hd2188521954_
                           _tl2188621956_
                           _e2188721959_
                           _hd2188821962_
                           _tl2188921964_
                           _e2189021967_
                           _hd2189121970_
                           _tl2189221972_
                           _e2189321975_
                           _hd2189421978_
                           _tl2189521980_
                           _e2189621983_
                           _hd2189721986_
                           _tl2189821988_
                           _e2189921991_
                           _hd2190021994_
                           _tl2190121996_)
                    (if (gx#stx-pair? _tl2189521980_)
                        (let ((_e2190221999_ (gx#stx-e _tl2189521980_)))
                          (let ((_tl2190422004_ (##cdr _e2190221999_))
                                (_hd2190322002_ (##car _e2190221999_)))
                            (if (gx#stx-pair? _hd2190322002_)
                                (let ((_e2190522007_
                                       (gx#stx-e _hd2190322002_)))
                                  (let ((_tl2190722012_ (##cdr _e2190522007_))
                                        (_hd2190622010_ (##car _e2190522007_)))
                                    (if (gx#identifier? _hd2190622010_)
                                        (if (gx#stx-eq? '%#ref _hd2190622010_)
                                            (if (gx#stx-pair? _tl2190722012_)
                                                (let ((_e2190822015_
                                                       (gx#stx-e
                                                        _tl2190722012_)))
                                                  (let ((_tl2191022020_
                                                         (##cdr _e2190822015_))
                                                        (_hd2190922018_
                                                         (##car _e2190822015_)))
                                                    (if (gx#stx-null?
                                                         _tl2191022020_)
                                                        (if (gx#stx-null?
                                                             _tl2190422004_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2188021940_)
                        (___match2733127332_
                         _e2187521927_
                         _hd2187621930_
                         _tl2187721932_
                         _e2187821935_
                         _hd2187921938_
                         _tl2188021940_
                         _e2188121943_
                         _hd2188221946_
                         _tl2188321948_
                         _e2188421951_
                         _hd2188521954_
                         _tl2188621956_
                         _e2188721959_
                         _hd2188821962_
                         _tl2188921964_
                         _e2189021967_
                         _hd2189121970_
                         _tl2189221972_
                         _e2189321975_
                         _hd2189421978_
                         _tl2189521980_
                         _e2189621983_
                         _hd2189721986_
                         _tl2189821988_
                         _e2189921991_
                         _hd2190021994_
                         _tl2190121996_
                         _e2190221999_
                         _hd2190322002_
                         _tl2190422004_
                         _e2190522007_
                         _hd2190622010_
                         _tl2190722012_
                         _e2190822015_
                         _hd2190922018_
                         _tl2191022020_)
                        (___kont2720627207_))
                    (___kont2720627207_))
                (___kont2720627207_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2720627207_))
                                            (___kont2720627207_))
                                        (___kont2720627207_))))
                                (___kont2720627207_))))
                        (___kont2720627207_))))
                 (___match2723327234_
                  (lambda (_e2181122067_
                           _hd2181222070_
                           _tl2181322072_
                           ___splice2720027201_
                           _target2181422075_
                           _tl2181622077_)
                    (letrec ((_loop2181722080_
                              (lambda (_hd2181522083_ _arg2182122085_)
                                (if (gx#stx-pair? _hd2181522083_)
                                    (let ((_e2181822088_
                                           (gx#stx-e _hd2181522083_)))
                                      (let ((_lp-tl2182022093_
                                             (##cdr _e2181822088_))
                                            (_lp-hd2181922091_
                                             (##car _e2181822088_)))
                                        (_loop2181722080_
                                         _lp-tl2182022093_
                                         (cons _lp-hd2181922091_
                                               _arg2182122085_))))
                                    (let ((_arg2182222096_
                                           (reverse _arg2182122085_)))
                                      (if (gx#stx-pair? _tl2181322072_)
                                          (let ((_e2182322099_
                                                 (gx#stx-e _tl2181322072_)))
                                            (let ((_tl2182522104_
                                                   (##cdr _e2182322099_))
                                                  (_hd2182422102_
                                                   (##car _e2182322099_)))
                                              (if (gx#stx-pair? _hd2182422102_)
                                                  (let ((_e2182622107_
                                                         (gx#stx-e
                                                          _hd2182422102_)))
                                                    (let ((_tl2182822112_
                                                           (##cdr _e2182622107_))
                                                          (_hd2182722110_
                                                           (##car _e2182622107_)))
                                                      (if (gx#identifier?
                                                           _hd2182722110_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2182722110_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2182822112_)
                          (let ((_e2182922115_ (gx#stx-e _tl2182822112_)))
                            (let ((_tl2183122120_ (##cdr _e2182922115_))
                                  (_hd2183022118_ (##car _e2182922115_)))
                              (if (gx#stx-pair? _hd2183022118_)
                                  (let ((_e2183222123_
                                         (gx#stx-e _hd2183022118_)))
                                    (let ((_tl2183422128_
                                           (##cdr _e2183222123_))
                                          (_hd2183322126_
                                           (##car _e2183222123_)))
                                      (if (gx#identifier? _hd2183322126_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2183322126_)
                                              (if (gx#stx-pair? _tl2183422128_)
                                                  (let ((_e2183522131_
                                                         (gx#stx-e
                                                          _tl2183422128_)))
                                                    (let ((_tl2183722136_
                                                           (##cdr _e2183522131_))
                                                          (_hd2183622134_
                                                           (##car _e2183522131_)))
                                                      (if (gx#stx-null?
                                                           _tl2183722136_)
                                                          (if (gx#stx-pair?
                                                               _tl2183122120_)
                                                              (let ((_e2183822139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2183122120_)))
                        (let ((_tl2184022144_ (##cdr _e2183822139_))
                              (_hd2183922142_ (##car _e2183822139_)))
                          (if (gx#stx-pair? _hd2183922142_)
                              (let ((_e2184122147_ (gx#stx-e _hd2183922142_)))
                                (let ((_tl2184322152_ (##cdr _e2184122147_))
                                      (_hd2184222150_ (##car _e2184122147_)))
                                  (if (gx#identifier? _hd2184222150_)
                                      (if (gx#stx-eq? '%#ref _hd2184222150_)
                                          (if (gx#stx-pair? _tl2184322152_)
                                              (let ((_e2184422155_
                                                     (gx#stx-e
                                                      _tl2184322152_)))
                                                (let ((_tl2184622160_
                                                       (##cdr _e2184422155_))
                                                      (_hd2184522158_
                                                       (##car _e2184422155_)))
                                                  (if (gx#stx-null?
                                                       _tl2184622160_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2184022144_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl2184022144_)
                            '1)
                      (let ((___splice2720227203_
                             (gx#syntax-split-splice _tl2184022144_ '1)))
                        (let ((_tl2184922165_
                               (##vector-ref ___splice2720227203_ '1))
                              (_target2184722163_
                               (##vector-ref ___splice2720227203_ '0)))
                          (if (gx#stx-pair? _tl2184922165_)
                              (let ((_e2185622168_ (gx#stx-e _tl2184922165_)))
                                (let ((_tl2185822173_ (##cdr _e2185622168_))
                                      (_hd2185722171_ (##car _e2185622168_)))
                                  (if (gx#stx-pair? _hd2185722171_)
                                      (let ((_e2185922176_
                                             (gx#stx-e _hd2185722171_)))
                                        (let ((_tl2186122181_
                                               (##cdr _e2185922176_))
                                              (_hd2186022179_
                                               (##car _e2185922176_)))
                                          (if (gx#identifier? _hd2186022179_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _hd2186022179_)
                                                  (if (gx#stx-pair?
                                                       _tl2186122181_)
                                                      (let ((_e2186222184_
                                                             (gx#stx-e
                                                              _tl2186122181_)))
                                                        (let ((_tl2186422189_
                                                               (##cdr _e2186222184_))
                                                              (_hd2186322187_
                                                               (##car _e2186222184_)))
                                                          (if (gx#stx-null?
                                                               _tl2186422189_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2185822173_)
                          (letrec ((_loop2185022192_
                                    (lambda (_hd2184822195_ _xarg2185422197_)
                                      (if (gx#stx-pair? _hd2184822195_)
                                          (let ((_e2185122200_
                                                 (gx#stx-e _hd2184822195_)))
                                            (let ((_lp-tl2185322205_
                                                   (##cdr _e2185122200_))
                                                  (_lp-hd2185222203_
                                                   (##car _e2185122200_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd2185222203_)
                                                  (let ((_e2186522208_
                                                         (gx#stx-e
                                                          _lp-hd2185222203_)))
                                                    (let ((_tl2186722213_
                                                           (##cdr _e2186522208_))
                                                          (_hd2186622211_
                                                           (##car _e2186522208_)))
                                                      (if (gx#identifier?
                                                           _hd2186622211_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2186622211_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2186722213_)
                          (let ((_e2186822216_ (gx#stx-e _tl2186722213_)))
                            (let ((_tl2187022221_ (##cdr _e2186822216_))
                                  (_hd2186922219_ (##car _e2186822216_)))
                              (if (gx#stx-null? _tl2187022221_)
                                  (_loop2185022192_
                                   _lp-tl2185322205_
                                   (cons _hd2186922219_ _xarg2185422197_))
                                  (___match2730327304_
                                   _e2181122067_
                                   _hd2181222070_
                                   _tl2181322072_
                                   _e2182322099_
                                   _hd2182422102_
                                   _tl2182522104_
                                   _e2182622107_
                                   _hd2182722110_
                                   _tl2182822112_
                                   _e2182922115_
                                   _hd2183022118_
                                   _tl2183122120_
                                   _e2183222123_
                                   _hd2183322126_
                                   _tl2183422128_
                                   _e2183522131_
                                   _hd2183622134_
                                   _tl2183722136_
                                   _e2183822139_
                                   _hd2183922142_
                                   _tl2184022144_
                                   _e2184122147_
                                   _hd2184222150_
                                   _tl2184322152_
                                   _e2184422155_
                                   _hd2184522158_
                                   _tl2184622160_))))
                          (___match2730327304_
                           _e2181122067_
                           _hd2181222070_
                           _tl2181322072_
                           _e2182322099_
                           _hd2182422102_
                           _tl2182522104_
                           _e2182622107_
                           _hd2182722110_
                           _tl2182822112_
                           _e2182922115_
                           _hd2183022118_
                           _tl2183122120_
                           _e2183222123_
                           _hd2183322126_
                           _tl2183422128_
                           _e2183522131_
                           _hd2183622134_
                           _tl2183722136_
                           _e2183822139_
                           _hd2183922142_
                           _tl2184022144_
                           _e2184122147_
                           _hd2184222150_
                           _tl2184322152_
                           _e2184422155_
                           _hd2184522158_
                           _tl2184622160_))
                      (___match2730327304_
                       _e2181122067_
                       _hd2181222070_
                       _tl2181322072_
                       _e2182322099_
                       _hd2182422102_
                       _tl2182522104_
                       _e2182622107_
                       _hd2182722110_
                       _tl2182822112_
                       _e2182922115_
                       _hd2183022118_
                       _tl2183122120_
                       _e2183222123_
                       _hd2183322126_
                       _tl2183422128_
                       _e2183522131_
                       _hd2183622134_
                       _tl2183722136_
                       _e2183822139_
                       _hd2183922142_
                       _tl2184022144_
                       _e2184122147_
                       _hd2184222150_
                       _tl2184322152_
                       _e2184422155_
                       _hd2184522158_
                       _tl2184622160_))
                  (___match2730327304_
                   _e2181122067_
                   _hd2181222070_
                   _tl2181322072_
                   _e2182322099_
                   _hd2182422102_
                   _tl2182522104_
                   _e2182622107_
                   _hd2182722110_
                   _tl2182822112_
                   _e2182922115_
                   _hd2183022118_
                   _tl2183122120_
                   _e2183222123_
                   _hd2183322126_
                   _tl2183422128_
                   _e2183522131_
                   _hd2183622134_
                   _tl2183722136_
                   _e2183822139_
                   _hd2183922142_
                   _tl2184022144_
                   _e2184122147_
                   _hd2184222150_
                   _tl2184322152_
                   _e2184422155_
                   _hd2184522158_
                   _tl2184622160_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2730327304_
                                                   _e2181122067_
                                                   _hd2181222070_
                                                   _tl2181322072_
                                                   _e2182322099_
                                                   _hd2182422102_
                                                   _tl2182522104_
                                                   _e2182622107_
                                                   _hd2182722110_
                                                   _tl2182822112_
                                                   _e2182922115_
                                                   _hd2183022118_
                                                   _tl2183122120_
                                                   _e2183222123_
                                                   _hd2183322126_
                                                   _tl2183422128_
                                                   _e2183522131_
                                                   _hd2183622134_
                                                   _tl2183722136_
                                                   _e2183822139_
                                                   _hd2183922142_
                                                   _tl2184022144_
                                                   _e2184122147_
                                                   _hd2184222150_
                                                   _tl2184322152_
                                                   _e2184422155_
                                                   _hd2184522158_
                                                   _tl2184622160_))))
                                          (let ((_xarg2185522224_
                                                 (reverse _xarg2185422197_)))
                                            (if (gx#stx-null? _tl2182522104_)
                                                (let ((_L22227_ _hd2186322187_)
                                                      (_L22228_
                                                       _xarg2185522224_)
                                                      (_L22229_ _hd2184522158_)
                                                      (_L22230_ _hd2183622134_)
                                                      (_L22231_ _tl2181622077_)
                                                      (_L22232_
                                                       _arg2182222096_))
                                                  (if (if (gx#identifier-list?
                                                           (begin
                                                             '#!void
                                                             (foldr1 (lambda (_g2227522278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g2227622280_)
                               (cons _g2227522278_ _g2227622280_))
                             '()
                             _L22232_)))
                  (if (gx#identifier? _L22231_)
                      (if (gxc#runtime-identifier=? _L22230_ 'apply)
                          (if (fx= (length (begin
                                             '#!void
                                             (foldr1 (lambda (_g2228222285_
                                                              _g2228322287_)
                                                       (cons _g2228222285_
                                                             _g2228322287_))
                                                     '()
                                                     _L22232_)))
                                   (length (begin
                                             '#!void
                                             (foldr1 (lambda (_g2228922292_
                                                              _g2229022294_)
                                                       (cons _g2228922292_
                                                             _g2229022294_))
                                                     '()
                                                     _L22228_))))
                              (if (andmap2 gx#free-identifier=?
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g2229622299_
                                                              _g2229722301_)
                                                       (cons _g2229622299_
                                                             _g2229722301_))
                                                     '()
                                                     _L22232_))
                                           (begin
                                             '#!void
                                             (foldr1 (lambda (_g2230322306_
                                                              _g2230422308_)
                                                       (cons _g2230322306_
                                                             _g2230422308_))
                                                     '()
                                                     _L22228_)))
                                  (if (gx#free-identifier=? _L22231_ _L22227_)
                                      (not (find (lambda (_g2231022312_)
                                                   (gx#free-identifier=?
                                                    _g2231022312_
                                                    _L22229_))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g2231422317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2231522319_)
                     (cons _g2231422317_ _g2231522319_))
                   (cons _L22231_ '())
                   _L22232_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '#f)
                                  '#f)
                              '#f)
                          '#f)
                      '#f)
                  '#f)
              (___kont2719827199_
               _L22227_
               _L22228_
               _L22229_
               _L22230_
               _L22231_
               _L22232_)
              (___match2730327304_
               _e2181122067_
               _hd2181222070_
               _tl2181322072_
               _e2182322099_
               _hd2182422102_
               _tl2182522104_
               _e2182622107_
               _hd2182722110_
               _tl2182822112_
               _e2182922115_
               _hd2183022118_
               _tl2183122120_
               _e2183222123_
               _hd2183322126_
               _tl2183422128_
               _e2183522131_
               _hd2183622134_
               _tl2183722136_
               _e2183822139_
               _hd2183922142_
               _tl2184022144_
               _e2184122147_
               _hd2184222150_
               _tl2184322152_
               _e2184422155_
               _hd2184522158_
               _tl2184622160_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2730327304_
                                                 _e2181122067_
                                                 _hd2181222070_
                                                 _tl2181322072_
                                                 _e2182322099_
                                                 _hd2182422102_
                                                 _tl2182522104_
                                                 _e2182622107_
                                                 _hd2182722110_
                                                 _tl2182822112_
                                                 _e2182922115_
                                                 _hd2183022118_
                                                 _tl2183122120_
                                                 _e2183222123_
                                                 _hd2183322126_
                                                 _tl2183422128_
                                                 _e2183522131_
                                                 _hd2183622134_
                                                 _tl2183722136_
                                                 _e2183822139_
                                                 _hd2183922142_
                                                 _tl2184022144_
                                                 _e2184122147_
                                                 _hd2184222150_
                                                 _tl2184322152_
                                                 _e2184422155_
                                                 _hd2184522158_
                                                 _tl2184622160_)))))))
                            (_loop2185022192_ _target2184722163_ '()))
                          (___match2730327304_
                           _e2181122067_
                           _hd2181222070_
                           _tl2181322072_
                           _e2182322099_
                           _hd2182422102_
                           _tl2182522104_
                           _e2182622107_
                           _hd2182722110_
                           _tl2182822112_
                           _e2182922115_
                           _hd2183022118_
                           _tl2183122120_
                           _e2183222123_
                           _hd2183322126_
                           _tl2183422128_
                           _e2183522131_
                           _hd2183622134_
                           _tl2183722136_
                           _e2183822139_
                           _hd2183922142_
                           _tl2184022144_
                           _e2184122147_
                           _hd2184222150_
                           _tl2184322152_
                           _e2184422155_
                           _hd2184522158_
                           _tl2184622160_))
                      (___match2730327304_
                       _e2181122067_
                       _hd2181222070_
                       _tl2181322072_
                       _e2182322099_
                       _hd2182422102_
                       _tl2182522104_
                       _e2182622107_
                       _hd2182722110_
                       _tl2182822112_
                       _e2182922115_
                       _hd2183022118_
                       _tl2183122120_
                       _e2183222123_
                       _hd2183322126_
                       _tl2183422128_
                       _e2183522131_
                       _hd2183622134_
                       _tl2183722136_
                       _e2183822139_
                       _hd2183922142_
                       _tl2184022144_
                       _e2184122147_
                       _hd2184222150_
                       _tl2184322152_
                       _e2184422155_
                       _hd2184522158_
                       _tl2184622160_))))
              (___match2730327304_
               _e2181122067_
               _hd2181222070_
               _tl2181322072_
               _e2182322099_
               _hd2182422102_
               _tl2182522104_
               _e2182622107_
               _hd2182722110_
               _tl2182822112_
               _e2182922115_
               _hd2183022118_
               _tl2183122120_
               _e2183222123_
               _hd2183322126_
               _tl2183422128_
               _e2183522131_
               _hd2183622134_
               _tl2183722136_
               _e2183822139_
               _hd2183922142_
               _tl2184022144_
               _e2184122147_
               _hd2184222150_
               _tl2184322152_
               _e2184422155_
               _hd2184522158_
               _tl2184622160_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2730327304_
                                                   _e2181122067_
                                                   _hd2181222070_
                                                   _tl2181322072_
                                                   _e2182322099_
                                                   _hd2182422102_
                                                   _tl2182522104_
                                                   _e2182622107_
                                                   _hd2182722110_
                                                   _tl2182822112_
                                                   _e2182922115_
                                                   _hd2183022118_
                                                   _tl2183122120_
                                                   _e2183222123_
                                                   _hd2183322126_
                                                   _tl2183422128_
                                                   _e2183522131_
                                                   _hd2183622134_
                                                   _tl2183722136_
                                                   _e2183822139_
                                                   _hd2183922142_
                                                   _tl2184022144_
                                                   _e2184122147_
                                                   _hd2184222150_
                                                   _tl2184322152_
                                                   _e2184422155_
                                                   _hd2184522158_
                                                   _tl2184622160_))
                                              (___match2730327304_
                                               _e2181122067_
                                               _hd2181222070_
                                               _tl2181322072_
                                               _e2182322099_
                                               _hd2182422102_
                                               _tl2182522104_
                                               _e2182622107_
                                               _hd2182722110_
                                               _tl2182822112_
                                               _e2182922115_
                                               _hd2183022118_
                                               _tl2183122120_
                                               _e2183222123_
                                               _hd2183322126_
                                               _tl2183422128_
                                               _e2183522131_
                                               _hd2183622134_
                                               _tl2183722136_
                                               _e2183822139_
                                               _hd2183922142_
                                               _tl2184022144_
                                               _e2184122147_
                                               _hd2184222150_
                                               _tl2184322152_
                                               _e2184422155_
                                               _hd2184522158_
                                               _tl2184622160_))))
                                      (___match2730327304_
                                       _e2181122067_
                                       _hd2181222070_
                                       _tl2181322072_
                                       _e2182322099_
                                       _hd2182422102_
                                       _tl2182522104_
                                       _e2182622107_
                                       _hd2182722110_
                                       _tl2182822112_
                                       _e2182922115_
                                       _hd2183022118_
                                       _tl2183122120_
                                       _e2183222123_
                                       _hd2183322126_
                                       _tl2183422128_
                                       _e2183522131_
                                       _hd2183622134_
                                       _tl2183722136_
                                       _e2183822139_
                                       _hd2183922142_
                                       _tl2184022144_
                                       _e2184122147_
                                       _hd2184222150_
                                       _tl2184322152_
                                       _e2184422155_
                                       _hd2184522158_
                                       _tl2184622160_))))
                              (___match2730327304_
                               _e2181122067_
                               _hd2181222070_
                               _tl2181322072_
                               _e2182322099_
                               _hd2182422102_
                               _tl2182522104_
                               _e2182622107_
                               _hd2182722110_
                               _tl2182822112_
                               _e2182922115_
                               _hd2183022118_
                               _tl2183122120_
                               _e2183222123_
                               _hd2183322126_
                               _tl2183422128_
                               _e2183522131_
                               _hd2183622134_
                               _tl2183722136_
                               _e2183822139_
                               _hd2183922142_
                               _tl2184022144_
                               _e2184122147_
                               _hd2184222150_
                               _tl2184322152_
                               _e2184422155_
                               _hd2184522158_
                               _tl2184622160_))))
                      (___match2730327304_
                       _e2181122067_
                       _hd2181222070_
                       _tl2181322072_
                       _e2182322099_
                       _hd2182422102_
                       _tl2182522104_
                       _e2182622107_
                       _hd2182722110_
                       _tl2182822112_
                       _e2182922115_
                       _hd2183022118_
                       _tl2183122120_
                       _e2183222123_
                       _hd2183322126_
                       _tl2183422128_
                       _e2183522131_
                       _hd2183622134_
                       _tl2183722136_
                       _e2183822139_
                       _hd2183922142_
                       _tl2184022144_
                       _e2184122147_
                       _hd2184222150_
                       _tl2184322152_
                       _e2184422155_
                       _hd2184522158_
                       _tl2184622160_))
                  (___match2730327304_
                   _e2181122067_
                   _hd2181222070_
                   _tl2181322072_
                   _e2182322099_
                   _hd2182422102_
                   _tl2182522104_
                   _e2182622107_
                   _hd2182722110_
                   _tl2182822112_
                   _e2182922115_
                   _hd2183022118_
                   _tl2183122120_
                   _e2183222123_
                   _hd2183322126_
                   _tl2183422128_
                   _e2183522131_
                   _hd2183622134_
                   _tl2183722136_
                   _e2183822139_
                   _hd2183922142_
                   _tl2184022144_
                   _e2184122147_
                   _hd2184222150_
                   _tl2184322152_
                   _e2184422155_
                   _hd2184522158_
                   _tl2184622160_))
              (___kont2720627207_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2720627207_))
                                          (___kont2720627207_))
                                      (___kont2720627207_))))
                              (___kont2720627207_))))
                      (___kont2720627207_))
                  (___kont2720627207_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2720627207_))
                                              (___kont2720627207_))
                                          (___kont2720627207_))))
                                  (___kont2720627207_))))
                          (___kont2720627207_))
                      (___kont2720627207_))
                  (___kont2720627207_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2720627207_))))
                                          (___kont2720627207_)))))))
                      (_loop2181722080_ _target2181422075_ '()))))
                 (___match2722127222_
                  (lambda (_e2176322327_
                           _hd2176422330_
                           _tl2176522332_
                           ___splice2719427195_
                           _target2176622335_
                           _tl2176822337_)
                    (letrec ((_loop2176922340_
                              (lambda (_hd2176722343_ _arg2177322345_)
                                (if (gx#stx-pair? _hd2176722343_)
                                    (let ((_e2177022348_
                                           (gx#stx-e _hd2176722343_)))
                                      (let ((_lp-tl2177222353_
                                             (##cdr _e2177022348_))
                                            (_lp-hd2177122351_
                                             (##car _e2177022348_)))
                                        (_loop2176922340_
                                         _lp-tl2177222353_
                                         (cons _lp-hd2177122351_
                                               _arg2177322345_))))
                                    (let ((_arg2177422356_
                                           (reverse _arg2177322345_)))
                                      (if (gx#stx-pair? _tl2176522332_)
                                          (let ((_e2177522359_
                                                 (gx#stx-e _tl2176522332_)))
                                            (let ((_tl2177722364_
                                                   (##cdr _e2177522359_))
                                                  (_hd2177622362_
                                                   (##car _e2177522359_)))
                                              (if (gx#stx-pair? _hd2177622362_)
                                                  (let ((_e2177822367_
                                                         (gx#stx-e
                                                          _hd2177622362_)))
                                                    (let ((_tl2178022372_
                                                           (##cdr _e2177822367_))
                                                          (_hd2177922370_
                                                           (##car _e2177822367_)))
                                                      (if (gx#identifier?
                                                           _hd2177922370_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2177922370_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2178022372_)
                          (let ((_e2178122375_ (gx#stx-e _tl2178022372_)))
                            (let ((_tl2178322380_ (##cdr _e2178122375_))
                                  (_hd2178222378_ (##car _e2178122375_)))
                              (if (gx#stx-pair? _hd2178222378_)
                                  (let ((_e2178422383_
                                         (gx#stx-e _hd2178222378_)))
                                    (let ((_tl2178622388_
                                           (##cdr _e2178422383_))
                                          (_hd2178522386_
                                           (##car _e2178422383_)))
                                      (if (gx#identifier? _hd2178522386_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2178522386_)
                                              (if (gx#stx-pair? _tl2178622388_)
                                                  (let ((_e2178722391_
                                                         (gx#stx-e
                                                          _tl2178622388_)))
                                                    (let ((_tl2178922396_
                                                           (##cdr _e2178722391_))
                                                          (_hd2178822394_
                                                           (##car _e2178722391_)))
                                                      (if (gx#stx-null?
                                                           _tl2178922396_)
                                                          (if (gx#stx-pair/null?
                                                               _tl2178322380_)
                                                              (let ((___splice2719627197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl2178322380_ '0)))
                        (let ((_tl2179222401_
                               (##vector-ref ___splice2719627197_ '1))
                              (_target2179022399_
                               (##vector-ref ___splice2719627197_ '0)))
                          (if (gx#stx-null? _tl2179222401_)
                              (letrec ((_loop2179322404_
                                        (lambda (_hd2179122407_
                                                 _xarg2179722409_)
                                          (if (gx#stx-pair? _hd2179122407_)
                                              (let ((_e2179422412_
                                                     (gx#stx-e
                                                      _hd2179122407_)))
                                                (let ((_lp-tl2179622417_
                                                       (##cdr _e2179422412_))
                                                      (_lp-hd2179522415_
                                                       (##car _e2179422412_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd2179522415_)
                                                      (let ((_e2179922420_
                                                             (gx#stx-e
                                                              _lp-hd2179522415_)))
                                                        (let ((_tl2180122425_
                                                               (##cdr _e2179922420_))
                                                              (_hd2180022423_
                                                               (##car _e2179922420_)))
                                                          (if (gx#identifier?
                                                               _hd2180022423_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2180022423_)
                          (if (gx#stx-pair? _tl2180122425_)
                              (let ((_e2180222428_ (gx#stx-e _tl2180122425_)))
                                (let ((_tl2180422433_ (##cdr _e2180222428_))
                                      (_hd2180322431_ (##car _e2180222428_)))
                                  (if (gx#stx-null? _tl2180422433_)
                                      (_loop2179322404_
                                       _lp-tl2179622417_
                                       (cons _hd2180322431_ _xarg2179722409_))
                                      (___match2723327234_
                                       _e2176322327_
                                       _hd2176422330_
                                       _tl2176522332_
                                       ___splice2719427195_
                                       _target2176622335_
                                       _tl2176822337_))))
                              (___match2723327234_
                               _e2176322327_
                               _hd2176422330_
                               _tl2176522332_
                               ___splice2719427195_
                               _target2176622335_
                               _tl2176822337_))
                          (___match2723327234_
                           _e2176322327_
                           _hd2176422330_
                           _tl2176522332_
                           ___splice2719427195_
                           _target2176622335_
                           _tl2176822337_))
                      (___match2723327234_
                       _e2176322327_
                       _hd2176422330_
                       _tl2176522332_
                       ___splice2719427195_
                       _target2176622335_
                       _tl2176822337_))))
              (___match2723327234_
               _e2176322327_
               _hd2176422330_
               _tl2176522332_
               ___splice2719427195_
               _target2176622335_
               _tl2176822337_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg2179822436_
                                                     (reverse _xarg2179722409_)))
                                                (if (gx#stx-null?
                                                     _tl2177722364_)
                                                    (let ((_L22439_
                                                           _xarg2179822436_)
                                                          (_L22440_
                                                           _hd2178822394_)
                                                          (_L22441_
                                                           _arg2177422356_))
                                                      (if (if (gx#identifier-list?
                                                               (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void
                         (foldr1 (lambda (_g2246922472_ _g2247022474_)
                                   (cons _g2246922472_ _g2247022474_))
                                 '()
                                 _L22441_)))
                      (if (fx= (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2247622479_
                                                          _g2247722481_)
                                                   (cons _g2247622479_
                                                         _g2247722481_))
                                                 '()
                                                 _L22441_)))
                               (length (begin
                                         '#!void
                                         (foldr1 (lambda (_g2248322486_
                                                          _g2248422488_)
                                                   (cons _g2248322486_
                                                         _g2248422488_))
                                                 '()
                                                 _L22439_))))
                          (if (andmap2 gx#free-identifier=?
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2249022493_
                                                          _g2249122495_)
                                                   (cons _g2249022493_
                                                         _g2249122495_))
                                                 '()
                                                 _L22441_))
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g2249722500_
                                                          _g2249822502_)
                                                   (cons _g2249722500_
                                                         _g2249822502_))
                                                 '()
                                                 _L22439_)))
                              (not (find (lambda (_g2250422506_)
                                           (gx#free-identifier=?
                                            _g2250422506_
                                            _L22440_))
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g2250822511_
                                                            _g2250922513_)
                                                     (cons _g2250822511_
                                                           _g2250922513_))
                                                   '()
                                                   _L22441_))))
                              '#f)
                          '#f)
                      '#f)
                  (___kont2719227193_ _L22439_ _L22440_ _L22441_)
                  (___match2723327234_
                   _e2176322327_
                   _hd2176422330_
                   _tl2176522332_
                   ___splice2719427195_
                   _target2176622335_
                   _tl2176822337_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2723327234_
                                                     _e2176322327_
                                                     _hd2176422330_
                                                     _tl2176522332_
                                                     ___splice2719427195_
                                                     _target2176622335_
                                                     _tl2176822337_)))))))
                                (_loop2179322404_ _target2179022399_ '()))
                              (___match2723327234_
                               _e2176322327_
                               _hd2176422330_
                               _tl2176522332_
                               ___splice2719427195_
                               _target2176622335_
                               _tl2176822337_))))
                      (___match2723327234_
                       _e2176322327_
                       _hd2176422330_
                       _tl2176522332_
                       ___splice2719427195_
                       _target2176622335_
                       _tl2176822337_))
                  (___match2723327234_
                   _e2176322327_
                   _hd2176422330_
                   _tl2176522332_
                   ___splice2719427195_
                   _target2176622335_
                   _tl2176822337_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2723327234_
                                                   _e2176322327_
                                                   _hd2176422330_
                                                   _tl2176522332_
                                                   ___splice2719427195_
                                                   _target2176622335_
                                                   _tl2176822337_))
                                              (___match2723327234_
                                               _e2176322327_
                                               _hd2176422330_
                                               _tl2176522332_
                                               ___splice2719427195_
                                               _target2176622335_
                                               _tl2176822337_))
                                          (___match2723327234_
                                           _e2176322327_
                                           _hd2176422330_
                                           _tl2176522332_
                                           ___splice2719427195_
                                           _target2176622335_
                                           _tl2176822337_))))
                                  (___match2723327234_
                                   _e2176322327_
                                   _hd2176422330_
                                   _tl2176522332_
                                   ___splice2719427195_
                                   _target2176622335_
                                   _tl2176822337_))))
                          (___match2723327234_
                           _e2176322327_
                           _hd2176422330_
                           _tl2176522332_
                           ___splice2719427195_
                           _target2176622335_
                           _tl2176822337_))
                      (___match2723327234_
                       _e2176322327_
                       _hd2176422330_
                       _tl2176522332_
                       ___splice2719427195_
                       _target2176622335_
                       _tl2176822337_))
                  (___match2723327234_
                   _e2176322327_
                   _hd2176422330_
                   _tl2176522332_
                   ___splice2719427195_
                   _target2176622335_
                   _tl2176822337_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2723327234_
                                                   _e2176322327_
                                                   _hd2176422330_
                                                   _tl2176522332_
                                                   ___splice2719427195_
                                                   _target2176622335_
                                                   _tl2176822337_))))
                                          (___match2723327234_
                                           _e2176322327_
                                           _hd2176422330_
                                           _tl2176522332_
                                           ___splice2719427195_
                                           _target2176622335_
                                           _tl2176822337_)))))))
                      (_loop2176922340_ _target2176622335_ '())))))
            (if (gx#stx-pair? ___stx2719027191_)
                (let ((_e2176322327_ (gx#stx-e ___stx2719027191_)))
                  (let ((_tl2176522332_ (##cdr _e2176322327_))
                        (_hd2176422330_ (##car _e2176322327_)))
                    (if (gx#stx-pair/null? _hd2176422330_)
                        (let ((___splice2719427195_
                               (gx#syntax-split-splice _hd2176422330_ '0)))
                          (let ((_tl2176822337_
                                 (##vector-ref ___splice2719427195_ '1))
                                (_target2176622335_
                                 (##vector-ref ___splice2719427195_ '0)))
                            (if (gx#stx-null? _tl2176822337_)
                                (___match2722127222_
                                 _e2176322327_
                                 _hd2176422330_
                                 _tl2176522332_
                                 ___splice2719427195_
                                 _target2176622335_
                                 _tl2176822337_)
                                (___match2723327234_
                                 _e2176322327_
                                 _hd2176422330_
                                 _tl2176522332_
                                 ___splice2719427195_
                                 _target2176622335_
                                 _tl2176822337_))))
                        (if (gx#stx-pair? _tl2176522332_)
                            (let ((_e2187821935_ (gx#stx-e _tl2176522332_)))
                              (let ((_tl2188021940_ (##cdr _e2187821935_))
                                    (_hd2187921938_ (##car _e2187821935_)))
                                (if (gx#stx-pair? _hd2187921938_)
                                    (let ((_e2188121943_
                                           (gx#stx-e _hd2187921938_)))
                                      (let ((_tl2188321948_
                                             (##cdr _e2188121943_))
                                            (_hd2188221946_
                                             (##car _e2188121943_)))
                                        (if (gx#identifier? _hd2188221946_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2188221946_)
                                                (if (gx#stx-pair?
                                                     _tl2188321948_)
                                                    (let ((_e2188421951_
                                                           (gx#stx-e
                                                            _tl2188321948_)))
                                                      (let ((_tl2188621956_
                                                             (##cdr _e2188421951_))
                                                            (_hd2188521954_
                                                             (##car _e2188421951_)))
                                                        (if (gx#stx-pair?
                                                             _hd2188521954_)
                                                            (let ((_e2188721959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2188521954_)))
                      (let ((_tl2188921964_ (##cdr _e2188721959_))
                            (_hd2188821962_ (##car _e2188721959_)))
                        (if (gx#identifier? _hd2188821962_)
                            (if (gx#stx-eq? '%#ref _hd2188821962_)
                                (if (gx#stx-pair? _tl2188921964_)
                                    (let ((_e2189021967_
                                           (gx#stx-e _tl2188921964_)))
                                      (let ((_tl2189221972_
                                             (##cdr _e2189021967_))
                                            (_hd2189121970_
                                             (##car _e2189021967_)))
                                        (if (gx#stx-null? _tl2189221972_)
                                            (if (gx#stx-pair? _tl2188621956_)
                                                (let ((_e2189321975_
                                                       (gx#stx-e
                                                        _tl2188621956_)))
                                                  (let ((_tl2189521980_
                                                         (##cdr _e2189321975_))
                                                        (_hd2189421978_
                                                         (##car _e2189321975_)))
                                                    (if (gx#stx-pair?
                                                         _hd2189421978_)
                                                        (let ((_e2189621983_
                                                               (gx#stx-e
                                                                _hd2189421978_)))
                                                          (let ((_tl2189821988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2189621983_))
                        (_hd2189721986_ (##car _e2189621983_)))
                    (if (gx#identifier? _hd2189721986_)
                        (if (gx#stx-eq? '%#ref _hd2189721986_)
                            (if (gx#stx-pair? _tl2189821988_)
                                (let ((_e2189921991_
                                       (gx#stx-e _tl2189821988_)))
                                  (let ((_tl2190121996_ (##cdr _e2189921991_))
                                        (_hd2190021994_ (##car _e2189921991_)))
                                    (if (gx#stx-null? _tl2190121996_)
                                        (if (gx#stx-pair? _tl2189521980_)
                                            (let ((_e2190221999_
                                                   (gx#stx-e _tl2189521980_)))
                                              (let ((_tl2190422004_
                                                     (##cdr _e2190221999_))
                                                    (_hd2190322002_
                                                     (##car _e2190221999_)))
                                                (if (gx#stx-pair?
                                                     _hd2190322002_)
                                                    (let ((_e2190522007_
                                                           (gx#stx-e
                                                            _hd2190322002_)))
                                                      (let ((_tl2190722012_
                                                             (##cdr _e2190522007_))
                                                            (_hd2190622010_
                                                             (##car _e2190522007_)))
                                                        (if (gx#identifier?
                                                             _hd2190622010_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2190622010_)
                        (if (gx#stx-pair? _tl2190722012_)
                            (let ((_e2190822015_ (gx#stx-e _tl2190722012_)))
                              (let ((_tl2191022020_ (##cdr _e2190822015_))
                                    (_hd2190922018_ (##car _e2190822015_)))
                                (if (gx#stx-null? _tl2191022020_)
                                    (if (gx#stx-null? _tl2190422004_)
                                        (if (gx#stx-null? _tl2188021940_)
                                            (___match2733127332_
                                             _e2176322327_
                                             _hd2176422330_
                                             _tl2176522332_
                                             _e2187821935_
                                             _hd2187921938_
                                             _tl2188021940_
                                             _e2188121943_
                                             _hd2188221946_
                                             _tl2188321948_
                                             _e2188421951_
                                             _hd2188521954_
                                             _tl2188621956_
                                             _e2188721959_
                                             _hd2188821962_
                                             _tl2188921964_
                                             _e2189021967_
                                             _hd2189121970_
                                             _tl2189221972_
                                             _e2189321975_
                                             _hd2189421978_
                                             _tl2189521980_
                                             _e2189621983_
                                             _hd2189721986_
                                             _tl2189821988_
                                             _e2189921991_
                                             _hd2190021994_
                                             _tl2190121996_
                                             _e2190221999_
                                             _hd2190322002_
                                             _tl2190422004_
                                             _e2190522007_
                                             _hd2190622010_
                                             _tl2190722012_
                                             _e2190822015_
                                             _hd2190922018_
                                             _tl2191022020_)
                                            (___kont2720627207_))
                                        (___kont2720627207_))
                                    (___kont2720627207_))))
                            (___kont2720627207_))
                        (___kont2720627207_))
                    (___kont2720627207_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2720627207_))))
                                            (___kont2720627207_))
                                        (___kont2720627207_))))
                                (___kont2720627207_))
                            (___kont2720627207_))
                        (___kont2720627207_))))
                (___kont2720627207_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2720627207_))
                                            (___kont2720627207_))))
                                    (___kont2720627207_))
                                (___kont2720627207_))
                            (___kont2720627207_))))
                    (___kont2720627207_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2720627207_))
                                                (___kont2720627207_))
                                            (___kont2720627207_))))
                                    (___kont2720627207_))))
                            (___kont2720627207_)))))
                (___kont2720627207_)))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form21221_)
      (let* ((___stx2733427335_ _form21221_)
             (_g2122521349_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2733427335_))))
        (let ((___kont2733627337_
               (lambda (_L21719_ _L21720_ _L21721_)
                 (gxc#identifier-symbol _L21720_)))
              (___kont2734227343_
               (lambda (_L21567_ _L21568_ _L21569_ _L21570_)
                 (gxc#identifier-symbol _L21567_)))
              (___kont2734627347_
               (lambda (_L21434_ _L21435_ _L21436_)
                 (gxc#identifier-symbol _L21434_))))
          (let* ((___match2744327444_
                  (lambda (_e2131521354_
                           _hd2131621357_
                           _tl2131721359_
                           _e2131821362_
                           _hd2131921365_
                           _tl2132021367_
                           _e2132121370_
                           _hd2132221373_
                           _tl2132321375_
                           _e2132421378_
                           _hd2132521381_
                           _tl2132621383_
                           _e2132721386_
                           _hd2132821389_
                           _tl2132921391_
                           _e2133021394_
                           _hd2133121397_
                           _tl2133221399_
                           _e2133321402_
                           _hd2133421405_
                           _tl2133521407_
                           _e2133621410_
                           _hd2133721413_
                           _tl2133821415_
                           _e2133921418_
                           _hd2134021421_
                           _tl2134121423_)
                    (if (gx#stx-pair? _tl2133521407_)
                        (let ((_e2134221426_ (gx#stx-e _tl2133521407_)))
                          (let ((_tl2134421431_ (##cdr _e2134221426_))
                                (_hd2134321429_ (##car _e2134221426_)))
                            (if (gx#stx-null? _tl2134421431_)
                                (if (gx#stx-null? _tl2132021367_)
                                    (___kont2734627347_
                                     _hd2134021421_
                                     _hd2133121397_
                                     _hd2131621357_)
                                    (_g2122521349_))
                                (_g2122521349_))))
                        (_g2122521349_))))
                 (___match2737327374_
                  (lambda (_e2127621471_
                           _hd2127721474_
                           _tl2127821476_
                           ___splice2734427345_
                           _target2127921479_
                           _tl2128121481_)
                    (letrec ((_loop2128221484_
                              (lambda (_hd2128021487_ _arg2128621489_)
                                (if (gx#stx-pair? _hd2128021487_)
                                    (let ((_e2128321492_
                                           (gx#stx-e _hd2128021487_)))
                                      (let ((_lp-tl2128521497_
                                             (##cdr _e2128321492_))
                                            (_lp-hd2128421495_
                                             (##car _e2128321492_)))
                                        (_loop2128221484_
                                         _lp-tl2128521497_
                                         (cons _lp-hd2128421495_
                                               _arg2128621489_))))
                                    (let ((_arg2128721500_
                                           (reverse _arg2128621489_)))
                                      (if (gx#stx-pair? _tl2127821476_)
                                          (let ((_e2128821503_
                                                 (gx#stx-e _tl2127821476_)))
                                            (let ((_tl2129021508_
                                                   (##cdr _e2128821503_))
                                                  (_hd2128921506_
                                                   (##car _e2128821503_)))
                                              (if (gx#stx-pair? _hd2128921506_)
                                                  (let ((_e2129121511_
                                                         (gx#stx-e
                                                          _hd2128921506_)))
                                                    (let ((_tl2129321516_
                                                           (##cdr _e2129121511_))
                                                          (_hd2129221514_
                                                           (##car _e2129121511_)))
                                                      (if (gx#identifier?
                                                           _hd2129221514_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2129221514_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2129321516_)
                          (let ((_e2129421519_ (gx#stx-e _tl2129321516_)))
                            (let ((_tl2129621524_ (##cdr _e2129421519_))
                                  (_hd2129521522_ (##car _e2129421519_)))
                              (if (gx#stx-pair? _hd2129521522_)
                                  (let ((_e2129721527_
                                         (gx#stx-e _hd2129521522_)))
                                    (let ((_tl2129921532_
                                           (##cdr _e2129721527_))
                                          (_hd2129821530_
                                           (##car _e2129721527_)))
                                      (if (gx#identifier? _hd2129821530_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2129821530_)
                                              (if (gx#stx-pair? _tl2129921532_)
                                                  (let ((_e2130021535_
                                                         (gx#stx-e
                                                          _tl2129921532_)))
                                                    (let ((_tl2130221540_
                                                           (##cdr _e2130021535_))
                                                          (_hd2130121538_
                                                           (##car _e2130021535_)))
                                                      (if (gx#stx-null?
                                                           _tl2130221540_)
                                                          (if (gx#stx-pair?
                                                               _tl2129621524_)
                                                              (let ((_e2130321543_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2129621524_)))
                        (let ((_tl2130521548_ (##cdr _e2130321543_))
                              (_hd2130421546_ (##car _e2130321543_)))
                          (if (gx#stx-pair? _hd2130421546_)
                              (let ((_e2130621551_ (gx#stx-e _hd2130421546_)))
                                (let ((_tl2130821556_ (##cdr _e2130621551_))
                                      (_hd2130721554_ (##car _e2130621551_)))
                                  (if (gx#identifier? _hd2130721554_)
                                      (if (gx#stx-eq? '%#ref _hd2130721554_)
                                          (if (gx#stx-pair? _tl2130821556_)
                                              (let ((_e2130921559_
                                                     (gx#stx-e
                                                      _tl2130821556_)))
                                                (let ((_tl2131121564_
                                                       (##cdr _e2130921559_))
                                                      (_hd2131021562_
                                                       (##car _e2130921559_)))
                                                  (if (gx#stx-null?
                                                       _tl2131121564_)
                                                      (if (gx#stx-null?
                                                           _tl2129021508_)
                                                          (___kont2734227343_
                                                           _hd2131021562_
                                                           _hd2130121538_
                                                           _tl2128121481_
                                                           _arg2128721500_)
                                                          (___match2744327444_
                                                           _e2127621471_
                                                           _hd2127721474_
                                                           _tl2127821476_
                                                           _e2128821503_
                                                           _hd2128921506_
                                                           _tl2129021508_
                                                           _e2129121511_
                                                           _hd2129221514_
                                                           _tl2129321516_
                                                           _e2129421519_
                                                           _hd2129521522_
                                                           _tl2129621524_
                                                           _e2129721527_
                                                           _hd2129821530_
                                                           _tl2129921532_
                                                           _e2130021535_
                                                           _hd2130121538_
                                                           _tl2130221540_
                                                           _e2130321543_
                                                           _hd2130421546_
                                                           _tl2130521548_
                                                           _e2130621551_
                                                           _hd2130721554_
                                                           _tl2130821556_
                                                           _e2130921559_
                                                           _hd2131021562_
                                                           _tl2131121564_))
                                                      (_g2122521349_))))
                                              (_g2122521349_))
                                          (_g2122521349_))
                                      (_g2122521349_))))
                              (_g2122521349_))))
                      (_g2122521349_))
                  (_g2122521349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2122521349_))
                                              (_g2122521349_))
                                          (_g2122521349_))))
                                  (_g2122521349_))))
                          (_g2122521349_))
                      (_g2122521349_))
                  (_g2122521349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2122521349_))))
                                          (_g2122521349_)))))))
                      (_loop2128221484_ _target2127921479_ '()))))
                 (___match2736127362_
                  (lambda (_e2123021607_
                           _hd2123121610_
                           _tl2123221612_
                           ___splice2733827339_
                           _target2123321615_
                           _tl2123521617_)
                    (letrec ((_loop2123621620_
                              (lambda (_hd2123421623_ _arg2124021625_)
                                (if (gx#stx-pair? _hd2123421623_)
                                    (let ((_e2123721628_
                                           (gx#stx-e _hd2123421623_)))
                                      (let ((_lp-tl2123921633_
                                             (##cdr _e2123721628_))
                                            (_lp-hd2123821631_
                                             (##car _e2123721628_)))
                                        (_loop2123621620_
                                         _lp-tl2123921633_
                                         (cons _lp-hd2123821631_
                                               _arg2124021625_))))
                                    (let ((_arg2124121636_
                                           (reverse _arg2124021625_)))
                                      (if (gx#stx-pair? _tl2123221612_)
                                          (let ((_e2124221639_
                                                 (gx#stx-e _tl2123221612_)))
                                            (let ((_tl2124421644_
                                                   (##cdr _e2124221639_))
                                                  (_hd2124321642_
                                                   (##car _e2124221639_)))
                                              (if (gx#stx-pair? _hd2124321642_)
                                                  (let ((_e2124521647_
                                                         (gx#stx-e
                                                          _hd2124321642_)))
                                                    (let ((_tl2124721652_
                                                           (##cdr _e2124521647_))
                                                          (_hd2124621650_
                                                           (##car _e2124521647_)))
                                                      (if (gx#identifier?
                                                           _hd2124621650_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2124621650_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2124721652_)
                          (let ((_e2124821655_ (gx#stx-e _tl2124721652_)))
                            (let ((_tl2125021660_ (##cdr _e2124821655_))
                                  (_hd2124921658_ (##car _e2124821655_)))
                              (if (gx#stx-pair? _hd2124921658_)
                                  (let ((_e2125121663_
                                         (gx#stx-e _hd2124921658_)))
                                    (let ((_tl2125321668_
                                           (##cdr _e2125121663_))
                                          (_hd2125221666_
                                           (##car _e2125121663_)))
                                      (if (gx#identifier? _hd2125221666_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2125221666_)
                                              (if (gx#stx-pair? _tl2125321668_)
                                                  (let ((_e2125421671_
                                                         (gx#stx-e
                                                          _tl2125321668_)))
                                                    (let ((_tl2125621676_
                                                           (##cdr _e2125421671_))
                                                          (_hd2125521674_
                                                           (##car _e2125421671_)))
                                                      (if (gx#stx-null?
                                                           _tl2125621676_)
                                                          (if (gx#stx-pair/null?
                                                               _tl2125021660_)
                                                              (let ((___splice2734027341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl2125021660_ '0)))
                        (let ((_tl2125921681_
                               (##vector-ref ___splice2734027341_ '1))
                              (_target2125721679_
                               (##vector-ref ___splice2734027341_ '0)))
                          (if (gx#stx-null? _tl2125921681_)
                              (letrec ((_loop2126021684_
                                        (lambda (_hd2125821687_
                                                 _xarg2126421689_)
                                          (if (gx#stx-pair? _hd2125821687_)
                                              (let ((_e2126121692_
                                                     (gx#stx-e
                                                      _hd2125821687_)))
                                                (let ((_lp-tl2126321697_
                                                       (##cdr _e2126121692_))
                                                      (_lp-hd2126221695_
                                                       (##car _e2126121692_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd2126221695_)
                                                      (let ((_e2126621700_
                                                             (gx#stx-e
                                                              _lp-hd2126221695_)))
                                                        (let ((_tl2126821705_
                                                               (##cdr _e2126621700_))
                                                              (_hd2126721703_
                                                               (##car _e2126621700_)))
                                                          (if (gx#identifier?
                                                               _hd2126721703_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2126721703_)
                          (if (gx#stx-pair? _tl2126821705_)
                              (let ((_e2126921708_ (gx#stx-e _tl2126821705_)))
                                (let ((_tl2127121713_ (##cdr _e2126921708_))
                                      (_hd2127021711_ (##car _e2126921708_)))
                                  (if (gx#stx-null? _tl2127121713_)
                                      (_loop2126021684_
                                       _lp-tl2126321697_
                                       (cons _hd2127021711_ _xarg2126421689_))
                                      (___match2737327374_
                                       _e2123021607_
                                       _hd2123121610_
                                       _tl2123221612_
                                       ___splice2733827339_
                                       _target2123321615_
                                       _tl2123521617_))))
                              (___match2737327374_
                               _e2123021607_
                               _hd2123121610_
                               _tl2123221612_
                               ___splice2733827339_
                               _target2123321615_
                               _tl2123521617_))
                          (___match2737327374_
                           _e2123021607_
                           _hd2123121610_
                           _tl2123221612_
                           ___splice2733827339_
                           _target2123321615_
                           _tl2123521617_))
                      (___match2737327374_
                       _e2123021607_
                       _hd2123121610_
                       _tl2123221612_
                       ___splice2733827339_
                       _target2123321615_
                       _tl2123521617_))))
              (___match2737327374_
               _e2123021607_
               _hd2123121610_
               _tl2123221612_
               ___splice2733827339_
               _target2123321615_
               _tl2123521617_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg2126521716_
                                                     (reverse _xarg2126421689_)))
                                                (if (gx#stx-null?
                                                     _tl2124421644_)
                                                    (___kont2733627337_
                                                     _xarg2126521716_
                                                     _hd2125521674_
                                                     _arg2124121636_)
                                                    (___match2737327374_
                                                     _e2123021607_
                                                     _hd2123121610_
                                                     _tl2123221612_
                                                     ___splice2733827339_
                                                     _target2123321615_
                                                     _tl2123521617_)))))))
                                (_loop2126021684_ _target2125721679_ '()))
                              (___match2737327374_
                               _e2123021607_
                               _hd2123121610_
                               _tl2123221612_
                               ___splice2733827339_
                               _target2123321615_
                               _tl2123521617_))))
                      (___match2737327374_
                       _e2123021607_
                       _hd2123121610_
                       _tl2123221612_
                       ___splice2733827339_
                       _target2123321615_
                       _tl2123521617_))
                  (___match2737327374_
                   _e2123021607_
                   _hd2123121610_
                   _tl2123221612_
                   ___splice2733827339_
                   _target2123321615_
                   _tl2123521617_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2737327374_
                                                   _e2123021607_
                                                   _hd2123121610_
                                                   _tl2123221612_
                                                   ___splice2733827339_
                                                   _target2123321615_
                                                   _tl2123521617_))
                                              (___match2737327374_
                                               _e2123021607_
                                               _hd2123121610_
                                               _tl2123221612_
                                               ___splice2733827339_
                                               _target2123321615_
                                               _tl2123521617_))
                                          (___match2737327374_
                                           _e2123021607_
                                           _hd2123121610_
                                           _tl2123221612_
                                           ___splice2733827339_
                                           _target2123321615_
                                           _tl2123521617_))))
                                  (___match2737327374_
                                   _e2123021607_
                                   _hd2123121610_
                                   _tl2123221612_
                                   ___splice2733827339_
                                   _target2123321615_
                                   _tl2123521617_))))
                          (___match2737327374_
                           _e2123021607_
                           _hd2123121610_
                           _tl2123221612_
                           ___splice2733827339_
                           _target2123321615_
                           _tl2123521617_))
                      (___match2737327374_
                       _e2123021607_
                       _hd2123121610_
                       _tl2123221612_
                       ___splice2733827339_
                       _target2123321615_
                       _tl2123521617_))
                  (___match2737327374_
                   _e2123021607_
                   _hd2123121610_
                   _tl2123221612_
                   ___splice2733827339_
                   _target2123321615_
                   _tl2123521617_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2737327374_
                                                   _e2123021607_
                                                   _hd2123121610_
                                                   _tl2123221612_
                                                   ___splice2733827339_
                                                   _target2123321615_
                                                   _tl2123521617_))))
                                          (___match2737327374_
                                           _e2123021607_
                                           _hd2123121610_
                                           _tl2123221612_
                                           ___splice2733827339_
                                           _target2123321615_
                                           _tl2123521617_)))))))
                      (_loop2123621620_ _target2123321615_ '())))))
            (if (gx#stx-pair? ___stx2733427335_)
                (let ((_e2123021607_ (gx#stx-e ___stx2733427335_)))
                  (let ((_tl2123221612_ (##cdr _e2123021607_))
                        (_hd2123121610_ (##car _e2123021607_)))
                    (if (gx#stx-pair/null? _hd2123121610_)
                        (let ((___splice2733827339_
                               (gx#syntax-split-splice _hd2123121610_ '0)))
                          (let ((_tl2123521617_
                                 (##vector-ref ___splice2733827339_ '1))
                                (_target2123321615_
                                 (##vector-ref ___splice2733827339_ '0)))
                            (if (gx#stx-null? _tl2123521617_)
                                (___match2736127362_
                                 _e2123021607_
                                 _hd2123121610_
                                 _tl2123221612_
                                 ___splice2733827339_
                                 _target2123321615_
                                 _tl2123521617_)
                                (___match2737327374_
                                 _e2123021607_
                                 _hd2123121610_
                                 _tl2123221612_
                                 ___splice2733827339_
                                 _target2123321615_
                                 _tl2123521617_))))
                        (if (gx#stx-pair? _tl2123221612_)
                            (let ((_e2131821362_ (gx#stx-e _tl2123221612_)))
                              (let ((_tl2132021367_ (##cdr _e2131821362_))
                                    (_hd2131921365_ (##car _e2131821362_)))
                                (if (gx#stx-pair? _hd2131921365_)
                                    (let ((_e2132121370_
                                           (gx#stx-e _hd2131921365_)))
                                      (let ((_tl2132321375_
                                             (##cdr _e2132121370_))
                                            (_hd2132221373_
                                             (##car _e2132121370_)))
                                        (if (gx#identifier? _hd2132221373_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2132221373_)
                                                (if (gx#stx-pair?
                                                     _tl2132321375_)
                                                    (let ((_e2132421378_
                                                           (gx#stx-e
                                                            _tl2132321375_)))
                                                      (let ((_tl2132621383_
                                                             (##cdr _e2132421378_))
                                                            (_hd2132521381_
                                                             (##car _e2132421378_)))
                                                        (if (gx#stx-pair?
                                                             _hd2132521381_)
                                                            (let ((_e2132721386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2132521381_)))
                      (let ((_tl2132921391_ (##cdr _e2132721386_))
                            (_hd2132821389_ (##car _e2132721386_)))
                        (if (gx#identifier? _hd2132821389_)
                            (if (gx#stx-eq? '%#ref _hd2132821389_)
                                (if (gx#stx-pair? _tl2132921391_)
                                    (let ((_e2133021394_
                                           (gx#stx-e _tl2132921391_)))
                                      (let ((_tl2133221399_
                                             (##cdr _e2133021394_))
                                            (_hd2133121397_
                                             (##car _e2133021394_)))
                                        (if (gx#stx-null? _tl2133221399_)
                                            (if (gx#stx-pair? _tl2132621383_)
                                                (let ((_e2133321402_
                                                       (gx#stx-e
                                                        _tl2132621383_)))
                                                  (let ((_tl2133521407_
                                                         (##cdr _e2133321402_))
                                                        (_hd2133421405_
                                                         (##car _e2133321402_)))
                                                    (if (gx#stx-pair?
                                                         _hd2133421405_)
                                                        (let ((_e2133621410_
                                                               (gx#stx-e
                                                                _hd2133421405_)))
                                                          (let ((_tl2133821415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2133621410_))
                        (_hd2133721413_ (##car _e2133621410_)))
                    (if (gx#identifier? _hd2133721413_)
                        (if (gx#stx-eq? '%#ref _hd2133721413_)
                            (if (gx#stx-pair? _tl2133821415_)
                                (let ((_e2133921418_
                                       (gx#stx-e _tl2133821415_)))
                                  (let ((_tl2134121423_ (##cdr _e2133921418_))
                                        (_hd2134021421_ (##car _e2133921418_)))
                                    (if (gx#stx-null? _tl2134121423_)
                                        (if (gx#stx-pair? _tl2133521407_)
                                            (let ((_e2134221426_
                                                   (gx#stx-e _tl2133521407_)))
                                              (let ((_tl2134421431_
                                                     (##cdr _e2134221426_))
                                                    (_hd2134321429_
                                                     (##car _e2134221426_)))
                                                (if (gx#stx-null?
                                                     _tl2134421431_)
                                                    (if (gx#stx-null?
                                                         _tl2132021367_)
                                                        (___kont2734627347_
                                                         _hd2134021421_
                                                         _hd2133121397_
                                                         _hd2123121610_)
                                                        (_g2122521349_))
                                                    (_g2122521349_))))
                                            (_g2122521349_))
                                        (_g2122521349_))))
                                (_g2122521349_))
                            (_g2122521349_))
                        (_g2122521349_))))
                (_g2122521349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2122521349_))
                                            (_g2122521349_))))
                                    (_g2122521349_))
                                (_g2122521349_))
                            (_g2122521349_))))
                    (_g2122521349_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2122521349_))
                                                (_g2122521349_))
                                            (_g2122521349_))))
                                    (_g2122521349_))))
                            (_g2122521349_)))))
                (_g2122521349_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form21025_)
      (let* ((_g2102721041_
              (lambda (_g2102821038_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2102821038_)))
             (_g2102621218_
              (lambda (_g2102821044_)
                (if (gx#stx-pair? _g2102821044_)
                    (let ((_e2103121046_ (gx#stx-e _g2102821044_)))
                      (let ((_hd2103221049_ (##car _e2103121046_))
                            (_tl2103321051_ (##cdr _e2103121046_)))
                        (if (gx#stx-pair? _tl2103321051_)
                            (let ((_e2103421054_ (gx#stx-e _tl2103321051_)))
                              (let ((_hd2103521057_ (##car _e2103421054_))
                                    (_tl2103621059_ (##cdr _e2103421054_)))
                                (if (gx#stx-null? _tl2103621059_)
                                    ((lambda (_L21062_ _L21063_)
                                       (let* ((___stx2745627457_ _L21063_)
                                              (_g2107821106_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  ___stx2745627457_))))
                                         (let ((___kont2745827459_
                                                (lambda (_L21197_)
                                                  (length (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g2120721210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2120821212_)
                              (cons _g2120721210_ _g2120821212_))
                            '()
                            _L21197_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2746227463_
                                                (lambda (_L21148_ _L21149_)
                                                  (cons (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2116021163_ _g2116121165_)
                                    (cons _g2116021163_ _g2116121165_))
                                  '()
                                  _L21149_)))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2746627467_
                                                (lambda (_L21111_)
                                                  (cons '0 '()))))
                                           (let* ((___match2748127482_
                                                   (lambda (___splice2746427465_
                                                            _target2109221124_
                                                            _tl2109421126_)
                                                     (letrec ((_loop2109521129_
                                                               (lambda (_hd2109321132_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _arg2109921134_)
                         (if (gx#stx-pair? _hd2109321132_)
                             (let ((_e2109621137_ (gx#stx-e _hd2109321132_)))
                               (let ((_lp-tl2109821142_ (##cdr _e2109621137_))
                                     (_lp-hd2109721140_ (##car _e2109621137_)))
                                 (_loop2109521129_
                                  _lp-tl2109821142_
                                  (cons _lp-hd2109721140_ _arg2109921134_))))
                             (let ((_arg2110021145_ (reverse _arg2109921134_)))
                               (___kont2746227463_
                                _tl2109421126_
                                _arg2110021145_))))))
               (_loop2109521129_ _target2109221124_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2747527476_
                                                   (lambda (___splice2746027461_
                                                            _target2108121173_
                                                            _tl2108321175_)
                                                     (letrec ((_loop2108421178_
                                                               (lambda (_hd2108221181_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _arg2108821183_)
                         (if (gx#stx-pair? _hd2108221181_)
                             (let ((_e2108521186_ (gx#stx-e _hd2108221181_)))
                               (let ((_lp-tl2108721191_ (##cdr _e2108521186_))
                                     (_lp-hd2108621189_ (##car _e2108521186_)))
                                 (_loop2108421178_
                                  _lp-tl2108721191_
                                  (cons _lp-hd2108621189_ _arg2108821183_))))
                             (let ((_arg2108921194_ (reverse _arg2108821183_)))
                               (___kont2745827459_ _arg2108921194_))))))
               (_loop2108421178_ _target2108121173_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  ___stx2745627457_)
                                                 (let ((___splice2746027461_
                                                        (gx#syntax-split-splice
                                                         ___stx2745627457_
                                                         '0)))
                                                   (let ((_tl2108321175_
                                                          (##vector-ref
                                                           ___splice2746027461_
                                                           '1))
                                                         (_target2108121173_
                                                          (##vector-ref
                                                           ___splice2746027461_
                                                           '0)))
                                                     (if (gx#stx-null?
                                                          _tl2108321175_)
                                                         (___match2747527476_
                                                          ___splice2746027461_
                                                          _target2108121173_
                                                          _tl2108321175_)
                                                         (___match2748127482_
                                                          ___splice2746027461_
                                                          _target2108121173_
                                                          _tl2108321175_))))
                                                 (___kont2746627467_
                                                  ___stx2745627457_))))))
                                     _hd2103521057_
                                     _hd2103221049_)
                                    (_g2102721041_ _g2102821044_))))
                            (_g2102721041_ _g2102821044_))))
                    (_g2102721041_ _g2102821044_)))))
        (_g2102621218_ _form21025_))))
  (define gxc#lambda-expr?
    (lambda (_expr20978_)
      (let* ((___stx2748427485_ _expr20978_)
             (_g2098120991_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2748427485_))))
        (let ((___kont2748627487_ (lambda (_L21011_) '#t))
              (___kont2748827489_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2748427485_)
              (let ((_e2098421003_ (gx#stx-e ___stx2748427485_)))
                (let ((_tl2098621008_ (##cdr _e2098421003_))
                      (_hd2098521006_ (##car _e2098421003_)))
                  (if (gx#identifier? _hd2098521006_)
                      (if (gx#stx-eq? '%#lambda _hd2098521006_)
                          (___kont2748627487_ _tl2098621008_)
                          (___kont2748827489_))
                      (___kont2748827489_))))
              (___kont2748827489_))))))
  (define gxc#case-lambda-expr?
    (lambda (_expr20931_)
      (let* ((___stx2750227503_ _expr20931_)
             (_g2093420944_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2750227503_))))
        (let ((___kont2750427505_ (lambda (_L20964_) '#t))
              (___kont2750627507_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2750227503_)
              (let ((_e2093720956_ (gx#stx-e ___stx2750227503_)))
                (let ((_tl2093920961_ (##cdr _e2093720956_))
                      (_hd2093820959_ (##car _e2093720956_)))
                  (if (gx#identifier? _hd2093820959_)
                      (if (gx#stx-eq? '%#case-lambda _hd2093820959_)
                          (___kont2750427505_ _tl2093920961_)
                          (___kont2750627507_))
                      (___kont2750627507_))))
              (___kont2750627507_))))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr20800_)
      (let* ((___stx2752027521_ _expr20800_)
             (_g2080320833_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2752027521_))))
        (let ((___kont2752227523_
               (lambda (_L20901_ _L20902_ _L20903_)
                 (if (gx#identifier? _L20903_)
                     (if (gxc#lambda-expr? _L20902_)
                         (gxc#case-lambda-expr? _L20901_)
                         '#f)
                     '#f)))
              (___kont2752427525_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2752027521_)
              (let ((_e2080820845_ (gx#stx-e ___stx2752027521_)))
                (let ((_tl2081020850_ (##cdr _e2080820845_))
                      (_hd2080920848_ (##car _e2080820845_)))
                  (if (gx#identifier? _hd2080920848_)
                      (if (gx#stx-eq? '%#let-values _hd2080920848_)
                          (if (gx#stx-pair? _tl2081020850_)
                              (let ((_e2081120853_ (gx#stx-e _tl2081020850_)))
                                (let ((_tl2081320858_ (##cdr _e2081120853_))
                                      (_hd2081220856_ (##car _e2081120853_)))
                                  (if (gx#stx-pair? _hd2081220856_)
                                      (let ((_e2081420861_
                                             (gx#stx-e _hd2081220856_)))
                                        (let ((_tl2081620866_
                                               (##cdr _e2081420861_))
                                              (_hd2081520864_
                                               (##car _e2081420861_)))
                                          (if (gx#stx-pair? _hd2081520864_)
                                              (let ((_e2081720869_
                                                     (gx#stx-e
                                                      _hd2081520864_)))
                                                (let ((_tl2081920874_
                                                       (##cdr _e2081720869_))
                                                      (_hd2081820872_
                                                       (##car _e2081720869_)))
                                                  (if (gx#stx-pair?
                                                       _hd2081820872_)
                                                      (let ((_e2082020877_
                                                             (gx#stx-e
                                                              _hd2081820872_)))
                                                        (let ((_tl2082220882_
                                                               (##cdr _e2082020877_))
                                                              (_hd2082120880_
                                                               (##car _e2082020877_)))
                                                          (if (gx#stx-null?
                                                               _tl2082220882_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2081920874_)
                          (let ((_e2082320885_ (gx#stx-e _tl2081920874_)))
                            (let ((_tl2082520890_ (##cdr _e2082320885_))
                                  (_hd2082420888_ (##car _e2082320885_)))
                              (if (gx#stx-null? _tl2082520890_)
                                  (if (gx#stx-null? _tl2081620866_)
                                      (if (gx#stx-pair? _tl2081320858_)
                                          (let ((_e2082620893_
                                                 (gx#stx-e _tl2081320858_)))
                                            (let ((_tl2082820898_
                                                   (##cdr _e2082620893_))
                                                  (_hd2082720896_
                                                   (##car _e2082620893_)))
                                              (if (gx#stx-null? _tl2082820898_)
                                                  (___kont2752227523_
                                                   _hd2082720896_
                                                   _hd2082420888_
                                                   _hd2082120880_)
                                                  (___kont2752427525_))))
                                          (___kont2752427525_))
                                      (___kont2752427525_))
                                  (___kont2752427525_))))
                          (___kont2752427525_))
                      (___kont2752427525_))))
              (___kont2752427525_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2752427525_))))
                                      (___kont2752427525_))))
                              (___kont2752427525_))
                          (___kont2752427525_))
                      (___kont2752427525_))))
              (___kont2752427525_))))))
  (define gxc#kw-lambda-expr?
    (lambda (_expr20125_)
      (let* ((___stx2758227583_ _expr20125_)
             (_g2012820286_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2758227583_))))
        (let ((___kont2758427585_
               (lambda (_L20674_
                        _L20675_
                        _L20676_
                        _L20677_
                        _L20678_
                        _L20679_
                        _L20680_
                        _L20681_
                        _L20682_
                        _L20683_
                        _L20684_)
                 (if (gxc#runtime-identifier=? _L20681_ 'apply)
                     (if (gxc#runtime-identifier=? _L20677_ 'apply)
                         (if (gxc#runtime-identifier=?
                              _L20676_
                              'keyword-dispatch)
                             (if (gx#free-identifier=? _L20684_ _L20675_)
                                 (if (gx#free-identifier=? _L20683_ _L20680_)
                                     (if (gx#free-identifier=?
                                          _L20678_
                                          _L20674_)
                                         (gx#free-identifier=?
                                          _L20682_
                                          _L20679_)
                                         '#f)
                                     '#f)
                                 '#f)
                             '#f)
                         '#f)
                     '#f)))
              (___kont2758627587_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2758227583_)
              (let ((_e2014120298_ (gx#stx-e ___stx2758227583_)))
                (let ((_tl2014320303_ (##cdr _e2014120298_))
                      (_hd2014220301_ (##car _e2014120298_)))
                  (if (gx#identifier? _hd2014220301_)
                      (if (gx#stx-eq? '%#let-values _hd2014220301_)
                          (if (gx#stx-pair? _tl2014320303_)
                              (let ((_e2014420306_ (gx#stx-e _tl2014320303_)))
                                (let ((_tl2014620311_ (##cdr _e2014420306_))
                                      (_hd2014520309_ (##car _e2014420306_)))
                                  (if (gx#stx-pair? _hd2014520309_)
                                      (let ((_e2014720314_
                                             (gx#stx-e _hd2014520309_)))
                                        (let ((_tl2014920319_
                                               (##cdr _e2014720314_))
                                              (_hd2014820317_
                                               (##car _e2014720314_)))
                                          (if (gx#stx-pair? _hd2014820317_)
                                              (let ((_e2015020322_
                                                     (gx#stx-e
                                                      _hd2014820317_)))
                                                (let ((_tl2015220327_
                                                       (##cdr _e2015020322_))
                                                      (_hd2015120325_
                                                       (##car _e2015020322_)))
                                                  (if (gx#stx-pair?
                                                       _hd2015120325_)
                                                      (let ((_e2015320330_
                                                             (gx#stx-e
                                                              _hd2015120325_)))
                                                        (let ((_tl2015520335_
                                                               (##cdr _e2015320330_))
                                                              (_hd2015420333_
                                                               (##car _e2015320330_)))
                                                          (if (gx#stx-null?
                                                               _tl2015520335_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2015220327_)
                          (let ((_e2015620338_ (gx#stx-e _tl2015220327_)))
                            (let ((_tl2015820343_ (##cdr _e2015620338_))
                                  (_hd2015720341_ (##car _e2015620338_)))
                              (if (gx#stx-pair? _hd2015720341_)
                                  (let ((_e2015920346_
                                         (gx#stx-e _hd2015720341_)))
                                    (let ((_tl2016120351_
                                           (##cdr _e2015920346_))
                                          (_hd2016020349_
                                           (##car _e2015920346_)))
                                      (if (gx#identifier? _hd2016020349_)
                                          (if (gx#stx-eq?
                                               '%#let-values
                                               _hd2016020349_)
                                              (if (gx#stx-pair? _tl2016120351_)
                                                  (let ((_e2016220354_
                                                         (gx#stx-e
                                                          _tl2016120351_)))
                                                    (let ((_tl2016420359_
                                                           (##cdr _e2016220354_))
                                                          (_hd2016320357_
                                                           (##car _e2016220354_)))
                                                      (if (gx#stx-pair?
                                                           _hd2016320357_)
                                                          (let ((_e2016520362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2016320357_)))
                    (let ((_tl2016720367_ (##cdr _e2016520362_))
                          (_hd2016620365_ (##car _e2016520362_)))
                      (if (gx#stx-pair? _hd2016620365_)
                          (let ((_e2016820370_ (gx#stx-e _hd2016620365_)))
                            (let ((_tl2017020375_ (##cdr _e2016820370_))
                                  (_hd2016920373_ (##car _e2016820370_)))
                              (if (gx#stx-pair? _hd2016920373_)
                                  (let ((_e2017120378_
                                         (gx#stx-e _hd2016920373_)))
                                    (let ((_tl2017320383_
                                           (##cdr _e2017120378_))
                                          (_hd2017220381_
                                           (##car _e2017120378_)))
                                      (if (gx#stx-null? _tl2017320383_)
                                          (if (gx#stx-pair? _tl2017020375_)
                                              (let ((_e2017420386_
                                                     (gx#stx-e
                                                      _tl2017020375_)))
                                                (let ((_tl2017620391_
                                                       (##cdr _e2017420386_))
                                                      (_hd2017520389_
                                                       (##car _e2017420386_)))
                                                  (if (gx#stx-null?
                                                       _tl2017620391_)
                                                      (if (gx#stx-null?
                                                           _tl2016720367_)
                                                          (if (gx#stx-pair?
                                                               _tl2016420359_)
                                                              (let ((_e2017720394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2016420359_)))
                        (let ((_tl2017920399_ (##cdr _e2017720394_))
                              (_hd2017820397_ (##car _e2017720394_)))
                          (if (gx#stx-pair? _hd2017820397_)
                              (let ((_e2018020402_ (gx#stx-e _hd2017820397_)))
                                (let ((_tl2018220407_ (##cdr _e2018020402_))
                                      (_hd2018120405_ (##car _e2018020402_)))
                                  (if (gx#identifier? _hd2018120405_)
                                      (if (gx#stx-eq? '%#lambda _hd2018120405_)
                                          (if (gx#stx-pair? _tl2018220407_)
                                              (let ((_e2018320410_
                                                     (gx#stx-e
                                                      _tl2018220407_)))
                                                (let ((_tl2018520415_
                                                       (##cdr _e2018320410_))
                                                      (_hd2018420413_
                                                       (##car _e2018320410_)))
                                                  (if (gx#stx-pair?
                                                       _hd2018420413_)
                                                      (let ((_e2018620418_
                                                             (gx#stx-e
                                                              _hd2018420413_)))
                                                        (let ((_tl2018820423_
                                                               (##cdr _e2018620418_))
                                                              (_hd2018720421_
                                                               (##car _e2018620418_)))
                                                          (if (gx#stx-pair?
                                                               _tl2018520415_)
                                                              (let ((_e2018920426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2018520415_)))
                        (let ((_tl2019120431_ (##cdr _e2018920426_))
                              (_hd2019020429_ (##car _e2018920426_)))
                          (if (gx#stx-pair? _hd2019020429_)
                              (let ((_e2019220434_ (gx#stx-e _hd2019020429_)))
                                (let ((_tl2019420439_ (##cdr _e2019220434_))
                                      (_hd2019320437_ (##car _e2019220434_)))
                                  (if (gx#identifier? _hd2019320437_)
                                      (if (gx#stx-eq? '%#call _hd2019320437_)
                                          (if (gx#stx-pair? _tl2019420439_)
                                              (let ((_e2019520442_
                                                     (gx#stx-e
                                                      _tl2019420439_)))
                                                (let ((_tl2019720447_
                                                       (##cdr _e2019520442_))
                                                      (_hd2019620445_
                                                       (##car _e2019520442_)))
                                                  (if (gx#stx-pair?
                                                       _hd2019620445_)
                                                      (let ((_e2019820450_
                                                             (gx#stx-e
                                                              _hd2019620445_)))
                                                        (let ((_tl2020020455_
                                                               (##cdr _e2019820450_))
                                                              (_hd2019920453_
                                                               (##car _e2019820450_)))
                                                          (if (gx#identifier?
                                                               _hd2019920453_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2019920453_)
                          (if (gx#stx-pair? _tl2020020455_)
                              (let ((_e2020120458_ (gx#stx-e _tl2020020455_)))
                                (let ((_tl2020320463_ (##cdr _e2020120458_))
                                      (_hd2020220461_ (##car _e2020120458_)))
                                  (if (gx#stx-null? _tl2020320463_)
                                      (if (gx#stx-pair? _tl2019720447_)
                                          (let ((_e2020420466_
                                                 (gx#stx-e _tl2019720447_)))
                                            (let ((_tl2020620471_
                                                   (##cdr _e2020420466_))
                                                  (_hd2020520469_
                                                   (##car _e2020420466_)))
                                              (if (gx#stx-pair? _hd2020520469_)
                                                  (let ((_e2020720474_
                                                         (gx#stx-e
                                                          _hd2020520469_)))
                                                    (let ((_tl2020920479_
                                                           (##cdr _e2020720474_))
                                                          (_hd2020820477_
                                                           (##car _e2020720474_)))
                                                      (if (gx#identifier?
                                                           _hd2020820477_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2020820477_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2020920479_)
                          (let ((_e2021020482_ (gx#stx-e _tl2020920479_)))
                            (let ((_tl2021220487_ (##cdr _e2021020482_))
                                  (_hd2021120485_ (##car _e2021020482_)))
                              (if (gx#stx-null? _tl2021220487_)
                                  (if (gx#stx-pair? _tl2020620471_)
                                      (let ((_e2021320490_
                                             (gx#stx-e _tl2020620471_)))
                                        (let ((_tl2021520495_
                                               (##cdr _e2021320490_))
                                              (_hd2021420493_
                                               (##car _e2021320490_)))
                                          (if (gx#stx-pair? _hd2021420493_)
                                              (let ((_e2021620498_
                                                     (gx#stx-e
                                                      _hd2021420493_)))
                                                (let ((_tl2021820503_
                                                       (##cdr _e2021620498_))
                                                      (_hd2021720501_
                                                       (##car _e2021620498_)))
                                                  (if (gx#identifier?
                                                       _hd2021720501_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd2021720501_)
                                                          (if (gx#stx-pair?
                                                               _tl2021820503_)
                                                              (let ((_e2021920506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2021820503_)))
                        (let ((_tl2022120511_ (##cdr _e2021920506_))
                              (_hd2022020509_ (##car _e2021920506_)))
                          (if (gx#stx-null? _tl2022120511_)
                              (if (gx#stx-null? _tl2019120431_)
                                  (if (gx#stx-null? _tl2017920399_)
                                      (if (gx#stx-null? _tl2015820343_)
                                          (if (gx#stx-null? _tl2014920319_)
                                              (if (gx#stx-pair? _tl2014620311_)
                                                  (let ((_e2022220514_
                                                         (gx#stx-e
                                                          _tl2014620311_)))
                                                    (let ((_tl2022420519_
                                                           (##cdr _e2022220514_))
                                                          (_hd2022320517_
                                                           (##car _e2022220514_)))
                                                      (if (gx#stx-pair?
                                                           _hd2022320517_)
                                                          (let ((_e2022520522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2022320517_)))
                    (let ((_tl2022720527_ (##cdr _e2022520522_))
                          (_hd2022620525_ (##car _e2022520522_)))
                      (if (gx#identifier? _hd2022620525_)
                          (if (gx#stx-eq? '%#lambda _hd2022620525_)
                              (if (gx#stx-pair? _tl2022720527_)
                                  (let ((_e2022820530_
                                         (gx#stx-e _tl2022720527_)))
                                    (let ((_tl2023020535_
                                           (##cdr _e2022820530_))
                                          (_hd2022920533_
                                           (##car _e2022820530_)))
                                      (if (gx#stx-pair? _tl2023020535_)
                                          (let ((_e2023120538_
                                                 (gx#stx-e _tl2023020535_)))
                                            (let ((_tl2023320543_
                                                   (##cdr _e2023120538_))
                                                  (_hd2023220541_
                                                   (##car _e2023120538_)))
                                              (if (gx#stx-pair? _hd2023220541_)
                                                  (let ((_e2023420546_
                                                         (gx#stx-e
                                                          _hd2023220541_)))
                                                    (let ((_tl2023620551_
                                                           (##cdr _e2023420546_))
                                                          (_hd2023520549_
                                                           (##car _e2023420546_)))
                                                      (if (gx#identifier?
                                                           _hd2023520549_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2023520549_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2023620551_)
                          (let ((_e2023720554_ (gx#stx-e _tl2023620551_)))
                            (let ((_tl2023920559_ (##cdr _e2023720554_))
                                  (_hd2023820557_ (##car _e2023720554_)))
                              (if (gx#stx-pair? _hd2023820557_)
                                  (let ((_e2024020562_
                                         (gx#stx-e _hd2023820557_)))
                                    (let ((_tl2024220567_
                                           (##cdr _e2024020562_))
                                          (_hd2024120565_
                                           (##car _e2024020562_)))
                                      (if (gx#identifier? _hd2024120565_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2024120565_)
                                              (if (gx#stx-pair? _tl2024220567_)
                                                  (let ((_e2024320570_
                                                         (gx#stx-e
                                                          _tl2024220567_)))
                                                    (let ((_tl2024520575_
                                                           (##cdr _e2024320570_))
                                                          (_hd2024420573_
                                                           (##car _e2024320570_)))
                                                      (if (gx#stx-null?
                                                           _tl2024520575_)
                                                          (if (gx#stx-pair?
                                                               _tl2023920559_)
                                                              (let ((_e2024620578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2023920559_)))
                        (let ((_tl2024820583_ (##cdr _e2024620578_))
                              (_hd2024720581_ (##car _e2024620578_)))
                          (if (gx#stx-pair? _hd2024720581_)
                              (let ((_e2024920586_ (gx#stx-e _hd2024720581_)))
                                (let ((_tl2025120591_ (##cdr _e2024920586_))
                                      (_hd2025020589_ (##car _e2024920586_)))
                                  (if (gx#identifier? _hd2025020589_)
                                      (if (gx#stx-eq? '%#ref _hd2025020589_)
                                          (if (gx#stx-pair? _tl2025120591_)
                                              (let ((_e2025220594_
                                                     (gx#stx-e
                                                      _tl2025120591_)))
                                                (let ((_tl2025420599_
                                                       (##cdr _e2025220594_))
                                                      (_hd2025320597_
                                                       (##car _e2025220594_)))
                                                  (if (gx#stx-null?
                                                       _tl2025420599_)
                                                      (if (gx#stx-pair?
                                                           _tl2024820583_)
                                                          (let ((_e2025520602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2024820583_)))
                    (let ((_tl2025720607_ (##cdr _e2025520602_))
                          (_hd2025620605_ (##car _e2025520602_)))
                      (if (gx#stx-pair? _hd2025620605_)
                          (let ((_e2025820610_ (gx#stx-e _hd2025620605_)))
                            (let ((_tl2026020615_ (##cdr _e2025820610_))
                                  (_hd2025920613_ (##car _e2025820610_)))
                              (if (gx#identifier? _hd2025920613_)
                                  (if (gx#stx-eq? '%#quote _hd2025920613_)
                                      (if (gx#stx-pair? _tl2026020615_)
                                          (let ((_e2026120618_
                                                 (gx#stx-e _tl2026020615_)))
                                            (let ((_tl2026320623_
                                                   (##cdr _e2026120618_))
                                                  (_hd2026220621_
                                                   (##car _e2026120618_)))
                                              (if (gx#stx-null? _tl2026320623_)
                                                  (if (gx#stx-pair?
                                                       _tl2025720607_)
                                                      (let ((_e2026420626_
                                                             (gx#stx-e
                                                              _tl2025720607_)))
                                                        (let ((_tl2026620631_
                                                               (##cdr _e2026420626_))
                                                              (_hd2026520629_
                                                               (##car _e2026420626_)))
                                                          (if (gx#stx-pair?
                                                               _hd2026520629_)
                                                              (let ((_e2026720634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2026520629_)))
                        (let ((_tl2026920639_ (##cdr _e2026720634_))
                              (_hd2026820637_ (##car _e2026720634_)))
                          (if (gx#identifier? _hd2026820637_)
                              (if (gx#stx-eq? '%#ref _hd2026820637_)
                                  (if (gx#stx-pair? _tl2026920639_)
                                      (let ((_e2027020642_
                                             (gx#stx-e _tl2026920639_)))
                                        (let ((_tl2027220647_
                                               (##cdr _e2027020642_))
                                              (_hd2027120645_
                                               (##car _e2027020642_)))
                                          (if (gx#stx-null? _tl2027220647_)
                                              (if (gx#stx-pair? _tl2026620631_)
                                                  (let ((_e2027320650_
                                                         (gx#stx-e
                                                          _tl2026620631_)))
                                                    (let ((_tl2027520655_
                                                           (##cdr _e2027320650_))
                                                          (_hd2027420653_
                                                           (##car _e2027320650_)))
                                                      (if (gx#stx-pair?
                                                           _hd2027420653_)
                                                          (let ((_e2027620658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2027420653_)))
                    (let ((_tl2027820663_ (##cdr _e2027620658_))
                          (_hd2027720661_ (##car _e2027620658_)))
                      (if (gx#identifier? _hd2027720661_)
                          (if (gx#stx-eq? '%#ref _hd2027720661_)
                              (if (gx#stx-pair? _tl2027820663_)
                                  (let ((_e2027920666_
                                         (gx#stx-e _tl2027820663_)))
                                    (let ((_tl2028120671_
                                           (##cdr _e2027920666_))
                                          (_hd2028020669_
                                           (##car _e2027920666_)))
                                      (if (gx#stx-null? _tl2028120671_)
                                          (if (gx#stx-null? _tl2027520655_)
                                              (if (gx#stx-null? _tl2023320543_)
                                                  (if (gx#stx-null?
                                                       _tl2022420519_)
                                                      (___kont2758427585_
                                                       _hd2028020669_
                                                       _hd2027120645_
                                                       _hd2025320597_
                                                       _hd2024420573_
                                                       _hd2022920533_
                                                       _hd2022020509_
                                                       _hd2021120485_
                                                       _hd2020220461_
                                                       _hd2018720421_
                                                       _hd2017220381_
                                                       _hd2015420333_)
                                                      (___kont2758627587_))
                                                  (___kont2758627587_))
                                              (___kont2758627587_))
                                          (___kont2758627587_))))
                                  (___kont2758627587_))
                              (___kont2758627587_))
                          (___kont2758627587_))))
                  (___kont2758627587_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2758627587_))
                                              (___kont2758627587_))))
                                      (___kont2758627587_))
                                  (___kont2758627587_))
                              (___kont2758627587_))))
                      (___kont2758627587_))))
              (___kont2758627587_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2758627587_))))
                                          (___kont2758627587_))
                                      (___kont2758627587_))
                                  (___kont2758627587_))))
                          (___kont2758627587_))))
                  (___kont2758627587_))
              (___kont2758627587_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2758627587_))
                                          (___kont2758627587_))
                                      (___kont2758627587_))))
                              (___kont2758627587_))))
                      (___kont2758627587_))
                  (___kont2758627587_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2758627587_))
                                              (___kont2758627587_))
                                          (___kont2758627587_))))
                                  (___kont2758627587_))))
                          (___kont2758627587_))
                      (___kont2758627587_))
                  (___kont2758627587_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2758627587_))))
                                          (___kont2758627587_))))
                                  (___kont2758627587_))
                              (___kont2758627587_))
                          (___kont2758627587_))))
                  (___kont2758627587_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2758627587_))
                                              (___kont2758627587_))
                                          (___kont2758627587_))
                                      (___kont2758627587_))
                                  (___kont2758627587_))
                              (___kont2758627587_))))
                      (___kont2758627587_))
                  (___kont2758627587_))
              (___kont2758627587_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2758627587_))))
                                      (___kont2758627587_))
                                  (___kont2758627587_))))
                          (___kont2758627587_))
                      (___kont2758627587_))
                  (___kont2758627587_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2758627587_))))
                                          (___kont2758627587_))
                                      (___kont2758627587_))))
                              (___kont2758627587_))
                          (___kont2758627587_))
                      (___kont2758627587_))))
              (___kont2758627587_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2758627587_))
                                          (___kont2758627587_))
                                      (___kont2758627587_))))
                              (___kont2758627587_))))
                      (___kont2758627587_))))
              (___kont2758627587_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2758627587_))
                                          (___kont2758627587_))
                                      (___kont2758627587_))))
                              (___kont2758627587_))))
                      (___kont2758627587_))
                  (___kont2758627587_))
              (___kont2758627587_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2758627587_))
                                          (___kont2758627587_))))
                                  (___kont2758627587_))))
                          (___kont2758627587_))))
                  (___kont2758627587_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2758627587_))
                                              (___kont2758627587_))
                                          (___kont2758627587_))))
                                  (___kont2758627587_))))
                          (___kont2758627587_))
                      (___kont2758627587_))))
              (___kont2758627587_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2758627587_))))
                                      (___kont2758627587_))))
                              (___kont2758627587_))
                          (___kont2758627587_))
                      (___kont2758627587_))))
              (___kont2758627587_))))))
  (begin
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx19867_ _id19868_ _clauses19869_ _gensym?19870_)
        (let _lp19872_ ((_rest19874_ _clauses19869_)
                        (_ids19875_ '())
                        (_impls19876_ '())
                        (_clauses19877_ '()))
          (let* ((_rest1987819886_ _rest19874_)
                 (_else1988019894_
                  (lambda ()
                    (values (reverse _ids19875_)
                            (reverse _impls19876_)
                            (reverse _clauses19877_))))
                 (_K1988220099_
                  (lambda (_rest19897_ _clause19898_)
                    (if (gxc#dispatch-lambda-form? _clause19898_)
                        (_lp19872_
                         _rest19897_
                         _ids19875_
                         _impls19876_
                         (cons _clause19898_ _clauses19877_))
                        (let* ((_g1990019911_
                                (lambda (_g1990119908_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g1990119908_)))
                               (_g1989920096_
                                (lambda (_g1990119914_)
                                  (if (gx#stx-pair? _g1990119914_)
                                      (let ((_e1990419916_
                                             (gx#stx-e _g1990119914_)))
                                        (let ((_hd1990519919_
                                               (##car _e1990419916_))
                                              (_tl1990619921_
                                               (##cdr _e1990419916_)))
                                          ((lambda (_L19924_ _L19925_)
                                             (let* ((_id19942_
                                                     (make-symbol
                                                      (gx#stx-e _id19868_)
                                                      '"__"
                                                      (length _clauses19877_)
                                                      (if _gensym?19870_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id19944_
                                                     (gx#core-quote-syntax__1
                                                      _id19942_
                                                      (gx#stx-source
                                                       _stx19867_)))
                                                    (_impl19946_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L19925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L19924_))
              _stx19867_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause20093_
                                                     (let* ((___stx2796627967_
                                                             _L19925_)
                                                            (_g1995019978_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                ___stx2796627967_))))
                                                       (let ((___kont2796827969_
                                                              (lambda (_L20072_)
                                                                (cons _L19925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons _id19944_ '()))
                                                 (begin
                                                   '#!void
                                                   (foldr1 (lambda (_g2008220085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g2008320087_)
                     (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                 (cons _g2008220085_ '()))
                           _g2008320087_))
                   '()
                   _L20072_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx19867_)
                                    '()))))
                     (___kont2797227973_
                      (lambda (_L20023_ _L20024_)
                        (cons _L19925_
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'apply '()))
                                                 (cons (cons '%#ref
                                                             (cons _id19944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (foldr1 cons
                       (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                   (cons _L20023_ '()))
                             '())
                       (begin
                         '#!void
                         (foldr1 (lambda (_g2003520038_ _g2003620040_)
                                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                               (cons _g2003520038_ '()))
                                         _g2003620040_))
                                 '()
                                 _L20024_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx19867_)
                                    '()))))
                     (___kont2797627977_
                      (lambda (_L19983_)
                        (cons _L19925_
                              (cons (gxc#xform-wrap-source
                                     (cons '%#call
                                           (cons (cons '%#ref
                                                       (cons 'apply '()))
                                                 (cons (cons '%#ref
                                                             (cons _id19944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                           (cons _L19983_ '()))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _stx19867_)
                                    '())))))
                 (let* ((___match2799127992_
                         (lambda (___splice2797427975_
                                  _target1996419999_
                                  _tl1996620001_)
                           (letrec ((_loop1996720004_
                                     (lambda (_hd1996520007_ _arg1997120009_)
                                       (if (gx#stx-pair? _hd1996520007_)
                                           (let ((_e1996820012_
                                                  (gx#stx-e _hd1996520007_)))
                                             (let ((_lp-tl1997020017_
                                                    (##cdr _e1996820012_))
                                                   (_lp-hd1996920015_
                                                    (##car _e1996820012_)))
                                               (_loop1996720004_
                                                _lp-tl1997020017_
                                                (cons _lp-hd1996920015_
                                                      _arg1997120009_))))
                                           (let ((_arg1997220020_
                                                  (reverse _arg1997120009_)))
                                             (___kont2797227973_
                                              _tl1996620001_
                                              _arg1997220020_))))))
                             (_loop1996720004_ _target1996419999_ '()))))
                        (___match2798527986_
                         (lambda (___splice2797027971_
                                  _target1995320048_
                                  _tl1995520050_)
                           (letrec ((_loop1995620053_
                                     (lambda (_hd1995420056_ _arg1996020058_)
                                       (if (gx#stx-pair? _hd1995420056_)
                                           (let ((_e1995720061_
                                                  (gx#stx-e _hd1995420056_)))
                                             (let ((_lp-tl1995920066_
                                                    (##cdr _e1995720061_))
                                                   (_lp-hd1995820064_
                                                    (##car _e1995720061_)))
                                               (_loop1995620053_
                                                _lp-tl1995920066_
                                                (cons _lp-hd1995820064_
                                                      _arg1996020058_))))
                                           (let ((_arg1996120069_
                                                  (reverse _arg1996020058_)))
                                             (___kont2796827969_
                                              _arg1996120069_))))))
                             (_loop1995620053_ _target1995320048_ '())))))
                   (if (gx#stx-pair/null? ___stx2796627967_)
                       (let ((___splice2797027971_
                              (gx#syntax-split-splice ___stx2796627967_ '0)))
                         (let ((_tl1995520050_
                                (##vector-ref ___splice2797027971_ '1))
                               (_target1995320048_
                                (##vector-ref ___splice2797027971_ '0)))
                           (if (gx#stx-null? _tl1995520050_)
                               (___match2798527986_
                                ___splice2797027971_
                                _target1995320048_
                                _tl1995520050_)
                               (___match2799127992_
                                ___splice2797027971_
                                _target1995320048_
                                _tl1995520050_))))
                       (___kont2797627977_ ___stx2796627967_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp19872_
                                                _rest19897_
                                                (cons _id19944_ _ids19875_)
                                                (cons _impl19946_ _impls19876_)
                                                (cons _clause20093_
                                                      _clauses19877_))))
                                           _tl1990619921_
                                           _hd1990519919_)))
                                      (_g1990019911_ _g1990119914_)))))
                          (_g1989920096_ _clause19898_))))))
            (if (##pair? _rest1987819886_)
                (let ((_hd1988320102_ (##car _rest1987819886_))
                      (_tl1988420104_ (##cdr _rest1987819886_)))
                  (let* ((_clause20107_ _hd1988320102_)
                         (_rest20109_ _tl1988420104_))
                    (_K1988220099_ _rest20109_ _clause20107_)))
                (_else1988019894_))))))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx20114_ _id20115_ _clauses20116_)
          (let ((_gensym?20118_ '#f))
            (gxc#lift-case-lambda-clauses__%
             _stx20114_
             _id20115_
             _clauses20116_
             _gensym?20118_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g28506_
          (let ((_g28505_ (length _g28506_)))
            (cond ((##fx= _g28505_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g28506_))
                  ((##fx= _g28505_ 4)
                   (apply gxc#lift-case-lambda-clauses__% _g28506_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g28506_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx19144_)
      (letrec ((_case-lambda-clause-def19146_
                (lambda (_id19863_ _impl19864_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id19863_ '())
                               (cons (gxc#compile-e _impl19864_) '())))
                   _stx19144_)))
               (_opt-lambda-dispatch-name19147_
                (lambda (_id19859_)
                  (if (uninterned-symbol? _id19859_)
                      (let ((_str19861_ (symbol->string _id19859_)))
                        (if (string-prefix? _str19861_ '"opt-lambda")
                            '"%"
                            _id19859_))
                      _id19859_)))
               (_kw-lambda-dispatch-name19148_
                (lambda (_id19854_ _name19855_)
                  (if (uninterned-symbol? _id19854_)
                      (let ((_str19857_ (symbol->string _id19854_)))
                        (if (string-prefix? _str19857_ '"kw-lambda")
                            _name19855_
                            _id19854_))
                      _id19854_))))
        (let* ((___stx2801428015_ _stx19144_)
               (_g1915319212_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2801428015_))))
          (let ((___kont2801628017_
                 (lambda (_L19763_ _L19764_)
                   (let* ((___stx2799427995_ _L19763_)
                          (_g1978119795_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx2799427995_))))
                     (let ((___kont2799627997_ (lambda (_L19839_) _stx19144_))
                           (___kont2799827999_
                            (lambda (_L19808_)
                              (let ((_g28507_
                                     (gxc#lift-case-lambda-clauses__0
                                      _stx19144_
                                      _L19764_
                                      _L19808_)))
                                (begin
                                  (let ((_g28508_
                                         (if (##values? _g28507_)
                                             (##vector-length _g28507_)
                                             1)))
                                    (if (not (##fx= _g28508_ 3))
                                        (error "Context expects 3 values"
                                               _g28508_)))
                                  (let ((_ids19818_ (##vector-ref _g28507_ 0))
                                        (_impls19819_
                                         (##vector-ref _g28507_ 1))
                                        (_clauses19820_
                                         (##vector-ref _g28507_ 2)))
                                    (let* ((_g28509_
                                            (for-each
                                             gx#core-bind-runtime!
                                             _ids19818_))
                                           (_defs19823_
                                            (map _case-lambda-clause-def19146_
                                                 _ids19818_
                                                 _impls19819_)))
                                      (begin
                                        (gxc#verbose
                                         '"lift case-lambda clauses "
                                         (gxc#identifier-symbol _L19764_)
                                         '" => "
                                         (map gxc#identifier-symbol
                                              _ids19818_))
                                        (gxc#xform-wrap-source
                                         (cons '%#begin
                                               (foldr1 cons
                                                       (cons (gxc#xform-wrap-source
                                                              (cons '%#define-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons _L19764_ '())
                                  (cons (gxc#xform-wrap-source
                                         (cons '%#case-lambda _clauses19820_)
                                         (gx#datum->syntax__0
                                          '#f
                                          'case-lambda-expr))
                                        '())))
                      _stx19144_)
                     '())
               _defs19823_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _stx19144_)))))))))
                       (let ((___match2800528006_
                              (lambda (_e1978419831_
                                       _hd1978519834_
                                       _tl1978619836_)
                                (let ((_L19839_ _tl1978619836_))
                                  (if (andmap1 gxc#dispatch-lambda-form?
                                               _L19839_)
                                      (___kont2799627997_ _L19839_)
                                      (___kont2799827999_ _tl1978619836_))))))
                         (if (gx#stx-pair? ___stx2799427995_)
                             (let ((_e1978419831_
                                    (gx#stx-e ___stx2799427995_)))
                               (let ((_tl1978619836_ (##cdr _e1978419831_))
                                     (_hd1978519834_ (##car _e1978419831_)))
                                 (___match2800528006_
                                  _e1978419831_
                                  _hd1978519834_
                                  _tl1978619836_)))
                             (_g1978119795_)))))))
                (___kont2801828019_
                 (lambda (_L19581_ _L19582_)
                   (let* ((_g1959819628_
                           (lambda (_g1959919625_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1959919625_)))
                          (_g1959719723_
                           (lambda (_g1959919631_)
                             (if (gx#stx-pair? _g1959919631_)
                                 (let ((_e1960319633_
                                        (gx#stx-e _g1959919631_)))
                                   (let ((_hd1960419636_ (##car _e1960319633_))
                                         (_tl1960519638_
                                          (##cdr _e1960319633_)))
                                     (if (gx#stx-pair? _tl1960519638_)
                                         (let ((_e1960619641_
                                                (gx#stx-e _tl1960519638_)))
                                           (let ((_hd1960719644_
                                                  (##car _e1960619641_))
                                                 (_tl1960819646_
                                                  (##cdr _e1960619641_)))
                                             (if (gx#stx-pair? _hd1960719644_)
                                                 (let ((_e1960919649_
                                                        (gx#stx-e
                                                         _hd1960719644_)))
                                                   (let ((_hd1961019652_
                                                          (##car _e1960919649_))
                                                         (_tl1961119654_
                                                          (##cdr _e1960919649_)))
                                                     (if (gx#stx-pair?
                                                          _hd1961019652_)
                                                         (let ((_e1961219657_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1961019652_)))
                   (let ((_hd1961319660_ (##car _e1961219657_))
                         (_tl1961419662_ (##cdr _e1961219657_)))
                     (if (gx#stx-pair? _hd1961319660_)
                         (let ((_e1961519665_ (gx#stx-e _hd1961319660_)))
                           (let ((_hd1961619668_ (##car _e1961519665_))
                                 (_tl1961719670_ (##cdr _e1961519665_)))
                             (if (gx#stx-null? _tl1961719670_)
                                 (if (gx#stx-pair? _tl1961419662_)
                                     (let ((_e1961819673_
                                            (gx#stx-e _tl1961419662_)))
                                       (let ((_hd1961919676_
                                              (##car _e1961819673_))
                                             (_tl1962019678_
                                              (##cdr _e1961819673_)))
                                         (if (gx#stx-null? _tl1962019678_)
                                             (if (gx#stx-null? _tl1961119654_)
                                                 (if (gx#stx-pair?
                                                      _tl1960819646_)
                                                     (let ((_e1962119681_
                                                            (gx#stx-e
                                                             _tl1960819646_)))
                                                       (let ((_hd1962219684_
                                                              (##car _e1962119681_))
                                                             (_tl1962319686_
                                                              (##cdr _e1962119681_)))
                                                         (if (gx#stx-null?
                                                              _tl1962319686_)
                                                             ((lambda (_L19689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L19690_
                               _L19691_)
                        (let* ((_lambda-id19715_
                                (make-symbol
                                 (gx#stx-e _L19582_)
                                 '"__"
                                 (_opt-lambda-dispatch-name19147_
                                  (gx#stx-e _L19691_))))
                               (_lambda-id19717_
                                (gx#core-quote-syntax__1
                                 _lambda-id19715_
                                 (gx#stx-source _stx19144_)))
                               (_g28510_
                                (gx#core-bind-runtime!__0 _lambda-id19717_))
                               (_new-case-lambda-expr19720_
                                (gxc#apply-expression-subst
                                 _L19689_
                                 _L19691_
                                 _lambda-id19717_)))
                          (begin
                            (gxc#verbose
                             '"lift opt-lambda dispatch "
                             (gxc#identifier-symbol _L19582_)
                             '" => "
                             (gxc#identifier-symbol _lambda-id19717_))
                            (gxc#xform-wrap-source
                             (cons '%#begin
                                   (cons (gxc#xform-wrap-source
                                          (cons '%#define-values
                                                (cons (cons _lambda-id19717_
                                                            '())
                                                      (cons (gxc#compile-e
                                                             _L19690_)
                                                            '())))
                                          _stx19144_)
                                         (cons (gxc#lift-top-lambda-define-values%
                                                (gxc#xform-wrap-source
                                                 (cons '%#define-values
                                                       (cons (cons _L19582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons _new-case-lambda-expr19720_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _stx19144_))
                                               '())))
                             _stx19144_))))
                      _hd1962219684_
                      _hd1961919676_
                      _hd1961619668_)
                     (_g1959819628_ _g1959919631_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1959819628_
                                                      _g1959919631_))
                                                 (_g1959819628_ _g1959919631_))
                                             (_g1959819628_ _g1959919631_))))
                                     (_g1959819628_ _g1959919631_))
                                 (_g1959819628_ _g1959919631_))))
                         (_g1959819628_ _g1959919631_))))
                 (_g1959819628_ _g1959919631_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1959819628_
                                                  _g1959919631_))))
                                         (_g1959819628_ _g1959919631_))))
                                 (_g1959819628_ _g1959919631_)))))
                     (_g1959719723_ _L19581_))))
                (___kont2802028021_
                 (lambda (_L19295_ _L19296_)
                   (let* ((_g1931219365_
                           (lambda (_g1931319362_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1931319362_)))
                          (_g1931119541_
                           (lambda (_g1931319368_)
                             (if (gx#stx-pair? _g1931319368_)
                                 (let ((_e1931919370_
                                        (gx#stx-e _g1931319368_)))
                                   (let ((_hd1932019373_ (##car _e1931919370_))
                                         (_tl1932119375_
                                          (##cdr _e1931919370_)))
                                     (if (gx#stx-pair? _tl1932119375_)
                                         (let ((_e1932219378_
                                                (gx#stx-e _tl1932119375_)))
                                           (let ((_hd1932319381_
                                                  (##car _e1932219378_))
                                                 (_tl1932419383_
                                                  (##cdr _e1932219378_)))
                                             (if (gx#stx-pair? _hd1932319381_)
                                                 (let ((_e1932519386_
                                                        (gx#stx-e
                                                         _hd1932319381_)))
                                                   (let ((_hd1932619389_
                                                          (##car _e1932519386_))
                                                         (_tl1932719391_
                                                          (##cdr _e1932519386_)))
                                                     (if (gx#stx-pair?
                                                          _hd1932619389_)
                                                         (let ((_e1932819394_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1932619389_)))
                   (let ((_hd1932919397_ (##car _e1932819394_))
                         (_tl1933019399_ (##cdr _e1932819394_)))
                     (if (gx#stx-pair? _hd1932919397_)
                         (let ((_e1933119402_ (gx#stx-e _hd1932919397_)))
                           (let ((_hd1933219405_ (##car _e1933119402_))
                                 (_tl1933319407_ (##cdr _e1933119402_)))
                             (if (gx#stx-null? _tl1933319407_)
                                 (if (gx#stx-pair? _tl1933019399_)
                                     (let ((_e1933419410_
                                            (gx#stx-e _tl1933019399_)))
                                       (let ((_hd1933519413_
                                              (##car _e1933419410_))
                                             (_tl1933619415_
                                              (##cdr _e1933419410_)))
                                         (if (gx#stx-pair? _hd1933519413_)
                                             (let ((_e1933719418_
                                                    (gx#stx-e _hd1933519413_)))
                                               (let ((_hd1933819421_
                                                      (##car _e1933719418_))
                                                     (_tl1933919423_
                                                      (##cdr _e1933719418_)))
                                                 (if (gx#stx-pair?
                                                      _tl1933919423_)
                                                     (let ((_e1934019426_
                                                            (gx#stx-e
                                                             _tl1933919423_)))
                                                       (let ((_hd1934119429_
                                                              (##car _e1934019426_))
                                                             (_tl1934219431_
                                                              (##cdr _e1934019426_)))
                                                         (if (gx#stx-pair?
                                                              _hd1934119429_)
                                                             (let ((_e1934319434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1934119429_)))
                       (let ((_hd1934419437_ (##car _e1934319434_))
                             (_tl1934519439_ (##cdr _e1934319434_)))
                         (if (gx#stx-pair? _hd1934419437_)
                             (let ((_e1934619442_ (gx#stx-e _hd1934419437_)))
                               (let ((_hd1934719445_ (##car _e1934619442_))
                                     (_tl1934819447_ (##cdr _e1934619442_)))
                                 (if (gx#stx-pair? _hd1934719445_)
                                     (let ((_e1934919450_
                                            (gx#stx-e _hd1934719445_)))
                                       (let ((_hd1935019453_
                                              (##car _e1934919450_))
                                             (_tl1935119455_
                                              (##cdr _e1934919450_)))
                                         (if (gx#stx-null? _tl1935119455_)
                                             (if (gx#stx-pair? _tl1934819447_)
                                                 (let ((_e1935219458_
                                                        (gx#stx-e
                                                         _tl1934819447_)))
                                                   (let ((_hd1935319461_
                                                          (##car _e1935219458_))
                                                         (_tl1935419463_
                                                          (##cdr _e1935219458_)))
                                                     (if (gx#stx-null?
                                                          _tl1935419463_)
                                                         (if (gx#stx-null?
                                                              _tl1934519439_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1934219431_)
                         (let ((_e1935519466_ (gx#stx-e _tl1934219431_)))
                           (let ((_hd1935619469_ (##car _e1935519466_))
                                 (_tl1935719471_ (##cdr _e1935519466_)))
                             (if (gx#stx-null? _tl1935719471_)
                                 (if (gx#stx-null? _tl1933619415_)
                                     (if (gx#stx-null? _tl1932719391_)
                                         (if (gx#stx-pair? _tl1932419383_)
                                             (let ((_e1935819474_
                                                    (gx#stx-e _tl1932419383_)))
                                               (let ((_hd1935919477_
                                                      (##car _e1935819474_))
                                                     (_tl1936019479_
                                                      (##cdr _e1935819474_)))
                                                 (if (gx#stx-null?
                                                      _tl1936019479_)
                                                     ((lambda (_L19482_
                                                               _L19483_
                                                               _L19484_
                                                               _L19485_
                                                               _L19486_)
                                                        (let* ((_get-kws-id19526_
                                                                (make-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _L19296_)
                         '"__"
                         (_kw-lambda-dispatch-name19148_
                          (gx#stx-e _L19486_)
                          '"@")))
                       (_get-kws-id19528_
                        (gx#core-quote-syntax__1
                         _get-kws-id19526_
                         (gx#stx-source _stx19144_)))
                       (_main-id19530_
                        (make-symbol
                         (gx#stx-e _L19296_)
                         '"__"
                         (_kw-lambda-dispatch-name19148_
                          (gx#stx-e _L19485_)
                          '"%")))
                       (_main-id19532_
                        (gx#core-quote-syntax__1
                         _main-id19530_
                         (gx#stx-source _stx19144_)))
                       (_g28511_ (gx#core-bind-runtime!__0 _get-kws-id19528_))
                       (_g28512_ (gx#core-bind-runtime!__0 _main-id19532_))
                       (_new-kw-dispatch19536_
                        (gxc#apply-expression-subst
                         _L19482_
                         _L19486_
                         _get-kws-id19528_))
                       (_new-get-kws19538_
                        (gxc#apply-expression-subst
                         _L19483_
                         _L19485_
                         _main-id19532_)))
                  (begin
                    (gxc#verbose
                     '"lift kw-lambda dispatch "
                     (gxc#identifier-symbol _L19296_)
                     '" => "
                     (gxc#identifier-symbol _get-kws-id19528_)
                     '" => "
                     (gxc#identifier-symbol _main-id19532_))
                    (gxc#xform-wrap-source
                     (cons '%#begin
                           (cons (gxc#lift-top-lambda-define-values%
                                  (gxc#xform-wrap-source
                                   (cons '%#define-values
                                         (cons (cons _main-id19532_ '())
                                               (cons _L19484_ '())))
                                   _stx19144_))
                                 (cons (gxc#xform-wrap-source
                                        (cons '%#define-values
                                              (cons (cons _get-kws-id19528_
                                                          '())
                                                    (cons _new-get-kws19538_
                                                          '())))
                                        _stx19144_)
                                       (cons (gxc#xform-wrap-source
                                              (cons '%#define-values
                                                    (cons (cons _L19296_ '())
                                                          (cons _new-kw-dispatch19536_
                                                                '())))
                                              _stx19144_)
                                             '()))))
                     _stx19144_))))
              _hd1935919477_
              _hd1935619469_
              _hd1935319461_
              _hd1935019453_
              _hd1933219405_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1931219365_
                                                      _g1931319368_))))
                                             (_g1931219365_ _g1931319368_))
                                         (_g1931219365_ _g1931319368_))
                                     (_g1931219365_ _g1931319368_))
                                 (_g1931219365_ _g1931319368_))))
                         (_g1931219365_ _g1931319368_))
                     (_g1931219365_ _g1931319368_))
                 (_g1931219365_ _g1931319368_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1931219365_ _g1931319368_))
                                             (_g1931219365_ _g1931319368_))))
                                     (_g1931219365_ _g1931319368_))))
                             (_g1931219365_ _g1931319368_))))
                     (_g1931219365_ _g1931319368_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1931219365_
                                                      _g1931319368_))))
                                             (_g1931219365_ _g1931319368_))))
                                     (_g1931219365_ _g1931319368_))
                                 (_g1931219365_ _g1931319368_))))
                         (_g1931219365_ _g1931319368_))))
                 (_g1931219365_ _g1931319368_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1931219365_
                                                  _g1931319368_))))
                                         (_g1931219365_ _g1931319368_))))
                                 (_g1931219365_ _g1931319368_)))))
                     (_g1931119541_ _L19295_))))
                (___kont2802228023_
                 (lambda (_L19241_ _L19242_)
                   (gxc#xform-wrap-source
                    (cons '%#define-values
                          (cons _L19242_ (cons (gxc#compile-e _L19241_) '())))
                    _stx19144_))))
            (let* ((___match2810728108_
                    (lambda (_e1918519263_
                             _hd1918619266_
                             _tl1918719268_
                             _e1918819271_
                             _hd1918919274_
                             _tl1919019276_
                             _e1919119279_
                             _hd1919219282_
                             _tl1919319284_
                             _e1919419287_
                             _hd1919519290_
                             _tl1919619292_)
                      (let ((_L19295_ _hd1919519290_)
                            (_L19296_ _hd1919219282_))
                        (if (if (gx#identifier? _L19296_)
                                (gxc#kw-lambda-expr? _L19295_)
                                '#f)
                            (___kont2802028021_ _L19295_ _L19296_)
                            (___kont2802228023_
                             _hd1919519290_
                             _hd1918919274_)))))
                   (___match2807928080_
                    (lambda (_e1917119549_
                             _hd1917219552_
                             _tl1917319554_
                             _e1917419557_
                             _hd1917519560_
                             _tl1917619562_
                             _e1917719565_
                             _hd1917819568_
                             _tl1917919570_
                             _e1918019573_
                             _hd1918119576_
                             _tl1918219578_)
                      (let ((_L19581_ _hd1918119576_)
                            (_L19582_ _hd1917819568_))
                        (if (if (gx#identifier? _L19582_)
                                (gxc#opt-lambda-expr? _L19581_)
                                '#f)
                            (___kont2801828019_ _L19581_ _L19582_)
                            (___match2810728108_
                             _e1917119549_
                             _hd1917219552_
                             _tl1917319554_
                             _e1917419557_
                             _hd1917519560_
                             _tl1917619562_
                             _e1917719565_
                             _hd1917819568_
                             _tl1917919570_
                             _e1918019573_
                             _hd1918119576_
                             _tl1918219578_)))))
                   (___match2805128052_
                    (lambda (_e1915719731_
                             _hd1915819734_
                             _tl1915919736_
                             _e1916019739_
                             _hd1916119742_
                             _tl1916219744_
                             _e1916319747_
                             _hd1916419750_
                             _tl1916519752_
                             _e1916619755_
                             _hd1916719758_
                             _tl1916819760_)
                      (let ((_L19763_ _hd1916719758_)
                            (_L19764_ _hd1916419750_))
                        (if (if (gx#identifier? _L19764_)
                                (gxc#case-lambda-expr? _L19763_)
                                '#f)
                            (___kont2801628017_ _L19763_ _L19764_)
                            (___match2807928080_
                             _e1915719731_
                             _hd1915819734_
                             _tl1915919736_
                             _e1916019739_
                             _hd1916119742_
                             _tl1916219744_
                             _e1916319747_
                             _hd1916419750_
                             _tl1916519752_
                             _e1916619755_
                             _hd1916719758_
                             _tl1916819760_))))))
              (if (gx#stx-pair? ___stx2801428015_)
                  (let ((_e1915719731_ (gx#stx-e ___stx2801428015_)))
                    (let ((_tl1915919736_ (##cdr _e1915719731_))
                          (_hd1915819734_ (##car _e1915719731_)))
                      (if (gx#stx-pair? _tl1915919736_)
                          (let ((_e1916019739_ (gx#stx-e _tl1915919736_)))
                            (let ((_tl1916219744_ (##cdr _e1916019739_))
                                  (_hd1916119742_ (##car _e1916019739_)))
                              (if (gx#stx-pair? _hd1916119742_)
                                  (let ((_e1916319747_
                                         (gx#stx-e _hd1916119742_)))
                                    (let ((_tl1916519752_
                                           (##cdr _e1916319747_))
                                          (_hd1916419750_
                                           (##car _e1916319747_)))
                                      (if (gx#stx-null? _tl1916519752_)
                                          (if (gx#stx-pair? _tl1916219744_)
                                              (let ((_e1916619755_
                                                     (gx#stx-e
                                                      _tl1916219744_)))
                                                (let ((_tl1916819760_
                                                       (##cdr _e1916619755_))
                                                      (_hd1916719758_
                                                       (##car _e1916619755_)))
                                                  (if (gx#stx-null?
                                                       _tl1916819760_)
                                                      (___match2805128052_
                                                       _e1915719731_
                                                       _hd1915819734_
                                                       _tl1915919736_
                                                       _e1916019739_
                                                       _hd1916119742_
                                                       _tl1916219744_
                                                       _e1916319747_
                                                       _hd1916419750_
                                                       _tl1916519752_
                                                       _e1916619755_
                                                       _hd1916719758_
                                                       _tl1916819760_)
                                                      (_g1915319212_))))
                                              (_g1915319212_))
                                          (if (gx#stx-pair? _tl1916219744_)
                                              (let ((_e1920519233_
                                                     (gx#stx-e
                                                      _tl1916219744_)))
                                                (let ((_tl1920719238_
                                                       (##cdr _e1920519233_))
                                                      (_hd1920619236_
                                                       (##car _e1920519233_)))
                                                  (if (gx#stx-null?
                                                       _tl1920719238_)
                                                      (___kont2802228023_
                                                       _hd1920619236_
                                                       _hd1916119742_)
                                                      (_g1915319212_))))
                                              (_g1915319212_)))))
                                  (if (gx#stx-pair? _tl1916219744_)
                                      (let ((_e1920519233_
                                             (gx#stx-e _tl1916219744_)))
                                        (let ((_tl1920719238_
                                               (##cdr _e1920519233_))
                                              (_hd1920619236_
                                               (##car _e1920519233_)))
                                          (if (gx#stx-null? _tl1920719238_)
                                              (___kont2802228023_
                                               _hd1920619236_
                                               _hd1916119742_)
                                              (_g1915319212_))))
                                      (_g1915319212_)))))
                          (_g1915319212_))))
                  (_g1915319212_))))))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx18076_)
      (letrec* ((_bind-e__2590425905_
                 (lambda (_id19128_ _expr19129_ _compile?19130_)
                   (cons (cons _id19128_ '())
                         (cons (if _compile?19130_
                                   (gxc#compile-e _expr19129_)
                                   _expr19129_)
                               '()))))
                (_bind-e__0__2590625907_
                 (lambda (_id19135_ _expr19136_)
                   (let ((_compile?19138_ '#t))
                     (_bind-e__2590425905_
                      _id19135_
                      _expr19136_
                      _compile?19138_))))
                (_bind-e18078_
                 (lambda _g28514_
                   (let ((_g28513_ (length _g28514_)))
                     (cond ((##fx= _g28513_ 2)
                            (apply _bind-e__0__2590625907_ _g28514_))
                           ((##fx= _g28513_ 3)
                            (apply _bind-e__2590425905_ _g28514_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g28514_))))))
                (_compile-bindings18079_
                 (lambda (_bindings18712_)
                   (let _lp18714_ ((_rest18716_ _bindings18712_)
                                   (_lift118717_ '())
                                   (_lift218718_ '())
                                   (_bind18719_ '()))
                     (let* ((_rest1872018728_ _rest18716_)
                            (_else1872218736_
                             (lambda ()
                               (values (reverse _lift118717_)
                                       (reverse _lift218718_)
                                       (reverse _bind18719_))))
                            (_K1872419115_
                             (lambda (_rest18739_ _hd18740_)
                               (let* ((___stx2815028151_ _hd18740_)
                                      (_g1874418780_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx2815028151_))))
                                 (let ((___kont2815228153_
                                        (lambda (_L19022_ _L19023_)
                                          (let* ((___stx2813028131_ _L19022_)
                                                 (_g1903819052_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx2813028131_))))
                                            (let ((___kont2813228133_
                                                   (lambda (_L19100_)
                                                     (_lp18714_
                                                      _rest18739_
                                                      _lift118717_
                                                      _lift218718_
                                                      (cons (_bind-e__2590425905_
                                                             _L19023_
                                                             _L19022_
                                                             '#f)
                                                            _bind18719_))))
                                                  (___kont2813428135_
                                                   (lambda (_L19065_)
                                                     (let ((_g28515_
                                                            (gxc#lift-case-lambda-clauses__%
                                                             _stx18076_
                                                             _L19023_
                                                             _L19065_
                                                             '#t)))
                                                       (begin
                                                         (let ((_g28516_
                                                                (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g28515_)
                            (##vector-length _g28515_)
                            1)))
                   (if (not (##fx= _g28516_ 3))
                       (error "Context expects 3 values" _g28516_)))
                 (let ((_ids19075_ (##vector-ref _g28515_ 0))
                       (_impls19076_ (##vector-ref _g28515_ 1))
                       (_clauses19077_ (##vector-ref _g28515_ 2)))
                   (let* ((_g28517_
                           (for-each gx#core-bind-runtime! _ids19075_))
                          (_xbind19080_
                           (map _bind-e18078_ _ids19075_ _impls19076_))
                          (_expr*19082_
                           (gxc#xform-wrap-source
                            (cons '%#case-lambda _clauses19077_)
                            (gx#datum->syntax__0 '#f 'case-lambda-expr)))
                          (_bind*19084_
                           (_bind-e__2590425905_ _L19023_ _expr*19082_ '#f)))
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#identifier-symbol _L19023_)
                        '" => "
                        (map gxc#identifier-symbol _ids19075_))
                       (_lp18714_
                        _rest18739_
                        _lift118717_
                        (foldl1 cons _lift218718_ _xbind19080_)
                        (cons _bind*19084_ _bind18719_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((___match2814128142_
                                                     (lambda (_e1904119092_
                                                              _hd1904219095_
                                                              _tl1904319097_)
                                                       (let ((_L19100_
                                                              _tl1904319097_))
                                                         (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L19100_)
                     (___kont2813228133_ _L19100_)
                     (___kont2813428135_ _tl1904319097_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx2813028131_)
                                                    (let ((_e1904119092_
                                                           (gx#stx-e
                                                            ___stx2813028131_)))
                                                      (let ((_tl1904319097_
                                                             (##cdr _e1904119092_))
                                                            (_hd1904219095_
                                                             (##car _e1904119092_)))
                                                        (___match2814128142_
                                                         _e1904119092_
                                                         _hd1904219095_
                                                         _tl1904319097_)))
                                                    (_g1903819052_)))))))
                                       (___kont2815428155_
                                        (lambda (_L18850_ _L18851_)
                                          (let* ((_g1886518895_
                                                  (lambda (_g1886618892_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1886618892_)))
                                                 (_g1886418990_
                                                  (lambda (_g1886618898_)
                                                    (if (gx#stx-pair?
                                                         _g1886618898_)
                                                        (let ((_e1887018900_
                                                               (gx#stx-e
                                                                _g1886618898_)))
                                                          (let ((_hd1887118903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1887018900_))
                        (_tl1887218905_ (##cdr _e1887018900_)))
                    (if (gx#stx-pair? _tl1887218905_)
                        (let ((_e1887318908_ (gx#stx-e _tl1887218905_)))
                          (let ((_hd1887418911_ (##car _e1887318908_))
                                (_tl1887518913_ (##cdr _e1887318908_)))
                            (if (gx#stx-pair? _hd1887418911_)
                                (let ((_e1887618916_
                                       (gx#stx-e _hd1887418911_)))
                                  (let ((_hd1887718919_ (##car _e1887618916_))
                                        (_tl1887818921_ (##cdr _e1887618916_)))
                                    (if (gx#stx-pair? _hd1887718919_)
                                        (let ((_e1887918924_
                                               (gx#stx-e _hd1887718919_)))
                                          (let ((_hd1888018927_
                                                 (##car _e1887918924_))
                                                (_tl1888118929_
                                                 (##cdr _e1887918924_)))
                                            (if (gx#stx-pair? _hd1888018927_)
                                                (let ((_e1888218932_
                                                       (gx#stx-e
                                                        _hd1888018927_)))
                                                  (let ((_hd1888318935_
                                                         (##car _e1888218932_))
                                                        (_tl1888418937_
                                                         (##cdr _e1888218932_)))
                                                    (if (gx#stx-null?
                                                         _tl1888418937_)
                                                        (if (gx#stx-pair?
                                                             _tl1888118929_)
                                                            (let ((_e1888518940_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1888118929_)))
                      (let ((_hd1888618943_ (##car _e1888518940_))
                            (_tl1888718945_ (##cdr _e1888518940_)))
                        (if (gx#stx-null? _tl1888718945_)
                            (if (gx#stx-null? _tl1887818921_)
                                (if (gx#stx-pair? _tl1887518913_)
                                    (let ((_e1888818948_
                                           (gx#stx-e _tl1887518913_)))
                                      (let ((_hd1888918951_
                                             (##car _e1888818948_))
                                            (_tl1889018953_
                                             (##cdr _e1888818948_)))
                                        (if (gx#stx-null? _tl1889018953_)
                                            ((lambda (_L18956_
                                                      _L18957_
                                                      _L18958_)
                                               (let* ((_lambda-id18982_
                                                       (make-symbol
                                                        (gx#stx-e _L18851_)
                                                        (gensym '__)))
                                                      (_lambda-id18984_
                                                       (gx#core-quote-syntax__1
                                                        _lambda-id18982_
                                                        (gx#stx-source
                                                         _stx18076_)))
                                                      (_g28518_
                                                       (gx#core-bind-runtime!__0
                                                        _lambda-id18984_))
                                                      (_new-case-lambda-expr18987_
                                                       (gxc#apply-expression-subst
                                                        _L18956_
                                                        _L18958_
                                                        _lambda-id18984_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"lift opt-lambda dispatch "
                                                    (gxc#identifier-symbol
                                                     _L18851_)
                                                    '" => "
                                                    (gxc#identifier-symbol
                                                     _lambda-id18984_))
                                                   (_lp18714_
                                                    (cons (_bind-e__2590425905_
                                                           _L18851_
                                                           _new-case-lambda-expr18987_
                                                           '#f)
                                                          _rest18739_)
                                                    (cons (_bind-e__0__2590625907_
                                                           _lambda-id18984_
                                                           _L18957_)
                                                          _lift118717_)
                                                    _lift218718_
                                                    _bind18719_))))
                                             _hd1888918951_
                                             _hd1888618943_
                                             _hd1888318935_)
                                            (_g1886518895_ _g1886618898_))))
                                    (_g1886518895_ _g1886618898_))
                                (_g1886518895_ _g1886618898_))
                            (_g1886518895_ _g1886618898_))))
                    (_g1886518895_ _g1886618898_))
                (_g1886518895_ _g1886618898_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1886518895_
                                                 _g1886618898_))))
                                        (_g1886518895_ _g1886618898_))))
                                (_g1886518895_ _g1886618898_))))
                        (_g1886518895_ _g1886618898_))))
                (_g1886518895_ _g1886618898_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1886418990_ _L18850_))))
                                       (___kont2815628157_
                                        (lambda (_L18801_ _L18802_)
                                          (_lp18714_
                                           _rest18739_
                                           _lift118717_
                                           _lift218718_
                                           (cons (cons _L18802_
                                                       (cons (gxc#compile-e
                                                              _L18801_)
                                                             '()))
                                                 _bind18719_)))))
                                   (let* ((___match2820128202_
                                           (lambda (_e1875918826_
                                                    _hd1876018829_
                                                    _tl1876118831_
                                                    _e1876218834_
                                                    _hd1876318837_
                                                    _tl1876418839_
                                                    _e1876518842_
                                                    _hd1876618845_
                                                    _tl1876718847_)
                                             (let ((_L18850_ _hd1876618845_)
                                                   (_L18851_ _hd1876318837_))
                                               (if (if (gx#identifier?
                                                        _L18851_)
                                                       (gxc#opt-lambda-expr?
                                                        _L18850_)
                                                       '#f)
                                                   (___kont2815428155_
                                                    _L18850_
                                                    _L18851_)
                                                   (___kont2815628157_
                                                    _hd1876618845_
                                                    _hd1876018829_)))))
                                          (___match2817928180_
                                           (lambda (_e1874818998_
                                                    _hd1874919001_
                                                    _tl1875019003_
                                                    _e1875119006_
                                                    _hd1875219009_
                                                    _tl1875319011_
                                                    _e1875419014_
                                                    _hd1875519017_
                                                    _tl1875619019_)
                                             (let ((_L19022_ _hd1875519017_)
                                                   (_L19023_ _hd1875219009_))
                                               (if (if (gx#identifier?
                                                        _L19023_)
                                                       (gxc#case-lambda-expr?
                                                        _L19022_)
                                                       '#f)
                                                   (___kont2815228153_
                                                    _L19022_
                                                    _L19023_)
                                                   (___match2820128202_
                                                    _e1874818998_
                                                    _hd1874919001_
                                                    _tl1875019003_
                                                    _e1875119006_
                                                    _hd1875219009_
                                                    _tl1875319011_
                                                    _e1875419014_
                                                    _hd1875519017_
                                                    _tl1875619019_))))))
                                     (if (gx#stx-pair? ___stx2815028151_)
                                         (let ((_e1874818998_
                                                (gx#stx-e ___stx2815028151_)))
                                           (let ((_tl1875019003_
                                                  (##cdr _e1874818998_))
                                                 (_hd1874919001_
                                                  (##car _e1874818998_)))
                                             (if (gx#stx-pair? _hd1874919001_)
                                                 (let ((_e1875119006_
                                                        (gx#stx-e
                                                         _hd1874919001_)))
                                                   (let ((_tl1875319011_
                                                          (##cdr _e1875119006_))
                                                         (_hd1875219009_
                                                          (##car _e1875119006_)))
                                                     (if (gx#stx-null?
                                                          _tl1875319011_)
                                                         (if (gx#stx-pair?
                                                              _tl1875019003_)
                                                             (let ((_e1875419014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1875019003_)))
                       (let ((_tl1875619019_ (##cdr _e1875419014_))
                             (_hd1875519017_ (##car _e1875419014_)))
                         (if (gx#stx-null? _tl1875619019_)
                             (___match2817928180_
                              _e1874818998_
                              _hd1874919001_
                              _tl1875019003_
                              _e1875119006_
                              _hd1875219009_
                              _tl1875319011_
                              _e1875419014_
                              _hd1875519017_
                              _tl1875619019_)
                             (_g1874418780_))))
                     (_g1874418780_))
                 (if (gx#stx-pair? _tl1875019003_)
                     (let ((_e1877318793_ (gx#stx-e _tl1875019003_)))
                       (let ((_tl1877518798_ (##cdr _e1877318793_))
                             (_hd1877418796_ (##car _e1877318793_)))
                         (if (gx#stx-null? _tl1877518798_)
                             (___kont2815628157_ _hd1877418796_ _hd1874919001_)
                             (_g1874418780_))))
                     (_g1874418780_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1875019003_)
                                                     (let ((_e1877318793_
                                                            (gx#stx-e
                                                             _tl1875019003_)))
                                                       (let ((_tl1877518798_
                                                              (##cdr _e1877318793_))
                                                             (_hd1877418796_
                                                              (##car _e1877318793_)))
                                                         (if (gx#stx-null?
                                                              _tl1877518798_)
                                                             (___kont2815628157_
                                                              _hd1877418796_
                                                              _hd1874919001_)
                                                             (_g1874418780_))))
                                                     (_g1874418780_)))))
                                         (_g1874418780_))))))))
                       (if (##pair? _rest1872018728_)
                           (let ((_hd1872519118_ (##car _rest1872018728_))
                                 (_tl1872619120_ (##cdr _rest1872018728_)))
                             (let* ((_hd19123_ _hd1872519118_)
                                    (_rest19125_ _tl1872619120_))
                               (_K1872419115_ _rest19125_ _hd19123_)))
                           (_else1872218736_))))))
                (_lift-kw-lambda?18080_
                 (lambda (_bind18636_)
                   (let* ((___stx2821828219_ _bind18636_)
                          (_g1863918656_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx2821828219_))))
                     (let ((___kont2822028221_
                            (lambda (_L18692_ _L18693_)
                              (if (gx#identifier? _L18693_)
                                  (gxc#kw-lambda-expr? _L18692_)
                                  '#f)))
                           (___kont2822228223_ (lambda () '#f)))
                       (if (gx#stx-pair? ___stx2821828219_)
                           (let ((_e1864318668_ (gx#stx-e ___stx2821828219_)))
                             (let ((_tl1864518673_ (##cdr _e1864318668_))
                                   (_hd1864418671_ (##car _e1864318668_)))
                               (if (gx#stx-pair? _hd1864418671_)
                                   (let ((_e1864618676_
                                          (gx#stx-e _hd1864418671_)))
                                     (let ((_tl1864818681_
                                            (##cdr _e1864618676_))
                                           (_hd1864718679_
                                            (##car _e1864618676_)))
                                       (if (gx#stx-null? _tl1864818681_)
                                           (if (gx#stx-pair? _tl1864518673_)
                                               (let ((_e1864918684_
                                                      (gx#stx-e
                                                       _tl1864518673_)))
                                                 (let ((_tl1865118689_
                                                        (##cdr _e1864918684_))
                                                       (_hd1865018687_
                                                        (##car _e1864918684_)))
                                                   (if (gx#stx-null?
                                                        _tl1865118689_)
                                                       (___kont2822028221_
                                                        _hd1865018687_
                                                        _hd1864718679_)
                                                       (___kont2822228223_))))
                                               (___kont2822228223_))
                                           (___kont2822228223_))))
                                   (___kont2822228223_))))
                           (___kont2822228223_))))))
                (_lift-kw-lambda-bindings18081_
                 (lambda (_bindings18248_)
                   (let _lp18250_ ((_rest18252_ _bindings18248_)
                                   (_lift118253_ '())
                                   (_lift218254_ '())
                                   (_bind18255_ '()))
                     (let* ((_rest1825618264_ _rest18252_)
                            (_else1825818272_
                             (lambda ()
                               (values (reverse _lift118253_)
                                       (reverse _lift218254_)
                                       (reverse _bind18255_))))
                            (_K1826018624_
                             (lambda (_rest18275_ _hd18276_)
                               (let* ((___stx2824828249_ _hd18276_)
                                      (_g1827918304_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx2824828249_))))
                                 (let ((___kont2825028251_
                                        (lambda (_L18374_ _L18375_)
                                          (let* ((_g1838918442_
                                                  (lambda (_g1839018439_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1839018439_)))
                                                 (_g1838818618_
                                                  (lambda (_g1839018445_)
                                                    (if (gx#stx-pair?
                                                         _g1839018445_)
                                                        (let ((_e1839618447_
                                                               (gx#stx-e
                                                                _g1839018445_)))
                                                          (let ((_hd1839718450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1839618447_))
                        (_tl1839818452_ (##cdr _e1839618447_)))
                    (if (gx#stx-pair? _tl1839818452_)
                        (let ((_e1839918455_ (gx#stx-e _tl1839818452_)))
                          (let ((_hd1840018458_ (##car _e1839918455_))
                                (_tl1840118460_ (##cdr _e1839918455_)))
                            (if (gx#stx-pair? _hd1840018458_)
                                (let ((_e1840218463_
                                       (gx#stx-e _hd1840018458_)))
                                  (let ((_hd1840318466_ (##car _e1840218463_))
                                        (_tl1840418468_ (##cdr _e1840218463_)))
                                    (if (gx#stx-pair? _hd1840318466_)
                                        (let ((_e1840518471_
                                               (gx#stx-e _hd1840318466_)))
                                          (let ((_hd1840618474_
                                                 (##car _e1840518471_))
                                                (_tl1840718476_
                                                 (##cdr _e1840518471_)))
                                            (if (gx#stx-pair? _hd1840618474_)
                                                (let ((_e1840818479_
                                                       (gx#stx-e
                                                        _hd1840618474_)))
                                                  (let ((_hd1840918482_
                                                         (##car _e1840818479_))
                                                        (_tl1841018484_
                                                         (##cdr _e1840818479_)))
                                                    (if (gx#stx-null?
                                                         _tl1841018484_)
                                                        (if (gx#stx-pair?
                                                             _tl1840718476_)
                                                            (let ((_e1841118487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1840718476_)))
                      (let ((_hd1841218490_ (##car _e1841118487_))
                            (_tl1841318492_ (##cdr _e1841118487_)))
                        (if (gx#stx-pair? _hd1841218490_)
                            (let ((_e1841418495_ (gx#stx-e _hd1841218490_)))
                              (let ((_hd1841518498_ (##car _e1841418495_))
                                    (_tl1841618500_ (##cdr _e1841418495_)))
                                (if (gx#stx-pair? _tl1841618500_)
                                    (let ((_e1841718503_
                                           (gx#stx-e _tl1841618500_)))
                                      (let ((_hd1841818506_
                                             (##car _e1841718503_))
                                            (_tl1841918508_
                                             (##cdr _e1841718503_)))
                                        (if (gx#stx-pair? _hd1841818506_)
                                            (let ((_e1842018511_
                                                   (gx#stx-e _hd1841818506_)))
                                              (let ((_hd1842118514_
                                                     (##car _e1842018511_))
                                                    (_tl1842218516_
                                                     (##cdr _e1842018511_)))
                                                (if (gx#stx-pair?
                                                     _hd1842118514_)
                                                    (let ((_e1842318519_
                                                           (gx#stx-e
                                                            _hd1842118514_)))
                                                      (let ((_hd1842418522_
                                                             (##car _e1842318519_))
                                                            (_tl1842518524_
                                                             (##cdr _e1842318519_)))
                                                        (if (gx#stx-pair?
                                                             _hd1842418522_)
                                                            (let ((_e1842618527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1842418522_)))
                      (let ((_hd1842718530_ (##car _e1842618527_))
                            (_tl1842818532_ (##cdr _e1842618527_)))
                        (if (gx#stx-null? _tl1842818532_)
                            (if (gx#stx-pair? _tl1842518524_)
                                (let ((_e1842918535_
                                       (gx#stx-e _tl1842518524_)))
                                  (let ((_hd1843018538_ (##car _e1842918535_))
                                        (_tl1843118540_ (##cdr _e1842918535_)))
                                    (if (gx#stx-null? _tl1843118540_)
                                        (if (gx#stx-null? _tl1842218516_)
                                            (if (gx#stx-pair? _tl1841918508_)
                                                (let ((_e1843218543_
                                                       (gx#stx-e
                                                        _tl1841918508_)))
                                                  (let ((_hd1843318546_
                                                         (##car _e1843218543_))
                                                        (_tl1843418548_
                                                         (##cdr _e1843218543_)))
                                                    (if (gx#stx-null?
                                                         _tl1843418548_)
                                                        (if (gx#stx-null?
                                                             _tl1841318492_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1840418468_)
                        (if (gx#stx-pair? _tl1840118460_)
                            (let ((_e1843518551_ (gx#stx-e _tl1840118460_)))
                              (let ((_hd1843618554_ (##car _e1843518551_))
                                    (_tl1843718556_ (##cdr _e1843518551_)))
                                (if (gx#stx-null? _tl1843718556_)
                                    ((lambda (_L18559_
                                              _L18560_
                                              _L18561_
                                              _L18562_
                                              _L18563_)
                                       (let* ((_get-kws-id18603_
                                               (make-symbol
                                                (gx#stx-e _L18375_)
                                                (gensym '__)))
                                              (_get-kws-id18605_
                                               (gx#core-quote-syntax__1
                                                _get-kws-id18603_
                                                (gx#stx-source _stx18076_)))
                                              (_main-id18607_
                                               (make-symbol
                                                (gx#stx-e _L18375_)
                                                (gensym '__)))
                                              (_main-id18609_
                                               (gx#core-quote-syntax__1
                                                _main-id18607_
                                                (gx#stx-source _stx18076_)))
                                              (_g28519_
                                               (gx#core-bind-runtime!__0
                                                _get-kws-id18605_))
                                              (_g28520_
                                               (gx#core-bind-runtime!__0
                                                _main-id18609_))
                                              (_new-kw-dispatch18613_
                                               (gxc#apply-expression-subst
                                                _L18559_
                                                _L18563_
                                                _get-kws-id18605_))
                                              (_new-get-kws18615_
                                               (gxc#apply-expression-subst
                                                _L18560_
                                                _L18562_
                                                _main-id18609_)))
                                         (begin
                                           (gxc#verbose
                                            '"lift kw-lambda dispatch "
                                            (gxc#identifier-symbol _L18375_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _get-kws-id18605_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _main-id18609_))
                                           (_lp18250_
                                            _rest18275_
                                            (cons (_bind-e__2590425905_
                                                   _main-id18609_
                                                   _L18561_
                                                   '#f)
                                                  _lift118253_)
                                            (cons (_bind-e__2590425905_
                                                   _get-kws-id18605_
                                                   _new-get-kws18615_
                                                   '#f)
                                                  _lift218254_)
                                            (cons (_bind-e__2590425905_
                                                   _L18375_
                                                   _new-kw-dispatch18613_
                                                   '#f)
                                                  _bind18255_)))))
                                     _hd1843618554_
                                     _hd1843318546_
                                     _hd1843018538_
                                     _hd1842718530_
                                     _hd1840918482_)
                                    (_g1838918442_ _g1839018445_))))
                            (_g1838918442_ _g1839018445_))
                        (_g1838918442_ _g1839018445_))
                    (_g1838918442_ _g1839018445_))
                (_g1838918442_ _g1839018445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1838918442_ _g1839018445_))
                                            (_g1838918442_ _g1839018445_))
                                        (_g1838918442_ _g1839018445_))))
                                (_g1838918442_ _g1839018445_))
                            (_g1838918442_ _g1839018445_))))
                    (_g1838918442_ _g1839018445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1838918442_
                                                     _g1839018445_))))
                                            (_g1838918442_ _g1839018445_))))
                                    (_g1838918442_ _g1839018445_))))
                            (_g1838918442_ _g1839018445_))))
                    (_g1838918442_ _g1839018445_))
                (_g1838918442_ _g1839018445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1838918442_
                                                 _g1839018445_))))
                                        (_g1838918442_ _g1839018445_))))
                                (_g1838918442_ _g1839018445_))))
                        (_g1838918442_ _g1839018445_))))
                (_g1838918442_ _g1839018445_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1838818618_ _L18374_))))
                                       (___kont2825228253_
                                        (lambda (_L18325_ _L18326_)
                                          (_lp18250_
                                           _rest18275_
                                           _lift118253_
                                           _lift218254_
                                           (cons (cons _L18326_
                                                       (cons _L18325_ '()))
                                                 _bind18255_)))))
                                   (let ((___match2827528276_
                                          (lambda (_e1828318350_
                                                   _hd1828418353_
                                                   _tl1828518355_
                                                   _e1828618358_
                                                   _hd1828718361_
                                                   _tl1828818363_
                                                   _e1828918366_
                                                   _hd1829018369_
                                                   _tl1829118371_)
                                            (let ((_L18374_ _hd1829018369_)
                                                  (_L18375_ _hd1828718361_))
                                              (if (if (gx#identifier? _L18375_)
                                                      (gxc#kw-lambda-expr?
                                                       _L18374_)
                                                      '#f)
                                                  (___kont2825028251_
                                                   _L18374_
                                                   _L18375_)
                                                  (___kont2825228253_
                                                   _hd1829018369_
                                                   _hd1828418353_))))))
                                     (if (gx#stx-pair? ___stx2824828249_)
                                         (let ((_e1828318350_
                                                (gx#stx-e ___stx2824828249_)))
                                           (let ((_tl1828518355_
                                                  (##cdr _e1828318350_))
                                                 (_hd1828418353_
                                                  (##car _e1828318350_)))
                                             (if (gx#stx-pair? _hd1828418353_)
                                                 (let ((_e1828618358_
                                                        (gx#stx-e
                                                         _hd1828418353_)))
                                                   (let ((_tl1828818363_
                                                          (##cdr _e1828618358_))
                                                         (_hd1828718361_
                                                          (##car _e1828618358_)))
                                                     (if (gx#stx-null?
                                                          _tl1828818363_)
                                                         (if (gx#stx-pair?
                                                              _tl1828518355_)
                                                             (let ((_e1828918366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1828518355_)))
                       (let ((_tl1829118371_ (##cdr _e1828918366_))
                             (_hd1829018369_ (##car _e1828918366_)))
                         (if (gx#stx-null? _tl1829118371_)
                             (___match2827528276_
                              _e1828318350_
                              _hd1828418353_
                              _tl1828518355_
                              _e1828618358_
                              _hd1828718361_
                              _tl1828818363_
                              _e1828918366_
                              _hd1829018369_
                              _tl1829118371_)
                             (_g1827918304_))))
                     (_g1827918304_))
                 (if (gx#stx-pair? _tl1828518355_)
                     (let ((_e1829718317_ (gx#stx-e _tl1828518355_)))
                       (let ((_tl1829918322_ (##cdr _e1829718317_))
                             (_hd1829818320_ (##car _e1829718317_)))
                         (if (gx#stx-null? _tl1829918322_)
                             (___kont2825228253_ _hd1829818320_ _hd1828418353_)
                             (_g1827918304_))))
                     (_g1827918304_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1828518355_)
                                                     (let ((_e1829718317_
                                                            (gx#stx-e
                                                             _tl1828518355_)))
                                                       (let ((_tl1829918322_
                                                              (##cdr _e1829718317_))
                                                             (_hd1829818320_
                                                              (##car _e1829718317_)))
                                                         (if (gx#stx-null?
                                                              _tl1829918322_)
                                                             (___kont2825228253_
                                                              _hd1829818320_
                                                              _hd1828418353_)
                                                             (_g1827918304_))))
                                                     (_g1827918304_)))))
                                         (_g1827918304_))))))))
                       (if (##pair? _rest1825618264_)
                           (let ((_hd1826118627_ (##car _rest1825618264_))
                                 (_tl1826218629_ (##cdr _rest1825618264_)))
                             (let* ((_hd18632_ _hd1826118627_)
                                    (_rest18634_ _tl1826218629_))
                               (_K1826018624_ _rest18634_ _hd18632_)))
                           (_else1825818272_)))))))
        (let* ((___stx2829228293_ _stx18076_)
               (_g1808418110_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2829228293_))))
          (let ((___kont2829428295_
                 (lambda (_L18170_ _L18171_)
                   (call-with-parameters
                    (lambda ()
                      (if (ormap1 _lift-kw-lambda?18080_
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1819918202_
                                                     _g1820018204_)
                                              (cons _g1819918202_
                                                    _g1820018204_))
                                            '()
                                            _L18171_)))
                          (let ((_g28521_
                                 (_lift-kw-lambda-bindings18081_
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1820618209_
                                                     _g1820718211_)
                                              (cons _g1820618209_
                                                    _g1820718211_))
                                            '()
                                            _L18171_)))))
                            (begin
                              (let ((_g28522_
                                     (if (##values? _g28521_)
                                         (##vector-length _g28521_)
                                         1)))
                                (if (not (##fx= _g28522_ 3))
                                    (error "Context expects 3 values"
                                           _g28522_)))
                              (let ((_lift118214_ (##vector-ref _g28521_ 0))
                                    (_lift218215_ (##vector-ref _g28521_ 1))
                                    (_hd18216_ (##vector-ref _g28521_ 2)))
                                (let* ((_expr18218_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _hd18216_
                                                     (cons _L18170_ '())))
                                         _stx18076_))
                                       (_expr18220_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _lift218215_
                                                     (cons _expr18218_ '())))
                                         _stx18076_))
                                       (_expr18222_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _lift118214_
                                                     (cons _expr18220_ '())))
                                         _stx18076_)))
                                  (gxc#lift-top-lambda-let-values%
                                   _expr18222_)))))
                          (let ((_g28523_
                                 (_compile-bindings18079_
                                  (begin
                                    '#!void
                                    (foldr1 (lambda (_g1822418227_
                                                     _g1822518229_)
                                              (cons _g1822418227_
                                                    _g1822518229_))
                                            '()
                                            _L18171_)))))
                            (begin
                              (let ((_g28524_
                                     (if (##values? _g28523_)
                                         (##vector-length _g28523_)
                                         1)))
                                (if (not (##fx= _g28524_ 3))
                                    (error "Context expects 3 values"
                                           _g28524_)))
                              (let ((_lift118232_ (##vector-ref _g28523_ 0))
                                    (_lift218233_ (##vector-ref _g28523_ 1))
                                    (_hd18234_ (##vector-ref _g28523_ 2)))
                                (let* ((_body18236_ (gxc#compile-e _L18170_))
                                       (_expr18238_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _hd18234_
                                                     (cons _body18236_ '())))
                                         _stx18076_))
                                       (_expr18240_
                                        (if (null? _lift218233_)
                                            _expr18238_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift218233_
                                                         (cons _expr18238_
                                                               '())))
                                             _stx18076_)))
                                       (_expr18242_
                                        (if (null? _lift118232_)
                                            _expr18240_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift118232_
                                                         (cons _expr18240_
                                                               '())))
                                             _stx18076_))))
                                  _expr18242_))))))
                    gx#current-expander-context
                    (let ((__obj28497 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj28497)
                        __obj28497)))))
                (___kont2829828299_
                 (lambda () (gxc#xform-let-values% _stx18076_))))
            (let ((___match2831928320_
                   (lambda (_e1808818122_
                            _hd1808918125_
                            _tl1809018127_
                            _e1809118130_
                            _hd1809218133_
                            _tl1809318135_
                            ___splice2829628297_
                            _target1809418138_
                            _tl1809618140_)
                     (letrec ((_loop1809718143_
                               (lambda (_hd1809518146_ _bind1810118148_)
                                 (if (gx#stx-pair? _hd1809518146_)
                                     (let ((_e1809818151_
                                            (gx#stx-e _hd1809518146_)))
                                       (let ((_lp-tl1810018156_
                                              (##cdr _e1809818151_))
                                             (_lp-hd1809918154_
                                              (##car _e1809818151_)))
                                         (_loop1809718143_
                                          _lp-tl1810018156_
                                          (cons _lp-hd1809918154_
                                                _bind1810118148_))))
                                     (let ((_bind1810218159_
                                            (reverse _bind1810118148_)))
                                       (if (gx#stx-pair? _tl1809318135_)
                                           (let ((_e1810318162_
                                                  (gx#stx-e _tl1809318135_)))
                                             (let ((_tl1810518167_
                                                    (##cdr _e1810318162_))
                                                   (_hd1810418165_
                                                    (##car _e1810318162_)))
                                               (if (gx#stx-null?
                                                    _tl1810518167_)
                                                   (let ((_L18170_
                                                          _hd1810418165_)
                                                         (_L18171_
                                                          _bind1810218159_))
                                                     (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr1 (lambda (_g1819118194_ _g1819218196_)
                                     (cons _g1819118194_ _g1819218196_))
                                   '()
                                   _L18171_)))
                 (___kont2829428295_ _L18170_ _L18171_)
                 (___kont2829828299_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont2829828299_))))
                                           (___kont2829828299_)))))))
                       (_loop1809718143_ _target1809418138_ '())))))
              (if (gx#stx-pair? ___stx2829228293_)
                  (let ((_e1808818122_ (gx#stx-e ___stx2829228293_)))
                    (let ((_tl1809018127_ (##cdr _e1808818122_))
                          (_hd1808918125_ (##car _e1808818122_)))
                      (if (gx#stx-pair? _tl1809018127_)
                          (let ((_e1809118130_ (gx#stx-e _tl1809018127_)))
                            (let ((_tl1809318135_ (##cdr _e1809118130_))
                                  (_hd1809218133_ (##car _e1809118130_)))
                              (if (gx#stx-pair/null? _hd1809218133_)
                                  (let ((___splice2829628297_
                                         (gx#syntax-split-splice
                                          _hd1809218133_
                                          '0)))
                                    (let ((_tl1809618140_
                                           (##vector-ref
                                            ___splice2829628297_
                                            '1))
                                          (_target1809418138_
                                           (##vector-ref
                                            ___splice2829628297_
                                            '0)))
                                      (if (gx#stx-null? _tl1809618140_)
                                          (___match2831928320_
                                           _e1808818122_
                                           _hd1808918125_
                                           _tl1809018127_
                                           _e1809118130_
                                           _hd1809218133_
                                           _tl1809318135_
                                           ___splice2829628297_
                                           _target1809418138_
                                           _tl1809618140_)
                                          (___kont2829828299_))))
                                  (___kont2829828299_))))
                          (___kont2829828299_))))
                  (___kont2829828299_))))))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx17220_)
      (letrec* ((_bind-e__2590925910_
                 (lambda (_id18060_ _expr18061_ _compile?18062_)
                   (cons (cons _id18060_ '())
                         (cons (if _compile?18062_
                                   (gxc#compile-e _expr18061_)
                                   _expr18061_)
                               '()))))
                (_bind-e__0__2591125912_
                 (lambda (_id18067_ _expr18068_)
                   (let ((_compile?18070_ '#t))
                     (_bind-e__2590925910_
                      _id18067_
                      _expr18068_
                      _compile?18070_))))
                (_bind-e17222_
                 (lambda _g28526_
                   (let ((_g28525_ (length _g28526_)))
                     (cond ((##fx= _g28525_ 2)
                            (apply _bind-e__0__2591125912_ _g28526_))
                           ((##fx= _g28525_ 3)
                            (apply _bind-e__2590925910_ _g28526_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g28526_))))))
                (_compile-bindings17223_
                 (lambda (_rest17358_)
                   (let _lp17360_ ((_rest17362_ _rest17358_) (_bind17363_ '()))
                     (let* ((_rest1736417372_ _rest17362_)
                            (_else1736617380_
                             (lambda () (reverse _bind17363_)))
                            (_K1736818047_
                             (lambda (_rest17383_ _hd17384_)
                               (let* ((___stx2834228343_ _hd17384_)
                                      (_g1738917436_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx2834228343_))))
                                 (let ((___kont2834428345_
                                        (lambda (_L17954_ _L17955_)
                                          (let* ((___stx2832228323_ _L17954_)
                                                 (_g1797017984_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx2832228323_))))
                                            (let ((___kont2832428325_
                                                   (lambda (_L18032_)
                                                     (_lp17360_
                                                      _rest17383_
                                                      (cons (_bind-e__2590925910_
                                                             _L17955_
                                                             _L17954_
                                                             '#f)
                                                            _bind17363_))))
                                                  (___kont2832628327_
                                                   (lambda (_L17997_)
                                                     (let ((_g28527_
                                                            (gxc#lift-case-lambda-clauses__%
                                                             _stx17220_
                                                             _L17955_
                                                             _L17997_
                                                             '#t)))
                                                       (begin
                                                         (let ((_g28528_
                                                                (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g28527_)
                            (##vector-length _g28527_)
                            1)))
                   (if (not (##fx= _g28528_ 3))
                       (error "Context expects 3 values" _g28528_)))
                 (let ((_ids18007_ (##vector-ref _g28527_ 0))
                       (_impls18008_ (##vector-ref _g28527_ 1))
                       (_clauses18009_ (##vector-ref _g28527_ 2)))
                   (let* ((_g28529_
                           (for-each gx#core-bind-runtime! _ids18007_))
                          (_xbind18012_
                           (map _bind-e17222_ _ids18007_ _impls18008_))
                          (_expr*18014_
                           (gxc#xform-wrap-source
                            (cons '%#case-lambda _clauses18009_)
                            (gx#datum->syntax__0 '#f 'case-lambda-expr)))
                          (_bind*18016_
                           (_bind-e__2590925910_ _L17955_ _expr*18014_ '#f)))
                     (begin
                       (gxc#verbose
                        '"lift case-lambda clauses "
                        (gxc#identifier-symbol _L17955_)
                        '" => "
                        (map gxc#identifier-symbol _ids18007_))
                       (_lp17360_
                        _rest17383_
                        (cons _bind*18016_
                              (foldl1 cons _bind17363_ _xbind18012_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((___match2833328334_
                                                     (lambda (_e1797318024_
                                                              _hd1797418027_
                                                              _tl1797518029_)
                                                       (let ((_L18032_
                                                              _tl1797518029_))
                                                         (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L18032_)
                     (___kont2832428325_ _L18032_)
                     (___kont2832628327_ _tl1797518029_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx2832228323_)
                                                    (let ((_e1797318024_
                                                           (gx#stx-e
                                                            ___stx2832228323_)))
                                                      (let ((_tl1797518029_
                                                             (##cdr _e1797318024_))
                                                            (_hd1797418027_
                                                             (##car _e1797318024_)))
                                                        (___match2833328334_
                                                         _e1797318024_
                                                         _hd1797418027_
                                                         _tl1797518029_)))
                                                    (_g1797017984_)))))))
                                       (___kont2834628347_
                                        (lambda (_L17782_ _L17783_)
                                          (let* ((_g1779717827_
                                                  (lambda (_g1779817824_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1779817824_)))
                                                 (_g1779617922_
                                                  (lambda (_g1779817830_)
                                                    (if (gx#stx-pair?
                                                         _g1779817830_)
                                                        (let ((_e1780217832_
                                                               (gx#stx-e
                                                                _g1779817830_)))
                                                          (let ((_hd1780317835_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1780217832_))
                        (_tl1780417837_ (##cdr _e1780217832_)))
                    (if (gx#stx-pair? _tl1780417837_)
                        (let ((_e1780517840_ (gx#stx-e _tl1780417837_)))
                          (let ((_hd1780617843_ (##car _e1780517840_))
                                (_tl1780717845_ (##cdr _e1780517840_)))
                            (if (gx#stx-pair? _hd1780617843_)
                                (let ((_e1780817848_
                                       (gx#stx-e _hd1780617843_)))
                                  (let ((_hd1780917851_ (##car _e1780817848_))
                                        (_tl1781017853_ (##cdr _e1780817848_)))
                                    (if (gx#stx-pair? _hd1780917851_)
                                        (let ((_e1781117856_
                                               (gx#stx-e _hd1780917851_)))
                                          (let ((_hd1781217859_
                                                 (##car _e1781117856_))
                                                (_tl1781317861_
                                                 (##cdr _e1781117856_)))
                                            (if (gx#stx-pair? _hd1781217859_)
                                                (let ((_e1781417864_
                                                       (gx#stx-e
                                                        _hd1781217859_)))
                                                  (let ((_hd1781517867_
                                                         (##car _e1781417864_))
                                                        (_tl1781617869_
                                                         (##cdr _e1781417864_)))
                                                    (if (gx#stx-null?
                                                         _tl1781617869_)
                                                        (if (gx#stx-pair?
                                                             _tl1781317861_)
                                                            (let ((_e1781717872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1781317861_)))
                      (let ((_hd1781817875_ (##car _e1781717872_))
                            (_tl1781917877_ (##cdr _e1781717872_)))
                        (if (gx#stx-null? _tl1781917877_)
                            (if (gx#stx-null? _tl1781017853_)
                                (if (gx#stx-pair? _tl1780717845_)
                                    (let ((_e1782017880_
                                           (gx#stx-e _tl1780717845_)))
                                      (let ((_hd1782117883_
                                             (##car _e1782017880_))
                                            (_tl1782217885_
                                             (##cdr _e1782017880_)))
                                        (if (gx#stx-null? _tl1782217885_)
                                            ((lambda (_L17888_
                                                      _L17889_
                                                      _L17890_)
                                               (let* ((_lambda-id17914_
                                                       (make-symbol
                                                        (gx#stx-e _L17783_)
                                                        (gensym '__)))
                                                      (_lambda-id17916_
                                                       (gx#core-quote-syntax__1
                                                        _lambda-id17914_
                                                        (gx#stx-source
                                                         _stx17220_)))
                                                      (_g28530_
                                                       (gx#core-bind-runtime!__0
                                                        _lambda-id17916_))
                                                      (_new-case-lambda-expr17919_
                                                       (gxc#apply-expression-subst
                                                        _L17888_
                                                        _L17890_
                                                        _lambda-id17916_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"lift opt-lambda dispatch "
                                                    (gxc#identifier-symbol
                                                     _L17783_)
                                                    '" => "
                                                    (gxc#identifier-symbol
                                                     _lambda-id17916_))
                                                   (_lp17360_
                                                    (cons (_bind-e__2590925910_
                                                           _L17783_
                                                           _new-case-lambda-expr17919_
                                                           '#f)
                                                          _rest17383_)
                                                    (cons (_bind-e__0__2591125912_
                                                           _lambda-id17916_
                                                           _L17889_)
                                                          _bind17363_)))))
                                             _hd1782117883_
                                             _hd1781817875_
                                             _hd1781517867_)
                                            (_g1779717827_ _g1779817830_))))
                                    (_g1779717827_ _g1779817830_))
                                (_g1779717827_ _g1779817830_))
                            (_g1779717827_ _g1779817830_))))
                    (_g1779717827_ _g1779817830_))
                (_g1779717827_ _g1779817830_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1779717827_
                                                 _g1779817830_))))
                                        (_g1779717827_ _g1779817830_))))
                                (_g1779717827_ _g1779817830_))))
                        (_g1779717827_ _g1779817830_))))
                (_g1779717827_ _g1779817830_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1779617922_ _L17782_))))
                                       (___kont2834828349_
                                        (lambda (_L17506_ _L17507_)
                                          (let* ((_g1752117574_
                                                  (lambda (_g1752217571_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1752217571_)))
                                                 (_g1752017750_
                                                  (lambda (_g1752217577_)
                                                    (if (gx#stx-pair?
                                                         _g1752217577_)
                                                        (let ((_e1752817579_
                                                               (gx#stx-e
                                                                _g1752217577_)))
                                                          (let ((_hd1752917582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1752817579_))
                        (_tl1753017584_ (##cdr _e1752817579_)))
                    (if (gx#stx-pair? _tl1753017584_)
                        (let ((_e1753117587_ (gx#stx-e _tl1753017584_)))
                          (let ((_hd1753217590_ (##car _e1753117587_))
                                (_tl1753317592_ (##cdr _e1753117587_)))
                            (if (gx#stx-pair? _hd1753217590_)
                                (let ((_e1753417595_
                                       (gx#stx-e _hd1753217590_)))
                                  (let ((_hd1753517598_ (##car _e1753417595_))
                                        (_tl1753617600_ (##cdr _e1753417595_)))
                                    (if (gx#stx-pair? _hd1753517598_)
                                        (let ((_e1753717603_
                                               (gx#stx-e _hd1753517598_)))
                                          (let ((_hd1753817606_
                                                 (##car _e1753717603_))
                                                (_tl1753917608_
                                                 (##cdr _e1753717603_)))
                                            (if (gx#stx-pair? _hd1753817606_)
                                                (let ((_e1754017611_
                                                       (gx#stx-e
                                                        _hd1753817606_)))
                                                  (let ((_hd1754117614_
                                                         (##car _e1754017611_))
                                                        (_tl1754217616_
                                                         (##cdr _e1754017611_)))
                                                    (if (gx#stx-null?
                                                         _tl1754217616_)
                                                        (if (gx#stx-pair?
                                                             _tl1753917608_)
                                                            (let ((_e1754317619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1753917608_)))
                      (let ((_hd1754417622_ (##car _e1754317619_))
                            (_tl1754517624_ (##cdr _e1754317619_)))
                        (if (gx#stx-pair? _hd1754417622_)
                            (let ((_e1754617627_ (gx#stx-e _hd1754417622_)))
                              (let ((_hd1754717630_ (##car _e1754617627_))
                                    (_tl1754817632_ (##cdr _e1754617627_)))
                                (if (gx#stx-pair? _tl1754817632_)
                                    (let ((_e1754917635_
                                           (gx#stx-e _tl1754817632_)))
                                      (let ((_hd1755017638_
                                             (##car _e1754917635_))
                                            (_tl1755117640_
                                             (##cdr _e1754917635_)))
                                        (if (gx#stx-pair? _hd1755017638_)
                                            (let ((_e1755217643_
                                                   (gx#stx-e _hd1755017638_)))
                                              (let ((_hd1755317646_
                                                     (##car _e1755217643_))
                                                    (_tl1755417648_
                                                     (##cdr _e1755217643_)))
                                                (if (gx#stx-pair?
                                                     _hd1755317646_)
                                                    (let ((_e1755517651_
                                                           (gx#stx-e
                                                            _hd1755317646_)))
                                                      (let ((_hd1755617654_
                                                             (##car _e1755517651_))
                                                            (_tl1755717656_
                                                             (##cdr _e1755517651_)))
                                                        (if (gx#stx-pair?
                                                             _hd1755617654_)
                                                            (let ((_e1755817659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1755617654_)))
                      (let ((_hd1755917662_ (##car _e1755817659_))
                            (_tl1756017664_ (##cdr _e1755817659_)))
                        (if (gx#stx-null? _tl1756017664_)
                            (if (gx#stx-pair? _tl1755717656_)
                                (let ((_e1756117667_
                                       (gx#stx-e _tl1755717656_)))
                                  (let ((_hd1756217670_ (##car _e1756117667_))
                                        (_tl1756317672_ (##cdr _e1756117667_)))
                                    (if (gx#stx-null? _tl1756317672_)
                                        (if (gx#stx-null? _tl1755417648_)
                                            (if (gx#stx-pair? _tl1755117640_)
                                                (let ((_e1756417675_
                                                       (gx#stx-e
                                                        _tl1755117640_)))
                                                  (let ((_hd1756517678_
                                                         (##car _e1756417675_))
                                                        (_tl1756617680_
                                                         (##cdr _e1756417675_)))
                                                    (if (gx#stx-null?
                                                         _tl1756617680_)
                                                        (if (gx#stx-null?
                                                             _tl1754517624_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1753617600_)
                        (if (gx#stx-pair? _tl1753317592_)
                            (let ((_e1756717683_ (gx#stx-e _tl1753317592_)))
                              (let ((_hd1756817686_ (##car _e1756717683_))
                                    (_tl1756917688_ (##cdr _e1756717683_)))
                                (if (gx#stx-null? _tl1756917688_)
                                    ((lambda (_L17691_
                                              _L17692_
                                              _L17693_
                                              _L17694_
                                              _L17695_)
                                       (let* ((_get-kws-id17735_
                                               (make-symbol
                                                (gx#stx-e _L17507_)
                                                (gensym '__)))
                                              (_get-kws-id17737_
                                               (gx#core-quote-syntax__1
                                                _get-kws-id17735_
                                                (gx#stx-source _stx17220_)))
                                              (_main-id17739_
                                               (make-symbol
                                                (gx#stx-e _L17507_)
                                                (gensym '__)))
                                              (_main-id17741_
                                               (gx#core-quote-syntax__1
                                                _main-id17739_
                                                (gx#stx-source _stx17220_)))
                                              (_g28531_
                                               (gx#core-bind-runtime!__0
                                                _get-kws-id17737_))
                                              (_g28532_
                                               (gx#core-bind-runtime!__0
                                                _main-id17741_))
                                              (_new-kw-dispatch17745_
                                               (gxc#apply-expression-subst
                                                _L17691_
                                                _L17695_
                                                _get-kws-id17737_))
                                              (_new-get-kws17747_
                                               (gxc#apply-expression-subst
                                                _L17692_
                                                _L17694_
                                                _main-id17741_)))
                                         (begin
                                           (gxc#verbose
                                            '"lift kw-lambda dispatch "
                                            (gxc#identifier-symbol _L17507_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _get-kws-id17737_)
                                            '" => "
                                            (gxc#identifier-symbol
                                             _main-id17741_))
                                           (_lp17360_
                                            (cons (_bind-e__2590925910_
                                                   _main-id17741_
                                                   _L17693_
                                                   '#f)
                                                  (cons (_bind-e__2590925910_
                                                         _get-kws-id17737_
                                                         _new-get-kws17747_
                                                         '#f)
                                                        (cons (_bind-e__2590925910_
                                                               _L17507_
                                                               _new-kw-dispatch17745_
                                                               '#f)
                                                              _rest17383_)))
                                            _bind17363_))))
                                     _hd1756817686_
                                     _hd1756517678_
                                     _hd1756217670_
                                     _hd1755917662_
                                     _hd1754117614_)
                                    (_g1752117574_ _g1752217577_))))
                            (_g1752117574_ _g1752217577_))
                        (_g1752117574_ _g1752217577_))
                    (_g1752117574_ _g1752217577_))
                (_g1752117574_ _g1752217577_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1752117574_ _g1752217577_))
                                            (_g1752117574_ _g1752217577_))
                                        (_g1752117574_ _g1752217577_))))
                                (_g1752117574_ _g1752217577_))
                            (_g1752117574_ _g1752217577_))))
                    (_g1752117574_ _g1752217577_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1752117574_
                                                     _g1752217577_))))
                                            (_g1752117574_ _g1752217577_))))
                                    (_g1752117574_ _g1752217577_))))
                            (_g1752117574_ _g1752217577_))))
                    (_g1752117574_ _g1752217577_))
                (_g1752117574_ _g1752217577_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1752117574_
                                                 _g1752217577_))))
                                        (_g1752117574_ _g1752217577_))))
                                (_g1752117574_ _g1752217577_))))
                        (_g1752117574_ _g1752217577_))))
                (_g1752117574_ _g1752217577_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1752017750_ _L17506_))))
                                       (___kont2835028351_
                                        (lambda (_L17457_ _L17458_)
                                          (_lp17360_
                                           _rest17383_
                                           (cons (cons _L17458_
                                                       (cons (gxc#compile-e
                                                              _L17457_)
                                                             '()))
                                                 _bind17363_)))))
                                   (let* ((___match2841728418_
                                           (lambda (_e1741517482_
                                                    _hd1741617485_
                                                    _tl1741717487_
                                                    _e1741817490_
                                                    _hd1741917493_
                                                    _tl1742017495_
                                                    _e1742117498_
                                                    _hd1742217501_
                                                    _tl1742317503_)
                                             (let ((_L17506_ _hd1742217501_)
                                                   (_L17507_ _hd1741917493_))
                                               (if (if (gx#identifier?
                                                        _L17507_)
                                                       (gxc#kw-lambda-expr?
                                                        _L17506_)
                                                       '#f)
                                                   (___kont2834828349_
                                                    _L17506_
                                                    _L17507_)
                                                   (___kont2835028351_
                                                    _hd1742217501_
                                                    _hd1741617485_)))))
                                          (___match2839528396_
                                           (lambda (_e1740417758_
                                                    _hd1740517761_
                                                    _tl1740617763_
                                                    _e1740717766_
                                                    _hd1740817769_
                                                    _tl1740917771_
                                                    _e1741017774_
                                                    _hd1741117777_
                                                    _tl1741217779_)
                                             (let ((_L17782_ _hd1741117777_)
                                                   (_L17783_ _hd1740817769_))
                                               (if (if (gx#identifier?
                                                        _L17783_)
                                                       (gxc#opt-lambda-expr?
                                                        _L17782_)
                                                       '#f)
                                                   (___kont2834628347_
                                                    _L17782_
                                                    _L17783_)
                                                   (___match2841728418_
                                                    _e1740417758_
                                                    _hd1740517761_
                                                    _tl1740617763_
                                                    _e1740717766_
                                                    _hd1740817769_
                                                    _tl1740917771_
                                                    _e1741017774_
                                                    _hd1741117777_
                                                    _tl1741217779_)))))
                                          (___match2837328374_
                                           (lambda (_e1739317930_
                                                    _hd1739417933_
                                                    _tl1739517935_
                                                    _e1739617938_
                                                    _hd1739717941_
                                                    _tl1739817943_
                                                    _e1739917946_
                                                    _hd1740017949_
                                                    _tl1740117951_)
                                             (let ((_L17954_ _hd1740017949_)
                                                   (_L17955_ _hd1739717941_))
                                               (if (if (gx#identifier?
                                                        _L17955_)
                                                       (gxc#case-lambda-expr?
                                                        _L17954_)
                                                       '#f)
                                                   (___kont2834428345_
                                                    _L17954_
                                                    _L17955_)
                                                   (___match2839528396_
                                                    _e1739317930_
                                                    _hd1739417933_
                                                    _tl1739517935_
                                                    _e1739617938_
                                                    _hd1739717941_
                                                    _tl1739817943_
                                                    _e1739917946_
                                                    _hd1740017949_
                                                    _tl1740117951_))))))
                                     (if (gx#stx-pair? ___stx2834228343_)
                                         (let ((_e1739317930_
                                                (gx#stx-e ___stx2834228343_)))
                                           (let ((_tl1739517935_
                                                  (##cdr _e1739317930_))
                                                 (_hd1739417933_
                                                  (##car _e1739317930_)))
                                             (if (gx#stx-pair? _hd1739417933_)
                                                 (let ((_e1739617938_
                                                        (gx#stx-e
                                                         _hd1739417933_)))
                                                   (let ((_tl1739817943_
                                                          (##cdr _e1739617938_))
                                                         (_hd1739717941_
                                                          (##car _e1739617938_)))
                                                     (if (gx#stx-null?
                                                          _tl1739817943_)
                                                         (if (gx#stx-pair?
                                                              _tl1739517935_)
                                                             (let ((_e1739917946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1739517935_)))
                       (let ((_tl1740117951_ (##cdr _e1739917946_))
                             (_hd1740017949_ (##car _e1739917946_)))
                         (if (gx#stx-null? _tl1740117951_)
                             (___match2837328374_
                              _e1739317930_
                              _hd1739417933_
                              _tl1739517935_
                              _e1739617938_
                              _hd1739717941_
                              _tl1739817943_
                              _e1739917946_
                              _hd1740017949_
                              _tl1740117951_)
                             (_g1738917436_))))
                     (_g1738917436_))
                 (if (gx#stx-pair? _tl1739517935_)
                     (let ((_e1742917449_ (gx#stx-e _tl1739517935_)))
                       (let ((_tl1743117454_ (##cdr _e1742917449_))
                             (_hd1743017452_ (##car _e1742917449_)))
                         (if (gx#stx-null? _tl1743117454_)
                             (___kont2835028351_ _hd1743017452_ _hd1739417933_)
                             (_g1738917436_))))
                     (_g1738917436_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1739517935_)
                                                     (let ((_e1742917449_
                                                            (gx#stx-e
                                                             _tl1739517935_)))
                                                       (let ((_tl1743117454_
                                                              (##cdr _e1742917449_))
                                                             (_hd1743017452_
                                                              (##car _e1742917449_)))
                                                         (if (gx#stx-null?
                                                              _tl1743117454_)
                                                             (___kont2835028351_
                                                              _hd1743017452_
                                                              _hd1739417933_)
                                                             (_g1738917436_))))
                                                     (_g1738917436_)))))
                                         (_g1738917436_))))))))
                       (if (##pair? _rest1736417372_)
                           (let ((_hd1736918050_ (##car _rest1736417372_))
                                 (_tl1737018052_ (##cdr _rest1736417372_)))
                             (let* ((_hd18055_ _hd1736918050_)
                                    (_rest18057_ _tl1737018052_))
                               (_K1736818047_ _rest18057_ _hd18055_)))
                           (_else1736617380_)))))))
        (let* ((___stx2843428435_ _stx17220_)
               (_g1722617253_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2843428435_))))
          (let ((___kont2843628437_
                 (lambda (_L17313_ _L17314_ _L17315_)
                   (call-with-parameters
                    (lambda ()
                      (let ((_hd17352_
                             (_compile-bindings17223_
                              (begin
                                '#!void
                                (foldr1 (lambda (_g1734417347_ _g1734517349_)
                                          (cons _g1734417347_ _g1734517349_))
                                        '()
                                        _L17314_))))
                            (_body17353_ (gxc#compile-e _L17313_)))
                        (gxc#xform-wrap-source
                         (cons _L17315_
                               (cons _hd17352_ (cons _body17353_ '())))
                         _stx17220_)))
                    gx#current-expander-context
                    (let ((__obj28498 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj28498)
                        __obj28498)))))
                (___kont2844028441_
                 (lambda () (gxc#xform-let-values% _stx17220_))))
            (let ((___match2846128462_
                   (lambda (_e1723117265_
                            _hd1723217268_
                            _tl1723317270_
                            _e1723417273_
                            _hd1723517276_
                            _tl1723617278_
                            ___splice2843828439_
                            _target1723717281_
                            _tl1723917283_)
                     (letrec ((_loop1724017286_
                               (lambda (_hd1723817289_ _bind1724417291_)
                                 (if (gx#stx-pair? _hd1723817289_)
                                     (let ((_e1724117294_
                                            (gx#stx-e _hd1723817289_)))
                                       (let ((_lp-tl1724317299_
                                              (##cdr _e1724117294_))
                                             (_lp-hd1724217297_
                                              (##car _e1724117294_)))
                                         (_loop1724017286_
                                          _lp-tl1724317299_
                                          (cons _lp-hd1724217297_
                                                _bind1724417291_))))
                                     (let ((_bind1724517302_
                                            (reverse _bind1724417291_)))
                                       (if (gx#stx-pair? _tl1723617278_)
                                           (let ((_e1724617305_
                                                  (gx#stx-e _tl1723617278_)))
                                             (let ((_tl1724817310_
                                                    (##cdr _e1724617305_))
                                                   (_hd1724717308_
                                                    (##car _e1724617305_)))
                                               (if (gx#stx-null?
                                                    _tl1724817310_)
                                                   (let ((_L17313_
                                                          _hd1724717308_)
                                                         (_L17314_
                                                          _bind1724517302_)
                                                         (_L17315_
                                                          _hd1723217268_))
                                                     (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (begin
                           '#!void
                           (foldr1 (lambda (_g1733617339_ _g1733717341_)
                                     (cons _g1733617339_ _g1733717341_))
                                   '()
                                   _L17314_)))
                 (___kont2843628437_ _L17313_ _L17314_ _L17315_)
                 (___kont2844028441_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont2844028441_))))
                                           (___kont2844028441_)))))))
                       (_loop1724017286_ _target1723717281_ '())))))
              (if (gx#stx-pair? ___stx2843428435_)
                  (let ((_e1723117265_ (gx#stx-e ___stx2843428435_)))
                    (let ((_tl1723317270_ (##cdr _e1723117265_))
                          (_hd1723217268_ (##car _e1723117265_)))
                      (if (gx#stx-pair? _tl1723317270_)
                          (let ((_e1723417273_ (gx#stx-e _tl1723317270_)))
                            (let ((_tl1723617278_ (##cdr _e1723417273_))
                                  (_hd1723517276_ (##car _e1723417273_)))
                              (if (gx#stx-pair/null? _hd1723517276_)
                                  (let ((___splice2843828439_
                                         (gx#syntax-split-splice
                                          _hd1723517276_
                                          '0)))
                                    (let ((_tl1723917283_
                                           (##vector-ref
                                            ___splice2843828439_
                                            '1))
                                          (_target1723717281_
                                           (##vector-ref
                                            ___splice2843828439_
                                            '0)))
                                      (if (gx#stx-null? _tl1723917283_)
                                          (___match2846128462_
                                           _e1723117265_
                                           _hd1723217268_
                                           _tl1723317270_
                                           _e1723417273_
                                           _hd1723517276_
                                           _tl1723617278_
                                           ___splice2843828439_
                                           _target1723717281_
                                           _tl1723917283_)
                                          (___kont2844028441_))))
                                  (___kont2844028441_))))
                          (___kont2844028441_))))
                  (___kont2844028441_))))))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind17138_)
      (let* ((___stx2846428465_ _bind17138_)
             (_g1714117158_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2846428465_))))
        (let ((___kont2846628467_
               (lambda (_L17194_ _L17195_)
                 (if (gx#identifier? _L17195_)
                     (let ((_$e17211_ (gxc#case-lambda-expr? _L17194_)))
                       (if _$e17211_
                           _$e17211_
                           (let ((_$e17214_ (gxc#opt-lambda-expr? _L17194_)))
                             (if _$e17214_
                                 _$e17214_
                                 (gxc#kw-lambda-expr? _L17194_)))))
                     '#f)))
              (___kont2846828469_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2846428465_)
              (let ((_e1714517170_ (gx#stx-e ___stx2846428465_)))
                (let ((_tl1714717175_ (##cdr _e1714517170_))
                      (_hd1714617173_ (##car _e1714517170_)))
                  (if (gx#stx-pair? _hd1714617173_)
                      (let ((_e1714817178_ (gx#stx-e _hd1714617173_)))
                        (let ((_tl1715017183_ (##cdr _e1714817178_))
                              (_hd1714917181_ (##car _e1714817178_)))
                          (if (gx#stx-null? _tl1715017183_)
                              (if (gx#stx-pair? _tl1714717175_)
                                  (let ((_e1715117186_
                                         (gx#stx-e _tl1714717175_)))
                                    (let ((_tl1715317191_
                                           (##cdr _e1715117186_))
                                          (_hd1715217189_
                                           (##car _e1715117186_)))
                                      (if (gx#stx-null? _tl1715317191_)
                                          (___kont2846628467_
                                           _hd1715217189_
                                           _hd1714917181_)
                                          (___kont2846828469_))))
                                  (___kont2846828469_))
                              (___kont2846828469_))))
                      (___kont2846828469_))))
              (___kont2846828469_)))))))
