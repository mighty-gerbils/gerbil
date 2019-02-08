(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl27298_ (make-table 'test: eq?)))
         (hash-copy! _tbl27298_ (force gxc#&void))
         (table-set! _tbl27298_ '%#begin gxc#collect-begin%)
         (table-set! _tbl27298_ '%#begin-syntax gxc#collect-begin-syntax%)
         (table-set! _tbl27298_ '%#module gxc#collect-module%)
         (table-set!
          _tbl27298_
          '%#define-values
          gxc#collect-type-define-values%)
         (table-set!
          _tbl27298_
          '%#begin-annotation
          gxc#collect-begin-annotation%)
         (table-set! _tbl27298_ '%#lambda gxc#collect-body-lambda%)
         (table-set! _tbl27298_ '%#case-lambda gxc#collect-body-case-lambda%)
         (table-set! _tbl27298_ '%#let-values gxc#collect-type-let-values%)
         (table-set! _tbl27298_ '%#letrec-values gxc#collect-type-let-values%)
         (table-set! _tbl27298_ '%#letrec*-values gxc#collect-type-let-values%)
         (table-set! _tbl27298_ '%#call gxc#collect-type-call%)
         (table-set! _tbl27298_ '%#if gxc#collect-operands)
         (table-set! _tbl27298_ '%#set! gxc#collect-body-setq%)
         _tbl27298_))))
  (define gxc#apply-collect-type-info
    (lambda (_stx27291_ . _args27293_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx27291_ _args27293_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl27288_ (make-table 'test: eq?)))
         (hash-copy! _tbl27288_ (force gxc#&false))
         (table-set! _tbl27288_ '%#begin gxc#basic-expression-type-begin%)
         (table-set!
          _tbl27288_
          '%#begin-annotation
          gxc#basic-expression-type-begin-annotation%)
         (table-set! _tbl27288_ '%#lambda gxc#basic-expression-type-lambda%)
         (table-set!
          _tbl27288_
          '%#case-lambda
          gxc#basic-expression-type-case-lambda%)
         (table-set!
          _tbl27288_
          '%#let-values
          gxc#basic-expression-type-let-values%)
         (table-set!
          _tbl27288_
          '%#letrec-values
          gxc#basic-expression-type-let-values%)
         (table-set!
          _tbl27288_
          '%#letrec*-values
          gxc#basic-expression-type-let-values%)
         (table-set! _tbl27288_ '%#call gxc#basic-expression-type-call%)
         (table-set! _tbl27288_ '%#ref gxc#basic-expression-type-ref%)
         _tbl27288_))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx27281_ . _args27283_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx27281_ _args27283_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl27278_ (make-table 'test: eq?)))
         (hash-copy! _tbl27278_ (force gxc#&basic-xform))
         (table-set!
          _tbl27278_
          '%#define-values
          gxc#lift-top-lambda-define-values%)
         (table-set! _tbl27278_ '%#let-values gxc#lift-top-lambda-let-values%)
         (table-set!
          _tbl27278_
          '%#letrec-values
          gxc#lift-top-lambda-letrec-values%)
         (table-set!
          _tbl27278_
          '%#letrec*-values
          gxc#lift-top-lambda-letrec-values%)
         _tbl27278_))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx27271_ . _args27273_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx27271_ _args27273_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#collect-type-define-values%
    (lambda (_stx27127_)
      (let* ((___stx2731127312_ _stx27127_)
             (_g2713027161_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2731127312_))))
        (let ((___kont2731327314_
               (lambda (_L27243_ _L27244_)
                 (let ((_sym27260_ (gxc#identifier-symbol _L27244_)))
                   (if (table-ref
                        (gxc#current-compile-mutators)
                        _sym27260_
                        '#f)
                       (gxc#verbose
                        '"skipping type declaration for mutable binding "
                        _sym27260_)
                       (let ((_type2726127263_
                              (gxc#apply-basic-expression-type _L27243_)))
                         (if _type2726127263_
                             (let ((_type27266_ _type2726127263_))
                               (gxc#optimizer-declare-type!__0
                                _sym27260_
                                _type27266_))
                             '#f)))
                   (gxc#compile-e _L27243_))))
              (___kont2731527316_
               (lambda (_L27190_ _L27191_) (gxc#compile-e _L27190_))))
          (let ((___match2734427345_
                 (lambda (_e2713427211_
                          _hd2713527214_
                          _tl2713627216_
                          _e2713727219_
                          _hd2713827222_
                          _tl2713927224_
                          _e2714027227_
                          _hd2714127230_
                          _tl2714227232_
                          _e2714327235_
                          _hd2714427238_
                          _tl2714527240_)
                   (let ((_L27243_ _hd2714427238_) (_L27244_ _hd2714127230_))
                     (if (gx#identifier? _L27244_)
                         (___kont2731327314_ _L27243_ _L27244_)
                         (___kont2731527316_
                          _hd2714427238_
                          _hd2713827222_))))))
            (if (gx#stx-pair? ___stx2731127312_)
                (let ((_e2713427211_ (gx#stx-e ___stx2731127312_)))
                  (let ((_tl2713627216_ (##cdr _e2713427211_))
                        (_hd2713527214_ (##car _e2713427211_)))
                    (if (gx#stx-pair? _tl2713627216_)
                        (let ((_e2713727219_ (gx#stx-e _tl2713627216_)))
                          (let ((_tl2713927224_ (##cdr _e2713727219_))
                                (_hd2713827222_ (##car _e2713727219_)))
                            (if (gx#stx-pair? _hd2713827222_)
                                (let ((_e2714027227_
                                       (gx#stx-e _hd2713827222_)))
                                  (let ((_tl2714227232_ (##cdr _e2714027227_))
                                        (_hd2714127230_ (##car _e2714027227_)))
                                    (if (gx#stx-null? _tl2714227232_)
                                        (if (gx#stx-pair? _tl2713927224_)
                                            (let ((_e2714327235_
                                                   (gx#stx-e _tl2713927224_)))
                                              (let ((_tl2714527240_
                                                     (##cdr _e2714327235_))
                                                    (_hd2714427238_
                                                     (##car _e2714327235_)))
                                                (if (gx#stx-null?
                                                     _tl2714527240_)
                                                    (___match2734427345_
                                                     _e2713427211_
                                                     _hd2713527214_
                                                     _tl2713627216_
                                                     _e2713727219_
                                                     _hd2713827222_
                                                     _tl2713927224_
                                                     _e2714027227_
                                                     _hd2714127230_
                                                     _tl2714227232_
                                                     _e2714327235_
                                                     _hd2714427238_
                                                     _tl2714527240_)
                                                    (_g2713027161_))))
                                            (_g2713027161_))
                                        (if (gx#stx-pair? _tl2713927224_)
                                            (let ((_e2715427182_
                                                   (gx#stx-e _tl2713927224_)))
                                              (let ((_tl2715627187_
                                                     (##cdr _e2715427182_))
                                                    (_hd2715527185_
                                                     (##car _e2715427182_)))
                                                (if (gx#stx-null?
                                                     _tl2715627187_)
                                                    (___kont2731527316_
                                                     _hd2715527185_
                                                     _hd2713827222_)
                                                    (_g2713027161_))))
                                            (_g2713027161_)))))
                                (if (gx#stx-pair? _tl2713927224_)
                                    (let ((_e2715427182_
                                           (gx#stx-e _tl2713927224_)))
                                      (let ((_tl2715627187_
                                             (##cdr _e2715427182_))
                                            (_hd2715527185_
                                             (##car _e2715427182_)))
                                        (if (gx#stx-null? _tl2715627187_)
                                            (___kont2731527316_
                                             _hd2715527185_
                                             _hd2713827222_)
                                            (_g2713027161_))))
                                    (_g2713027161_)))))
                        (_g2713027161_))))
                (_g2713027161_)))))))
  (define gxc#collect-type-let-values%
    (lambda (_stx26912_)
      (letrec ((_collect-e26914_
                (lambda (_hd27071_ _expr27072_)
                  (let* ((___stx2736727368_ _hd27071_)
                         (_g2707527085_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             ___stx2736727368_))))
                    (let ((___kont2736927370_
                           (lambda (_L27105_)
                             (let ((_sym27116_
                                    (gxc#identifier-symbol _L27105_)))
                               (if (table-ref
                                    (gxc#current-compile-mutators)
                                    _sym27116_
                                    '#f)
                                   (gxc#verbose
                                    '"skipping type declaration for mutable binding "
                                    _sym27116_)
                                   (let ((_type2711727119_
                                          (gxc#apply-basic-expression-type
                                           _expr27072_)))
                                     (if _type2711727119_
                                         (let ((_type27122_ _type2711727119_))
                                           (gxc#optimizer-declare-type!__%
                                            _sym27116_
                                            _type27122_
                                            '#t))
                                         '#f))))))
                          (___kont2737127372_ (lambda () '#!void)))
                      (let ((___match2738027381_
                             (lambda (_e2707827097_
                                      _hd2707927100_
                                      _tl2708027102_)
                               (let ((_L27105_ _hd2707927100_))
                                 (if (gx#identifier? _L27105_)
                                     (___kont2736927370_ _L27105_)
                                     (___kont2737127372_))))))
                        (if (gx#stx-pair? ___stx2736727368_)
                            (let ((_e2707827097_ (gx#stx-e ___stx2736727368_)))
                              (let ((_tl2708027102_ (##cdr _e2707827097_))
                                    (_hd2707927100_ (##car _e2707827097_)))
                                (if (gx#stx-null? _tl2708027102_)
                                    (___match2738027381_
                                     _e2707827097_
                                     _hd2707927100_
                                     _tl2708027102_)
                                    (___kont2737127372_))))
                            (___kont2737127372_))))))))
        (let* ((_g2691626951_
                (lambda (_g2691726948_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2691726948_)))
               (_g2691527068_
                (lambda (_g2691726954_)
                  (if (gx#stx-pair? _g2691726954_)
                      (let ((_e2692126956_ (gx#stx-e _g2691726954_)))
                        (let ((_hd2692226959_ (##car _e2692126956_))
                              (_tl2692326961_ (##cdr _e2692126956_)))
                          (if (gx#stx-pair? _tl2692326961_)
                              (let ((_e2692426964_ (gx#stx-e _tl2692326961_)))
                                (let ((_hd2692526967_ (##car _e2692426964_))
                                      (_tl2692626969_ (##cdr _e2692426964_)))
                                  (if (gx#stx-pair/null? _hd2692526967_)
                                      (let ((_g29916_
                                             (gx#syntax-split-splice
                                              _hd2692526967_
                                              '0)))
                                        (begin
                                          (let ((_g29917_
                                                 (if (##values? _g29916_)
                                                     (##vector-length _g29916_)
                                                     1)))
                                            (if (not (##fx= _g29917_ 2))
                                                (error "Context expects 2 values"
                                                       _g29917_)))
                                          (let ((_target2692726972_
                                                 (##vector-ref _g29916_ 0))
                                                (_tl2692926974_
                                                 (##vector-ref _g29916_ 1)))
                                            (if (gx#stx-null? _tl2692926974_)
                                                (letrec ((_loop2693026977_
                                                          (lambda (_hd2692826980_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _expr2693426982_
                           _hd2693526984_)
                    (if (gx#stx-pair? _hd2692826980_)
                        (let ((_e2693126987_ (gx#stx-e _hd2692826980_)))
                          (let ((_lp-hd2693226990_ (##car _e2693126987_))
                                (_lp-tl2693326992_ (##cdr _e2693126987_)))
                            (if (gx#stx-pair? _lp-hd2693226990_)
                                (let ((_e2693826995_
                                       (gx#stx-e _lp-hd2693226990_)))
                                  (let ((_hd2693926998_ (##car _e2693826995_))
                                        (_tl2694027000_ (##cdr _e2693826995_)))
                                    (if (gx#stx-pair? _tl2694027000_)
                                        (let ((_e2694127003_
                                               (gx#stx-e _tl2694027000_)))
                                          (let ((_hd2694227006_
                                                 (##car _e2694127003_))
                                                (_tl2694327008_
                                                 (##cdr _e2694127003_)))
                                            (if (gx#stx-null? _tl2694327008_)
                                                (_loop2693026977_
                                                 _lp-tl2693326992_
                                                 (cons _hd2694227006_
                                                       _expr2693426982_)
                                                 (cons _hd2693926998_
                                                       _hd2693526984_))
                                                (_g2691626951_
                                                 _g2691726954_))))
                                        (_g2691626951_ _g2691726954_))))
                                (_g2691626951_ _g2691726954_))))
                        (let ((_expr2693627011_ (reverse _expr2693426982_))
                              (_hd2693727013_ (reverse _hd2693526984_)))
                          (if (gx#stx-pair? _tl2692626969_)
                              (let ((_e2694427016_ (gx#stx-e _tl2692626969_)))
                                (let ((_hd2694527019_ (##car _e2694427016_))
                                      (_tl2694627021_ (##cdr _e2694427016_)))
                                  (if (gx#stx-null? _tl2694627021_)
                                      ((lambda (_L27024_ _L27025_ _L27026_)
                                         (for-each
                                          _collect-e26914_
                                          (foldr1 (lambda (_g2704627049_
                                                           _g2704727051_)
                                                    (cons _g2704627049_
                                                          _g2704727051_))
                                                  '()
                                                  _L27026_)
                                          (foldr1 (lambda (_g2705327056_
                                                           _g2705427058_)
                                                    (cons _g2705327056_
                                                          _g2705427058_))
                                                  '()
                                                  _L27025_))
                                         (for-each
                                          gxc#compile-e
                                          (foldr1 (lambda (_g2706027063_
                                                           _g2706127065_)
                                                    (cons _g2706027063_
                                                          _g2706127065_))
                                                  '()
                                                  _L27025_))
                                         (gxc#compile-e _L27024_))
                                       _hd2694527019_
                                       _expr2693627011_
                                       _hd2693727013_)
                                      (_g2691626951_ _g2691726954_))))
                              (_g2691626951_ _g2691726954_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop2693026977_
                                                   _target2692726972_
                                                   '()
                                                   '()))
                                                (_g2691626951_
                                                 _g2691726954_)))))
                                      (_g2691626951_ _g2691726954_))))
                              (_g2691626951_ _g2691726954_))))
                      (_g2691626951_ _g2691726954_)))))
          (_g2691527068_ _stx26912_)))))
  (define gxc#collect-type-call%
    (lambda (_stx26404_)
      (let* ((___stx2738327384_ _stx26404_)
             (_g2640826523_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2738327384_))))
        (let ((___kont2738527386_
               (lambda (_L26862_ _L26863_ _L26864_ _L26865_ _L26866_)
                 (gxc#optimizer-declare-method!__%
                  (gxc#identifier-symbol _L26865_)
                  (gx#stx-e _L26864_)
                  (gxc#identifier-symbol _L26863_)
                  (gx#stx-e _L26862_))))
              (___kont2738727388_
               (lambda (_L26690_ _L26691_ _L26692_ _L26693_)
                 (gxc#optimizer-declare-method!__%
                  (gxc#identifier-symbol _L26692_)
                  (gx#stx-e _L26691_)
                  (gxc#identifier-symbol _L26690_)
                  '#f)))
              (___kont2738927390_
               (lambda (_L26560_)
                 (for-each
                  gxc#compile-e
                  (foldr1 (lambda (_g2657326576_ _g2657426578_)
                            (cons _g2657326576_ _g2657426578_))
                          '()
                          _L26560_)))))
          (let* ((___match2764027641_
                  (lambda (_e2650726528_
                           _hd2650826531_
                           _tl2650926533_
                           ___splice2739127392_
                           _target2651026536_
                           _tl2651226538_)
                    (letrec ((_loop2651326541_
                              (lambda (_hd2651126544_ _expr2651726546_)
                                (if (gx#stx-pair? _hd2651126544_)
                                    (let ((_e2651426549_
                                           (gx#stx-e _hd2651126544_)))
                                      (let ((_lp-tl2651626554_
                                             (##cdr _e2651426549_))
                                            (_lp-hd2651526552_
                                             (##car _e2651426549_)))
                                        (_loop2651326541_
                                         _lp-tl2651626554_
                                         (cons _lp-hd2651526552_
                                               _expr2651726546_))))
                                    (let ((_expr2651826557_
                                           (reverse _expr2651726546_)))
                                      (___kont2738927390_
                                       _expr2651826557_))))))
                      (_loop2651326541_ _target2651026536_ '()))))
                 (___match2752027521_
                  (lambda (_e2641526734_
                           _hd2641626737_
                           _tl2641726739_
                           _e2641826742_
                           _hd2641926745_
                           _tl2642026747_
                           _e2642126750_
                           _hd2642226753_
                           _tl2642326755_
                           _e2642426758_
                           _hd2642526761_
                           _tl2642626763_
                           _e2642726766_
                           _hd2642826769_
                           _tl2642926771_
                           _e2643026774_
                           _hd2643126777_
                           _tl2643226779_
                           _e2643326782_
                           _hd2643426785_
                           _tl2643526787_
                           _e2643626790_
                           _hd2643726793_
                           _tl2643826795_
                           _e2643926798_
                           _hd2644026801_
                           _tl2644126803_
                           _e2644226806_
                           _hd2644326809_
                           _tl2644426811_
                           _e2644526814_
                           _hd2644626817_
                           _tl2644726819_
                           _e2644826822_
                           _hd2644926825_
                           _tl2645026827_
                           _e2645126830_
                           _hd2645226833_
                           _tl2645326835_
                           _e2645426838_
                           _hd2645526841_
                           _tl2645626843_
                           _e2645726846_
                           _hd2645826849_
                           _tl2645926851_
                           _e2646026854_
                           _hd2646126857_
                           _tl2646226859_)
                    (let ((_L26862_ _hd2646126857_)
                          (_L26863_ _hd2645226833_)
                          (_L26864_ _hd2644326809_)
                          (_L26865_ _hd2643426785_)
                          (_L26866_ _hd2642526761_))
                      (if (gxc#runtime-identifier=? _L26866_ 'bind-method!)
                          (___kont2738527386_
                           _L26862_
                           _L26863_
                           _L26864_
                           _L26865_
                           _L26866_)
                          (if (gx#stx-pair/null? _tl2641726739_)
                              (let ((___splice2739127392_
                                     (gx#syntax-split-splice
                                      _tl2641726739_
                                      '0)))
                                (let ((_tl2651226538_
                                       (##vector-ref ___splice2739127392_ '1))
                                      (_target2651026536_
                                       (##vector-ref ___splice2739127392_ '0)))
                                  (if (gx#stx-null? _tl2651226538_)
                                      (___match2764027641_
                                       _e2641526734_
                                       _hd2641626737_
                                       _tl2641726739_
                                       ___splice2739127392_
                                       _target2651026536_
                                       _tl2651226538_)
                                      (_g2640826523_))))
                              (_g2640826523_)))))))
            (if (gx#stx-pair? ___stx2738327384_)
                (let ((_e2641526734_ (gx#stx-e ___stx2738327384_)))
                  (let ((_tl2641726739_ (##cdr _e2641526734_))
                        (_hd2641626737_ (##car _e2641526734_)))
                    (if (gx#stx-pair? _tl2641726739_)
                        (let ((_e2641826742_ (gx#stx-e _tl2641726739_)))
                          (let ((_tl2642026747_ (##cdr _e2641826742_))
                                (_hd2641926745_ (##car _e2641826742_)))
                            (if (gx#stx-pair? _hd2641926745_)
                                (let ((_e2642126750_
                                       (gx#stx-e _hd2641926745_)))
                                  (let ((_tl2642326755_ (##cdr _e2642126750_))
                                        (_hd2642226753_ (##car _e2642126750_)))
                                    (if (gx#identifier? _hd2642226753_)
                                        (if (gx#stx-eq? '%#ref _hd2642226753_)
                                            (if (gx#stx-pair? _tl2642326755_)
                                                (let ((_e2642426758_
                                                       (gx#stx-e
                                                        _tl2642326755_)))
                                                  (let ((_tl2642626763_
                                                         (##cdr _e2642426758_))
                                                        (_hd2642526761_
                                                         (##car _e2642426758_)))
                                                    (if (gx#stx-null?
                                                         _tl2642626763_)
                                                        (if (gx#stx-pair?
                                                             _tl2642026747_)
                                                            (let ((_e2642726766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2642026747_)))
                      (let ((_tl2642926771_ (##cdr _e2642726766_))
                            (_hd2642826769_ (##car _e2642726766_)))
                        (if (gx#stx-pair? _hd2642826769_)
                            (let ((_e2643026774_ (gx#stx-e _hd2642826769_)))
                              (let ((_tl2643226779_ (##cdr _e2643026774_))
                                    (_hd2643126777_ (##car _e2643026774_)))
                                (if (gx#identifier? _hd2643126777_)
                                    (if (gx#stx-eq? '%#ref _hd2643126777_)
                                        (if (gx#stx-pair? _tl2643226779_)
                                            (let ((_e2643326782_
                                                   (gx#stx-e _tl2643226779_)))
                                              (let ((_tl2643526787_
                                                     (##cdr _e2643326782_))
                                                    (_hd2643426785_
                                                     (##car _e2643326782_)))
                                                (if (gx#stx-null?
                                                     _tl2643526787_)
                                                    (if (gx#stx-pair?
                                                         _tl2642926771_)
                                                        (let ((_e2643626790_
                                                               (gx#stx-e
                                                                _tl2642926771_)))
                                                          (let ((_tl2643826795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2643626790_))
                        (_hd2643726793_ (##car _e2643626790_)))
                    (if (gx#stx-pair? _hd2643726793_)
                        (let ((_e2643926798_ (gx#stx-e _hd2643726793_)))
                          (let ((_tl2644126803_ (##cdr _e2643926798_))
                                (_hd2644026801_ (##car _e2643926798_)))
                            (if (gx#identifier? _hd2644026801_)
                                (if (gx#stx-eq? '%#quote _hd2644026801_)
                                    (if (gx#stx-pair? _tl2644126803_)
                                        (let ((_e2644226806_
                                               (gx#stx-e _tl2644126803_)))
                                          (let ((_tl2644426811_
                                                 (##cdr _e2644226806_))
                                                (_hd2644326809_
                                                 (##car _e2644226806_)))
                                            (if (gx#stx-null? _tl2644426811_)
                                                (if (gx#stx-pair?
                                                     _tl2643826795_)
                                                    (let ((_e2644526814_
                                                           (gx#stx-e
                                                            _tl2643826795_)))
                                                      (let ((_tl2644726819_
                                                             (##cdr _e2644526814_))
                                                            (_hd2644626817_
                                                             (##car _e2644526814_)))
                                                        (if (gx#stx-pair?
                                                             _hd2644626817_)
                                                            (let ((_e2644826822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2644626817_)))
                      (let ((_tl2645026827_ (##cdr _e2644826822_))
                            (_hd2644926825_ (##car _e2644826822_)))
                        (if (gx#identifier? _hd2644926825_)
                            (if (gx#stx-eq? '%#ref _hd2644926825_)
                                (if (gx#stx-pair? _tl2645026827_)
                                    (let ((_e2645126830_
                                           (gx#stx-e _tl2645026827_)))
                                      (let ((_tl2645326835_
                                             (##cdr _e2645126830_))
                                            (_hd2645226833_
                                             (##car _e2645126830_)))
                                        (if (gx#stx-null? _tl2645326835_)
                                            (if (gx#stx-pair? _tl2644726819_)
                                                (let ((_e2645426838_
                                                       (gx#stx-e
                                                        _tl2644726819_)))
                                                  (let ((_tl2645626843_
                                                         (##cdr _e2645426838_))
                                                        (_hd2645526841_
                                                         (##car _e2645426838_)))
                                                    (if (gx#stx-pair?
                                                         _hd2645526841_)
                                                        (let ((_e2645726846_
                                                               (gx#stx-e
                                                                _hd2645526841_)))
                                                          (let ((_tl2645926851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2645726846_))
                        (_hd2645826849_ (##car _e2645726846_)))
                    (if (gx#identifier? _hd2645826849_)
                        (if (gx#stx-eq? '%#quote _hd2645826849_)
                            (if (gx#stx-pair? _tl2645926851_)
                                (let ((_e2646026854_
                                       (gx#stx-e _tl2645926851_)))
                                  (let ((_tl2646226859_ (##cdr _e2646026854_))
                                        (_hd2646126857_ (##car _e2646026854_)))
                                    (if (gx#stx-null? _tl2646226859_)
                                        (if (gx#stx-null? _tl2645626843_)
                                            (___match2752027521_
                                             _e2641526734_
                                             _hd2641626737_
                                             _tl2641726739_
                                             _e2641826742_
                                             _hd2641926745_
                                             _tl2642026747_
                                             _e2642126750_
                                             _hd2642226753_
                                             _tl2642326755_
                                             _e2642426758_
                                             _hd2642526761_
                                             _tl2642626763_
                                             _e2642726766_
                                             _hd2642826769_
                                             _tl2642926771_
                                             _e2643026774_
                                             _hd2643126777_
                                             _tl2643226779_
                                             _e2643326782_
                                             _hd2643426785_
                                             _tl2643526787_
                                             _e2643626790_
                                             _hd2643726793_
                                             _tl2643826795_
                                             _e2643926798_
                                             _hd2644026801_
                                             _tl2644126803_
                                             _e2644226806_
                                             _hd2644326809_
                                             _tl2644426811_
                                             _e2644526814_
                                             _hd2644626817_
                                             _tl2644726819_
                                             _e2644826822_
                                             _hd2644926825_
                                             _tl2645026827_
                                             _e2645126830_
                                             _hd2645226833_
                                             _tl2645326835_
                                             _e2645426838_
                                             _hd2645526841_
                                             _tl2645626843_
                                             _e2645726846_
                                             _hd2645826849_
                                             _tl2645926851_
                                             _e2646026854_
                                             _hd2646126857_
                                             _tl2646226859_)
                                            (if (gx#stx-pair/null?
                                                 _tl2641726739_)
                                                (let ((___splice2739127392_
                                                       (gx#syntax-split-splice
                                                        _tl2641726739_
                                                        '0)))
                                                  (let ((_tl2651226538_
                                                         (##vector-ref
                                                          ___splice2739127392_
                                                          '1))
                                                        (_target2651026536_
                                                         (##vector-ref
                                                          ___splice2739127392_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2651226538_)
                                                        (___match2764027641_
                                                         _e2641526734_
                                                         _hd2641626737_
                                                         _tl2641726739_
                                                         ___splice2739127392_
                                                         _target2651026536_
                                                         _tl2651226538_)
                                                        (_g2640826523_))))
                                                (_g2640826523_)))
                                        (if (gx#stx-pair/null? _tl2641726739_)
                                            (let ((___splice2739127392_
                                                   (gx#syntax-split-splice
                                                    _tl2641726739_
                                                    '0)))
                                              (let ((_tl2651226538_
                                                     (##vector-ref
                                                      ___splice2739127392_
                                                      '1))
                                                    (_target2651026536_
                                                     (##vector-ref
                                                      ___splice2739127392_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2651226538_)
                                                    (___match2764027641_
                                                     _e2641526734_
                                                     _hd2641626737_
                                                     _tl2641726739_
                                                     ___splice2739127392_
                                                     _target2651026536_
                                                     _tl2651226538_)
                                                    (_g2640826523_))))
                                            (_g2640826523_)))))
                                (if (gx#stx-pair/null? _tl2641726739_)
                                    (let ((___splice2739127392_
                                           (gx#syntax-split-splice
                                            _tl2641726739_
                                            '0)))
                                      (let ((_tl2651226538_
                                             (##vector-ref
                                              ___splice2739127392_
                                              '1))
                                            (_target2651026536_
                                             (##vector-ref
                                              ___splice2739127392_
                                              '0)))
                                        (if (gx#stx-null? _tl2651226538_)
                                            (___match2764027641_
                                             _e2641526734_
                                             _hd2641626737_
                                             _tl2641726739_
                                             ___splice2739127392_
                                             _target2651026536_
                                             _tl2651226538_)
                                            (_g2640826523_))))
                                    (_g2640826523_)))
                            (if (gx#stx-pair/null? _tl2641726739_)
                                (let ((___splice2739127392_
                                       (gx#syntax-split-splice
                                        _tl2641726739_
                                        '0)))
                                  (let ((_tl2651226538_
                                         (##vector-ref
                                          ___splice2739127392_
                                          '1))
                                        (_target2651026536_
                                         (##vector-ref
                                          ___splice2739127392_
                                          '0)))
                                    (if (gx#stx-null? _tl2651226538_)
                                        (___match2764027641_
                                         _e2641526734_
                                         _hd2641626737_
                                         _tl2641726739_
                                         ___splice2739127392_
                                         _target2651026536_
                                         _tl2651226538_)
                                        (_g2640826523_))))
                                (_g2640826523_)))
                        (if (gx#stx-pair/null? _tl2641726739_)
                            (let ((___splice2739127392_
                                   (gx#syntax-split-splice _tl2641726739_ '0)))
                              (let ((_tl2651226538_
                                     (##vector-ref ___splice2739127392_ '1))
                                    (_target2651026536_
                                     (##vector-ref ___splice2739127392_ '0)))
                                (if (gx#stx-null? _tl2651226538_)
                                    (___match2764027641_
                                     _e2641526734_
                                     _hd2641626737_
                                     _tl2641726739_
                                     ___splice2739127392_
                                     _target2651026536_
                                     _tl2651226538_)
                                    (_g2640826523_))))
                            (_g2640826523_)))))
                (if (gx#stx-pair/null? _tl2641726739_)
                    (let ((___splice2739127392_
                           (gx#syntax-split-splice _tl2641726739_ '0)))
                      (let ((_tl2651226538_
                             (##vector-ref ___splice2739127392_ '1))
                            (_target2651026536_
                             (##vector-ref ___splice2739127392_ '0)))
                        (if (gx#stx-null? _tl2651226538_)
                            (___match2764027641_
                             _e2641526734_
                             _hd2641626737_
                             _tl2641726739_
                             ___splice2739127392_
                             _target2651026536_
                             _tl2651226538_)
                            (_g2640826523_))))
                    (_g2640826523_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _tl2644726819_)
                                                    (if (gxc#runtime-identifier=?
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '-bind-method)
                                                         'bind-method!)
                                                        (let ((_L26690_
                                                               _hd2645226833_)
                                                              (_L26691_
                                                               _hd2644326809_)
                                                              (_L26692_
                                                               _hd2643426785_)
                                                              (_L26693_
                                                               _hd2642526761_))
                                                          (___kont2738727388_
                                                           _L26690_
                                                           _L26691_
                                                           _L26692_
                                                           _L26693_))
                                                        (if (gx#stx-pair/null?
                                                             _tl2641726739_)
                                                            (let ((___splice2739127392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice _tl2641726739_ '0)))
                      (let ((_tl2651226538_
                             (##vector-ref ___splice2739127392_ '1))
                            (_target2651026536_
                             (##vector-ref ___splice2739127392_ '0)))
                        (if (gx#stx-null? _tl2651226538_)
                            (___match2764027641_
                             _e2641526734_
                             _hd2641626737_
                             _tl2641726739_
                             ___splice2739127392_
                             _target2651026536_
                             _tl2651226538_)
                            (_g2640826523_))))
                    (_g2640826523_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _tl2641726739_)
                                                        (let ((___splice2739127392_
                                                               (gx#syntax-split-splice
                                                                _tl2641726739_
                                                                '0)))
                                                          (let ((_tl2651226538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2739127392_ '1))
                        (_target2651026536_
                         (##vector-ref ___splice2739127392_ '0)))
                    (if (gx#stx-null? _tl2651226538_)
                        (___match2764027641_
                         _e2641526734_
                         _hd2641626737_
                         _tl2641726739_
                         ___splice2739127392_
                         _target2651026536_
                         _tl2651226538_)
                        (_g2640826523_))))
                (_g2640826523_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _tl2641726739_)
                                                (let ((___splice2739127392_
                                                       (gx#syntax-split-splice
                                                        _tl2641726739_
                                                        '0)))
                                                  (let ((_tl2651226538_
                                                         (##vector-ref
                                                          ___splice2739127392_
                                                          '1))
                                                        (_target2651026536_
                                                         (##vector-ref
                                                          ___splice2739127392_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2651226538_)
                                                        (___match2764027641_
                                                         _e2641526734_
                                                         _hd2641626737_
                                                         _tl2641726739_
                                                         ___splice2739127392_
                                                         _target2651026536_
                                                         _tl2651226538_)
                                                        (_g2640826523_))))
                                                (_g2640826523_)))))
                                    (if (gx#stx-pair/null? _tl2641726739_)
                                        (let ((___splice2739127392_
                                               (gx#syntax-split-splice
                                                _tl2641726739_
                                                '0)))
                                          (let ((_tl2651226538_
                                                 (##vector-ref
                                                  ___splice2739127392_
                                                  '1))
                                                (_target2651026536_
                                                 (##vector-ref
                                                  ___splice2739127392_
                                                  '0)))
                                            (if (gx#stx-null? _tl2651226538_)
                                                (___match2764027641_
                                                 _e2641526734_
                                                 _hd2641626737_
                                                 _tl2641726739_
                                                 ___splice2739127392_
                                                 _target2651026536_
                                                 _tl2651226538_)
                                                (_g2640826523_))))
                                        (_g2640826523_)))
                                (if (gx#stx-pair/null? _tl2641726739_)
                                    (let ((___splice2739127392_
                                           (gx#syntax-split-splice
                                            _tl2641726739_
                                            '0)))
                                      (let ((_tl2651226538_
                                             (##vector-ref
                                              ___splice2739127392_
                                              '1))
                                            (_target2651026536_
                                             (##vector-ref
                                              ___splice2739127392_
                                              '0)))
                                        (if (gx#stx-null? _tl2651226538_)
                                            (___match2764027641_
                                             _e2641526734_
                                             _hd2641626737_
                                             _tl2641726739_
                                             ___splice2739127392_
                                             _target2651026536_
                                             _tl2651226538_)
                                            (_g2640826523_))))
                                    (_g2640826523_)))
                            (if (gx#stx-pair/null? _tl2641726739_)
                                (let ((___splice2739127392_
                                       (gx#syntax-split-splice
                                        _tl2641726739_
                                        '0)))
                                  (let ((_tl2651226538_
                                         (##vector-ref
                                          ___splice2739127392_
                                          '1))
                                        (_target2651026536_
                                         (##vector-ref
                                          ___splice2739127392_
                                          '0)))
                                    (if (gx#stx-null? _tl2651226538_)
                                        (___match2764027641_
                                         _e2641526734_
                                         _hd2641626737_
                                         _tl2641726739_
                                         ___splice2739127392_
                                         _target2651026536_
                                         _tl2651226538_)
                                        (_g2640826523_))))
                                (_g2640826523_)))))
                    (if (gx#stx-pair/null? _tl2641726739_)
                        (let ((___splice2739127392_
                               (gx#syntax-split-splice _tl2641726739_ '0)))
                          (let ((_tl2651226538_
                                 (##vector-ref ___splice2739127392_ '1))
                                (_target2651026536_
                                 (##vector-ref ___splice2739127392_ '0)))
                            (if (gx#stx-null? _tl2651226538_)
                                (___match2764027641_
                                 _e2641526734_
                                 _hd2641626737_
                                 _tl2641726739_
                                 ___splice2739127392_
                                 _target2651026536_
                                 _tl2651226538_)
                                (_g2640826523_))))
                        (_g2640826523_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _tl2641726739_)
                                                        (let ((___splice2739127392_
                                                               (gx#syntax-split-splice
                                                                _tl2641726739_
                                                                '0)))
                                                          (let ((_tl2651226538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2739127392_ '1))
                        (_target2651026536_
                         (##vector-ref ___splice2739127392_ '0)))
                    (if (gx#stx-null? _tl2651226538_)
                        (___match2764027641_
                         _e2641526734_
                         _hd2641626737_
                         _tl2641726739_
                         ___splice2739127392_
                         _target2651026536_
                         _tl2651226538_)
                        (_g2640826523_))))
                (_g2640826523_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _tl2641726739_)
                                                    (let ((___splice2739127392_
                                                           (gx#syntax-split-splice
                                                            _tl2641726739_
                                                            '0)))
                                                      (let ((_tl2651226538_
                                                             (##vector-ref
                                                              ___splice2739127392_
                                                              '1))
                                                            (_target2651026536_
                                                             (##vector-ref
                                                              ___splice2739127392_
                                                              '0)))
                                                        (if (gx#stx-null?
                                                             _tl2651226538_)
                                                            (___match2764027641_
                                                             _e2641526734_
                                                             _hd2641626737_
                                                             _tl2641726739_
                                                             ___splice2739127392_
                                                             _target2651026536_
                                                             _tl2651226538_)
                                                            (_g2640826523_))))
                                                    (_g2640826523_)))))
                                        (if (gx#stx-pair/null? _tl2641726739_)
                                            (let ((___splice2739127392_
                                                   (gx#syntax-split-splice
                                                    _tl2641726739_
                                                    '0)))
                                              (let ((_tl2651226538_
                                                     (##vector-ref
                                                      ___splice2739127392_
                                                      '1))
                                                    (_target2651026536_
                                                     (##vector-ref
                                                      ___splice2739127392_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2651226538_)
                                                    (___match2764027641_
                                                     _e2641526734_
                                                     _hd2641626737_
                                                     _tl2641726739_
                                                     ___splice2739127392_
                                                     _target2651026536_
                                                     _tl2651226538_)
                                                    (_g2640826523_))))
                                            (_g2640826523_)))
                                    (if (gx#stx-pair/null? _tl2641726739_)
                                        (let ((___splice2739127392_
                                               (gx#syntax-split-splice
                                                _tl2641726739_
                                                '0)))
                                          (let ((_tl2651226538_
                                                 (##vector-ref
                                                  ___splice2739127392_
                                                  '1))
                                                (_target2651026536_
                                                 (##vector-ref
                                                  ___splice2739127392_
                                                  '0)))
                                            (if (gx#stx-null? _tl2651226538_)
                                                (___match2764027641_
                                                 _e2641526734_
                                                 _hd2641626737_
                                                 _tl2641726739_
                                                 ___splice2739127392_
                                                 _target2651026536_
                                                 _tl2651226538_)
                                                (_g2640826523_))))
                                        (_g2640826523_)))
                                (if (gx#stx-pair/null? _tl2641726739_)
                                    (let ((___splice2739127392_
                                           (gx#syntax-split-splice
                                            _tl2641726739_
                                            '0)))
                                      (let ((_tl2651226538_
                                             (##vector-ref
                                              ___splice2739127392_
                                              '1))
                                            (_target2651026536_
                                             (##vector-ref
                                              ___splice2739127392_
                                              '0)))
                                        (if (gx#stx-null? _tl2651226538_)
                                            (___match2764027641_
                                             _e2641526734_
                                             _hd2641626737_
                                             _tl2641726739_
                                             ___splice2739127392_
                                             _target2651026536_
                                             _tl2651226538_)
                                            (_g2640826523_))))
                                    (_g2640826523_)))))
                        (if (gx#stx-pair/null? _tl2641726739_)
                            (let ((___splice2739127392_
                                   (gx#syntax-split-splice _tl2641726739_ '0)))
                              (let ((_tl2651226538_
                                     (##vector-ref ___splice2739127392_ '1))
                                    (_target2651026536_
                                     (##vector-ref ___splice2739127392_ '0)))
                                (if (gx#stx-null? _tl2651226538_)
                                    (___match2764027641_
                                     _e2641526734_
                                     _hd2641626737_
                                     _tl2641726739_
                                     ___splice2739127392_
                                     _target2651026536_
                                     _tl2651226538_)
                                    (_g2640826523_))))
                            (_g2640826523_)))))
                (if (gx#stx-pair/null? _tl2641726739_)
                    (let ((___splice2739127392_
                           (gx#syntax-split-splice _tl2641726739_ '0)))
                      (let ((_tl2651226538_
                             (##vector-ref ___splice2739127392_ '1))
                            (_target2651026536_
                             (##vector-ref ___splice2739127392_ '0)))
                        (if (gx#stx-null? _tl2651226538_)
                            (___match2764027641_
                             _e2641526734_
                             _hd2641626737_
                             _tl2641726739_
                             ___splice2739127392_
                             _target2651026536_
                             _tl2651226538_)
                            (_g2640826523_))))
                    (_g2640826523_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _tl2641726739_)
                                                        (let ((___splice2739127392_
                                                               (gx#syntax-split-splice
                                                                _tl2641726739_
                                                                '0)))
                                                          (let ((_tl2651226538_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##vector-ref ___splice2739127392_ '1))
                        (_target2651026536_
                         (##vector-ref ___splice2739127392_ '0)))
                    (if (gx#stx-null? _tl2651226538_)
                        (___match2764027641_
                         _e2641526734_
                         _hd2641626737_
                         _tl2641726739_
                         ___splice2739127392_
                         _target2651026536_
                         _tl2651226538_)
                        (_g2640826523_))))
                (_g2640826523_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _tl2641726739_)
                                                (let ((___splice2739127392_
                                                       (gx#syntax-split-splice
                                                        _tl2641726739_
                                                        '0)))
                                                  (let ((_tl2651226538_
                                                         (##vector-ref
                                                          ___splice2739127392_
                                                          '1))
                                                        (_target2651026536_
                                                         (##vector-ref
                                                          ___splice2739127392_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2651226538_)
                                                        (___match2764027641_
                                                         _e2641526734_
                                                         _hd2641626737_
                                                         _tl2641726739_
                                                         ___splice2739127392_
                                                         _target2651026536_
                                                         _tl2651226538_)
                                                        (_g2640826523_))))
                                                (_g2640826523_)))
                                        (if (gx#stx-pair/null? _tl2641726739_)
                                            (let ((___splice2739127392_
                                                   (gx#syntax-split-splice
                                                    _tl2641726739_
                                                    '0)))
                                              (let ((_tl2651226538_
                                                     (##vector-ref
                                                      ___splice2739127392_
                                                      '1))
                                                    (_target2651026536_
                                                     (##vector-ref
                                                      ___splice2739127392_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2651226538_)
                                                    (___match2764027641_
                                                     _e2641526734_
                                                     _hd2641626737_
                                                     _tl2641726739_
                                                     ___splice2739127392_
                                                     _target2651026536_
                                                     _tl2651226538_)
                                                    (_g2640826523_))))
                                            (_g2640826523_)))
                                    (if (gx#stx-pair/null? _tl2641726739_)
                                        (let ((___splice2739127392_
                                               (gx#syntax-split-splice
                                                _tl2641726739_
                                                '0)))
                                          (let ((_tl2651226538_
                                                 (##vector-ref
                                                  ___splice2739127392_
                                                  '1))
                                                (_target2651026536_
                                                 (##vector-ref
                                                  ___splice2739127392_
                                                  '0)))
                                            (if (gx#stx-null? _tl2651226538_)
                                                (___match2764027641_
                                                 _e2641526734_
                                                 _hd2641626737_
                                                 _tl2641726739_
                                                 ___splice2739127392_
                                                 _target2651026536_
                                                 _tl2651226538_)
                                                (_g2640826523_))))
                                        (_g2640826523_)))))
                            (if (gx#stx-pair/null? _tl2641726739_)
                                (let ((___splice2739127392_
                                       (gx#syntax-split-splice
                                        _tl2641726739_
                                        '0)))
                                  (let ((_tl2651226538_
                                         (##vector-ref
                                          ___splice2739127392_
                                          '1))
                                        (_target2651026536_
                                         (##vector-ref
                                          ___splice2739127392_
                                          '0)))
                                    (if (gx#stx-null? _tl2651226538_)
                                        (___match2764027641_
                                         _e2641526734_
                                         _hd2641626737_
                                         _tl2641726739_
                                         ___splice2739127392_
                                         _target2651026536_
                                         _tl2651226538_)
                                        (_g2640826523_))))
                                (_g2640826523_)))))
                    (if (gx#stx-pair/null? _tl2641726739_)
                        (let ((___splice2739127392_
                               (gx#syntax-split-splice _tl2641726739_ '0)))
                          (let ((_tl2651226538_
                                 (##vector-ref ___splice2739127392_ '1))
                                (_target2651026536_
                                 (##vector-ref ___splice2739127392_ '0)))
                            (if (gx#stx-null? _tl2651226538_)
                                (___match2764027641_
                                 _e2641526734_
                                 _hd2641626737_
                                 _tl2641726739_
                                 ___splice2739127392_
                                 _target2651026536_
                                 _tl2651226538_)
                                (_g2640826523_))))
                        (_g2640826523_)))
                (if (gx#stx-pair/null? _tl2641726739_)
                    (let ((___splice2739127392_
                           (gx#syntax-split-splice _tl2641726739_ '0)))
                      (let ((_tl2651226538_
                             (##vector-ref ___splice2739127392_ '1))
                            (_target2651026536_
                             (##vector-ref ___splice2739127392_ '0)))
                        (if (gx#stx-null? _tl2651226538_)
                            (___match2764027641_
                             _e2641526734_
                             _hd2641626737_
                             _tl2641726739_
                             ___splice2739127392_
                             _target2651026536_
                             _tl2651226538_)
                            (_g2640826523_))))
                    (_g2640826523_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _tl2641726739_)
                                                    (let ((___splice2739127392_
                                                           (gx#syntax-split-splice
                                                            _tl2641726739_
                                                            '0)))
                                                      (let ((_tl2651226538_
                                                             (##vector-ref
                                                              ___splice2739127392_
                                                              '1))
                                                            (_target2651026536_
                                                             (##vector-ref
                                                              ___splice2739127392_
                                                              '0)))
                                                        (if (gx#stx-null?
                                                             _tl2651226538_)
                                                            (___match2764027641_
                                                             _e2641526734_
                                                             _hd2641626737_
                                                             _tl2641726739_
                                                             ___splice2739127392_
                                                             _target2651026536_
                                                             _tl2651226538_)
                                                            (_g2640826523_))))
                                                    (_g2640826523_)))
                                            (if (gx#stx-pair/null?
                                                 _tl2641726739_)
                                                (let ((___splice2739127392_
                                                       (gx#syntax-split-splice
                                                        _tl2641726739_
                                                        '0)))
                                                  (let ((_tl2651226538_
                                                         (##vector-ref
                                                          ___splice2739127392_
                                                          '1))
                                                        (_target2651026536_
                                                         (##vector-ref
                                                          ___splice2739127392_
                                                          '0)))
                                                    (if (gx#stx-null?
                                                         _tl2651226538_)
                                                        (___match2764027641_
                                                         _e2641526734_
                                                         _hd2641626737_
                                                         _tl2641726739_
                                                         ___splice2739127392_
                                                         _target2651026536_
                                                         _tl2651226538_)
                                                        (_g2640826523_))))
                                                (_g2640826523_)))
                                        (if (gx#stx-pair/null? _tl2641726739_)
                                            (let ((___splice2739127392_
                                                   (gx#syntax-split-splice
                                                    _tl2641726739_
                                                    '0)))
                                              (let ((_tl2651226538_
                                                     (##vector-ref
                                                      ___splice2739127392_
                                                      '1))
                                                    (_target2651026536_
                                                     (##vector-ref
                                                      ___splice2739127392_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl2651226538_)
                                                    (___match2764027641_
                                                     _e2641526734_
                                                     _hd2641626737_
                                                     _tl2641726739_
                                                     ___splice2739127392_
                                                     _target2651026536_
                                                     _tl2651226538_)
                                                    (_g2640826523_))))
                                            (_g2640826523_)))))
                                (if (gx#stx-pair/null? _tl2641726739_)
                                    (let ((___splice2739127392_
                                           (gx#syntax-split-splice
                                            _tl2641726739_
                                            '0)))
                                      (let ((_tl2651226538_
                                             (##vector-ref
                                              ___splice2739127392_
                                              '1))
                                            (_target2651026536_
                                             (##vector-ref
                                              ___splice2739127392_
                                              '0)))
                                        (if (gx#stx-null? _tl2651226538_)
                                            (___match2764027641_
                                             _e2641526734_
                                             _hd2641626737_
                                             _tl2641726739_
                                             ___splice2739127392_
                                             _target2651026536_
                                             _tl2651226538_)
                                            (_g2640826523_))))
                                    (_g2640826523_)))))
                        (if (gx#stx-pair/null? _tl2641726739_)
                            (let ((___splice2739127392_
                                   (gx#syntax-split-splice _tl2641726739_ '0)))
                              (let ((_tl2651226538_
                                     (##vector-ref ___splice2739127392_ '1))
                                    (_target2651026536_
                                     (##vector-ref ___splice2739127392_ '0)))
                                (if (gx#stx-null? _tl2651226538_)
                                    (___match2764027641_
                                     _e2641526734_
                                     _hd2641626737_
                                     _tl2641726739_
                                     ___splice2739127392_
                                     _target2651026536_
                                     _tl2651226538_)
                                    (_g2640826523_))))
                            (_g2640826523_)))))
                (_g2640826523_)))))))
  (define gxc#current-compile-type-closure (make-parameter '#f))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx26344_)
      (let* ((___stx2764327644_ _stx26344_)
             (_g2634726360_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2764327644_))))
        (let ((___kont2764527646_ (lambda (_L26388_) (gxc#compile-e _L26388_)))
              (___kont2764727648_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2764327644_)
              (let ((_e2635026372_ (gx#stx-e ___stx2764327644_)))
                (let ((_tl2635226377_ (##cdr _e2635026372_))
                      (_hd2635126375_ (##car _e2635026372_)))
                  (if (gx#stx-pair? _tl2635226377_)
                      (let ((_e2635326380_ (gx#stx-e _tl2635226377_)))
                        (let ((_tl2635526385_ (##cdr _e2635326380_))
                              (_hd2635426383_ (##car _e2635326380_)))
                          (if (gx#stx-null? _tl2635526385_)
                              (___kont2764527646_ _hd2635426383_)
                              (___kont2764727648_))))
                      (___kont2764727648_))))
              (___kont2764727648_))))))
  (define gxc#basic-expression-type-begin-annotation%
    (lambda (_stx26277_)
      (let* ((_g2627926296_
              (lambda (_g2628026293_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2628026293_)))
             (_g2627826341_
              (lambda (_g2628026299_)
                (if (gx#stx-pair? _g2628026299_)
                    (let ((_e2628326301_ (gx#stx-e _g2628026299_)))
                      (let ((_hd2628426304_ (##car _e2628326301_))
                            (_tl2628526306_ (##cdr _e2628326301_)))
                        (if (gx#stx-pair? _tl2628526306_)
                            (let ((_e2628626309_ (gx#stx-e _tl2628526306_)))
                              (let ((_hd2628726312_ (##car _e2628626309_))
                                    (_tl2628826314_ (##cdr _e2628626309_)))
                                (if (gx#stx-pair? _tl2628826314_)
                                    (let ((_e2628926317_
                                           (gx#stx-e _tl2628826314_)))
                                      (let ((_hd2629026320_
                                             (##car _e2628926317_))
                                            (_tl2629126322_
                                             (##cdr _e2628926317_)))
                                        (if (gx#stx-null? _tl2629126322_)
                                            ((lambda (_L26325_ _L26326_)
                                               (gxc#compile-e _L26325_))
                                             _hd2629026320_
                                             _hd2628726312_)
                                            (_g2627926296_ _g2628026299_))))
                                    (_g2627926296_ _g2628026299_))))
                            (_g2627926296_ _g2628026299_))))
                    (_g2627926296_ _g2628026299_)))))
        (_g2627826341_ _stx26277_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx24869_)
      (let* ((___stx2766527666_ _stx24869_)
             (_g2487725184_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2766527666_))))
        (let ((___kont2766727668_
               (lambda (_L26265_)
                 (let ((__obj29908 (make-object gxc#!lambda::t '5)))
                   (gxc#!lambda:::init!__0
                    __obj29908
                    'lambda
                    (gxc#lambda-form-arity _L26265_)
                    '#f)
                   __obj29908)))
              (___kont2766927670_
               (lambda (_L26200_ _L26201_ _L26202_ _L26203_ _L26204_)
                 (let* ((_type-t26247_ (gxc#identifier-symbol _L26201_))
                        (_type26249_
                         (gxc#optimizer-resolve-type _type-t26247_)))
                   (if (##structure-instance-of?
                        _type26249_
                        'gxc#!struct-type::t)
                       (##structure gxc#!struct-cons::t _type-t26247_)
                       '#f))))
              (___kont2767127672_
               (lambda (_L25986_ _L25987_ _L25988_ _L25989_)
                 (let* ((_type-t26062_ (gxc#identifier-symbol _L25987_))
                        (_type26064_
                         (gxc#optimizer-resolve-type _type-t26062_)))
                   (if (##structure-instance-of?
                        _type26064_
                        'gxc#!struct-type::t)
                       (##structure gxc#!struct-cons::t _type-t26062_)
                       '#f))))
              (___kont2767727678_
               (lambda (_L25777_ _L25778_ _L25779_ _L25780_ _L25781_ _L25782_)
                 (let* ((_tab25832_ (gx#stx-e _L25779_))
                        (_keys25834_
                         (if _tab25832_
                             (filter values (vector->list _tab25832_))
                             '#f)))
                   (##structure
                    gxc#!kw-lambda::t
                    'kw-lambda
                    _keys25834_
                    (gxc#identifier-symbol _L25778_)))))
              (___kont2767927680_
               (lambda (_L25510_
                        _L25511_
                        _L25512_
                        _L25513_
                        _L25514_
                        _L25515_
                        _L25516_
                        _L25517_
                        _L25518_
                        _L25519_)
                 (##structure
                  gxc#!kw-lambda-primary::t
                  'kw-lambda-dispatch
                  (map gx#stx-e
                       (foldr1 (lambda (_g2561225615_ _g2561325617_)
                                 (cons _g2561225615_ _g2561325617_))
                               '()
                               _L25512_))
                  (gxc#identifier-symbol _L25516_))))
              (___kont2768327684_
               (lambda (_L25220_)
                 (let ((__obj29909 (make-object gxc#!lambda::t '5)))
                   (gxc#!lambda:::init!__0
                    __obj29909
                    'lambda
                    (gxc#lambda-form-arity _L25220_)
                    (gxc#dispatch-lambda-form-delegate _L25220_))
                   __obj29909)))
              (___kont2768527686_
               (lambda (_L25197_)
                 (let ((__obj29910 (make-object gxc#!lambda::t '5)))
                   (gxc#!lambda:::init!__0
                    __obj29910
                    'lambda
                    (gxc#lambda-form-arity _L25197_)
                    '#f)
                   __obj29910))))
          (let* ((___match2814028141_
                  (lambda (_e2517325212_ _hd2517425215_ _tl2517525217_)
                    (let ((_L25220_ _tl2517525217_))
                      (if (gxc#dispatch-lambda-form? _L25220_)
                          (___kont2768327684_ _L25220_)
                          (___kont2768527686_ _tl2517525217_)))))
                 (___match2813428135_
                  (lambda (_e2506725234_
                           _hd2506825237_
                           _tl2506925239_
                           _e2507025242_
                           _hd2507125245_
                           _tl2507225247_
                           _e2507325250_
                           _hd2507425253_
                           _tl2507525255_
                           _e2507625258_
                           _hd2507725261_
                           _tl2507825263_
                           _e2507925266_
                           _hd2508025269_
                           _tl2508125271_
                           _e2508225274_
                           _hd2508325277_
                           _tl2508425279_
                           _e2508525282_
                           _hd2508625285_
                           _tl2508725287_
                           _e2508825290_
                           _hd2508925293_
                           _tl2509025295_
                           _e2509125298_
                           _hd2509225301_
                           _tl2509325303_
                           _e2509425306_
                           _hd2509525309_
                           _tl2509625311_
                           _e2509725314_
                           _hd2509825317_
                           _tl2509925319_
                           _e2510025322_
                           _hd2510125325_
                           _tl2510225327_
                           _e2510325330_
                           _hd2510425333_
                           _tl2510525335_
                           _e2510625338_
                           _hd2510725341_
                           _tl2510825343_
                           ___splice2768127682_
                           _target2510925346_
                           _tl2511125348_
                           _e2512425351_
                           _hd2512525354_
                           _tl2512625356_
                           _e2512725359_
                           _hd2512825362_
                           _tl2512925364_
                           _e2513025367_
                           _hd2513125370_
                           _tl2513225372_)
                    (letrec ((_loop2511225375_
                              (lambda (_hd2511025378_
                                       _-absent-value2511625380_
                                       _key2511725382_
                                       _-xkwvar2511825384_
                                       _-hash-ref2511925386_)
                                (if (gx#stx-pair? _hd2511025378_)
                                    (let ((_e2511325389_
                                           (gx#stx-e _hd2511025378_)))
                                      (let ((_lp-tl2511525394_
                                             (##cdr _e2511325389_))
                                            (_lp-hd2511425392_
                                             (##car _e2511325389_)))
                                        (if (gx#stx-pair? _lp-hd2511425392_)
                                            (let ((_e2513325397_
                                                   (gx#stx-e
                                                    _lp-hd2511425392_)))
                                              (let ((_tl2513525402_
                                                     (##cdr _e2513325397_))
                                                    (_hd2513425400_
                                                     (##car _e2513325397_)))
                                                (if (gx#identifier?
                                                     _hd2513425400_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd2513425400_)
                                                        (if (gx#stx-pair?
                                                             _tl2513525402_)
                                                            (let ((_e2513625405_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2513525402_)))
                      (let ((_tl2513825410_ (##cdr _e2513625405_))
                            (_hd2513725408_ (##car _e2513625405_)))
                        (if (gx#stx-pair? _hd2513725408_)
                            (let ((_e2513925413_ (gx#stx-e _hd2513725408_)))
                              (let ((_tl2514125418_ (##cdr _e2513925413_))
                                    (_hd2514025416_ (##car _e2513925413_)))
                                (if (gx#identifier? _hd2514025416_)
                                    (if (gx#stx-eq? '%#ref _hd2514025416_)
                                        (if (gx#stx-pair? _tl2514125418_)
                                            (let ((_e2514225421_
                                                   (gx#stx-e _tl2514125418_)))
                                              (let ((_tl2514425426_
                                                     (##cdr _e2514225421_))
                                                    (_hd2514325424_
                                                     (##car _e2514225421_)))
                                                (if (gx#stx-null?
                                                     _tl2514425426_)
                                                    (if (gx#stx-pair?
                                                         _tl2513825410_)
                                                        (let ((_e2514525429_
                                                               (gx#stx-e
                                                                _tl2513825410_)))
                                                          (let ((_tl2514725434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2514525429_))
                        (_hd2514625432_ (##car _e2514525429_)))
                    (if (gx#stx-pair? _hd2514625432_)
                        (let ((_e2514825437_ (gx#stx-e _hd2514625432_)))
                          (let ((_tl2515025442_ (##cdr _e2514825437_))
                                (_hd2514925440_ (##car _e2514825437_)))
                            (if (gx#identifier? _hd2514925440_)
                                (if (gx#stx-eq? '%#ref _hd2514925440_)
                                    (if (gx#stx-pair? _tl2515025442_)
                                        (let ((_e2515125445_
                                               (gx#stx-e _tl2515025442_)))
                                          (let ((_tl2515325450_
                                                 (##cdr _e2515125445_))
                                                (_hd2515225448_
                                                 (##car _e2515125445_)))
                                            (if (gx#stx-null? _tl2515325450_)
                                                (if (gx#stx-pair?
                                                     _tl2514725434_)
                                                    (let ((_e2515425453_
                                                           (gx#stx-e
                                                            _tl2514725434_)))
                                                      (let ((_tl2515625458_
                                                             (##cdr _e2515425453_))
                                                            (_hd2515525456_
                                                             (##car _e2515425453_)))
                                                        (if (gx#stx-pair?
                                                             _hd2515525456_)
                                                            (let ((_e2515725461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2515525456_)))
                      (let ((_tl2515925466_ (##cdr _e2515725461_))
                            (_hd2515825464_ (##car _e2515725461_)))
                        (if (gx#identifier? _hd2515825464_)
                            (if (gx#stx-eq? '%#quote _hd2515825464_)
                                (if (gx#stx-pair? _tl2515925466_)
                                    (let ((_e2516025469_
                                           (gx#stx-e _tl2515925466_)))
                                      (let ((_tl2516225474_
                                             (##cdr _e2516025469_))
                                            (_hd2516125472_
                                             (##car _e2516025469_)))
                                        (if (gx#stx-null? _tl2516225474_)
                                            (if (gx#stx-pair? _tl2515625458_)
                                                (let ((_e2516325477_
                                                       (gx#stx-e
                                                        _tl2515625458_)))
                                                  (let ((_tl2516525482_
                                                         (##cdr _e2516325477_))
                                                        (_hd2516425480_
                                                         (##car _e2516325477_)))
                                                    (if (gx#stx-pair?
                                                         _hd2516425480_)
                                                        (let ((_e2516625485_
                                                               (gx#stx-e
                                                                _hd2516425480_)))
                                                          (let ((_tl2516825490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2516625485_))
                        (_hd2516725488_ (##car _e2516625485_)))
                    (if (gx#identifier? _hd2516725488_)
                        (if (gx#stx-eq? '%#ref _hd2516725488_)
                            (if (gx#stx-pair? _tl2516825490_)
                                (let ((_e2516925493_
                                       (gx#stx-e _tl2516825490_)))
                                  (let ((_tl2517125498_ (##cdr _e2516925493_))
                                        (_hd2517025496_ (##car _e2516925493_)))
                                    (if (gx#stx-null? _tl2517125498_)
                                        (if (gx#stx-null? _tl2516525482_)
                                            (_loop2511225375_
                                             _lp-tl2511525394_
                                             (cons _hd2517025496_
                                                   _-absent-value2511625380_)
                                             (cons _hd2516125472_
                                                   _key2511725382_)
                                             (cons _hd2515225448_
                                                   _-xkwvar2511825384_)
                                             (cons _hd2514325424_
                                                   _-hash-ref2511925386_))
                                            (___match2814028141_
                                             _e2506725234_
                                             _hd2506825237_
                                             _tl2506925239_))
                                        (___match2814028141_
                                         _e2506725234_
                                         _hd2506825237_
                                         _tl2506925239_))))
                                (___match2814028141_
                                 _e2506725234_
                                 _hd2506825237_
                                 _tl2506925239_))
                            (___match2814028141_
                             _e2506725234_
                             _hd2506825237_
                             _tl2506925239_))
                        (___match2814028141_
                         _e2506725234_
                         _hd2506825237_
                         _tl2506925239_))))
                (___match2814028141_
                 _e2506725234_
                 _hd2506825237_
                 _tl2506925239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2814028141_
                                                 _e2506725234_
                                                 _hd2506825237_
                                                 _tl2506925239_))
                                            (___match2814028141_
                                             _e2506725234_
                                             _hd2506825237_
                                             _tl2506925239_))))
                                    (___match2814028141_
                                     _e2506725234_
                                     _hd2506825237_
                                     _tl2506925239_))
                                (___match2814028141_
                                 _e2506725234_
                                 _hd2506825237_
                                 _tl2506925239_))
                            (___match2814028141_
                             _e2506725234_
                             _hd2506825237_
                             _tl2506925239_))))
                    (___match2814028141_
                     _e2506725234_
                     _hd2506825237_
                     _tl2506925239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2814028141_
                                                     _e2506725234_
                                                     _hd2506825237_
                                                     _tl2506925239_))
                                                (___match2814028141_
                                                 _e2506725234_
                                                 _hd2506825237_
                                                 _tl2506925239_))))
                                        (___match2814028141_
                                         _e2506725234_
                                         _hd2506825237_
                                         _tl2506925239_))
                                    (___match2814028141_
                                     _e2506725234_
                                     _hd2506825237_
                                     _tl2506925239_))
                                (___match2814028141_
                                 _e2506725234_
                                 _hd2506825237_
                                 _tl2506925239_))))
                        (___match2814028141_
                         _e2506725234_
                         _hd2506825237_
                         _tl2506925239_))))
                (___match2814028141_
                 _e2506725234_
                 _hd2506825237_
                 _tl2506925239_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2814028141_
                                                     _e2506725234_
                                                     _hd2506825237_
                                                     _tl2506925239_))))
                                            (___match2814028141_
                                             _e2506725234_
                                             _hd2506825237_
                                             _tl2506925239_))
                                        (___match2814028141_
                                         _e2506725234_
                                         _hd2506825237_
                                         _tl2506925239_))
                                    (___match2814028141_
                                     _e2506725234_
                                     _hd2506825237_
                                     _tl2506925239_))))
                            (___match2814028141_
                             _e2506725234_
                             _hd2506825237_
                             _tl2506925239_))))
                    (___match2814028141_
                     _e2506725234_
                     _hd2506825237_
                     _tl2506925239_))
                (___match2814028141_
                 _e2506725234_
                 _hd2506825237_
                 _tl2506925239_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2814028141_
                                                     _e2506725234_
                                                     _hd2506825237_
                                                     _tl2506925239_))))
                                            (___match2814028141_
                                             _e2506725234_
                                             _hd2506825237_
                                             _tl2506925239_))))
                                    (let ((_-hash-ref2512325507_
                                           (reverse _-hash-ref2511925386_))
                                          (_-xkwvar2512225505_
                                           (reverse _-xkwvar2511825384_))
                                          (_key2512125503_
                                           (reverse _key2511725382_))
                                          (_-absent-value2512025501_
                                           (reverse _-absent-value2511625380_)))
                                      (if (gx#stx-null? _tl2507825263_)
                                          (let ((_L25510_ _hd2513125370_)
                                                (_L25511_
                                                 _-absent-value2512025501_)
                                                (_L25512_ _key2512125503_)
                                                (_L25513_ _-xkwvar2512225505_)
                                                (_L25514_
                                                 _-hash-ref2512325507_)
                                                (_L25515_ _hd2510725341_)
                                                (_L25516_ _hd2509825317_)
                                                (_L25517_ _hd2508925293_)
                                                (_L25518_ _tl2507525255_)
                                                (_L25519_ _hd2507425253_))
                                            (if (and (gx#identifier? _L25519_)
                                                     (gx#identifier? _L25518_)
                                                     (gxc#runtime-identifier=?
                                                      _L25517_
                                                      'apply)
                                                     (gx#free-identifier=?
                                                      _L25519_
                                                      _L25515_)
                                                     (andmap1 gx#stx-keyword?
                                                              (foldr1 (lambda (_g2557225575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2557325577_)
                                (cons _g2557225575_ _g2557325577_))
                              '()
                              _L25512_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (andmap1 (lambda (_g2557925581_)
                                                                (gxc#runtime-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2557925581_
                         'hash-ref))
                      (foldr1 (lambda (_g2558325586_ _g2558425588_)
                                (cons _g2558325586_ _g2558425588_))
                              '()
                              _L25514_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (andmap1 (lambda (_g2559025592_)
                                                                (gxc#runtime-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2559025592_
                         'absent-value))
                      (foldr1 (lambda (_g2559425597_ _g2559525599_)
                                (cons _g2559425597_ _g2559525599_))
                              '()
                              _L25511_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (andmap1 (lambda (_g2560125603_)
                                                                (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g2560125603_
                         _L25519_))
                      (foldr1 (lambda (_g2560525608_ _g2560625610_)
                                (cons _g2560525608_ _g2560625610_))
                              '()
                              _L25513_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2767927680_
                                                 _L25510_
                                                 _L25511_
                                                 _L25512_
                                                 _L25513_
                                                 _L25514_
                                                 _L25515_
                                                 _L25516_
                                                 _L25517_
                                                 _L25518_
                                                 _L25519_)
                                                (___match2814028141_
                                                 _e2506725234_
                                                 _hd2506825237_
                                                 _tl2506925239_)))
                                          (___match2814028141_
                                           _e2506725234_
                                           _hd2506825237_
                                           _tl2506925239_)))))))
                      (_loop2511225375_ _target2510925346_ '() '() '() '()))))
                 (___match2800628007_
                  (lambda (_e2506725234_
                           _hd2506825237_
                           _tl2506925239_
                           _e2507025242_
                           _hd2507125245_
                           _tl2507225247_)
                    (if (gx#stx-pair? _hd2507125245_)
                        (let ((_e2507325250_ (gx#stx-e _hd2507125245_)))
                          (let ((_tl2507525255_ (##cdr _e2507325250_))
                                (_hd2507425253_ (##car _e2507325250_)))
                            (if (gx#stx-pair? _tl2507225247_)
                                (let ((_e2507625258_
                                       (gx#stx-e _tl2507225247_)))
                                  (let ((_tl2507825263_ (##cdr _e2507625258_))
                                        (_hd2507725261_ (##car _e2507625258_)))
                                    (if (gx#stx-pair? _hd2507725261_)
                                        (let ((_e2507925266_
                                               (gx#stx-e _hd2507725261_)))
                                          (let ((_tl2508125271_
                                                 (##cdr _e2507925266_))
                                                (_hd2508025269_
                                                 (##car _e2507925266_)))
                                            (if (gx#identifier? _hd2508025269_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd2508025269_)
                                                    (if (gx#stx-pair?
                                                         _tl2508125271_)
                                                        (let ((_e2508225274_
                                                               (gx#stx-e
                                                                _tl2508125271_)))
                                                          (let ((_tl2508425279_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2508225274_))
                        (_hd2508325277_ (##car _e2508225274_)))
                    (if (gx#stx-pair? _hd2508325277_)
                        (let ((_e2508525282_ (gx#stx-e _hd2508325277_)))
                          (let ((_tl2508725287_ (##cdr _e2508525282_))
                                (_hd2508625285_ (##car _e2508525282_)))
                            (if (gx#identifier? _hd2508625285_)
                                (if (gx#stx-eq? '%#ref _hd2508625285_)
                                    (if (gx#stx-pair? _tl2508725287_)
                                        (let ((_e2508825290_
                                               (gx#stx-e _tl2508725287_)))
                                          (let ((_tl2509025295_
                                                 (##cdr _e2508825290_))
                                                (_hd2508925293_
                                                 (##car _e2508825290_)))
                                            (if (gx#stx-null? _tl2509025295_)
                                                (if (gx#stx-pair?
                                                     _tl2508425279_)
                                                    (let ((_e2509125298_
                                                           (gx#stx-e
                                                            _tl2508425279_)))
                                                      (let ((_tl2509325303_
                                                             (##cdr _e2509125298_))
                                                            (_hd2509225301_
                                                             (##car _e2509125298_)))
                                                        (if (gx#stx-pair?
                                                             _hd2509225301_)
                                                            (let ((_e2509425306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2509225301_)))
                      (let ((_tl2509625311_ (##cdr _e2509425306_))
                            (_hd2509525309_ (##car _e2509425306_)))
                        (if (gx#identifier? _hd2509525309_)
                            (if (gx#stx-eq? '%#ref _hd2509525309_)
                                (if (gx#stx-pair? _tl2509625311_)
                                    (let ((_e2509725314_
                                           (gx#stx-e _tl2509625311_)))
                                      (let ((_tl2509925319_
                                             (##cdr _e2509725314_))
                                            (_hd2509825317_
                                             (##car _e2509725314_)))
                                        (if (gx#stx-null? _tl2509925319_)
                                            (if (gx#stx-pair? _tl2509325303_)
                                                (let ((_e2510025322_
                                                       (gx#stx-e
                                                        _tl2509325303_)))
                                                  (let ((_tl2510225327_
                                                         (##cdr _e2510025322_))
                                                        (_hd2510125325_
                                                         (##car _e2510025322_)))
                                                    (if (gx#stx-pair?
                                                         _hd2510125325_)
                                                        (let ((_e2510325330_
                                                               (gx#stx-e
                                                                _hd2510125325_)))
                                                          (let ((_tl2510525335_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2510325330_))
                        (_hd2510425333_ (##car _e2510325330_)))
                    (if (gx#identifier? _hd2510425333_)
                        (if (gx#stx-eq? '%#ref _hd2510425333_)
                            (if (gx#stx-pair? _tl2510525335_)
                                (let ((_e2510625338_
                                       (gx#stx-e _tl2510525335_)))
                                  (let ((_tl2510825343_ (##cdr _e2510625338_))
                                        (_hd2510725341_ (##car _e2510625338_)))
                                    (if (gx#stx-null? _tl2510825343_)
                                        (if (gx#stx-pair/null? _tl2510225327_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2510225327_)
                                                      '1)
                                                (let ((___splice2768127682_
                                                       (gx#syntax-split-splice
                                                        _tl2510225327_
                                                        '1)))
                                                  (let ((_tl2511125348_
                                                         (##vector-ref
                                                          ___splice2768127682_
                                                          '1))
                                                        (_target2510925346_
                                                         (##vector-ref
                                                          ___splice2768127682_
                                                          '0)))
                                                    (if (gx#stx-pair?
                                                         _tl2511125348_)
                                                        (let ((_e2512425351_
                                                               (gx#stx-e
                                                                _tl2511125348_)))
                                                          (let ((_tl2512625356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2512425351_))
                        (_hd2512525354_ (##car _e2512425351_)))
                    (if (gx#stx-pair? _hd2512525354_)
                        (let ((_e2512725359_ (gx#stx-e _hd2512525354_)))
                          (let ((_tl2512925364_ (##cdr _e2512725359_))
                                (_hd2512825362_ (##car _e2512725359_)))
                            (if (gx#identifier? _hd2512825362_)
                                (if (gx#stx-eq? '%#ref _hd2512825362_)
                                    (if (gx#stx-pair? _tl2512925364_)
                                        (let ((_e2513025367_
                                               (gx#stx-e _tl2512925364_)))
                                          (let ((_tl2513225372_
                                                 (##cdr _e2513025367_))
                                                (_hd2513125370_
                                                 (##car _e2513025367_)))
                                            (if (gx#stx-null? _tl2513225372_)
                                                (if (gx#stx-null?
                                                     _tl2512625356_)
                                                    (___match2813428135_
                                                     _e2506725234_
                                                     _hd2506825237_
                                                     _tl2506925239_
                                                     _e2507025242_
                                                     _hd2507125245_
                                                     _tl2507225247_
                                                     _e2507325250_
                                                     _hd2507425253_
                                                     _tl2507525255_
                                                     _e2507625258_
                                                     _hd2507725261_
                                                     _tl2507825263_
                                                     _e2507925266_
                                                     _hd2508025269_
                                                     _tl2508125271_
                                                     _e2508225274_
                                                     _hd2508325277_
                                                     _tl2508425279_
                                                     _e2508525282_
                                                     _hd2508625285_
                                                     _tl2508725287_
                                                     _e2508825290_
                                                     _hd2508925293_
                                                     _tl2509025295_
                                                     _e2509125298_
                                                     _hd2509225301_
                                                     _tl2509325303_
                                                     _e2509425306_
                                                     _hd2509525309_
                                                     _tl2509625311_
                                                     _e2509725314_
                                                     _hd2509825317_
                                                     _tl2509925319_
                                                     _e2510025322_
                                                     _hd2510125325_
                                                     _tl2510225327_
                                                     _e2510325330_
                                                     _hd2510425333_
                                                     _tl2510525335_
                                                     _e2510625338_
                                                     _hd2510725341_
                                                     _tl2510825343_
                                                     ___splice2768127682_
                                                     _target2510925346_
                                                     _tl2511125348_
                                                     _e2512425351_
                                                     _hd2512525354_
                                                     _tl2512625356_
                                                     _e2512725359_
                                                     _hd2512825362_
                                                     _tl2512925364_
                                                     _e2513025367_
                                                     _hd2513125370_
                                                     _tl2513225372_)
                                                    (___match2814028141_
                                                     _e2506725234_
                                                     _hd2506825237_
                                                     _tl2506925239_))
                                                (___match2814028141_
                                                 _e2506725234_
                                                 _hd2506825237_
                                                 _tl2506925239_))))
                                        (___match2814028141_
                                         _e2506725234_
                                         _hd2506825237_
                                         _tl2506925239_))
                                    (___match2814028141_
                                     _e2506725234_
                                     _hd2506825237_
                                     _tl2506925239_))
                                (___match2814028141_
                                 _e2506725234_
                                 _hd2506825237_
                                 _tl2506925239_))))
                        (___match2814028141_
                         _e2506725234_
                         _hd2506825237_
                         _tl2506925239_))))
                (___match2814028141_
                 _e2506725234_
                 _hd2506825237_
                 _tl2506925239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2814028141_
                                                 _e2506725234_
                                                 _hd2506825237_
                                                 _tl2506925239_))
                                            (___match2814028141_
                                             _e2506725234_
                                             _hd2506825237_
                                             _tl2506925239_))
                                        (___match2814028141_
                                         _e2506725234_
                                         _hd2506825237_
                                         _tl2506925239_))))
                                (___match2814028141_
                                 _e2506725234_
                                 _hd2506825237_
                                 _tl2506925239_))
                            (___match2814028141_
                             _e2506725234_
                             _hd2506825237_
                             _tl2506925239_))
                        (___match2814028141_
                         _e2506725234_
                         _hd2506825237_
                         _tl2506925239_))))
                (___match2814028141_
                 _e2506725234_
                 _hd2506825237_
                 _tl2506925239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2814028141_
                                                 _e2506725234_
                                                 _hd2506825237_
                                                 _tl2506925239_))
                                            (___match2814028141_
                                             _e2506725234_
                                             _hd2506825237_
                                             _tl2506925239_))))
                                    (___match2814028141_
                                     _e2506725234_
                                     _hd2506825237_
                                     _tl2506925239_))
                                (___match2814028141_
                                 _e2506725234_
                                 _hd2506825237_
                                 _tl2506925239_))
                            (___match2814028141_
                             _e2506725234_
                             _hd2506825237_
                             _tl2506925239_))))
                    (___match2814028141_
                     _e2506725234_
                     _hd2506825237_
                     _tl2506925239_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2814028141_
                                                     _e2506725234_
                                                     _hd2506825237_
                                                     _tl2506925239_))
                                                (___match2814028141_
                                                 _e2506725234_
                                                 _hd2506825237_
                                                 _tl2506925239_))))
                                        (___match2814028141_
                                         _e2506725234_
                                         _hd2506825237_
                                         _tl2506925239_))
                                    (___match2814028141_
                                     _e2506725234_
                                     _hd2506825237_
                                     _tl2506925239_))
                                (___match2814028141_
                                 _e2506725234_
                                 _hd2506825237_
                                 _tl2506925239_))))
                        (___match2814028141_
                         _e2506725234_
                         _hd2506825237_
                         _tl2506925239_))))
                (___match2814028141_
                 _e2506725234_
                 _hd2506825237_
                 _tl2506925239_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2814028141_
                                                     _e2506725234_
                                                     _hd2506825237_
                                                     _tl2506925239_))
                                                (___match2814028141_
                                                 _e2506725234_
                                                 _hd2506825237_
                                                 _tl2506925239_))))
                                        (___match2814028141_
                                         _e2506725234_
                                         _hd2506825237_
                                         _tl2506925239_))))
                                (___match2814028141_
                                 _e2506725234_
                                 _hd2506825237_
                                 _tl2506925239_))))
                        (___match2814028141_
                         _e2506725234_
                         _hd2506825237_
                         _tl2506925239_))))
                 (___match2799427995_
                  (lambda (_e2500025625_
                           _hd2500125628_
                           _tl2500225630_
                           _e2500325633_
                           _hd2500425636_
                           _tl2500525638_
                           _e2500625641_
                           _hd2500725644_
                           _tl2500825646_
                           _e2500925649_
                           _hd2501025652_
                           _tl2501125654_
                           _e2501225657_
                           _hd2501325660_
                           _tl2501425662_
                           _e2501525665_
                           _hd2501625668_
                           _tl2501725670_
                           _e2501825673_
                           _hd2501925676_
                           _tl2502025678_
                           _e2502125681_
                           _hd2502225684_
                           _tl2502325686_
                           _e2502425689_
                           _hd2502525692_
                           _tl2502625694_
                           _e2502725697_
                           _hd2502825700_
                           _tl2502925702_
                           _e2503025705_
                           _hd2503125708_
                           _tl2503225710_
                           _e2503325713_
                           _hd2503425716_
                           _tl2503525718_
                           _e2503625721_
                           _hd2503725724_
                           _tl2503825726_
                           _e2503925729_
                           _hd2504025732_
                           _tl2504125734_
                           _e2504225737_
                           _hd2504325740_
                           _tl2504425742_
                           _e2504525745_
                           _hd2504625748_
                           _tl2504725750_
                           _e2504825753_
                           _hd2504925756_
                           _tl2505025758_
                           _e2505125761_
                           _hd2505225764_
                           _tl2505325766_
                           _e2505425769_
                           _hd2505525772_
                           _tl2505625774_)
                    (let ((_L25777_ _hd2505525772_)
                          (_L25778_ _hd2504625748_)
                          (_L25779_ _hd2503725724_)
                          (_L25780_ _hd2502825700_)
                          (_L25781_ _hd2501925676_)
                          (_L25782_ _hd2500425636_))
                      (if (and (gx#identifier? _L25782_)
                               (gxc#runtime-identifier=? _L25781_ 'apply)
                               (gxc#runtime-identifier=?
                                _L25780_
                                'keyword-dispatch)
                               (gx#free-identifier=? _L25782_ _L25777_))
                          (___kont2767727678_
                           _L25777_
                           _L25778_
                           _L25779_
                           _L25780_
                           _L25781_
                           _L25782_)
                          (___match2800628007_
                           _e2500025625_
                           _hd2500125628_
                           _tl2500225630_
                           _e2500325633_
                           _hd2500425636_
                           _tl2500525638_)))))
                 (___match2791827919_
                  (lambda (_e2500025625_
                           _hd2500125628_
                           _tl2500225630_
                           _e2500325633_
                           _hd2500425636_
                           _tl2500525638_
                           _e2500625641_
                           _hd2500725644_
                           _tl2500825646_
                           _e2500925649_
                           _hd2501025652_
                           _tl2501125654_
                           _e2501225657_
                           _hd2501325660_
                           _tl2501425662_
                           _e2501525665_
                           _hd2501625668_
                           _tl2501725670_
                           _e2501825673_
                           _hd2501925676_
                           _tl2502025678_
                           _e2502125681_
                           _hd2502225684_
                           _tl2502325686_
                           _e2502425689_
                           _hd2502525692_
                           _tl2502625694_
                           _e2502725697_
                           _hd2502825700_
                           _tl2502925702_)
                    (if (gx#stx-pair? _tl2502325686_)
                        (let ((_e2503025705_ (gx#stx-e _tl2502325686_)))
                          (let ((_tl2503225710_ (##cdr _e2503025705_))
                                (_hd2503125708_ (##car _e2503025705_)))
                            (if (gx#stx-pair? _hd2503125708_)
                                (let ((_e2503325713_
                                       (gx#stx-e _hd2503125708_)))
                                  (let ((_tl2503525718_ (##cdr _e2503325713_))
                                        (_hd2503425716_ (##car _e2503325713_)))
                                    (if (gx#identifier? _hd2503425716_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd2503425716_)
                                            (if (gx#stx-pair? _tl2503525718_)
                                                (let ((_e2503625721_
                                                       (gx#stx-e
                                                        _tl2503525718_)))
                                                  (let ((_tl2503825726_
                                                         (##cdr _e2503625721_))
                                                        (_hd2503725724_
                                                         (##car _e2503625721_)))
                                                    (if (gx#stx-null?
                                                         _tl2503825726_)
                                                        (if (gx#stx-pair?
                                                             _tl2503225710_)
                                                            (let ((_e2503925729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2503225710_)))
                      (let ((_tl2504125734_ (##cdr _e2503925729_))
                            (_hd2504025732_ (##car _e2503925729_)))
                        (if (gx#stx-pair? _hd2504025732_)
                            (let ((_e2504225737_ (gx#stx-e _hd2504025732_)))
                              (let ((_tl2504425742_ (##cdr _e2504225737_))
                                    (_hd2504325740_ (##car _e2504225737_)))
                                (if (gx#identifier? _hd2504325740_)
                                    (if (gx#stx-eq? '%#ref _hd2504325740_)
                                        (if (gx#stx-pair? _tl2504425742_)
                                            (let ((_e2504525745_
                                                   (gx#stx-e _tl2504425742_)))
                                              (let ((_tl2504725750_
                                                     (##cdr _e2504525745_))
                                                    (_hd2504625748_
                                                     (##car _e2504525745_)))
                                                (if (gx#stx-null?
                                                     _tl2504725750_)
                                                    (if (gx#stx-pair?
                                                         _tl2504125734_)
                                                        (let ((_e2504825753_
                                                               (gx#stx-e
                                                                _tl2504125734_)))
                                                          (let ((_tl2505025758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2504825753_))
                        (_hd2504925756_ (##car _e2504825753_)))
                    (if (gx#stx-pair? _hd2504925756_)
                        (let ((_e2505125761_ (gx#stx-e _hd2504925756_)))
                          (let ((_tl2505325766_ (##cdr _e2505125761_))
                                (_hd2505225764_ (##car _e2505125761_)))
                            (if (gx#identifier? _hd2505225764_)
                                (if (gx#stx-eq? '%#ref _hd2505225764_)
                                    (if (gx#stx-pair? _tl2505325766_)
                                        (let ((_e2505425769_
                                               (gx#stx-e _tl2505325766_)))
                                          (let ((_tl2505625774_
                                                 (##cdr _e2505425769_))
                                                (_hd2505525772_
                                                 (##car _e2505425769_)))
                                            (if (gx#stx-null? _tl2505625774_)
                                                (if (gx#stx-null?
                                                     _tl2505025758_)
                                                    (if (gx#stx-null?
                                                         _tl2500825646_)
                                                        (___match2799427995_
                                                         _e2500025625_
                                                         _hd2500125628_
                                                         _tl2500225630_
                                                         _e2500325633_
                                                         _hd2500425636_
                                                         _tl2500525638_
                                                         _e2500625641_
                                                         _hd2500725644_
                                                         _tl2500825646_
                                                         _e2500925649_
                                                         _hd2501025652_
                                                         _tl2501125654_
                                                         _e2501225657_
                                                         _hd2501325660_
                                                         _tl2501425662_
                                                         _e2501525665_
                                                         _hd2501625668_
                                                         _tl2501725670_
                                                         _e2501825673_
                                                         _hd2501925676_
                                                         _tl2502025678_
                                                         _e2502125681_
                                                         _hd2502225684_
                                                         _tl2502325686_
                                                         _e2502425689_
                                                         _hd2502525692_
                                                         _tl2502625694_
                                                         _e2502725697_
                                                         _hd2502825700_
                                                         _tl2502925702_
                                                         _e2503025705_
                                                         _hd2503125708_
                                                         _tl2503225710_
                                                         _e2503325713_
                                                         _hd2503425716_
                                                         _tl2503525718_
                                                         _e2503625721_
                                                         _hd2503725724_
                                                         _tl2503825726_
                                                         _e2503925729_
                                                         _hd2504025732_
                                                         _tl2504125734_
                                                         _e2504225737_
                                                         _hd2504325740_
                                                         _tl2504425742_
                                                         _e2504525745_
                                                         _hd2504625748_
                                                         _tl2504725750_
                                                         _e2504825753_
                                                         _hd2504925756_
                                                         _tl2505025758_
                                                         _e2505125761_
                                                         _hd2505225764_
                                                         _tl2505325766_
                                                         _e2505425769_
                                                         _hd2505525772_
                                                         _tl2505625774_)
                                                        (___match2800628007_
                                                         _e2500025625_
                                                         _hd2500125628_
                                                         _tl2500225630_
                                                         _e2500325633_
                                                         _hd2500425636_
                                                         _tl2500525638_))
                                                    (___match2800628007_
                                                     _e2500025625_
                                                     _hd2500125628_
                                                     _tl2500225630_
                                                     _e2500325633_
                                                     _hd2500425636_
                                                     _tl2500525638_))
                                                (___match2800628007_
                                                 _e2500025625_
                                                 _hd2500125628_
                                                 _tl2500225630_
                                                 _e2500325633_
                                                 _hd2500425636_
                                                 _tl2500525638_))))
                                        (___match2800628007_
                                         _e2500025625_
                                         _hd2500125628_
                                         _tl2500225630_
                                         _e2500325633_
                                         _hd2500425636_
                                         _tl2500525638_))
                                    (___match2800628007_
                                     _e2500025625_
                                     _hd2500125628_
                                     _tl2500225630_
                                     _e2500325633_
                                     _hd2500425636_
                                     _tl2500525638_))
                                (___match2800628007_
                                 _e2500025625_
                                 _hd2500125628_
                                 _tl2500225630_
                                 _e2500325633_
                                 _hd2500425636_
                                 _tl2500525638_))))
                        (___match2800628007_
                         _e2500025625_
                         _hd2500125628_
                         _tl2500225630_
                         _e2500325633_
                         _hd2500425636_
                         _tl2500525638_))))
                (___match2800628007_
                 _e2500025625_
                 _hd2500125628_
                 _tl2500225630_
                 _e2500325633_
                 _hd2500425636_
                 _tl2500525638_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2800628007_
                                                     _e2500025625_
                                                     _hd2500125628_
                                                     _tl2500225630_
                                                     _e2500325633_
                                                     _hd2500425636_
                                                     _tl2500525638_))))
                                            (___match2800628007_
                                             _e2500025625_
                                             _hd2500125628_
                                             _tl2500225630_
                                             _e2500325633_
                                             _hd2500425636_
                                             _tl2500525638_))
                                        (___match2800628007_
                                         _e2500025625_
                                         _hd2500125628_
                                         _tl2500225630_
                                         _e2500325633_
                                         _hd2500425636_
                                         _tl2500525638_))
                                    (___match2800628007_
                                     _e2500025625_
                                     _hd2500125628_
                                     _tl2500225630_
                                     _e2500325633_
                                     _hd2500425636_
                                     _tl2500525638_))))
                            (___match2800628007_
                             _e2500025625_
                             _hd2500125628_
                             _tl2500225630_
                             _e2500325633_
                             _hd2500425636_
                             _tl2500525638_))))
                    (___match2800628007_
                     _e2500025625_
                     _hd2500125628_
                     _tl2500225630_
                     _e2500325633_
                     _hd2500425636_
                     _tl2500525638_))
                (___match2800628007_
                 _e2500025625_
                 _hd2500125628_
                 _tl2500225630_
                 _e2500325633_
                 _hd2500425636_
                 _tl2500525638_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2800628007_
                                                 _e2500025625_
                                                 _hd2500125628_
                                                 _tl2500225630_
                                                 _e2500325633_
                                                 _hd2500425636_
                                                 _tl2500525638_))
                                            (___match2800628007_
                                             _e2500025625_
                                             _hd2500125628_
                                             _tl2500225630_
                                             _e2500325633_
                                             _hd2500425636_
                                             _tl2500525638_))
                                        (___match2800628007_
                                         _e2500025625_
                                         _hd2500125628_
                                         _tl2500225630_
                                         _e2500325633_
                                         _hd2500425636_
                                         _tl2500525638_))))
                                (___match2800628007_
                                 _e2500025625_
                                 _hd2500125628_
                                 _tl2500225630_
                                 _e2500325633_
                                 _hd2500425636_
                                 _tl2500525638_))))
                        (___match2800628007_
                         _e2500025625_
                         _hd2500125628_
                         _tl2500225630_
                         _e2500325633_
                         _hd2500425636_
                         _tl2500525638_))))
                 (___match2785427855_
                  (lambda (_e2500025625_
                           _hd2500125628_
                           _tl2500225630_
                           _e2500325633_
                           _hd2500425636_
                           _tl2500525638_)
                    (if (gx#stx-pair? _tl2500525638_)
                        (let ((_e2500625641_ (gx#stx-e _tl2500525638_)))
                          (let ((_tl2500825646_ (##cdr _e2500625641_))
                                (_hd2500725644_ (##car _e2500625641_)))
                            (if (gx#stx-pair? _hd2500725644_)
                                (let ((_e2500925649_
                                       (gx#stx-e _hd2500725644_)))
                                  (let ((_tl2501125654_ (##cdr _e2500925649_))
                                        (_hd2501025652_ (##car _e2500925649_)))
                                    (if (gx#identifier? _hd2501025652_)
                                        (if (gx#stx-eq? '%#call _hd2501025652_)
                                            (if (gx#stx-pair? _tl2501125654_)
                                                (let ((_e2501225657_
                                                       (gx#stx-e
                                                        _tl2501125654_)))
                                                  (let ((_tl2501425662_
                                                         (##cdr _e2501225657_))
                                                        (_hd2501325660_
                                                         (##car _e2501225657_)))
                                                    (if (gx#stx-pair?
                                                         _hd2501325660_)
                                                        (let ((_e2501525665_
                                                               (gx#stx-e
                                                                _hd2501325660_)))
                                                          (let ((_tl2501725670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2501525665_))
                        (_hd2501625668_ (##car _e2501525665_)))
                    (if (gx#identifier? _hd2501625668_)
                        (if (gx#stx-eq? '%#ref _hd2501625668_)
                            (if (gx#stx-pair? _tl2501725670_)
                                (let ((_e2501825673_
                                       (gx#stx-e _tl2501725670_)))
                                  (let ((_tl2502025678_ (##cdr _e2501825673_))
                                        (_hd2501925676_ (##car _e2501825673_)))
                                    (if (gx#stx-null? _tl2502025678_)
                                        (if (gx#stx-pair? _tl2501425662_)
                                            (let ((_e2502125681_
                                                   (gx#stx-e _tl2501425662_)))
                                              (let ((_tl2502325686_
                                                     (##cdr _e2502125681_))
                                                    (_hd2502225684_
                                                     (##car _e2502125681_)))
                                                (if (gx#stx-pair?
                                                     _hd2502225684_)
                                                    (let ((_e2502425689_
                                                           (gx#stx-e
                                                            _hd2502225684_)))
                                                      (let ((_tl2502625694_
                                                             (##cdr _e2502425689_))
                                                            (_hd2502525692_
                                                             (##car _e2502425689_)))
                                                        (if (gx#identifier?
                                                             _hd2502525692_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2502525692_)
                        (if (gx#stx-pair? _tl2502625694_)
                            (let ((_e2502725697_ (gx#stx-e _tl2502625694_)))
                              (let ((_tl2502925702_ (##cdr _e2502725697_))
                                    (_hd2502825700_ (##car _e2502725697_)))
                                (if (gx#stx-null? _tl2502925702_)
                                    (if (gx#stx-pair? _tl2502325686_)
                                        (let ((_e2503025705_
                                               (gx#stx-e _tl2502325686_)))
                                          (let ((_tl2503225710_
                                                 (##cdr _e2503025705_))
                                                (_hd2503125708_
                                                 (##car _e2503025705_)))
                                            (if (gx#stx-pair? _hd2503125708_)
                                                (let ((_e2503325713_
                                                       (gx#stx-e
                                                        _hd2503125708_)))
                                                  (let ((_tl2503525718_
                                                         (##cdr _e2503325713_))
                                                        (_hd2503425716_
                                                         (##car _e2503325713_)))
                                                    (if (gx#identifier?
                                                         _hd2503425716_)
                                                        (if (gx#stx-eq?
                                                             '%#quote
                                                             _hd2503425716_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2503525718_)
                        (let ((_e2503625721_ (gx#stx-e _tl2503525718_)))
                          (let ((_tl2503825726_ (##cdr _e2503625721_))
                                (_hd2503725724_ (##car _e2503625721_)))
                            (if (gx#stx-null? _tl2503825726_)
                                (if (gx#stx-pair? _tl2503225710_)
                                    (let ((_e2503925729_
                                           (gx#stx-e _tl2503225710_)))
                                      (let ((_tl2504125734_
                                             (##cdr _e2503925729_))
                                            (_hd2504025732_
                                             (##car _e2503925729_)))
                                        (if (gx#stx-pair? _hd2504025732_)
                                            (let ((_e2504225737_
                                                   (gx#stx-e _hd2504025732_)))
                                              (let ((_tl2504425742_
                                                     (##cdr _e2504225737_))
                                                    (_hd2504325740_
                                                     (##car _e2504225737_)))
                                                (if (gx#identifier?
                                                     _hd2504325740_)
                                                    (if (gx#stx-eq?
                                                         '%#ref
                                                         _hd2504325740_)
                                                        (if (gx#stx-pair?
                                                             _tl2504425742_)
                                                            (let ((_e2504525745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2504425742_)))
                      (let ((_tl2504725750_ (##cdr _e2504525745_))
                            (_hd2504625748_ (##car _e2504525745_)))
                        (if (gx#stx-null? _tl2504725750_)
                            (if (gx#stx-pair? _tl2504125734_)
                                (let ((_e2504825753_
                                       (gx#stx-e _tl2504125734_)))
                                  (let ((_tl2505025758_ (##cdr _e2504825753_))
                                        (_hd2504925756_ (##car _e2504825753_)))
                                    (if (gx#stx-pair? _hd2504925756_)
                                        (let ((_e2505125761_
                                               (gx#stx-e _hd2504925756_)))
                                          (let ((_tl2505325766_
                                                 (##cdr _e2505125761_))
                                                (_hd2505225764_
                                                 (##car _e2505125761_)))
                                            (if (gx#identifier? _hd2505225764_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _hd2505225764_)
                                                    (if (gx#stx-pair?
                                                         _tl2505325766_)
                                                        (let ((_e2505425769_
                                                               (gx#stx-e
                                                                _tl2505325766_)))
                                                          (let ((_tl2505625774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2505425769_))
                        (_hd2505525772_ (##car _e2505425769_)))
                    (if (gx#stx-null? _tl2505625774_)
                        (if (gx#stx-null? _tl2505025758_)
                            (if (gx#stx-null? _tl2500825646_)
                                (___match2799427995_
                                 _e2500025625_
                                 _hd2500125628_
                                 _tl2500225630_
                                 _e2500325633_
                                 _hd2500425636_
                                 _tl2500525638_
                                 _e2500625641_
                                 _hd2500725644_
                                 _tl2500825646_
                                 _e2500925649_
                                 _hd2501025652_
                                 _tl2501125654_
                                 _e2501225657_
                                 _hd2501325660_
                                 _tl2501425662_
                                 _e2501525665_
                                 _hd2501625668_
                                 _tl2501725670_
                                 _e2501825673_
                                 _hd2501925676_
                                 _tl2502025678_
                                 _e2502125681_
                                 _hd2502225684_
                                 _tl2502325686_
                                 _e2502425689_
                                 _hd2502525692_
                                 _tl2502625694_
                                 _e2502725697_
                                 _hd2502825700_
                                 _tl2502925702_
                                 _e2503025705_
                                 _hd2503125708_
                                 _tl2503225710_
                                 _e2503325713_
                                 _hd2503425716_
                                 _tl2503525718_
                                 _e2503625721_
                                 _hd2503725724_
                                 _tl2503825726_
                                 _e2503925729_
                                 _hd2504025732_
                                 _tl2504125734_
                                 _e2504225737_
                                 _hd2504325740_
                                 _tl2504425742_
                                 _e2504525745_
                                 _hd2504625748_
                                 _tl2504725750_
                                 _e2504825753_
                                 _hd2504925756_
                                 _tl2505025758_
                                 _e2505125761_
                                 _hd2505225764_
                                 _tl2505325766_
                                 _e2505425769_
                                 _hd2505525772_
                                 _tl2505625774_)
                                (___match2800628007_
                                 _e2500025625_
                                 _hd2500125628_
                                 _tl2500225630_
                                 _e2500325633_
                                 _hd2500425636_
                                 _tl2500525638_))
                            (___match2800628007_
                             _e2500025625_
                             _hd2500125628_
                             _tl2500225630_
                             _e2500325633_
                             _hd2500425636_
                             _tl2500525638_))
                        (___match2800628007_
                         _e2500025625_
                         _hd2500125628_
                         _tl2500225630_
                         _e2500325633_
                         _hd2500425636_
                         _tl2500525638_))))
                (___match2800628007_
                 _e2500025625_
                 _hd2500125628_
                 _tl2500225630_
                 _e2500325633_
                 _hd2500425636_
                 _tl2500525638_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2800628007_
                                                     _e2500025625_
                                                     _hd2500125628_
                                                     _tl2500225630_
                                                     _e2500325633_
                                                     _hd2500425636_
                                                     _tl2500525638_))
                                                (___match2800628007_
                                                 _e2500025625_
                                                 _hd2500125628_
                                                 _tl2500225630_
                                                 _e2500325633_
                                                 _hd2500425636_
                                                 _tl2500525638_))))
                                        (___match2800628007_
                                         _e2500025625_
                                         _hd2500125628_
                                         _tl2500225630_
                                         _e2500325633_
                                         _hd2500425636_
                                         _tl2500525638_))))
                                (___match2800628007_
                                 _e2500025625_
                                 _hd2500125628_
                                 _tl2500225630_
                                 _e2500325633_
                                 _hd2500425636_
                                 _tl2500525638_))
                            (___match2800628007_
                             _e2500025625_
                             _hd2500125628_
                             _tl2500225630_
                             _e2500325633_
                             _hd2500425636_
                             _tl2500525638_))))
                    (___match2800628007_
                     _e2500025625_
                     _hd2500125628_
                     _tl2500225630_
                     _e2500325633_
                     _hd2500425636_
                     _tl2500525638_))
                (___match2800628007_
                 _e2500025625_
                 _hd2500125628_
                 _tl2500225630_
                 _e2500325633_
                 _hd2500425636_
                 _tl2500525638_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2800628007_
                                                     _e2500025625_
                                                     _hd2500125628_
                                                     _tl2500225630_
                                                     _e2500325633_
                                                     _hd2500425636_
                                                     _tl2500525638_))))
                                            (___match2800628007_
                                             _e2500025625_
                                             _hd2500125628_
                                             _tl2500225630_
                                             _e2500325633_
                                             _hd2500425636_
                                             _tl2500525638_))))
                                    (___match2800628007_
                                     _e2500025625_
                                     _hd2500125628_
                                     _tl2500225630_
                                     _e2500325633_
                                     _hd2500425636_
                                     _tl2500525638_))
                                (___match2800628007_
                                 _e2500025625_
                                 _hd2500125628_
                                 _tl2500225630_
                                 _e2500325633_
                                 _hd2500425636_
                                 _tl2500525638_))))
                        (___match2800628007_
                         _e2500025625_
                         _hd2500125628_
                         _tl2500225630_
                         _e2500325633_
                         _hd2500425636_
                         _tl2500525638_))
                    (___match2800628007_
                     _e2500025625_
                     _hd2500125628_
                     _tl2500225630_
                     _e2500325633_
                     _hd2500425636_
                     _tl2500525638_))
                (___match2800628007_
                 _e2500025625_
                 _hd2500125628_
                 _tl2500225630_
                 _e2500325633_
                 _hd2500425636_
                 _tl2500525638_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2800628007_
                                                 _e2500025625_
                                                 _hd2500125628_
                                                 _tl2500225630_
                                                 _e2500325633_
                                                 _hd2500425636_
                                                 _tl2500525638_))))
                                        (___match2800628007_
                                         _e2500025625_
                                         _hd2500125628_
                                         _tl2500225630_
                                         _e2500325633_
                                         _hd2500425636_
                                         _tl2500525638_))
                                    (___match2800628007_
                                     _e2500025625_
                                     _hd2500125628_
                                     _tl2500225630_
                                     _e2500325633_
                                     _hd2500425636_
                                     _tl2500525638_))))
                            (___match2800628007_
                             _e2500025625_
                             _hd2500125628_
                             _tl2500225630_
                             _e2500325633_
                             _hd2500425636_
                             _tl2500525638_))
                        (___match2800628007_
                         _e2500025625_
                         _hd2500125628_
                         _tl2500225630_
                         _e2500325633_
                         _hd2500425636_
                         _tl2500525638_))
                    (___match2800628007_
                     _e2500025625_
                     _hd2500125628_
                     _tl2500225630_
                     _e2500325633_
                     _hd2500425636_
                     _tl2500525638_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2800628007_
                                                     _e2500025625_
                                                     _hd2500125628_
                                                     _tl2500225630_
                                                     _e2500325633_
                                                     _hd2500425636_
                                                     _tl2500525638_))))
                                            (___match2800628007_
                                             _e2500025625_
                                             _hd2500125628_
                                             _tl2500225630_
                                             _e2500325633_
                                             _hd2500425636_
                                             _tl2500525638_))
                                        (___match2800628007_
                                         _e2500025625_
                                         _hd2500125628_
                                         _tl2500225630_
                                         _e2500325633_
                                         _hd2500425636_
                                         _tl2500525638_))))
                                (___match2800628007_
                                 _e2500025625_
                                 _hd2500125628_
                                 _tl2500225630_
                                 _e2500325633_
                                 _hd2500425636_
                                 _tl2500525638_))
                            (___match2800628007_
                             _e2500025625_
                             _hd2500125628_
                             _tl2500225630_
                             _e2500325633_
                             _hd2500425636_
                             _tl2500525638_))
                        (___match2800628007_
                         _e2500025625_
                         _hd2500125628_
                         _tl2500225630_
                         _e2500325633_
                         _hd2500425636_
                         _tl2500525638_))))
                (___match2800628007_
                 _e2500025625_
                 _hd2500125628_
                 _tl2500225630_
                 _e2500325633_
                 _hd2500425636_
                 _tl2500525638_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2800628007_
                                                 _e2500025625_
                                                 _hd2500125628_
                                                 _tl2500225630_
                                                 _e2500325633_
                                                 _hd2500425636_
                                                 _tl2500525638_))
                                            (___match2800628007_
                                             _e2500025625_
                                             _hd2500125628_
                                             _tl2500225630_
                                             _e2500325633_
                                             _hd2500425636_
                                             _tl2500525638_))
                                        (___match2800628007_
                                         _e2500025625_
                                         _hd2500125628_
                                         _tl2500225630_
                                         _e2500325633_
                                         _hd2500425636_
                                         _tl2500525638_))))
                                (___match2800628007_
                                 _e2500025625_
                                 _hd2500125628_
                                 _tl2500225630_
                                 _e2500325633_
                                 _hd2500425636_
                                 _tl2500525638_))))
                        (___match2800628007_
                         _e2500025625_
                         _hd2500125628_
                         _tl2500225630_
                         _e2500325633_
                         _hd2500425636_
                         _tl2500525638_))))
                 (___match2784227843_
                  (lambda (_e2494025842_
                           _hd2494125845_
                           _tl2494225847_
                           _e2494325850_
                           _hd2494425853_
                           _tl2494525855_
                           ___splice2767327674_
                           _target2494625858_
                           _tl2494825860_)
                    (letrec ((_loop2494925863_
                              (lambda (_hd2494725866_ _arg2495325868_)
                                (if (gx#stx-pair? _hd2494725866_)
                                    (let ((_e2495025871_
                                           (gx#stx-e _hd2494725866_)))
                                      (let ((_lp-tl2495225876_
                                             (##cdr _e2495025871_))
                                            (_lp-hd2495125874_
                                             (##car _e2495025871_)))
                                        (_loop2494925863_
                                         _lp-tl2495225876_
                                         (cons _lp-hd2495125874_
                                               _arg2495325868_))))
                                    (let ((_arg2495425879_
                                           (reverse _arg2495325868_)))
                                      (if (gx#stx-pair? _tl2494525855_)
                                          (let ((_e2495525882_
                                                 (gx#stx-e _tl2494525855_)))
                                            (let ((_tl2495725887_
                                                   (##cdr _e2495525882_))
                                                  (_hd2495625885_
                                                   (##car _e2495525882_)))
                                              (if (gx#stx-pair? _hd2495625885_)
                                                  (let ((_e2495825890_
                                                         (gx#stx-e
                                                          _hd2495625885_)))
                                                    (let ((_tl2496025895_
                                                           (##cdr _e2495825890_))
                                                          (_hd2495925893_
                                                           (##car _e2495825890_)))
                                                      (if (gx#identifier?
                                                           _hd2495925893_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2495925893_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2496025895_)
                          (let ((_e2496125898_ (gx#stx-e _tl2496025895_)))
                            (let ((_tl2496325903_ (##cdr _e2496125898_))
                                  (_hd2496225901_ (##car _e2496125898_)))
                              (if (gx#stx-pair? _hd2496225901_)
                                  (let ((_e2496425906_
                                         (gx#stx-e _hd2496225901_)))
                                    (let ((_tl2496625911_
                                           (##cdr _e2496425906_))
                                          (_hd2496525909_
                                           (##car _e2496425906_)))
                                      (if (gx#identifier? _hd2496525909_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2496525909_)
                                              (if (gx#stx-pair? _tl2496625911_)
                                                  (let ((_e2496725914_
                                                         (gx#stx-e
                                                          _tl2496625911_)))
                                                    (let ((_tl2496925919_
                                                           (##cdr _e2496725914_))
                                                          (_hd2496825917_
                                                           (##car _e2496725914_)))
                                                      (if (gx#stx-null?
                                                           _tl2496925919_)
                                                          (if (gx#stx-pair?
                                                               _tl2496325903_)
                                                              (let ((_e2497025922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2496325903_)))
                        (let ((_tl2497225927_ (##cdr _e2497025922_))
                              (_hd2497125925_ (##car _e2497025922_)))
                          (if (gx#stx-pair? _hd2497125925_)
                              (let ((_e2497325930_ (gx#stx-e _hd2497125925_)))
                                (let ((_tl2497525935_ (##cdr _e2497325930_))
                                      (_hd2497425933_ (##car _e2497325930_)))
                                  (if (gx#identifier? _hd2497425933_)
                                      (if (gx#stx-eq? '%#ref _hd2497425933_)
                                          (if (gx#stx-pair? _tl2497525935_)
                                              (let ((_e2497625938_
                                                     (gx#stx-e
                                                      _tl2497525935_)))
                                                (let ((_tl2497825943_
                                                       (##cdr _e2497625938_))
                                                      (_hd2497725941_
                                                       (##car _e2497625938_)))
                                                  (if (gx#stx-null?
                                                       _tl2497825943_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2497225927_)
                                                          (let ((___splice2767527676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _tl2497225927_ '0)))
                    (let ((_tl2498125948_
                           (##vector-ref ___splice2767527676_ '1))
                          (_target2497925946_
                           (##vector-ref ___splice2767527676_ '0)))
                      (if (gx#stx-null? _tl2498125948_)
                          (letrec ((_loop2498225951_
                                    (lambda (_hd2498025954_ _xarg2498625956_)
                                      (if (gx#stx-pair? _hd2498025954_)
                                          (let ((_e2498325959_
                                                 (gx#stx-e _hd2498025954_)))
                                            (let ((_lp-tl2498525964_
                                                   (##cdr _e2498325959_))
                                                  (_lp-hd2498425962_
                                                   (##car _e2498325959_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd2498425962_)
                                                  (let ((_e2498825967_
                                                         (gx#stx-e
                                                          _lp-hd2498425962_)))
                                                    (let ((_tl2499025972_
                                                           (##cdr _e2498825967_))
                                                          (_hd2498925970_
                                                           (##car _e2498825967_)))
                                                      (if (gx#identifier?
                                                           _hd2498925970_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2498925970_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2499025972_)
                          (let ((_e2499125975_ (gx#stx-e _tl2499025972_)))
                            (let ((_tl2499325980_ (##cdr _e2499125975_))
                                  (_hd2499225978_ (##car _e2499125975_)))
                              (if (gx#stx-null? _tl2499325980_)
                                  (_loop2498225951_
                                   _lp-tl2498525964_
                                   (cons _hd2499225978_ _xarg2498625956_))
                                  (___match2791827919_
                                   _e2494025842_
                                   _hd2494125845_
                                   _tl2494225847_
                                   _e2494325850_
                                   _hd2494425853_
                                   _tl2494525855_
                                   _e2495525882_
                                   _hd2495625885_
                                   _tl2495725887_
                                   _e2495825890_
                                   _hd2495925893_
                                   _tl2496025895_
                                   _e2496125898_
                                   _hd2496225901_
                                   _tl2496325903_
                                   _e2496425906_
                                   _hd2496525909_
                                   _tl2496625911_
                                   _e2496725914_
                                   _hd2496825917_
                                   _tl2496925919_
                                   _e2497025922_
                                   _hd2497125925_
                                   _tl2497225927_
                                   _e2497325930_
                                   _hd2497425933_
                                   _tl2497525935_
                                   _e2497625938_
                                   _hd2497725941_
                                   _tl2497825943_))))
                          (___match2791827919_
                           _e2494025842_
                           _hd2494125845_
                           _tl2494225847_
                           _e2494325850_
                           _hd2494425853_
                           _tl2494525855_
                           _e2495525882_
                           _hd2495625885_
                           _tl2495725887_
                           _e2495825890_
                           _hd2495925893_
                           _tl2496025895_
                           _e2496125898_
                           _hd2496225901_
                           _tl2496325903_
                           _e2496425906_
                           _hd2496525909_
                           _tl2496625911_
                           _e2496725914_
                           _hd2496825917_
                           _tl2496925919_
                           _e2497025922_
                           _hd2497125925_
                           _tl2497225927_
                           _e2497325930_
                           _hd2497425933_
                           _tl2497525935_
                           _e2497625938_
                           _hd2497725941_
                           _tl2497825943_))
                      (___match2791827919_
                       _e2494025842_
                       _hd2494125845_
                       _tl2494225847_
                       _e2494325850_
                       _hd2494425853_
                       _tl2494525855_
                       _e2495525882_
                       _hd2495625885_
                       _tl2495725887_
                       _e2495825890_
                       _hd2495925893_
                       _tl2496025895_
                       _e2496125898_
                       _hd2496225901_
                       _tl2496325903_
                       _e2496425906_
                       _hd2496525909_
                       _tl2496625911_
                       _e2496725914_
                       _hd2496825917_
                       _tl2496925919_
                       _e2497025922_
                       _hd2497125925_
                       _tl2497225927_
                       _e2497325930_
                       _hd2497425933_
                       _tl2497525935_
                       _e2497625938_
                       _hd2497725941_
                       _tl2497825943_))
                  (___match2791827919_
                   _e2494025842_
                   _hd2494125845_
                   _tl2494225847_
                   _e2494325850_
                   _hd2494425853_
                   _tl2494525855_
                   _e2495525882_
                   _hd2495625885_
                   _tl2495725887_
                   _e2495825890_
                   _hd2495925893_
                   _tl2496025895_
                   _e2496125898_
                   _hd2496225901_
                   _tl2496325903_
                   _e2496425906_
                   _hd2496525909_
                   _tl2496625911_
                   _e2496725914_
                   _hd2496825917_
                   _tl2496925919_
                   _e2497025922_
                   _hd2497125925_
                   _tl2497225927_
                   _e2497325930_
                   _hd2497425933_
                   _tl2497525935_
                   _e2497625938_
                   _hd2497725941_
                   _tl2497825943_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2791827919_
                                                   _e2494025842_
                                                   _hd2494125845_
                                                   _tl2494225847_
                                                   _e2494325850_
                                                   _hd2494425853_
                                                   _tl2494525855_
                                                   _e2495525882_
                                                   _hd2495625885_
                                                   _tl2495725887_
                                                   _e2495825890_
                                                   _hd2495925893_
                                                   _tl2496025895_
                                                   _e2496125898_
                                                   _hd2496225901_
                                                   _tl2496325903_
                                                   _e2496425906_
                                                   _hd2496525909_
                                                   _tl2496625911_
                                                   _e2496725914_
                                                   _hd2496825917_
                                                   _tl2496925919_
                                                   _e2497025922_
                                                   _hd2497125925_
                                                   _tl2497225927_
                                                   _e2497325930_
                                                   _hd2497425933_
                                                   _tl2497525935_
                                                   _e2497625938_
                                                   _hd2497725941_
                                                   _tl2497825943_))))
                                          (let ((_xarg2498725983_
                                                 (reverse _xarg2498625956_)))
                                            (if (gx#stx-null? _tl2495725887_)
                                                (let ((_L25986_
                                                       _xarg2498725983_)
                                                      (_L25987_ _hd2497725941_)
                                                      (_L25988_ _hd2496825917_)
                                                      (_L25989_
                                                       _arg2495425879_))
                                                  (if (and (gx#identifier-list?
                                                            (foldr1 (lambda (_g2602626029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2602726031_)
                              (cons _g2602626029_ _g2602726031_))
                            '()
                            _L25989_))
                   (gxc#runtime-identifier=? _L25988_ 'make-struct-instance)
                   (fx= (length (foldr1 (lambda (_g2603326036_ _g2603426038_)
                                          (cons _g2603326036_ _g2603426038_))
                                        '()
                                        _L25989_))
                        (length (foldr1 (lambda (_g2604026043_ _g2604126045_)
                                          (cons _g2604026043_ _g2604126045_))
                                        '()
                                        _L25986_)))
                   (andmap2 gx#free-identifier=?
                            (foldr1 (lambda (_g2604726050_ _g2604826052_)
                                      (cons _g2604726050_ _g2604826052_))
                                    '()
                                    _L25989_)
                            (foldr1 (lambda (_g2605426057_ _g2605526059_)
                                      (cons _g2605426057_ _g2605526059_))
                                    '()
                                    _L25986_)))
              (___kont2767127672_ _L25986_ _L25987_ _L25988_ _L25989_)
              (___match2791827919_
               _e2494025842_
               _hd2494125845_
               _tl2494225847_
               _e2494325850_
               _hd2494425853_
               _tl2494525855_
               _e2495525882_
               _hd2495625885_
               _tl2495725887_
               _e2495825890_
               _hd2495925893_
               _tl2496025895_
               _e2496125898_
               _hd2496225901_
               _tl2496325903_
               _e2496425906_
               _hd2496525909_
               _tl2496625911_
               _e2496725914_
               _hd2496825917_
               _tl2496925919_
               _e2497025922_
               _hd2497125925_
               _tl2497225927_
               _e2497325930_
               _hd2497425933_
               _tl2497525935_
               _e2497625938_
               _hd2497725941_
               _tl2497825943_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2791827919_
                                                 _e2494025842_
                                                 _hd2494125845_
                                                 _tl2494225847_
                                                 _e2494325850_
                                                 _hd2494425853_
                                                 _tl2494525855_
                                                 _e2495525882_
                                                 _hd2495625885_
                                                 _tl2495725887_
                                                 _e2495825890_
                                                 _hd2495925893_
                                                 _tl2496025895_
                                                 _e2496125898_
                                                 _hd2496225901_
                                                 _tl2496325903_
                                                 _e2496425906_
                                                 _hd2496525909_
                                                 _tl2496625911_
                                                 _e2496725914_
                                                 _hd2496825917_
                                                 _tl2496925919_
                                                 _e2497025922_
                                                 _hd2497125925_
                                                 _tl2497225927_
                                                 _e2497325930_
                                                 _hd2497425933_
                                                 _tl2497525935_
                                                 _e2497625938_
                                                 _hd2497725941_
                                                 _tl2497825943_)))))))
                            (_loop2498225951_ _target2497925946_ '()))
                          (___match2791827919_
                           _e2494025842_
                           _hd2494125845_
                           _tl2494225847_
                           _e2494325850_
                           _hd2494425853_
                           _tl2494525855_
                           _e2495525882_
                           _hd2495625885_
                           _tl2495725887_
                           _e2495825890_
                           _hd2495925893_
                           _tl2496025895_
                           _e2496125898_
                           _hd2496225901_
                           _tl2496325903_
                           _e2496425906_
                           _hd2496525909_
                           _tl2496625911_
                           _e2496725914_
                           _hd2496825917_
                           _tl2496925919_
                           _e2497025922_
                           _hd2497125925_
                           _tl2497225927_
                           _e2497325930_
                           _hd2497425933_
                           _tl2497525935_
                           _e2497625938_
                           _hd2497725941_
                           _tl2497825943_))))
                  (___match2791827919_
                   _e2494025842_
                   _hd2494125845_
                   _tl2494225847_
                   _e2494325850_
                   _hd2494425853_
                   _tl2494525855_
                   _e2495525882_
                   _hd2495625885_
                   _tl2495725887_
                   _e2495825890_
                   _hd2495925893_
                   _tl2496025895_
                   _e2496125898_
                   _hd2496225901_
                   _tl2496325903_
                   _e2496425906_
                   _hd2496525909_
                   _tl2496625911_
                   _e2496725914_
                   _hd2496825917_
                   _tl2496925919_
                   _e2497025922_
                   _hd2497125925_
                   _tl2497225927_
                   _e2497325930_
                   _hd2497425933_
                   _tl2497525935_
                   _e2497625938_
                   _hd2497725941_
                   _tl2497825943_))
              (___match2800628007_
               _e2494025842_
               _hd2494125845_
               _tl2494225847_
               _e2494325850_
               _hd2494425853_
               _tl2494525855_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___match2800628007_
                                               _e2494025842_
                                               _hd2494125845_
                                               _tl2494225847_
                                               _e2494325850_
                                               _hd2494425853_
                                               _tl2494525855_))
                                          (___match2800628007_
                                           _e2494025842_
                                           _hd2494125845_
                                           _tl2494225847_
                                           _e2494325850_
                                           _hd2494425853_
                                           _tl2494525855_))
                                      (___match2800628007_
                                       _e2494025842_
                                       _hd2494125845_
                                       _tl2494225847_
                                       _e2494325850_
                                       _hd2494425853_
                                       _tl2494525855_))))
                              (___match2800628007_
                               _e2494025842_
                               _hd2494125845_
                               _tl2494225847_
                               _e2494325850_
                               _hd2494425853_
                               _tl2494525855_))))
                      (___match2800628007_
                       _e2494025842_
                       _hd2494125845_
                       _tl2494225847_
                       _e2494325850_
                       _hd2494425853_
                       _tl2494525855_))
                  (___match2800628007_
                   _e2494025842_
                   _hd2494125845_
                   _tl2494225847_
                   _e2494325850_
                   _hd2494425853_
                   _tl2494525855_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2800628007_
                                                   _e2494025842_
                                                   _hd2494125845_
                                                   _tl2494225847_
                                                   _e2494325850_
                                                   _hd2494425853_
                                                   _tl2494525855_))
                                              (___match2800628007_
                                               _e2494025842_
                                               _hd2494125845_
                                               _tl2494225847_
                                               _e2494325850_
                                               _hd2494425853_
                                               _tl2494525855_))
                                          (___match2800628007_
                                           _e2494025842_
                                           _hd2494125845_
                                           _tl2494225847_
                                           _e2494325850_
                                           _hd2494425853_
                                           _tl2494525855_))))
                                  (___match2800628007_
                                   _e2494025842_
                                   _hd2494125845_
                                   _tl2494225847_
                                   _e2494325850_
                                   _hd2494425853_
                                   _tl2494525855_))))
                          (___match2800628007_
                           _e2494025842_
                           _hd2494125845_
                           _tl2494225847_
                           _e2494325850_
                           _hd2494425853_
                           _tl2494525855_))
                      (___match2800628007_
                       _e2494025842_
                       _hd2494125845_
                       _tl2494225847_
                       _e2494325850_
                       _hd2494425853_
                       _tl2494525855_))
                  (___match2800628007_
                   _e2494025842_
                   _hd2494125845_
                   _tl2494225847_
                   _e2494325850_
                   _hd2494425853_
                   _tl2494525855_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2800628007_
                                                   _e2494025842_
                                                   _hd2494125845_
                                                   _tl2494225847_
                                                   _e2494325850_
                                                   _hd2494425853_
                                                   _tl2494525855_))))
                                          (___match2800628007_
                                           _e2494025842_
                                           _hd2494125845_
                                           _tl2494225847_
                                           _e2494325850_
                                           _hd2494425853_
                                           _tl2494525855_)))))))
                      (_loop2494925863_ _target2494625858_ '()))))
                 (___match2783427835_
                  (lambda (_e2494025842_
                           _hd2494125845_
                           _tl2494225847_
                           _e2494325850_
                           _hd2494425853_
                           _tl2494525855_)
                    (if (gx#stx-pair/null? _hd2494425853_)
                        (let ((___splice2767327674_
                               (gx#syntax-split-splice _hd2494425853_ '0)))
                          (let ((_tl2494825860_
                                 (##vector-ref ___splice2767327674_ '1))
                                (_target2494625858_
                                 (##vector-ref ___splice2767327674_ '0)))
                            (if (gx#stx-null? _tl2494825860_)
                                (___match2784227843_
                                 _e2494025842_
                                 _hd2494125845_
                                 _tl2494225847_
                                 _e2494325850_
                                 _hd2494425853_
                                 _tl2494525855_
                                 ___splice2767327674_
                                 _target2494625858_
                                 _tl2494825860_)
                                (___match2785427855_
                                 _e2494025842_
                                 _hd2494125845_
                                 _tl2494225847_
                                 _e2494325850_
                                 _hd2494425853_
                                 _tl2494525855_))))
                        (___match2785427855_
                         _e2494025842_
                         _hd2494125845_
                         _tl2494225847_
                         _e2494325850_
                         _hd2494425853_
                         _tl2494525855_))))
                 (___match2782227823_
                  (lambda (_e2488826072_
                           _hd2488926075_
                           _tl2489026077_
                           _e2489126080_
                           _hd2489226083_
                           _tl2489326085_
                           _e2489426088_
                           _hd2489526091_
                           _tl2489626093_
                           _e2489726096_
                           _hd2489826099_
                           _tl2489926101_
                           _e2490026104_
                           _hd2490126107_
                           _tl2490226109_
                           _e2490326112_
                           _hd2490426115_
                           _tl2490526117_
                           _e2490626120_
                           _hd2490726123_
                           _tl2490826125_
                           _e2490926128_
                           _hd2491026131_
                           _tl2491126133_
                           _e2491226136_
                           _hd2491326139_
                           _tl2491426141_
                           _e2491526144_
                           _hd2491626147_
                           _tl2491726149_
                           _e2491826152_
                           _hd2491926155_
                           _tl2492026157_
                           _e2492126160_
                           _hd2492226163_
                           _tl2492326165_
                           _e2492426168_
                           _hd2492526171_
                           _tl2492626173_
                           _e2492726176_
                           _hd2492826179_
                           _tl2492926181_
                           _e2493026184_
                           _hd2493126187_
                           _tl2493226189_
                           _e2493326192_
                           _hd2493426195_
                           _tl2493526197_)
                    (let ((_L26200_ _hd2493426195_)
                          (_L26201_ _hd2492526171_)
                          (_L26202_ _hd2491626147_)
                          (_L26203_ _hd2490726123_)
                          (_L26204_ _hd2489226083_))
                      (if (and (gx#identifier? _L26204_)
                               (gxc#runtime-identifier=? _L26203_ 'apply)
                               (gxc#runtime-identifier=?
                                _L26202_
                                'make-struct-instance)
                               (gx#free-identifier=? _L26204_ _L26200_))
                          (___kont2766927670_
                           _L26200_
                           _L26201_
                           _L26202_
                           _L26203_
                           _L26204_)
                          (___match2783427835_
                           _e2488826072_
                           _hd2488926075_
                           _tl2489026077_
                           _e2489126080_
                           _hd2489226083_
                           _tl2489326085_)))))
                 (___match2770027701_
                  (lambda (_e2488826072_ _hd2488926075_ _tl2489026077_)
                    (if (gx#stx-pair? _tl2489026077_)
                        (let ((_e2489126080_ (gx#stx-e _tl2489026077_)))
                          (let ((_tl2489326085_ (##cdr _e2489126080_))
                                (_hd2489226083_ (##car _e2489126080_)))
                            (if (gx#stx-pair? _tl2489326085_)
                                (let ((_e2489426088_
                                       (gx#stx-e _tl2489326085_)))
                                  (let ((_tl2489626093_ (##cdr _e2489426088_))
                                        (_hd2489526091_ (##car _e2489426088_)))
                                    (if (gx#stx-pair? _hd2489526091_)
                                        (let ((_e2489726096_
                                               (gx#stx-e _hd2489526091_)))
                                          (let ((_tl2489926101_
                                                 (##cdr _e2489726096_))
                                                (_hd2489826099_
                                                 (##car _e2489726096_)))
                                            (if (gx#identifier? _hd2489826099_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd2489826099_)
                                                    (if (gx#stx-pair?
                                                         _tl2489926101_)
                                                        (let ((_e2490026104_
                                                               (gx#stx-e
                                                                _tl2489926101_)))
                                                          (let ((_tl2490226109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2490026104_))
                        (_hd2490126107_ (##car _e2490026104_)))
                    (if (gx#stx-pair? _hd2490126107_)
                        (let ((_e2490326112_ (gx#stx-e _hd2490126107_)))
                          (let ((_tl2490526117_ (##cdr _e2490326112_))
                                (_hd2490426115_ (##car _e2490326112_)))
                            (if (gx#identifier? _hd2490426115_)
                                (if (gx#stx-eq? '%#ref _hd2490426115_)
                                    (if (gx#stx-pair? _tl2490526117_)
                                        (let ((_e2490626120_
                                               (gx#stx-e _tl2490526117_)))
                                          (let ((_tl2490826125_
                                                 (##cdr _e2490626120_))
                                                (_hd2490726123_
                                                 (##car _e2490626120_)))
                                            (if (gx#stx-null? _tl2490826125_)
                                                (if (gx#stx-pair?
                                                     _tl2490226109_)
                                                    (let ((_e2490926128_
                                                           (gx#stx-e
                                                            _tl2490226109_)))
                                                      (let ((_tl2491126133_
                                                             (##cdr _e2490926128_))
                                                            (_hd2491026131_
                                                             (##car _e2490926128_)))
                                                        (if (gx#stx-pair?
                                                             _hd2491026131_)
                                                            (let ((_e2491226136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2491026131_)))
                      (let ((_tl2491426141_ (##cdr _e2491226136_))
                            (_hd2491326139_ (##car _e2491226136_)))
                        (if (gx#identifier? _hd2491326139_)
                            (if (gx#stx-eq? '%#ref _hd2491326139_)
                                (if (gx#stx-pair? _tl2491426141_)
                                    (let ((_e2491526144_
                                           (gx#stx-e _tl2491426141_)))
                                      (let ((_tl2491726149_
                                             (##cdr _e2491526144_))
                                            (_hd2491626147_
                                             (##car _e2491526144_)))
                                        (if (gx#stx-null? _tl2491726149_)
                                            (if (gx#stx-pair? _tl2491126133_)
                                                (let ((_e2491826152_
                                                       (gx#stx-e
                                                        _tl2491126133_)))
                                                  (let ((_tl2492026157_
                                                         (##cdr _e2491826152_))
                                                        (_hd2491926155_
                                                         (##car _e2491826152_)))
                                                    (if (gx#stx-pair?
                                                         _hd2491926155_)
                                                        (let ((_e2492126160_
                                                               (gx#stx-e
                                                                _hd2491926155_)))
                                                          (let ((_tl2492326165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2492126160_))
                        (_hd2492226163_ (##car _e2492126160_)))
                    (if (gx#identifier? _hd2492226163_)
                        (if (gx#stx-eq? '%#ref _hd2492226163_)
                            (if (gx#stx-pair? _tl2492326165_)
                                (let ((_e2492426168_
                                       (gx#stx-e _tl2492326165_)))
                                  (let ((_tl2492626173_ (##cdr _e2492426168_))
                                        (_hd2492526171_ (##car _e2492426168_)))
                                    (if (gx#stx-null? _tl2492626173_)
                                        (if (gx#stx-pair? _tl2492026157_)
                                            (let ((_e2492726176_
                                                   (gx#stx-e _tl2492026157_)))
                                              (let ((_tl2492926181_
                                                     (##cdr _e2492726176_))
                                                    (_hd2492826179_
                                                     (##car _e2492726176_)))
                                                (if (gx#stx-pair?
                                                     _hd2492826179_)
                                                    (let ((_e2493026184_
                                                           (gx#stx-e
                                                            _hd2492826179_)))
                                                      (let ((_tl2493226189_
                                                             (##cdr _e2493026184_))
                                                            (_hd2493126187_
                                                             (##car _e2493026184_)))
                                                        (if (gx#identifier?
                                                             _hd2493126187_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2493126187_)
                        (if (gx#stx-pair? _tl2493226189_)
                            (let ((_e2493326192_ (gx#stx-e _tl2493226189_)))
                              (let ((_tl2493526197_ (##cdr _e2493326192_))
                                    (_hd2493426195_ (##car _e2493326192_)))
                                (if (gx#stx-null? _tl2493526197_)
                                    (if (gx#stx-null? _tl2492926181_)
                                        (if (gx#stx-null? _tl2489626093_)
                                            (___match2782227823_
                                             _e2488826072_
                                             _hd2488926075_
                                             _tl2489026077_
                                             _e2489126080_
                                             _hd2489226083_
                                             _tl2489326085_
                                             _e2489426088_
                                             _hd2489526091_
                                             _tl2489626093_
                                             _e2489726096_
                                             _hd2489826099_
                                             _tl2489926101_
                                             _e2490026104_
                                             _hd2490126107_
                                             _tl2490226109_
                                             _e2490326112_
                                             _hd2490426115_
                                             _tl2490526117_
                                             _e2490626120_
                                             _hd2490726123_
                                             _tl2490826125_
                                             _e2490926128_
                                             _hd2491026131_
                                             _tl2491126133_
                                             _e2491226136_
                                             _hd2491326139_
                                             _tl2491426141_
                                             _e2491526144_
                                             _hd2491626147_
                                             _tl2491726149_
                                             _e2491826152_
                                             _hd2491926155_
                                             _tl2492026157_
                                             _e2492126160_
                                             _hd2492226163_
                                             _tl2492326165_
                                             _e2492426168_
                                             _hd2492526171_
                                             _tl2492626173_
                                             _e2492726176_
                                             _hd2492826179_
                                             _tl2492926181_
                                             _e2493026184_
                                             _hd2493126187_
                                             _tl2493226189_
                                             _e2493326192_
                                             _hd2493426195_
                                             _tl2493526197_)
                                            (___match2783427835_
                                             _e2488826072_
                                             _hd2488926075_
                                             _tl2489026077_
                                             _e2489126080_
                                             _hd2489226083_
                                             _tl2489326085_))
                                        (___match2783427835_
                                         _e2488826072_
                                         _hd2488926075_
                                         _tl2489026077_
                                         _e2489126080_
                                         _hd2489226083_
                                         _tl2489326085_))
                                    (___match2783427835_
                                     _e2488826072_
                                     _hd2488926075_
                                     _tl2489026077_
                                     _e2489126080_
                                     _hd2489226083_
                                     _tl2489326085_))))
                            (___match2783427835_
                             _e2488826072_
                             _hd2488926075_
                             _tl2489026077_
                             _e2489126080_
                             _hd2489226083_
                             _tl2489326085_))
                        (___match2783427835_
                         _e2488826072_
                         _hd2488926075_
                         _tl2489026077_
                         _e2489126080_
                         _hd2489226083_
                         _tl2489326085_))
                    (___match2783427835_
                     _e2488826072_
                     _hd2488926075_
                     _tl2489026077_
                     _e2489126080_
                     _hd2489226083_
                     _tl2489326085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2783427835_
                                                     _e2488826072_
                                                     _hd2488926075_
                                                     _tl2489026077_
                                                     _e2489126080_
                                                     _hd2489226083_
                                                     _tl2489326085_))))
                                            (___match2783427835_
                                             _e2488826072_
                                             _hd2488926075_
                                             _tl2489026077_
                                             _e2489126080_
                                             _hd2489226083_
                                             _tl2489326085_))
                                        (___match2783427835_
                                         _e2488826072_
                                         _hd2488926075_
                                         _tl2489026077_
                                         _e2489126080_
                                         _hd2489226083_
                                         _tl2489326085_))))
                                (___match2783427835_
                                 _e2488826072_
                                 _hd2488926075_
                                 _tl2489026077_
                                 _e2489126080_
                                 _hd2489226083_
                                 _tl2489326085_))
                            (___match2783427835_
                             _e2488826072_
                             _hd2488926075_
                             _tl2489026077_
                             _e2489126080_
                             _hd2489226083_
                             _tl2489326085_))
                        (___match2783427835_
                         _e2488826072_
                         _hd2488926075_
                         _tl2489026077_
                         _e2489126080_
                         _hd2489226083_
                         _tl2489326085_))))
                (___match2783427835_
                 _e2488826072_
                 _hd2488926075_
                 _tl2489026077_
                 _e2489126080_
                 _hd2489226083_
                 _tl2489326085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2783427835_
                                                 _e2488826072_
                                                 _hd2488926075_
                                                 _tl2489026077_
                                                 _e2489126080_
                                                 _hd2489226083_
                                                 _tl2489326085_))
                                            (___match2783427835_
                                             _e2488826072_
                                             _hd2488926075_
                                             _tl2489026077_
                                             _e2489126080_
                                             _hd2489226083_
                                             _tl2489326085_))))
                                    (___match2783427835_
                                     _e2488826072_
                                     _hd2488926075_
                                     _tl2489026077_
                                     _e2489126080_
                                     _hd2489226083_
                                     _tl2489326085_))
                                (___match2783427835_
                                 _e2488826072_
                                 _hd2488926075_
                                 _tl2489026077_
                                 _e2489126080_
                                 _hd2489226083_
                                 _tl2489326085_))
                            (___match2783427835_
                             _e2488826072_
                             _hd2488926075_
                             _tl2489026077_
                             _e2489126080_
                             _hd2489226083_
                             _tl2489326085_))))
                    (___match2783427835_
                     _e2488826072_
                     _hd2488926075_
                     _tl2489026077_
                     _e2489126080_
                     _hd2489226083_
                     _tl2489326085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2783427835_
                                                     _e2488826072_
                                                     _hd2488926075_
                                                     _tl2489026077_
                                                     _e2489126080_
                                                     _hd2489226083_
                                                     _tl2489326085_))
                                                (___match2783427835_
                                                 _e2488826072_
                                                 _hd2488926075_
                                                 _tl2489026077_
                                                 _e2489126080_
                                                 _hd2489226083_
                                                 _tl2489326085_))))
                                        (___match2783427835_
                                         _e2488826072_
                                         _hd2488926075_
                                         _tl2489026077_
                                         _e2489126080_
                                         _hd2489226083_
                                         _tl2489326085_))
                                    (___match2783427835_
                                     _e2488826072_
                                     _hd2488926075_
                                     _tl2489026077_
                                     _e2489126080_
                                     _hd2489226083_
                                     _tl2489326085_))
                                (___match2783427835_
                                 _e2488826072_
                                 _hd2488926075_
                                 _tl2489026077_
                                 _e2489126080_
                                 _hd2489226083_
                                 _tl2489326085_))))
                        (___match2783427835_
                         _e2488826072_
                         _hd2488926075_
                         _tl2489026077_
                         _e2489126080_
                         _hd2489226083_
                         _tl2489326085_))))
                (___match2783427835_
                 _e2488826072_
                 _hd2488926075_
                 _tl2489026077_
                 _e2489126080_
                 _hd2489226083_
                 _tl2489326085_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2783427835_
                                                     _e2488826072_
                                                     _hd2488926075_
                                                     _tl2489026077_
                                                     _e2489126080_
                                                     _hd2489226083_
                                                     _tl2489326085_))
                                                (___match2783427835_
                                                 _e2488826072_
                                                 _hd2488926075_
                                                 _tl2489026077_
                                                 _e2489126080_
                                                 _hd2489226083_
                                                 _tl2489326085_))))
                                        (___match2783427835_
                                         _e2488826072_
                                         _hd2488926075_
                                         _tl2489026077_
                                         _e2489126080_
                                         _hd2489226083_
                                         _tl2489326085_))))
                                (___match2783427835_
                                 _e2488826072_
                                 _hd2488926075_
                                 _tl2489026077_
                                 _e2489126080_
                                 _hd2489226083_
                                 _tl2489326085_))))
                        (___match2814028141_
                         _e2488826072_
                         _hd2488926075_
                         _tl2489026077_)))))
            (if (gx#stx-pair? ___stx2766527666_)
                (let ((_e2488026257_ (gx#stx-e ___stx2766527666_)))
                  (let ((_tl2488226262_ (##cdr _e2488026257_))
                        (_hd2488126260_ (##car _e2488026257_)))
                    (if (gxc#current-compile-type-closure)
                        (let ((_L26265_ _tl2488226262_))
                          (___kont2766727668_ _L26265_))
                        (___match2770027701_
                         _e2488026257_
                         _hd2488126260_
                         _tl2488226262_))))
                (_g2487725184_)))))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx24824_)
      (letrec ((_clause-e24826_
                (lambda (_form24867_)
                  (let ((__obj29911 (make-object gxc#!lambda::t '5)))
                    (gxc#!lambda:::init!__0
                     __obj29911
                     'case-lambda-clause
                     (gxc#lambda-form-arity _form24867_)
                     (if (not (gxc#current-compile-type-closure))
                         (if (gxc#dispatch-lambda-form? _form24867_)
                             (gxc#dispatch-lambda-form-delegate _form24867_)
                             '#f)
                         '#f))
                    __obj29911))))
        (let* ((_g2482824838_
                (lambda (_g2482924835_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2482924835_)))
               (_g2482724864_
                (lambda (_g2482924841_)
                  (if (gx#stx-pair? _g2482924841_)
                      (let ((_e2483124843_ (gx#stx-e _g2482924841_)))
                        (let ((_hd2483224846_ (##car _e2483124843_))
                              (_tl2483324848_ (##cdr _e2483124843_)))
                          ((lambda (_L24851_)
                             (let ((_clauses24862_
                                    (map _clause-e24826_ _L24851_)))
                               (##structure
                                gxc#!case-lambda::t
                                'case-lambda
                                _clauses24862_)))
                           _tl2483324848_)))
                      (_g2482824838_ _g2482924841_)))))
          (_g2482724864_ _stx24824_)))))
  (define gxc#basic-expression-type-let-values%
    (lambda (_stx24756_)
      (let* ((_g2475824775_
              (lambda (_g2475924772_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2475924772_)))
             (_g2475724821_
              (lambda (_g2475924778_)
                (if (gx#stx-pair? _g2475924778_)
                    (let ((_e2476224780_ (gx#stx-e _g2475924778_)))
                      (let ((_hd2476324783_ (##car _e2476224780_))
                            (_tl2476424785_ (##cdr _e2476224780_)))
                        (if (gx#stx-pair? _tl2476424785_)
                            (let ((_e2476524788_ (gx#stx-e _tl2476424785_)))
                              (let ((_hd2476624791_ (##car _e2476524788_))
                                    (_tl2476724793_ (##cdr _e2476524788_)))
                                (if (gx#stx-pair? _tl2476724793_)
                                    (let ((_e2476824796_
                                           (gx#stx-e _tl2476724793_)))
                                      (let ((_hd2476924799_
                                             (##car _e2476824796_))
                                            (_tl2477024801_
                                             (##cdr _e2476824796_)))
                                        (if (gx#stx-null? _tl2477024801_)
                                            ((lambda (_L24804_ _L24805_)
                                               (call-with-parameters
                                                (lambda ()
                                                  (gxc#compile-e _L24804_))
                                                gxc#current-compile-type-closure
                                                '#t))
                                             _hd2476924799_
                                             _hd2476624791_)
                                            (_g2475824775_ _g2475924778_))))
                                    (_g2475824775_ _g2475924778_))))
                            (_g2475824775_ _g2475924778_))))
                    (_g2475824775_ _g2475924778_)))))
        (_g2475724821_ _stx24756_))))
  (define gxc#basic-expression-type-builtin (make-table 'test: eq?))
  (define gxc#basic-expression-type-call%
    (lambda (_stx24661_)
      (let* ((___stx2814928150_ _stx24661_)
             (_g2466424684_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2814928150_))))
        (let ((___kont2815128152_
               (lambda (_L24728_ _L24729_)
                 (let ((_type-e2474624748_
                        (table-ref
                         gxc#basic-expression-type-builtin
                         (gxc#identifier-symbol _L24729_)
                         '#f)))
                   (if _type-e2474624748_
                       (let ((_type-e24751_ _type-e2474624748_))
                         (_type-e24751_ _stx24661_ _L24728_))
                       '#f))))
              (___kont2815328154_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2814928150_)
              (let ((_e2466824696_ (gx#stx-e ___stx2814928150_)))
                (let ((_tl2467024701_ (##cdr _e2466824696_))
                      (_hd2466924699_ (##car _e2466824696_)))
                  (if (gx#stx-pair? _tl2467024701_)
                      (let ((_e2467124704_ (gx#stx-e _tl2467024701_)))
                        (let ((_tl2467324709_ (##cdr _e2467124704_))
                              (_hd2467224707_ (##car _e2467124704_)))
                          (if (gx#stx-pair? _hd2467224707_)
                              (let ((_e2467424712_ (gx#stx-e _hd2467224707_)))
                                (let ((_tl2467624717_ (##cdr _e2467424712_))
                                      (_hd2467524715_ (##car _e2467424712_)))
                                  (if (gx#identifier? _hd2467524715_)
                                      (if (gx#stx-eq? '%#ref _hd2467524715_)
                                          (if (gx#stx-pair? _tl2467624717_)
                                              (let ((_e2467724720_
                                                     (gx#stx-e
                                                      _tl2467624717_)))
                                                (let ((_tl2467924725_
                                                       (##cdr _e2467724720_))
                                                      (_hd2467824723_
                                                       (##car _e2467724720_)))
                                                  (if (gx#stx-null?
                                                       _tl2467924725_)
                                                      (___kont2815128152_
                                                       _tl2467324709_
                                                       _hd2467824723_)
                                                      (___kont2815328154_))))
                                              (___kont2815328154_))
                                          (___kont2815328154_))
                                      (___kont2815328154_))))
                              (___kont2815328154_))))
                      (___kont2815328154_))))
              (___kont2815328154_))))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx24141_ _args24142_)
      (let* ((___stx2818728188_ _args24142_)
             (_g2414624260_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2818728188_))))
        (let ((___kont2818928190_
               (lambda (_L24610_ _L24611_ _L24612_ _L24613_ _L24614_)
                 (let ((__obj29912 (make-object gxc#!struct-type::t '7)))
                   (gxc#!struct-type:::init!
                    __obj29912
                    (gx#stx-e _L24614_)
                    '#f
                    (gx#stx-e _L24613_)
                    '0
                    (gx#stx-e _L24610_)
                    (gx#stx-e _L24611_))
                   __obj29912)))
              (___kont2819128192_
               (lambda (_L24400_ _L24401_ _L24402_ _L24403_ _L24404_ _L24405_)
                 (let* ((_super-t24451_
                         (if (gx#stx-e _L24404_)
                             (gxc#identifier-symbol _L24404_)
                             '#f))
                        (_super-type24453_
                         (if _super-t24451_
                             (gxc#optimizer-resolve-type _super-t24451_)
                             '#f)))
                   (if (and _super-type24453_
                            (not (##structure-instance-of?
                                  _super-type24453_
                                  'gxc#!struct-type::t)))
                       (gxc#raise-compile-error
                        '"Illegal struct-type construction; invalid super type"
                        _stx24141_
                        _L24404_)
                       '#!void)
                   (let ((_fields24469_ (gx#stx-e _L24403_))
                         (_xfields24470_
                          (if _super-type24453_
                              (let ((_super-fields2445524458_
                                     (##structure-ref
                                      _super-type24453_
                                      '3
                                      gxc#!struct-type::t
                                      '#f))
                                    (_super-xfields2445624460_
                                     (##structure-ref
                                      _super-type24453_
                                      '4
                                      gxc#!struct-type::t
                                      '#f)))
                                (if _super-fields2445524458_
                                    (if _super-xfields2445624460_
                                        (let ((_super-fields24463_
                                               _super-fields2445524458_)
                                              (_super-xfields24464_
                                               _super-xfields2445624460_))
                                          (fx+ _super-fields24463_
                                               _super-xfields24464_))
                                        '#f)
                                    '#f))
                              '#f))
                         (_plist24471_ (gx#stx-e _L24401_))
                         (_ctor24472_
                          (let ((_$e24466_ (gx#stx-e _L24400_)))
                            (if _$e24466_
                                (values _$e24466_)
                                (if _super-type24453_
                                    (##structure-ref
                                     _super-type24453_
                                     '5
                                     gxc#!struct-type::t
                                     '#f)
                                    (if _super-t24451_ '#!void '#f))))))
                     (let ((__obj29913 (make-object gxc#!struct-type::t '7)))
                       (gxc#!struct-type:::init!
                        __obj29913
                        (gx#stx-e _L24405_)
                        _super-t24451_
                        _fields24469_
                        _xfields24470_
                        _ctor24472_
                        _plist24471_)
                       __obj29913)))))
              (___kont2819328194_
               (lambda ()
                 (gxc#verbose
                  '"make-struct-type: can't infer type "
                  (gx#syntax->datum _stx24141_))
                 '#f)))
          (if (gx#stx-pair? ___stx2818728188_)
              (let ((_e2415324479_ (gx#stx-e ___stx2818728188_)))
                (let ((_tl2415524484_ (##cdr _e2415324479_))
                      (_hd2415424482_ (##car _e2415324479_)))
                  (if (gx#stx-pair? _hd2415424482_)
                      (let ((_e2415624487_ (gx#stx-e _hd2415424482_)))
                        (let ((_tl2415824492_ (##cdr _e2415624487_))
                              (_hd2415724490_ (##car _e2415624487_)))
                          (if (gx#identifier? _hd2415724490_)
                              (if (gx#stx-eq? '%#quote _hd2415724490_)
                                  (if (gx#stx-pair? _tl2415824492_)
                                      (let ((_e2415924495_
                                             (gx#stx-e _tl2415824492_)))
                                        (let ((_tl2416124500_
                                               (##cdr _e2415924495_))
                                              (_hd2416024498_
                                               (##car _e2415924495_)))
                                          (if (gx#stx-null? _tl2416124500_)
                                              (if (gx#stx-pair? _tl2415524484_)
                                                  (let ((_e2416224503_
                                                         (gx#stx-e
                                                          _tl2415524484_)))
                                                    (let ((_tl2416424508_
                                                           (##cdr _e2416224503_))
                                                          (_hd2416324506_
                                                           (##car _e2416224503_)))
                                                      (if (gx#stx-pair?
                                                           _hd2416324506_)
                                                          (let ((_e2416524511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2416324506_)))
                    (let ((_tl2416724516_ (##cdr _e2416524511_))
                          (_hd2416624514_ (##car _e2416524511_)))
                      (if (gx#identifier? _hd2416624514_)
                          (if (gx#stx-eq? '%#quote _hd2416624514_)
                              (if (gx#stx-pair? _tl2416724516_)
                                  (let ((_e2416824519_
                                         (gx#stx-e _tl2416724516_)))
                                    (let ((_tl2417024524_
                                           (##cdr _e2416824519_))
                                          (_hd2416924522_
                                           (##car _e2416824519_)))
                                      (if (gx#stx-datum? _hd2416924522_)
                                          (let ((_e2417124527_
                                                 (gx#stx-e _hd2416924522_)))
                                            (if (equal? _e2417124527_ '#f)
                                                (if (gx#stx-null?
                                                     _tl2417024524_)
                                                    (if (gx#stx-pair?
                                                         _tl2416424508_)
                                                        (let ((_e2417224530_
                                                               (gx#stx-e
                                                                _tl2416424508_)))
                                                          (let ((_tl2417424535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2417224530_))
                        (_hd2417324533_ (##car _e2417224530_)))
                    (if (gx#stx-pair? _hd2417324533_)
                        (let ((_e2417524538_ (gx#stx-e _hd2417324533_)))
                          (let ((_tl2417724543_ (##cdr _e2417524538_))
                                (_hd2417624541_ (##car _e2417524538_)))
                            (if (gx#identifier? _hd2417624541_)
                                (if (gx#stx-eq? '%#quote _hd2417624541_)
                                    (if (gx#stx-pair? _tl2417724543_)
                                        (let ((_e2417824546_
                                               (gx#stx-e _tl2417724543_)))
                                          (let ((_tl2418024551_
                                                 (##cdr _e2417824546_))
                                                (_hd2417924549_
                                                 (##car _e2417824546_)))
                                            (if (gx#stx-null? _tl2418024551_)
                                                (if (gx#stx-pair?
                                                     _tl2417424535_)
                                                    (let ((_e2418124554_
                                                           (gx#stx-e
                                                            _tl2417424535_)))
                                                      (let ((_tl2418324559_
                                                             (##cdr _e2418124554_))
                                                            (_hd2418224557_
                                                             (##car _e2418124554_)))
                                                        (if (gx#stx-pair?
                                                             _tl2418324559_)
                                                            (let ((_e2418424562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2418324559_)))
                      (let ((_tl2418624567_ (##cdr _e2418424562_))
                            (_hd2418524565_ (##car _e2418424562_)))
                        (if (gx#stx-pair? _hd2418524565_)
                            (let ((_e2418724570_ (gx#stx-e _hd2418524565_)))
                              (let ((_tl2418924575_ (##cdr _e2418724570_))
                                    (_hd2418824573_ (##car _e2418724570_)))
                                (if (gx#identifier? _hd2418824573_)
                                    (if (gx#stx-eq? '%#quote _hd2418824573_)
                                        (if (gx#stx-pair? _tl2418924575_)
                                            (let ((_e2419024578_
                                                   (gx#stx-e _tl2418924575_)))
                                              (let ((_tl2419224583_
                                                     (##cdr _e2419024578_))
                                                    (_hd2419124581_
                                                     (##car _e2419024578_)))
                                                (if (gx#stx-null?
                                                     _tl2419224583_)
                                                    (if (gx#stx-pair?
                                                         _tl2418624567_)
                                                        (let ((_e2419324586_
                                                               (gx#stx-e
                                                                _tl2418624567_)))
                                                          (let ((_tl2419524591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2419324586_))
                        (_hd2419424589_ (##car _e2419324586_)))
                    (if (gx#stx-pair? _hd2419424589_)
                        (let ((_e2419624594_ (gx#stx-e _hd2419424589_)))
                          (let ((_tl2419824599_ (##cdr _e2419624594_))
                                (_hd2419724597_ (##car _e2419624594_)))
                            (if (gx#identifier? _hd2419724597_)
                                (if (gx#stx-eq? '%#quote _hd2419724597_)
                                    (if (gx#stx-pair? _tl2419824599_)
                                        (let ((_e2419924602_
                                               (gx#stx-e _tl2419824599_)))
                                          (let ((_tl2420124607_
                                                 (##cdr _e2419924602_))
                                                (_hd2420024605_
                                                 (##car _e2419924602_)))
                                            (if (gx#stx-null? _tl2420124607_)
                                                (___kont2818928190_
                                                 _hd2420024605_
                                                 _hd2419124581_
                                                 _hd2418224557_
                                                 _hd2417924549_
                                                 _hd2416024498_)
                                                (___kont2819328194_))))
                                        (___kont2819328194_))
                                    (___kont2819328194_))
                                (___kont2819328194_))))
                        (___kont2819328194_))))
                (___kont2819328194_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2819328194_))))
                                            (___kont2819328194_))
                                        (___kont2819328194_))
                                    (___kont2819328194_))))
                            (___kont2819328194_))))
                    (___kont2819328194_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2819328194_))
                                                (___kont2819328194_))))
                                        (___kont2819328194_))
                                    (___kont2819328194_))
                                (___kont2819328194_))))
                        (___kont2819328194_))))
                (___kont2819328194_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2819328194_))
                                                (___kont2819328194_)))
                                          (___kont2819328194_))))
                                  (___kont2819328194_))
                              (if (gx#stx-eq? '%#ref _hd2416624514_)
                                  (if (gx#stx-pair? _tl2416724516_)
                                      (let ((_e2422324312_
                                             (gx#stx-e _tl2416724516_)))
                                        (let ((_tl2422524317_
                                               (##cdr _e2422324312_))
                                              (_hd2422424315_
                                               (##car _e2422324312_)))
                                          (if (gx#stx-null? _tl2422524317_)
                                              (if (gx#stx-pair? _tl2416424508_)
                                                  (let ((_e2422624320_
                                                         (gx#stx-e
                                                          _tl2416424508_)))
                                                    (let ((_tl2422824325_
                                                           (##cdr _e2422624320_))
                                                          (_hd2422724323_
                                                           (##car _e2422624320_)))
                                                      (if (gx#stx-pair?
                                                           _hd2422724323_)
                                                          (let ((_e2422924328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2422724323_)))
                    (let ((_tl2423124333_ (##cdr _e2422924328_))
                          (_hd2423024331_ (##car _e2422924328_)))
                      (if (gx#identifier? _hd2423024331_)
                          (if (gx#stx-eq? '%#quote _hd2423024331_)
                              (if (gx#stx-pair? _tl2423124333_)
                                  (let ((_e2423224336_
                                         (gx#stx-e _tl2423124333_)))
                                    (let ((_tl2423424341_
                                           (##cdr _e2423224336_))
                                          (_hd2423324339_
                                           (##car _e2423224336_)))
                                      (if (gx#stx-null? _tl2423424341_)
                                          (if (gx#stx-pair? _tl2422824325_)
                                              (let ((_e2423524344_
                                                     (gx#stx-e
                                                      _tl2422824325_)))
                                                (let ((_tl2423724349_
                                                       (##cdr _e2423524344_))
                                                      (_hd2423624347_
                                                       (##car _e2423524344_)))
                                                  (if (gx#stx-pair?
                                                       _tl2423724349_)
                                                      (let ((_e2423824352_
                                                             (gx#stx-e
                                                              _tl2423724349_)))
                                                        (let ((_tl2424024357_
                                                               (##cdr _e2423824352_))
                                                              (_hd2423924355_
                                                               (##car _e2423824352_)))
                                                          (if (gx#stx-pair?
                                                               _hd2423924355_)
                                                              (let ((_e2424124360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2423924355_)))
                        (let ((_tl2424324365_ (##cdr _e2424124360_))
                              (_hd2424224363_ (##car _e2424124360_)))
                          (if (gx#identifier? _hd2424224363_)
                              (if (gx#stx-eq? '%#quote _hd2424224363_)
                                  (if (gx#stx-pair? _tl2424324365_)
                                      (let ((_e2424424368_
                                             (gx#stx-e _tl2424324365_)))
                                        (let ((_tl2424624373_
                                               (##cdr _e2424424368_))
                                              (_hd2424524371_
                                               (##car _e2424424368_)))
                                          (if (gx#stx-null? _tl2424624373_)
                                              (if (gx#stx-pair? _tl2424024357_)
                                                  (let ((_e2424724376_
                                                         (gx#stx-e
                                                          _tl2424024357_)))
                                                    (let ((_tl2424924381_
                                                           (##cdr _e2424724376_))
                                                          (_hd2424824379_
                                                           (##car _e2424724376_)))
                                                      (if (gx#stx-pair?
                                                           _hd2424824379_)
                                                          (let ((_e2425024384_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2424824379_)))
                    (let ((_tl2425224389_ (##cdr _e2425024384_))
                          (_hd2425124387_ (##car _e2425024384_)))
                      (if (gx#identifier? _hd2425124387_)
                          (if (gx#stx-eq? '%#quote _hd2425124387_)
                              (if (gx#stx-pair? _tl2425224389_)
                                  (let ((_e2425324392_
                                         (gx#stx-e _tl2425224389_)))
                                    (let ((_tl2425524397_
                                           (##cdr _e2425324392_))
                                          (_hd2425424395_
                                           (##car _e2425324392_)))
                                      (if (gx#stx-null? _tl2425524397_)
                                          (___kont2819128192_
                                           _hd2425424395_
                                           _hd2424524371_
                                           _hd2423624347_
                                           _hd2423324339_
                                           _hd2422424315_
                                           _hd2416024498_)
                                          (___kont2819328194_))))
                                  (___kont2819328194_))
                              (___kont2819328194_))
                          (___kont2819328194_))))
                  (___kont2819328194_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2819328194_))
                                              (___kont2819328194_))))
                                      (___kont2819328194_))
                                  (___kont2819328194_))
                              (___kont2819328194_))))
                      (___kont2819328194_))))
              (___kont2819328194_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2819328194_))
                                          (___kont2819328194_))))
                                  (___kont2819328194_))
                              (___kont2819328194_))
                          (___kont2819328194_))))
                  (___kont2819328194_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2819328194_))
                                              (___kont2819328194_))))
                                      (___kont2819328194_))
                                  (___kont2819328194_)))
                          (___kont2819328194_))))
                  (___kont2819328194_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2819328194_))
                                              (___kont2819328194_))))
                                      (___kont2819328194_))
                                  (___kont2819328194_))
                              (___kont2819328194_))))
                      (___kont2819328194_))))
              (___kont2819328194_))))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx24067_ _args24068_)
      (let* ((___stx2845528456_ _args24068_)
             (_g2407124087_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2845528456_))))
        (let ((___kont2845728458_
               (lambda (_L24123_)
                 (##structure
                  gxc#!struct-pred::t
                  (gxc#identifier-symbol _L24123_))))
              (___kont2845928460_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2845528456_)
              (let ((_e2407424099_ (gx#stx-e ___stx2845528456_)))
                (let ((_tl2407624104_ (##cdr _e2407424099_))
                      (_hd2407524102_ (##car _e2407424099_)))
                  (if (gx#stx-pair? _hd2407524102_)
                      (let ((_e2407724107_ (gx#stx-e _hd2407524102_)))
                        (let ((_tl2407924112_ (##cdr _e2407724107_))
                              (_hd2407824110_ (##car _e2407724107_)))
                          (if (gx#identifier? _hd2407824110_)
                              (if (gx#stx-eq? '%#ref _hd2407824110_)
                                  (if (gx#stx-pair? _tl2407924112_)
                                      (let ((_e2408024115_
                                             (gx#stx-e _tl2407924112_)))
                                        (let ((_tl2408224120_
                                               (##cdr _e2408024115_))
                                              (_hd2408124118_
                                               (##car _e2408024115_)))
                                          (if (gx#stx-null? _tl2408224120_)
                                              (if (gx#stx-null? _tl2407624104_)
                                                  (___kont2845728458_
                                                   _hd2408124118_)
                                                  (___kont2845928460_))
                                              (___kont2845928460_))))
                                      (___kont2845928460_))
                                  (___kont2845928460_))
                              (___kont2845928460_))))
                      (___kont2845928460_))))
              (___kont2845928460_))))))
  (define gxc#basic-expression-type-make-struct-field-accessor__%
    (lambda (_stx23938_ _args23939_ _unchecked?23940_)
      (let* ((___stx2848928490_ _args23939_)
             (_g2394323969_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2848928490_))))
        (let ((___kont2849128492_
               (lambda (_L24029_ _L24030_)
                 (##structure
                  gxc#!struct-getf::t
                  (gxc#identifier-symbol _L24030_)
                  (gx#stx-e _L24029_)
                  _unchecked?23940_)))
              (___kont2849328494_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2848928490_)
              (let ((_e2394723981_ (gx#stx-e ___stx2848928490_)))
                (let ((_tl2394923986_ (##cdr _e2394723981_))
                      (_hd2394823984_ (##car _e2394723981_)))
                  (if (gx#stx-pair? _hd2394823984_)
                      (let ((_e2395023989_ (gx#stx-e _hd2394823984_)))
                        (let ((_tl2395223994_ (##cdr _e2395023989_))
                              (_hd2395123992_ (##car _e2395023989_)))
                          (if (gx#identifier? _hd2395123992_)
                              (if (gx#stx-eq? '%#ref _hd2395123992_)
                                  (if (gx#stx-pair? _tl2395223994_)
                                      (let ((_e2395323997_
                                             (gx#stx-e _tl2395223994_)))
                                        (let ((_tl2395524002_
                                               (##cdr _e2395323997_))
                                              (_hd2395424000_
                                               (##car _e2395323997_)))
                                          (if (gx#stx-null? _tl2395524002_)
                                              (if (gx#stx-pair? _tl2394923986_)
                                                  (let ((_e2395624005_
                                                         (gx#stx-e
                                                          _tl2394923986_)))
                                                    (let ((_tl2395824010_
                                                           (##cdr _e2395624005_))
                                                          (_hd2395724008_
                                                           (##car _e2395624005_)))
                                                      (if (gx#stx-pair?
                                                           _hd2395724008_)
                                                          (let ((_e2395924013_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2395724008_)))
                    (let ((_tl2396124018_ (##cdr _e2395924013_))
                          (_hd2396024016_ (##car _e2395924013_)))
                      (if (gx#identifier? _hd2396024016_)
                          (if (gx#stx-eq? '%#quote _hd2396024016_)
                              (if (gx#stx-pair? _tl2396124018_)
                                  (let ((_e2396224021_
                                         (gx#stx-e _tl2396124018_)))
                                    (let ((_tl2396424026_
                                           (##cdr _e2396224021_))
                                          (_hd2396324024_
                                           (##car _e2396224021_)))
                                      (if (gx#stx-null? _tl2396424026_)
                                          (if (gx#stx-null? _tl2395824010_)
                                              (___kont2849128492_
                                               _hd2396324024_
                                               _hd2395424000_)
                                              (___kont2849328494_))
                                          (___kont2849328494_))))
                                  (___kont2849328494_))
                              (___kont2849328494_))
                          (___kont2849328494_))))
                  (___kont2849328494_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2849328494_))
                                              (___kont2849328494_))))
                                      (___kont2849328494_))
                                  (___kont2849328494_))
                              (___kont2849328494_))))
                      (___kont2849328494_))))
              (___kont2849328494_))))))
  (define gxc#basic-expression-type-make-struct-field-accessor__0
    (lambda (_stx24058_ _args24059_)
      (let ((_unchecked?24061_ '#f))
        (gxc#basic-expression-type-make-struct-field-accessor__%
         _stx24058_
         _args24059_
         _unchecked?24061_))))
  (define gxc#basic-expression-type-make-struct-field-accessor
    (lambda _g29919_
      (let ((_g29918_ (length _g29919_)))
        (cond ((##fx= _g29918_ 2)
               (apply gxc#basic-expression-type-make-struct-field-accessor__0
                      _g29919_))
              ((##fx= _g29918_ 3)
               (apply gxc#basic-expression-type-make-struct-field-accessor__%
                      _g29919_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#basic-expression-type-make-struct-field-accessor
                _g29919_))))))
  (define gxc#basic-expression-type-make-struct-field-mutator__%
    (lambda (_stx23808_ _args23809_ _unchecked?23810_)
      (let* ((___stx2854728548_ _args23809_)
             (_g2381323839_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2854728548_))))
        (let ((___kont2854928550_
               (lambda (_L23899_ _L23900_)
                 (##structure
                  gxc#!struct-setf::t
                  (gxc#identifier-symbol _L23900_)
                  (gx#stx-e _L23899_)
                  _unchecked?23810_)))
              (___kont2855128552_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2854728548_)
              (let ((_e2381723851_ (gx#stx-e ___stx2854728548_)))
                (let ((_tl2381923856_ (##cdr _e2381723851_))
                      (_hd2381823854_ (##car _e2381723851_)))
                  (if (gx#stx-pair? _hd2381823854_)
                      (let ((_e2382023859_ (gx#stx-e _hd2381823854_)))
                        (let ((_tl2382223864_ (##cdr _e2382023859_))
                              (_hd2382123862_ (##car _e2382023859_)))
                          (if (gx#identifier? _hd2382123862_)
                              (if (gx#stx-eq? '%#ref _hd2382123862_)
                                  (if (gx#stx-pair? _tl2382223864_)
                                      (let ((_e2382323867_
                                             (gx#stx-e _tl2382223864_)))
                                        (let ((_tl2382523872_
                                               (##cdr _e2382323867_))
                                              (_hd2382423870_
                                               (##car _e2382323867_)))
                                          (if (gx#stx-null? _tl2382523872_)
                                              (if (gx#stx-pair? _tl2381923856_)
                                                  (let ((_e2382623875_
                                                         (gx#stx-e
                                                          _tl2381923856_)))
                                                    (let ((_tl2382823880_
                                                           (##cdr _e2382623875_))
                                                          (_hd2382723878_
                                                           (##car _e2382623875_)))
                                                      (if (gx#stx-pair?
                                                           _hd2382723878_)
                                                          (let ((_e2382923883_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2382723878_)))
                    (let ((_tl2383123888_ (##cdr _e2382923883_))
                          (_hd2383023886_ (##car _e2382923883_)))
                      (if (gx#identifier? _hd2383023886_)
                          (if (gx#stx-eq? '%#quote _hd2383023886_)
                              (if (gx#stx-pair? _tl2383123888_)
                                  (let ((_e2383223891_
                                         (gx#stx-e _tl2383123888_)))
                                    (let ((_tl2383423896_
                                           (##cdr _e2383223891_))
                                          (_hd2383323894_
                                           (##car _e2383223891_)))
                                      (if (gx#stx-null? _tl2383423896_)
                                          (if (gx#stx-null? _tl2382823880_)
                                              (___kont2854928550_
                                               _hd2383323894_
                                               _hd2382423870_)
                                              (___kont2855128552_))
                                          (___kont2855128552_))))
                                  (___kont2855128552_))
                              (___kont2855128552_))
                          (___kont2855128552_))))
                  (___kont2855128552_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2855128552_))
                                              (___kont2855128552_))))
                                      (___kont2855128552_))
                                  (___kont2855128552_))
                              (___kont2855128552_))))
                      (___kont2855128552_))))
              (___kont2855128552_))))))
  (define gxc#basic-expression-type-make-struct-field-mutator__0
    (lambda (_stx23928_ _args23929_)
      (let ((_unchecked?23931_ '#f))
        (gxc#basic-expression-type-make-struct-field-mutator__%
         _stx23928_
         _args23929_
         _unchecked?23931_))))
  (define gxc#basic-expression-type-make-struct-field-mutator
    (lambda _g29921_
      (let ((_g29920_ (length _g29921_)))
        (cond ((##fx= _g29920_ 2)
               (apply gxc#basic-expression-type-make-struct-field-mutator__0
                      _g29921_))
              ((##fx= _g29920_ 3)
               (apply gxc#basic-expression-type-make-struct-field-mutator__%
                      _g29921_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#basic-expression-type-make-struct-field-mutator
                _g29921_))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx23804_ _args23805_)
      (gxc#basic-expression-type-make-struct-field-accessor__%
       _stx23804_
       _args23805_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx23801_ _args23802_)
      (gxc#basic-expression-type-make-struct-field-mutator__%
       _stx23801_
       _args23802_
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
    (lambda (_stx23750_)
      (let* ((_g2375223765_
              (lambda (_g2375323762_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2375323762_)))
             (_g2375123798_
              (lambda (_g2375323768_)
                (if (gx#stx-pair? _g2375323768_)
                    (let ((_e2375523770_ (gx#stx-e _g2375323768_)))
                      (let ((_hd2375623773_ (##car _e2375523770_))
                            (_tl2375723775_ (##cdr _e2375523770_)))
                        (if (gx#stx-pair? _tl2375723775_)
                            (let ((_e2375823778_ (gx#stx-e _tl2375723775_)))
                              (let ((_hd2375923781_ (##car _e2375823778_))
                                    (_tl2376023783_ (##cdr _e2375823778_)))
                                (if (gx#stx-null? _tl2376023783_)
                                    ((lambda (_L23786_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#identifier-symbol _L23786_)))
                                     _hd2375923781_)
                                    (_g2375223765_ _g2375323768_))))
                            (_g2375223765_ _g2375323768_))))
                    (_g2375223765_ _g2375323768_)))))
        (_g2375123798_ _stx23750_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form22984_)
      (let* ((___stx2860528606_ _form22984_)
             (_g2298923146_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2860528606_))))
        (let ((___kont2860728608_ (lambda (_L23670_ _L23671_ _L23672_) '#t))
              (___kont2861328614_
               (lambda (_L23458_ _L23459_ _L23460_ _L23461_ _L23462_ _L23463_)
                 '#t))
              (___kont2861928620_
               (lambda (_L23254_ _L23255_ _L23256_ _L23257_) '#t))
              (___kont2862128622_ (lambda () '#f)))
          (let* ((___match2874628747_
                  (lambda (_e2310623158_
                           _hd2310723161_
                           _tl2310823163_
                           _e2310923166_
                           _hd2311023169_
                           _tl2311123171_
                           _e2311223174_
                           _hd2311323177_
                           _tl2311423179_
                           _e2311523182_
                           _hd2311623185_
                           _tl2311723187_
                           _e2311823190_
                           _hd2311923193_
                           _tl2312023195_
                           _e2312123198_
                           _hd2312223201_
                           _tl2312323203_
                           _e2312423206_
                           _hd2312523209_
                           _tl2312623211_
                           _e2312723214_
                           _hd2312823217_
                           _tl2312923219_
                           _e2313023222_
                           _hd2313123225_
                           _tl2313223227_
                           _e2313323230_
                           _hd2313423233_
                           _tl2313523235_
                           _e2313623238_
                           _hd2313723241_
                           _tl2313823243_
                           _e2313923246_
                           _hd2314023249_
                           _tl2314123251_)
                    (let ((_L23254_ _hd2314023249_)
                          (_L23255_ _hd2313123225_)
                          (_L23256_ _hd2312223201_)
                          (_L23257_ _hd2310723161_))
                      (if (and (gx#identifier? _L23257_)
                               (gxc#runtime-identifier=? _L23256_ 'apply)
                               (gx#free-identifier=? _L23257_ _L23254_)
                               (not (gx#free-identifier=? _L23255_ _L23257_)))
                          (___kont2861928620_
                           _L23254_
                           _L23255_
                           _L23256_
                           _L23257_)
                          (___kont2862128622_)))))
                 (___match2871828719_
                  (lambda (_e2310623158_
                           _hd2310723161_
                           _tl2310823163_
                           _e2310923166_
                           _hd2311023169_
                           _tl2311123171_
                           _e2311223174_
                           _hd2311323177_
                           _tl2311423179_
                           _e2311523182_
                           _hd2311623185_
                           _tl2311723187_
                           _e2311823190_
                           _hd2311923193_
                           _tl2312023195_
                           _e2312123198_
                           _hd2312223201_
                           _tl2312323203_
                           _e2312423206_
                           _hd2312523209_
                           _tl2312623211_
                           _e2312723214_
                           _hd2312823217_
                           _tl2312923219_
                           _e2313023222_
                           _hd2313123225_
                           _tl2313223227_)
                    (if (gx#stx-pair? _tl2312623211_)
                        (let ((_e2313323230_ (gx#stx-e _tl2312623211_)))
                          (let ((_tl2313523235_ (##cdr _e2313323230_))
                                (_hd2313423233_ (##car _e2313323230_)))
                            (if (gx#stx-pair? _hd2313423233_)
                                (let ((_e2313623238_
                                       (gx#stx-e _hd2313423233_)))
                                  (let ((_tl2313823243_ (##cdr _e2313623238_))
                                        (_hd2313723241_ (##car _e2313623238_)))
                                    (if (gx#identifier? _hd2313723241_)
                                        (if (gx#stx-eq? '%#ref _hd2313723241_)
                                            (if (gx#stx-pair? _tl2313823243_)
                                                (let ((_e2313923246_
                                                       (gx#stx-e
                                                        _tl2313823243_)))
                                                  (let ((_tl2314123251_
                                                         (##cdr _e2313923246_))
                                                        (_hd2314023249_
                                                         (##car _e2313923246_)))
                                                    (if (gx#stx-null?
                                                         _tl2314123251_)
                                                        (if (gx#stx-null?
                                                             _tl2313523235_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2311123171_)
                        (___match2874628747_
                         _e2310623158_
                         _hd2310723161_
                         _tl2310823163_
                         _e2310923166_
                         _hd2311023169_
                         _tl2311123171_
                         _e2311223174_
                         _hd2311323177_
                         _tl2311423179_
                         _e2311523182_
                         _hd2311623185_
                         _tl2311723187_
                         _e2311823190_
                         _hd2311923193_
                         _tl2312023195_
                         _e2312123198_
                         _hd2312223201_
                         _tl2312323203_
                         _e2312423206_
                         _hd2312523209_
                         _tl2312623211_
                         _e2312723214_
                         _hd2312823217_
                         _tl2312923219_
                         _e2313023222_
                         _hd2313123225_
                         _tl2313223227_
                         _e2313323230_
                         _hd2313423233_
                         _tl2313523235_
                         _e2313623238_
                         _hd2313723241_
                         _tl2313823243_
                         _e2313923246_
                         _hd2314023249_
                         _tl2314123251_)
                        (___kont2862128622_))
                    (___kont2862128622_))
                (___kont2862128622_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2862128622_))
                                            (___kont2862128622_))
                                        (___kont2862128622_))))
                                (___kont2862128622_))))
                        (___kont2862128622_))))
                 (___match2864828649_
                  (lambda (_e2304223298_
                           _hd2304323301_
                           _tl2304423303_
                           ___splice2861528616_
                           _target2304523306_
                           _tl2304723308_)
                    (letrec ((_loop2304823311_
                              (lambda (_hd2304623314_ _arg2305223316_)
                                (if (gx#stx-pair? _hd2304623314_)
                                    (let ((_e2304923319_
                                           (gx#stx-e _hd2304623314_)))
                                      (let ((_lp-tl2305123324_
                                             (##cdr _e2304923319_))
                                            (_lp-hd2305023322_
                                             (##car _e2304923319_)))
                                        (_loop2304823311_
                                         _lp-tl2305123324_
                                         (cons _lp-hd2305023322_
                                               _arg2305223316_))))
                                    (let ((_arg2305323327_
                                           (reverse _arg2305223316_)))
                                      (if (gx#stx-pair? _tl2304423303_)
                                          (let ((_e2305423330_
                                                 (gx#stx-e _tl2304423303_)))
                                            (let ((_tl2305623335_
                                                   (##cdr _e2305423330_))
                                                  (_hd2305523333_
                                                   (##car _e2305423330_)))
                                              (if (gx#stx-pair? _hd2305523333_)
                                                  (let ((_e2305723338_
                                                         (gx#stx-e
                                                          _hd2305523333_)))
                                                    (let ((_tl2305923343_
                                                           (##cdr _e2305723338_))
                                                          (_hd2305823341_
                                                           (##car _e2305723338_)))
                                                      (if (gx#identifier?
                                                           _hd2305823341_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2305823341_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2305923343_)
                          (let ((_e2306023346_ (gx#stx-e _tl2305923343_)))
                            (let ((_tl2306223351_ (##cdr _e2306023346_))
                                  (_hd2306123349_ (##car _e2306023346_)))
                              (if (gx#stx-pair? _hd2306123349_)
                                  (let ((_e2306323354_
                                         (gx#stx-e _hd2306123349_)))
                                    (let ((_tl2306523359_
                                           (##cdr _e2306323354_))
                                          (_hd2306423357_
                                           (##car _e2306323354_)))
                                      (if (gx#identifier? _hd2306423357_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2306423357_)
                                              (if (gx#stx-pair? _tl2306523359_)
                                                  (let ((_e2306623362_
                                                         (gx#stx-e
                                                          _tl2306523359_)))
                                                    (let ((_tl2306823367_
                                                           (##cdr _e2306623362_))
                                                          (_hd2306723365_
                                                           (##car _e2306623362_)))
                                                      (if (gx#stx-null?
                                                           _tl2306823367_)
                                                          (if (gx#stx-pair?
                                                               _tl2306223351_)
                                                              (let ((_e2306923370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2306223351_)))
                        (let ((_tl2307123375_ (##cdr _e2306923370_))
                              (_hd2307023373_ (##car _e2306923370_)))
                          (if (gx#stx-pair? _hd2307023373_)
                              (let ((_e2307223378_ (gx#stx-e _hd2307023373_)))
                                (let ((_tl2307423383_ (##cdr _e2307223378_))
                                      (_hd2307323381_ (##car _e2307223378_)))
                                  (if (gx#identifier? _hd2307323381_)
                                      (if (gx#stx-eq? '%#ref _hd2307323381_)
                                          (if (gx#stx-pair? _tl2307423383_)
                                              (let ((_e2307523386_
                                                     (gx#stx-e
                                                      _tl2307423383_)))
                                                (let ((_tl2307723391_
                                                       (##cdr _e2307523386_))
                                                      (_hd2307623389_
                                                       (##car _e2307523386_)))
                                                  (if (gx#stx-null?
                                                       _tl2307723391_)
                                                      (if (gx#stx-pair/null?
                                                           _tl2307123375_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _tl2307123375_)
                            '1)
                      (let ((___splice2861728618_
                             (gx#syntax-split-splice _tl2307123375_ '1)))
                        (let ((_tl2308023396_
                               (##vector-ref ___splice2861728618_ '1))
                              (_target2307823394_
                               (##vector-ref ___splice2861728618_ '0)))
                          (if (gx#stx-pair? _tl2308023396_)
                              (let ((_e2308723399_ (gx#stx-e _tl2308023396_)))
                                (let ((_tl2308923404_ (##cdr _e2308723399_))
                                      (_hd2308823402_ (##car _e2308723399_)))
                                  (if (gx#stx-pair? _hd2308823402_)
                                      (let ((_e2309023407_
                                             (gx#stx-e _hd2308823402_)))
                                        (let ((_tl2309223412_
                                               (##cdr _e2309023407_))
                                              (_hd2309123410_
                                               (##car _e2309023407_)))
                                          (if (gx#identifier? _hd2309123410_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _hd2309123410_)
                                                  (if (gx#stx-pair?
                                                       _tl2309223412_)
                                                      (let ((_e2309323415_
                                                             (gx#stx-e
                                                              _tl2309223412_)))
                                                        (let ((_tl2309523420_
                                                               (##cdr _e2309323415_))
                                                              (_hd2309423418_
                                                               (##car _e2309323415_)))
                                                          (if (gx#stx-null?
                                                               _tl2309523420_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2308923404_)
                          (letrec ((_loop2308123423_
                                    (lambda (_hd2307923426_ _xarg2308523428_)
                                      (if (gx#stx-pair? _hd2307923426_)
                                          (let ((_e2308223431_
                                                 (gx#stx-e _hd2307923426_)))
                                            (let ((_lp-tl2308423436_
                                                   (##cdr _e2308223431_))
                                                  (_lp-hd2308323434_
                                                   (##car _e2308223431_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd2308323434_)
                                                  (let ((_e2309623439_
                                                         (gx#stx-e
                                                          _lp-hd2308323434_)))
                                                    (let ((_tl2309823444_
                                                           (##cdr _e2309623439_))
                                                          (_hd2309723442_
                                                           (##car _e2309623439_)))
                                                      (if (gx#identifier?
                                                           _hd2309723442_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2309723442_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2309823444_)
                          (let ((_e2309923447_ (gx#stx-e _tl2309823444_)))
                            (let ((_tl2310123452_ (##cdr _e2309923447_))
                                  (_hd2310023450_ (##car _e2309923447_)))
                              (if (gx#stx-null? _tl2310123452_)
                                  (_loop2308123423_
                                   _lp-tl2308423436_
                                   (cons _hd2310023450_ _xarg2308523428_))
                                  (___match2871828719_
                                   _e2304223298_
                                   _hd2304323301_
                                   _tl2304423303_
                                   _e2305423330_
                                   _hd2305523333_
                                   _tl2305623335_
                                   _e2305723338_
                                   _hd2305823341_
                                   _tl2305923343_
                                   _e2306023346_
                                   _hd2306123349_
                                   _tl2306223351_
                                   _e2306323354_
                                   _hd2306423357_
                                   _tl2306523359_
                                   _e2306623362_
                                   _hd2306723365_
                                   _tl2306823367_
                                   _e2306923370_
                                   _hd2307023373_
                                   _tl2307123375_
                                   _e2307223378_
                                   _hd2307323381_
                                   _tl2307423383_
                                   _e2307523386_
                                   _hd2307623389_
                                   _tl2307723391_))))
                          (___match2871828719_
                           _e2304223298_
                           _hd2304323301_
                           _tl2304423303_
                           _e2305423330_
                           _hd2305523333_
                           _tl2305623335_
                           _e2305723338_
                           _hd2305823341_
                           _tl2305923343_
                           _e2306023346_
                           _hd2306123349_
                           _tl2306223351_
                           _e2306323354_
                           _hd2306423357_
                           _tl2306523359_
                           _e2306623362_
                           _hd2306723365_
                           _tl2306823367_
                           _e2306923370_
                           _hd2307023373_
                           _tl2307123375_
                           _e2307223378_
                           _hd2307323381_
                           _tl2307423383_
                           _e2307523386_
                           _hd2307623389_
                           _tl2307723391_))
                      (___match2871828719_
                       _e2304223298_
                       _hd2304323301_
                       _tl2304423303_
                       _e2305423330_
                       _hd2305523333_
                       _tl2305623335_
                       _e2305723338_
                       _hd2305823341_
                       _tl2305923343_
                       _e2306023346_
                       _hd2306123349_
                       _tl2306223351_
                       _e2306323354_
                       _hd2306423357_
                       _tl2306523359_
                       _e2306623362_
                       _hd2306723365_
                       _tl2306823367_
                       _e2306923370_
                       _hd2307023373_
                       _tl2307123375_
                       _e2307223378_
                       _hd2307323381_
                       _tl2307423383_
                       _e2307523386_
                       _hd2307623389_
                       _tl2307723391_))
                  (___match2871828719_
                   _e2304223298_
                   _hd2304323301_
                   _tl2304423303_
                   _e2305423330_
                   _hd2305523333_
                   _tl2305623335_
                   _e2305723338_
                   _hd2305823341_
                   _tl2305923343_
                   _e2306023346_
                   _hd2306123349_
                   _tl2306223351_
                   _e2306323354_
                   _hd2306423357_
                   _tl2306523359_
                   _e2306623362_
                   _hd2306723365_
                   _tl2306823367_
                   _e2306923370_
                   _hd2307023373_
                   _tl2307123375_
                   _e2307223378_
                   _hd2307323381_
                   _tl2307423383_
                   _e2307523386_
                   _hd2307623389_
                   _tl2307723391_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2871828719_
                                                   _e2304223298_
                                                   _hd2304323301_
                                                   _tl2304423303_
                                                   _e2305423330_
                                                   _hd2305523333_
                                                   _tl2305623335_
                                                   _e2305723338_
                                                   _hd2305823341_
                                                   _tl2305923343_
                                                   _e2306023346_
                                                   _hd2306123349_
                                                   _tl2306223351_
                                                   _e2306323354_
                                                   _hd2306423357_
                                                   _tl2306523359_
                                                   _e2306623362_
                                                   _hd2306723365_
                                                   _tl2306823367_
                                                   _e2306923370_
                                                   _hd2307023373_
                                                   _tl2307123375_
                                                   _e2307223378_
                                                   _hd2307323381_
                                                   _tl2307423383_
                                                   _e2307523386_
                                                   _hd2307623389_
                                                   _tl2307723391_))))
                                          (let ((_xarg2308623455_
                                                 (reverse _xarg2308523428_)))
                                            (if (gx#stx-null? _tl2305623335_)
                                                (let ((_L23458_ _hd2309423418_)
                                                      (_L23459_
                                                       _xarg2308623455_)
                                                      (_L23460_ _hd2307623389_)
                                                      (_L23461_ _hd2306723365_)
                                                      (_L23462_ _tl2304723308_)
                                                      (_L23463_
                                                       _arg2305323327_))
                                                  (if (and (gx#identifier-list?
                                                            (foldr1 (lambda (_g2350623509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g2350723511_)
                              (cons _g2350623509_ _g2350723511_))
                            '()
                            _L23463_))
                   (gx#identifier? _L23462_)
                   (gxc#runtime-identifier=? _L23461_ 'apply)
                   (fx= (length (foldr1 (lambda (_g2351323516_ _g2351423518_)
                                          (cons _g2351323516_ _g2351423518_))
                                        '()
                                        _L23463_))
                        (length (foldr1 (lambda (_g2352023523_ _g2352123525_)
                                          (cons _g2352023523_ _g2352123525_))
                                        '()
                                        _L23459_)))
                   (andmap2 gx#free-identifier=?
                            (foldr1 (lambda (_g2352723530_ _g2352823532_)
                                      (cons _g2352723530_ _g2352823532_))
                                    '()
                                    _L23463_)
                            (foldr1 (lambda (_g2353423537_ _g2353523539_)
                                      (cons _g2353423537_ _g2353523539_))
                                    '()
                                    _L23459_))
                   (gx#free-identifier=? _L23462_ _L23458_)
                   (not (find (lambda (_g2354123543_)
                                (gx#free-identifier=? _g2354123543_ _L23460_))
                              (foldr1 (lambda (_g2354523548_ _g2354623550_)
                                        (cons _g2354523548_ _g2354623550_))
                                      (cons _L23462_ '())
                                      _L23463_))))
              (___kont2861328614_
               _L23458_
               _L23459_
               _L23460_
               _L23461_
               _L23462_
               _L23463_)
              (___match2871828719_
               _e2304223298_
               _hd2304323301_
               _tl2304423303_
               _e2305423330_
               _hd2305523333_
               _tl2305623335_
               _e2305723338_
               _hd2305823341_
               _tl2305923343_
               _e2306023346_
               _hd2306123349_
               _tl2306223351_
               _e2306323354_
               _hd2306423357_
               _tl2306523359_
               _e2306623362_
               _hd2306723365_
               _tl2306823367_
               _e2306923370_
               _hd2307023373_
               _tl2307123375_
               _e2307223378_
               _hd2307323381_
               _tl2307423383_
               _e2307523386_
               _hd2307623389_
               _tl2307723391_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match2871828719_
                                                 _e2304223298_
                                                 _hd2304323301_
                                                 _tl2304423303_
                                                 _e2305423330_
                                                 _hd2305523333_
                                                 _tl2305623335_
                                                 _e2305723338_
                                                 _hd2305823341_
                                                 _tl2305923343_
                                                 _e2306023346_
                                                 _hd2306123349_
                                                 _tl2306223351_
                                                 _e2306323354_
                                                 _hd2306423357_
                                                 _tl2306523359_
                                                 _e2306623362_
                                                 _hd2306723365_
                                                 _tl2306823367_
                                                 _e2306923370_
                                                 _hd2307023373_
                                                 _tl2307123375_
                                                 _e2307223378_
                                                 _hd2307323381_
                                                 _tl2307423383_
                                                 _e2307523386_
                                                 _hd2307623389_
                                                 _tl2307723391_)))))))
                            (_loop2308123423_ _target2307823394_ '()))
                          (___match2871828719_
                           _e2304223298_
                           _hd2304323301_
                           _tl2304423303_
                           _e2305423330_
                           _hd2305523333_
                           _tl2305623335_
                           _e2305723338_
                           _hd2305823341_
                           _tl2305923343_
                           _e2306023346_
                           _hd2306123349_
                           _tl2306223351_
                           _e2306323354_
                           _hd2306423357_
                           _tl2306523359_
                           _e2306623362_
                           _hd2306723365_
                           _tl2306823367_
                           _e2306923370_
                           _hd2307023373_
                           _tl2307123375_
                           _e2307223378_
                           _hd2307323381_
                           _tl2307423383_
                           _e2307523386_
                           _hd2307623389_
                           _tl2307723391_))
                      (___match2871828719_
                       _e2304223298_
                       _hd2304323301_
                       _tl2304423303_
                       _e2305423330_
                       _hd2305523333_
                       _tl2305623335_
                       _e2305723338_
                       _hd2305823341_
                       _tl2305923343_
                       _e2306023346_
                       _hd2306123349_
                       _tl2306223351_
                       _e2306323354_
                       _hd2306423357_
                       _tl2306523359_
                       _e2306623362_
                       _hd2306723365_
                       _tl2306823367_
                       _e2306923370_
                       _hd2307023373_
                       _tl2307123375_
                       _e2307223378_
                       _hd2307323381_
                       _tl2307423383_
                       _e2307523386_
                       _hd2307623389_
                       _tl2307723391_))))
              (___match2871828719_
               _e2304223298_
               _hd2304323301_
               _tl2304423303_
               _e2305423330_
               _hd2305523333_
               _tl2305623335_
               _e2305723338_
               _hd2305823341_
               _tl2305923343_
               _e2306023346_
               _hd2306123349_
               _tl2306223351_
               _e2306323354_
               _hd2306423357_
               _tl2306523359_
               _e2306623362_
               _hd2306723365_
               _tl2306823367_
               _e2306923370_
               _hd2307023373_
               _tl2307123375_
               _e2307223378_
               _hd2307323381_
               _tl2307423383_
               _e2307523386_
               _hd2307623389_
               _tl2307723391_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2871828719_
                                                   _e2304223298_
                                                   _hd2304323301_
                                                   _tl2304423303_
                                                   _e2305423330_
                                                   _hd2305523333_
                                                   _tl2305623335_
                                                   _e2305723338_
                                                   _hd2305823341_
                                                   _tl2305923343_
                                                   _e2306023346_
                                                   _hd2306123349_
                                                   _tl2306223351_
                                                   _e2306323354_
                                                   _hd2306423357_
                                                   _tl2306523359_
                                                   _e2306623362_
                                                   _hd2306723365_
                                                   _tl2306823367_
                                                   _e2306923370_
                                                   _hd2307023373_
                                                   _tl2307123375_
                                                   _e2307223378_
                                                   _hd2307323381_
                                                   _tl2307423383_
                                                   _e2307523386_
                                                   _hd2307623389_
                                                   _tl2307723391_))
                                              (___match2871828719_
                                               _e2304223298_
                                               _hd2304323301_
                                               _tl2304423303_
                                               _e2305423330_
                                               _hd2305523333_
                                               _tl2305623335_
                                               _e2305723338_
                                               _hd2305823341_
                                               _tl2305923343_
                                               _e2306023346_
                                               _hd2306123349_
                                               _tl2306223351_
                                               _e2306323354_
                                               _hd2306423357_
                                               _tl2306523359_
                                               _e2306623362_
                                               _hd2306723365_
                                               _tl2306823367_
                                               _e2306923370_
                                               _hd2307023373_
                                               _tl2307123375_
                                               _e2307223378_
                                               _hd2307323381_
                                               _tl2307423383_
                                               _e2307523386_
                                               _hd2307623389_
                                               _tl2307723391_))))
                                      (___match2871828719_
                                       _e2304223298_
                                       _hd2304323301_
                                       _tl2304423303_
                                       _e2305423330_
                                       _hd2305523333_
                                       _tl2305623335_
                                       _e2305723338_
                                       _hd2305823341_
                                       _tl2305923343_
                                       _e2306023346_
                                       _hd2306123349_
                                       _tl2306223351_
                                       _e2306323354_
                                       _hd2306423357_
                                       _tl2306523359_
                                       _e2306623362_
                                       _hd2306723365_
                                       _tl2306823367_
                                       _e2306923370_
                                       _hd2307023373_
                                       _tl2307123375_
                                       _e2307223378_
                                       _hd2307323381_
                                       _tl2307423383_
                                       _e2307523386_
                                       _hd2307623389_
                                       _tl2307723391_))))
                              (___match2871828719_
                               _e2304223298_
                               _hd2304323301_
                               _tl2304423303_
                               _e2305423330_
                               _hd2305523333_
                               _tl2305623335_
                               _e2305723338_
                               _hd2305823341_
                               _tl2305923343_
                               _e2306023346_
                               _hd2306123349_
                               _tl2306223351_
                               _e2306323354_
                               _hd2306423357_
                               _tl2306523359_
                               _e2306623362_
                               _hd2306723365_
                               _tl2306823367_
                               _e2306923370_
                               _hd2307023373_
                               _tl2307123375_
                               _e2307223378_
                               _hd2307323381_
                               _tl2307423383_
                               _e2307523386_
                               _hd2307623389_
                               _tl2307723391_))))
                      (___match2871828719_
                       _e2304223298_
                       _hd2304323301_
                       _tl2304423303_
                       _e2305423330_
                       _hd2305523333_
                       _tl2305623335_
                       _e2305723338_
                       _hd2305823341_
                       _tl2305923343_
                       _e2306023346_
                       _hd2306123349_
                       _tl2306223351_
                       _e2306323354_
                       _hd2306423357_
                       _tl2306523359_
                       _e2306623362_
                       _hd2306723365_
                       _tl2306823367_
                       _e2306923370_
                       _hd2307023373_
                       _tl2307123375_
                       _e2307223378_
                       _hd2307323381_
                       _tl2307423383_
                       _e2307523386_
                       _hd2307623389_
                       _tl2307723391_))
                  (___match2871828719_
                   _e2304223298_
                   _hd2304323301_
                   _tl2304423303_
                   _e2305423330_
                   _hd2305523333_
                   _tl2305623335_
                   _e2305723338_
                   _hd2305823341_
                   _tl2305923343_
                   _e2306023346_
                   _hd2306123349_
                   _tl2306223351_
                   _e2306323354_
                   _hd2306423357_
                   _tl2306523359_
                   _e2306623362_
                   _hd2306723365_
                   _tl2306823367_
                   _e2306923370_
                   _hd2307023373_
                   _tl2307123375_
                   _e2307223378_
                   _hd2307323381_
                   _tl2307423383_
                   _e2307523386_
                   _hd2307623389_
                   _tl2307723391_))
              (___kont2862128622_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2862128622_))
                                          (___kont2862128622_))
                                      (___kont2862128622_))))
                              (___kont2862128622_))))
                      (___kont2862128622_))
                  (___kont2862128622_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2862128622_))
                                              (___kont2862128622_))
                                          (___kont2862128622_))))
                                  (___kont2862128622_))))
                          (___kont2862128622_))
                      (___kont2862128622_))
                  (___kont2862128622_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2862128622_))))
                                          (___kont2862128622_)))))))
                      (_loop2304823311_ _target2304523306_ '()))))
                 (___match2863628637_
                  (lambda (_e2299423558_
                           _hd2299523561_
                           _tl2299623563_
                           ___splice2860928610_
                           _target2299723566_
                           _tl2299923568_)
                    (letrec ((_loop2300023571_
                              (lambda (_hd2299823574_ _arg2300423576_)
                                (if (gx#stx-pair? _hd2299823574_)
                                    (let ((_e2300123579_
                                           (gx#stx-e _hd2299823574_)))
                                      (let ((_lp-tl2300323584_
                                             (##cdr _e2300123579_))
                                            (_lp-hd2300223582_
                                             (##car _e2300123579_)))
                                        (_loop2300023571_
                                         _lp-tl2300323584_
                                         (cons _lp-hd2300223582_
                                               _arg2300423576_))))
                                    (let ((_arg2300523587_
                                           (reverse _arg2300423576_)))
                                      (if (gx#stx-pair? _tl2299623563_)
                                          (let ((_e2300623590_
                                                 (gx#stx-e _tl2299623563_)))
                                            (let ((_tl2300823595_
                                                   (##cdr _e2300623590_))
                                                  (_hd2300723593_
                                                   (##car _e2300623590_)))
                                              (if (gx#stx-pair? _hd2300723593_)
                                                  (let ((_e2300923598_
                                                         (gx#stx-e
                                                          _hd2300723593_)))
                                                    (let ((_tl2301123603_
                                                           (##cdr _e2300923598_))
                                                          (_hd2301023601_
                                                           (##car _e2300923598_)))
                                                      (if (gx#identifier?
                                                           _hd2301023601_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2301023601_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2301123603_)
                          (let ((_e2301223606_ (gx#stx-e _tl2301123603_)))
                            (let ((_tl2301423611_ (##cdr _e2301223606_))
                                  (_hd2301323609_ (##car _e2301223606_)))
                              (if (gx#stx-pair? _hd2301323609_)
                                  (let ((_e2301523614_
                                         (gx#stx-e _hd2301323609_)))
                                    (let ((_tl2301723619_
                                           (##cdr _e2301523614_))
                                          (_hd2301623617_
                                           (##car _e2301523614_)))
                                      (if (gx#identifier? _hd2301623617_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2301623617_)
                                              (if (gx#stx-pair? _tl2301723619_)
                                                  (let ((_e2301823622_
                                                         (gx#stx-e
                                                          _tl2301723619_)))
                                                    (let ((_tl2302023627_
                                                           (##cdr _e2301823622_))
                                                          (_hd2301923625_
                                                           (##car _e2301823622_)))
                                                      (if (gx#stx-null?
                                                           _tl2302023627_)
                                                          (if (gx#stx-pair/null?
                                                               _tl2301423611_)
                                                              (let ((___splice2861128612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl2301423611_ '0)))
                        (let ((_tl2302323632_
                               (##vector-ref ___splice2861128612_ '1))
                              (_target2302123630_
                               (##vector-ref ___splice2861128612_ '0)))
                          (if (gx#stx-null? _tl2302323632_)
                              (letrec ((_loop2302423635_
                                        (lambda (_hd2302223638_
                                                 _xarg2302823640_)
                                          (if (gx#stx-pair? _hd2302223638_)
                                              (let ((_e2302523643_
                                                     (gx#stx-e
                                                      _hd2302223638_)))
                                                (let ((_lp-tl2302723648_
                                                       (##cdr _e2302523643_))
                                                      (_lp-hd2302623646_
                                                       (##car _e2302523643_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd2302623646_)
                                                      (let ((_e2303023651_
                                                             (gx#stx-e
                                                              _lp-hd2302623646_)))
                                                        (let ((_tl2303223656_
                                                               (##cdr _e2303023651_))
                                                              (_hd2303123654_
                                                               (##car _e2303023651_)))
                                                          (if (gx#identifier?
                                                               _hd2303123654_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2303123654_)
                          (if (gx#stx-pair? _tl2303223656_)
                              (let ((_e2303323659_ (gx#stx-e _tl2303223656_)))
                                (let ((_tl2303523664_ (##cdr _e2303323659_))
                                      (_hd2303423662_ (##car _e2303323659_)))
                                  (if (gx#stx-null? _tl2303523664_)
                                      (_loop2302423635_
                                       _lp-tl2302723648_
                                       (cons _hd2303423662_ _xarg2302823640_))
                                      (___match2864828649_
                                       _e2299423558_
                                       _hd2299523561_
                                       _tl2299623563_
                                       ___splice2860928610_
                                       _target2299723566_
                                       _tl2299923568_))))
                              (___match2864828649_
                               _e2299423558_
                               _hd2299523561_
                               _tl2299623563_
                               ___splice2860928610_
                               _target2299723566_
                               _tl2299923568_))
                          (___match2864828649_
                           _e2299423558_
                           _hd2299523561_
                           _tl2299623563_
                           ___splice2860928610_
                           _target2299723566_
                           _tl2299923568_))
                      (___match2864828649_
                       _e2299423558_
                       _hd2299523561_
                       _tl2299623563_
                       ___splice2860928610_
                       _target2299723566_
                       _tl2299923568_))))
              (___match2864828649_
               _e2299423558_
               _hd2299523561_
               _tl2299623563_
               ___splice2860928610_
               _target2299723566_
               _tl2299923568_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg2302923667_
                                                     (reverse _xarg2302823640_)))
                                                (if (gx#stx-null?
                                                     _tl2300823595_)
                                                    (let ((_L23670_
                                                           _xarg2302923667_)
                                                          (_L23671_
                                                           _hd2301923625_)
                                                          (_L23672_
                                                           _arg2300523587_))
                                                      (if (and (gx#identifier-list?
                                                                (foldr1 (lambda (_g2370023703_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g2370123705_)
                                  (cons _g2370023703_ _g2370123705_))
                                '()
                                _L23672_))
                       (fx= (length (foldr1 (lambda (_g2370723710_
                                                     _g2370823712_)
                                              (cons _g2370723710_
                                                    _g2370823712_))
                                            '()
                                            _L23672_))
                            (length (foldr1 (lambda (_g2371423717_
                                                     _g2371523719_)
                                              (cons _g2371423717_
                                                    _g2371523719_))
                                            '()
                                            _L23670_)))
                       (andmap2 gx#free-identifier=?
                                (foldr1 (lambda (_g2372123724_ _g2372223726_)
                                          (cons _g2372123724_ _g2372223726_))
                                        '()
                                        _L23672_)
                                (foldr1 (lambda (_g2372823731_ _g2372923733_)
                                          (cons _g2372823731_ _g2372923733_))
                                        '()
                                        _L23670_))
                       (not (find (lambda (_g2373523737_)
                                    (gx#free-identifier=?
                                     _g2373523737_
                                     _L23671_))
                                  (foldr1 (lambda (_g2373923742_ _g2374023744_)
                                            (cons _g2373923742_ _g2374023744_))
                                          '()
                                          _L23672_))))
                  (___kont2860728608_ _L23670_ _L23671_ _L23672_)
                  (___match2864828649_
                   _e2299423558_
                   _hd2299523561_
                   _tl2299623563_
                   ___splice2860928610_
                   _target2299723566_
                   _tl2299923568_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match2864828649_
                                                     _e2299423558_
                                                     _hd2299523561_
                                                     _tl2299623563_
                                                     ___splice2860928610_
                                                     _target2299723566_
                                                     _tl2299923568_)))))))
                                (_loop2302423635_ _target2302123630_ '()))
                              (___match2864828649_
                               _e2299423558_
                               _hd2299523561_
                               _tl2299623563_
                               ___splice2860928610_
                               _target2299723566_
                               _tl2299923568_))))
                      (___match2864828649_
                       _e2299423558_
                       _hd2299523561_
                       _tl2299623563_
                       ___splice2860928610_
                       _target2299723566_
                       _tl2299923568_))
                  (___match2864828649_
                   _e2299423558_
                   _hd2299523561_
                   _tl2299623563_
                   ___splice2860928610_
                   _target2299723566_
                   _tl2299923568_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2864828649_
                                                   _e2299423558_
                                                   _hd2299523561_
                                                   _tl2299623563_
                                                   ___splice2860928610_
                                                   _target2299723566_
                                                   _tl2299923568_))
                                              (___match2864828649_
                                               _e2299423558_
                                               _hd2299523561_
                                               _tl2299623563_
                                               ___splice2860928610_
                                               _target2299723566_
                                               _tl2299923568_))
                                          (___match2864828649_
                                           _e2299423558_
                                           _hd2299523561_
                                           _tl2299623563_
                                           ___splice2860928610_
                                           _target2299723566_
                                           _tl2299923568_))))
                                  (___match2864828649_
                                   _e2299423558_
                                   _hd2299523561_
                                   _tl2299623563_
                                   ___splice2860928610_
                                   _target2299723566_
                                   _tl2299923568_))))
                          (___match2864828649_
                           _e2299423558_
                           _hd2299523561_
                           _tl2299623563_
                           ___splice2860928610_
                           _target2299723566_
                           _tl2299923568_))
                      (___match2864828649_
                       _e2299423558_
                       _hd2299523561_
                       _tl2299623563_
                       ___splice2860928610_
                       _target2299723566_
                       _tl2299923568_))
                  (___match2864828649_
                   _e2299423558_
                   _hd2299523561_
                   _tl2299623563_
                   ___splice2860928610_
                   _target2299723566_
                   _tl2299923568_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2864828649_
                                                   _e2299423558_
                                                   _hd2299523561_
                                                   _tl2299623563_
                                                   ___splice2860928610_
                                                   _target2299723566_
                                                   _tl2299923568_))))
                                          (___match2864828649_
                                           _e2299423558_
                                           _hd2299523561_
                                           _tl2299623563_
                                           ___splice2860928610_
                                           _target2299723566_
                                           _tl2299923568_)))))))
                      (_loop2300023571_ _target2299723566_ '())))))
            (if (gx#stx-pair? ___stx2860528606_)
                (let ((_e2299423558_ (gx#stx-e ___stx2860528606_)))
                  (let ((_tl2299623563_ (##cdr _e2299423558_))
                        (_hd2299523561_ (##car _e2299423558_)))
                    (if (gx#stx-pair/null? _hd2299523561_)
                        (let ((___splice2860928610_
                               (gx#syntax-split-splice _hd2299523561_ '0)))
                          (let ((_tl2299923568_
                                 (##vector-ref ___splice2860928610_ '1))
                                (_target2299723566_
                                 (##vector-ref ___splice2860928610_ '0)))
                            (if (gx#stx-null? _tl2299923568_)
                                (___match2863628637_
                                 _e2299423558_
                                 _hd2299523561_
                                 _tl2299623563_
                                 ___splice2860928610_
                                 _target2299723566_
                                 _tl2299923568_)
                                (___match2864828649_
                                 _e2299423558_
                                 _hd2299523561_
                                 _tl2299623563_
                                 ___splice2860928610_
                                 _target2299723566_
                                 _tl2299923568_))))
                        (if (gx#stx-pair? _tl2299623563_)
                            (let ((_e2310923166_ (gx#stx-e _tl2299623563_)))
                              (let ((_tl2311123171_ (##cdr _e2310923166_))
                                    (_hd2311023169_ (##car _e2310923166_)))
                                (if (gx#stx-pair? _hd2311023169_)
                                    (let ((_e2311223174_
                                           (gx#stx-e _hd2311023169_)))
                                      (let ((_tl2311423179_
                                             (##cdr _e2311223174_))
                                            (_hd2311323177_
                                             (##car _e2311223174_)))
                                        (if (gx#identifier? _hd2311323177_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2311323177_)
                                                (if (gx#stx-pair?
                                                     _tl2311423179_)
                                                    (let ((_e2311523182_
                                                           (gx#stx-e
                                                            _tl2311423179_)))
                                                      (let ((_tl2311723187_
                                                             (##cdr _e2311523182_))
                                                            (_hd2311623185_
                                                             (##car _e2311523182_)))
                                                        (if (gx#stx-pair?
                                                             _hd2311623185_)
                                                            (let ((_e2311823190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2311623185_)))
                      (let ((_tl2312023195_ (##cdr _e2311823190_))
                            (_hd2311923193_ (##car _e2311823190_)))
                        (if (gx#identifier? _hd2311923193_)
                            (if (gx#stx-eq? '%#ref _hd2311923193_)
                                (if (gx#stx-pair? _tl2312023195_)
                                    (let ((_e2312123198_
                                           (gx#stx-e _tl2312023195_)))
                                      (let ((_tl2312323203_
                                             (##cdr _e2312123198_))
                                            (_hd2312223201_
                                             (##car _e2312123198_)))
                                        (if (gx#stx-null? _tl2312323203_)
                                            (if (gx#stx-pair? _tl2311723187_)
                                                (let ((_e2312423206_
                                                       (gx#stx-e
                                                        _tl2311723187_)))
                                                  (let ((_tl2312623211_
                                                         (##cdr _e2312423206_))
                                                        (_hd2312523209_
                                                         (##car _e2312423206_)))
                                                    (if (gx#stx-pair?
                                                         _hd2312523209_)
                                                        (let ((_e2312723214_
                                                               (gx#stx-e
                                                                _hd2312523209_)))
                                                          (let ((_tl2312923219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2312723214_))
                        (_hd2312823217_ (##car _e2312723214_)))
                    (if (gx#identifier? _hd2312823217_)
                        (if (gx#stx-eq? '%#ref _hd2312823217_)
                            (if (gx#stx-pair? _tl2312923219_)
                                (let ((_e2313023222_
                                       (gx#stx-e _tl2312923219_)))
                                  (let ((_tl2313223227_ (##cdr _e2313023222_))
                                        (_hd2313123225_ (##car _e2313023222_)))
                                    (if (gx#stx-null? _tl2313223227_)
                                        (if (gx#stx-pair? _tl2312623211_)
                                            (let ((_e2313323230_
                                                   (gx#stx-e _tl2312623211_)))
                                              (let ((_tl2313523235_
                                                     (##cdr _e2313323230_))
                                                    (_hd2313423233_
                                                     (##car _e2313323230_)))
                                                (if (gx#stx-pair?
                                                     _hd2313423233_)
                                                    (let ((_e2313623238_
                                                           (gx#stx-e
                                                            _hd2313423233_)))
                                                      (let ((_tl2313823243_
                                                             (##cdr _e2313623238_))
                                                            (_hd2313723241_
                                                             (##car _e2313623238_)))
                                                        (if (gx#identifier?
                                                             _hd2313723241_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2313723241_)
                        (if (gx#stx-pair? _tl2313823243_)
                            (let ((_e2313923246_ (gx#stx-e _tl2313823243_)))
                              (let ((_tl2314123251_ (##cdr _e2313923246_))
                                    (_hd2314023249_ (##car _e2313923246_)))
                                (if (gx#stx-null? _tl2314123251_)
                                    (if (gx#stx-null? _tl2313523235_)
                                        (if (gx#stx-null? _tl2311123171_)
                                            (___match2874628747_
                                             _e2299423558_
                                             _hd2299523561_
                                             _tl2299623563_
                                             _e2310923166_
                                             _hd2311023169_
                                             _tl2311123171_
                                             _e2311223174_
                                             _hd2311323177_
                                             _tl2311423179_
                                             _e2311523182_
                                             _hd2311623185_
                                             _tl2311723187_
                                             _e2311823190_
                                             _hd2311923193_
                                             _tl2312023195_
                                             _e2312123198_
                                             _hd2312223201_
                                             _tl2312323203_
                                             _e2312423206_
                                             _hd2312523209_
                                             _tl2312623211_
                                             _e2312723214_
                                             _hd2312823217_
                                             _tl2312923219_
                                             _e2313023222_
                                             _hd2313123225_
                                             _tl2313223227_
                                             _e2313323230_
                                             _hd2313423233_
                                             _tl2313523235_
                                             _e2313623238_
                                             _hd2313723241_
                                             _tl2313823243_
                                             _e2313923246_
                                             _hd2314023249_
                                             _tl2314123251_)
                                            (___kont2862128622_))
                                        (___kont2862128622_))
                                    (___kont2862128622_))))
                            (___kont2862128622_))
                        (___kont2862128622_))
                    (___kont2862128622_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2862128622_))))
                                            (___kont2862128622_))
                                        (___kont2862128622_))))
                                (___kont2862128622_))
                            (___kont2862128622_))
                        (___kont2862128622_))))
                (___kont2862128622_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont2862128622_))
                                            (___kont2862128622_))))
                                    (___kont2862128622_))
                                (___kont2862128622_))
                            (___kont2862128622_))))
                    (___kont2862128622_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2862128622_))
                                                (___kont2862128622_))
                                            (___kont2862128622_))))
                                    (___kont2862128622_))))
                            (___kont2862128622_)))))
                (___kont2862128622_)))))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form22452_)
      (let* ((___stx2874928750_ _form22452_)
             (_g2245622580_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2874928750_))))
        (let ((___kont2875128752_
               (lambda (_L22950_ _L22951_ _L22952_)
                 (gxc#identifier-symbol _L22951_)))
              (___kont2875728758_
               (lambda (_L22798_ _L22799_ _L22800_ _L22801_)
                 (gxc#identifier-symbol _L22798_)))
              (___kont2876128762_
               (lambda (_L22665_ _L22666_ _L22667_)
                 (gxc#identifier-symbol _L22665_))))
          (let* ((___match2885828859_
                  (lambda (_e2254622585_
                           _hd2254722588_
                           _tl2254822590_
                           _e2254922593_
                           _hd2255022596_
                           _tl2255122598_
                           _e2255222601_
                           _hd2255322604_
                           _tl2255422606_
                           _e2255522609_
                           _hd2255622612_
                           _tl2255722614_
                           _e2255822617_
                           _hd2255922620_
                           _tl2256022622_
                           _e2256122625_
                           _hd2256222628_
                           _tl2256322630_
                           _e2256422633_
                           _hd2256522636_
                           _tl2256622638_
                           _e2256722641_
                           _hd2256822644_
                           _tl2256922646_
                           _e2257022649_
                           _hd2257122652_
                           _tl2257222654_)
                    (if (gx#stx-pair? _tl2256622638_)
                        (let ((_e2257322657_ (gx#stx-e _tl2256622638_)))
                          (let ((_tl2257522662_ (##cdr _e2257322657_))
                                (_hd2257422660_ (##car _e2257322657_)))
                            (if (gx#stx-null? _tl2257522662_)
                                (if (gx#stx-null? _tl2255122598_)
                                    (___kont2876128762_
                                     _hd2257122652_
                                     _hd2256222628_
                                     _hd2254722588_)
                                    (_g2245622580_))
                                (_g2245622580_))))
                        (_g2245622580_))))
                 (___match2878828789_
                  (lambda (_e2250722702_
                           _hd2250822705_
                           _tl2250922707_
                           ___splice2875928760_
                           _target2251022710_
                           _tl2251222712_)
                    (letrec ((_loop2251322715_
                              (lambda (_hd2251122718_ _arg2251722720_)
                                (if (gx#stx-pair? _hd2251122718_)
                                    (let ((_e2251422723_
                                           (gx#stx-e _hd2251122718_)))
                                      (let ((_lp-tl2251622728_
                                             (##cdr _e2251422723_))
                                            (_lp-hd2251522726_
                                             (##car _e2251422723_)))
                                        (_loop2251322715_
                                         _lp-tl2251622728_
                                         (cons _lp-hd2251522726_
                                               _arg2251722720_))))
                                    (let ((_arg2251822731_
                                           (reverse _arg2251722720_)))
                                      (if (gx#stx-pair? _tl2250922707_)
                                          (let ((_e2251922734_
                                                 (gx#stx-e _tl2250922707_)))
                                            (let ((_tl2252122739_
                                                   (##cdr _e2251922734_))
                                                  (_hd2252022737_
                                                   (##car _e2251922734_)))
                                              (if (gx#stx-pair? _hd2252022737_)
                                                  (let ((_e2252222742_
                                                         (gx#stx-e
                                                          _hd2252022737_)))
                                                    (let ((_tl2252422747_
                                                           (##cdr _e2252222742_))
                                                          (_hd2252322745_
                                                           (##car _e2252222742_)))
                                                      (if (gx#identifier?
                                                           _hd2252322745_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2252322745_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2252422747_)
                          (let ((_e2252522750_ (gx#stx-e _tl2252422747_)))
                            (let ((_tl2252722755_ (##cdr _e2252522750_))
                                  (_hd2252622753_ (##car _e2252522750_)))
                              (if (gx#stx-pair? _hd2252622753_)
                                  (let ((_e2252822758_
                                         (gx#stx-e _hd2252622753_)))
                                    (let ((_tl2253022763_
                                           (##cdr _e2252822758_))
                                          (_hd2252922761_
                                           (##car _e2252822758_)))
                                      (if (gx#identifier? _hd2252922761_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2252922761_)
                                              (if (gx#stx-pair? _tl2253022763_)
                                                  (let ((_e2253122766_
                                                         (gx#stx-e
                                                          _tl2253022763_)))
                                                    (let ((_tl2253322771_
                                                           (##cdr _e2253122766_))
                                                          (_hd2253222769_
                                                           (##car _e2253122766_)))
                                                      (if (gx#stx-null?
                                                           _tl2253322771_)
                                                          (if (gx#stx-pair?
                                                               _tl2252722755_)
                                                              (let ((_e2253422774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2252722755_)))
                        (let ((_tl2253622779_ (##cdr _e2253422774_))
                              (_hd2253522777_ (##car _e2253422774_)))
                          (if (gx#stx-pair? _hd2253522777_)
                              (let ((_e2253722782_ (gx#stx-e _hd2253522777_)))
                                (let ((_tl2253922787_ (##cdr _e2253722782_))
                                      (_hd2253822785_ (##car _e2253722782_)))
                                  (if (gx#identifier? _hd2253822785_)
                                      (if (gx#stx-eq? '%#ref _hd2253822785_)
                                          (if (gx#stx-pair? _tl2253922787_)
                                              (let ((_e2254022790_
                                                     (gx#stx-e
                                                      _tl2253922787_)))
                                                (let ((_tl2254222795_
                                                       (##cdr _e2254022790_))
                                                      (_hd2254122793_
                                                       (##car _e2254022790_)))
                                                  (if (gx#stx-null?
                                                       _tl2254222795_)
                                                      (if (gx#stx-null?
                                                           _tl2252122739_)
                                                          (___kont2875728758_
                                                           _hd2254122793_
                                                           _hd2253222769_
                                                           _tl2251222712_
                                                           _arg2251822731_)
                                                          (___match2885828859_
                                                           _e2250722702_
                                                           _hd2250822705_
                                                           _tl2250922707_
                                                           _e2251922734_
                                                           _hd2252022737_
                                                           _tl2252122739_
                                                           _e2252222742_
                                                           _hd2252322745_
                                                           _tl2252422747_
                                                           _e2252522750_
                                                           _hd2252622753_
                                                           _tl2252722755_
                                                           _e2252822758_
                                                           _hd2252922761_
                                                           _tl2253022763_
                                                           _e2253122766_
                                                           _hd2253222769_
                                                           _tl2253322771_
                                                           _e2253422774_
                                                           _hd2253522777_
                                                           _tl2253622779_
                                                           _e2253722782_
                                                           _hd2253822785_
                                                           _tl2253922787_
                                                           _e2254022790_
                                                           _hd2254122793_
                                                           _tl2254222795_))
                                                      (_g2245622580_))))
                                              (_g2245622580_))
                                          (_g2245622580_))
                                      (_g2245622580_))))
                              (_g2245622580_))))
                      (_g2245622580_))
                  (_g2245622580_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2245622580_))
                                              (_g2245622580_))
                                          (_g2245622580_))))
                                  (_g2245622580_))))
                          (_g2245622580_))
                      (_g2245622580_))
                  (_g2245622580_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2245622580_))))
                                          (_g2245622580_)))))))
                      (_loop2251322715_ _target2251022710_ '()))))
                 (___match2877628777_
                  (lambda (_e2246122838_
                           _hd2246222841_
                           _tl2246322843_
                           ___splice2875328754_
                           _target2246422846_
                           _tl2246622848_)
                    (letrec ((_loop2246722851_
                              (lambda (_hd2246522854_ _arg2247122856_)
                                (if (gx#stx-pair? _hd2246522854_)
                                    (let ((_e2246822859_
                                           (gx#stx-e _hd2246522854_)))
                                      (let ((_lp-tl2247022864_
                                             (##cdr _e2246822859_))
                                            (_lp-hd2246922862_
                                             (##car _e2246822859_)))
                                        (_loop2246722851_
                                         _lp-tl2247022864_
                                         (cons _lp-hd2246922862_
                                               _arg2247122856_))))
                                    (let ((_arg2247222867_
                                           (reverse _arg2247122856_)))
                                      (if (gx#stx-pair? _tl2246322843_)
                                          (let ((_e2247322870_
                                                 (gx#stx-e _tl2246322843_)))
                                            (let ((_tl2247522875_
                                                   (##cdr _e2247322870_))
                                                  (_hd2247422873_
                                                   (##car _e2247322870_)))
                                              (if (gx#stx-pair? _hd2247422873_)
                                                  (let ((_e2247622878_
                                                         (gx#stx-e
                                                          _hd2247422873_)))
                                                    (let ((_tl2247822883_
                                                           (##cdr _e2247622878_))
                                                          (_hd2247722881_
                                                           (##car _e2247622878_)))
                                                      (if (gx#identifier?
                                                           _hd2247722881_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2247722881_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2247822883_)
                          (let ((_e2247922886_ (gx#stx-e _tl2247822883_)))
                            (let ((_tl2248122891_ (##cdr _e2247922886_))
                                  (_hd2248022889_ (##car _e2247922886_)))
                              (if (gx#stx-pair? _hd2248022889_)
                                  (let ((_e2248222894_
                                         (gx#stx-e _hd2248022889_)))
                                    (let ((_tl2248422899_
                                           (##cdr _e2248222894_))
                                          (_hd2248322897_
                                           (##car _e2248222894_)))
                                      (if (gx#identifier? _hd2248322897_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2248322897_)
                                              (if (gx#stx-pair? _tl2248422899_)
                                                  (let ((_e2248522902_
                                                         (gx#stx-e
                                                          _tl2248422899_)))
                                                    (let ((_tl2248722907_
                                                           (##cdr _e2248522902_))
                                                          (_hd2248622905_
                                                           (##car _e2248522902_)))
                                                      (if (gx#stx-null?
                                                           _tl2248722907_)
                                                          (if (gx#stx-pair/null?
                                                               _tl2248122891_)
                                                              (let ((___splice2875528756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice _tl2248122891_ '0)))
                        (let ((_tl2249022912_
                               (##vector-ref ___splice2875528756_ '1))
                              (_target2248822910_
                               (##vector-ref ___splice2875528756_ '0)))
                          (if (gx#stx-null? _tl2249022912_)
                              (letrec ((_loop2249122915_
                                        (lambda (_hd2248922918_
                                                 _xarg2249522920_)
                                          (if (gx#stx-pair? _hd2248922918_)
                                              (let ((_e2249222923_
                                                     (gx#stx-e
                                                      _hd2248922918_)))
                                                (let ((_lp-tl2249422928_
                                                       (##cdr _e2249222923_))
                                                      (_lp-hd2249322926_
                                                       (##car _e2249222923_)))
                                                  (if (gx#stx-pair?
                                                       _lp-hd2249322926_)
                                                      (let ((_e2249722931_
                                                             (gx#stx-e
                                                              _lp-hd2249322926_)))
                                                        (let ((_tl2249922936_
                                                               (##cdr _e2249722931_))
                                                              (_hd2249822934_
                                                               (##car _e2249722931_)))
                                                          (if (gx#identifier?
                                                               _hd2249822934_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2249822934_)
                          (if (gx#stx-pair? _tl2249922936_)
                              (let ((_e2250022939_ (gx#stx-e _tl2249922936_)))
                                (let ((_tl2250222944_ (##cdr _e2250022939_))
                                      (_hd2250122942_ (##car _e2250022939_)))
                                  (if (gx#stx-null? _tl2250222944_)
                                      (_loop2249122915_
                                       _lp-tl2249422928_
                                       (cons _hd2250122942_ _xarg2249522920_))
                                      (___match2878828789_
                                       _e2246122838_
                                       _hd2246222841_
                                       _tl2246322843_
                                       ___splice2875328754_
                                       _target2246422846_
                                       _tl2246622848_))))
                              (___match2878828789_
                               _e2246122838_
                               _hd2246222841_
                               _tl2246322843_
                               ___splice2875328754_
                               _target2246422846_
                               _tl2246622848_))
                          (___match2878828789_
                           _e2246122838_
                           _hd2246222841_
                           _tl2246322843_
                           ___splice2875328754_
                           _target2246422846_
                           _tl2246622848_))
                      (___match2878828789_
                       _e2246122838_
                       _hd2246222841_
                       _tl2246322843_
                       ___splice2875328754_
                       _target2246422846_
                       _tl2246622848_))))
              (___match2878828789_
               _e2246122838_
               _hd2246222841_
               _tl2246322843_
               ___splice2875328754_
               _target2246422846_
               _tl2246622848_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_xarg2249622947_
                                                     (reverse _xarg2249522920_)))
                                                (if (gx#stx-null?
                                                     _tl2247522875_)
                                                    (___kont2875128752_
                                                     _xarg2249622947_
                                                     _hd2248622905_
                                                     _arg2247222867_)
                                                    (___match2878828789_
                                                     _e2246122838_
                                                     _hd2246222841_
                                                     _tl2246322843_
                                                     ___splice2875328754_
                                                     _target2246422846_
                                                     _tl2246622848_)))))))
                                (_loop2249122915_ _target2248822910_ '()))
                              (___match2878828789_
                               _e2246122838_
                               _hd2246222841_
                               _tl2246322843_
                               ___splice2875328754_
                               _target2246422846_
                               _tl2246622848_))))
                      (___match2878828789_
                       _e2246122838_
                       _hd2246222841_
                       _tl2246322843_
                       ___splice2875328754_
                       _target2246422846_
                       _tl2246622848_))
                  (___match2878828789_
                   _e2246122838_
                   _hd2246222841_
                   _tl2246322843_
                   ___splice2875328754_
                   _target2246422846_
                   _tl2246622848_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2878828789_
                                                   _e2246122838_
                                                   _hd2246222841_
                                                   _tl2246322843_
                                                   ___splice2875328754_
                                                   _target2246422846_
                                                   _tl2246622848_))
                                              (___match2878828789_
                                               _e2246122838_
                                               _hd2246222841_
                                               _tl2246322843_
                                               ___splice2875328754_
                                               _target2246422846_
                                               _tl2246622848_))
                                          (___match2878828789_
                                           _e2246122838_
                                           _hd2246222841_
                                           _tl2246322843_
                                           ___splice2875328754_
                                           _target2246422846_
                                           _tl2246622848_))))
                                  (___match2878828789_
                                   _e2246122838_
                                   _hd2246222841_
                                   _tl2246322843_
                                   ___splice2875328754_
                                   _target2246422846_
                                   _tl2246622848_))))
                          (___match2878828789_
                           _e2246122838_
                           _hd2246222841_
                           _tl2246322843_
                           ___splice2875328754_
                           _target2246422846_
                           _tl2246622848_))
                      (___match2878828789_
                       _e2246122838_
                       _hd2246222841_
                       _tl2246322843_
                       ___splice2875328754_
                       _target2246422846_
                       _tl2246622848_))
                  (___match2878828789_
                   _e2246122838_
                   _hd2246222841_
                   _tl2246322843_
                   ___splice2875328754_
                   _target2246422846_
                   _tl2246622848_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2878828789_
                                                   _e2246122838_
                                                   _hd2246222841_
                                                   _tl2246322843_
                                                   ___splice2875328754_
                                                   _target2246422846_
                                                   _tl2246622848_))))
                                          (___match2878828789_
                                           _e2246122838_
                                           _hd2246222841_
                                           _tl2246322843_
                                           ___splice2875328754_
                                           _target2246422846_
                                           _tl2246622848_)))))))
                      (_loop2246722851_ _target2246422846_ '())))))
            (if (gx#stx-pair? ___stx2874928750_)
                (let ((_e2246122838_ (gx#stx-e ___stx2874928750_)))
                  (let ((_tl2246322843_ (##cdr _e2246122838_))
                        (_hd2246222841_ (##car _e2246122838_)))
                    (if (gx#stx-pair/null? _hd2246222841_)
                        (let ((___splice2875328754_
                               (gx#syntax-split-splice _hd2246222841_ '0)))
                          (let ((_tl2246622848_
                                 (##vector-ref ___splice2875328754_ '1))
                                (_target2246422846_
                                 (##vector-ref ___splice2875328754_ '0)))
                            (if (gx#stx-null? _tl2246622848_)
                                (___match2877628777_
                                 _e2246122838_
                                 _hd2246222841_
                                 _tl2246322843_
                                 ___splice2875328754_
                                 _target2246422846_
                                 _tl2246622848_)
                                (___match2878828789_
                                 _e2246122838_
                                 _hd2246222841_
                                 _tl2246322843_
                                 ___splice2875328754_
                                 _target2246422846_
                                 _tl2246622848_))))
                        (if (gx#stx-pair? _tl2246322843_)
                            (let ((_e2254922593_ (gx#stx-e _tl2246322843_)))
                              (let ((_tl2255122598_ (##cdr _e2254922593_))
                                    (_hd2255022596_ (##car _e2254922593_)))
                                (if (gx#stx-pair? _hd2255022596_)
                                    (let ((_e2255222601_
                                           (gx#stx-e _hd2255022596_)))
                                      (let ((_tl2255422606_
                                             (##cdr _e2255222601_))
                                            (_hd2255322604_
                                             (##car _e2255222601_)))
                                        (if (gx#identifier? _hd2255322604_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2255322604_)
                                                (if (gx#stx-pair?
                                                     _tl2255422606_)
                                                    (let ((_e2255522609_
                                                           (gx#stx-e
                                                            _tl2255422606_)))
                                                      (let ((_tl2255722614_
                                                             (##cdr _e2255522609_))
                                                            (_hd2255622612_
                                                             (##car _e2255522609_)))
                                                        (if (gx#stx-pair?
                                                             _hd2255622612_)
                                                            (let ((_e2255822617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2255622612_)))
                      (let ((_tl2256022622_ (##cdr _e2255822617_))
                            (_hd2255922620_ (##car _e2255822617_)))
                        (if (gx#identifier? _hd2255922620_)
                            (if (gx#stx-eq? '%#ref _hd2255922620_)
                                (if (gx#stx-pair? _tl2256022622_)
                                    (let ((_e2256122625_
                                           (gx#stx-e _tl2256022622_)))
                                      (let ((_tl2256322630_
                                             (##cdr _e2256122625_))
                                            (_hd2256222628_
                                             (##car _e2256122625_)))
                                        (if (gx#stx-null? _tl2256322630_)
                                            (if (gx#stx-pair? _tl2255722614_)
                                                (let ((_e2256422633_
                                                       (gx#stx-e
                                                        _tl2255722614_)))
                                                  (let ((_tl2256622638_
                                                         (##cdr _e2256422633_))
                                                        (_hd2256522636_
                                                         (##car _e2256422633_)))
                                                    (if (gx#stx-pair?
                                                         _hd2256522636_)
                                                        (let ((_e2256722641_
                                                               (gx#stx-e
                                                                _hd2256522636_)))
                                                          (let ((_tl2256922646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e2256722641_))
                        (_hd2256822644_ (##car _e2256722641_)))
                    (if (gx#identifier? _hd2256822644_)
                        (if (gx#stx-eq? '%#ref _hd2256822644_)
                            (if (gx#stx-pair? _tl2256922646_)
                                (let ((_e2257022649_
                                       (gx#stx-e _tl2256922646_)))
                                  (let ((_tl2257222654_ (##cdr _e2257022649_))
                                        (_hd2257122652_ (##car _e2257022649_)))
                                    (if (gx#stx-null? _tl2257222654_)
                                        (if (gx#stx-pair? _tl2256622638_)
                                            (let ((_e2257322657_
                                                   (gx#stx-e _tl2256622638_)))
                                              (let ((_tl2257522662_
                                                     (##cdr _e2257322657_))
                                                    (_hd2257422660_
                                                     (##car _e2257322657_)))
                                                (if (gx#stx-null?
                                                     _tl2257522662_)
                                                    (if (gx#stx-null?
                                                         _tl2255122598_)
                                                        (___kont2876128762_
                                                         _hd2257122652_
                                                         _hd2256222628_
                                                         _hd2246222841_)
                                                        (_g2245622580_))
                                                    (_g2245622580_))))
                                            (_g2245622580_))
                                        (_g2245622580_))))
                                (_g2245622580_))
                            (_g2245622580_))
                        (_g2245622580_))))
                (_g2245622580_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2245622580_))
                                            (_g2245622580_))))
                                    (_g2245622580_))
                                (_g2245622580_))
                            (_g2245622580_))))
                    (_g2245622580_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2245622580_))
                                                (_g2245622580_))
                                            (_g2245622580_))))
                                    (_g2245622580_))))
                            (_g2245622580_)))))
                (_g2245622580_)))))))
  (define gxc#lambda-form-arity
    (lambda (_form22256_)
      (let* ((_g2225822272_
              (lambda (_g2225922269_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2225922269_)))
             (_g2225722449_
              (lambda (_g2225922275_)
                (if (gx#stx-pair? _g2225922275_)
                    (let ((_e2226222277_ (gx#stx-e _g2225922275_)))
                      (let ((_hd2226322280_ (##car _e2226222277_))
                            (_tl2226422282_ (##cdr _e2226222277_)))
                        (if (gx#stx-pair? _tl2226422282_)
                            (let ((_e2226522285_ (gx#stx-e _tl2226422282_)))
                              (let ((_hd2226622288_ (##car _e2226522285_))
                                    (_tl2226722290_ (##cdr _e2226522285_)))
                                (if (gx#stx-null? _tl2226722290_)
                                    ((lambda (_L22293_ _L22294_)
                                       (let* ((___stx2887128872_ _L22294_)
                                              (_g2230922337_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  ___stx2887128872_))))
                                         (let ((___kont2887328874_
                                                (lambda (_L22428_)
                                                  (length (foldr1 (lambda (_g2243822441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2243922443_)
                            (cons _g2243822441_ _g2243922443_))
                          '()
                          _L22428_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2887728878_
                                                (lambda (_L22379_ _L22380_)
                                                  (cons (length (foldr1 (lambda (_g2239122394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         _g2239222396_)
                                  (cons _g2239122394_ _g2239222396_))
                                '()
                                _L22380_))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2888128882_
                                                (lambda (_L22342_)
                                                  (cons '0 '()))))
                                           (let* ((___match2889628897_
                                                   (lambda (___splice2887928880_
                                                            _target2232322355_
                                                            _tl2232522357_)
                                                     (letrec ((_loop2232622360_
                                                               (lambda (_hd2232422363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _arg2233022365_)
                         (if (gx#stx-pair? _hd2232422363_)
                             (let ((_e2232722368_ (gx#stx-e _hd2232422363_)))
                               (let ((_lp-tl2232922373_ (##cdr _e2232722368_))
                                     (_lp-hd2232822371_ (##car _e2232722368_)))
                                 (_loop2232622360_
                                  _lp-tl2232922373_
                                  (cons _lp-hd2232822371_ _arg2233022365_))))
                             (let ((_arg2233122376_ (reverse _arg2233022365_)))
                               (___kont2887728878_
                                _tl2232522357_
                                _arg2233122376_))))))
               (_loop2232622360_ _target2232322355_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match2889028891_
                                                   (lambda (___splice2887528876_
                                                            _target2231222404_
                                                            _tl2231422406_)
                                                     (letrec ((_loop2231522409_
                                                               (lambda (_hd2231322412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _arg2231922414_)
                         (if (gx#stx-pair? _hd2231322412_)
                             (let ((_e2231622417_ (gx#stx-e _hd2231322412_)))
                               (let ((_lp-tl2231822422_ (##cdr _e2231622417_))
                                     (_lp-hd2231722420_ (##car _e2231622417_)))
                                 (_loop2231522409_
                                  _lp-tl2231822422_
                                  (cons _lp-hd2231722420_ _arg2231922414_))))
                             (let ((_arg2232022425_ (reverse _arg2231922414_)))
                               (___kont2887328874_ _arg2232022425_))))))
               (_loop2231522409_ _target2231222404_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (gx#stx-pair/null?
                                                  ___stx2887128872_)
                                                 (let ((___splice2887528876_
                                                        (gx#syntax-split-splice
                                                         ___stx2887128872_
                                                         '0)))
                                                   (let ((_tl2231422406_
                                                          (##vector-ref
                                                           ___splice2887528876_
                                                           '1))
                                                         (_target2231222404_
                                                          (##vector-ref
                                                           ___splice2887528876_
                                                           '0)))
                                                     (if (gx#stx-null?
                                                          _tl2231422406_)
                                                         (___match2889028891_
                                                          ___splice2887528876_
                                                          _target2231222404_
                                                          _tl2231422406_)
                                                         (___match2889628897_
                                                          ___splice2887528876_
                                                          _target2231222404_
                                                          _tl2231422406_))))
                                                 (___kont2888128882_
                                                  ___stx2887128872_))))))
                                     _hd2226622288_
                                     _hd2226322280_)
                                    (_g2225822272_ _g2225922275_))))
                            (_g2225822272_ _g2225922275_))))
                    (_g2225822272_ _g2225922275_)))))
        (_g2225722449_ _form22256_))))
  (define gxc#lambda-expr?
    (lambda (_expr22209_)
      (let* ((___stx2889928900_ _expr22209_)
             (_g2221222222_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2889928900_))))
        (let ((___kont2890128902_ (lambda (_L22242_) '#t))
              (___kont2890328904_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2889928900_)
              (let ((_e2221522234_ (gx#stx-e ___stx2889928900_)))
                (let ((_tl2221722239_ (##cdr _e2221522234_))
                      (_hd2221622237_ (##car _e2221522234_)))
                  (if (gx#identifier? _hd2221622237_)
                      (if (gx#stx-eq? '%#lambda _hd2221622237_)
                          (___kont2890128902_ _tl2221722239_)
                          (___kont2890328904_))
                      (___kont2890328904_))))
              (___kont2890328904_))))))
  (define gxc#case-lambda-expr?
    (lambda (_expr22162_)
      (let* ((___stx2891728918_ _expr22162_)
             (_g2216522175_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2891728918_))))
        (let ((___kont2891928920_ (lambda (_L22195_) '#t))
              (___kont2892128922_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2891728918_)
              (let ((_e2216822187_ (gx#stx-e ___stx2891728918_)))
                (let ((_tl2217022192_ (##cdr _e2216822187_))
                      (_hd2216922190_ (##car _e2216822187_)))
                  (if (gx#identifier? _hd2216922190_)
                      (if (gx#stx-eq? '%#case-lambda _hd2216922190_)
                          (___kont2891928920_ _tl2217022192_)
                          (___kont2892128922_))
                      (___kont2892128922_))))
              (___kont2892128922_))))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr22031_)
      (let* ((___stx2893528936_ _expr22031_)
             (_g2203422064_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2893528936_))))
        (let ((___kont2893728938_
               (lambda (_L22132_ _L22133_ _L22134_)
                 (if (gx#identifier? _L22134_)
                     (if (gxc#lambda-expr? _L22133_)
                         (gxc#case-lambda-expr? _L22132_)
                         '#f)
                     '#f)))
              (___kont2893928940_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2893528936_)
              (let ((_e2203922076_ (gx#stx-e ___stx2893528936_)))
                (let ((_tl2204122081_ (##cdr _e2203922076_))
                      (_hd2204022079_ (##car _e2203922076_)))
                  (if (gx#identifier? _hd2204022079_)
                      (if (gx#stx-eq? '%#let-values _hd2204022079_)
                          (if (gx#stx-pair? _tl2204122081_)
                              (let ((_e2204222084_ (gx#stx-e _tl2204122081_)))
                                (let ((_tl2204422089_ (##cdr _e2204222084_))
                                      (_hd2204322087_ (##car _e2204222084_)))
                                  (if (gx#stx-pair? _hd2204322087_)
                                      (let ((_e2204522092_
                                             (gx#stx-e _hd2204322087_)))
                                        (let ((_tl2204722097_
                                               (##cdr _e2204522092_))
                                              (_hd2204622095_
                                               (##car _e2204522092_)))
                                          (if (gx#stx-pair? _hd2204622095_)
                                              (let ((_e2204822100_
                                                     (gx#stx-e
                                                      _hd2204622095_)))
                                                (let ((_tl2205022105_
                                                       (##cdr _e2204822100_))
                                                      (_hd2204922103_
                                                       (##car _e2204822100_)))
                                                  (if (gx#stx-pair?
                                                       _hd2204922103_)
                                                      (let ((_e2205122108_
                                                             (gx#stx-e
                                                              _hd2204922103_)))
                                                        (let ((_tl2205322113_
                                                               (##cdr _e2205122108_))
                                                              (_hd2205222111_
                                                               (##car _e2205122108_)))
                                                          (if (gx#stx-null?
                                                               _tl2205322113_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2205022105_)
                          (let ((_e2205422116_ (gx#stx-e _tl2205022105_)))
                            (let ((_tl2205622121_ (##cdr _e2205422116_))
                                  (_hd2205522119_ (##car _e2205422116_)))
                              (if (gx#stx-null? _tl2205622121_)
                                  (if (gx#stx-null? _tl2204722097_)
                                      (if (gx#stx-pair? _tl2204422089_)
                                          (let ((_e2205722124_
                                                 (gx#stx-e _tl2204422089_)))
                                            (let ((_tl2205922129_
                                                   (##cdr _e2205722124_))
                                                  (_hd2205822127_
                                                   (##car _e2205722124_)))
                                              (if (gx#stx-null? _tl2205922129_)
                                                  (___kont2893728938_
                                                   _hd2205822127_
                                                   _hd2205522119_
                                                   _hd2205222111_)
                                                  (___kont2893928940_))))
                                          (___kont2893928940_))
                                      (___kont2893928940_))
                                  (___kont2893928940_))))
                          (___kont2893928940_))
                      (___kont2893928940_))))
              (___kont2893928940_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2893928940_))))
                                      (___kont2893928940_))))
                              (___kont2893928940_))
                          (___kont2893928940_))
                      (___kont2893928940_))))
              (___kont2893928940_))))))
  (define gxc#kw-lambda-expr?
    (lambda (_expr21356_)
      (let* ((___stx2899728998_ _expr21356_)
             (_g2135921517_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2899728998_))))
        (let ((___kont2899929000_
               (lambda (_L21905_
                        _L21906_
                        _L21907_
                        _L21908_
                        _L21909_
                        _L21910_
                        _L21911_
                        _L21912_
                        _L21913_
                        _L21914_
                        _L21915_)
                 (if (gxc#runtime-identifier=? _L21912_ 'apply)
                     (if (gxc#runtime-identifier=? _L21908_ 'apply)
                         (if (gxc#runtime-identifier=?
                              _L21907_
                              'keyword-dispatch)
                             (if (gx#free-identifier=? _L21915_ _L21906_)
                                 (if (gx#free-identifier=? _L21914_ _L21911_)
                                     (if (gx#free-identifier=?
                                          _L21909_
                                          _L21905_)
                                         (gx#free-identifier=?
                                          _L21913_
                                          _L21910_)
                                         '#f)
                                     '#f)
                                 '#f)
                             '#f)
                         '#f)
                     '#f)))
              (___kont2900129002_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2899728998_)
              (let ((_e2137221529_ (gx#stx-e ___stx2899728998_)))
                (let ((_tl2137421534_ (##cdr _e2137221529_))
                      (_hd2137321532_ (##car _e2137221529_)))
                  (if (gx#identifier? _hd2137321532_)
                      (if (gx#stx-eq? '%#let-values _hd2137321532_)
                          (if (gx#stx-pair? _tl2137421534_)
                              (let ((_e2137521537_ (gx#stx-e _tl2137421534_)))
                                (let ((_tl2137721542_ (##cdr _e2137521537_))
                                      (_hd2137621540_ (##car _e2137521537_)))
                                  (if (gx#stx-pair? _hd2137621540_)
                                      (let ((_e2137821545_
                                             (gx#stx-e _hd2137621540_)))
                                        (let ((_tl2138021550_
                                               (##cdr _e2137821545_))
                                              (_hd2137921548_
                                               (##car _e2137821545_)))
                                          (if (gx#stx-pair? _hd2137921548_)
                                              (let ((_e2138121553_
                                                     (gx#stx-e
                                                      _hd2137921548_)))
                                                (let ((_tl2138321558_
                                                       (##cdr _e2138121553_))
                                                      (_hd2138221556_
                                                       (##car _e2138121553_)))
                                                  (if (gx#stx-pair?
                                                       _hd2138221556_)
                                                      (let ((_e2138421561_
                                                             (gx#stx-e
                                                              _hd2138221556_)))
                                                        (let ((_tl2138621566_
                                                               (##cdr _e2138421561_))
                                                              (_hd2138521564_
                                                               (##car _e2138421561_)))
                                                          (if (gx#stx-null?
                                                               _tl2138621566_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2138321558_)
                          (let ((_e2138721569_ (gx#stx-e _tl2138321558_)))
                            (let ((_tl2138921574_ (##cdr _e2138721569_))
                                  (_hd2138821572_ (##car _e2138721569_)))
                              (if (gx#stx-pair? _hd2138821572_)
                                  (let ((_e2139021577_
                                         (gx#stx-e _hd2138821572_)))
                                    (let ((_tl2139221582_
                                           (##cdr _e2139021577_))
                                          (_hd2139121580_
                                           (##car _e2139021577_)))
                                      (if (gx#identifier? _hd2139121580_)
                                          (if (gx#stx-eq?
                                               '%#let-values
                                               _hd2139121580_)
                                              (if (gx#stx-pair? _tl2139221582_)
                                                  (let ((_e2139321585_
                                                         (gx#stx-e
                                                          _tl2139221582_)))
                                                    (let ((_tl2139521590_
                                                           (##cdr _e2139321585_))
                                                          (_hd2139421588_
                                                           (##car _e2139321585_)))
                                                      (if (gx#stx-pair?
                                                           _hd2139421588_)
                                                          (let ((_e2139621593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2139421588_)))
                    (let ((_tl2139821598_ (##cdr _e2139621593_))
                          (_hd2139721596_ (##car _e2139621593_)))
                      (if (gx#stx-pair? _hd2139721596_)
                          (let ((_e2139921601_ (gx#stx-e _hd2139721596_)))
                            (let ((_tl2140121606_ (##cdr _e2139921601_))
                                  (_hd2140021604_ (##car _e2139921601_)))
                              (if (gx#stx-pair? _hd2140021604_)
                                  (let ((_e2140221609_
                                         (gx#stx-e _hd2140021604_)))
                                    (let ((_tl2140421614_
                                           (##cdr _e2140221609_))
                                          (_hd2140321612_
                                           (##car _e2140221609_)))
                                      (if (gx#stx-null? _tl2140421614_)
                                          (if (gx#stx-pair? _tl2140121606_)
                                              (let ((_e2140521617_
                                                     (gx#stx-e
                                                      _tl2140121606_)))
                                                (let ((_tl2140721622_
                                                       (##cdr _e2140521617_))
                                                      (_hd2140621620_
                                                       (##car _e2140521617_)))
                                                  (if (gx#stx-null?
                                                       _tl2140721622_)
                                                      (if (gx#stx-null?
                                                           _tl2139821598_)
                                                          (if (gx#stx-pair?
                                                               _tl2139521590_)
                                                              (let ((_e2140821625_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2139521590_)))
                        (let ((_tl2141021630_ (##cdr _e2140821625_))
                              (_hd2140921628_ (##car _e2140821625_)))
                          (if (gx#stx-pair? _hd2140921628_)
                              (let ((_e2141121633_ (gx#stx-e _hd2140921628_)))
                                (let ((_tl2141321638_ (##cdr _e2141121633_))
                                      (_hd2141221636_ (##car _e2141121633_)))
                                  (if (gx#identifier? _hd2141221636_)
                                      (if (gx#stx-eq? '%#lambda _hd2141221636_)
                                          (if (gx#stx-pair? _tl2141321638_)
                                              (let ((_e2141421641_
                                                     (gx#stx-e
                                                      _tl2141321638_)))
                                                (let ((_tl2141621646_
                                                       (##cdr _e2141421641_))
                                                      (_hd2141521644_
                                                       (##car _e2141421641_)))
                                                  (if (gx#stx-pair?
                                                       _hd2141521644_)
                                                      (let ((_e2141721649_
                                                             (gx#stx-e
                                                              _hd2141521644_)))
                                                        (let ((_tl2141921654_
                                                               (##cdr _e2141721649_))
                                                              (_hd2141821652_
                                                               (##car _e2141721649_)))
                                                          (if (gx#stx-pair?
                                                               _tl2141621646_)
                                                              (let ((_e2142021657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2141621646_)))
                        (let ((_tl2142221662_ (##cdr _e2142021657_))
                              (_hd2142121660_ (##car _e2142021657_)))
                          (if (gx#stx-pair? _hd2142121660_)
                              (let ((_e2142321665_ (gx#stx-e _hd2142121660_)))
                                (let ((_tl2142521670_ (##cdr _e2142321665_))
                                      (_hd2142421668_ (##car _e2142321665_)))
                                  (if (gx#identifier? _hd2142421668_)
                                      (if (gx#stx-eq? '%#call _hd2142421668_)
                                          (if (gx#stx-pair? _tl2142521670_)
                                              (let ((_e2142621673_
                                                     (gx#stx-e
                                                      _tl2142521670_)))
                                                (let ((_tl2142821678_
                                                       (##cdr _e2142621673_))
                                                      (_hd2142721676_
                                                       (##car _e2142621673_)))
                                                  (if (gx#stx-pair?
                                                       _hd2142721676_)
                                                      (let ((_e2142921681_
                                                             (gx#stx-e
                                                              _hd2142721676_)))
                                                        (let ((_tl2143121686_
                                                               (##cdr _e2142921681_))
                                                              (_hd2143021684_
                                                               (##car _e2142921681_)))
                                                          (if (gx#identifier?
                                                               _hd2143021684_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#ref
                           _hd2143021684_)
                          (if (gx#stx-pair? _tl2143121686_)
                              (let ((_e2143221689_ (gx#stx-e _tl2143121686_)))
                                (let ((_tl2143421694_ (##cdr _e2143221689_))
                                      (_hd2143321692_ (##car _e2143221689_)))
                                  (if (gx#stx-null? _tl2143421694_)
                                      (if (gx#stx-pair? _tl2142821678_)
                                          (let ((_e2143521697_
                                                 (gx#stx-e _tl2142821678_)))
                                            (let ((_tl2143721702_
                                                   (##cdr _e2143521697_))
                                                  (_hd2143621700_
                                                   (##car _e2143521697_)))
                                              (if (gx#stx-pair? _hd2143621700_)
                                                  (let ((_e2143821705_
                                                         (gx#stx-e
                                                          _hd2143621700_)))
                                                    (let ((_tl2144021710_
                                                           (##cdr _e2143821705_))
                                                          (_hd2143921708_
                                                           (##car _e2143821705_)))
                                                      (if (gx#identifier?
                                                           _hd2143921708_)
                                                          (if (gx#stx-eq?
                                                               '%#ref
                                                               _hd2143921708_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2144021710_)
                          (let ((_e2144121713_ (gx#stx-e _tl2144021710_)))
                            (let ((_tl2144321718_ (##cdr _e2144121713_))
                                  (_hd2144221716_ (##car _e2144121713_)))
                              (if (gx#stx-null? _tl2144321718_)
                                  (if (gx#stx-pair? _tl2143721702_)
                                      (let ((_e2144421721_
                                             (gx#stx-e _tl2143721702_)))
                                        (let ((_tl2144621726_
                                               (##cdr _e2144421721_))
                                              (_hd2144521724_
                                               (##car _e2144421721_)))
                                          (if (gx#stx-pair? _hd2144521724_)
                                              (let ((_e2144721729_
                                                     (gx#stx-e
                                                      _hd2144521724_)))
                                                (let ((_tl2144921734_
                                                       (##cdr _e2144721729_))
                                                      (_hd2144821732_
                                                       (##car _e2144721729_)))
                                                  (if (gx#identifier?
                                                       _hd2144821732_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd2144821732_)
                                                          (if (gx#stx-pair?
                                                               _tl2144921734_)
                                                              (let ((_e2145021737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2144921734_)))
                        (let ((_tl2145221742_ (##cdr _e2145021737_))
                              (_hd2145121740_ (##car _e2145021737_)))
                          (if (gx#stx-null? _tl2145221742_)
                              (if (gx#stx-null? _tl2142221662_)
                                  (if (gx#stx-null? _tl2141021630_)
                                      (if (gx#stx-null? _tl2138921574_)
                                          (if (gx#stx-null? _tl2138021550_)
                                              (if (gx#stx-pair? _tl2137721542_)
                                                  (let ((_e2145321745_
                                                         (gx#stx-e
                                                          _tl2137721542_)))
                                                    (let ((_tl2145521750_
                                                           (##cdr _e2145321745_))
                                                          (_hd2145421748_
                                                           (##car _e2145321745_)))
                                                      (if (gx#stx-pair?
                                                           _hd2145421748_)
                                                          (let ((_e2145621753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2145421748_)))
                    (let ((_tl2145821758_ (##cdr _e2145621753_))
                          (_hd2145721756_ (##car _e2145621753_)))
                      (if (gx#identifier? _hd2145721756_)
                          (if (gx#stx-eq? '%#lambda _hd2145721756_)
                              (if (gx#stx-pair? _tl2145821758_)
                                  (let ((_e2145921761_
                                         (gx#stx-e _tl2145821758_)))
                                    (let ((_tl2146121766_
                                           (##cdr _e2145921761_))
                                          (_hd2146021764_
                                           (##car _e2145921761_)))
                                      (if (gx#stx-pair? _tl2146121766_)
                                          (let ((_e2146221769_
                                                 (gx#stx-e _tl2146121766_)))
                                            (let ((_tl2146421774_
                                                   (##cdr _e2146221769_))
                                                  (_hd2146321772_
                                                   (##car _e2146221769_)))
                                              (if (gx#stx-pair? _hd2146321772_)
                                                  (let ((_e2146521777_
                                                         (gx#stx-e
                                                          _hd2146321772_)))
                                                    (let ((_tl2146721782_
                                                           (##cdr _e2146521777_))
                                                          (_hd2146621780_
                                                           (##car _e2146521777_)))
                                                      (if (gx#identifier?
                                                           _hd2146621780_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2146621780_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2146721782_)
                          (let ((_e2146821785_ (gx#stx-e _tl2146721782_)))
                            (let ((_tl2147021790_ (##cdr _e2146821785_))
                                  (_hd2146921788_ (##car _e2146821785_)))
                              (if (gx#stx-pair? _hd2146921788_)
                                  (let ((_e2147121793_
                                         (gx#stx-e _hd2146921788_)))
                                    (let ((_tl2147321798_
                                           (##cdr _e2147121793_))
                                          (_hd2147221796_
                                           (##car _e2147121793_)))
                                      (if (gx#identifier? _hd2147221796_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2147221796_)
                                              (if (gx#stx-pair? _tl2147321798_)
                                                  (let ((_e2147421801_
                                                         (gx#stx-e
                                                          _tl2147321798_)))
                                                    (let ((_tl2147621806_
                                                           (##cdr _e2147421801_))
                                                          (_hd2147521804_
                                                           (##car _e2147421801_)))
                                                      (if (gx#stx-null?
                                                           _tl2147621806_)
                                                          (if (gx#stx-pair?
                                                               _tl2147021790_)
                                                              (let ((_e2147721809_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2147021790_)))
                        (let ((_tl2147921814_ (##cdr _e2147721809_))
                              (_hd2147821812_ (##car _e2147721809_)))
                          (if (gx#stx-pair? _hd2147821812_)
                              (let ((_e2148021817_ (gx#stx-e _hd2147821812_)))
                                (let ((_tl2148221822_ (##cdr _e2148021817_))
                                      (_hd2148121820_ (##car _e2148021817_)))
                                  (if (gx#identifier? _hd2148121820_)
                                      (if (gx#stx-eq? '%#ref _hd2148121820_)
                                          (if (gx#stx-pair? _tl2148221822_)
                                              (let ((_e2148321825_
                                                     (gx#stx-e
                                                      _tl2148221822_)))
                                                (let ((_tl2148521830_
                                                       (##cdr _e2148321825_))
                                                      (_hd2148421828_
                                                       (##car _e2148321825_)))
                                                  (if (gx#stx-null?
                                                       _tl2148521830_)
                                                      (if (gx#stx-pair?
                                                           _tl2147921814_)
                                                          (let ((_e2148621833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2147921814_)))
                    (let ((_tl2148821838_ (##cdr _e2148621833_))
                          (_hd2148721836_ (##car _e2148621833_)))
                      (if (gx#stx-pair? _hd2148721836_)
                          (let ((_e2148921841_ (gx#stx-e _hd2148721836_)))
                            (let ((_tl2149121846_ (##cdr _e2148921841_))
                                  (_hd2149021844_ (##car _e2148921841_)))
                              (if (gx#identifier? _hd2149021844_)
                                  (if (gx#stx-eq? '%#quote _hd2149021844_)
                                      (if (gx#stx-pair? _tl2149121846_)
                                          (let ((_e2149221849_
                                                 (gx#stx-e _tl2149121846_)))
                                            (let ((_tl2149421854_
                                                   (##cdr _e2149221849_))
                                                  (_hd2149321852_
                                                   (##car _e2149221849_)))
                                              (if (gx#stx-null? _tl2149421854_)
                                                  (if (gx#stx-pair?
                                                       _tl2148821838_)
                                                      (let ((_e2149521857_
                                                             (gx#stx-e
                                                              _tl2148821838_)))
                                                        (let ((_tl2149721862_
                                                               (##cdr _e2149521857_))
                                                              (_hd2149621860_
                                                               (##car _e2149521857_)))
                                                          (if (gx#stx-pair?
                                                               _hd2149621860_)
                                                              (let ((_e2149821865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2149621860_)))
                        (let ((_tl2150021870_ (##cdr _e2149821865_))
                              (_hd2149921868_ (##car _e2149821865_)))
                          (if (gx#identifier? _hd2149921868_)
                              (if (gx#stx-eq? '%#ref _hd2149921868_)
                                  (if (gx#stx-pair? _tl2150021870_)
                                      (let ((_e2150121873_
                                             (gx#stx-e _tl2150021870_)))
                                        (let ((_tl2150321878_
                                               (##cdr _e2150121873_))
                                              (_hd2150221876_
                                               (##car _e2150121873_)))
                                          (if (gx#stx-null? _tl2150321878_)
                                              (if (gx#stx-pair? _tl2149721862_)
                                                  (let ((_e2150421881_
                                                         (gx#stx-e
                                                          _tl2149721862_)))
                                                    (let ((_tl2150621886_
                                                           (##cdr _e2150421881_))
                                                          (_hd2150521884_
                                                           (##car _e2150421881_)))
                                                      (if (gx#stx-pair?
                                                           _hd2150521884_)
                                                          (let ((_e2150721889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2150521884_)))
                    (let ((_tl2150921894_ (##cdr _e2150721889_))
                          (_hd2150821892_ (##car _e2150721889_)))
                      (if (gx#identifier? _hd2150821892_)
                          (if (gx#stx-eq? '%#ref _hd2150821892_)
                              (if (gx#stx-pair? _tl2150921894_)
                                  (let ((_e2151021897_
                                         (gx#stx-e _tl2150921894_)))
                                    (let ((_tl2151221902_
                                           (##cdr _e2151021897_))
                                          (_hd2151121900_
                                           (##car _e2151021897_)))
                                      (if (gx#stx-null? _tl2151221902_)
                                          (if (gx#stx-null? _tl2150621886_)
                                              (if (gx#stx-null? _tl2146421774_)
                                                  (if (gx#stx-null?
                                                       _tl2145521750_)
                                                      (___kont2899929000_
                                                       _hd2151121900_
                                                       _hd2150221876_
                                                       _hd2148421828_
                                                       _hd2147521804_
                                                       _hd2146021764_
                                                       _hd2145121740_
                                                       _hd2144221716_
                                                       _hd2143321692_
                                                       _hd2141821652_
                                                       _hd2140321612_
                                                       _hd2138521564_)
                                                      (___kont2900129002_))
                                                  (___kont2900129002_))
                                              (___kont2900129002_))
                                          (___kont2900129002_))))
                                  (___kont2900129002_))
                              (___kont2900129002_))
                          (___kont2900129002_))))
                  (___kont2900129002_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2900129002_))
                                              (___kont2900129002_))))
                                      (___kont2900129002_))
                                  (___kont2900129002_))
                              (___kont2900129002_))))
                      (___kont2900129002_))))
              (___kont2900129002_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2900129002_))))
                                          (___kont2900129002_))
                                      (___kont2900129002_))
                                  (___kont2900129002_))))
                          (___kont2900129002_))))
                  (___kont2900129002_))
              (___kont2900129002_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2900129002_))
                                          (___kont2900129002_))
                                      (___kont2900129002_))))
                              (___kont2900129002_))))
                      (___kont2900129002_))
                  (___kont2900129002_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2900129002_))
                                              (___kont2900129002_))
                                          (___kont2900129002_))))
                                  (___kont2900129002_))))
                          (___kont2900129002_))
                      (___kont2900129002_))
                  (___kont2900129002_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2900129002_))))
                                          (___kont2900129002_))))
                                  (___kont2900129002_))
                              (___kont2900129002_))
                          (___kont2900129002_))))
                  (___kont2900129002_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2900129002_))
                                              (___kont2900129002_))
                                          (___kont2900129002_))
                                      (___kont2900129002_))
                                  (___kont2900129002_))
                              (___kont2900129002_))))
                      (___kont2900129002_))
                  (___kont2900129002_))
              (___kont2900129002_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2900129002_))))
                                      (___kont2900129002_))
                                  (___kont2900129002_))))
                          (___kont2900129002_))
                      (___kont2900129002_))
                  (___kont2900129002_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2900129002_))))
                                          (___kont2900129002_))
                                      (___kont2900129002_))))
                              (___kont2900129002_))
                          (___kont2900129002_))
                      (___kont2900129002_))))
              (___kont2900129002_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2900129002_))
                                          (___kont2900129002_))
                                      (___kont2900129002_))))
                              (___kont2900129002_))))
                      (___kont2900129002_))))
              (___kont2900129002_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2900129002_))
                                          (___kont2900129002_))
                                      (___kont2900129002_))))
                              (___kont2900129002_))))
                      (___kont2900129002_))
                  (___kont2900129002_))
              (___kont2900129002_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2900129002_))
                                          (___kont2900129002_))))
                                  (___kont2900129002_))))
                          (___kont2900129002_))))
                  (___kont2900129002_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2900129002_))
                                              (___kont2900129002_))
                                          (___kont2900129002_))))
                                  (___kont2900129002_))))
                          (___kont2900129002_))
                      (___kont2900129002_))))
              (___kont2900129002_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont2900129002_))))
                                      (___kont2900129002_))))
                              (___kont2900129002_))
                          (___kont2900129002_))
                      (___kont2900129002_))))
              (___kont2900129002_))))))
  (define gxc#lift-case-lambda-clauses__%
    (lambda (_stx21098_ _id21099_ _clauses21100_ _gensym?21101_)
      (let _lp21103_ ((_rest21105_ _clauses21100_)
                      (_ids21106_ '())
                      (_impls21107_ '())
                      (_clauses21108_ '()))
        (let* ((_rest2110921117_ _rest21105_)
               (_else2111121125_
                (lambda ()
                  (values (reverse _ids21106_)
                          (reverse _impls21107_)
                          (reverse _clauses21108_))))
               (_K2111321330_
                (lambda (_rest21128_ _clause21129_)
                  (if (gxc#dispatch-lambda-form? _clause21129_)
                      (_lp21103_
                       _rest21128_
                       _ids21106_
                       _impls21107_
                       (cons _clause21129_ _clauses21108_))
                      (let* ((_g2113121142_
                              (lambda (_g2113221139_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g2113221139_)))
                             (_g2113021327_
                              (lambda (_g2113221145_)
                                (if (gx#stx-pair? _g2113221145_)
                                    (let ((_e2113521147_
                                           (gx#stx-e _g2113221145_)))
                                      (let ((_hd2113621150_
                                             (##car _e2113521147_))
                                            (_tl2113721152_
                                             (##cdr _e2113521147_)))
                                        ((lambda (_L21155_ _L21156_)
                                           (let* ((_id21173_
                                                   (make-symbol
                                                    (gx#stx-e _id21099_)
                                                    '"__"
                                                    (length _clauses21108_)
                                                    (if _gensym?21101_
                                                        (gensym '__)
                                                        '"")))
                                                  (_id21175_
                                                   (gx#core-quote-syntax__1
                                                    _id21173_
                                                    (gx#stx-source
                                                     _stx21098_)))
                                                  (_impl21177_
                                                   (gxc#xform-wrap-source
                                                    (cons (gx#datum->syntax__0
                                                           '#f
                                                           '%#lambda)
                                                          (cons _L21156_
                                                                _L21155_))
                                                    _stx21098_))
                                                  (_clause21324_
                                                   (let* ((___stx2938129382_
                                                           _L21156_)
                                                          (_g2118121209_
                                                           (lambda ()
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              ___stx2938129382_))))
                                                     (let ((___kont2938329384_
                                                            (lambda (_L21303_)
                                                              (cons _L21156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _id21175_ '()))
                                               (foldr1 (lambda (_g2131321316_
                                                                _g2131421318_)
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#ref)
                             (cons _g2131321316_ '()))
                       _g2131421318_))
               '()
               _L21303_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _stx21098_)
                                  '()))))
                   (___kont2938729388_
                    (lambda (_L21254_ _L21255_)
                      (cons _L21156_
                            (cons (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref (cons 'apply '()))
                                               (cons (cons '%#ref
                                                           (cons _id21175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (foldr1 cons
                                                             (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '%#ref)
                                 (cons _L21254_ '()))
                           '())
                     (foldr1 (lambda (_g2126621269_ _g2126721271_)
                               (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                           (cons _g2126621269_ '()))
                                     _g2126721271_))
                             '()
                             _L21255_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _stx21098_)
                                  '()))))
                   (___kont2939129392_
                    (lambda (_L21214_)
                      (cons _L21156_
                            (cons (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref (cons 'apply '()))
                                               (cons (cons '%#ref
                                                           (cons _id21175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '%#ref)
                         (cons _L21214_ '()))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _stx21098_)
                                  '())))))
               (let* ((___match2940629407_
                       (lambda (___splice2938929390_
                                _target2119521230_
                                _tl2119721232_)
                         (letrec ((_loop2119821235_
                                   (lambda (_hd2119621238_ _arg2120221240_)
                                     (if (gx#stx-pair? _hd2119621238_)
                                         (let ((_e2119921243_
                                                (gx#stx-e _hd2119621238_)))
                                           (let ((_lp-tl2120121248_
                                                  (##cdr _e2119921243_))
                                                 (_lp-hd2120021246_
                                                  (##car _e2119921243_)))
                                             (_loop2119821235_
                                              _lp-tl2120121248_
                                              (cons _lp-hd2120021246_
                                                    _arg2120221240_))))
                                         (let ((_arg2120321251_
                                                (reverse _arg2120221240_)))
                                           (___kont2938729388_
                                            _tl2119721232_
                                            _arg2120321251_))))))
                           (_loop2119821235_ _target2119521230_ '()))))
                      (___match2940029401_
                       (lambda (___splice2938529386_
                                _target2118421279_
                                _tl2118621281_)
                         (letrec ((_loop2118721284_
                                   (lambda (_hd2118521287_ _arg2119121289_)
                                     (if (gx#stx-pair? _hd2118521287_)
                                         (let ((_e2118821292_
                                                (gx#stx-e _hd2118521287_)))
                                           (let ((_lp-tl2119021297_
                                                  (##cdr _e2118821292_))
                                                 (_lp-hd2118921295_
                                                  (##car _e2118821292_)))
                                             (_loop2118721284_
                                              _lp-tl2119021297_
                                              (cons _lp-hd2118921295_
                                                    _arg2119121289_))))
                                         (let ((_arg2119221300_
                                                (reverse _arg2119121289_)))
                                           (___kont2938329384_
                                            _arg2119221300_))))))
                           (_loop2118721284_ _target2118421279_ '())))))
                 (if (gx#stx-pair/null? ___stx2938129382_)
                     (let ((___splice2938529386_
                            (gx#syntax-split-splice ___stx2938129382_ '0)))
                       (let ((_tl2118621281_
                              (##vector-ref ___splice2938529386_ '1))
                             (_target2118421279_
                              (##vector-ref ___splice2938529386_ '0)))
                         (if (gx#stx-null? _tl2118621281_)
                             (___match2940029401_
                              ___splice2938529386_
                              _target2118421279_
                              _tl2118621281_)
                             (___match2940629407_
                              ___splice2938529386_
                              _target2118421279_
                              _tl2118621281_))))
                     (___kont2939129392_ ___stx2938129382_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_lp21103_
                                              _rest21128_
                                              (cons _id21175_ _ids21106_)
                                              (cons _impl21177_ _impls21107_)
                                              (cons _clause21324_
                                                    _clauses21108_))))
                                         _tl2113721152_
                                         _hd2113621150_)))
                                    (_g2113121142_ _g2113221145_)))))
                        (_g2113021327_ _clause21129_))))))
          (if (##pair? _rest2110921117_)
              (let ((_hd2111421333_ (##car _rest2110921117_))
                    (_tl2111521335_ (##cdr _rest2110921117_)))
                (let* ((_clause21338_ _hd2111421333_)
                       (_rest21340_ _tl2111521335_))
                  (_K2111321330_ _rest21340_ _clause21338_)))
              (_else2111121125_))))))
  (define gxc#lift-case-lambda-clauses__0
    (lambda (_stx21345_ _id21346_ _clauses21347_)
      (let ((_gensym?21349_ '#f))
        (gxc#lift-case-lambda-clauses__%
         _stx21345_
         _id21346_
         _clauses21347_
         _gensym?21349_))))
  (define gxc#lift-case-lambda-clauses
    (lambda _g29923_
      (let ((_g29922_ (length _g29923_)))
        (cond ((##fx= _g29922_ 3)
               (apply gxc#lift-case-lambda-clauses__0 _g29923_))
              ((##fx= _g29922_ 4)
               (apply gxc#lift-case-lambda-clauses__% _g29923_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gxc#lift-case-lambda-clauses
                _g29923_))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx20375_)
      (letrec ((_case-lambda-clause-def20377_
                (lambda (_id21094_ _impl21095_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id21094_ '())
                               (cons (gxc#compile-e _impl21095_) '())))
                   _stx20375_)))
               (_opt-lambda-dispatch-name20378_
                (lambda (_id21090_)
                  (if (uninterned-symbol? _id21090_)
                      (let ((_str21092_ (symbol->string _id21090_)))
                        (if (string-prefix? '"opt-lambda" _str21092_)
                            '"%"
                            _id21090_))
                      _id21090_)))
               (_kw-lambda-dispatch-name20379_
                (lambda (_id21085_ _name21086_)
                  (if (uninterned-symbol? _id21085_)
                      (let ((_str21088_ (symbol->string _id21085_)))
                        (if (string-prefix? '"kw-lambda" _str21088_)
                            _name21086_
                            _id21085_))
                      _id21085_))))
        (let* ((___stx2942929430_ _stx20375_)
               (_g2038420443_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2942929430_))))
          (let ((___kont2943129432_
                 (lambda (_L20994_ _L20995_)
                   (let* ((___stx2940929410_ _L20994_)
                          (_g2101221026_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx2940929410_))))
                     (let ((___kont2941129412_ (lambda (_L21070_) _stx20375_))
                           (___kont2941329414_
                            (lambda (_L21039_)
                              (let ((_g29924_
                                     (gxc#lift-case-lambda-clauses__0
                                      _stx20375_
                                      _L20995_
                                      _L21039_)))
                                (begin
                                  (let ((_g29925_
                                         (if (##values? _g29924_)
                                             (##vector-length _g29924_)
                                             1)))
                                    (if (not (##fx= _g29925_ 3))
                                        (error "Context expects 3 values"
                                               _g29925_)))
                                  (let ((_ids21049_ (##vector-ref _g29924_ 0))
                                        (_impls21050_
                                         (##vector-ref _g29924_ 1))
                                        (_clauses21051_
                                         (##vector-ref _g29924_ 2)))
                                    (let* ((_g29926_
                                            (for-each
                                             gx#core-bind-runtime!
                                             _ids21049_))
                                           (_defs21054_
                                            (map _case-lambda-clause-def20377_
                                                 _ids21049_
                                                 _impls21050_)))
                                      (gxc#verbose
                                       '"lift case-lambda clauses "
                                       (gxc#identifier-symbol _L20995_)
                                       '" => "
                                       (map gxc#identifier-symbol _ids21049_))
                                      (gxc#xform-wrap-source
                                       (cons '%#begin
                                             (foldr1 cons
                                                     (cons (gxc#xform-wrap-source
                                                            (cons '%#define-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L20995_ '())
                                (cons (gxc#xform-wrap-source
                                       (cons '%#case-lambda _clauses21051_)
                                       (gx#datum->syntax__0
                                        '#f
                                        'case-lambda-expr))
                                      '())))
                    _stx20375_)
                   '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _defs21054_))
                                       _stx20375_))))))))
                       (let ((___match2942029421_
                              (lambda (_e2101521062_
                                       _hd2101621065_
                                       _tl2101721067_)
                                (let ((_L21070_ _tl2101721067_))
                                  (if (andmap1 gxc#dispatch-lambda-form?
                                               _L21070_)
                                      (___kont2941129412_ _L21070_)
                                      (___kont2941329414_ _tl2101721067_))))))
                         (if (gx#stx-pair? ___stx2940929410_)
                             (let ((_e2101521062_
                                    (gx#stx-e ___stx2940929410_)))
                               (let ((_tl2101721067_ (##cdr _e2101521062_))
                                     (_hd2101621065_ (##car _e2101521062_)))
                                 (___match2942029421_
                                  _e2101521062_
                                  _hd2101621065_
                                  _tl2101721067_)))
                             (_g2101221026_)))))))
                (___kont2943329434_
                 (lambda (_L20812_ _L20813_)
                   (let* ((_g2082920859_
                           (lambda (_g2083020856_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2083020856_)))
                          (_g2082820954_
                           (lambda (_g2083020862_)
                             (if (gx#stx-pair? _g2083020862_)
                                 (let ((_e2083420864_
                                        (gx#stx-e _g2083020862_)))
                                   (let ((_hd2083520867_ (##car _e2083420864_))
                                         (_tl2083620869_
                                          (##cdr _e2083420864_)))
                                     (if (gx#stx-pair? _tl2083620869_)
                                         (let ((_e2083720872_
                                                (gx#stx-e _tl2083620869_)))
                                           (let ((_hd2083820875_
                                                  (##car _e2083720872_))
                                                 (_tl2083920877_
                                                  (##cdr _e2083720872_)))
                                             (if (gx#stx-pair? _hd2083820875_)
                                                 (let ((_e2084020880_
                                                        (gx#stx-e
                                                         _hd2083820875_)))
                                                   (let ((_hd2084120883_
                                                          (##car _e2084020880_))
                                                         (_tl2084220885_
                                                          (##cdr _e2084020880_)))
                                                     (if (gx#stx-pair?
                                                          _hd2084120883_)
                                                         (let ((_e2084320888_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2084120883_)))
                   (let ((_hd2084420891_ (##car _e2084320888_))
                         (_tl2084520893_ (##cdr _e2084320888_)))
                     (if (gx#stx-pair? _hd2084420891_)
                         (let ((_e2084620896_ (gx#stx-e _hd2084420891_)))
                           (let ((_hd2084720899_ (##car _e2084620896_))
                                 (_tl2084820901_ (##cdr _e2084620896_)))
                             (if (gx#stx-null? _tl2084820901_)
                                 (if (gx#stx-pair? _tl2084520893_)
                                     (let ((_e2084920904_
                                            (gx#stx-e _tl2084520893_)))
                                       (let ((_hd2085020907_
                                              (##car _e2084920904_))
                                             (_tl2085120909_
                                              (##cdr _e2084920904_)))
                                         (if (gx#stx-null? _tl2085120909_)
                                             (if (gx#stx-null? _tl2084220885_)
                                                 (if (gx#stx-pair?
                                                      _tl2083920877_)
                                                     (let ((_e2085220912_
                                                            (gx#stx-e
                                                             _tl2083920877_)))
                                                       (let ((_hd2085320915_
                                                              (##car _e2085220912_))
                                                             (_tl2085420917_
                                                              (##cdr _e2085220912_)))
                                                         (if (gx#stx-null?
                                                              _tl2085420917_)
                                                             ((lambda (_L20920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L20921_
                               _L20922_)
                        (let* ((_lambda-id20946_
                                (make-symbol
                                 (gx#stx-e _L20813_)
                                 '"__"
                                 (_opt-lambda-dispatch-name20378_
                                  (gx#stx-e _L20922_))))
                               (_lambda-id20948_
                                (gx#core-quote-syntax__1
                                 _lambda-id20946_
                                 (gx#stx-source _stx20375_)))
                               (_g29927_
                                (gx#core-bind-runtime!__0 _lambda-id20948_))
                               (_new-case-lambda-expr20951_
                                (gxc#apply-expression-subst
                                 _L20920_
                                 _L20922_
                                 _lambda-id20948_)))
                          (gxc#verbose
                           '"lift opt-lambda dispatch "
                           (gxc#identifier-symbol _L20813_)
                           '" => "
                           (gxc#identifier-symbol _lambda-id20948_))
                          (gxc#xform-wrap-source
                           (cons '%#begin
                                 (cons (gxc#xform-wrap-source
                                        (cons '%#define-values
                                              (cons (cons _lambda-id20948_ '())
                                                    (cons (gxc#compile-e
                                                           _L20921_)
                                                          '())))
                                        _stx20375_)
                                       (cons (gxc#lift-top-lambda-define-values%
                                              (gxc#xform-wrap-source
                                               (cons '%#define-values
                                                     (cons (cons _L20813_ '())
                                                           (cons _new-case-lambda-expr20951_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _stx20375_))
                                             '())))
                           _stx20375_)))
                      _hd2085320915_
                      _hd2085020907_
                      _hd2084720899_)
                     (_g2082920859_ _g2083020862_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2082920859_
                                                      _g2083020862_))
                                                 (_g2082920859_ _g2083020862_))
                                             (_g2082920859_ _g2083020862_))))
                                     (_g2082920859_ _g2083020862_))
                                 (_g2082920859_ _g2083020862_))))
                         (_g2082920859_ _g2083020862_))))
                 (_g2082920859_ _g2083020862_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2082920859_
                                                  _g2083020862_))))
                                         (_g2082920859_ _g2083020862_))))
                                 (_g2082920859_ _g2083020862_)))))
                     (_g2082820954_ _L20812_))))
                (___kont2943529436_
                 (lambda (_L20526_ _L20527_)
                   (let* ((_g2054320596_
                           (lambda (_g2054420593_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2054420593_)))
                          (_g2054220772_
                           (lambda (_g2054420599_)
                             (if (gx#stx-pair? _g2054420599_)
                                 (let ((_e2055020601_
                                        (gx#stx-e _g2054420599_)))
                                   (let ((_hd2055120604_ (##car _e2055020601_))
                                         (_tl2055220606_
                                          (##cdr _e2055020601_)))
                                     (if (gx#stx-pair? _tl2055220606_)
                                         (let ((_e2055320609_
                                                (gx#stx-e _tl2055220606_)))
                                           (let ((_hd2055420612_
                                                  (##car _e2055320609_))
                                                 (_tl2055520614_
                                                  (##cdr _e2055320609_)))
                                             (if (gx#stx-pair? _hd2055420612_)
                                                 (let ((_e2055620617_
                                                        (gx#stx-e
                                                         _hd2055420612_)))
                                                   (let ((_hd2055720620_
                                                          (##car _e2055620617_))
                                                         (_tl2055820622_
                                                          (##cdr _e2055620617_)))
                                                     (if (gx#stx-pair?
                                                          _hd2055720620_)
                                                         (let ((_e2055920625_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2055720620_)))
                   (let ((_hd2056020628_ (##car _e2055920625_))
                         (_tl2056120630_ (##cdr _e2055920625_)))
                     (if (gx#stx-pair? _hd2056020628_)
                         (let ((_e2056220633_ (gx#stx-e _hd2056020628_)))
                           (let ((_hd2056320636_ (##car _e2056220633_))
                                 (_tl2056420638_ (##cdr _e2056220633_)))
                             (if (gx#stx-null? _tl2056420638_)
                                 (if (gx#stx-pair? _tl2056120630_)
                                     (let ((_e2056520641_
                                            (gx#stx-e _tl2056120630_)))
                                       (let ((_hd2056620644_
                                              (##car _e2056520641_))
                                             (_tl2056720646_
                                              (##cdr _e2056520641_)))
                                         (if (gx#stx-pair? _hd2056620644_)
                                             (let ((_e2056820649_
                                                    (gx#stx-e _hd2056620644_)))
                                               (let ((_hd2056920652_
                                                      (##car _e2056820649_))
                                                     (_tl2057020654_
                                                      (##cdr _e2056820649_)))
                                                 (if (gx#stx-pair?
                                                      _tl2057020654_)
                                                     (let ((_e2057120657_
                                                            (gx#stx-e
                                                             _tl2057020654_)))
                                                       (let ((_hd2057220660_
                                                              (##car _e2057120657_))
                                                             (_tl2057320662_
                                                              (##cdr _e2057120657_)))
                                                         (if (gx#stx-pair?
                                                              _hd2057220660_)
                                                             (let ((_e2057420665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd2057220660_)))
                       (let ((_hd2057520668_ (##car _e2057420665_))
                             (_tl2057620670_ (##cdr _e2057420665_)))
                         (if (gx#stx-pair? _hd2057520668_)
                             (let ((_e2057720673_ (gx#stx-e _hd2057520668_)))
                               (let ((_hd2057820676_ (##car _e2057720673_))
                                     (_tl2057920678_ (##cdr _e2057720673_)))
                                 (if (gx#stx-pair? _hd2057820676_)
                                     (let ((_e2058020681_
                                            (gx#stx-e _hd2057820676_)))
                                       (let ((_hd2058120684_
                                              (##car _e2058020681_))
                                             (_tl2058220686_
                                              (##cdr _e2058020681_)))
                                         (if (gx#stx-null? _tl2058220686_)
                                             (if (gx#stx-pair? _tl2057920678_)
                                                 (let ((_e2058320689_
                                                        (gx#stx-e
                                                         _tl2057920678_)))
                                                   (let ((_hd2058420692_
                                                          (##car _e2058320689_))
                                                         (_tl2058520694_
                                                          (##cdr _e2058320689_)))
                                                     (if (gx#stx-null?
                                                          _tl2058520694_)
                                                         (if (gx#stx-null?
                                                              _tl2057620670_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2057320662_)
                         (let ((_e2058620697_ (gx#stx-e _tl2057320662_)))
                           (let ((_hd2058720700_ (##car _e2058620697_))
                                 (_tl2058820702_ (##cdr _e2058620697_)))
                             (if (gx#stx-null? _tl2058820702_)
                                 (if (gx#stx-null? _tl2056720646_)
                                     (if (gx#stx-null? _tl2055820622_)
                                         (if (gx#stx-pair? _tl2055520614_)
                                             (let ((_e2058920705_
                                                    (gx#stx-e _tl2055520614_)))
                                               (let ((_hd2059020708_
                                                      (##car _e2058920705_))
                                                     (_tl2059120710_
                                                      (##cdr _e2058920705_)))
                                                 (if (gx#stx-null?
                                                      _tl2059120710_)
                                                     ((lambda (_L20713_
                                                               _L20714_
                                                               _L20715_
                                                               _L20716_
                                                               _L20717_)
                                                        (let* ((_get-kws-id20757_
                                                                (make-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _L20527_)
                         '"__"
                         (_kw-lambda-dispatch-name20379_
                          (gx#stx-e _L20717_)
                          '"@")))
                       (_get-kws-id20759_
                        (gx#core-quote-syntax__1
                         _get-kws-id20757_
                         (gx#stx-source _stx20375_)))
                       (_main-id20761_
                        (make-symbol
                         (gx#stx-e _L20527_)
                         '"__"
                         (_kw-lambda-dispatch-name20379_
                          (gx#stx-e _L20716_)
                          '"%")))
                       (_main-id20763_
                        (gx#core-quote-syntax__1
                         _main-id20761_
                         (gx#stx-source _stx20375_)))
                       (_g29928_ (gx#core-bind-runtime!__0 _get-kws-id20759_))
                       (_g29929_ (gx#core-bind-runtime!__0 _main-id20763_))
                       (_new-kw-dispatch20767_
                        (gxc#apply-expression-subst
                         _L20713_
                         _L20717_
                         _get-kws-id20759_))
                       (_new-get-kws20769_
                        (gxc#apply-expression-subst
                         _L20714_
                         _L20716_
                         _main-id20763_)))
                  (gxc#verbose
                   '"lift kw-lambda dispatch "
                   (gxc#identifier-symbol _L20527_)
                   '" => "
                   (gxc#identifier-symbol _get-kws-id20759_)
                   '" => "
                   (gxc#identifier-symbol _main-id20763_))
                  (gxc#xform-wrap-source
                   (cons '%#begin
                         (cons (gxc#lift-top-lambda-define-values%
                                (gxc#xform-wrap-source
                                 (cons '%#define-values
                                       (cons (cons _main-id20763_ '())
                                             (cons _L20715_ '())))
                                 _stx20375_))
                               (cons (gxc#xform-wrap-source
                                      (cons '%#define-values
                                            (cons (cons _get-kws-id20759_ '())
                                                  (cons _new-get-kws20769_
                                                        '())))
                                      _stx20375_)
                                     (cons (gxc#xform-wrap-source
                                            (cons '%#define-values
                                                  (cons (cons _L20527_ '())
                                                        (cons _new-kw-dispatch20767_
                                                              '())))
                                            _stx20375_)
                                           '()))))
                   _stx20375_)))
              _hd2059020708_
              _hd2058720700_
              _hd2058420692_
              _hd2058120684_
              _hd2056320636_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2054320596_
                                                      _g2054420599_))))
                                             (_g2054320596_ _g2054420599_))
                                         (_g2054320596_ _g2054420599_))
                                     (_g2054320596_ _g2054420599_))
                                 (_g2054320596_ _g2054420599_))))
                         (_g2054320596_ _g2054420599_))
                     (_g2054320596_ _g2054420599_))
                 (_g2054320596_ _g2054420599_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2054320596_ _g2054420599_))
                                             (_g2054320596_ _g2054420599_))))
                                     (_g2054320596_ _g2054420599_))))
                             (_g2054320596_ _g2054420599_))))
                     (_g2054320596_ _g2054420599_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2054320596_
                                                      _g2054420599_))))
                                             (_g2054320596_ _g2054420599_))))
                                     (_g2054320596_ _g2054420599_))
                                 (_g2054320596_ _g2054420599_))))
                         (_g2054320596_ _g2054420599_))))
                 (_g2054320596_ _g2054420599_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2054320596_
                                                  _g2054420599_))))
                                         (_g2054320596_ _g2054420599_))))
                                 (_g2054320596_ _g2054420599_)))))
                     (_g2054220772_ _L20526_))))
                (___kont2943729438_
                 (lambda (_L20472_ _L20473_)
                   (gxc#xform-wrap-source
                    (cons '%#define-values
                          (cons _L20473_ (cons (gxc#compile-e _L20472_) '())))
                    _stx20375_))))
            (let* ((___match2952229523_
                    (lambda (_e2041620494_
                             _hd2041720497_
                             _tl2041820499_
                             _e2041920502_
                             _hd2042020505_
                             _tl2042120507_
                             _e2042220510_
                             _hd2042320513_
                             _tl2042420515_
                             _e2042520518_
                             _hd2042620521_
                             _tl2042720523_)
                      (let ((_L20526_ _hd2042620521_)
                            (_L20527_ _hd2042320513_))
                        (if (and (gx#identifier? _L20527_)
                                 (gxc#kw-lambda-expr? _L20526_))
                            (___kont2943529436_ _L20526_ _L20527_)
                            (___kont2943729438_
                             _hd2042620521_
                             _hd2042020505_)))))
                   (___match2949429495_
                    (lambda (_e2040220780_
                             _hd2040320783_
                             _tl2040420785_
                             _e2040520788_
                             _hd2040620791_
                             _tl2040720793_
                             _e2040820796_
                             _hd2040920799_
                             _tl2041020801_
                             _e2041120804_
                             _hd2041220807_
                             _tl2041320809_)
                      (let ((_L20812_ _hd2041220807_)
                            (_L20813_ _hd2040920799_))
                        (if (and (gx#identifier? _L20813_)
                                 (gxc#opt-lambda-expr? _L20812_))
                            (___kont2943329434_ _L20812_ _L20813_)
                            (___match2952229523_
                             _e2040220780_
                             _hd2040320783_
                             _tl2040420785_
                             _e2040520788_
                             _hd2040620791_
                             _tl2040720793_
                             _e2040820796_
                             _hd2040920799_
                             _tl2041020801_
                             _e2041120804_
                             _hd2041220807_
                             _tl2041320809_)))))
                   (___match2946629467_
                    (lambda (_e2038820962_
                             _hd2038920965_
                             _tl2039020967_
                             _e2039120970_
                             _hd2039220973_
                             _tl2039320975_
                             _e2039420978_
                             _hd2039520981_
                             _tl2039620983_
                             _e2039720986_
                             _hd2039820989_
                             _tl2039920991_)
                      (let ((_L20994_ _hd2039820989_)
                            (_L20995_ _hd2039520981_))
                        (if (and (gx#identifier? _L20995_)
                                 (gxc#case-lambda-expr? _L20994_))
                            (___kont2943129432_ _L20994_ _L20995_)
                            (___match2949429495_
                             _e2038820962_
                             _hd2038920965_
                             _tl2039020967_
                             _e2039120970_
                             _hd2039220973_
                             _tl2039320975_
                             _e2039420978_
                             _hd2039520981_
                             _tl2039620983_
                             _e2039720986_
                             _hd2039820989_
                             _tl2039920991_))))))
              (if (gx#stx-pair? ___stx2942929430_)
                  (let ((_e2038820962_ (gx#stx-e ___stx2942929430_)))
                    (let ((_tl2039020967_ (##cdr _e2038820962_))
                          (_hd2038920965_ (##car _e2038820962_)))
                      (if (gx#stx-pair? _tl2039020967_)
                          (let ((_e2039120970_ (gx#stx-e _tl2039020967_)))
                            (let ((_tl2039320975_ (##cdr _e2039120970_))
                                  (_hd2039220973_ (##car _e2039120970_)))
                              (if (gx#stx-pair? _hd2039220973_)
                                  (let ((_e2039420978_
                                         (gx#stx-e _hd2039220973_)))
                                    (let ((_tl2039620983_
                                           (##cdr _e2039420978_))
                                          (_hd2039520981_
                                           (##car _e2039420978_)))
                                      (if (gx#stx-null? _tl2039620983_)
                                          (if (gx#stx-pair? _tl2039320975_)
                                              (let ((_e2039720986_
                                                     (gx#stx-e
                                                      _tl2039320975_)))
                                                (let ((_tl2039920991_
                                                       (##cdr _e2039720986_))
                                                      (_hd2039820989_
                                                       (##car _e2039720986_)))
                                                  (if (gx#stx-null?
                                                       _tl2039920991_)
                                                      (___match2946629467_
                                                       _e2038820962_
                                                       _hd2038920965_
                                                       _tl2039020967_
                                                       _e2039120970_
                                                       _hd2039220973_
                                                       _tl2039320975_
                                                       _e2039420978_
                                                       _hd2039520981_
                                                       _tl2039620983_
                                                       _e2039720986_
                                                       _hd2039820989_
                                                       _tl2039920991_)
                                                      (_g2038420443_))))
                                              (_g2038420443_))
                                          (if (gx#stx-pair? _tl2039320975_)
                                              (let ((_e2043620464_
                                                     (gx#stx-e
                                                      _tl2039320975_)))
                                                (let ((_tl2043820469_
                                                       (##cdr _e2043620464_))
                                                      (_hd2043720467_
                                                       (##car _e2043620464_)))
                                                  (if (gx#stx-null?
                                                       _tl2043820469_)
                                                      (___kont2943729438_
                                                       _hd2043720467_
                                                       _hd2039220973_)
                                                      (_g2038420443_))))
                                              (_g2038420443_)))))
                                  (if (gx#stx-pair? _tl2039320975_)
                                      (let ((_e2043620464_
                                             (gx#stx-e _tl2039320975_)))
                                        (let ((_tl2043820469_
                                               (##cdr _e2043620464_))
                                              (_hd2043720467_
                                               (##car _e2043620464_)))
                                          (if (gx#stx-null? _tl2043820469_)
                                              (___kont2943729438_
                                               _hd2043720467_
                                               _hd2039220973_)
                                              (_g2038420443_))))
                                      (_g2038420443_)))))
                          (_g2038420443_))))
                  (_g2038420443_))))))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx19307_)
      (letrec* ((_bind-e__2730127302_
                 (lambda (_id20359_ _expr20360_ _compile?20361_)
                   (cons (cons _id20359_ '())
                         (cons (if _compile?20361_
                                   (gxc#compile-e _expr20360_)
                                   _expr20360_)
                               '()))))
                (_bind-e__0__2730327304_
                 (lambda (_id20366_ _expr20367_)
                   (let ((_compile?20369_ '#t))
                     (_bind-e__2730127302_
                      _id20366_
                      _expr20367_
                      _compile?20369_))))
                (_bind-e19309_
                 (lambda _g29931_
                   (let ((_g29930_ (length _g29931_)))
                     (cond ((##fx= _g29930_ 2)
                            (apply _bind-e__0__2730327304_ _g29931_))
                           ((##fx= _g29930_ 3)
                            (apply _bind-e__2730127302_ _g29931_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g29931_))))))
                (_compile-bindings19310_
                 (lambda (_bindings19943_)
                   (let _lp19945_ ((_rest19947_ _bindings19943_)
                                   (_lift119948_ '())
                                   (_lift219949_ '())
                                   (_bind19950_ '()))
                     (let* ((_rest1995119959_ _rest19947_)
                            (_else1995319967_
                             (lambda ()
                               (values (reverse _lift119948_)
                                       (reverse _lift219949_)
                                       (reverse _bind19950_))))
                            (_K1995520346_
                             (lambda (_rest19970_ _hd19971_)
                               (let* ((___stx2956529566_ _hd19971_)
                                      (_g1997520011_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx2956529566_))))
                                 (let ((___kont2956729568_
                                        (lambda (_L20253_ _L20254_)
                                          (let* ((___stx2954529546_ _L20253_)
                                                 (_g2026920283_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx2954529546_))))
                                            (let ((___kont2954729548_
                                                   (lambda (_L20331_)
                                                     (_lp19945_
                                                      _rest19970_
                                                      _lift119948_
                                                      _lift219949_
                                                      (cons (_bind-e__2730127302_
                                                             _L20254_
                                                             _L20253_
                                                             '#f)
                                                            _bind19950_))))
                                                  (___kont2954929550_
                                                   (lambda (_L20296_)
                                                     (let ((_g29932_
                                                            (gxc#lift-case-lambda-clauses__%
                                                             _stx19307_
                                                             _L20254_
                                                             _L20296_
                                                             '#t)))
                                                       (begin
                                                         (let ((_g29933_
                                                                (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g29932_)
                            (##vector-length _g29932_)
                            1)))
                   (if (not (##fx= _g29933_ 3))
                       (error "Context expects 3 values" _g29933_)))
                 (let ((_ids20306_ (##vector-ref _g29932_ 0))
                       (_impls20307_ (##vector-ref _g29932_ 1))
                       (_clauses20308_ (##vector-ref _g29932_ 2)))
                   (let* ((_g29934_
                           (for-each gx#core-bind-runtime! _ids20306_))
                          (_xbind20311_
                           (map _bind-e19309_ _ids20306_ _impls20307_))
                          (_expr*20313_
                           (gxc#xform-wrap-source
                            (cons '%#case-lambda _clauses20308_)
                            (gx#datum->syntax__0 '#f 'case-lambda-expr)))
                          (_bind*20315_
                           (_bind-e__2730127302_ _L20254_ _expr*20313_ '#f)))
                     (gxc#verbose
                      '"lift case-lambda clauses "
                      (gxc#identifier-symbol _L20254_)
                      '" => "
                      (map gxc#identifier-symbol _ids20306_))
                     (_lp19945_
                      _rest19970_
                      _lift119948_
                      (foldl1 cons _lift219949_ _xbind20311_)
                      (cons _bind*20315_ _bind19950_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((___match2955629557_
                                                     (lambda (_e2027220323_
                                                              _hd2027320326_
                                                              _tl2027420328_)
                                                       (let ((_L20331_
                                                              _tl2027420328_))
                                                         (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L20331_)
                     (___kont2954729548_ _L20331_)
                     (___kont2954929550_ _tl2027420328_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx2954529546_)
                                                    (let ((_e2027220323_
                                                           (gx#stx-e
                                                            ___stx2954529546_)))
                                                      (let ((_tl2027420328_
                                                             (##cdr _e2027220323_))
                                                            (_hd2027320326_
                                                             (##car _e2027220323_)))
                                                        (___match2955629557_
                                                         _e2027220323_
                                                         _hd2027320326_
                                                         _tl2027420328_)))
                                                    (_g2026920283_)))))))
                                       (___kont2956929570_
                                        (lambda (_L20081_ _L20082_)
                                          (let* ((_g2009620126_
                                                  (lambda (_g2009720123_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g2009720123_)))
                                                 (_g2009520221_
                                                  (lambda (_g2009720129_)
                                                    (if (gx#stx-pair?
                                                         _g2009720129_)
                                                        (let ((_e2010120131_
                                                               (gx#stx-e
                                                                _g2009720129_)))
                                                          (let ((_hd2010220134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2010120131_))
                        (_tl2010320136_ (##cdr _e2010120131_)))
                    (if (gx#stx-pair? _tl2010320136_)
                        (let ((_e2010420139_ (gx#stx-e _tl2010320136_)))
                          (let ((_hd2010520142_ (##car _e2010420139_))
                                (_tl2010620144_ (##cdr _e2010420139_)))
                            (if (gx#stx-pair? _hd2010520142_)
                                (let ((_e2010720147_
                                       (gx#stx-e _hd2010520142_)))
                                  (let ((_hd2010820150_ (##car _e2010720147_))
                                        (_tl2010920152_ (##cdr _e2010720147_)))
                                    (if (gx#stx-pair? _hd2010820150_)
                                        (let ((_e2011020155_
                                               (gx#stx-e _hd2010820150_)))
                                          (let ((_hd2011120158_
                                                 (##car _e2011020155_))
                                                (_tl2011220160_
                                                 (##cdr _e2011020155_)))
                                            (if (gx#stx-pair? _hd2011120158_)
                                                (let ((_e2011320163_
                                                       (gx#stx-e
                                                        _hd2011120158_)))
                                                  (let ((_hd2011420166_
                                                         (##car _e2011320163_))
                                                        (_tl2011520168_
                                                         (##cdr _e2011320163_)))
                                                    (if (gx#stx-null?
                                                         _tl2011520168_)
                                                        (if (gx#stx-pair?
                                                             _tl2011220160_)
                                                            (let ((_e2011620171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2011220160_)))
                      (let ((_hd2011720174_ (##car _e2011620171_))
                            (_tl2011820176_ (##cdr _e2011620171_)))
                        (if (gx#stx-null? _tl2011820176_)
                            (if (gx#stx-null? _tl2010920152_)
                                (if (gx#stx-pair? _tl2010620144_)
                                    (let ((_e2011920179_
                                           (gx#stx-e _tl2010620144_)))
                                      (let ((_hd2012020182_
                                             (##car _e2011920179_))
                                            (_tl2012120184_
                                             (##cdr _e2011920179_)))
                                        (if (gx#stx-null? _tl2012120184_)
                                            ((lambda (_L20187_
                                                      _L20188_
                                                      _L20189_)
                                               (let* ((_lambda-id20213_
                                                       (make-symbol
                                                        (gx#stx-e _L20082_)
                                                        (gensym '__)))
                                                      (_lambda-id20215_
                                                       (gx#core-quote-syntax__1
                                                        _lambda-id20213_
                                                        (gx#stx-source
                                                         _stx19307_)))
                                                      (_g29935_
                                                       (gx#core-bind-runtime!__0
                                                        _lambda-id20215_))
                                                      (_new-case-lambda-expr20218_
                                                       (gxc#apply-expression-subst
                                                        _L20187_
                                                        _L20189_
                                                        _lambda-id20215_)))
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#identifier-symbol
                                                   _L20082_)
                                                  '" => "
                                                  (gxc#identifier-symbol
                                                   _lambda-id20215_))
                                                 (_lp19945_
                                                  (cons (_bind-e__2730127302_
                                                         _L20082_
                                                         _new-case-lambda-expr20218_
                                                         '#f)
                                                        _rest19970_)
                                                  (cons (_bind-e__0__2730327304_
                                                         _lambda-id20215_
                                                         _L20188_)
                                                        _lift119948_)
                                                  _lift219949_
                                                  _bind19950_)))
                                             _hd2012020182_
                                             _hd2011720174_
                                             _hd2011420166_)
                                            (_g2009620126_ _g2009720129_))))
                                    (_g2009620126_ _g2009720129_))
                                (_g2009620126_ _g2009720129_))
                            (_g2009620126_ _g2009720129_))))
                    (_g2009620126_ _g2009720129_))
                (_g2009620126_ _g2009720129_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2009620126_
                                                 _g2009720129_))))
                                        (_g2009620126_ _g2009720129_))))
                                (_g2009620126_ _g2009720129_))))
                        (_g2009620126_ _g2009720129_))))
                (_g2009620126_ _g2009720129_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2009520221_ _L20081_))))
                                       (___kont2957129572_
                                        (lambda (_L20032_ _L20033_)
                                          (_lp19945_
                                           _rest19970_
                                           _lift119948_
                                           _lift219949_
                                           (cons (cons _L20033_
                                                       (cons (gxc#compile-e
                                                              _L20032_)
                                                             '()))
                                                 _bind19950_)))))
                                   (let* ((___match2961629617_
                                           (lambda (_e1999020057_
                                                    _hd1999120060_
                                                    _tl1999220062_
                                                    _e1999320065_
                                                    _hd1999420068_
                                                    _tl1999520070_
                                                    _e1999620073_
                                                    _hd1999720076_
                                                    _tl1999820078_)
                                             (let ((_L20081_ _hd1999720076_)
                                                   (_L20082_ _hd1999420068_))
                                               (if (and (gx#identifier?
                                                         _L20082_)
                                                        (gxc#opt-lambda-expr?
                                                         _L20081_))
                                                   (___kont2956929570_
                                                    _L20081_
                                                    _L20082_)
                                                   (___kont2957129572_
                                                    _hd1999720076_
                                                    _hd1999120060_)))))
                                          (___match2959429595_
                                           (lambda (_e1997920229_
                                                    _hd1998020232_
                                                    _tl1998120234_
                                                    _e1998220237_
                                                    _hd1998320240_
                                                    _tl1998420242_
                                                    _e1998520245_
                                                    _hd1998620248_
                                                    _tl1998720250_)
                                             (let ((_L20253_ _hd1998620248_)
                                                   (_L20254_ _hd1998320240_))
                                               (if (and (gx#identifier?
                                                         _L20254_)
                                                        (gxc#case-lambda-expr?
                                                         _L20253_))
                                                   (___kont2956729568_
                                                    _L20253_
                                                    _L20254_)
                                                   (___match2961629617_
                                                    _e1997920229_
                                                    _hd1998020232_
                                                    _tl1998120234_
                                                    _e1998220237_
                                                    _hd1998320240_
                                                    _tl1998420242_
                                                    _e1998520245_
                                                    _hd1998620248_
                                                    _tl1998720250_))))))
                                     (if (gx#stx-pair? ___stx2956529566_)
                                         (let ((_e1997920229_
                                                (gx#stx-e ___stx2956529566_)))
                                           (let ((_tl1998120234_
                                                  (##cdr _e1997920229_))
                                                 (_hd1998020232_
                                                  (##car _e1997920229_)))
                                             (if (gx#stx-pair? _hd1998020232_)
                                                 (let ((_e1998220237_
                                                        (gx#stx-e
                                                         _hd1998020232_)))
                                                   (let ((_tl1998420242_
                                                          (##cdr _e1998220237_))
                                                         (_hd1998320240_
                                                          (##car _e1998220237_)))
                                                     (if (gx#stx-null?
                                                          _tl1998420242_)
                                                         (if (gx#stx-pair?
                                                              _tl1998120234_)
                                                             (let ((_e1998520245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1998120234_)))
                       (let ((_tl1998720250_ (##cdr _e1998520245_))
                             (_hd1998620248_ (##car _e1998520245_)))
                         (if (gx#stx-null? _tl1998720250_)
                             (___match2959429595_
                              _e1997920229_
                              _hd1998020232_
                              _tl1998120234_
                              _e1998220237_
                              _hd1998320240_
                              _tl1998420242_
                              _e1998520245_
                              _hd1998620248_
                              _tl1998720250_)
                             (_g1997520011_))))
                     (_g1997520011_))
                 (if (gx#stx-pair? _tl1998120234_)
                     (let ((_e2000420024_ (gx#stx-e _tl1998120234_)))
                       (let ((_tl2000620029_ (##cdr _e2000420024_))
                             (_hd2000520027_ (##car _e2000420024_)))
                         (if (gx#stx-null? _tl2000620029_)
                             (___kont2957129572_ _hd2000520027_ _hd1998020232_)
                             (_g1997520011_))))
                     (_g1997520011_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1998120234_)
                                                     (let ((_e2000420024_
                                                            (gx#stx-e
                                                             _tl1998120234_)))
                                                       (let ((_tl2000620029_
                                                              (##cdr _e2000420024_))
                                                             (_hd2000520027_
                                                              (##car _e2000420024_)))
                                                         (if (gx#stx-null?
                                                              _tl2000620029_)
                                                             (___kont2957129572_
                                                              _hd2000520027_
                                                              _hd1998020232_)
                                                             (_g1997520011_))))
                                                     (_g1997520011_)))))
                                         (_g1997520011_))))))))
                       (if (##pair? _rest1995119959_)
                           (let ((_hd1995620349_ (##car _rest1995119959_))
                                 (_tl1995720351_ (##cdr _rest1995119959_)))
                             (let* ((_hd20354_ _hd1995620349_)
                                    (_rest20356_ _tl1995720351_))
                               (_K1995520346_ _rest20356_ _hd20354_)))
                           (_else1995319967_))))))
                (_lift-kw-lambda?19311_
                 (lambda (_bind19867_)
                   (let* ((___stx2963329634_ _bind19867_)
                          (_g1987019887_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              ___stx2963329634_))))
                     (let ((___kont2963529636_
                            (lambda (_L19923_ _L19924_)
                              (if (gx#identifier? _L19924_)
                                  (gxc#kw-lambda-expr? _L19923_)
                                  '#f)))
                           (___kont2963729638_ (lambda () '#f)))
                       (if (gx#stx-pair? ___stx2963329634_)
                           (let ((_e1987419899_ (gx#stx-e ___stx2963329634_)))
                             (let ((_tl1987619904_ (##cdr _e1987419899_))
                                   (_hd1987519902_ (##car _e1987419899_)))
                               (if (gx#stx-pair? _hd1987519902_)
                                   (let ((_e1987719907_
                                          (gx#stx-e _hd1987519902_)))
                                     (let ((_tl1987919912_
                                            (##cdr _e1987719907_))
                                           (_hd1987819910_
                                            (##car _e1987719907_)))
                                       (if (gx#stx-null? _tl1987919912_)
                                           (if (gx#stx-pair? _tl1987619904_)
                                               (let ((_e1988019915_
                                                      (gx#stx-e
                                                       _tl1987619904_)))
                                                 (let ((_tl1988219920_
                                                        (##cdr _e1988019915_))
                                                       (_hd1988119918_
                                                        (##car _e1988019915_)))
                                                   (if (gx#stx-null?
                                                        _tl1988219920_)
                                                       (___kont2963529636_
                                                        _hd1988119918_
                                                        _hd1987819910_)
                                                       (___kont2963729638_))))
                                               (___kont2963729638_))
                                           (___kont2963729638_))))
                                   (___kont2963729638_))))
                           (___kont2963729638_))))))
                (_lift-kw-lambda-bindings19312_
                 (lambda (_bindings19479_)
                   (let _lp19481_ ((_rest19483_ _bindings19479_)
                                   (_lift119484_ '())
                                   (_lift219485_ '())
                                   (_bind19486_ '()))
                     (let* ((_rest1948719495_ _rest19483_)
                            (_else1948919503_
                             (lambda ()
                               (values (reverse _lift119484_)
                                       (reverse _lift219485_)
                                       (reverse _bind19486_))))
                            (_K1949119855_
                             (lambda (_rest19506_ _hd19507_)
                               (let* ((___stx2966329664_ _hd19507_)
                                      (_g1951019535_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx2966329664_))))
                                 (let ((___kont2966529666_
                                        (lambda (_L19605_ _L19606_)
                                          (let* ((_g1962019673_
                                                  (lambda (_g1962119670_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1962119670_)))
                                                 (_g1961919849_
                                                  (lambda (_g1962119676_)
                                                    (if (gx#stx-pair?
                                                         _g1962119676_)
                                                        (let ((_e1962719678_
                                                               (gx#stx-e
                                                                _g1962119676_)))
                                                          (let ((_hd1962819681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1962719678_))
                        (_tl1962919683_ (##cdr _e1962719678_)))
                    (if (gx#stx-pair? _tl1962919683_)
                        (let ((_e1963019686_ (gx#stx-e _tl1962919683_)))
                          (let ((_hd1963119689_ (##car _e1963019686_))
                                (_tl1963219691_ (##cdr _e1963019686_)))
                            (if (gx#stx-pair? _hd1963119689_)
                                (let ((_e1963319694_
                                       (gx#stx-e _hd1963119689_)))
                                  (let ((_hd1963419697_ (##car _e1963319694_))
                                        (_tl1963519699_ (##cdr _e1963319694_)))
                                    (if (gx#stx-pair? _hd1963419697_)
                                        (let ((_e1963619702_
                                               (gx#stx-e _hd1963419697_)))
                                          (let ((_hd1963719705_
                                                 (##car _e1963619702_))
                                                (_tl1963819707_
                                                 (##cdr _e1963619702_)))
                                            (if (gx#stx-pair? _hd1963719705_)
                                                (let ((_e1963919710_
                                                       (gx#stx-e
                                                        _hd1963719705_)))
                                                  (let ((_hd1964019713_
                                                         (##car _e1963919710_))
                                                        (_tl1964119715_
                                                         (##cdr _e1963919710_)))
                                                    (if (gx#stx-null?
                                                         _tl1964119715_)
                                                        (if (gx#stx-pair?
                                                             _tl1963819707_)
                                                            (let ((_e1964219718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1963819707_)))
                      (let ((_hd1964319721_ (##car _e1964219718_))
                            (_tl1964419723_ (##cdr _e1964219718_)))
                        (if (gx#stx-pair? _hd1964319721_)
                            (let ((_e1964519726_ (gx#stx-e _hd1964319721_)))
                              (let ((_hd1964619729_ (##car _e1964519726_))
                                    (_tl1964719731_ (##cdr _e1964519726_)))
                                (if (gx#stx-pair? _tl1964719731_)
                                    (let ((_e1964819734_
                                           (gx#stx-e _tl1964719731_)))
                                      (let ((_hd1964919737_
                                             (##car _e1964819734_))
                                            (_tl1965019739_
                                             (##cdr _e1964819734_)))
                                        (if (gx#stx-pair? _hd1964919737_)
                                            (let ((_e1965119742_
                                                   (gx#stx-e _hd1964919737_)))
                                              (let ((_hd1965219745_
                                                     (##car _e1965119742_))
                                                    (_tl1965319747_
                                                     (##cdr _e1965119742_)))
                                                (if (gx#stx-pair?
                                                     _hd1965219745_)
                                                    (let ((_e1965419750_
                                                           (gx#stx-e
                                                            _hd1965219745_)))
                                                      (let ((_hd1965519753_
                                                             (##car _e1965419750_))
                                                            (_tl1965619755_
                                                             (##cdr _e1965419750_)))
                                                        (if (gx#stx-pair?
                                                             _hd1965519753_)
                                                            (let ((_e1965719758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1965519753_)))
                      (let ((_hd1965819761_ (##car _e1965719758_))
                            (_tl1965919763_ (##cdr _e1965719758_)))
                        (if (gx#stx-null? _tl1965919763_)
                            (if (gx#stx-pair? _tl1965619755_)
                                (let ((_e1966019766_
                                       (gx#stx-e _tl1965619755_)))
                                  (let ((_hd1966119769_ (##car _e1966019766_))
                                        (_tl1966219771_ (##cdr _e1966019766_)))
                                    (if (gx#stx-null? _tl1966219771_)
                                        (if (gx#stx-null? _tl1965319747_)
                                            (if (gx#stx-pair? _tl1965019739_)
                                                (let ((_e1966319774_
                                                       (gx#stx-e
                                                        _tl1965019739_)))
                                                  (let ((_hd1966419777_
                                                         (##car _e1966319774_))
                                                        (_tl1966519779_
                                                         (##cdr _e1966319774_)))
                                                    (if (gx#stx-null?
                                                         _tl1966519779_)
                                                        (if (gx#stx-null?
                                                             _tl1964419723_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1963519699_)
                        (if (gx#stx-pair? _tl1963219691_)
                            (let ((_e1966619782_ (gx#stx-e _tl1963219691_)))
                              (let ((_hd1966719785_ (##car _e1966619782_))
                                    (_tl1966819787_ (##cdr _e1966619782_)))
                                (if (gx#stx-null? _tl1966819787_)
                                    ((lambda (_L19790_
                                              _L19791_
                                              _L19792_
                                              _L19793_
                                              _L19794_)
                                       (let* ((_get-kws-id19834_
                                               (make-symbol
                                                (gx#stx-e _L19606_)
                                                (gensym '__)))
                                              (_get-kws-id19836_
                                               (gx#core-quote-syntax__1
                                                _get-kws-id19834_
                                                (gx#stx-source _stx19307_)))
                                              (_main-id19838_
                                               (make-symbol
                                                (gx#stx-e _L19606_)
                                                (gensym '__)))
                                              (_main-id19840_
                                               (gx#core-quote-syntax__1
                                                _main-id19838_
                                                (gx#stx-source _stx19307_)))
                                              (_g29936_
                                               (gx#core-bind-runtime!__0
                                                _get-kws-id19836_))
                                              (_g29937_
                                               (gx#core-bind-runtime!__0
                                                _main-id19840_))
                                              (_new-kw-dispatch19844_
                                               (gxc#apply-expression-subst
                                                _L19790_
                                                _L19794_
                                                _get-kws-id19836_))
                                              (_new-get-kws19846_
                                               (gxc#apply-expression-subst
                                                _L19791_
                                                _L19793_
                                                _main-id19840_)))
                                         (gxc#verbose
                                          '"lift kw-lambda dispatch "
                                          (gxc#identifier-symbol _L19606_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _get-kws-id19836_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _main-id19840_))
                                         (_lp19481_
                                          _rest19506_
                                          (cons (_bind-e__2730127302_
                                                 _main-id19840_
                                                 _L19792_
                                                 '#f)
                                                _lift119484_)
                                          (cons (_bind-e__2730127302_
                                                 _get-kws-id19836_
                                                 _new-get-kws19846_
                                                 '#f)
                                                _lift219485_)
                                          (cons (_bind-e__2730127302_
                                                 _L19606_
                                                 _new-kw-dispatch19844_
                                                 '#f)
                                                _bind19486_))))
                                     _hd1966719785_
                                     _hd1966419777_
                                     _hd1966119769_
                                     _hd1965819761_
                                     _hd1964019713_)
                                    (_g1962019673_ _g1962119676_))))
                            (_g1962019673_ _g1962119676_))
                        (_g1962019673_ _g1962119676_))
                    (_g1962019673_ _g1962119676_))
                (_g1962019673_ _g1962119676_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1962019673_ _g1962119676_))
                                            (_g1962019673_ _g1962119676_))
                                        (_g1962019673_ _g1962119676_))))
                                (_g1962019673_ _g1962119676_))
                            (_g1962019673_ _g1962119676_))))
                    (_g1962019673_ _g1962119676_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1962019673_
                                                     _g1962119676_))))
                                            (_g1962019673_ _g1962119676_))))
                                    (_g1962019673_ _g1962119676_))))
                            (_g1962019673_ _g1962119676_))))
                    (_g1962019673_ _g1962119676_))
                (_g1962019673_ _g1962119676_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1962019673_
                                                 _g1962119676_))))
                                        (_g1962019673_ _g1962119676_))))
                                (_g1962019673_ _g1962119676_))))
                        (_g1962019673_ _g1962119676_))))
                (_g1962019673_ _g1962119676_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1961919849_ _L19605_))))
                                       (___kont2966729668_
                                        (lambda (_L19556_ _L19557_)
                                          (_lp19481_
                                           _rest19506_
                                           _lift119484_
                                           _lift219485_
                                           (cons (cons _L19557_
                                                       (cons _L19556_ '()))
                                                 _bind19486_)))))
                                   (let ((___match2969029691_
                                          (lambda (_e1951419581_
                                                   _hd1951519584_
                                                   _tl1951619586_
                                                   _e1951719589_
                                                   _hd1951819592_
                                                   _tl1951919594_
                                                   _e1952019597_
                                                   _hd1952119600_
                                                   _tl1952219602_)
                                            (let ((_L19605_ _hd1952119600_)
                                                  (_L19606_ _hd1951819592_))
                                              (if (and (gx#identifier?
                                                        _L19606_)
                                                       (gxc#kw-lambda-expr?
                                                        _L19605_))
                                                  (___kont2966529666_
                                                   _L19605_
                                                   _L19606_)
                                                  (___kont2966729668_
                                                   _hd1952119600_
                                                   _hd1951519584_))))))
                                     (if (gx#stx-pair? ___stx2966329664_)
                                         (let ((_e1951419581_
                                                (gx#stx-e ___stx2966329664_)))
                                           (let ((_tl1951619586_
                                                  (##cdr _e1951419581_))
                                                 (_hd1951519584_
                                                  (##car _e1951419581_)))
                                             (if (gx#stx-pair? _hd1951519584_)
                                                 (let ((_e1951719589_
                                                        (gx#stx-e
                                                         _hd1951519584_)))
                                                   (let ((_tl1951919594_
                                                          (##cdr _e1951719589_))
                                                         (_hd1951819592_
                                                          (##car _e1951719589_)))
                                                     (if (gx#stx-null?
                                                          _tl1951919594_)
                                                         (if (gx#stx-pair?
                                                              _tl1951619586_)
                                                             (let ((_e1952019597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1951619586_)))
                       (let ((_tl1952219602_ (##cdr _e1952019597_))
                             (_hd1952119600_ (##car _e1952019597_)))
                         (if (gx#stx-null? _tl1952219602_)
                             (___match2969029691_
                              _e1951419581_
                              _hd1951519584_
                              _tl1951619586_
                              _e1951719589_
                              _hd1951819592_
                              _tl1951919594_
                              _e1952019597_
                              _hd1952119600_
                              _tl1952219602_)
                             (_g1951019535_))))
                     (_g1951019535_))
                 (if (gx#stx-pair? _tl1951619586_)
                     (let ((_e1952819548_ (gx#stx-e _tl1951619586_)))
                       (let ((_tl1953019553_ (##cdr _e1952819548_))
                             (_hd1952919551_ (##car _e1952819548_)))
                         (if (gx#stx-null? _tl1953019553_)
                             (___kont2966729668_ _hd1952919551_ _hd1951519584_)
                             (_g1951019535_))))
                     (_g1951019535_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1951619586_)
                                                     (let ((_e1952819548_
                                                            (gx#stx-e
                                                             _tl1951619586_)))
                                                       (let ((_tl1953019553_
                                                              (##cdr _e1952819548_))
                                                             (_hd1952919551_
                                                              (##car _e1952819548_)))
                                                         (if (gx#stx-null?
                                                              _tl1953019553_)
                                                             (___kont2966729668_
                                                              _hd1952919551_
                                                              _hd1951519584_)
                                                             (_g1951019535_))))
                                                     (_g1951019535_)))))
                                         (_g1951019535_))))))))
                       (if (##pair? _rest1948719495_)
                           (let ((_hd1949219858_ (##car _rest1948719495_))
                                 (_tl1949319860_ (##cdr _rest1948719495_)))
                             (let* ((_hd19863_ _hd1949219858_)
                                    (_rest19865_ _tl1949319860_))
                               (_K1949119855_ _rest19865_ _hd19863_)))
                           (_else1948919503_)))))))
        (let* ((___stx2970729708_ _stx19307_)
               (_g1931519341_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2970729708_))))
          (let ((___kont2970929710_
                 (lambda (_L19401_ _L19402_)
                   (call-with-parameters
                    (lambda ()
                      (if (ormap1 _lift-kw-lambda?19311_
                                  (foldr1 (lambda (_g1943019433_ _g1943119435_)
                                            (cons _g1943019433_ _g1943119435_))
                                          '()
                                          _L19402_))
                          (let ((_g29938_
                                 (_lift-kw-lambda-bindings19312_
                                  (foldr1 (lambda (_g1943719440_ _g1943819442_)
                                            (cons _g1943719440_ _g1943819442_))
                                          '()
                                          _L19402_))))
                            (begin
                              (let ((_g29939_
                                     (if (##values? _g29938_)
                                         (##vector-length _g29938_)
                                         1)))
                                (if (not (##fx= _g29939_ 3))
                                    (error "Context expects 3 values"
                                           _g29939_)))
                              (let ((_lift119445_ (##vector-ref _g29938_ 0))
                                    (_lift219446_ (##vector-ref _g29938_ 1))
                                    (_hd19447_ (##vector-ref _g29938_ 2)))
                                (let* ((_expr19449_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _hd19447_
                                                     (cons _L19401_ '())))
                                         _stx19307_))
                                       (_expr19451_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _lift219446_
                                                     (cons _expr19449_ '())))
                                         _stx19307_))
                                       (_expr19453_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _lift119445_
                                                     (cons _expr19451_ '())))
                                         _stx19307_)))
                                  (gxc#lift-top-lambda-let-values%
                                   _expr19453_)))))
                          (let ((_g29940_
                                 (_compile-bindings19310_
                                  (foldr1 (lambda (_g1945519458_ _g1945619460_)
                                            (cons _g1945519458_ _g1945619460_))
                                          '()
                                          _L19402_))))
                            (begin
                              (let ((_g29941_
                                     (if (##values? _g29940_)
                                         (##vector-length _g29940_)
                                         1)))
                                (if (not (##fx= _g29941_ 3))
                                    (error "Context expects 3 values"
                                           _g29941_)))
                              (let ((_lift119463_ (##vector-ref _g29940_ 0))
                                    (_lift219464_ (##vector-ref _g29940_ 1))
                                    (_hd19465_ (##vector-ref _g29940_ 2)))
                                (let* ((_body19467_ (gxc#compile-e _L19401_))
                                       (_expr19469_
                                        (gxc#xform-wrap-source
                                         (cons '%#let-values
                                               (cons _hd19465_
                                                     (cons _body19467_ '())))
                                         _stx19307_))
                                       (_expr19471_
                                        (if (null? _lift219464_)
                                            _expr19469_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift219464_
                                                         (cons _expr19469_
                                                               '())))
                                             _stx19307_)))
                                       (_expr19473_
                                        (if (null? _lift119463_)
                                            _expr19471_
                                            (gxc#xform-wrap-source
                                             (cons '%#let-values
                                                   (cons _lift119463_
                                                         (cons _expr19471_
                                                               '())))
                                             _stx19307_))))
                                  _expr19473_))))))
                    gx#current-expander-context
                    (let ((__obj29914 (make-object gx#local-context::t '5)))
                      (gx#local-context:::init!__0 __obj29914)
                      __obj29914))))
                (___kont2971329714_
                 (lambda () (gxc#xform-let-values% _stx19307_))))
            (let ((___match2973429735_
                   (lambda (_e1931919353_
                            _hd1932019356_
                            _tl1932119358_
                            _e1932219361_
                            _hd1932319364_
                            _tl1932419366_
                            ___splice2971129712_
                            _target1932519369_
                            _tl1932719371_)
                     (letrec ((_loop1932819374_
                               (lambda (_hd1932619377_ _bind1933219379_)
                                 (if (gx#stx-pair? _hd1932619377_)
                                     (let ((_e1932919382_
                                            (gx#stx-e _hd1932619377_)))
                                       (let ((_lp-tl1933119387_
                                              (##cdr _e1932919382_))
                                             (_lp-hd1933019385_
                                              (##car _e1932919382_)))
                                         (_loop1932819374_
                                          _lp-tl1933119387_
                                          (cons _lp-hd1933019385_
                                                _bind1933219379_))))
                                     (let ((_bind1933319390_
                                            (reverse _bind1933219379_)))
                                       (if (gx#stx-pair? _tl1932419366_)
                                           (let ((_e1933419393_
                                                  (gx#stx-e _tl1932419366_)))
                                             (let ((_tl1933619398_
                                                    (##cdr _e1933419393_))
                                                   (_hd1933519396_
                                                    (##car _e1933419393_)))
                                               (if (gx#stx-null?
                                                    _tl1933619398_)
                                                   (let ((_L19401_
                                                          _hd1933519396_)
                                                         (_L19402_
                                                          _bind1933319390_))
                                                     (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr1 (lambda (_g1942219425_ _g1942319427_)
                                   (cons _g1942219425_ _g1942319427_))
                                 '()
                                 _L19402_))
                 (___kont2970929710_ _L19401_ _L19402_)
                 (___kont2971329714_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont2971329714_))))
                                           (___kont2971329714_)))))))
                       (_loop1932819374_ _target1932519369_ '())))))
              (if (gx#stx-pair? ___stx2970729708_)
                  (let ((_e1931919353_ (gx#stx-e ___stx2970729708_)))
                    (let ((_tl1932119358_ (##cdr _e1931919353_))
                          (_hd1932019356_ (##car _e1931919353_)))
                      (if (gx#stx-pair? _tl1932119358_)
                          (let ((_e1932219361_ (gx#stx-e _tl1932119358_)))
                            (let ((_tl1932419366_ (##cdr _e1932219361_))
                                  (_hd1932319364_ (##car _e1932219361_)))
                              (if (gx#stx-pair/null? _hd1932319364_)
                                  (let ((___splice2971129712_
                                         (gx#syntax-split-splice
                                          _hd1932319364_
                                          '0)))
                                    (let ((_tl1932719371_
                                           (##vector-ref
                                            ___splice2971129712_
                                            '1))
                                          (_target1932519369_
                                           (##vector-ref
                                            ___splice2971129712_
                                            '0)))
                                      (if (gx#stx-null? _tl1932719371_)
                                          (___match2973429735_
                                           _e1931919353_
                                           _hd1932019356_
                                           _tl1932119358_
                                           _e1932219361_
                                           _hd1932319364_
                                           _tl1932419366_
                                           ___splice2971129712_
                                           _target1932519369_
                                           _tl1932719371_)
                                          (___kont2971329714_))))
                                  (___kont2971329714_))))
                          (___kont2971329714_))))
                  (___kont2971329714_))))))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx18451_)
      (letrec* ((_bind-e__2730627307_
                 (lambda (_id19291_ _expr19292_ _compile?19293_)
                   (cons (cons _id19291_ '())
                         (cons (if _compile?19293_
                                   (gxc#compile-e _expr19292_)
                                   _expr19292_)
                               '()))))
                (_bind-e__0__2730827309_
                 (lambda (_id19298_ _expr19299_)
                   (let ((_compile?19301_ '#t))
                     (_bind-e__2730627307_
                      _id19298_
                      _expr19299_
                      _compile?19301_))))
                (_bind-e18453_
                 (lambda _g29943_
                   (let ((_g29942_ (length _g29943_)))
                     (cond ((##fx= _g29942_ 2)
                            (apply _bind-e__0__2730827309_ _g29943_))
                           ((##fx= _g29942_ 3)
                            (apply _bind-e__2730627307_ _g29943_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g29943_))))))
                (_compile-bindings18454_
                 (lambda (_rest18589_)
                   (let _lp18591_ ((_rest18593_ _rest18589_) (_bind18594_ '()))
                     (let* ((_rest1859518603_ _rest18593_)
                            (_else1859718611_
                             (lambda () (reverse _bind18594_)))
                            (_K1859919278_
                             (lambda (_rest18614_ _hd18615_)
                               (let* ((___stx2975729758_ _hd18615_)
                                      (_g1862018667_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx2975729758_))))
                                 (let ((___kont2975929760_
                                        (lambda (_L19185_ _L19186_)
                                          (let* ((___stx2973729738_ _L19185_)
                                                 (_g1920119215_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     ___stx2973729738_))))
                                            (let ((___kont2973929740_
                                                   (lambda (_L19263_)
                                                     (_lp18591_
                                                      _rest18614_
                                                      (cons (_bind-e__2730627307_
                                                             _L19186_
                                                             _L19185_
                                                             '#f)
                                                            _bind18594_))))
                                                  (___kont2974129742_
                                                   (lambda (_L19228_)
                                                     (let ((_g29944_
                                                            (gxc#lift-case-lambda-clauses__%
                                                             _stx18451_
                                                             _L19186_
                                                             _L19228_
                                                             '#t)))
                                                       (begin
                                                         (let ((_g29945_
                                                                (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g29944_)
                            (##vector-length _g29944_)
                            1)))
                   (if (not (##fx= _g29945_ 3))
                       (error "Context expects 3 values" _g29945_)))
                 (let ((_ids19238_ (##vector-ref _g29944_ 0))
                       (_impls19239_ (##vector-ref _g29944_ 1))
                       (_clauses19240_ (##vector-ref _g29944_ 2)))
                   (let* ((_g29946_
                           (for-each gx#core-bind-runtime! _ids19238_))
                          (_xbind19243_
                           (map _bind-e18453_ _ids19238_ _impls19239_))
                          (_expr*19245_
                           (gxc#xform-wrap-source
                            (cons '%#case-lambda _clauses19240_)
                            (gx#datum->syntax__0 '#f 'case-lambda-expr)))
                          (_bind*19247_
                           (_bind-e__2730627307_ _L19186_ _expr*19245_ '#f)))
                     (gxc#verbose
                      '"lift case-lambda clauses "
                      (gxc#identifier-symbol _L19186_)
                      '" => "
                      (map gxc#identifier-symbol _ids19238_))
                     (_lp18591_
                      _rest18614_
                      (cons _bind*19247_
                            (foldl1 cons _bind18594_ _xbind19243_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((___match2974829749_
                                                     (lambda (_e1920419255_
                                                              _hd1920519258_
                                                              _tl1920619260_)
                                                       (let ((_L19263_
                                                              _tl1920619260_))
                                                         (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L19263_)
                     (___kont2973929740_ _L19263_)
                     (___kont2974129742_ _tl1920619260_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx2973729738_)
                                                    (let ((_e1920419255_
                                                           (gx#stx-e
                                                            ___stx2973729738_)))
                                                      (let ((_tl1920619260_
                                                             (##cdr _e1920419255_))
                                                            (_hd1920519258_
                                                             (##car _e1920419255_)))
                                                        (___match2974829749_
                                                         _e1920419255_
                                                         _hd1920519258_
                                                         _tl1920619260_)))
                                                    (_g1920119215_)))))))
                                       (___kont2976129762_
                                        (lambda (_L19013_ _L19014_)
                                          (let* ((_g1902819058_
                                                  (lambda (_g1902919055_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1902919055_)))
                                                 (_g1902719153_
                                                  (lambda (_g1902919061_)
                                                    (if (gx#stx-pair?
                                                         _g1902919061_)
                                                        (let ((_e1903319063_
                                                               (gx#stx-e
                                                                _g1902919061_)))
                                                          (let ((_hd1903419066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1903319063_))
                        (_tl1903519068_ (##cdr _e1903319063_)))
                    (if (gx#stx-pair? _tl1903519068_)
                        (let ((_e1903619071_ (gx#stx-e _tl1903519068_)))
                          (let ((_hd1903719074_ (##car _e1903619071_))
                                (_tl1903819076_ (##cdr _e1903619071_)))
                            (if (gx#stx-pair? _hd1903719074_)
                                (let ((_e1903919079_
                                       (gx#stx-e _hd1903719074_)))
                                  (let ((_hd1904019082_ (##car _e1903919079_))
                                        (_tl1904119084_ (##cdr _e1903919079_)))
                                    (if (gx#stx-pair? _hd1904019082_)
                                        (let ((_e1904219087_
                                               (gx#stx-e _hd1904019082_)))
                                          (let ((_hd1904319090_
                                                 (##car _e1904219087_))
                                                (_tl1904419092_
                                                 (##cdr _e1904219087_)))
                                            (if (gx#stx-pair? _hd1904319090_)
                                                (let ((_e1904519095_
                                                       (gx#stx-e
                                                        _hd1904319090_)))
                                                  (let ((_hd1904619098_
                                                         (##car _e1904519095_))
                                                        (_tl1904719100_
                                                         (##cdr _e1904519095_)))
                                                    (if (gx#stx-null?
                                                         _tl1904719100_)
                                                        (if (gx#stx-pair?
                                                             _tl1904419092_)
                                                            (let ((_e1904819103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1904419092_)))
                      (let ((_hd1904919106_ (##car _e1904819103_))
                            (_tl1905019108_ (##cdr _e1904819103_)))
                        (if (gx#stx-null? _tl1905019108_)
                            (if (gx#stx-null? _tl1904119084_)
                                (if (gx#stx-pair? _tl1903819076_)
                                    (let ((_e1905119111_
                                           (gx#stx-e _tl1903819076_)))
                                      (let ((_hd1905219114_
                                             (##car _e1905119111_))
                                            (_tl1905319116_
                                             (##cdr _e1905119111_)))
                                        (if (gx#stx-null? _tl1905319116_)
                                            ((lambda (_L19119_
                                                      _L19120_
                                                      _L19121_)
                                               (let* ((_lambda-id19145_
                                                       (make-symbol
                                                        (gx#stx-e _L19014_)
                                                        (gensym '__)))
                                                      (_lambda-id19147_
                                                       (gx#core-quote-syntax__1
                                                        _lambda-id19145_
                                                        (gx#stx-source
                                                         _stx18451_)))
                                                      (_g29947_
                                                       (gx#core-bind-runtime!__0
                                                        _lambda-id19147_))
                                                      (_new-case-lambda-expr19150_
                                                       (gxc#apply-expression-subst
                                                        _L19119_
                                                        _L19121_
                                                        _lambda-id19147_)))
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#identifier-symbol
                                                   _L19014_)
                                                  '" => "
                                                  (gxc#identifier-symbol
                                                   _lambda-id19147_))
                                                 (_lp18591_
                                                  (cons (_bind-e__2730627307_
                                                         _L19014_
                                                         _new-case-lambda-expr19150_
                                                         '#f)
                                                        _rest18614_)
                                                  (cons (_bind-e__0__2730827309_
                                                         _lambda-id19147_
                                                         _L19120_)
                                                        _bind18594_))))
                                             _hd1905219114_
                                             _hd1904919106_
                                             _hd1904619098_)
                                            (_g1902819058_ _g1902919061_))))
                                    (_g1902819058_ _g1902919061_))
                                (_g1902819058_ _g1902919061_))
                            (_g1902819058_ _g1902919061_))))
                    (_g1902819058_ _g1902919061_))
                (_g1902819058_ _g1902919061_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1902819058_
                                                 _g1902919061_))))
                                        (_g1902819058_ _g1902919061_))))
                                (_g1902819058_ _g1902919061_))))
                        (_g1902819058_ _g1902919061_))))
                (_g1902819058_ _g1902919061_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1902719153_ _L19013_))))
                                       (___kont2976329764_
                                        (lambda (_L18737_ _L18738_)
                                          (let* ((_g1875218805_
                                                  (lambda (_g1875318802_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1875318802_)))
                                                 (_g1875118981_
                                                  (lambda (_g1875318808_)
                                                    (if (gx#stx-pair?
                                                         _g1875318808_)
                                                        (let ((_e1875918810_
                                                               (gx#stx-e
                                                                _g1875318808_)))
                                                          (let ((_hd1876018813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1875918810_))
                        (_tl1876118815_ (##cdr _e1875918810_)))
                    (if (gx#stx-pair? _tl1876118815_)
                        (let ((_e1876218818_ (gx#stx-e _tl1876118815_)))
                          (let ((_hd1876318821_ (##car _e1876218818_))
                                (_tl1876418823_ (##cdr _e1876218818_)))
                            (if (gx#stx-pair? _hd1876318821_)
                                (let ((_e1876518826_
                                       (gx#stx-e _hd1876318821_)))
                                  (let ((_hd1876618829_ (##car _e1876518826_))
                                        (_tl1876718831_ (##cdr _e1876518826_)))
                                    (if (gx#stx-pair? _hd1876618829_)
                                        (let ((_e1876818834_
                                               (gx#stx-e _hd1876618829_)))
                                          (let ((_hd1876918837_
                                                 (##car _e1876818834_))
                                                (_tl1877018839_
                                                 (##cdr _e1876818834_)))
                                            (if (gx#stx-pair? _hd1876918837_)
                                                (let ((_e1877118842_
                                                       (gx#stx-e
                                                        _hd1876918837_)))
                                                  (let ((_hd1877218845_
                                                         (##car _e1877118842_))
                                                        (_tl1877318847_
                                                         (##cdr _e1877118842_)))
                                                    (if (gx#stx-null?
                                                         _tl1877318847_)
                                                        (if (gx#stx-pair?
                                                             _tl1877018839_)
                                                            (let ((_e1877418850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1877018839_)))
                      (let ((_hd1877518853_ (##car _e1877418850_))
                            (_tl1877618855_ (##cdr _e1877418850_)))
                        (if (gx#stx-pair? _hd1877518853_)
                            (let ((_e1877718858_ (gx#stx-e _hd1877518853_)))
                              (let ((_hd1877818861_ (##car _e1877718858_))
                                    (_tl1877918863_ (##cdr _e1877718858_)))
                                (if (gx#stx-pair? _tl1877918863_)
                                    (let ((_e1878018866_
                                           (gx#stx-e _tl1877918863_)))
                                      (let ((_hd1878118869_
                                             (##car _e1878018866_))
                                            (_tl1878218871_
                                             (##cdr _e1878018866_)))
                                        (if (gx#stx-pair? _hd1878118869_)
                                            (let ((_e1878318874_
                                                   (gx#stx-e _hd1878118869_)))
                                              (let ((_hd1878418877_
                                                     (##car _e1878318874_))
                                                    (_tl1878518879_
                                                     (##cdr _e1878318874_)))
                                                (if (gx#stx-pair?
                                                     _hd1878418877_)
                                                    (let ((_e1878618882_
                                                           (gx#stx-e
                                                            _hd1878418877_)))
                                                      (let ((_hd1878718885_
                                                             (##car _e1878618882_))
                                                            (_tl1878818887_
                                                             (##cdr _e1878618882_)))
                                                        (if (gx#stx-pair?
                                                             _hd1878718885_)
                                                            (let ((_e1878918890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1878718885_)))
                      (let ((_hd1879018893_ (##car _e1878918890_))
                            (_tl1879118895_ (##cdr _e1878918890_)))
                        (if (gx#stx-null? _tl1879118895_)
                            (if (gx#stx-pair? _tl1878818887_)
                                (let ((_e1879218898_
                                       (gx#stx-e _tl1878818887_)))
                                  (let ((_hd1879318901_ (##car _e1879218898_))
                                        (_tl1879418903_ (##cdr _e1879218898_)))
                                    (if (gx#stx-null? _tl1879418903_)
                                        (if (gx#stx-null? _tl1878518879_)
                                            (if (gx#stx-pair? _tl1878218871_)
                                                (let ((_e1879518906_
                                                       (gx#stx-e
                                                        _tl1878218871_)))
                                                  (let ((_hd1879618909_
                                                         (##car _e1879518906_))
                                                        (_tl1879718911_
                                                         (##cdr _e1879518906_)))
                                                    (if (gx#stx-null?
                                                         _tl1879718911_)
                                                        (if (gx#stx-null?
                                                             _tl1877618855_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1876718831_)
                        (if (gx#stx-pair? _tl1876418823_)
                            (let ((_e1879818914_ (gx#stx-e _tl1876418823_)))
                              (let ((_hd1879918917_ (##car _e1879818914_))
                                    (_tl1880018919_ (##cdr _e1879818914_)))
                                (if (gx#stx-null? _tl1880018919_)
                                    ((lambda (_L18922_
                                              _L18923_
                                              _L18924_
                                              _L18925_
                                              _L18926_)
                                       (let* ((_get-kws-id18966_
                                               (make-symbol
                                                (gx#stx-e _L18738_)
                                                (gensym '__)))
                                              (_get-kws-id18968_
                                               (gx#core-quote-syntax__1
                                                _get-kws-id18966_
                                                (gx#stx-source _stx18451_)))
                                              (_main-id18970_
                                               (make-symbol
                                                (gx#stx-e _L18738_)
                                                (gensym '__)))
                                              (_main-id18972_
                                               (gx#core-quote-syntax__1
                                                _main-id18970_
                                                (gx#stx-source _stx18451_)))
                                              (_g29948_
                                               (gx#core-bind-runtime!__0
                                                _get-kws-id18968_))
                                              (_g29949_
                                               (gx#core-bind-runtime!__0
                                                _main-id18972_))
                                              (_new-kw-dispatch18976_
                                               (gxc#apply-expression-subst
                                                _L18922_
                                                _L18926_
                                                _get-kws-id18968_))
                                              (_new-get-kws18978_
                                               (gxc#apply-expression-subst
                                                _L18923_
                                                _L18925_
                                                _main-id18972_)))
                                         (gxc#verbose
                                          '"lift kw-lambda dispatch "
                                          (gxc#identifier-symbol _L18738_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _get-kws-id18968_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _main-id18972_))
                                         (_lp18591_
                                          (cons (_bind-e__2730627307_
                                                 _main-id18972_
                                                 _L18924_
                                                 '#f)
                                                (cons (_bind-e__2730627307_
                                                       _get-kws-id18968_
                                                       _new-get-kws18978_
                                                       '#f)
                                                      (cons (_bind-e__2730627307_
                                                             _L18738_
                                                             _new-kw-dispatch18976_
                                                             '#f)
                                                            _rest18614_)))
                                          _bind18594_)))
                                     _hd1879918917_
                                     _hd1879618909_
                                     _hd1879318901_
                                     _hd1879018893_
                                     _hd1877218845_)
                                    (_g1875218805_ _g1875318808_))))
                            (_g1875218805_ _g1875318808_))
                        (_g1875218805_ _g1875318808_))
                    (_g1875218805_ _g1875318808_))
                (_g1875218805_ _g1875318808_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1875218805_ _g1875318808_))
                                            (_g1875218805_ _g1875318808_))
                                        (_g1875218805_ _g1875318808_))))
                                (_g1875218805_ _g1875318808_))
                            (_g1875218805_ _g1875318808_))))
                    (_g1875218805_ _g1875318808_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1875218805_
                                                     _g1875318808_))))
                                            (_g1875218805_ _g1875318808_))))
                                    (_g1875218805_ _g1875318808_))))
                            (_g1875218805_ _g1875318808_))))
                    (_g1875218805_ _g1875318808_))
                (_g1875218805_ _g1875318808_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1875218805_
                                                 _g1875318808_))))
                                        (_g1875218805_ _g1875318808_))))
                                (_g1875218805_ _g1875318808_))))
                        (_g1875218805_ _g1875318808_))))
                (_g1875218805_ _g1875318808_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1875118981_ _L18737_))))
                                       (___kont2976529766_
                                        (lambda (_L18688_ _L18689_)
                                          (_lp18591_
                                           _rest18614_
                                           (cons (cons _L18689_
                                                       (cons (gxc#compile-e
                                                              _L18688_)
                                                             '()))
                                                 _bind18594_)))))
                                   (let* ((___match2983229833_
                                           (lambda (_e1864618713_
                                                    _hd1864718716_
                                                    _tl1864818718_
                                                    _e1864918721_
                                                    _hd1865018724_
                                                    _tl1865118726_
                                                    _e1865218729_
                                                    _hd1865318732_
                                                    _tl1865418734_)
                                             (let ((_L18737_ _hd1865318732_)
                                                   (_L18738_ _hd1865018724_))
                                               (if (and (gx#identifier?
                                                         _L18738_)
                                                        (gxc#kw-lambda-expr?
                                                         _L18737_))
                                                   (___kont2976329764_
                                                    _L18737_
                                                    _L18738_)
                                                   (___kont2976529766_
                                                    _hd1865318732_
                                                    _hd1864718716_)))))
                                          (___match2981029811_
                                           (lambda (_e1863518989_
                                                    _hd1863618992_
                                                    _tl1863718994_
                                                    _e1863818997_
                                                    _hd1863919000_
                                                    _tl1864019002_
                                                    _e1864119005_
                                                    _hd1864219008_
                                                    _tl1864319010_)
                                             (let ((_L19013_ _hd1864219008_)
                                                   (_L19014_ _hd1863919000_))
                                               (if (and (gx#identifier?
                                                         _L19014_)
                                                        (gxc#opt-lambda-expr?
                                                         _L19013_))
                                                   (___kont2976129762_
                                                    _L19013_
                                                    _L19014_)
                                                   (___match2983229833_
                                                    _e1863518989_
                                                    _hd1863618992_
                                                    _tl1863718994_
                                                    _e1863818997_
                                                    _hd1863919000_
                                                    _tl1864019002_
                                                    _e1864119005_
                                                    _hd1864219008_
                                                    _tl1864319010_)))))
                                          (___match2978829789_
                                           (lambda (_e1862419161_
                                                    _hd1862519164_
                                                    _tl1862619166_
                                                    _e1862719169_
                                                    _hd1862819172_
                                                    _tl1862919174_
                                                    _e1863019177_
                                                    _hd1863119180_
                                                    _tl1863219182_)
                                             (let ((_L19185_ _hd1863119180_)
                                                   (_L19186_ _hd1862819172_))
                                               (if (and (gx#identifier?
                                                         _L19186_)
                                                        (gxc#case-lambda-expr?
                                                         _L19185_))
                                                   (___kont2975929760_
                                                    _L19185_
                                                    _L19186_)
                                                   (___match2981029811_
                                                    _e1862419161_
                                                    _hd1862519164_
                                                    _tl1862619166_
                                                    _e1862719169_
                                                    _hd1862819172_
                                                    _tl1862919174_
                                                    _e1863019177_
                                                    _hd1863119180_
                                                    _tl1863219182_))))))
                                     (if (gx#stx-pair? ___stx2975729758_)
                                         (let ((_e1862419161_
                                                (gx#stx-e ___stx2975729758_)))
                                           (let ((_tl1862619166_
                                                  (##cdr _e1862419161_))
                                                 (_hd1862519164_
                                                  (##car _e1862419161_)))
                                             (if (gx#stx-pair? _hd1862519164_)
                                                 (let ((_e1862719169_
                                                        (gx#stx-e
                                                         _hd1862519164_)))
                                                   (let ((_tl1862919174_
                                                          (##cdr _e1862719169_))
                                                         (_hd1862819172_
                                                          (##car _e1862719169_)))
                                                     (if (gx#stx-null?
                                                          _tl1862919174_)
                                                         (if (gx#stx-pair?
                                                              _tl1862619166_)
                                                             (let ((_e1863019177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1862619166_)))
                       (let ((_tl1863219182_ (##cdr _e1863019177_))
                             (_hd1863119180_ (##car _e1863019177_)))
                         (if (gx#stx-null? _tl1863219182_)
                             (___match2978829789_
                              _e1862419161_
                              _hd1862519164_
                              _tl1862619166_
                              _e1862719169_
                              _hd1862819172_
                              _tl1862919174_
                              _e1863019177_
                              _hd1863119180_
                              _tl1863219182_)
                             (_g1862018667_))))
                     (_g1862018667_))
                 (if (gx#stx-pair? _tl1862619166_)
                     (let ((_e1866018680_ (gx#stx-e _tl1862619166_)))
                       (let ((_tl1866218685_ (##cdr _e1866018680_))
                             (_hd1866118683_ (##car _e1866018680_)))
                         (if (gx#stx-null? _tl1866218685_)
                             (___kont2976529766_ _hd1866118683_ _hd1862519164_)
                             (_g1862018667_))))
                     (_g1862018667_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _tl1862619166_)
                                                     (let ((_e1866018680_
                                                            (gx#stx-e
                                                             _tl1862619166_)))
                                                       (let ((_tl1866218685_
                                                              (##cdr _e1866018680_))
                                                             (_hd1866118683_
                                                              (##car _e1866018680_)))
                                                         (if (gx#stx-null?
                                                              _tl1866218685_)
                                                             (___kont2976529766_
                                                              _hd1866118683_
                                                              _hd1862519164_)
                                                             (_g1862018667_))))
                                                     (_g1862018667_)))))
                                         (_g1862018667_))))))))
                       (if (##pair? _rest1859518603_)
                           (let ((_hd1860019281_ (##car _rest1859518603_))
                                 (_tl1860119283_ (##cdr _rest1859518603_)))
                             (let* ((_hd19286_ _hd1860019281_)
                                    (_rest19288_ _tl1860119283_))
                               (_K1859919278_ _rest19288_ _hd19286_)))
                           (_else1859718611_)))))))
        (let* ((___stx2984929850_ _stx18451_)
               (_g1845718484_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax"
                   ___stx2984929850_))))
          (let ((___kont2985129852_
                 (lambda (_L18544_ _L18545_ _L18546_)
                   (call-with-parameters
                    (lambda ()
                      (let ((_hd18583_
                             (_compile-bindings18454_
                              (foldr1 (lambda (_g1857518578_ _g1857618580_)
                                        (cons _g1857518578_ _g1857618580_))
                                      '()
                                      _L18545_)))
                            (_body18584_ (gxc#compile-e _L18544_)))
                        (gxc#xform-wrap-source
                         (cons _L18546_
                               (cons _hd18583_ (cons _body18584_ '())))
                         _stx18451_)))
                    gx#current-expander-context
                    (let ((__obj29915 (make-object gx#local-context::t '5)))
                      (gx#local-context:::init!__0 __obj29915)
                      __obj29915))))
                (___kont2985529856_
                 (lambda () (gxc#xform-let-values% _stx18451_))))
            (let ((___match2987629877_
                   (lambda (_e1846218496_
                            _hd1846318499_
                            _tl1846418501_
                            _e1846518504_
                            _hd1846618507_
                            _tl1846718509_
                            ___splice2985329854_
                            _target1846818512_
                            _tl1847018514_)
                     (letrec ((_loop1847118517_
                               (lambda (_hd1846918520_ _bind1847518522_)
                                 (if (gx#stx-pair? _hd1846918520_)
                                     (let ((_e1847218525_
                                            (gx#stx-e _hd1846918520_)))
                                       (let ((_lp-tl1847418530_
                                              (##cdr _e1847218525_))
                                             (_lp-hd1847318528_
                                              (##car _e1847218525_)))
                                         (_loop1847118517_
                                          _lp-tl1847418530_
                                          (cons _lp-hd1847318528_
                                                _bind1847518522_))))
                                     (let ((_bind1847618533_
                                            (reverse _bind1847518522_)))
                                       (if (gx#stx-pair? _tl1846718509_)
                                           (let ((_e1847718536_
                                                  (gx#stx-e _tl1846718509_)))
                                             (let ((_tl1847918541_
                                                    (##cdr _e1847718536_))
                                                   (_hd1847818539_
                                                    (##car _e1847718536_)))
                                               (if (gx#stx-null?
                                                    _tl1847918541_)
                                                   (let ((_L18544_
                                                          _hd1847818539_)
                                                         (_L18545_
                                                          _bind1847618533_)
                                                         (_L18546_
                                                          _hd1846318499_))
                                                     (if (ormap1 gxc#lift-top-lambda-binding?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr1 (lambda (_g1856718570_ _g1856818572_)
                                   (cons _g1856718570_ _g1856818572_))
                                 '()
                                 _L18545_))
                 (___kont2985129852_ _L18544_ _L18545_ _L18546_)
                 (___kont2985529856_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont2985529856_))))
                                           (___kont2985529856_)))))))
                       (_loop1847118517_ _target1846818512_ '())))))
              (if (gx#stx-pair? ___stx2984929850_)
                  (let ((_e1846218496_ (gx#stx-e ___stx2984929850_)))
                    (let ((_tl1846418501_ (##cdr _e1846218496_))
                          (_hd1846318499_ (##car _e1846218496_)))
                      (if (gx#stx-pair? _tl1846418501_)
                          (let ((_e1846518504_ (gx#stx-e _tl1846418501_)))
                            (let ((_tl1846718509_ (##cdr _e1846518504_))
                                  (_hd1846618507_ (##car _e1846518504_)))
                              (if (gx#stx-pair/null? _hd1846618507_)
                                  (let ((___splice2985329854_
                                         (gx#syntax-split-splice
                                          _hd1846618507_
                                          '0)))
                                    (let ((_tl1847018514_
                                           (##vector-ref
                                            ___splice2985329854_
                                            '1))
                                          (_target1846818512_
                                           (##vector-ref
                                            ___splice2985329854_
                                            '0)))
                                      (if (gx#stx-null? _tl1847018514_)
                                          (___match2987629877_
                                           _e1846218496_
                                           _hd1846318499_
                                           _tl1846418501_
                                           _e1846518504_
                                           _hd1846618507_
                                           _tl1846718509_
                                           ___splice2985329854_
                                           _target1846818512_
                                           _tl1847018514_)
                                          (___kont2985529856_))))
                                  (___kont2985529856_))))
                          (___kont2985529856_))))
                  (___kont2985529856_))))))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind18369_)
      (let* ((___stx2987929880_ _bind18369_)
             (_g1837218389_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx2987929880_))))
        (let ((___kont2988129882_
               (lambda (_L18425_ _L18426_)
                 (if (gx#identifier? _L18426_)
                     (let ((_$e18442_ (gxc#case-lambda-expr? _L18425_)))
                       (if _$e18442_
                           _$e18442_
                           (let ((_$e18445_ (gxc#opt-lambda-expr? _L18425_)))
                             (if _$e18445_
                                 _$e18445_
                                 (gxc#kw-lambda-expr? _L18425_)))))
                     '#f)))
              (___kont2988329884_ (lambda () '#f)))
          (if (gx#stx-pair? ___stx2987929880_)
              (let ((_e1837618401_ (gx#stx-e ___stx2987929880_)))
                (let ((_tl1837818406_ (##cdr _e1837618401_))
                      (_hd1837718404_ (##car _e1837618401_)))
                  (if (gx#stx-pair? _hd1837718404_)
                      (let ((_e1837918409_ (gx#stx-e _hd1837718404_)))
                        (let ((_tl1838118414_ (##cdr _e1837918409_))
                              (_hd1838018412_ (##car _e1837918409_)))
                          (if (gx#stx-null? _tl1838118414_)
                              (if (gx#stx-pair? _tl1837818406_)
                                  (let ((_e1838218417_
                                         (gx#stx-e _tl1837818406_)))
                                    (let ((_tl1838418422_
                                           (##cdr _e1838218417_))
                                          (_hd1838318420_
                                           (##car _e1838218417_)))
                                      (if (gx#stx-null? _tl1838418422_)
                                          (___kont2988129882_
                                           _hd1838318420_
                                           _hd1838018412_)
                                          (___kont2988329884_))))
                                  (___kont2988329884_))
                              (___kont2988329884_))))
                      (___kont2988329884_))))
              (___kont2988329884_)))))))
