(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl24470_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl24470_ (force gxc#&void))
           (table-set! _tbl24470_ '%#begin gxc#collect-begin%)
           (table-set! _tbl24470_ '%#module gxc#collect-module%)
           (table-set!
            _tbl24470_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set!
            _tbl24470_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl24470_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl24470_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl24470_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl24470_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl24470_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl24470_ '%#call gxc#collect-type-call%)
           (table-set! _tbl24470_ '%#if gxc#collect-operands)
           (table-set! _tbl24470_ '%#set! gxc#collect-body-setq%)
           _tbl24470_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx24463_ . _args24465_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx24463_ _args24465_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl24460_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl24460_ (force gxc#&false))
           (table-set! _tbl24460_ '%#begin gxc#basic-expression-type-begin%)
           (table-set!
            _tbl24460_
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%)
           (table-set! _tbl24460_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl24460_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl24460_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl24460_ '%#ref gxc#basic-expression-type-ref%)
           _tbl24460_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx24453_ . _args24455_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx24453_ _args24455_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl24450_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl24450_ (force gxc#&basic-xform))
           (table-set!
            _tbl24450_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl24450_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl24450_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl24450_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl24450_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx24443_ . _args24445_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx24443_ _args24445_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#collect-type-define-values%
    (lambda (_stx24299_)
      (let* ((_g2430224333_
              (lambda (_g2430324330_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2430324330_)))
             (_g2430124378_
              (lambda (_g2430324336_)
                (if (gx#stx-pair? _g2430324336_)
                    (let ((_e2432024338_ (gx#stx-e _g2430324336_)))
                      (let ((_hd2432124341_ (##car _e2432024338_))
                            (_tl2432224343_ (##cdr _e2432024338_)))
                        (if (gx#stx-pair? _tl2432224343_)
                            (let ((_e2432324346_ (gx#stx-e _tl2432224343_)))
                              (let ((_hd2432424349_ (##car _e2432324346_))
                                    (_tl2432524351_ (##cdr _e2432324346_)))
                                (if (gx#stx-pair? _tl2432524351_)
                                    (let ((_e2432624354_
                                           (gx#stx-e _tl2432524351_)))
                                      (let ((_hd2432724357_
                                             (##car _e2432624354_))
                                            (_tl2432824359_
                                             (##cdr _e2432624354_)))
                                        (if (gx#stx-null? _tl2432824359_)
                                            ((lambda (_L24362_ _L24363_)
                                               (gxc#compile-e _L24362_))
                                             _hd2432724357_
                                             _hd2432424349_)
                                            (_g2430224333_ _g2430324336_))))
                                    (_g2430224333_ _g2430324336_))))
                            (_g2430224333_ _g2430324336_))))
                    (_g2430224333_ _g2430324336_))))
             (_g2430024440_
              (lambda (_g2430324381_)
                (if (gx#stx-pair? _g2430324381_)
                    (let ((_e2430624383_ (gx#stx-e _g2430324381_)))
                      (let ((_hd2430724386_ (##car _e2430624383_))
                            (_tl2430824388_ (##cdr _e2430624383_)))
                        (if (gx#stx-pair? _tl2430824388_)
                            (let ((_e2430924391_ (gx#stx-e _tl2430824388_)))
                              (let ((_hd2431024394_ (##car _e2430924391_))
                                    (_tl2431124396_ (##cdr _e2430924391_)))
                                (if (gx#stx-pair? _hd2431024394_)
                                    (let ((_e2431224399_
                                           (gx#stx-e _hd2431024394_)))
                                      (let ((_hd2431324402_
                                             (##car _e2431224399_))
                                            (_tl2431424404_
                                             (##cdr _e2431224399_)))
                                        (if (gx#stx-null? _tl2431424404_)
                                            (if (gx#stx-pair? _tl2431124396_)
                                                (let ((_e2431524407_
                                                       (gx#stx-e
                                                        _tl2431124396_)))
                                                  (let ((_hd2431624410_
                                                         (##car _e2431524407_))
                                                        (_tl2431724412_
                                                         (##cdr _e2431524407_)))
                                                    (if (gx#stx-null?
                                                         _tl2431724412_)
                                                        ((lambda (_L24415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L24416_)
                   (if (gx#identifier? _L24416_)
                       (let ((_sym24432_ (gxc#identifier-symbol _L24416_)))
                         (begin
                           (if (table-ref
                                (gxc#current-compile-mutators)
                                _sym24432_
                                '#f)
                               (gxc#verbose
                                '"skipping type declaration for mutable binding "
                                _sym24432_)
                               (let ((_type2443324435_
                                      (gxc#apply-basic-expression-type
                                       _L24415_)))
                                 (if _type2443324435_
                                     (let ((_type24438_ _type2443324435_))
                                       (gxc#optimizer-declare-type!__0
                                        _sym24432_
                                        _type24438_))
                                     '#f)))
                           (gxc#compile-e _L24415_)))
                       (_g2430124378_ _g2430324381_)))
                 _hd2431624410_
                 _hd2431324402_)
                (_g2430124378_ _g2430324381_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2430124378_ _g2430324381_))
                                            (_g2430124378_ _g2430324381_))))
                                    (_g2430124378_ _g2430324381_))))
                            (_g2430124378_ _g2430324381_))))
                    (_g2430124378_ _g2430324381_)))))
        (_g2430024440_ _stx24299_))))
  (define gxc#collect-type-let-values%
    (lambda (_stx24084_)
      (letrec ((_collect-e24086_
                (lambda (_hd24243_ _expr24244_)
                  (let* ((_g2424724257_
                          (lambda (_g2424824254_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2424824254_)))
                         (_g2424624264_
                          (lambda (_g2424824260_) ((lambda () '#!void))))
                         (_g2424524296_
                          (lambda (_g2424824267_)
                            (if (gx#stx-pair? _g2424824267_)
                                (let ((_e2425024269_ (gx#stx-e _g2424824267_)))
                                  (let ((_hd2425124272_ (##car _e2425024269_))
                                        (_tl2425224274_ (##cdr _e2425024269_)))
                                    (if (gx#stx-null? _tl2425224274_)
                                        ((lambda (_L24277_)
                                           (if (gx#identifier? _L24277_)
                                               (let ((_sym24288_
                                                      (gxc#identifier-symbol
                                                       _L24277_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym24288_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym24288_)
                                                     (let ((_type2428924291_
                                                            (gxc#apply-basic-expression-type
                                                             _expr24244_)))
                                                       (if _type2428924291_
                                                           (let ((_type24294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type2428924291_))
                     (gxc#optimizer-declare-type!__%
                      _sym24288_
                      _type24294_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2424624264_ _g2424824267_)))
                                         _hd2425124272_)
                                        (_g2424624264_ _g2424824267_))))
                                (_g2424624264_ _g2424824267_)))))
                    (_g2424524296_ _hd24243_)))))
        (let* ((_g2408824123_
                (lambda (_g2408924120_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2408924120_)))
               (_g2408724240_
                (lambda (_g2408924126_)
                  (if (gx#stx-pair? _g2408924126_)
                      (let ((_e2409324128_ (gx#stx-e _g2408924126_)))
                        (let ((_hd2409424131_ (##car _e2409324128_))
                              (_tl2409524133_ (##cdr _e2409324128_)))
                          (if (gx#stx-pair? _tl2409524133_)
                              (let ((_e2409624136_ (gx#stx-e _tl2409524133_)))
                                (let ((_hd2409724139_ (##car _e2409624136_))
                                      (_tl2409824141_ (##cdr _e2409624136_)))
                                  (if (gx#stx-pair/null? _hd2409724139_)
                                      (if (fx>= (gx#stx-length _hd2409724139_)
                                                '0)
                                          (let ((_g24488_
                                                 (gx#syntax-split-splice
                                                  _hd2409724139_
                                                  '0)))
                                            (begin
                                              (let ((_g24489_
                                                     (if (##values? _g24488_)
                                                         (##vector-length
                                                          _g24488_)
                                                         1)))
                                                (if (not (##fx= _g24489_ 2))
                                                    (error "Context expects 2 values"
                                                           _g24489_)))
                                              (let ((_target2409924144_
                                                     (##vector-ref _g24488_ 0))
                                                    (_tl2410124146_
                                                     (##vector-ref
                                                      _g24488_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl2410124146_)
                                                    (letrec ((_loop2410224149_
                                                              (lambda (_hd2410024152_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr2410624154_
                               _hd2410724156_)
                        (if (gx#stx-pair? _hd2410024152_)
                            (let ((_e2410324159_ (gx#stx-e _hd2410024152_)))
                              (let ((_lp-hd2410424162_ (##car _e2410324159_))
                                    (_lp-tl2410524164_ (##cdr _e2410324159_)))
                                (if (gx#stx-pair? _lp-hd2410424162_)
                                    (let ((_e2411024167_
                                           (gx#stx-e _lp-hd2410424162_)))
                                      (let ((_hd2411124170_
                                             (##car _e2411024167_))
                                            (_tl2411224172_
                                             (##cdr _e2411024167_)))
                                        (if (gx#stx-pair? _tl2411224172_)
                                            (let ((_e2411324175_
                                                   (gx#stx-e _tl2411224172_)))
                                              (let ((_hd2411424178_
                                                     (##car _e2411324175_))
                                                    (_tl2411524180_
                                                     (##cdr _e2411324175_)))
                                                (if (gx#stx-null?
                                                     _tl2411524180_)
                                                    (_loop2410224149_
                                                     _lp-tl2410524164_
                                                     (cons _hd2411424178_
                                                           _expr2410624154_)
                                                     (cons _hd2411124170_
                                                           _hd2410724156_))
                                                    (_g2408824123_
                                                     _g2408924126_))))
                                            (_g2408824123_ _g2408924126_))))
                                    (_g2408824123_ _g2408924126_))))
                            (let ((_expr2410824183_ (reverse _expr2410624154_))
                                  (_hd2410924185_ (reverse _hd2410724156_)))
                              (if (gx#stx-pair? _tl2409824141_)
                                  (let ((_e2411624188_
                                         (gx#stx-e _tl2409824141_)))
                                    (let ((_hd2411724191_
                                           (##car _e2411624188_))
                                          (_tl2411824193_
                                           (##cdr _e2411624188_)))
                                      (if (gx#stx-null? _tl2411824193_)
                                          ((lambda (_L24196_ _L24197_ _L24198_)
                                             (begin
                                               (for-each
                                                _collect-e24086_
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g2421824221_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2421924223_)
                    (cons _g2421824221_ _g2421924223_))
                  '()
                  _L24198_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g2422524228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2422624230_)
                    (cons _g2422524228_ _g2422624230_))
                  '()
                  _L24197_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (for-each
                                                gxc#compile-e
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g2423224235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2423324237_)
                    (cons _g2423224235_ _g2423324237_))
                  '()
                  _L24197_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gxc#compile-e _L24196_)))
                                           _hd2411724191_
                                           _expr2410824183_
                                           _hd2410924185_)
                                          (_g2408824123_ _g2408924126_))))
                                  (_g2408824123_ _g2408924126_)))))))
              (_loop2410224149_ _target2409924144_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2408824123_
                                                     _g2408924126_)))))
                                          (_g2408824123_ _g2408924126_))
                                      (_g2408824123_ _g2408924126_))))
                              (_g2408824123_ _g2408924126_))))
                      (_g2408824123_ _g2408924126_)))))
          (_g2408724240_ _stx24084_)))))
  (define gxc#collect-type-call%
    (lambda (_stx23638_)
      (let* ((_g2364223744_
              (lambda (_g2364323741_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2364323741_)))
             (_g2364123751_ (lambda (_g2364323747_) ((lambda () '#!void))))
             (_g2364023901_
              (lambda (_g2364323754_)
                (if (gx#stx-pair? _g2364323754_)
                    (let ((_e2370123756_ (gx#stx-e _g2364323754_)))
                      (let ((_hd2370223759_ (##car _e2370123756_))
                            (_tl2370323761_ (##cdr _e2370123756_)))
                        (if (gx#stx-pair? _tl2370323761_)
                            (let ((_e2370423764_ (gx#stx-e _tl2370323761_)))
                              (let ((_hd2370523767_ (##car _e2370423764_))
                                    (_tl2370623769_ (##cdr _e2370423764_)))
                                (if (gx#stx-pair? _hd2370523767_)
                                    (let ((_e2370723772_
                                           (gx#stx-e _hd2370523767_)))
                                      (let ((_hd2370823775_
                                             (##car _e2370723772_))
                                            (_tl2370923777_
                                             (##cdr _e2370723772_)))
                                        (if (gx#identifier? _hd2370823775_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2370823775_)
                                                (if (gx#stx-pair?
                                                     _tl2370923777_)
                                                    (let ((_e2371023780_
                                                           (gx#stx-e
                                                            _tl2370923777_)))
                                                      (let ((_hd2371123783_
                                                             (##car _e2371023780_))
                                                            (_tl2371223785_
                                                             (##cdr _e2371023780_)))
                                                        (if (gx#stx-null?
                                                             _tl2371223785_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2370623769_)
                        (let ((_e2371323788_ (gx#stx-e _tl2370623769_)))
                          (let ((_hd2371423791_ (##car _e2371323788_))
                                (_tl2371523793_ (##cdr _e2371323788_)))
                            (if (gx#stx-pair? _hd2371423791_)
                                (let ((_e2371623796_
                                       (gx#stx-e _hd2371423791_)))
                                  (let ((_hd2371723799_ (##car _e2371623796_))
                                        (_tl2371823801_ (##cdr _e2371623796_)))
                                    (if (gx#identifier? _hd2371723799_)
                                        (if (gx#stx-eq? '%#ref _hd2371723799_)
                                            (if (gx#stx-pair? _tl2371823801_)
                                                (let ((_e2371923804_
                                                       (gx#stx-e
                                                        _tl2371823801_)))
                                                  (let ((_hd2372023807_
                                                         (##car _e2371923804_))
                                                        (_tl2372123809_
                                                         (##cdr _e2371923804_)))
                                                    (if (gx#stx-null?
                                                         _tl2372123809_)
                                                        (if (gx#stx-pair?
                                                             _tl2371523793_)
                                                            (let ((_e2372223812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2371523793_)))
                      (let ((_hd2372323815_ (##car _e2372223812_))
                            (_tl2372423817_ (##cdr _e2372223812_)))
                        (if (gx#stx-pair? _hd2372323815_)
                            (let ((_e2372523820_ (gx#stx-e _hd2372323815_)))
                              (let ((_hd2372623823_ (##car _e2372523820_))
                                    (_tl2372723825_ (##cdr _e2372523820_)))
                                (if (gx#identifier? _hd2372623823_)
                                    (if (gx#stx-eq? '%#quote _hd2372623823_)
                                        (if (gx#stx-pair? _tl2372723825_)
                                            (let ((_e2372823828_
                                                   (gx#stx-e _tl2372723825_)))
                                              (let ((_hd2372923831_
                                                     (##car _e2372823828_))
                                                    (_tl2373023833_
                                                     (##cdr _e2372823828_)))
                                                (if (gx#stx-null?
                                                     _tl2373023833_)
                                                    (if (gx#stx-pair?
                                                         _tl2372423817_)
                                                        (let ((_e2373123836_
                                                               (gx#stx-e
                                                                _tl2372423817_)))
                                                          (let ((_hd2373223839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2373123836_))
                        (_tl2373323841_ (##cdr _e2373123836_)))
                    (if (gx#stx-pair? _hd2373223839_)
                        (let ((_e2373423844_ (gx#stx-e _hd2373223839_)))
                          (let ((_hd2373523847_ (##car _e2373423844_))
                                (_tl2373623849_ (##cdr _e2373423844_)))
                            (if (gx#identifier? _hd2373523847_)
                                (if (gx#stx-eq? '%#ref _hd2373523847_)
                                    (if (gx#stx-pair? _tl2373623849_)
                                        (let ((_e2373723852_
                                               (gx#stx-e _tl2373623849_)))
                                          (let ((_hd2373823855_
                                                 (##car _e2373723852_))
                                                (_tl2373923857_
                                                 (##cdr _e2373723852_)))
                                            (if (gx#stx-null? _tl2373923857_)
                                                (if (gx#stx-null?
                                                     _tl2373323841_)
                                                    ((lambda (_L23860_
                                                              _L23861_
                                                              _L23862_
                                                              _L23863_)
                                                       (if (gxc#runtime-identifier=?
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '-bind-method)
                                                            'bind-method!)
                                                           (gxc#optimizer-declare-method!__%
                                                            (gxc#identifier-symbol
                                                             _L23862_)
                                                            (gx#stx-e _L23861_)
                                                            (gxc#identifier-symbol
                                                             _L23860_)
                                                            '#f)
                                                           (_g2364123751_
                                                            _g2364323754_)))
                                                     _hd2373823855_
                                                     _hd2372923831_
                                                     _hd2372023807_
                                                     _hd2371123783_)
                                                    (_g2364123751_
                                                     _g2364323754_))
                                                (_g2364123751_
                                                 _g2364323754_))))
                                        (_g2364123751_ _g2364323754_))
                                    (_g2364123751_ _g2364323754_))
                                (_g2364123751_ _g2364323754_))))
                        (_g2364123751_ _g2364323754_))))
                (_g2364123751_ _g2364323754_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2364123751_
                                                     _g2364323754_))))
                                            (_g2364123751_ _g2364323754_))
                                        (_g2364123751_ _g2364323754_))
                                    (_g2364123751_ _g2364323754_))))
                            (_g2364123751_ _g2364323754_))))
                    (_g2364123751_ _g2364323754_))
                (_g2364123751_ _g2364323754_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2364123751_ _g2364323754_))
                                            (_g2364123751_ _g2364323754_))
                                        (_g2364123751_ _g2364323754_))))
                                (_g2364123751_ _g2364323754_))))
                        (_g2364123751_ _g2364323754_))
                    (_g2364123751_ _g2364323754_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2364123751_
                                                     _g2364323754_))
                                                (_g2364123751_ _g2364323754_))
                                            (_g2364123751_ _g2364323754_))))
                                    (_g2364123751_ _g2364323754_))))
                            (_g2364123751_ _g2364323754_))))
                    (_g2364123751_ _g2364323754_))))
             (_g2363924081_
              (lambda (_g2364323904_)
                (if (gx#stx-pair? _g2364323904_)
                    (let ((_e2364923906_ (gx#stx-e _g2364323904_)))
                      (let ((_hd2365023909_ (##car _e2364923906_))
                            (_tl2365123911_ (##cdr _e2364923906_)))
                        (if (gx#stx-pair? _tl2365123911_)
                            (let ((_e2365223914_ (gx#stx-e _tl2365123911_)))
                              (let ((_hd2365323917_ (##car _e2365223914_))
                                    (_tl2365423919_ (##cdr _e2365223914_)))
                                (if (gx#stx-pair? _hd2365323917_)
                                    (let ((_e2365523922_
                                           (gx#stx-e _hd2365323917_)))
                                      (let ((_hd2365623925_
                                             (##car _e2365523922_))
                                            (_tl2365723927_
                                             (##cdr _e2365523922_)))
                                        (if (gx#identifier? _hd2365623925_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2365623925_)
                                                (if (gx#stx-pair?
                                                     _tl2365723927_)
                                                    (let ((_e2365823930_
                                                           (gx#stx-e
                                                            _tl2365723927_)))
                                                      (let ((_hd2365923933_
                                                             (##car _e2365823930_))
                                                            (_tl2366023935_
                                                             (##cdr _e2365823930_)))
                                                        (if (gx#stx-null?
                                                             _tl2366023935_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2365423919_)
                        (let ((_e2366123938_ (gx#stx-e _tl2365423919_)))
                          (let ((_hd2366223941_ (##car _e2366123938_))
                                (_tl2366323943_ (##cdr _e2366123938_)))
                            (if (gx#stx-pair? _hd2366223941_)
                                (let ((_e2366423946_
                                       (gx#stx-e _hd2366223941_)))
                                  (let ((_hd2366523949_ (##car _e2366423946_))
                                        (_tl2366623951_ (##cdr _e2366423946_)))
                                    (if (gx#identifier? _hd2366523949_)
                                        (if (gx#stx-eq? '%#ref _hd2366523949_)
                                            (if (gx#stx-pair? _tl2366623951_)
                                                (let ((_e2366723954_
                                                       (gx#stx-e
                                                        _tl2366623951_)))
                                                  (let ((_hd2366823957_
                                                         (##car _e2366723954_))
                                                        (_tl2366923959_
                                                         (##cdr _e2366723954_)))
                                                    (if (gx#stx-null?
                                                         _tl2366923959_)
                                                        (if (gx#stx-pair?
                                                             _tl2366323943_)
                                                            (let ((_e2367023962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2366323943_)))
                      (let ((_hd2367123965_ (##car _e2367023962_))
                            (_tl2367223967_ (##cdr _e2367023962_)))
                        (if (gx#stx-pair? _hd2367123965_)
                            (let ((_e2367323970_ (gx#stx-e _hd2367123965_)))
                              (let ((_hd2367423973_ (##car _e2367323970_))
                                    (_tl2367523975_ (##cdr _e2367323970_)))
                                (if (gx#identifier? _hd2367423973_)
                                    (if (gx#stx-eq? '%#quote _hd2367423973_)
                                        (if (gx#stx-pair? _tl2367523975_)
                                            (let ((_e2367623978_
                                                   (gx#stx-e _tl2367523975_)))
                                              (let ((_hd2367723981_
                                                     (##car _e2367623978_))
                                                    (_tl2367823983_
                                                     (##cdr _e2367623978_)))
                                                (if (gx#stx-null?
                                                     _tl2367823983_)
                                                    (if (gx#stx-pair?
                                                         _tl2367223967_)
                                                        (let ((_e2367923986_
                                                               (gx#stx-e
                                                                _tl2367223967_)))
                                                          (let ((_hd2368023989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2367923986_))
                        (_tl2368123991_ (##cdr _e2367923986_)))
                    (if (gx#stx-pair? _hd2368023989_)
                        (let ((_e2368223994_ (gx#stx-e _hd2368023989_)))
                          (let ((_hd2368323997_ (##car _e2368223994_))
                                (_tl2368423999_ (##cdr _e2368223994_)))
                            (if (gx#identifier? _hd2368323997_)
                                (if (gx#stx-eq? '%#ref _hd2368323997_)
                                    (if (gx#stx-pair? _tl2368423999_)
                                        (let ((_e2368524002_
                                               (gx#stx-e _tl2368423999_)))
                                          (let ((_hd2368624005_
                                                 (##car _e2368524002_))
                                                (_tl2368724007_
                                                 (##cdr _e2368524002_)))
                                            (if (gx#stx-null? _tl2368724007_)
                                                (if (gx#stx-pair?
                                                     _tl2368123991_)
                                                    (let ((_e2368824010_
                                                           (gx#stx-e
                                                            _tl2368123991_)))
                                                      (let ((_hd2368924013_
                                                             (##car _e2368824010_))
                                                            (_tl2369024015_
                                                             (##cdr _e2368824010_)))
                                                        (if (gx#stx-pair?
                                                             _hd2368924013_)
                                                            (let ((_e2369124018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2368924013_)))
                      (let ((_hd2369224021_ (##car _e2369124018_))
                            (_tl2369324023_ (##cdr _e2369124018_)))
                        (if (gx#identifier? _hd2369224021_)
                            (if (gx#stx-eq? '%#quote _hd2369224021_)
                                (if (gx#stx-pair? _tl2369324023_)
                                    (let ((_e2369424026_
                                           (gx#stx-e _tl2369324023_)))
                                      (let ((_hd2369524029_
                                             (##car _e2369424026_))
                                            (_tl2369624031_
                                             (##cdr _e2369424026_)))
                                        (if (gx#stx-null? _tl2369624031_)
                                            (if (gx#stx-null? _tl2369024015_)
                                                ((lambda (_L24034_
                                                          _L24035_
                                                          _L24036_
                                                          _L24037_
                                                          _L24038_)
                                                   (if (gxc#runtime-identifier=?
                                                        _L24038_
                                                        'bind-method!)
                                                       (gxc#optimizer-declare-method!__%
                                                        (gxc#identifier-symbol
                                                         _L24037_)
                                                        (gx#stx-e _L24036_)
                                                        (gxc#identifier-symbol
                                                         _L24035_)
                                                        (gx#stx-e _L24034_))
                                                       (_g2364023901_
                                                        _g2364323904_)))
                                                 _hd2369524029_
                                                 _hd2368624005_
                                                 _hd2367723981_
                                                 _hd2366823957_
                                                 _hd2365923933_)
                                                (_g2364023901_ _g2364323904_))
                                            (_g2364023901_ _g2364323904_))))
                                    (_g2364023901_ _g2364323904_))
                                (_g2364023901_ _g2364323904_))
                            (_g2364023901_ _g2364323904_))))
                    (_g2364023901_ _g2364323904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2364023901_
                                                     _g2364323904_))
                                                (_g2364023901_
                                                 _g2364323904_))))
                                        (_g2364023901_ _g2364323904_))
                                    (_g2364023901_ _g2364323904_))
                                (_g2364023901_ _g2364323904_))))
                        (_g2364023901_ _g2364323904_))))
                (_g2364023901_ _g2364323904_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2364023901_
                                                     _g2364323904_))))
                                            (_g2364023901_ _g2364323904_))
                                        (_g2364023901_ _g2364323904_))
                                    (_g2364023901_ _g2364323904_))))
                            (_g2364023901_ _g2364323904_))))
                    (_g2364023901_ _g2364323904_))
                (_g2364023901_ _g2364323904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2364023901_ _g2364323904_))
                                            (_g2364023901_ _g2364323904_))
                                        (_g2364023901_ _g2364323904_))))
                                (_g2364023901_ _g2364323904_))))
                        (_g2364023901_ _g2364323904_))
                    (_g2364023901_ _g2364323904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2364023901_
                                                     _g2364323904_))
                                                (_g2364023901_ _g2364323904_))
                                            (_g2364023901_ _g2364323904_))))
                                    (_g2364023901_ _g2364323904_))))
                            (_g2364023901_ _g2364323904_))))
                    (_g2364023901_ _g2364323904_)))))
        (_g2363924081_ _stx23638_))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx23578_)
      (let* ((_g2358123594_
              (lambda (_g2358223591_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2358223591_)))
             (_g2358023601_ (lambda (_g2358223597_) ((lambda () '#f))))
             (_g2357923635_
              (lambda (_g2358223604_)
                (if (gx#stx-pair? _g2358223604_)
                    (let ((_e2358423606_ (gx#stx-e _g2358223604_)))
                      (let ((_hd2358523609_ (##car _e2358423606_))
                            (_tl2358623611_ (##cdr _e2358423606_)))
                        (if (gx#stx-pair? _tl2358623611_)
                            (let ((_e2358723614_ (gx#stx-e _tl2358623611_)))
                              (let ((_hd2358823617_ (##car _e2358723614_))
                                    (_tl2358923619_ (##cdr _e2358723614_)))
                                (if (gx#stx-null? _tl2358923619_)
                                    ((lambda (_L23622_)
                                       (gxc#compile-e _L23622_))
                                     _hd2358823617_)
                                    (_g2358023601_ _g2358223604_))))
                            (_g2358023601_ _g2358223604_))))
                    (_g2358023601_ _g2358223604_)))))
        (_g2357923635_ _stx23578_))))
  (define gxc#basic-expression-type-begin-annotation%
    (lambda (_stx23511_)
      (let* ((_g2351323530_
              (lambda (_g2351423527_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2351423527_)))
             (_g2351223575_
              (lambda (_g2351423533_)
                (if (gx#stx-pair? _g2351423533_)
                    (let ((_e2351723535_ (gx#stx-e _g2351423533_)))
                      (let ((_hd2351823538_ (##car _e2351723535_))
                            (_tl2351923540_ (##cdr _e2351723535_)))
                        (if (gx#stx-pair? _tl2351923540_)
                            (let ((_e2352023543_ (gx#stx-e _tl2351923540_)))
                              (let ((_hd2352123546_ (##car _e2352023543_))
                                    (_tl2352223548_ (##cdr _e2352023543_)))
                                (if (gx#stx-pair? _tl2352223548_)
                                    (let ((_e2352323551_
                                           (gx#stx-e _tl2352223548_)))
                                      (let ((_hd2352423554_
                                             (##car _e2352323551_))
                                            (_tl2352523556_
                                             (##cdr _e2352323551_)))
                                        (if (gx#stx-null? _tl2352523556_)
                                            ((lambda (_L23559_ _L23560_)
                                               (gxc#compile-e _L23559_))
                                             _hd2352423554_
                                             _hd2352123546_)
                                            (_g2351323530_ _g2351423533_))))
                                    (_g2351323530_ _g2351423533_))))
                            (_g2351323530_ _g2351423533_))))
                    (_g2351323530_ _g2351423533_)))))
        (_g2351223575_ _stx23511_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx22148_)
      (let* ((_g2215522454_
              (lambda (_g2215622451_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2215622451_)))
             (_g2215422461_ (lambda (_g2215622457_) ((lambda () '#f))))
             (_g2215322854_
              (lambda (_g2215622464_)
                (if (gx#stx-pair? _g2215622464_)
                    (let ((_e2234522466_ (gx#stx-e _g2215622464_)))
                      (let ((_hd2234622469_ (##car _e2234522466_))
                            (_tl2234722471_ (##cdr _e2234522466_)))
                        (if (gx#stx-pair? _tl2234722471_)
                            (let ((_e2234822474_ (gx#stx-e _tl2234722471_)))
                              (let ((_hd2234922477_ (##car _e2234822474_))
                                    (_tl2235022479_ (##cdr _e2234822474_)))
                                (if (gx#stx-pair? _hd2234922477_)
                                    (let ((_e2235122482_
                                           (gx#stx-e _hd2234922477_)))
                                      (let ((_hd2235222485_
                                             (##car _e2235122482_))
                                            (_tl2235322487_
                                             (##cdr _e2235122482_)))
                                        (if (gx#stx-pair? _tl2235022479_)
                                            (let ((_e2235422490_
                                                   (gx#stx-e _tl2235022479_)))
                                              (let ((_hd2235522493_
                                                     (##car _e2235422490_))
                                                    (_tl2235622495_
                                                     (##cdr _e2235422490_)))
                                                (if (gx#stx-pair?
                                                     _hd2235522493_)
                                                    (let ((_e2235722498_
                                                           (gx#stx-e
                                                            _hd2235522493_)))
                                                      (let ((_hd2235822501_
                                                             (##car _e2235722498_))
                                                            (_tl2235922503_
                                                             (##cdr _e2235722498_)))
                                                        (if (gx#identifier?
                                                             _hd2235822501_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd2235822501_)
                        (if (gx#stx-pair? _tl2235922503_)
                            (let ((_e2236022506_ (gx#stx-e _tl2235922503_)))
                              (let ((_hd2236122509_ (##car _e2236022506_))
                                    (_tl2236222511_ (##cdr _e2236022506_)))
                                (if (gx#stx-pair? _hd2236122509_)
                                    (let ((_e2236322514_
                                           (gx#stx-e _hd2236122509_)))
                                      (let ((_hd2236422517_
                                             (##car _e2236322514_))
                                            (_tl2236522519_
                                             (##cdr _e2236322514_)))
                                        (if (gx#identifier? _hd2236422517_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2236422517_)
                                                (if (gx#stx-pair?
                                                     _tl2236522519_)
                                                    (let ((_e2236622522_
                                                           (gx#stx-e
                                                            _tl2236522519_)))
                                                      (let ((_hd2236722525_
                                                             (##car _e2236622522_))
                                                            (_tl2236822527_
                                                             (##cdr _e2236622522_)))
                                                        (if (gx#stx-null?
                                                             _tl2236822527_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2236222511_)
                        (let ((_e2236922530_ (gx#stx-e _tl2236222511_)))
                          (let ((_hd2237022533_ (##car _e2236922530_))
                                (_tl2237122535_ (##cdr _e2236922530_)))
                            (if (gx#stx-pair? _hd2237022533_)
                                (let ((_e2237222538_
                                       (gx#stx-e _hd2237022533_)))
                                  (let ((_hd2237322541_ (##car _e2237222538_))
                                        (_tl2237422543_ (##cdr _e2237222538_)))
                                    (if (gx#identifier? _hd2237322541_)
                                        (if (gx#stx-eq? '%#ref _hd2237322541_)
                                            (if (gx#stx-pair? _tl2237422543_)
                                                (let ((_e2237522546_
                                                       (gx#stx-e
                                                        _tl2237422543_)))
                                                  (let ((_hd2237622549_
                                                         (##car _e2237522546_))
                                                        (_tl2237722551_
                                                         (##cdr _e2237522546_)))
                                                    (if (gx#stx-null?
                                                         _tl2237722551_)
                                                        (if (gx#stx-pair?
                                                             _tl2237122535_)
                                                            (let ((_e2237822554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2237122535_)))
                      (let ((_hd2237922557_ (##car _e2237822554_))
                            (_tl2238022559_ (##cdr _e2237822554_)))
                        (if (gx#stx-pair? _hd2237922557_)
                            (let ((_e2238122562_ (gx#stx-e _hd2237922557_)))
                              (let ((_hd2238222565_ (##car _e2238122562_))
                                    (_tl2238322567_ (##cdr _e2238122562_)))
                                (if (gx#identifier? _hd2238222565_)
                                    (if (gx#stx-eq? '%#ref _hd2238222565_)
                                        (if (gx#stx-pair? _tl2238322567_)
                                            (let ((_e2238422570_
                                                   (gx#stx-e _tl2238322567_)))
                                              (let ((_hd2238522573_
                                                     (##car _e2238422570_))
                                                    (_tl2238622575_
                                                     (##cdr _e2238422570_)))
                                                (if (gx#stx-null?
                                                     _tl2238622575_)
                                                    (if (gx#stx-pair/null?
                                                         _tl2238022559_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2238022559_)
                          '1)
                    (let ((_g24490_
                           (gx#syntax-split-splice _tl2238022559_ '1)))
                      (begin
                        (let ((_g24491_
                               (if (##values? _g24490_)
                                   (##vector-length _g24490_)
                                   1)))
                          (if (not (##fx= _g24491_ 2))
                              (error "Context expects 2 values" _g24491_)))
                        (let ((_target2238722578_ (##vector-ref _g24490_ 0))
                              (_tl2238922580_ (##vector-ref _g24490_ 1)))
                          (if (gx#stx-pair? _tl2238922580_)
                              (let ((_e2240222583_ (gx#stx-e _tl2238922580_)))
                                (let ((_hd2240322586_ (##car _e2240222583_))
                                      (_tl2240422588_ (##cdr _e2240222583_)))
                                  (if (gx#stx-pair? _hd2240322586_)
                                      (let ((_e2240522591_
                                             (gx#stx-e _hd2240322586_)))
                                        (let ((_hd2240622594_
                                               (##car _e2240522591_))
                                              (_tl2240722596_
                                               (##cdr _e2240522591_)))
                                          (if (gx#identifier? _hd2240622594_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _hd2240622594_)
                                                  (if (gx#stx-pair?
                                                       _tl2240722596_)
                                                      (let ((_e2240822599_
                                                             (gx#stx-e
                                                              _tl2240722596_)))
                                                        (let ((_hd2240922602_
                                                               (##car _e2240822599_))
                                                              (_tl2241022604_
                                                               (##cdr _e2240822599_)))
                                                          (if (gx#stx-null?
                                                               _tl2241022604_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2240422588_)
                          (letrec ((_loop2239022607_
                                    (lambda (_hd2238822610_
                                             _-absent-value2239422612_
                                             _key2239522614_
                                             _-xkwvar2239622616_
                                             _-hash-ref2239722618_)
                                      (if (gx#stx-pair? _hd2238822610_)
                                          (let ((_e2239122621_
                                                 (gx#stx-e _hd2238822610_)))
                                            (let ((_lp-hd2239222624_
                                                   (##car _e2239122621_))
                                                  (_lp-tl2239322626_
                                                   (##cdr _e2239122621_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd2239222624_)
                                                  (let ((_e2241122629_
                                                         (gx#stx-e
                                                          _lp-hd2239222624_)))
                                                    (let ((_hd2241222632_
                                                           (##car _e2241122629_))
                                                          (_tl2241322634_
                                                           (##cdr _e2241122629_)))
                                                      (if (gx#identifier?
                                                           _hd2241222632_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2241222632_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2241322634_)
                          (let ((_e2241422637_ (gx#stx-e _tl2241322634_)))
                            (let ((_hd2241522640_ (##car _e2241422637_))
                                  (_tl2241622642_ (##cdr _e2241422637_)))
                              (if (gx#stx-pair? _hd2241522640_)
                                  (let ((_e2241722645_
                                         (gx#stx-e _hd2241522640_)))
                                    (let ((_hd2241822648_
                                           (##car _e2241722645_))
                                          (_tl2241922650_
                                           (##cdr _e2241722645_)))
                                      (if (gx#identifier? _hd2241822648_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2241822648_)
                                              (if (gx#stx-pair? _tl2241922650_)
                                                  (let ((_e2242022653_
                                                         (gx#stx-e
                                                          _tl2241922650_)))
                                                    (let ((_hd2242122656_
                                                           (##car _e2242022653_))
                                                          (_tl2242222658_
                                                           (##cdr _e2242022653_)))
                                                      (if (gx#stx-null?
                                                           _tl2242222658_)
                                                          (if (gx#stx-pair?
                                                               _tl2241622642_)
                                                              (let ((_e2242322661_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2241622642_)))
                        (let ((_hd2242422664_ (##car _e2242322661_))
                              (_tl2242522666_ (##cdr _e2242322661_)))
                          (if (gx#stx-pair? _hd2242422664_)
                              (let ((_e2242622669_ (gx#stx-e _hd2242422664_)))
                                (let ((_hd2242722672_ (##car _e2242622669_))
                                      (_tl2242822674_ (##cdr _e2242622669_)))
                                  (if (gx#identifier? _hd2242722672_)
                                      (if (gx#stx-eq? '%#ref _hd2242722672_)
                                          (if (gx#stx-pair? _tl2242822674_)
                                              (let ((_e2242922677_
                                                     (gx#stx-e
                                                      _tl2242822674_)))
                                                (let ((_hd2243022680_
                                                       (##car _e2242922677_))
                                                      (_tl2243122682_
                                                       (##cdr _e2242922677_)))
                                                  (if (gx#stx-null?
                                                       _tl2243122682_)
                                                      (if (gx#stx-pair?
                                                           _tl2242522666_)
                                                          (let ((_e2243222685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2242522666_)))
                    (let ((_hd2243322688_ (##car _e2243222685_))
                          (_tl2243422690_ (##cdr _e2243222685_)))
                      (if (gx#stx-pair? _hd2243322688_)
                          (let ((_e2243522693_ (gx#stx-e _hd2243322688_)))
                            (let ((_hd2243622696_ (##car _e2243522693_))
                                  (_tl2243722698_ (##cdr _e2243522693_)))
                              (if (gx#identifier? _hd2243622696_)
                                  (if (gx#stx-eq? '%#quote _hd2243622696_)
                                      (if (gx#stx-pair? _tl2243722698_)
                                          (let ((_e2243822701_
                                                 (gx#stx-e _tl2243722698_)))
                                            (let ((_hd2243922704_
                                                   (##car _e2243822701_))
                                                  (_tl2244022706_
                                                   (##cdr _e2243822701_)))
                                              (if (gx#stx-null? _tl2244022706_)
                                                  (if (gx#stx-pair?
                                                       _tl2243422690_)
                                                      (let ((_e2244122709_
                                                             (gx#stx-e
                                                              _tl2243422690_)))
                                                        (let ((_hd2244222712_
                                                               (##car _e2244122709_))
                                                              (_tl2244322714_
                                                               (##cdr _e2244122709_)))
                                                          (if (gx#stx-pair?
                                                               _hd2244222712_)
                                                              (let ((_e2244422717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2244222712_)))
                        (let ((_hd2244522720_ (##car _e2244422717_))
                              (_tl2244622722_ (##cdr _e2244422717_)))
                          (if (gx#identifier? _hd2244522720_)
                              (if (gx#stx-eq? '%#ref _hd2244522720_)
                                  (if (gx#stx-pair? _tl2244622722_)
                                      (let ((_e2244722725_
                                             (gx#stx-e _tl2244622722_)))
                                        (let ((_hd2244822728_
                                               (##car _e2244722725_))
                                              (_tl2244922730_
                                               (##cdr _e2244722725_)))
                                          (if (gx#stx-null? _tl2244922730_)
                                              (if (gx#stx-null? _tl2244322714_)
                                                  (_loop2239022607_
                                                   _lp-tl2239322626_
                                                   (cons _hd2244822728_
                                                         _-absent-value2239422612_)
                                                   (cons _hd2243922704_
                                                         _key2239522614_)
                                                   (cons _hd2243022680_
                                                         _-xkwvar2239622616_)
                                                   (cons _hd2242122656_
                                                         _-hash-ref2239722618_))
                                                  (_g2215422461_
                                                   _g2215622464_))
                                              (_g2215422461_ _g2215622464_))))
                                      (_g2215422461_ _g2215622464_))
                                  (_g2215422461_ _g2215622464_))
                              (_g2215422461_ _g2215622464_))))
                      (_g2215422461_ _g2215622464_))))
              (_g2215422461_ _g2215622464_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2215422461_
                                                   _g2215622464_))))
                                          (_g2215422461_ _g2215622464_))
                                      (_g2215422461_ _g2215622464_))
                                  (_g2215422461_ _g2215622464_))))
                          (_g2215422461_ _g2215622464_))))
                  (_g2215422461_ _g2215622464_))
              (_g2215422461_ _g2215622464_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2215422461_ _g2215622464_))
                                          (_g2215422461_ _g2215622464_))
                                      (_g2215422461_ _g2215622464_))))
                              (_g2215422461_ _g2215622464_))))
                      (_g2215422461_ _g2215622464_))
                  (_g2215422461_ _g2215622464_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2215422461_
                                                   _g2215622464_))
                                              (_g2215422461_ _g2215622464_))
                                          (_g2215422461_ _g2215622464_))))
                                  (_g2215422461_ _g2215622464_))))
                          (_g2215422461_ _g2215622464_))
                      (_g2215422461_ _g2215622464_))
                  (_g2215422461_ _g2215622464_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2215422461_
                                                   _g2215622464_))))
                                          (let ((_-absent-value2239822733_
                                                 (reverse _-absent-value2239422612_))
                                                (_key2239922735_
                                                 (reverse _key2239522614_))
                                                (_-xkwvar2240022737_
                                                 (reverse _-xkwvar2239622616_))
                                                (_-hash-ref2240122739_
                                                 (reverse _-hash-ref2239722618_)))
                                            (if (gx#stx-null? _tl2235622495_)
                                                ((lambda (_L22742_
                                                          _L22743_
                                                          _L22744_
                                                          _L22745_
                                                          _L22746_
                                                          _L22747_
                                                          _L22748_
                                                          _L22749_
                                                          _L22750_
                                                          _L22751_)
                                                   (if (if (gx#identifier?
                                                            _L22751_)
                                                           (if (gx#identifier?
                                                                _L22750_)
                                                               (if (gxc#runtime-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L22749_
                            'apply)
                           (if (gx#free-identifier=? _L22751_ _L22747_)
                               (if (andmap1 gx#stx-keyword?
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g2280622809_
                                                               _g2280722811_)
                                                        (cons _g2280622809_
                                                              _g2280722811_))
                                                      '()
                                                      _L22744_)))
                                   (if (andmap1 (lambda (_g2281322815_)
                                                  (gxc#runtime-identifier=?
                                                   _g2281322815_
                                                   'hash-ref))
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g2281722820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2281822822_)
                    (cons _g2281722820_ _g2281822822_))
                  '()
                  _L22746_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (andmap1 (lambda (_g2282422826_)
                                                      (gxc#runtime-identifier=?
                                                       _g2282422826_
                                                       'absent-value))
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g2282822831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2282922833_)
                        (cons _g2282822831_ _g2282922833_))
                      '()
                      _L22743_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (andmap1 (lambda (_g2283522837_)
                                                      (gx#free-identifier=?
                                                       _g2283522837_
                                                       _L22751_))
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g2283922842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2284022844_)
                        (cons _g2283922842_ _g2284022844_))
                      '()
                      _L22745_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)
                   '#f)
               (##structure
                gxc#!kw-lambda-primary::t
                'kw-lambda-dispatch
                (map gx#stx-e
                     (begin
                       '#!void
                       (foldr1 (lambda (_g2284622849_ _g2284722851_)
                                 (cons _g2284622849_ _g2284722851_))
                               '()
                               _L22744_)))
                (gxc#identifier-symbol _L22748_))
               (_g2215422461_ _g2215622464_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd2240922602_
                                                 _-absent-value2239822733_
                                                 _key2239922735_
                                                 _-xkwvar2240022737_
                                                 _-hash-ref2240122739_
                                                 _hd2238522573_
                                                 _hd2237622549_
                                                 _hd2236722525_
                                                 _tl2235322487_
                                                 _hd2235222485_)
                                                (_g2215422461_
                                                 _g2215622464_)))))))
                            (_loop2239022607_
                             _target2238722578_
                             '()
                             '()
                             '()
                             '()))
                          (_g2215422461_ _g2215622464_))
                      (_g2215422461_ _g2215622464_))))
              (_g2215422461_ _g2215622464_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2215422461_
                                                   _g2215622464_))
                                              (_g2215422461_ _g2215622464_))))
                                      (_g2215422461_ _g2215622464_))))
                              (_g2215422461_ _g2215622464_)))))
                    (_g2215422461_ _g2215622464_))
                (_g2215422461_ _g2215622464_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2215422461_
                                                     _g2215622464_))))
                                            (_g2215422461_ _g2215622464_))
                                        (_g2215422461_ _g2215622464_))
                                    (_g2215422461_ _g2215622464_))))
                            (_g2215422461_ _g2215622464_))))
                    (_g2215422461_ _g2215622464_))
                (_g2215422461_ _g2215622464_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2215422461_ _g2215622464_))
                                            (_g2215422461_ _g2215622464_))
                                        (_g2215422461_ _g2215622464_))))
                                (_g2215422461_ _g2215622464_))))
                        (_g2215422461_ _g2215622464_))
                    (_g2215422461_ _g2215622464_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2215422461_
                                                     _g2215622464_))
                                                (_g2215422461_ _g2215622464_))
                                            (_g2215422461_ _g2215622464_))))
                                    (_g2215422461_ _g2215622464_))))
                            (_g2215422461_ _g2215622464_))
                        (_g2215422461_ _g2215622464_))
                    (_g2215422461_ _g2215622464_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2215422461_
                                                     _g2215622464_))))
                                            (_g2215422461_ _g2215622464_))))
                                    (_g2215422461_ _g2215622464_))))
                            (_g2215422461_ _g2215622464_))))
                    (_g2215422461_ _g2215622464_))))
             (_g2215223071_
              (lambda (_g2215622857_)
                (if (gx#stx-pair? _g2215622857_)
                    (let ((_e2227822859_ (gx#stx-e _g2215622857_)))
                      (let ((_hd2227922862_ (##car _e2227822859_))
                            (_tl2228022864_ (##cdr _e2227822859_)))
                        (if (gx#stx-pair? _tl2228022864_)
                            (let ((_e2228122867_ (gx#stx-e _tl2228022864_)))
                              (let ((_hd2228222870_ (##car _e2228122867_))
                                    (_tl2228322872_ (##cdr _e2228122867_)))
                                (if (gx#stx-pair? _tl2228322872_)
                                    (let ((_e2228422875_
                                           (gx#stx-e _tl2228322872_)))
                                      (let ((_hd2228522878_
                                             (##car _e2228422875_))
                                            (_tl2228622880_
                                             (##cdr _e2228422875_)))
                                        (if (gx#stx-pair? _hd2228522878_)
                                            (let ((_e2228722883_
                                                   (gx#stx-e _hd2228522878_)))
                                              (let ((_hd2228822886_
                                                     (##car _e2228722883_))
                                                    (_tl2228922888_
                                                     (##cdr _e2228722883_)))
                                                (if (gx#identifier?
                                                     _hd2228822886_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd2228822886_)
                                                        (if (gx#stx-pair?
                                                             _tl2228922888_)
                                                            (let ((_e2229022891_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2228922888_)))
                      (let ((_hd2229122894_ (##car _e2229022891_))
                            (_tl2229222896_ (##cdr _e2229022891_)))
                        (if (gx#stx-pair? _hd2229122894_)
                            (let ((_e2229322899_ (gx#stx-e _hd2229122894_)))
                              (let ((_hd2229422902_ (##car _e2229322899_))
                                    (_tl2229522904_ (##cdr _e2229322899_)))
                                (if (gx#identifier? _hd2229422902_)
                                    (if (gx#stx-eq? '%#ref _hd2229422902_)
                                        (if (gx#stx-pair? _tl2229522904_)
                                            (let ((_e2229622907_
                                                   (gx#stx-e _tl2229522904_)))
                                              (let ((_hd2229722910_
                                                     (##car _e2229622907_))
                                                    (_tl2229822912_
                                                     (##cdr _e2229622907_)))
                                                (if (gx#stx-null?
                                                     _tl2229822912_)
                                                    (if (gx#stx-pair?
                                                         _tl2229222896_)
                                                        (let ((_e2229922915_
                                                               (gx#stx-e
                                                                _tl2229222896_)))
                                                          (let ((_hd2230022918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2229922915_))
                        (_tl2230122920_ (##cdr _e2229922915_)))
                    (if (gx#stx-pair? _hd2230022918_)
                        (let ((_e2230222923_ (gx#stx-e _hd2230022918_)))
                          (let ((_hd2230322926_ (##car _e2230222923_))
                                (_tl2230422928_ (##cdr _e2230222923_)))
                            (if (gx#identifier? _hd2230322926_)
                                (if (gx#stx-eq? '%#ref _hd2230322926_)
                                    (if (gx#stx-pair? _tl2230422928_)
                                        (let ((_e2230522931_
                                               (gx#stx-e _tl2230422928_)))
                                          (let ((_hd2230622934_
                                                 (##car _e2230522931_))
                                                (_tl2230722936_
                                                 (##cdr _e2230522931_)))
                                            (if (gx#stx-null? _tl2230722936_)
                                                (if (gx#stx-pair?
                                                     _tl2230122920_)
                                                    (let ((_e2230822939_
                                                           (gx#stx-e
                                                            _tl2230122920_)))
                                                      (let ((_hd2230922942_
                                                             (##car _e2230822939_))
                                                            (_tl2231022944_
                                                             (##cdr _e2230822939_)))
                                                        (if (gx#stx-pair?
                                                             _hd2230922942_)
                                                            (let ((_e2231122947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2230922942_)))
                      (let ((_hd2231222950_ (##car _e2231122947_))
                            (_tl2231322952_ (##cdr _e2231122947_)))
                        (if (gx#identifier? _hd2231222950_)
                            (if (gx#stx-eq? '%#quote _hd2231222950_)
                                (if (gx#stx-pair? _tl2231322952_)
                                    (let ((_e2231422955_
                                           (gx#stx-e _tl2231322952_)))
                                      (let ((_hd2231522958_
                                             (##car _e2231422955_))
                                            (_tl2231622960_
                                             (##cdr _e2231422955_)))
                                        (if (gx#stx-null? _tl2231622960_)
                                            (if (gx#stx-pair? _tl2231022944_)
                                                (let ((_e2231722963_
                                                       (gx#stx-e
                                                        _tl2231022944_)))
                                                  (let ((_hd2231822966_
                                                         (##car _e2231722963_))
                                                        (_tl2231922968_
                                                         (##cdr _e2231722963_)))
                                                    (if (gx#stx-pair?
                                                         _hd2231822966_)
                                                        (let ((_e2232022971_
                                                               (gx#stx-e
                                                                _hd2231822966_)))
                                                          (let ((_hd2232122974_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2232022971_))
                        (_tl2232222976_ (##cdr _e2232022971_)))
                    (if (gx#identifier? _hd2232122974_)
                        (if (gx#stx-eq? '%#ref _hd2232122974_)
                            (if (gx#stx-pair? _tl2232222976_)
                                (let ((_e2232322979_
                                       (gx#stx-e _tl2232222976_)))
                                  (let ((_hd2232422982_ (##car _e2232322979_))
                                        (_tl2232522984_ (##cdr _e2232322979_)))
                                    (if (gx#stx-null? _tl2232522984_)
                                        (if (gx#stx-pair? _tl2231922968_)
                                            (let ((_e2232622987_
                                                   (gx#stx-e _tl2231922968_)))
                                              (let ((_hd2232722990_
                                                     (##car _e2232622987_))
                                                    (_tl2232822992_
                                                     (##cdr _e2232622987_)))
                                                (if (gx#stx-pair?
                                                     _hd2232722990_)
                                                    (let ((_e2232922995_
                                                           (gx#stx-e
                                                            _hd2232722990_)))
                                                      (let ((_hd2233022998_
                                                             (##car _e2232922995_))
                                                            (_tl2233123000_
                                                             (##cdr _e2232922995_)))
                                                        (if (gx#identifier?
                                                             _hd2233022998_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2233022998_)
                        (if (gx#stx-pair? _tl2233123000_)
                            (let ((_e2233223003_ (gx#stx-e _tl2233123000_)))
                              (let ((_hd2233323006_ (##car _e2233223003_))
                                    (_tl2233423008_ (##cdr _e2233223003_)))
                                (if (gx#stx-null? _tl2233423008_)
                                    (if (gx#stx-null? _tl2232822992_)
                                        (if (gx#stx-null? _tl2228622880_)
                                            ((lambda (_L23011_
                                                      _L23012_
                                                      _L23013_
                                                      _L23014_
                                                      _L23015_
                                                      _L23016_)
                                               (if (if (gx#identifier?
                                                        _L23016_)
                                                       (if (gxc#runtime-identifier=?
                                                            _L23015_
                                                            'apply)
                                                           (if (gxc#runtime-identifier=?
                                                                _L23014_
                                                                'keyword-dispatch)
                                                               (gx#free-identifier=?
                                                                _L23016_
                                                                _L23011_)
                                                               '#f)
                                                           '#f)
                                                       '#f)
                                                   (let* ((_tab23066_
                                                           (gx#stx-e _L23013_))
                                                          (_keys23068_
                                                           (if _tab23066_
                                                               (filter values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (vector->list _tab23066_))
                       '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (##structure
                                                      gxc#!kw-lambda::t
                                                      'kw-lambda
                                                      _keys23068_
                                                      (gxc#identifier-symbol
                                                       _L23012_)))
                                                   (_g2215322854_
                                                    _g2215622857_)))
                                             _hd2233323006_
                                             _hd2232422982_
                                             _hd2231522958_
                                             _hd2230622934_
                                             _hd2229722910_
                                             _hd2228222870_)
                                            (_g2215322854_ _g2215622857_))
                                        (_g2215322854_ _g2215622857_))
                                    (_g2215322854_ _g2215622857_))))
                            (_g2215322854_ _g2215622857_))
                        (_g2215322854_ _g2215622857_))
                    (_g2215322854_ _g2215622857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2215322854_
                                                     _g2215622857_))))
                                            (_g2215322854_ _g2215622857_))
                                        (_g2215322854_ _g2215622857_))))
                                (_g2215322854_ _g2215622857_))
                            (_g2215322854_ _g2215622857_))
                        (_g2215322854_ _g2215622857_))))
                (_g2215322854_ _g2215622857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2215322854_ _g2215622857_))
                                            (_g2215322854_ _g2215622857_))))
                                    (_g2215322854_ _g2215622857_))
                                (_g2215322854_ _g2215622857_))
                            (_g2215322854_ _g2215622857_))))
                    (_g2215322854_ _g2215622857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2215322854_
                                                     _g2215622857_))
                                                (_g2215322854_
                                                 _g2215622857_))))
                                        (_g2215322854_ _g2215622857_))
                                    (_g2215322854_ _g2215622857_))
                                (_g2215322854_ _g2215622857_))))
                        (_g2215322854_ _g2215622857_))))
                (_g2215322854_ _g2215622857_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2215322854_
                                                     _g2215622857_))))
                                            (_g2215322854_ _g2215622857_))
                                        (_g2215322854_ _g2215622857_))
                                    (_g2215322854_ _g2215622857_))))
                            (_g2215322854_ _g2215622857_))))
                    (_g2215322854_ _g2215622857_))
                (_g2215322854_ _g2215622857_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2215322854_
                                                     _g2215622857_))))
                                            (_g2215322854_ _g2215622857_))))
                                    (_g2215322854_ _g2215622857_))))
                            (_g2215322854_ _g2215622857_))))
                    (_g2215322854_ _g2215622857_))))
             (_g2215123093_
              (lambda (_g2215623074_)
                (if (gx#stx-pair? _g2215623074_)
                    (let ((_e2226923076_ (gx#stx-e _g2215623074_)))
                      (let ((_hd2227023079_ (##car _e2226923076_))
                            (_tl2227123081_ (##cdr _e2226923076_)))
                        ((lambda (_L23084_)
                           (if (gxc#dispatch-lambda-form? _L23084_)
                               (let ((__obj24482
                                      (make-object gxc#!lambda::t '5)))
                                 (begin
                                   (gxc#!lambda:::init!__0
                                    __obj24482
                                    'lambda
                                    (gxc#lambda-form-arity _L23084_)
                                    (gxc#dispatch-lambda-form-delegate
                                     _L23084_))
                                   __obj24482))
                               (_g2215223071_ _g2215623074_)))
                         _tl2227123081_)))
                    (_g2215223071_ _g2215623074_))))
             (_g2215023323_
              (lambda (_g2215623096_)
                (if (gx#stx-pair? _g2215623096_)
                    (let ((_e2221423098_ (gx#stx-e _g2215623096_)))
                      (let ((_hd2221523101_ (##car _e2221423098_))
                            (_tl2221623103_ (##cdr _e2221423098_)))
                        (if (gx#stx-pair? _tl2221623103_)
                            (let ((_e2221723106_ (gx#stx-e _tl2221623103_)))
                              (let ((_hd2221823109_ (##car _e2221723106_))
                                    (_tl2221923111_ (##cdr _e2221723106_)))
                                (if (gx#stx-pair/null? _hd2221823109_)
                                    (if (fx>= (gx#stx-length _hd2221823109_)
                                              '0)
                                        (let ((_g24492_
                                               (gx#syntax-split-splice
                                                _hd2221823109_
                                                '0)))
                                          (begin
                                            (let ((_g24493_
                                                   (if (##values? _g24492_)
                                                       (##vector-length
                                                        _g24492_)
                                                       1)))
                                              (if (not (##fx= _g24493_ 2))
                                                  (error "Context expects 2 values"
                                                         _g24493_)))
                                            (let ((_target2222023114_
                                                   (##vector-ref _g24492_ 0))
                                                  (_tl2222223116_
                                                   (##vector-ref _g24492_ 1)))
                                              (if (gx#stx-null? _tl2222223116_)
                                                  (letrec ((_loop2222323119_
                                                            (lambda (_hd2222123122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg2222723124_)
                      (if (gx#stx-pair? _hd2222123122_)
                          (let ((_e2222423127_ (gx#stx-e _hd2222123122_)))
                            (let ((_lp-hd2222523130_ (##car _e2222423127_))
                                  (_lp-tl2222623132_ (##cdr _e2222423127_)))
                              (_loop2222323119_
                               _lp-tl2222623132_
                               (cons _lp-hd2222523130_ _arg2222723124_))))
                          (let ((_arg2222823135_ (reverse _arg2222723124_)))
                            (if (gx#stx-pair? _tl2221923111_)
                                (let ((_e2222923138_
                                       (gx#stx-e _tl2221923111_)))
                                  (let ((_hd2223023141_ (##car _e2222923138_))
                                        (_tl2223123143_ (##cdr _e2222923138_)))
                                    (if (gx#stx-pair? _hd2223023141_)
                                        (let ((_e2223223146_
                                               (gx#stx-e _hd2223023141_)))
                                          (let ((_hd2223323149_
                                                 (##car _e2223223146_))
                                                (_tl2223423151_
                                                 (##cdr _e2223223146_)))
                                            (if (gx#identifier? _hd2223323149_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd2223323149_)
                                                    (if (gx#stx-pair?
                                                         _tl2223423151_)
                                                        (let ((_e2223523154_
                                                               (gx#stx-e
                                                                _tl2223423151_)))
                                                          (let ((_hd2223623157_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2223523154_))
                        (_tl2223723159_ (##cdr _e2223523154_)))
                    (if (gx#stx-pair? _hd2223623157_)
                        (let ((_e2223823162_ (gx#stx-e _hd2223623157_)))
                          (let ((_hd2223923165_ (##car _e2223823162_))
                                (_tl2224023167_ (##cdr _e2223823162_)))
                            (if (gx#identifier? _hd2223923165_)
                                (if (gx#stx-eq? '%#ref _hd2223923165_)
                                    (if (gx#stx-pair? _tl2224023167_)
                                        (let ((_e2224123170_
                                               (gx#stx-e _tl2224023167_)))
                                          (let ((_hd2224223173_
                                                 (##car _e2224123170_))
                                                (_tl2224323175_
                                                 (##cdr _e2224123170_)))
                                            (if (gx#stx-null? _tl2224323175_)
                                                (if (gx#stx-pair?
                                                     _tl2223723159_)
                                                    (let ((_e2224423178_
                                                           (gx#stx-e
                                                            _tl2223723159_)))
                                                      (let ((_hd2224523181_
                                                             (##car _e2224423178_))
                                                            (_tl2224623183_
                                                             (##cdr _e2224423178_)))
                                                        (if (gx#stx-pair?
                                                             _hd2224523181_)
                                                            (let ((_e2224723186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2224523181_)))
                      (let ((_hd2224823189_ (##car _e2224723186_))
                            (_tl2224923191_ (##cdr _e2224723186_)))
                        (if (gx#identifier? _hd2224823189_)
                            (if (gx#stx-eq? '%#ref _hd2224823189_)
                                (if (gx#stx-pair? _tl2224923191_)
                                    (let ((_e2225023194_
                                           (gx#stx-e _tl2224923191_)))
                                      (let ((_hd2225123197_
                                             (##car _e2225023194_))
                                            (_tl2225223199_
                                             (##cdr _e2225023194_)))
                                        (if (gx#stx-null? _tl2225223199_)
                                            (if (gx#stx-pair/null?
                                                 _tl2224623183_)
                                                (if (fx>= (gx#stx-length
                                                           _tl2224623183_)
                                                          '0)
                                                    (let ((_g24494_
                                                           (gx#syntax-split-splice
                                                            _tl2224623183_
                                                            '0)))
                                                      (begin
                                                        (let ((_g24495_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g24494_)
                           (##vector-length _g24494_)
                           1)))
                  (if (not (##fx= _g24495_ 2))
                      (error "Context expects 2 values" _g24495_)))
                (let ((_target2225323202_ (##vector-ref _g24494_ 0))
                      (_tl2225523204_ (##vector-ref _g24494_ 1)))
                  (if (gx#stx-null? _tl2225523204_)
                      (letrec ((_loop2225623207_
                                (lambda (_hd2225423210_ _xarg2226023212_)
                                  (if (gx#stx-pair? _hd2225423210_)
                                      (let ((_e2225723215_
                                             (gx#stx-e _hd2225423210_)))
                                        (let ((_lp-hd2225823218_
                                               (##car _e2225723215_))
                                              (_lp-tl2225923220_
                                               (##cdr _e2225723215_)))
                                          (if (gx#stx-pair? _lp-hd2225823218_)
                                              (let ((_e2226223223_
                                                     (gx#stx-e
                                                      _lp-hd2225823218_)))
                                                (let ((_hd2226323226_
                                                       (##car _e2226223223_))
                                                      (_tl2226423228_
                                                       (##cdr _e2226223223_)))
                                                  (if (gx#identifier?
                                                       _hd2226323226_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd2226323226_)
                                                          (if (gx#stx-pair?
                                                               _tl2226423228_)
                                                              (let ((_e2226523231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2226423228_)))
                        (let ((_hd2226623234_ (##car _e2226523231_))
                              (_tl2226723236_ (##cdr _e2226523231_)))
                          (if (gx#stx-null? _tl2226723236_)
                              (_loop2225623207_
                               _lp-tl2225923220_
                               (cons _hd2226623234_ _xarg2226023212_))
                              (_g2215123093_ _g2215623096_))))
                      (_g2215123093_ _g2215623096_))
                  (_g2215123093_ _g2215623096_))
              (_g2215123093_ _g2215623096_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2215123093_ _g2215623096_))))
                                      (let ((_xarg2226123239_
                                             (reverse _xarg2226023212_)))
                                        (if (gx#stx-null? _tl2223123143_)
                                            ((lambda (_L23242_
                                                      _L23243_
                                                      _L23244_
                                                      _L23245_)
                                               (if (if (gx#identifier-list?
                                                        (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g2328223285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2328323287_)
                            (cons _g2328223285_ _g2328323287_))
                          '()
                          _L23245_)))
               (if (gxc#runtime-identifier=? _L23244_ 'make-struct-instance)
                   (if (fx= (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g2328923292_
                                                       _g2329023294_)
                                                (cons _g2328923292_
                                                      _g2329023294_))
                                              '()
                                              _L23245_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g2329623299_
                                                       _g2329723301_)
                                                (cons _g2329623299_
                                                      _g2329723301_))
                                              '()
                                              _L23242_))))
                       (andmap2 gx#free-identifier=?
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g2330323306_ _g2330423308_)
                                            (cons _g2330323306_ _g2330423308_))
                                          '()
                                          _L23245_))
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g2331023313_ _g2331123315_)
                                            (cons _g2331023313_ _g2331123315_))
                                          '()
                                          _L23242_)))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_type-t23318_
                                                           (gxc#identifier-symbol
                                                            _L23243_))
                                                          (_type23320_
                                                           (gxc#optimizer-resolve-type
                                                            _type-t23318_)))
                                                     (if (##structure-instance-of?
                                                          _type23320_
                                                          'gxc#!struct-type::t)
                                                         (##structure
                                                          gxc#!struct-cons::t
                                                          _type-t23318_)
                                                         '#f))
                                                   (_g2215123093_
                                                    _g2215623096_)))
                                             _xarg2226123239_
                                             _hd2225123197_
                                             _hd2224223173_
                                             _arg2222823135_)
                                            (_g2215123093_ _g2215623096_)))))))
                        (_loop2225623207_ _target2225323202_ '()))
                      (_g2215123093_ _g2215623096_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2215123093_
                                                     _g2215623096_))
                                                (_g2215123093_ _g2215623096_))
                                            (_g2215123093_ _g2215623096_))))
                                    (_g2215123093_ _g2215623096_))
                                (_g2215123093_ _g2215623096_))
                            (_g2215123093_ _g2215623096_))))
                    (_g2215123093_ _g2215623096_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2215123093_
                                                     _g2215623096_))
                                                (_g2215123093_
                                                 _g2215623096_))))
                                        (_g2215123093_ _g2215623096_))
                                    (_g2215123093_ _g2215623096_))
                                (_g2215123093_ _g2215623096_))))
                        (_g2215123093_ _g2215623096_))))
                (_g2215123093_ _g2215623096_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2215123093_
                                                     _g2215623096_))
                                                (_g2215123093_
                                                 _g2215623096_))))
                                        (_g2215123093_ _g2215623096_))))
                                (_g2215123093_ _g2215623096_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2222323119_
                                                     _target2222023114_
                                                     '()))
                                                  (_g2215123093_
                                                   _g2215623096_)))))
                                        (_g2215123093_ _g2215623096_))
                                    (_g2215123093_ _g2215623096_))))
                            (_g2215123093_ _g2215623096_))))
                    (_g2215123093_ _g2215623096_))))
             (_g2214923508_
              (lambda (_g2215623326_)
                (if (gx#stx-pair? _g2215623326_)
                    (let ((_e2216223328_ (gx#stx-e _g2215623326_)))
                      (let ((_hd2216323331_ (##car _e2216223328_))
                            (_tl2216423333_ (##cdr _e2216223328_)))
                        (if (gx#stx-pair? _tl2216423333_)
                            (let ((_e2216523336_ (gx#stx-e _tl2216423333_)))
                              (let ((_hd2216623339_ (##car _e2216523336_))
                                    (_tl2216723341_ (##cdr _e2216523336_)))
                                (if (gx#stx-pair? _tl2216723341_)
                                    (let ((_e2216823344_
                                           (gx#stx-e _tl2216723341_)))
                                      (let ((_hd2216923347_
                                             (##car _e2216823344_))
                                            (_tl2217023349_
                                             (##cdr _e2216823344_)))
                                        (if (gx#stx-pair? _hd2216923347_)
                                            (let ((_e2217123352_
                                                   (gx#stx-e _hd2216923347_)))
                                              (let ((_hd2217223355_
                                                     (##car _e2217123352_))
                                                    (_tl2217323357_
                                                     (##cdr _e2217123352_)))
                                                (if (gx#identifier?
                                                     _hd2217223355_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd2217223355_)
                                                        (if (gx#stx-pair?
                                                             _tl2217323357_)
                                                            (let ((_e2217423360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2217323357_)))
                      (let ((_hd2217523363_ (##car _e2217423360_))
                            (_tl2217623365_ (##cdr _e2217423360_)))
                        (if (gx#stx-pair? _hd2217523363_)
                            (let ((_e2217723368_ (gx#stx-e _hd2217523363_)))
                              (let ((_hd2217823371_ (##car _e2217723368_))
                                    (_tl2217923373_ (##cdr _e2217723368_)))
                                (if (gx#identifier? _hd2217823371_)
                                    (if (gx#stx-eq? '%#ref _hd2217823371_)
                                        (if (gx#stx-pair? _tl2217923373_)
                                            (let ((_e2218023376_
                                                   (gx#stx-e _tl2217923373_)))
                                              (let ((_hd2218123379_
                                                     (##car _e2218023376_))
                                                    (_tl2218223381_
                                                     (##cdr _e2218023376_)))
                                                (if (gx#stx-null?
                                                     _tl2218223381_)
                                                    (if (gx#stx-pair?
                                                         _tl2217623365_)
                                                        (let ((_e2218323384_
                                                               (gx#stx-e
                                                                _tl2217623365_)))
                                                          (let ((_hd2218423387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2218323384_))
                        (_tl2218523389_ (##cdr _e2218323384_)))
                    (if (gx#stx-pair? _hd2218423387_)
                        (let ((_e2218623392_ (gx#stx-e _hd2218423387_)))
                          (let ((_hd2218723395_ (##car _e2218623392_))
                                (_tl2218823397_ (##cdr _e2218623392_)))
                            (if (gx#identifier? _hd2218723395_)
                                (if (gx#stx-eq? '%#ref _hd2218723395_)
                                    (if (gx#stx-pair? _tl2218823397_)
                                        (let ((_e2218923400_
                                               (gx#stx-e _tl2218823397_)))
                                          (let ((_hd2219023403_
                                                 (##car _e2218923400_))
                                                (_tl2219123405_
                                                 (##cdr _e2218923400_)))
                                            (if (gx#stx-null? _tl2219123405_)
                                                (if (gx#stx-pair?
                                                     _tl2218523389_)
                                                    (let ((_e2219223408_
                                                           (gx#stx-e
                                                            _tl2218523389_)))
                                                      (let ((_hd2219323411_
                                                             (##car _e2219223408_))
                                                            (_tl2219423413_
                                                             (##cdr _e2219223408_)))
                                                        (if (gx#stx-pair?
                                                             _hd2219323411_)
                                                            (let ((_e2219523416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2219323411_)))
                      (let ((_hd2219623419_ (##car _e2219523416_))
                            (_tl2219723421_ (##cdr _e2219523416_)))
                        (if (gx#identifier? _hd2219623419_)
                            (if (gx#stx-eq? '%#ref _hd2219623419_)
                                (if (gx#stx-pair? _tl2219723421_)
                                    (let ((_e2219823424_
                                           (gx#stx-e _tl2219723421_)))
                                      (let ((_hd2219923427_
                                             (##car _e2219823424_))
                                            (_tl2220023429_
                                             (##cdr _e2219823424_)))
                                        (if (gx#stx-null? _tl2220023429_)
                                            (if (gx#stx-pair? _tl2219423413_)
                                                (let ((_e2220123432_
                                                       (gx#stx-e
                                                        _tl2219423413_)))
                                                  (let ((_hd2220223435_
                                                         (##car _e2220123432_))
                                                        (_tl2220323437_
                                                         (##cdr _e2220123432_)))
                                                    (if (gx#stx-pair?
                                                         _hd2220223435_)
                                                        (let ((_e2220423440_
                                                               (gx#stx-e
                                                                _hd2220223435_)))
                                                          (let ((_hd2220523443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2220423440_))
                        (_tl2220623445_ (##cdr _e2220423440_)))
                    (if (gx#identifier? _hd2220523443_)
                        (if (gx#stx-eq? '%#ref _hd2220523443_)
                            (if (gx#stx-pair? _tl2220623445_)
                                (let ((_e2220723448_
                                       (gx#stx-e _tl2220623445_)))
                                  (let ((_hd2220823451_ (##car _e2220723448_))
                                        (_tl2220923453_ (##cdr _e2220723448_)))
                                    (if (gx#stx-null? _tl2220923453_)
                                        (if (gx#stx-null? _tl2220323437_)
                                            (if (gx#stx-null? _tl2217023349_)
                                                ((lambda (_L23456_
                                                          _L23457_
                                                          _L23458_
                                                          _L23459_
                                                          _L23460_)
                                                   (if (if (gx#identifier?
                                                            _L23460_)
                                                           (if (gxc#runtime-identifier=?
                                                                _L23459_
                                                                'apply)
                                                               (if (gxc#runtime-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L23458_
                            'make-struct-instance)
                           (gx#free-identifier=? _L23460_ _L23456_)
                           '#f)
                       '#f)
                   '#f)
               (let* ((_type-t23503_ (gxc#identifier-symbol _L23457_))
                      (_type23505_ (gxc#optimizer-resolve-type _type-t23503_)))
                 (if (##structure-instance-of?
                      _type23505_
                      'gxc#!struct-type::t)
                     (##structure gxc#!struct-cons::t _type-t23503_)
                     '#f))
               (_g2215023323_ _g2215623326_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd2220823451_
                                                 _hd2219923427_
                                                 _hd2219023403_
                                                 _hd2218123379_
                                                 _hd2216623339_)
                                                (_g2215023323_ _g2215623326_))
                                            (_g2215023323_ _g2215623326_))
                                        (_g2215023323_ _g2215623326_))))
                                (_g2215023323_ _g2215623326_))
                            (_g2215023323_ _g2215623326_))
                        (_g2215023323_ _g2215623326_))))
                (_g2215023323_ _g2215623326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2215023323_ _g2215623326_))
                                            (_g2215023323_ _g2215623326_))))
                                    (_g2215023323_ _g2215623326_))
                                (_g2215023323_ _g2215623326_))
                            (_g2215023323_ _g2215623326_))))
                    (_g2215023323_ _g2215623326_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2215023323_
                                                     _g2215623326_))
                                                (_g2215023323_
                                                 _g2215623326_))))
                                        (_g2215023323_ _g2215623326_))
                                    (_g2215023323_ _g2215623326_))
                                (_g2215023323_ _g2215623326_))))
                        (_g2215023323_ _g2215623326_))))
                (_g2215023323_ _g2215623326_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2215023323_
                                                     _g2215623326_))))
                                            (_g2215023323_ _g2215623326_))
                                        (_g2215023323_ _g2215623326_))
                                    (_g2215023323_ _g2215623326_))))
                            (_g2215023323_ _g2215623326_))))
                    (_g2215023323_ _g2215623326_))
                (_g2215023323_ _g2215623326_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2215023323_
                                                     _g2215623326_))))
                                            (_g2215023323_ _g2215623326_))))
                                    (_g2215023323_ _g2215623326_))))
                            (_g2215023323_ _g2215623326_))))
                    (_g2215023323_ _g2215623326_)))))
        (_g2214923508_ _stx22148_))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx22094_)
      (letrec ((_clause-e22096_
                (lambda (_form22146_)
                  (let ((__obj24483 (make-object gxc#!lambda::t '5)))
                    (begin
                      (gxc#!lambda:::init!__0
                       __obj24483
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form22146_)
                       (gxc#dispatch-lambda-form-delegate _form22146_))
                      __obj24483)))))
        (let* ((_g2209922109_
                (lambda (_g2210022106_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2210022106_)))
               (_g2209822116_ (lambda (_g2210022112_) ((lambda () '#f))))
               (_g2209722143_
                (lambda (_g2210022119_)
                  (if (gx#stx-pair? _g2210022119_)
                      (let ((_e2210222121_ (gx#stx-e _g2210022119_)))
                        (let ((_hd2210322124_ (##car _e2210222121_))
                              (_tl2210422126_ (##cdr _e2210222121_)))
                          ((lambda (_L22129_)
                             (if (andmap1 gxc#dispatch-lambda-form? _L22129_)
                                 (let ((_clauses22141_
                                        (map _clause-e22096_ _L22129_)))
                                   (##structure
                                    gxc#!case-lambda::t
                                    'case-lambda
                                    _clauses22141_))
                                 (_g2209822116_ _g2210022119_)))
                           _tl2210422126_)))
                      (_g2209822116_ _g2210022119_)))))
          (_g2209722143_ _stx22094_)))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx21999_)
      (let* ((_g2200222022_
              (lambda (_g2200322019_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2200322019_)))
             (_g2200122029_ (lambda (_g2200322025_) ((lambda () '#f))))
             (_g2200022091_
              (lambda (_g2200322032_)
                (if (gx#stx-pair? _g2200322032_)
                    (let ((_e2200622034_ (gx#stx-e _g2200322032_)))
                      (let ((_hd2200722037_ (##car _e2200622034_))
                            (_tl2200822039_ (##cdr _e2200622034_)))
                        (if (gx#stx-pair? _tl2200822039_)
                            (let ((_e2200922042_ (gx#stx-e _tl2200822039_)))
                              (let ((_hd2201022045_ (##car _e2200922042_))
                                    (_tl2201122047_ (##cdr _e2200922042_)))
                                (if (gx#stx-pair? _hd2201022045_)
                                    (let ((_e2201222050_
                                           (gx#stx-e _hd2201022045_)))
                                      (let ((_hd2201322053_
                                             (##car _e2201222050_))
                                            (_tl2201422055_
                                             (##cdr _e2201222050_)))
                                        (if (gx#identifier? _hd2201322053_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2201322053_)
                                                (if (gx#stx-pair?
                                                     _tl2201422055_)
                                                    (let ((_e2201522058_
                                                           (gx#stx-e
                                                            _tl2201422055_)))
                                                      (let ((_hd2201622061_
                                                             (##car _e2201522058_))
                                                            (_tl2201722063_
                                                             (##cdr _e2201522058_)))
                                                        (if (gx#stx-null?
                                                             _tl2201722063_)
                                                            ((lambda (_L22066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L22067_)
                       (let ((_type-e2208422086_
                              (table-ref
                               gxc#basic-expression-type-builtin
                               (gxc#identifier-symbol _L22067_)
                               '#f)))
                         (if _type-e2208422086_
                             (let ((_type-e22089_ _type-e2208422086_))
                               (_type-e22089_ _stx21999_ _L22066_))
                             '#f)))
                     _tl2201122047_
                     _hd2201622061_)
                    (_g2200122029_ _g2200322032_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2200122029_
                                                     _g2200322032_))
                                                (_g2200122029_ _g2200322032_))
                                            (_g2200122029_ _g2200322032_))))
                                    (_g2200122029_ _g2200322032_))))
                            (_g2200122029_ _g2200322032_))))
                    (_g2200122029_ _g2200322032_)))))
        (_g2200022091_ _stx21999_))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx21484_ _args21485_)
      (let* ((_g2148921602_
              (lambda (_g2149021599_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2149021599_)))
             (_g2148821609_
              (lambda (_g2149021605_)
                ((lambda ()
                   (begin
                     (gxc#verbose
                      '"make-struct-type: can't infer type "
                      (gx#syntax->datum _stx21484_))
                     '#f)))))
             (_g2148721816_
              (lambda (_g2149021612_)
                (if (gx#stx-pair? _g2149021612_)
                    (let ((_e2155021614_ (gx#stx-e _g2149021612_)))
                      (let ((_hd2155121617_ (##car _e2155021614_))
                            (_tl2155221619_ (##cdr _e2155021614_)))
                        (if (gx#stx-pair? _hd2155121617_)
                            (let ((_e2155321622_ (gx#stx-e _hd2155121617_)))
                              (let ((_hd2155421625_ (##car _e2155321622_))
                                    (_tl2155521627_ (##cdr _e2155321622_)))
                                (if (gx#identifier? _hd2155421625_)
                                    (if (gx#stx-eq? '%#quote _hd2155421625_)
                                        (if (gx#stx-pair? _tl2155521627_)
                                            (let ((_e2155621630_
                                                   (gx#stx-e _tl2155521627_)))
                                              (let ((_hd2155721633_
                                                     (##car _e2155621630_))
                                                    (_tl2155821635_
                                                     (##cdr _e2155621630_)))
                                                (if (gx#stx-null?
                                                     _tl2155821635_)
                                                    (if (gx#stx-pair?
                                                         _tl2155221619_)
                                                        (let ((_e2155921638_
                                                               (gx#stx-e
                                                                _tl2155221619_)))
                                                          (let ((_hd2156021641_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2155921638_))
                        (_tl2156121643_ (##cdr _e2155921638_)))
                    (if (gx#stx-pair? _hd2156021641_)
                        (let ((_e2156221646_ (gx#stx-e _hd2156021641_)))
                          (let ((_hd2156321649_ (##car _e2156221646_))
                                (_tl2156421651_ (##cdr _e2156221646_)))
                            (if (gx#identifier? _hd2156321649_)
                                (if (gx#stx-eq? '%#ref _hd2156321649_)
                                    (if (gx#stx-pair? _tl2156421651_)
                                        (let ((_e2156521654_
                                               (gx#stx-e _tl2156421651_)))
                                          (let ((_hd2156621657_
                                                 (##car _e2156521654_))
                                                (_tl2156721659_
                                                 (##cdr _e2156521654_)))
                                            (if (gx#stx-null? _tl2156721659_)
                                                (if (gx#stx-pair?
                                                     _tl2156121643_)
                                                    (let ((_e2156821662_
                                                           (gx#stx-e
                                                            _tl2156121643_)))
                                                      (let ((_hd2156921665_
                                                             (##car _e2156821662_))
                                                            (_tl2157021667_
                                                             (##cdr _e2156821662_)))
                                                        (if (gx#stx-pair?
                                                             _hd2156921665_)
                                                            (let ((_e2157121670_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2156921665_)))
                      (let ((_hd2157221673_ (##car _e2157121670_))
                            (_tl2157321675_ (##cdr _e2157121670_)))
                        (if (gx#identifier? _hd2157221673_)
                            (if (gx#stx-eq? '%#quote _hd2157221673_)
                                (if (gx#stx-pair? _tl2157321675_)
                                    (let ((_e2157421678_
                                           (gx#stx-e _tl2157321675_)))
                                      (let ((_hd2157521681_
                                             (##car _e2157421678_))
                                            (_tl2157621683_
                                             (##cdr _e2157421678_)))
                                        (if (gx#stx-null? _tl2157621683_)
                                            (if (gx#stx-pair? _tl2157021667_)
                                                (let ((_e2157721686_
                                                       (gx#stx-e
                                                        _tl2157021667_)))
                                                  (let ((_hd2157821689_
                                                         (##car _e2157721686_))
                                                        (_tl2157921691_
                                                         (##cdr _e2157721686_)))
                                                    (if (gx#stx-pair?
                                                         _tl2157921691_)
                                                        (let ((_e2158021694_
                                                               (gx#stx-e
                                                                _tl2157921691_)))
                                                          (let ((_hd2158121697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2158021694_))
                        (_tl2158221699_ (##cdr _e2158021694_)))
                    (if (gx#stx-pair? _hd2158121697_)
                        (let ((_e2158321702_ (gx#stx-e _hd2158121697_)))
                          (let ((_hd2158421705_ (##car _e2158321702_))
                                (_tl2158521707_ (##cdr _e2158321702_)))
                            (if (gx#identifier? _hd2158421705_)
                                (if (gx#stx-eq? '%#quote _hd2158421705_)
                                    (if (gx#stx-pair? _tl2158521707_)
                                        (let ((_e2158621710_
                                               (gx#stx-e _tl2158521707_)))
                                          (let ((_hd2158721713_
                                                 (##car _e2158621710_))
                                                (_tl2158821715_
                                                 (##cdr _e2158621710_)))
                                            (if (gx#stx-null? _tl2158821715_)
                                                (if (gx#stx-pair?
                                                     _tl2158221699_)
                                                    (let ((_e2158921718_
                                                           (gx#stx-e
                                                            _tl2158221699_)))
                                                      (let ((_hd2159021721_
                                                             (##car _e2158921718_))
                                                            (_tl2159121723_
                                                             (##cdr _e2158921718_)))
                                                        (if (gx#stx-pair?
                                                             _hd2159021721_)
                                                            (let ((_e2159221726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2159021721_)))
                      (let ((_hd2159321729_ (##car _e2159221726_))
                            (_tl2159421731_ (##cdr _e2159221726_)))
                        (if (gx#identifier? _hd2159321729_)
                            (if (gx#stx-eq? '%#quote _hd2159321729_)
                                (if (gx#stx-pair? _tl2159421731_)
                                    (let ((_e2159521734_
                                           (gx#stx-e _tl2159421731_)))
                                      (let ((_hd2159621737_
                                             (##car _e2159521734_))
                                            (_tl2159721739_
                                             (##cdr _e2159521734_)))
                                        (if (gx#stx-null? _tl2159721739_)
                                            ((lambda (_L21742_
                                                      _L21743_
                                                      _L21744_
                                                      _L21745_
                                                      _L21746_
                                                      _L21747_)
                                               (let* ((_super-t21793_
                                                       (if (gx#stx-e _L21746_)
                                                           (gxc#identifier-symbol
                                                            _L21746_)
                                                           '#f))
                                                      (_super-type21795_
                                                       (if _super-t21793_
                                                           (gxc#optimizer-resolve-type
                                                            _super-t21793_)
                                                           '#f)))
                                                 (begin
                                                   (if (if _super-type21795_
                                                           (not (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _super-type21795_
                         'gxc#!struct-type::t))
                   '#f)
               (gxc#raise-compile-error
                '"Illegal struct-type construction; invalid super type"
                _stx21484_
                _L21746_)
               '#!void)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_fields21811_
                                                          (gx#stx-e _L21745_))
                                                         (_xfields21812_
                                                          (if _super-type21795_
                                                              (let ((_super-fields2179721800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _super-type21795_
                              '3
                              gxc#!struct-type::t
                              '#f))
                            (_super-xfields2179821802_
                             (##structure-ref
                              _super-type21795_
                              '4
                              gxc#!struct-type::t
                              '#f)))
                        (if _super-fields2179721800_
                            (if _super-xfields2179821802_
                                (let ((_super-fields21805_
                                       _super-fields2179721800_)
                                      (_super-xfields21806_
                                       _super-xfields2179821802_))
                                  (fx+ _super-fields21805_
                                       _super-xfields21806_))
                                '#f)
                            '#f))
                      '#f))
                 (_plist21813_ (gx#stx-e _L21743_))
                 (_ctor21814_
                  (let ((_$e21808_ (gx#stx-e _L21742_)))
                    (if _$e21808_
                        (values _$e21808_)
                        (if _super-type21795_
                            (##structure-ref
                             _super-type21795_
                             '5
                             gxc#!struct-type::t
                             '#f)
                            (if _super-t21793_ '#!void '#f))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__obj24484
                                                            (make-object
                                                             gxc#!struct-type::t
                                                             '7)))
                                                       (begin
                                                         (gxc#!struct-type:::init!
                                                          __obj24484
                                                          (gx#stx-e _L21747_)
                                                          _super-t21793_
                                                          _fields21811_
                                                          _xfields21812_
                                                          _ctor21814_
                                                          _plist21813_)
                                                         __obj24484))))))
                                             _hd2159621737_
                                             _hd2158721713_
                                             _hd2157821689_
                                             _hd2157521681_
                                             _hd2156621657_
                                             _hd2155721633_)
                                            (_g2148821609_ _g2149021612_))))
                                    (_g2148821609_ _g2149021612_))
                                (_g2148821609_ _g2149021612_))
                            (_g2148821609_ _g2149021612_))))
                    (_g2148821609_ _g2149021612_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2148821609_
                                                     _g2149021612_))
                                                (_g2148821609_
                                                 _g2149021612_))))
                                        (_g2148821609_ _g2149021612_))
                                    (_g2148821609_ _g2149021612_))
                                (_g2148821609_ _g2149021612_))))
                        (_g2148821609_ _g2149021612_))))
                (_g2148821609_ _g2149021612_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2148821609_ _g2149021612_))
                                            (_g2148821609_ _g2149021612_))))
                                    (_g2148821609_ _g2149021612_))
                                (_g2148821609_ _g2149021612_))
                            (_g2148821609_ _g2149021612_))))
                    (_g2148821609_ _g2149021612_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2148821609_
                                                     _g2149021612_))
                                                (_g2148821609_
                                                 _g2149021612_))))
                                        (_g2148821609_ _g2149021612_))
                                    (_g2148821609_ _g2149021612_))
                                (_g2148821609_ _g2149021612_))))
                        (_g2148821609_ _g2149021612_))))
                (_g2148821609_ _g2149021612_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2148821609_
                                                     _g2149021612_))))
                                            (_g2148821609_ _g2149021612_))
                                        (_g2148821609_ _g2149021612_))
                                    (_g2148821609_ _g2149021612_))))
                            (_g2148821609_ _g2149021612_))))
                    (_g2148821609_ _g2149021612_))))
             (_g2148621996_
              (lambda (_g2149021819_)
                (if (gx#stx-pair? _g2149021819_)
                    (let ((_e2149621821_ (gx#stx-e _g2149021819_)))
                      (let ((_hd2149721824_ (##car _e2149621821_))
                            (_tl2149821826_ (##cdr _e2149621821_)))
                        (if (gx#stx-pair? _hd2149721824_)
                            (let ((_e2149921829_ (gx#stx-e _hd2149721824_)))
                              (let ((_hd2150021832_ (##car _e2149921829_))
                                    (_tl2150121834_ (##cdr _e2149921829_)))
                                (if (gx#identifier? _hd2150021832_)
                                    (if (gx#stx-eq? '%#quote _hd2150021832_)
                                        (if (gx#stx-pair? _tl2150121834_)
                                            (let ((_e2150221837_
                                                   (gx#stx-e _tl2150121834_)))
                                              (let ((_hd2150321840_
                                                     (##car _e2150221837_))
                                                    (_tl2150421842_
                                                     (##cdr _e2150221837_)))
                                                (if (gx#stx-null?
                                                     _tl2150421842_)
                                                    (if (gx#stx-pair?
                                                         _tl2149821826_)
                                                        (let ((_e2150521845_
                                                               (gx#stx-e
                                                                _tl2149821826_)))
                                                          (let ((_hd2150621848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2150521845_))
                        (_tl2150721850_ (##cdr _e2150521845_)))
                    (if (gx#stx-pair? _hd2150621848_)
                        (let ((_e2150821853_ (gx#stx-e _hd2150621848_)))
                          (let ((_hd2150921856_ (##car _e2150821853_))
                                (_tl2151021858_ (##cdr _e2150821853_)))
                            (if (gx#identifier? _hd2150921856_)
                                (if (gx#stx-eq? '%#quote _hd2150921856_)
                                    (if (gx#stx-pair? _tl2151021858_)
                                        (let ((_e2151121861_
                                               (gx#stx-e _tl2151021858_)))
                                          (let ((_hd2151221864_
                                                 (##car _e2151121861_))
                                                (_tl2151321866_
                                                 (##cdr _e2151121861_)))
                                            (if (gx#stx-datum? _hd2151221864_)
                                                (if (equal? (gx#stx-e
                                                             _hd2151221864_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl2151321866_)
                                                        (if (gx#stx-pair?
                                                             _tl2150721850_)
                                                            (let ((_e2151421869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2150721850_)))
                      (let ((_hd2151521872_ (##car _e2151421869_))
                            (_tl2151621874_ (##cdr _e2151421869_)))
                        (if (gx#stx-pair? _hd2151521872_)
                            (let ((_e2151721877_ (gx#stx-e _hd2151521872_)))
                              (let ((_hd2151821880_ (##car _e2151721877_))
                                    (_tl2151921882_ (##cdr _e2151721877_)))
                                (if (gx#identifier? _hd2151821880_)
                                    (if (gx#stx-eq? '%#quote _hd2151821880_)
                                        (if (gx#stx-pair? _tl2151921882_)
                                            (let ((_e2152021885_
                                                   (gx#stx-e _tl2151921882_)))
                                              (let ((_hd2152121888_
                                                     (##car _e2152021885_))
                                                    (_tl2152221890_
                                                     (##cdr _e2152021885_)))
                                                (if (gx#stx-null?
                                                     _tl2152221890_)
                                                    (if (gx#stx-pair?
                                                         _tl2151621874_)
                                                        (let ((_e2152321893_
                                                               (gx#stx-e
                                                                _tl2151621874_)))
                                                          (let ((_hd2152421896_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2152321893_))
                        (_tl2152521898_ (##cdr _e2152321893_)))
                    (if (gx#stx-pair? _tl2152521898_)
                        (let ((_e2152621901_ (gx#stx-e _tl2152521898_)))
                          (let ((_hd2152721904_ (##car _e2152621901_))
                                (_tl2152821906_ (##cdr _e2152621901_)))
                            (if (gx#stx-pair? _hd2152721904_)
                                (let ((_e2152921909_
                                       (gx#stx-e _hd2152721904_)))
                                  (let ((_hd2153021912_ (##car _e2152921909_))
                                        (_tl2153121914_ (##cdr _e2152921909_)))
                                    (if (gx#identifier? _hd2153021912_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd2153021912_)
                                            (if (gx#stx-pair? _tl2153121914_)
                                                (let ((_e2153221917_
                                                       (gx#stx-e
                                                        _tl2153121914_)))
                                                  (let ((_hd2153321920_
                                                         (##car _e2153221917_))
                                                        (_tl2153421922_
                                                         (##cdr _e2153221917_)))
                                                    (if (gx#stx-null?
                                                         _tl2153421922_)
                                                        (if (gx#stx-pair?
                                                             _tl2152821906_)
                                                            (let ((_e2153521925_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2152821906_)))
                      (let ((_hd2153621928_ (##car _e2153521925_))
                            (_tl2153721930_ (##cdr _e2153521925_)))
                        (if (gx#stx-pair? _hd2153621928_)
                            (let ((_e2153821933_ (gx#stx-e _hd2153621928_)))
                              (let ((_hd2153921936_ (##car _e2153821933_))
                                    (_tl2154021938_ (##cdr _e2153821933_)))
                                (if (gx#identifier? _hd2153921936_)
                                    (if (gx#stx-eq? '%#quote _hd2153921936_)
                                        (if (gx#stx-pair? _tl2154021938_)
                                            (let ((_e2154121941_
                                                   (gx#stx-e _tl2154021938_)))
                                              (let ((_hd2154221944_
                                                     (##car _e2154121941_))
                                                    (_tl2154321946_
                                                     (##cdr _e2154121941_)))
                                                (if (gx#stx-null?
                                                     _tl2154321946_)
                                                    ((lambda (_L21949_
                                                              _L21950_
                                                              _L21951_
                                                              _L21952_
                                                              _L21953_)
                                                       (let ((__obj24485
                                                              (make-object
                                                               gxc#!struct-type::t
                                                               '7)))
                                                         (begin
                                                           (gxc#!struct-type:::init!
                                                            __obj24485
                                                            (gx#stx-e _L21953_)
                                                            '#f
                                                            (gx#stx-e _L21952_)
                                                            '0
                                                            (gx#stx-e _L21949_)
                                                            (gx#stx-e
                                                             _L21950_))
                                                           __obj24485)))
                                                     _hd2154221944_
                                                     _hd2153321920_
                                                     _hd2152421896_
                                                     _hd2152121888_
                                                     _hd2150321840_)
                                                    (_g2148721816_
                                                     _g2149021819_))))
                                            (_g2148721816_ _g2149021819_))
                                        (_g2148721816_ _g2149021819_))
                                    (_g2148721816_ _g2149021819_))))
                            (_g2148721816_ _g2149021819_))))
                    (_g2148721816_ _g2149021819_))
                (_g2148721816_ _g2149021819_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2148721816_ _g2149021819_))
                                            (_g2148721816_ _g2149021819_))
                                        (_g2148721816_ _g2149021819_))))
                                (_g2148721816_ _g2149021819_))))
                        (_g2148721816_ _g2149021819_))))
                (_g2148721816_ _g2149021819_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2148721816_
                                                     _g2149021819_))))
                                            (_g2148721816_ _g2149021819_))
                                        (_g2148721816_ _g2149021819_))
                                    (_g2148721816_ _g2149021819_))))
                            (_g2148721816_ _g2149021819_))))
                    (_g2148721816_ _g2149021819_))
                (_g2148721816_ _g2149021819_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2148721816_
                                                     _g2149021819_))
                                                (_g2148721816_
                                                 _g2149021819_))))
                                        (_g2148721816_ _g2149021819_))
                                    (_g2148721816_ _g2149021819_))
                                (_g2148721816_ _g2149021819_))))
                        (_g2148721816_ _g2149021819_))))
                (_g2148721816_ _g2149021819_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2148721816_
                                                     _g2149021819_))))
                                            (_g2148721816_ _g2149021819_))
                                        (_g2148721816_ _g2149021819_))
                                    (_g2148721816_ _g2149021819_))))
                            (_g2148721816_ _g2149021819_))))
                    (_g2148721816_ _g2149021819_)))))
        (_g2148621996_ _args21485_))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx21410_ _args21411_)
      (let* ((_g2141421430_
              (lambda (_g2141521427_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2141521427_)))
             (_g2141321437_ (lambda (_g2141521433_) ((lambda () '#f))))
             (_g2141221481_
              (lambda (_g2141521440_)
                (if (gx#stx-pair? _g2141521440_)
                    (let ((_e2141721442_ (gx#stx-e _g2141521440_)))
                      (let ((_hd2141821445_ (##car _e2141721442_))
                            (_tl2141921447_ (##cdr _e2141721442_)))
                        (if (gx#stx-pair? _hd2141821445_)
                            (let ((_e2142021450_ (gx#stx-e _hd2141821445_)))
                              (let ((_hd2142121453_ (##car _e2142021450_))
                                    (_tl2142221455_ (##cdr _e2142021450_)))
                                (if (gx#identifier? _hd2142121453_)
                                    (if (gx#stx-eq? '%#ref _hd2142121453_)
                                        (if (gx#stx-pair? _tl2142221455_)
                                            (let ((_e2142321458_
                                                   (gx#stx-e _tl2142221455_)))
                                              (let ((_hd2142421461_
                                                     (##car _e2142321458_))
                                                    (_tl2142521463_
                                                     (##cdr _e2142321458_)))
                                                (if (gx#stx-null?
                                                     _tl2142521463_)
                                                    (if (gx#stx-null?
                                                         _tl2141921447_)
                                                        ((lambda (_L21466_)
                                                           (##structure
                                                            gxc#!struct-pred::t
                                                            (gxc#identifier-symbol
                                                             _L21466_)))
                                                         _hd2142421461_)
                                                        (_g2141321437_
                                                         _g2141521440_))
                                                    (_g2141321437_
                                                     _g2141521440_))))
                                            (_g2141321437_ _g2141521440_))
                                        (_g2141321437_ _g2141521440_))
                                    (_g2141321437_ _g2141521440_))))
                            (_g2141321437_ _g2141521440_))))
                    (_g2141321437_ _g2141521440_)))))
        (_g2141221481_ _args21411_))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__%
      (lambda (_stx21281_ _args21282_ _unchecked?21283_)
        (let* ((_g2128621312_
                (lambda (_g2128721309_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2128721309_)))
               (_g2128521319_ (lambda (_g2128721315_) ((lambda () '#f))))
               (_g2128421395_
                (lambda (_g2128721322_)
                  (if (gx#stx-pair? _g2128721322_)
                      (let ((_e2129021324_ (gx#stx-e _g2128721322_)))
                        (let ((_hd2129121327_ (##car _e2129021324_))
                              (_tl2129221329_ (##cdr _e2129021324_)))
                          (if (gx#stx-pair? _hd2129121327_)
                              (let ((_e2129321332_ (gx#stx-e _hd2129121327_)))
                                (let ((_hd2129421335_ (##car _e2129321332_))
                                      (_tl2129521337_ (##cdr _e2129321332_)))
                                  (if (gx#identifier? _hd2129421335_)
                                      (if (gx#stx-eq? '%#ref _hd2129421335_)
                                          (if (gx#stx-pair? _tl2129521337_)
                                              (let ((_e2129621340_
                                                     (gx#stx-e
                                                      _tl2129521337_)))
                                                (let ((_hd2129721343_
                                                       (##car _e2129621340_))
                                                      (_tl2129821345_
                                                       (##cdr _e2129621340_)))
                                                  (if (gx#stx-null?
                                                       _tl2129821345_)
                                                      (if (gx#stx-pair?
                                                           _tl2129221329_)
                                                          (let ((_e2129921348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2129221329_)))
                    (let ((_hd2130021351_ (##car _e2129921348_))
                          (_tl2130121353_ (##cdr _e2129921348_)))
                      (if (gx#stx-pair? _hd2130021351_)
                          (let ((_e2130221356_ (gx#stx-e _hd2130021351_)))
                            (let ((_hd2130321359_ (##car _e2130221356_))
                                  (_tl2130421361_ (##cdr _e2130221356_)))
                              (if (gx#identifier? _hd2130321359_)
                                  (if (gx#stx-eq? '%#quote _hd2130321359_)
                                      (if (gx#stx-pair? _tl2130421361_)
                                          (let ((_e2130521364_
                                                 (gx#stx-e _tl2130421361_)))
                                            (let ((_hd2130621367_
                                                   (##car _e2130521364_))
                                                  (_tl2130721369_
                                                   (##cdr _e2130521364_)))
                                              (if (gx#stx-null? _tl2130721369_)
                                                  (if (gx#stx-null?
                                                       _tl2130121353_)
                                                      ((lambda (_L21372_
                                                                _L21373_)
                                                         (##structure
                                                          gxc#!struct-getf::t
                                                          (gxc#identifier-symbol
                                                           _L21373_)
                                                          (gx#stx-e _L21372_)
                                                          _unchecked?21283_))
                                                       _hd2130621367_
                                                       _hd2129721343_)
                                                      (_g2128521319_
                                                       _g2128721322_))
                                                  (_g2128521319_
                                                   _g2128721322_))))
                                          (_g2128521319_ _g2128721322_))
                                      (_g2128521319_ _g2128721322_))
                                  (_g2128521319_ _g2128721322_))))
                          (_g2128521319_ _g2128721322_))))
                  (_g2128521319_ _g2128721322_))
              (_g2128521319_ _g2128721322_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2128521319_ _g2128721322_))
                                          (_g2128521319_ _g2128721322_))
                                      (_g2128521319_ _g2128721322_))))
                              (_g2128521319_ _g2128721322_))))
                      (_g2128521319_ _g2128721322_)))))
          (_g2128421395_ _args21282_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx21401_ _args21402_)
          (let ((_unchecked?21404_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__%
             _stx21401_
             _args21402_
             _unchecked?21404_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g24497_
          (let ((_g24496_ (length _g24497_)))
            (cond ((##fx= _g24496_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g24497_))
                  ((##fx= _g24496_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__%
                          _g24497_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g24497_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__%
      (lambda (_stx21151_ _args21152_ _unchecked?21153_)
        (let* ((_g2115621182_
                (lambda (_g2115721179_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2115721179_)))
               (_g2115521189_ (lambda (_g2115721185_) ((lambda () '#f))))
               (_g2115421265_
                (lambda (_g2115721192_)
                  (if (gx#stx-pair? _g2115721192_)
                      (let ((_e2116021194_ (gx#stx-e _g2115721192_)))
                        (let ((_hd2116121197_ (##car _e2116021194_))
                              (_tl2116221199_ (##cdr _e2116021194_)))
                          (if (gx#stx-pair? _hd2116121197_)
                              (let ((_e2116321202_ (gx#stx-e _hd2116121197_)))
                                (let ((_hd2116421205_ (##car _e2116321202_))
                                      (_tl2116521207_ (##cdr _e2116321202_)))
                                  (if (gx#identifier? _hd2116421205_)
                                      (if (gx#stx-eq? '%#ref _hd2116421205_)
                                          (if (gx#stx-pair? _tl2116521207_)
                                              (let ((_e2116621210_
                                                     (gx#stx-e
                                                      _tl2116521207_)))
                                                (let ((_hd2116721213_
                                                       (##car _e2116621210_))
                                                      (_tl2116821215_
                                                       (##cdr _e2116621210_)))
                                                  (if (gx#stx-null?
                                                       _tl2116821215_)
                                                      (if (gx#stx-pair?
                                                           _tl2116221199_)
                                                          (let ((_e2116921218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2116221199_)))
                    (let ((_hd2117021221_ (##car _e2116921218_))
                          (_tl2117121223_ (##cdr _e2116921218_)))
                      (if (gx#stx-pair? _hd2117021221_)
                          (let ((_e2117221226_ (gx#stx-e _hd2117021221_)))
                            (let ((_hd2117321229_ (##car _e2117221226_))
                                  (_tl2117421231_ (##cdr _e2117221226_)))
                              (if (gx#identifier? _hd2117321229_)
                                  (if (gx#stx-eq? '%#quote _hd2117321229_)
                                      (if (gx#stx-pair? _tl2117421231_)
                                          (let ((_e2117521234_
                                                 (gx#stx-e _tl2117421231_)))
                                            (let ((_hd2117621237_
                                                   (##car _e2117521234_))
                                                  (_tl2117721239_
                                                   (##cdr _e2117521234_)))
                                              (if (gx#stx-null? _tl2117721239_)
                                                  (if (gx#stx-null?
                                                       _tl2117121223_)
                                                      ((lambda (_L21242_
                                                                _L21243_)
                                                         (##structure
                                                          gxc#!struct-setf::t
                                                          (gxc#identifier-symbol
                                                           _L21243_)
                                                          (gx#stx-e _L21242_)
                                                          _unchecked?21153_))
                                                       _hd2117621237_
                                                       _hd2116721213_)
                                                      (_g2115521189_
                                                       _g2115721192_))
                                                  (_g2115521189_
                                                   _g2115721192_))))
                                          (_g2115521189_ _g2115721192_))
                                      (_g2115521189_ _g2115721192_))
                                  (_g2115521189_ _g2115721192_))))
                          (_g2115521189_ _g2115721192_))))
                  (_g2115521189_ _g2115721192_))
              (_g2115521189_ _g2115721192_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2115521189_ _g2115721192_))
                                          (_g2115521189_ _g2115721192_))
                                      (_g2115521189_ _g2115721192_))))
                              (_g2115521189_ _g2115721192_))))
                      (_g2115521189_ _g2115721192_)))))
          (_g2115421265_ _args21152_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx21271_ _args21272_)
          (let ((_unchecked?21274_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__%
             _stx21271_
             _args21272_
             _unchecked?21274_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g24499_
          (let ((_g24498_ (length _g24499_)))
            (cond ((##fx= _g24498_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g24499_))
                  ((##fx= _g24498_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__%
                          _g24499_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g24499_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx21147_ _args21148_)
      (gxc#basic-expression-type-make-struct-field-accessor__%
       _stx21147_
       _args21148_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx21144_ _args21145_)
      (gxc#basic-expression-type-make-struct-field-mutator__%
       _stx21144_
       _args21145_
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
    (lambda (_stx21093_)
      (let* ((_g2109521108_
              (lambda (_g2109621105_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2109621105_)))
             (_g2109421141_
              (lambda (_g2109621111_)
                (if (gx#stx-pair? _g2109621111_)
                    (let ((_e2109821113_ (gx#stx-e _g2109621111_)))
                      (let ((_hd2109921116_ (##car _e2109821113_))
                            (_tl2110021118_ (##cdr _e2109821113_)))
                        (if (gx#stx-pair? _tl2110021118_)
                            (let ((_e2110121121_ (gx#stx-e _tl2110021118_)))
                              (let ((_hd2110221124_ (##car _e2110121121_))
                                    (_tl2110321126_ (##cdr _e2110121121_)))
                                (if (gx#stx-null? _tl2110321126_)
                                    ((lambda (_L21129_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#identifier-symbol _L21129_)))
                                     _hd2110221124_)
                                    (_g2109521108_ _g2109621111_))))
                            (_g2109521108_ _g2109621111_))))
                    (_g2109521108_ _g2109621111_)))))
        (_g2109421141_ _stx21093_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form20327_)
      (let* ((_g2033220489_
              (lambda (_g2033320486_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2033320486_)))
             (_g2033120496_ (lambda (_g2033320492_) ((lambda () '#f))))
             (_g2033020636_
              (lambda (_g2033320499_)
                (if (gx#stx-pair? _g2033320499_)
                    (let ((_e2044920501_ (gx#stx-e _g2033320499_)))
                      (let ((_hd2045020504_ (##car _e2044920501_))
                            (_tl2045120506_ (##cdr _e2044920501_)))
                        (if (gx#stx-pair? _tl2045120506_)
                            (let ((_e2045220509_ (gx#stx-e _tl2045120506_)))
                              (let ((_hd2045320512_ (##car _e2045220509_))
                                    (_tl2045420514_ (##cdr _e2045220509_)))
                                (if (gx#stx-pair? _hd2045320512_)
                                    (let ((_e2045520517_
                                           (gx#stx-e _hd2045320512_)))
                                      (let ((_hd2045620520_
                                             (##car _e2045520517_))
                                            (_tl2045720522_
                                             (##cdr _e2045520517_)))
                                        (if (gx#identifier? _hd2045620520_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd2045620520_)
                                                (if (gx#stx-pair?
                                                     _tl2045720522_)
                                                    (let ((_e2045820525_
                                                           (gx#stx-e
                                                            _tl2045720522_)))
                                                      (let ((_hd2045920528_
                                                             (##car _e2045820525_))
                                                            (_tl2046020530_
                                                             (##cdr _e2045820525_)))
                                                        (if (gx#stx-pair?
                                                             _hd2045920528_)
                                                            (let ((_e2046120533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2045920528_)))
                      (let ((_hd2046220536_ (##car _e2046120533_))
                            (_tl2046320538_ (##cdr _e2046120533_)))
                        (if (gx#identifier? _hd2046220536_)
                            (if (gx#stx-eq? '%#ref _hd2046220536_)
                                (if (gx#stx-pair? _tl2046320538_)
                                    (let ((_e2046420541_
                                           (gx#stx-e _tl2046320538_)))
                                      (let ((_hd2046520544_
                                             (##car _e2046420541_))
                                            (_tl2046620546_
                                             (##cdr _e2046420541_)))
                                        (if (gx#stx-null? _tl2046620546_)
                                            (if (gx#stx-pair? _tl2046020530_)
                                                (let ((_e2046720549_
                                                       (gx#stx-e
                                                        _tl2046020530_)))
                                                  (let ((_hd2046820552_
                                                         (##car _e2046720549_))
                                                        (_tl2046920554_
                                                         (##cdr _e2046720549_)))
                                                    (if (gx#stx-pair?
                                                         _hd2046820552_)
                                                        (let ((_e2047020557_
                                                               (gx#stx-e
                                                                _hd2046820552_)))
                                                          (let ((_hd2047120560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2047020557_))
                        (_tl2047220562_ (##cdr _e2047020557_)))
                    (if (gx#identifier? _hd2047120560_)
                        (if (gx#stx-eq? '%#ref _hd2047120560_)
                            (if (gx#stx-pair? _tl2047220562_)
                                (let ((_e2047320565_
                                       (gx#stx-e _tl2047220562_)))
                                  (let ((_hd2047420568_ (##car _e2047320565_))
                                        (_tl2047520570_ (##cdr _e2047320565_)))
                                    (if (gx#stx-null? _tl2047520570_)
                                        (if (gx#stx-pair? _tl2046920554_)
                                            (let ((_e2047620573_
                                                   (gx#stx-e _tl2046920554_)))
                                              (let ((_hd2047720576_
                                                     (##car _e2047620573_))
                                                    (_tl2047820578_
                                                     (##cdr _e2047620573_)))
                                                (if (gx#stx-pair?
                                                     _hd2047720576_)
                                                    (let ((_e2047920581_
                                                           (gx#stx-e
                                                            _hd2047720576_)))
                                                      (let ((_hd2048020584_
                                                             (##car _e2047920581_))
                                                            (_tl2048120586_
                                                             (##cdr _e2047920581_)))
                                                        (if (gx#identifier?
                                                             _hd2048020584_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2048020584_)
                        (if (gx#stx-pair? _tl2048120586_)
                            (let ((_e2048220589_ (gx#stx-e _tl2048120586_)))
                              (let ((_hd2048320592_ (##car _e2048220589_))
                                    (_tl2048420594_ (##cdr _e2048220589_)))
                                (if (gx#stx-null? _tl2048420594_)
                                    (if (gx#stx-null? _tl2047820578_)
                                        (if (gx#stx-null? _tl2045420514_)
                                            ((lambda (_L20597_
                                                      _L20598_
                                                      _L20599_
                                                      _L20600_)
                                               (if (if (gx#identifier?
                                                        _L20600_)
                                                       (if (gxc#runtime-identifier=?
                                                            _L20599_
                                                            'apply)
                                                           (if (gx#free-identifier=?
                                                                _L20600_
                                                                _L20597_)
                                                               (not (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L20598_
                             _L20600_))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#t
                                                   (_g2033120496_
                                                    _g2033320499_)))
                                             _hd2048320592_
                                             _hd2047420568_
                                             _hd2046520544_
                                             _hd2045020504_)
                                            (_g2033120496_ _g2033320499_))
                                        (_g2033120496_ _g2033320499_))
                                    (_g2033120496_ _g2033320499_))))
                            (_g2033120496_ _g2033320499_))
                        (_g2033120496_ _g2033320499_))
                    (_g2033120496_ _g2033320499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2033120496_
                                                     _g2033320499_))))
                                            (_g2033120496_ _g2033320499_))
                                        (_g2033120496_ _g2033320499_))))
                                (_g2033120496_ _g2033320499_))
                            (_g2033120496_ _g2033320499_))
                        (_g2033120496_ _g2033320499_))))
                (_g2033120496_ _g2033320499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2033120496_ _g2033320499_))
                                            (_g2033120496_ _g2033320499_))))
                                    (_g2033120496_ _g2033320499_))
                                (_g2033120496_ _g2033320499_))
                            (_g2033120496_ _g2033320499_))))
                    (_g2033120496_ _g2033320499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2033120496_
                                                     _g2033320499_))
                                                (_g2033120496_ _g2033320499_))
                                            (_g2033120496_ _g2033320499_))))
                                    (_g2033120496_ _g2033320499_))))
                            (_g2033120496_ _g2033320499_))))
                    (_g2033120496_ _g2033320499_))))
             (_g2032920896_
              (lambda (_g2033320639_)
                (if (gx#stx-pair? _g2033320639_)
                    (let ((_e2038520641_ (gx#stx-e _g2033320639_)))
                      (let ((_hd2038620644_ (##car _e2038520641_))
                            (_tl2038720646_ (##cdr _e2038520641_)))
                        (if (gx#stx-pair/null? _hd2038620644_)
                            (if (fx>= (gx#stx-length _hd2038620644_) '0)
                                (let ((_g24500_
                                       (gx#syntax-split-splice
                                        _hd2038620644_
                                        '0)))
                                  (begin
                                    (let ((_g24501_
                                           (if (##values? _g24500_)
                                               (##vector-length _g24500_)
                                               1)))
                                      (if (not (##fx= _g24501_ 2))
                                          (error "Context expects 2 values"
                                                 _g24501_)))
                                    (let ((_target2038820649_
                                           (##vector-ref _g24500_ 0))
                                          (_tl2039020651_
                                           (##vector-ref _g24500_ 1)))
                                      (letrec ((_loop2039120654_
                                                (lambda (_hd2038920657_
                                                         _arg2039520659_)
                                                  (if (gx#stx-pair?
                                                       _hd2038920657_)
                                                      (let ((_e2039220662_
                                                             (gx#stx-e
                                                              _hd2038920657_)))
                                                        (let ((_lp-hd2039320665_
                                                               (##car _e2039220662_))
                                                              (_lp-tl2039420667_
                                                               (##cdr _e2039220662_)))
                                                          (_loop2039120654_
                                                           _lp-tl2039420667_
                                                           (cons _lp-hd2039320665_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg2039520659_))))
              (let ((_arg2039620670_ (reverse _arg2039520659_)))
                (if (gx#stx-pair? _tl2038720646_)
                    (let ((_e2039720673_ (gx#stx-e _tl2038720646_)))
                      (let ((_hd2039820676_ (##car _e2039720673_))
                            (_tl2039920678_ (##cdr _e2039720673_)))
                        (if (gx#stx-pair? _hd2039820676_)
                            (let ((_e2040020681_ (gx#stx-e _hd2039820676_)))
                              (let ((_hd2040120684_ (##car _e2040020681_))
                                    (_tl2040220686_ (##cdr _e2040020681_)))
                                (if (gx#identifier? _hd2040120684_)
                                    (if (gx#stx-eq? '%#call _hd2040120684_)
                                        (if (gx#stx-pair? _tl2040220686_)
                                            (let ((_e2040320689_
                                                   (gx#stx-e _tl2040220686_)))
                                              (let ((_hd2040420692_
                                                     (##car _e2040320689_))
                                                    (_tl2040520694_
                                                     (##cdr _e2040320689_)))
                                                (if (gx#stx-pair?
                                                     _hd2040420692_)
                                                    (let ((_e2040620697_
                                                           (gx#stx-e
                                                            _hd2040420692_)))
                                                      (let ((_hd2040720700_
                                                             (##car _e2040620697_))
                                                            (_tl2040820702_
                                                             (##cdr _e2040620697_)))
                                                        (if (gx#identifier?
                                                             _hd2040720700_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2040720700_)
                        (if (gx#stx-pair? _tl2040820702_)
                            (let ((_e2040920705_ (gx#stx-e _tl2040820702_)))
                              (let ((_hd2041020708_ (##car _e2040920705_))
                                    (_tl2041120710_ (##cdr _e2040920705_)))
                                (if (gx#stx-null? _tl2041120710_)
                                    (if (gx#stx-pair? _tl2040520694_)
                                        (let ((_e2041220713_
                                               (gx#stx-e _tl2040520694_)))
                                          (let ((_hd2041320716_
                                                 (##car _e2041220713_))
                                                (_tl2041420718_
                                                 (##cdr _e2041220713_)))
                                            (if (gx#stx-pair? _hd2041320716_)
                                                (let ((_e2041520721_
                                                       (gx#stx-e
                                                        _hd2041320716_)))
                                                  (let ((_hd2041620724_
                                                         (##car _e2041520721_))
                                                        (_tl2041720726_
                                                         (##cdr _e2041520721_)))
                                                    (if (gx#identifier?
                                                         _hd2041620724_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd2041620724_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2041720726_)
                        (let ((_e2041820729_ (gx#stx-e _tl2041720726_)))
                          (let ((_hd2041920732_ (##car _e2041820729_))
                                (_tl2042020734_ (##cdr _e2041820729_)))
                            (if (gx#stx-null? _tl2042020734_)
                                (if (gx#stx-pair/null? _tl2041420718_)
                                    (if (fx>= (gx#stx-length _tl2041420718_)
                                              '1)
                                        (let ((_g24502_
                                               (gx#syntax-split-splice
                                                _tl2041420718_
                                                '1)))
                                          (begin
                                            (let ((_g24503_
                                                   (if (##values? _g24502_)
                                                       (##vector-length
                                                        _g24502_)
                                                       1)))
                                              (if (not (##fx= _g24503_ 2))
                                                  (error "Context expects 2 values"
                                                         _g24503_)))
                                            (let ((_target2042120737_
                                                   (##vector-ref _g24502_ 0))
                                                  (_tl2042320739_
                                                   (##vector-ref _g24502_ 1)))
                                              (if (gx#stx-pair? _tl2042320739_)
                                                  (let ((_e2043020742_
                                                         (gx#stx-e
                                                          _tl2042320739_)))
                                                    (let ((_hd2043120745_
                                                           (##car _e2043020742_))
                                                          (_tl2043220747_
                                                           (##cdr _e2043020742_)))
                                                      (if (gx#stx-pair?
                                                           _hd2043120745_)
                                                          (let ((_e2043320750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2043120745_)))
                    (let ((_hd2043420753_ (##car _e2043320750_))
                          (_tl2043520755_ (##cdr _e2043320750_)))
                      (if (gx#identifier? _hd2043420753_)
                          (if (gx#stx-eq? '%#ref _hd2043420753_)
                              (if (gx#stx-pair? _tl2043520755_)
                                  (let ((_e2043620758_
                                         (gx#stx-e _tl2043520755_)))
                                    (let ((_hd2043720761_
                                           (##car _e2043620758_))
                                          (_tl2043820763_
                                           (##cdr _e2043620758_)))
                                      (if (gx#stx-null? _tl2043820763_)
                                          (if (gx#stx-null? _tl2043220747_)
                                              (letrec ((_loop2042420766_
                                                        (lambda (_hd2042220769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _xarg2042820771_)
                  (if (gx#stx-pair? _hd2042220769_)
                      (let ((_e2042520774_ (gx#stx-e _hd2042220769_)))
                        (let ((_lp-hd2042620777_ (##car _e2042520774_))
                              (_lp-tl2042720779_ (##cdr _e2042520774_)))
                          (if (gx#stx-pair? _lp-hd2042620777_)
                              (let ((_e2043920782_
                                     (gx#stx-e _lp-hd2042620777_)))
                                (let ((_hd2044020785_ (##car _e2043920782_))
                                      (_tl2044120787_ (##cdr _e2043920782_)))
                                  (if (gx#identifier? _hd2044020785_)
                                      (if (gx#stx-eq? '%#ref _hd2044020785_)
                                          (if (gx#stx-pair? _tl2044120787_)
                                              (let ((_e2044220790_
                                                     (gx#stx-e
                                                      _tl2044120787_)))
                                                (let ((_hd2044320793_
                                                       (##car _e2044220790_))
                                                      (_tl2044420795_
                                                       (##cdr _e2044220790_)))
                                                  (if (gx#stx-null?
                                                       _tl2044420795_)
                                                      (_loop2042420766_
                                                       _lp-tl2042720779_
                                                       (cons _hd2044320793_
                                                             _xarg2042820771_))
                                                      (_g2033020636_
                                                       _g2033320639_))))
                                              (_g2033020636_ _g2033320639_))
                                          (_g2033020636_ _g2033320639_))
                                      (_g2033020636_ _g2033320639_))))
                              (_g2033020636_ _g2033320639_))))
                      (let ((_xarg2042920798_ (reverse _xarg2042820771_)))
                        (if (gx#stx-null? _tl2039920678_)
                            ((lambda (_L20801_
                                      _L20802_
                                      _L20803_
                                      _L20804_
                                      _L20805_
                                      _L20806_)
                               (if (if (gx#identifier-list?
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g2084920852_
                                                           _g2085020854_)
                                                    (cons _g2084920852_
                                                          _g2085020854_))
                                                  '()
                                                  _L20806_)))
                                       (if (gx#identifier? _L20805_)
                                           (if (gxc#runtime-identifier=?
                                                _L20804_
                                                'apply)
                                               (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2085620859_ _g2085720861_)
                                    (cons _g2085620859_ _g2085720861_))
                                  '()
                                  _L20806_)))
                (length (begin
                          '#!void
                          (foldr1 (lambda (_g2086320866_ _g2086420868_)
                                    (cons _g2086320866_ _g2086420868_))
                                  '()
                                  _L20802_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (andmap2 gx#free-identifier=?
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2087020873_ _g2087120875_)
                                    (cons _g2087020873_ _g2087120875_))
                                  '()
                                  _L20806_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g2087720880_ _g2087820882_)
                                    (cons _g2087720880_ _g2087820882_))
                                  '()
                                  _L20802_)))
               (if (gx#free-identifier=? _L20805_ _L20801_)
                   (not (find (lambda (_g2088420886_)
                                (gx#free-identifier=? _g2088420886_ _L20803_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2088820891_ _g2088920893_)
                                          (cons _g2088820891_ _g2088920893_))
                                        (cons _L20805_ '())
                                        _L20806_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)
                                   '#t
                                   (_g2033020636_ _g2033320639_)))
                             _hd2043720761_
                             _xarg2042920798_
                             _hd2041920732_
                             _hd2041020708_
                             _tl2039020651_
                             _arg2039620670_)
                            (_g2033020636_ _g2033320639_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop2042420766_
                                                 _target2042120737_
                                                 '()))
                                              (_g2033020636_ _g2033320639_))
                                          (_g2033020636_ _g2033320639_))))
                                  (_g2033020636_ _g2033320639_))
                              (_g2033020636_ _g2033320639_))
                          (_g2033020636_ _g2033320639_))))
                  (_g2033020636_ _g2033320639_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2033020636_
                                                   _g2033320639_)))))
                                        (_g2033020636_ _g2033320639_))
                                    (_g2033020636_ _g2033320639_))
                                (_g2033020636_ _g2033320639_))))
                        (_g2033020636_ _g2033320639_))
                    (_g2033020636_ _g2033320639_))
                (_g2033020636_ _g2033320639_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2033020636_
                                                 _g2033320639_))))
                                        (_g2033020636_ _g2033320639_))
                                    (_g2033020636_ _g2033320639_))))
                            (_g2033020636_ _g2033320639_))
                        (_g2033020636_ _g2033320639_))
                    (_g2033020636_ _g2033320639_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2033020636_
                                                     _g2033320639_))))
                                            (_g2033020636_ _g2033320639_))
                                        (_g2033020636_ _g2033320639_))
                                    (_g2033020636_ _g2033320639_))))
                            (_g2033020636_ _g2033320639_))))
                    (_g2033020636_ _g2033320639_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop2039120654_
                                         _target2038820649_
                                         '())))))
                                (_g2033020636_ _g2033320639_))
                            (_g2033020636_ _g2033320639_))))
                    (_g2033020636_ _g2033320639_))))
             (_g2032821090_
              (lambda (_g2033320899_)
                (if (gx#stx-pair? _g2033320899_)
                    (let ((_e2033720901_ (gx#stx-e _g2033320899_)))
                      (let ((_hd2033820904_ (##car _e2033720901_))
                            (_tl2033920906_ (##cdr _e2033720901_)))
                        (if (gx#stx-pair/null? _hd2033820904_)
                            (if (fx>= (gx#stx-length _hd2033820904_) '0)
                                (let ((_g24504_
                                       (gx#syntax-split-splice
                                        _hd2033820904_
                                        '0)))
                                  (begin
                                    (let ((_g24505_
                                           (if (##values? _g24504_)
                                               (##vector-length _g24504_)
                                               1)))
                                      (if (not (##fx= _g24505_ 2))
                                          (error "Context expects 2 values"
                                                 _g24505_)))
                                    (let ((_target2034020909_
                                           (##vector-ref _g24504_ 0))
                                          (_tl2034220911_
                                           (##vector-ref _g24504_ 1)))
                                      (if (gx#stx-null? _tl2034220911_)
                                          (letrec ((_loop2034320914_
                                                    (lambda (_hd2034120917_
                                                             _arg2034720919_)
                                                      (if (gx#stx-pair?
                                                           _hd2034120917_)
                                                          (let ((_e2034420922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2034120917_)))
                    (let ((_lp-hd2034520925_ (##car _e2034420922_))
                          (_lp-tl2034620927_ (##cdr _e2034420922_)))
                      (_loop2034320914_
                       _lp-tl2034620927_
                       (cons _lp-hd2034520925_ _arg2034720919_))))
                  (let ((_arg2034820930_ (reverse _arg2034720919_)))
                    (if (gx#stx-pair? _tl2033920906_)
                        (let ((_e2034920933_ (gx#stx-e _tl2033920906_)))
                          (let ((_hd2035020936_ (##car _e2034920933_))
                                (_tl2035120938_ (##cdr _e2034920933_)))
                            (if (gx#stx-pair? _hd2035020936_)
                                (let ((_e2035220941_
                                       (gx#stx-e _hd2035020936_)))
                                  (let ((_hd2035320944_ (##car _e2035220941_))
                                        (_tl2035420946_ (##cdr _e2035220941_)))
                                    (if (gx#identifier? _hd2035320944_)
                                        (if (gx#stx-eq? '%#call _hd2035320944_)
                                            (if (gx#stx-pair? _tl2035420946_)
                                                (let ((_e2035520949_
                                                       (gx#stx-e
                                                        _tl2035420946_)))
                                                  (let ((_hd2035620952_
                                                         (##car _e2035520949_))
                                                        (_tl2035720954_
                                                         (##cdr _e2035520949_)))
                                                    (if (gx#stx-pair?
                                                         _hd2035620952_)
                                                        (let ((_e2035820957_
                                                               (gx#stx-e
                                                                _hd2035620952_)))
                                                          (let ((_hd2035920960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2035820957_))
                        (_tl2036020962_ (##cdr _e2035820957_)))
                    (if (gx#identifier? _hd2035920960_)
                        (if (gx#stx-eq? '%#ref _hd2035920960_)
                            (if (gx#stx-pair? _tl2036020962_)
                                (let ((_e2036120965_
                                       (gx#stx-e _tl2036020962_)))
                                  (let ((_hd2036220968_ (##car _e2036120965_))
                                        (_tl2036320970_ (##cdr _e2036120965_)))
                                    (if (gx#stx-null? _tl2036320970_)
                                        (if (gx#stx-pair/null? _tl2035720954_)
                                            (if (fx>= (gx#stx-length
                                                       _tl2035720954_)
                                                      '0)
                                                (let ((_g24506_
                                                       (gx#syntax-split-splice
                                                        _tl2035720954_
                                                        '0)))
                                                  (begin
                                                    (let ((_g24507_
                                                           (if (##values?
                                                                _g24506_)
                                                               (##vector-length
                                                                _g24506_)
                                                               1)))
                                                      (if (not (##fx= _g24507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g24507_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target2036420973_
                                                           (##vector-ref
                                                            _g24506_
                                                            0))
                                                          (_tl2036620975_
                                                           (##vector-ref
                                                            _g24506_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl2036620975_)
                                                          (letrec ((_loop2036720978_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd2036520981_ _xarg2037120983_)
                              (if (gx#stx-pair? _hd2036520981_)
                                  (let ((_e2036820986_
                                         (gx#stx-e _hd2036520981_)))
                                    (let ((_lp-hd2036920989_
                                           (##car _e2036820986_))
                                          (_lp-tl2037020991_
                                           (##cdr _e2036820986_)))
                                      (if (gx#stx-pair? _lp-hd2036920989_)
                                          (let ((_e2037320994_
                                                 (gx#stx-e _lp-hd2036920989_)))
                                            (let ((_hd2037420997_
                                                   (##car _e2037320994_))
                                                  (_tl2037520999_
                                                   (##cdr _e2037320994_)))
                                              (if (gx#identifier?
                                                   _hd2037420997_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd2037420997_)
                                                      (if (gx#stx-pair?
                                                           _tl2037520999_)
                                                          (let ((_e2037621002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2037520999_)))
                    (let ((_hd2037721005_ (##car _e2037621002_))
                          (_tl2037821007_ (##cdr _e2037621002_)))
                      (if (gx#stx-null? _tl2037821007_)
                          (_loop2036720978_
                           _lp-tl2037020991_
                           (cons _hd2037721005_ _xarg2037120983_))
                          (_g2032920896_ _g2033320899_))))
                  (_g2032920896_ _g2033320899_))
              (_g2032920896_ _g2033320899_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2032920896_
                                                   _g2033320899_))))
                                          (_g2032920896_ _g2033320899_))))
                                  (let ((_xarg2037221010_
                                         (reverse _xarg2037120983_)))
                                    (if (gx#stx-null? _tl2035120938_)
                                        ((lambda (_L21013_ _L21014_ _L21015_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g2104321046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2104421048_)
                        (cons _g2104321046_ _g2104421048_))
                      '()
                      _L21015_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g2105021053_ _g2105121055_)
                                        (cons _g2105021053_ _g2105121055_))
                                      '()
                                      _L21015_)))
                    (length (begin
                              '#!void
                              (foldr1 (lambda (_g2105721060_ _g2105821062_)
                                        (cons _g2105721060_ _g2105821062_))
                                      '()
                                      _L21013_))))
               (if (andmap2 gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr1 (lambda (_g2106421067_ _g2106521069_)
                                        (cons _g2106421067_ _g2106521069_))
                                      '()
                                      _L21015_))
                            (begin
                              '#!void
                              (foldr1 (lambda (_g2107121074_ _g2107221076_)
                                        (cons _g2107121074_ _g2107221076_))
                                      '()
                                      _L21013_)))
                   (not (find (lambda (_g2107821080_)
                                (gx#free-identifier=? _g2107821080_ _L21014_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g2108221085_ _g2108321087_)
                                          (cons _g2108221085_ _g2108321087_))
                                        '()
                                        _L21015_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g2032920896_ _g2033320899_)))
                                         _xarg2037221010_
                                         _hd2036220968_
                                         _arg2034820930_)
                                        (_g2032920896_ _g2033320899_)))))))
                    (_loop2036720978_ _target2036420973_ '()))
                  (_g2032920896_ _g2033320899_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2032920896_ _g2033320899_))
                                            (_g2032920896_ _g2033320899_))
                                        (_g2032920896_ _g2033320899_))))
                                (_g2032920896_ _g2033320899_))
                            (_g2032920896_ _g2033320899_))
                        (_g2032920896_ _g2033320899_))))
                (_g2032920896_ _g2033320899_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2032920896_ _g2033320899_))
                                            (_g2032920896_ _g2033320899_))
                                        (_g2032920896_ _g2033320899_))))
                                (_g2032920896_ _g2033320899_))))
                        (_g2032920896_ _g2033320899_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop2034320914_
                                             _target2034020909_
                                             '()))
                                          (_g2032920896_ _g2033320899_)))))
                                (_g2032920896_ _g2033320899_))
                            (_g2032920896_ _g2033320899_))))
                    (_g2032920896_ _g2033320899_)))))
        (_g2032821090_ _form20327_))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form19795_)
      (let* ((_g1979919923_
              (lambda (_g1980019920_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1980019920_)))
             (_g1979820040_
              (lambda (_g1980019926_)
                (if (gx#stx-pair? _g1980019926_)
                    (let ((_e1988919928_ (gx#stx-e _g1980019926_)))
                      (let ((_hd1989019931_ (##car _e1988919928_))
                            (_tl1989119933_ (##cdr _e1988919928_)))
                        (if (gx#stx-pair? _tl1989119933_)
                            (let ((_e1989219936_ (gx#stx-e _tl1989119933_)))
                              (let ((_hd1989319939_ (##car _e1989219936_))
                                    (_tl1989419941_ (##cdr _e1989219936_)))
                                (if (gx#stx-pair? _hd1989319939_)
                                    (let ((_e1989519944_
                                           (gx#stx-e _hd1989319939_)))
                                      (let ((_hd1989619947_
                                             (##car _e1989519944_))
                                            (_tl1989719949_
                                             (##cdr _e1989519944_)))
                                        (if (gx#identifier? _hd1989619947_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd1989619947_)
                                                (if (gx#stx-pair?
                                                     _tl1989719949_)
                                                    (let ((_e1989819952_
                                                           (gx#stx-e
                                                            _tl1989719949_)))
                                                      (let ((_hd1989919955_
                                                             (##car _e1989819952_))
                                                            (_tl1990019957_
                                                             (##cdr _e1989819952_)))
                                                        (if (gx#stx-pair?
                                                             _hd1989919955_)
                                                            (let ((_e1990119960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1989919955_)))
                      (let ((_hd1990219963_ (##car _e1990119960_))
                            (_tl1990319965_ (##cdr _e1990119960_)))
                        (if (gx#identifier? _hd1990219963_)
                            (if (gx#stx-eq? '%#ref _hd1990219963_)
                                (if (gx#stx-pair? _tl1990319965_)
                                    (let ((_e1990419968_
                                           (gx#stx-e _tl1990319965_)))
                                      (let ((_hd1990519971_
                                             (##car _e1990419968_))
                                            (_tl1990619973_
                                             (##cdr _e1990419968_)))
                                        (if (gx#stx-null? _tl1990619973_)
                                            (if (gx#stx-pair? _tl1990019957_)
                                                (let ((_e1990719976_
                                                       (gx#stx-e
                                                        _tl1990019957_)))
                                                  (let ((_hd1990819979_
                                                         (##car _e1990719976_))
                                                        (_tl1990919981_
                                                         (##cdr _e1990719976_)))
                                                    (if (gx#stx-pair?
                                                         _hd1990819979_)
                                                        (let ((_e1991019984_
                                                               (gx#stx-e
                                                                _hd1990819979_)))
                                                          (let ((_hd1991119987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1991019984_))
                        (_tl1991219989_ (##cdr _e1991019984_)))
                    (if (gx#identifier? _hd1991119987_)
                        (if (gx#stx-eq? '%#ref _hd1991119987_)
                            (if (gx#stx-pair? _tl1991219989_)
                                (let ((_e1991319992_
                                       (gx#stx-e _tl1991219989_)))
                                  (let ((_hd1991419995_ (##car _e1991319992_))
                                        (_tl1991519997_ (##cdr _e1991319992_)))
                                    (if (gx#stx-null? _tl1991519997_)
                                        (if (gx#stx-pair? _tl1990919981_)
                                            (let ((_e1991620000_
                                                   (gx#stx-e _tl1990919981_)))
                                              (let ((_hd1991720003_
                                                     (##car _e1991620000_))
                                                    (_tl1991820005_
                                                     (##cdr _e1991620000_)))
                                                (if (gx#stx-null?
                                                     _tl1991820005_)
                                                    (if (gx#stx-null?
                                                         _tl1989419941_)
                                                        ((lambda (_L20008_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L20009_
                          _L20010_)
                   (gxc#identifier-symbol _L20008_))
                 _hd1991419995_
                 _hd1990519971_
                 _hd1989019931_)
                (_g1979919923_ _g1980019926_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1979919923_
                                                     _g1980019926_))))
                                            (_g1979919923_ _g1980019926_))
                                        (_g1979919923_ _g1980019926_))))
                                (_g1979919923_ _g1980019926_))
                            (_g1979919923_ _g1980019926_))
                        (_g1979919923_ _g1980019926_))))
                (_g1979919923_ _g1980019926_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1979919923_ _g1980019926_))
                                            (_g1979919923_ _g1980019926_))))
                                    (_g1979919923_ _g1980019926_))
                                (_g1979919923_ _g1980019926_))
                            (_g1979919923_ _g1980019926_))))
                    (_g1979919923_ _g1980019926_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1979919923_
                                                     _g1980019926_))
                                                (_g1979919923_ _g1980019926_))
                                            (_g1979919923_ _g1980019926_))))
                                    (_g1979919923_ _g1980019926_))))
                            (_g1979919923_ _g1980019926_))))
                    (_g1979919923_ _g1980019926_))))
             (_g1979720176_
              (lambda (_g1980020043_)
                (if (gx#stx-pair? _g1980020043_)
                    (let ((_e1985020045_ (gx#stx-e _g1980020043_)))
                      (let ((_hd1985120048_ (##car _e1985020045_))
                            (_tl1985220050_ (##cdr _e1985020045_)))
                        (if (gx#stx-pair/null? _hd1985120048_)
                            (if (fx>= (gx#stx-length _hd1985120048_) '0)
                                (let ((_g24508_
                                       (gx#syntax-split-splice
                                        _hd1985120048_
                                        '0)))
                                  (begin
                                    (let ((_g24509_
                                           (if (##values? _g24508_)
                                               (##vector-length _g24508_)
                                               1)))
                                      (if (not (##fx= _g24509_ 2))
                                          (error "Context expects 2 values"
                                                 _g24509_)))
                                    (let ((_target1985320053_
                                           (##vector-ref _g24508_ 0))
                                          (_tl1985520055_
                                           (##vector-ref _g24508_ 1)))
                                      (letrec ((_loop1985620058_
                                                (lambda (_hd1985420061_
                                                         _arg1986020063_)
                                                  (if (gx#stx-pair?
                                                       _hd1985420061_)
                                                      (let ((_e1985720066_
                                                             (gx#stx-e
                                                              _hd1985420061_)))
                                                        (let ((_lp-hd1985820069_
                                                               (##car _e1985720066_))
                                                              (_lp-tl1985920071_
                                                               (##cdr _e1985720066_)))
                                                          (_loop1985620058_
                                                           _lp-tl1985920071_
                                                           (cons _lp-hd1985820069_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg1986020063_))))
              (let ((_arg1986120074_ (reverse _arg1986020063_)))
                (if (gx#stx-pair? _tl1985220050_)
                    (let ((_e1986220077_ (gx#stx-e _tl1985220050_)))
                      (let ((_hd1986320080_ (##car _e1986220077_))
                            (_tl1986420082_ (##cdr _e1986220077_)))
                        (if (gx#stx-pair? _hd1986320080_)
                            (let ((_e1986520085_ (gx#stx-e _hd1986320080_)))
                              (let ((_hd1986620088_ (##car _e1986520085_))
                                    (_tl1986720090_ (##cdr _e1986520085_)))
                                (if (gx#identifier? _hd1986620088_)
                                    (if (gx#stx-eq? '%#call _hd1986620088_)
                                        (if (gx#stx-pair? _tl1986720090_)
                                            (let ((_e1986820093_
                                                   (gx#stx-e _tl1986720090_)))
                                              (let ((_hd1986920096_
                                                     (##car _e1986820093_))
                                                    (_tl1987020098_
                                                     (##cdr _e1986820093_)))
                                                (if (gx#stx-pair?
                                                     _hd1986920096_)
                                                    (let ((_e1987120101_
                                                           (gx#stx-e
                                                            _hd1986920096_)))
                                                      (let ((_hd1987220104_
                                                             (##car _e1987120101_))
                                                            (_tl1987320106_
                                                             (##cdr _e1987120101_)))
                                                        (if (gx#identifier?
                                                             _hd1987220104_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd1987220104_)
                        (if (gx#stx-pair? _tl1987320106_)
                            (let ((_e1987420109_ (gx#stx-e _tl1987320106_)))
                              (let ((_hd1987520112_ (##car _e1987420109_))
                                    (_tl1987620114_ (##cdr _e1987420109_)))
                                (if (gx#stx-null? _tl1987620114_)
                                    (if (gx#stx-pair? _tl1987020098_)
                                        (let ((_e1987720117_
                                               (gx#stx-e _tl1987020098_)))
                                          (let ((_hd1987820120_
                                                 (##car _e1987720117_))
                                                (_tl1987920122_
                                                 (##cdr _e1987720117_)))
                                            (if (gx#stx-pair? _hd1987820120_)
                                                (let ((_e1988020125_
                                                       (gx#stx-e
                                                        _hd1987820120_)))
                                                  (let ((_hd1988120128_
                                                         (##car _e1988020125_))
                                                        (_tl1988220130_
                                                         (##cdr _e1988020125_)))
                                                    (if (gx#identifier?
                                                         _hd1988120128_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd1988120128_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1988220130_)
                        (let ((_e1988320133_ (gx#stx-e _tl1988220130_)))
                          (let ((_hd1988420136_ (##car _e1988320133_))
                                (_tl1988520138_ (##cdr _e1988320133_)))
                            (if (gx#stx-null? _tl1988520138_)
                                (if (gx#stx-null? _tl1986420082_)
                                    ((lambda (_L20141_
                                              _L20142_
                                              _L20143_
                                              _L20144_)
                                       (gxc#identifier-symbol _L20141_))
                                     _hd1988420136_
                                     _hd1987520112_
                                     _tl1985520055_
                                     _arg1986120074_)
                                    (_g1979820040_ _g1980020043_))
                                (_g1979820040_ _g1980020043_))))
                        (_g1979820040_ _g1980020043_))
                    (_g1979820040_ _g1980020043_))
                (_g1979820040_ _g1980020043_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1979820040_
                                                 _g1980020043_))))
                                        (_g1979820040_ _g1980020043_))
                                    (_g1979820040_ _g1980020043_))))
                            (_g1979820040_ _g1980020043_))
                        (_g1979820040_ _g1980020043_))
                    (_g1979820040_ _g1980020043_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1979820040_
                                                     _g1980020043_))))
                                            (_g1979820040_ _g1980020043_))
                                        (_g1979820040_ _g1980020043_))
                                    (_g1979820040_ _g1980020043_))))
                            (_g1979820040_ _g1980020043_))))
                    (_g1979820040_ _g1980020043_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1985620058_
                                         _target1985320053_
                                         '())))))
                                (_g1979820040_ _g1980020043_))
                            (_g1979820040_ _g1980020043_))))
                    (_g1979820040_ _g1980020043_))))
             (_g1979620324_
              (lambda (_g1980020179_)
                (if (gx#stx-pair? _g1980020179_)
                    (let ((_e1980420181_ (gx#stx-e _g1980020179_)))
                      (let ((_hd1980520184_ (##car _e1980420181_))
                            (_tl1980620186_ (##cdr _e1980420181_)))
                        (if (gx#stx-pair/null? _hd1980520184_)
                            (if (fx>= (gx#stx-length _hd1980520184_) '0)
                                (let ((_g24510_
                                       (gx#syntax-split-splice
                                        _hd1980520184_
                                        '0)))
                                  (begin
                                    (let ((_g24511_
                                           (if (##values? _g24510_)
                                               (##vector-length _g24510_)
                                               1)))
                                      (if (not (##fx= _g24511_ 2))
                                          (error "Context expects 2 values"
                                                 _g24511_)))
                                    (let ((_target1980720189_
                                           (##vector-ref _g24510_ 0))
                                          (_tl1980920191_
                                           (##vector-ref _g24510_ 1)))
                                      (if (gx#stx-null? _tl1980920191_)
                                          (letrec ((_loop1981020194_
                                                    (lambda (_hd1980820197_
                                                             _arg1981420199_)
                                                      (if (gx#stx-pair?
                                                           _hd1980820197_)
                                                          (let ((_e1981120202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1980820197_)))
                    (let ((_lp-hd1981220205_ (##car _e1981120202_))
                          (_lp-tl1981320207_ (##cdr _e1981120202_)))
                      (_loop1981020194_
                       _lp-tl1981320207_
                       (cons _lp-hd1981220205_ _arg1981420199_))))
                  (let ((_arg1981520210_ (reverse _arg1981420199_)))
                    (if (gx#stx-pair? _tl1980620186_)
                        (let ((_e1981620213_ (gx#stx-e _tl1980620186_)))
                          (let ((_hd1981720216_ (##car _e1981620213_))
                                (_tl1981820218_ (##cdr _e1981620213_)))
                            (if (gx#stx-pair? _hd1981720216_)
                                (let ((_e1981920221_
                                       (gx#stx-e _hd1981720216_)))
                                  (let ((_hd1982020224_ (##car _e1981920221_))
                                        (_tl1982120226_ (##cdr _e1981920221_)))
                                    (if (gx#identifier? _hd1982020224_)
                                        (if (gx#stx-eq? '%#call _hd1982020224_)
                                            (if (gx#stx-pair? _tl1982120226_)
                                                (let ((_e1982220229_
                                                       (gx#stx-e
                                                        _tl1982120226_)))
                                                  (let ((_hd1982320232_
                                                         (##car _e1982220229_))
                                                        (_tl1982420234_
                                                         (##cdr _e1982220229_)))
                                                    (if (gx#stx-pair?
                                                         _hd1982320232_)
                                                        (let ((_e1982520237_
                                                               (gx#stx-e
                                                                _hd1982320232_)))
                                                          (let ((_hd1982620240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1982520237_))
                        (_tl1982720242_ (##cdr _e1982520237_)))
                    (if (gx#identifier? _hd1982620240_)
                        (if (gx#stx-eq? '%#ref _hd1982620240_)
                            (if (gx#stx-pair? _tl1982720242_)
                                (let ((_e1982820245_
                                       (gx#stx-e _tl1982720242_)))
                                  (let ((_hd1982920248_ (##car _e1982820245_))
                                        (_tl1983020250_ (##cdr _e1982820245_)))
                                    (if (gx#stx-null? _tl1983020250_)
                                        (if (gx#stx-pair/null? _tl1982420234_)
                                            (if (fx>= (gx#stx-length
                                                       _tl1982420234_)
                                                      '0)
                                                (let ((_g24512_
                                                       (gx#syntax-split-splice
                                                        _tl1982420234_
                                                        '0)))
                                                  (begin
                                                    (let ((_g24513_
                                                           (if (##values?
                                                                _g24512_)
                                                               (##vector-length
                                                                _g24512_)
                                                               1)))
                                                      (if (not (##fx= _g24513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g24513_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1983120253_
                                                           (##vector-ref
                                                            _g24512_
                                                            0))
                                                          (_tl1983320255_
                                                           (##vector-ref
                                                            _g24512_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1983320255_)
                                                          (letrec ((_loop1983420258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1983220261_ _xarg1983820263_)
                              (if (gx#stx-pair? _hd1983220261_)
                                  (let ((_e1983520266_
                                         (gx#stx-e _hd1983220261_)))
                                    (let ((_lp-hd1983620269_
                                           (##car _e1983520266_))
                                          (_lp-tl1983720271_
                                           (##cdr _e1983520266_)))
                                      (if (gx#stx-pair? _lp-hd1983620269_)
                                          (let ((_e1984020274_
                                                 (gx#stx-e _lp-hd1983620269_)))
                                            (let ((_hd1984120277_
                                                   (##car _e1984020274_))
                                                  (_tl1984220279_
                                                   (##cdr _e1984020274_)))
                                              (if (gx#identifier?
                                                   _hd1984120277_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd1984120277_)
                                                      (if (gx#stx-pair?
                                                           _tl1984220279_)
                                                          (let ((_e1984320282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1984220279_)))
                    (let ((_hd1984420285_ (##car _e1984320282_))
                          (_tl1984520287_ (##cdr _e1984320282_)))
                      (if (gx#stx-null? _tl1984520287_)
                          (_loop1983420258_
                           _lp-tl1983720271_
                           (cons _hd1984420285_ _xarg1983820263_))
                          (_g1979720176_ _g1980020179_))))
                  (_g1979720176_ _g1980020179_))
              (_g1979720176_ _g1980020179_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1979720176_
                                                   _g1980020179_))))
                                          (_g1979720176_ _g1980020179_))))
                                  (let ((_xarg1983920290_
                                         (reverse _xarg1983820263_)))
                                    (if (gx#stx-null? _tl1981820218_)
                                        ((lambda (_L20293_ _L20294_ _L20295_)
                                           (gxc#identifier-symbol _L20294_))
                                         _xarg1983920290_
                                         _hd1982920248_
                                         _arg1981520210_)
                                        (_g1979720176_ _g1980020179_)))))))
                    (_loop1983420258_ _target1983120253_ '()))
                  (_g1979720176_ _g1980020179_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1979720176_ _g1980020179_))
                                            (_g1979720176_ _g1980020179_))
                                        (_g1979720176_ _g1980020179_))))
                                (_g1979720176_ _g1980020179_))
                            (_g1979720176_ _g1980020179_))
                        (_g1979720176_ _g1980020179_))))
                (_g1979720176_ _g1980020179_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1979720176_ _g1980020179_))
                                            (_g1979720176_ _g1980020179_))
                                        (_g1979720176_ _g1980020179_))))
                                (_g1979720176_ _g1980020179_))))
                        (_g1979720176_ _g1980020179_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1981020194_
                                             _target1980720189_
                                             '()))
                                          (_g1979720176_ _g1980020179_)))))
                                (_g1979720176_ _g1980020179_))
                            (_g1979720176_ _g1980020179_))))
                    (_g1979720176_ _g1980020179_)))))
        (_g1979620324_ _form19795_))))
  (define gxc#lambda-form-arity
    (lambda (_form19599_)
      (let* ((_g1960119615_
              (lambda (_g1960219612_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1960219612_)))
             (_g1960019792_
              (lambda (_g1960219618_)
                (if (gx#stx-pair? _g1960219618_)
                    (let ((_e1960519620_ (gx#stx-e _g1960219618_)))
                      (let ((_hd1960619623_ (##car _e1960519620_))
                            (_tl1960719625_ (##cdr _e1960519620_)))
                        (if (gx#stx-pair? _tl1960719625_)
                            (let ((_e1960819628_ (gx#stx-e _tl1960719625_)))
                              (let ((_hd1960919631_ (##car _e1960819628_))
                                    (_tl1961019633_ (##cdr _e1960819628_)))
                                (if (gx#stx-null? _tl1961019633_)
                                    ((lambda (_L19636_ _L19637_)
                                       (let* ((_g1965219680_
                                               (lambda (_g1965319677_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1965319677_)))
                                              (_g1965119693_
                                               (lambda (_g1965319683_)
                                                 ((lambda (_L19685_)
                                                    (cons '0 '()))
                                                  _g1965319683_)))
                                              (_g1965019742_
                                               (lambda (_g1965319696_)
                                                 (if (gx#stx-pair/null?
                                                      _g1965319696_)
                                                     (if (fx>= (gx#stx-length
                                                                _g1965319696_)
                                                               '0)
                                                         (let ((_g24514_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1965319696_
                         '0)))
                   (begin
                     (let ((_g24515_
                            (if (##values? _g24514_)
                                (##vector-length _g24514_)
                                1)))
                       (if (not (##fx= _g24515_ 2))
                           (error "Context expects 2 values" _g24515_)))
                     (let ((_target1966619698_ (##vector-ref _g24514_ 0))
                           (_tl1966819700_ (##vector-ref _g24514_ 1)))
                       (letrec ((_loop1966919703_
                                 (lambda (_hd1966719706_ _arg1967319708_)
                                   (if (gx#stx-pair? _hd1966719706_)
                                       (let ((_e1967019711_
                                              (gx#stx-e _hd1966719706_)))
                                         (let ((_lp-hd1967119714_
                                                (##car _e1967019711_))
                                               (_lp-tl1967219716_
                                                (##cdr _e1967019711_)))
                                           (_loop1966919703_
                                            _lp-tl1967219716_
                                            (cons _lp-hd1967119714_
                                                  _arg1967319708_))))
                                       (let ((_arg1967419719_
                                              (reverse _arg1967319708_)))
                                         ((lambda (_L19722_ _L19723_)
                                            (cons (length (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g1973419737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1973519739_)
                              (cons _g1973419737_ _g1973519739_))
                            '()
                            _L19723_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                          _tl1966819700_
                                          _arg1967419719_))))))
                         (_loop1966919703_ _target1966619698_ '())))))
                 (_g1965119693_ _g1965319696_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1965119693_
                                                      _g1965319696_))))
                                              (_g1964919789_
                                               (lambda (_g1965319745_)
                                                 (if (gx#stx-pair/null?
                                                      _g1965319745_)
                                                     (if (fx>= (gx#stx-length
                                                                _g1965319745_)
                                                               '0)
                                                         (let ((_g24516_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1965319745_
                         '0)))
                   (begin
                     (let ((_g24517_
                            (if (##values? _g24516_)
                                (##vector-length _g24516_)
                                1)))
                       (if (not (##fx= _g24517_ 2))
                           (error "Context expects 2 values" _g24517_)))
                     (let ((_target1965519747_ (##vector-ref _g24516_ 0))
                           (_tl1965719749_ (##vector-ref _g24516_ 1)))
                       (if (gx#stx-null? _tl1965719749_)
                           (letrec ((_loop1965819752_
                                     (lambda (_hd1965619755_ _arg1966219757_)
                                       (if (gx#stx-pair? _hd1965619755_)
                                           (let ((_e1965919760_
                                                  (gx#stx-e _hd1965619755_)))
                                             (let ((_lp-hd1966019763_
                                                    (##car _e1965919760_))
                                                   (_lp-tl1966119765_
                                                    (##cdr _e1965919760_)))
                                               (_loop1965819752_
                                                _lp-tl1966119765_
                                                (cons _lp-hd1966019763_
                                                      _arg1966219757_))))
                                           (let ((_arg1966319768_
                                                  (reverse _arg1966219757_)))
                                             ((lambda (_L19771_)
                                                (length (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g1978119784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g1978219786_)
                            (cons _g1978119784_ _g1978219786_))
                          '()
                          _L19771_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _arg1966319768_))))))
                             (_loop1965819752_ _target1965519747_ '()))
                           (_g1965019742_ _g1965319745_)))))
                 (_g1965019742_ _g1965319745_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1965019742_
                                                      _g1965319745_)))))
                                         (_g1964919789_ _L19637_)))
                                     _hd1960919631_
                                     _hd1960619623_)
                                    (_g1960119615_ _g1960219618_))))
                            (_g1960119615_ _g1960219618_))))
                    (_g1960119615_ _g1960219618_)))))
        (_g1960019792_ _form19599_))))
  (define gxc#lambda-expr?
    (lambda (_expr19552_)
      (let* ((_g1955519565_
              (lambda (_g1955619562_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1955619562_)))
             (_g1955419572_ (lambda (_g1955619568_) ((lambda () '#f))))
             (_g1955319596_
              (lambda (_g1955619575_)
                (if (gx#stx-pair? _g1955619575_)
                    (let ((_e1955819577_ (gx#stx-e _g1955619575_)))
                      (let ((_hd1955919580_ (##car _e1955819577_))
                            (_tl1956019582_ (##cdr _e1955819577_)))
                        (if (gx#identifier? _hd1955919580_)
                            (if (gx#stx-eq? '%#lambda _hd1955919580_)
                                ((lambda (_L19585_) '#t) _tl1956019582_)
                                (_g1955419572_ _g1955619575_))
                            (_g1955419572_ _g1955619575_))))
                    (_g1955419572_ _g1955619575_)))))
        (_g1955319596_ _expr19552_))))
  (define gxc#case-lambda-expr?
    (lambda (_expr19505_)
      (let* ((_g1950819518_
              (lambda (_g1950919515_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1950919515_)))
             (_g1950719525_ (lambda (_g1950919521_) ((lambda () '#f))))
             (_g1950619549_
              (lambda (_g1950919528_)
                (if (gx#stx-pair? _g1950919528_)
                    (let ((_e1951119530_ (gx#stx-e _g1950919528_)))
                      (let ((_hd1951219533_ (##car _e1951119530_))
                            (_tl1951319535_ (##cdr _e1951119530_)))
                        (if (gx#identifier? _hd1951219533_)
                            (if (gx#stx-eq? '%#case-lambda _hd1951219533_)
                                ((lambda (_L19538_) '#t) _tl1951319535_)
                                (_g1950719525_ _g1950919528_))
                            (_g1950719525_ _g1950919528_))))
                    (_g1950719525_ _g1950919528_)))))
        (_g1950619549_ _expr19505_))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr19374_)
      (let* ((_g1937719407_
              (lambda (_g1937819404_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1937819404_)))
             (_g1937619414_ (lambda (_g1937819410_) ((lambda () '#f))))
             (_g1937519502_
              (lambda (_g1937819417_)
                (if (gx#stx-pair? _g1937819417_)
                    (let ((_e1938219419_ (gx#stx-e _g1937819417_)))
                      (let ((_hd1938319422_ (##car _e1938219419_))
                            (_tl1938419424_ (##cdr _e1938219419_)))
                        (if (gx#identifier? _hd1938319422_)
                            (if (gx#stx-eq? '%#let-values _hd1938319422_)
                                (if (gx#stx-pair? _tl1938419424_)
                                    (let ((_e1938519427_
                                           (gx#stx-e _tl1938419424_)))
                                      (let ((_hd1938619430_
                                             (##car _e1938519427_))
                                            (_tl1938719432_
                                             (##cdr _e1938519427_)))
                                        (if (gx#stx-pair? _hd1938619430_)
                                            (let ((_e1938819435_
                                                   (gx#stx-e _hd1938619430_)))
                                              (let ((_hd1938919438_
                                                     (##car _e1938819435_))
                                                    (_tl1939019440_
                                                     (##cdr _e1938819435_)))
                                                (if (gx#stx-pair?
                                                     _hd1938919438_)
                                                    (let ((_e1939119443_
                                                           (gx#stx-e
                                                            _hd1938919438_)))
                                                      (let ((_hd1939219446_
                                                             (##car _e1939119443_))
                                                            (_tl1939319448_
                                                             (##cdr _e1939119443_)))
                                                        (if (gx#stx-pair?
                                                             _hd1939219446_)
                                                            (let ((_e1939419451_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1939219446_)))
                      (let ((_hd1939519454_ (##car _e1939419451_))
                            (_tl1939619456_ (##cdr _e1939419451_)))
                        (if (gx#stx-null? _tl1939619456_)
                            (if (gx#stx-pair? _tl1939319448_)
                                (let ((_e1939719459_
                                       (gx#stx-e _tl1939319448_)))
                                  (let ((_hd1939819462_ (##car _e1939719459_))
                                        (_tl1939919464_ (##cdr _e1939719459_)))
                                    (if (gx#stx-null? _tl1939919464_)
                                        (if (gx#stx-null? _tl1939019440_)
                                            (if (gx#stx-pair? _tl1938719432_)
                                                (let ((_e1940019467_
                                                       (gx#stx-e
                                                        _tl1938719432_)))
                                                  (let ((_hd1940119470_
                                                         (##car _e1940019467_))
                                                        (_tl1940219472_
                                                         (##cdr _e1940019467_)))
                                                    (if (gx#stx-null?
                                                         _tl1940219472_)
                                                        ((lambda (_L19475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L19476_
                          _L19477_)
                   (if (gx#identifier? _L19477_)
                       (if (gxc#lambda-expr? _L19476_)
                           (gxc#case-lambda-expr? _L19475_)
                           '#f)
                       '#f))
                 _hd1940119470_
                 _hd1939819462_
                 _hd1939519454_)
                (_g1937619414_ _g1937819417_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1937619414_ _g1937819417_))
                                            (_g1937619414_ _g1937819417_))
                                        (_g1937619414_ _g1937819417_))))
                                (_g1937619414_ _g1937819417_))
                            (_g1937619414_ _g1937819417_))))
                    (_g1937619414_ _g1937819417_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1937619414_
                                                     _g1937819417_))))
                                            (_g1937619414_ _g1937819417_))))
                                    (_g1937619414_ _g1937819417_))
                                (_g1937619414_ _g1937819417_))
                            (_g1937619414_ _g1937819417_))))
                    (_g1937619414_ _g1937819417_)))))
        (_g1937519502_ _expr19374_))))
  (define gxc#kw-lambda-expr?
    (lambda (_expr18699_)
      (let* ((_g1870218860_
              (lambda (_g1870318857_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1870318857_)))
             (_g1870118867_ (lambda (_g1870318863_) ((lambda () '#f))))
             (_g1870019371_
              (lambda (_g1870318870_)
                (if (gx#stx-pair? _g1870318870_)
                    (let ((_e1871518872_ (gx#stx-e _g1870318870_)))
                      (let ((_hd1871618875_ (##car _e1871518872_))
                            (_tl1871718877_ (##cdr _e1871518872_)))
                        (if (gx#identifier? _hd1871618875_)
                            (if (gx#stx-eq? '%#let-values _hd1871618875_)
                                (if (gx#stx-pair? _tl1871718877_)
                                    (let ((_e1871818880_
                                           (gx#stx-e _tl1871718877_)))
                                      (let ((_hd1871918883_
                                             (##car _e1871818880_))
                                            (_tl1872018885_
                                             (##cdr _e1871818880_)))
                                        (if (gx#stx-pair? _hd1871918883_)
                                            (let ((_e1872118888_
                                                   (gx#stx-e _hd1871918883_)))
                                              (let ((_hd1872218891_
                                                     (##car _e1872118888_))
                                                    (_tl1872318893_
                                                     (##cdr _e1872118888_)))
                                                (if (gx#stx-pair?
                                                     _hd1872218891_)
                                                    (let ((_e1872418896_
                                                           (gx#stx-e
                                                            _hd1872218891_)))
                                                      (let ((_hd1872518899_
                                                             (##car _e1872418896_))
                                                            (_tl1872618901_
                                                             (##cdr _e1872418896_)))
                                                        (if (gx#stx-pair?
                                                             _hd1872518899_)
                                                            (let ((_e1872718904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1872518899_)))
                      (let ((_hd1872818907_ (##car _e1872718904_))
                            (_tl1872918909_ (##cdr _e1872718904_)))
                        (if (gx#stx-null? _tl1872918909_)
                            (if (gx#stx-pair? _tl1872618901_)
                                (let ((_e1873018912_
                                       (gx#stx-e _tl1872618901_)))
                                  (let ((_hd1873118915_ (##car _e1873018912_))
                                        (_tl1873218917_ (##cdr _e1873018912_)))
                                    (if (gx#stx-pair? _hd1873118915_)
                                        (let ((_e1873318920_
                                               (gx#stx-e _hd1873118915_)))
                                          (let ((_hd1873418923_
                                                 (##car _e1873318920_))
                                                (_tl1873518925_
                                                 (##cdr _e1873318920_)))
                                            (if (gx#identifier? _hd1873418923_)
                                                (if (gx#stx-eq?
                                                     '%#let-values
                                                     _hd1873418923_)
                                                    (if (gx#stx-pair?
                                                         _tl1873518925_)
                                                        (let ((_e1873618928_
                                                               (gx#stx-e
                                                                _tl1873518925_)))
                                                          (let ((_hd1873718931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1873618928_))
                        (_tl1873818933_ (##cdr _e1873618928_)))
                    (if (gx#stx-pair? _hd1873718931_)
                        (let ((_e1873918936_ (gx#stx-e _hd1873718931_)))
                          (let ((_hd1874018939_ (##car _e1873918936_))
                                (_tl1874118941_ (##cdr _e1873918936_)))
                            (if (gx#stx-pair? _hd1874018939_)
                                (let ((_e1874218944_
                                       (gx#stx-e _hd1874018939_)))
                                  (let ((_hd1874318947_ (##car _e1874218944_))
                                        (_tl1874418949_ (##cdr _e1874218944_)))
                                    (if (gx#stx-pair? _hd1874318947_)
                                        (let ((_e1874518952_
                                               (gx#stx-e _hd1874318947_)))
                                          (let ((_hd1874618955_
                                                 (##car _e1874518952_))
                                                (_tl1874718957_
                                                 (##cdr _e1874518952_)))
                                            (if (gx#stx-null? _tl1874718957_)
                                                (if (gx#stx-pair?
                                                     _tl1874418949_)
                                                    (let ((_e1874818960_
                                                           (gx#stx-e
                                                            _tl1874418949_)))
                                                      (let ((_hd1874918963_
                                                             (##car _e1874818960_))
                                                            (_tl1875018965_
                                                             (##cdr _e1874818960_)))
                                                        (if (gx#stx-null?
                                                             _tl1875018965_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1874118941_)
                        (if (gx#stx-pair? _tl1873818933_)
                            (let ((_e1875118968_ (gx#stx-e _tl1873818933_)))
                              (let ((_hd1875218971_ (##car _e1875118968_))
                                    (_tl1875318973_ (##cdr _e1875118968_)))
                                (if (gx#stx-pair? _hd1875218971_)
                                    (let ((_e1875418976_
                                           (gx#stx-e _hd1875218971_)))
                                      (let ((_hd1875518979_
                                             (##car _e1875418976_))
                                            (_tl1875618981_
                                             (##cdr _e1875418976_)))
                                        (if (gx#identifier? _hd1875518979_)
                                            (if (gx#stx-eq?
                                                 '%#lambda
                                                 _hd1875518979_)
                                                (if (gx#stx-pair?
                                                     _tl1875618981_)
                                                    (let ((_e1875718984_
                                                           (gx#stx-e
                                                            _tl1875618981_)))
                                                      (let ((_hd1875818987_
                                                             (##car _e1875718984_))
                                                            (_tl1875918989_
                                                             (##cdr _e1875718984_)))
                                                        (if (gx#stx-pair?
                                                             _hd1875818987_)
                                                            (let ((_e1876018992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1875818987_)))
                      (let ((_hd1876118995_ (##car _e1876018992_))
                            (_tl1876218997_ (##cdr _e1876018992_)))
                        (if (gx#stx-pair? _tl1875918989_)
                            (let ((_e1876319000_ (gx#stx-e _tl1875918989_)))
                              (let ((_hd1876419003_ (##car _e1876319000_))
                                    (_tl1876519005_ (##cdr _e1876319000_)))
                                (if (gx#stx-pair? _hd1876419003_)
                                    (let ((_e1876619008_
                                           (gx#stx-e _hd1876419003_)))
                                      (let ((_hd1876719011_
                                             (##car _e1876619008_))
                                            (_tl1876819013_
                                             (##cdr _e1876619008_)))
                                        (if (gx#identifier? _hd1876719011_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd1876719011_)
                                                (if (gx#stx-pair?
                                                     _tl1876819013_)
                                                    (let ((_e1876919016_
                                                           (gx#stx-e
                                                            _tl1876819013_)))
                                                      (let ((_hd1877019019_
                                                             (##car _e1876919016_))
                                                            (_tl1877119021_
                                                             (##cdr _e1876919016_)))
                                                        (if (gx#stx-pair?
                                                             _hd1877019019_)
                                                            (let ((_e1877219024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1877019019_)))
                      (let ((_hd1877319027_ (##car _e1877219024_))
                            (_tl1877419029_ (##cdr _e1877219024_)))
                        (if (gx#identifier? _hd1877319027_)
                            (if (gx#stx-eq? '%#ref _hd1877319027_)
                                (if (gx#stx-pair? _tl1877419029_)
                                    (let ((_e1877519032_
                                           (gx#stx-e _tl1877419029_)))
                                      (let ((_hd1877619035_
                                             (##car _e1877519032_))
                                            (_tl1877719037_
                                             (##cdr _e1877519032_)))
                                        (if (gx#stx-null? _tl1877719037_)
                                            (if (gx#stx-pair? _tl1877119021_)
                                                (let ((_e1877819040_
                                                       (gx#stx-e
                                                        _tl1877119021_)))
                                                  (let ((_hd1877919043_
                                                         (##car _e1877819040_))
                                                        (_tl1878019045_
                                                         (##cdr _e1877819040_)))
                                                    (if (gx#stx-pair?
                                                         _hd1877919043_)
                                                        (let ((_e1878119048_
                                                               (gx#stx-e
                                                                _hd1877919043_)))
                                                          (let ((_hd1878219051_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1878119048_))
                        (_tl1878319053_ (##cdr _e1878119048_)))
                    (if (gx#identifier? _hd1878219051_)
                        (if (gx#stx-eq? '%#ref _hd1878219051_)
                            (if (gx#stx-pair? _tl1878319053_)
                                (let ((_e1878419056_
                                       (gx#stx-e _tl1878319053_)))
                                  (let ((_hd1878519059_ (##car _e1878419056_))
                                        (_tl1878619061_ (##cdr _e1878419056_)))
                                    (if (gx#stx-null? _tl1878619061_)
                                        (if (gx#stx-pair? _tl1878019045_)
                                            (let ((_e1878719064_
                                                   (gx#stx-e _tl1878019045_)))
                                              (let ((_hd1878819067_
                                                     (##car _e1878719064_))
                                                    (_tl1878919069_
                                                     (##cdr _e1878719064_)))
                                                (if (gx#stx-pair?
                                                     _hd1878819067_)
                                                    (let ((_e1879019072_
                                                           (gx#stx-e
                                                            _hd1878819067_)))
                                                      (let ((_hd1879119075_
                                                             (##car _e1879019072_))
                                                            (_tl1879219077_
                                                             (##cdr _e1879019072_)))
                                                        (if (gx#identifier?
                                                             _hd1879119075_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd1879119075_)
                        (if (gx#stx-pair? _tl1879219077_)
                            (let ((_e1879319080_ (gx#stx-e _tl1879219077_)))
                              (let ((_hd1879419083_ (##car _e1879319080_))
                                    (_tl1879519085_ (##cdr _e1879319080_)))
                                (if (gx#stx-null? _tl1879519085_)
                                    (if (gx#stx-null? _tl1876519005_)
                                        (if (gx#stx-null? _tl1875318973_)
                                            (if (gx#stx-null? _tl1873218917_)
                                                (if (gx#stx-null?
                                                     _tl1872318893_)
                                                    (if (gx#stx-pair?
                                                         _tl1872018885_)
                                                        (let ((_e1879619088_
                                                               (gx#stx-e
                                                                _tl1872018885_)))
                                                          (let ((_hd1879719091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1879619088_))
                        (_tl1879819093_ (##cdr _e1879619088_)))
                    (if (gx#stx-pair? _hd1879719091_)
                        (let ((_e1879919096_ (gx#stx-e _hd1879719091_)))
                          (let ((_hd1880019099_ (##car _e1879919096_))
                                (_tl1880119101_ (##cdr _e1879919096_)))
                            (if (gx#identifier? _hd1880019099_)
                                (if (gx#stx-eq? '%#lambda _hd1880019099_)
                                    (if (gx#stx-pair? _tl1880119101_)
                                        (let ((_e1880219104_
                                               (gx#stx-e _tl1880119101_)))
                                          (let ((_hd1880319107_
                                                 (##car _e1880219104_))
                                                (_tl1880419109_
                                                 (##cdr _e1880219104_)))
                                            (if (gx#stx-pair? _tl1880419109_)
                                                (let ((_e1880519112_
                                                       (gx#stx-e
                                                        _tl1880419109_)))
                                                  (let ((_hd1880619115_
                                                         (##car _e1880519112_))
                                                        (_tl1880719117_
                                                         (##cdr _e1880519112_)))
                                                    (if (gx#stx-pair?
                                                         _hd1880619115_)
                                                        (let ((_e1880819120_
                                                               (gx#stx-e
                                                                _hd1880619115_)))
                                                          (let ((_hd1880919123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1880819120_))
                        (_tl1881019125_ (##cdr _e1880819120_)))
                    (if (gx#identifier? _hd1880919123_)
                        (if (gx#stx-eq? '%#call _hd1880919123_)
                            (if (gx#stx-pair? _tl1881019125_)
                                (let ((_e1881119128_
                                       (gx#stx-e _tl1881019125_)))
                                  (let ((_hd1881219131_ (##car _e1881119128_))
                                        (_tl1881319133_ (##cdr _e1881119128_)))
                                    (if (gx#stx-pair? _hd1881219131_)
                                        (let ((_e1881419136_
                                               (gx#stx-e _hd1881219131_)))
                                          (let ((_hd1881519139_
                                                 (##car _e1881419136_))
                                                (_tl1881619141_
                                                 (##cdr _e1881419136_)))
                                            (if (gx#identifier? _hd1881519139_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _hd1881519139_)
                                                    (if (gx#stx-pair?
                                                         _tl1881619141_)
                                                        (let ((_e1881719144_
                                                               (gx#stx-e
                                                                _tl1881619141_)))
                                                          (let ((_hd1881819147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1881719144_))
                        (_tl1881919149_ (##cdr _e1881719144_)))
                    (if (gx#stx-null? _tl1881919149_)
                        (if (gx#stx-pair? _tl1881319133_)
                            (let ((_e1882019152_ (gx#stx-e _tl1881319133_)))
                              (let ((_hd1882119155_ (##car _e1882019152_))
                                    (_tl1882219157_ (##cdr _e1882019152_)))
                                (if (gx#stx-pair? _hd1882119155_)
                                    (let ((_e1882319160_
                                           (gx#stx-e _hd1882119155_)))
                                      (let ((_hd1882419163_
                                             (##car _e1882319160_))
                                            (_tl1882519165_
                                             (##cdr _e1882319160_)))
                                        (if (gx#identifier? _hd1882419163_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1882419163_)
                                                (if (gx#stx-pair?
                                                     _tl1882519165_)
                                                    (let ((_e1882619168_
                                                           (gx#stx-e
                                                            _tl1882519165_)))
                                                      (let ((_hd1882719171_
                                                             (##car _e1882619168_))
                                                            (_tl1882819173_
                                                             (##cdr _e1882619168_)))
                                                        (if (gx#stx-null?
                                                             _tl1882819173_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1882219157_)
                        (let ((_e1882919176_ (gx#stx-e _tl1882219157_)))
                          (let ((_hd1883019179_ (##car _e1882919176_))
                                (_tl1883119181_ (##cdr _e1882919176_)))
                            (if (gx#stx-pair? _hd1883019179_)
                                (let ((_e1883219184_
                                       (gx#stx-e _hd1883019179_)))
                                  (let ((_hd1883319187_ (##car _e1883219184_))
                                        (_tl1883419189_ (##cdr _e1883219184_)))
                                    (if (gx#identifier? _hd1883319187_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd1883319187_)
                                            (if (gx#stx-pair? _tl1883419189_)
                                                (let ((_e1883519192_
                                                       (gx#stx-e
                                                        _tl1883419189_)))
                                                  (let ((_hd1883619195_
                                                         (##car _e1883519192_))
                                                        (_tl1883719197_
                                                         (##cdr _e1883519192_)))
                                                    (if (gx#stx-null?
                                                         _tl1883719197_)
                                                        (if (gx#stx-pair?
                                                             _tl1883119181_)
                                                            (let ((_e1883819200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1883119181_)))
                      (let ((_hd1883919203_ (##car _e1883819200_))
                            (_tl1884019205_ (##cdr _e1883819200_)))
                        (if (gx#stx-pair? _hd1883919203_)
                            (let ((_e1884119208_ (gx#stx-e _hd1883919203_)))
                              (let ((_hd1884219211_ (##car _e1884119208_))
                                    (_tl1884319213_ (##cdr _e1884119208_)))
                                (if (gx#identifier? _hd1884219211_)
                                    (if (gx#stx-eq? '%#ref _hd1884219211_)
                                        (if (gx#stx-pair? _tl1884319213_)
                                            (let ((_e1884419216_
                                                   (gx#stx-e _tl1884319213_)))
                                              (let ((_hd1884519219_
                                                     (##car _e1884419216_))
                                                    (_tl1884619221_
                                                     (##cdr _e1884419216_)))
                                                (if (gx#stx-null?
                                                     _tl1884619221_)
                                                    (if (gx#stx-pair?
                                                         _tl1884019205_)
                                                        (let ((_e1884719224_
                                                               (gx#stx-e
                                                                _tl1884019205_)))
                                                          (let ((_hd1884819227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1884719224_))
                        (_tl1884919229_ (##cdr _e1884719224_)))
                    (if (gx#stx-pair? _hd1884819227_)
                        (let ((_e1885019232_ (gx#stx-e _hd1884819227_)))
                          (let ((_hd1885119235_ (##car _e1885019232_))
                                (_tl1885219237_ (##cdr _e1885019232_)))
                            (if (gx#identifier? _hd1885119235_)
                                (if (gx#stx-eq? '%#ref _hd1885119235_)
                                    (if (gx#stx-pair? _tl1885219237_)
                                        (let ((_e1885319240_
                                               (gx#stx-e _tl1885219237_)))
                                          (let ((_hd1885419243_
                                                 (##car _e1885319240_))
                                                (_tl1885519245_
                                                 (##cdr _e1885319240_)))
                                            (if (gx#stx-null? _tl1885519245_)
                                                (if (gx#stx-null?
                                                     _tl1884919229_)
                                                    (if (gx#stx-null?
                                                         _tl1880719117_)
                                                        (if (gx#stx-null?
                                                             _tl1879819093_)
                                                            ((lambda (_L19248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L19249_
                              _L19250_
                              _L19251_
                              _L19252_
                              _L19253_
                              _L19254_
                              _L19255_
                              _L19256_
                              _L19257_
                              _L19258_)
                       (if (gxc#runtime-identifier=? _L19255_ 'apply)
                           (if (gxc#runtime-identifier=? _L19251_ 'apply)
                               (if (gxc#runtime-identifier=?
                                    _L19250_
                                    'keyword-dispatch)
                                   (if (gx#free-identifier=? _L19258_ _L19249_)
                                       (if (gx#free-identifier=?
                                            _L19257_
                                            _L19254_)
                                           (if (gx#free-identifier=?
                                                _L19252_
                                                _L19248_)
                                               (gx#free-identifier=?
                                                _L19256_
                                                _L19253_)
                                               '#f)
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f))
                     _hd1885419243_
                     _hd1884519219_
                     _hd1882719171_
                     _hd1881819147_
                     _hd1880319107_
                     _hd1879419083_
                     _hd1878519059_
                     _hd1877619035_
                     _hd1876118995_
                     _hd1874618955_
                     _hd1872818907_)
                    (_g1870118867_ _g1870318870_))
                (_g1870118867_ _g1870318870_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1870118867_
                                                     _g1870318870_))
                                                (_g1870118867_
                                                 _g1870318870_))))
                                        (_g1870118867_ _g1870318870_))
                                    (_g1870118867_ _g1870318870_))
                                (_g1870118867_ _g1870318870_))))
                        (_g1870118867_ _g1870318870_))))
                (_g1870118867_ _g1870318870_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1870118867_
                                                     _g1870318870_))))
                                            (_g1870118867_ _g1870318870_))
                                        (_g1870118867_ _g1870318870_))
                                    (_g1870118867_ _g1870318870_))))
                            (_g1870118867_ _g1870318870_))))
                    (_g1870118867_ _g1870318870_))
                (_g1870118867_ _g1870318870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1870118867_ _g1870318870_))
                                            (_g1870118867_ _g1870318870_))
                                        (_g1870118867_ _g1870318870_))))
                                (_g1870118867_ _g1870318870_))))
                        (_g1870118867_ _g1870318870_))
                    (_g1870118867_ _g1870318870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1870118867_
                                                     _g1870318870_))
                                                (_g1870118867_ _g1870318870_))
                                            (_g1870118867_ _g1870318870_))))
                                    (_g1870118867_ _g1870318870_))))
                            (_g1870118867_ _g1870318870_))
                        (_g1870118867_ _g1870318870_))))
                (_g1870118867_ _g1870318870_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1870118867_
                                                     _g1870318870_))
                                                (_g1870118867_
                                                 _g1870318870_))))
                                        (_g1870118867_ _g1870318870_))))
                                (_g1870118867_ _g1870318870_))
                            (_g1870118867_ _g1870318870_))
                        (_g1870118867_ _g1870318870_))))
                (_g1870118867_ _g1870318870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1870118867_
                                                 _g1870318870_))))
                                        (_g1870118867_ _g1870318870_))
                                    (_g1870118867_ _g1870318870_))
                                (_g1870118867_ _g1870318870_))))
                        (_g1870118867_ _g1870318870_))))
                (_g1870118867_ _g1870318870_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1870118867_
                                                     _g1870318870_))
                                                (_g1870118867_ _g1870318870_))
                                            (_g1870118867_ _g1870318870_))
                                        (_g1870118867_ _g1870318870_))
                                    (_g1870118867_ _g1870318870_))))
                            (_g1870118867_ _g1870318870_))
                        (_g1870118867_ _g1870318870_))
                    (_g1870118867_ _g1870318870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1870118867_
                                                     _g1870318870_))))
                                            (_g1870118867_ _g1870318870_))
                                        (_g1870118867_ _g1870318870_))))
                                (_g1870118867_ _g1870318870_))
                            (_g1870118867_ _g1870318870_))
                        (_g1870118867_ _g1870318870_))))
                (_g1870118867_ _g1870318870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1870118867_ _g1870318870_))
                                            (_g1870118867_ _g1870318870_))))
                                    (_g1870118867_ _g1870318870_))
                                (_g1870118867_ _g1870318870_))
                            (_g1870118867_ _g1870318870_))))
                    (_g1870118867_ _g1870318870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1870118867_
                                                     _g1870318870_))
                                                (_g1870118867_ _g1870318870_))
                                            (_g1870118867_ _g1870318870_))))
                                    (_g1870118867_ _g1870318870_))))
                            (_g1870118867_ _g1870318870_))))
                    (_g1870118867_ _g1870318870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1870118867_
                                                     _g1870318870_))
                                                (_g1870118867_ _g1870318870_))
                                            (_g1870118867_ _g1870318870_))))
                                    (_g1870118867_ _g1870318870_))))
                            (_g1870118867_ _g1870318870_))
                        (_g1870118867_ _g1870318870_))
                    (_g1870118867_ _g1870318870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1870118867_
                                                     _g1870318870_))
                                                (_g1870118867_
                                                 _g1870318870_))))
                                        (_g1870118867_ _g1870318870_))))
                                (_g1870118867_ _g1870318870_))))
                        (_g1870118867_ _g1870318870_))))
                (_g1870118867_ _g1870318870_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1870118867_
                                                     _g1870318870_))
                                                (_g1870118867_
                                                 _g1870318870_))))
                                        (_g1870118867_ _g1870318870_))))
                                (_g1870118867_ _g1870318870_))
                            (_g1870118867_ _g1870318870_))))
                    (_g1870118867_ _g1870318870_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1870118867_
                                                     _g1870318870_))))
                                            (_g1870118867_ _g1870318870_))))
                                    (_g1870118867_ _g1870318870_))
                                (_g1870118867_ _g1870318870_))
                            (_g1870118867_ _g1870318870_))))
                    (_g1870118867_ _g1870318870_)))))
        (_g1870019371_ _expr18699_))))
  (begin
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx18441_ _id18442_ _clauses18443_ _gensym?18444_)
        (let _lp18446_ ((_rest18448_ _clauses18443_)
                        (_ids18449_ '())
                        (_impls18450_ '())
                        (_clauses18451_ '()))
          (let* ((_rest1845218460_ _rest18448_)
                 (_else1845418468_
                  (lambda ()
                    (values (reverse _ids18449_)
                            (reverse _impls18450_)
                            (reverse _clauses18451_))))
                 (_K1845618673_
                  (lambda (_rest18471_ _clause18472_)
                    (if (gxc#dispatch-lambda-form? _clause18472_)
                        (_lp18446_
                         _rest18471_
                         _ids18449_
                         _impls18450_
                         (cons _clause18472_ _clauses18451_))
                        (let* ((_g1847418485_
                                (lambda (_g1847518482_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g1847518482_)))
                               (_g1847318670_
                                (lambda (_g1847518488_)
                                  (if (gx#stx-pair? _g1847518488_)
                                      (let ((_e1847818490_
                                             (gx#stx-e _g1847518488_)))
                                        (let ((_hd1847918493_
                                               (##car _e1847818490_))
                                              (_tl1848018495_
                                               (##cdr _e1847818490_)))
                                          ((lambda (_L18498_ _L18499_)
                                             (let* ((_id18516_
                                                     (make-symbol
                                                      (gx#stx-e _id18442_)
                                                      '"__"
                                                      (length _clauses18451_)
                                                      (if _gensym?18444_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id18518_
                                                     (gx#core-quote-syntax__1
                                                      _id18516_
                                                      (gx#stx-source
                                                       _stx18441_)))
                                                    (_impl18520_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L18499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L18498_))
              _stx18441_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause18667_
                                                     (let* ((_g1852418552_
                                                             (lambda (_g1852518549_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g1852518549_)))
                                                            (_g1852318568_
                                                             (lambda (_g1852518555_)
                                                               ((lambda (_L18557_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L18499_
                                (cons (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'apply '()))
                                                   (cons (cons '%#ref
                                                               (cons _id18518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                             (cons _L18557_ '()))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx18441_)
                                      '())))
                        _g1852518555_)))
                    (_g1852218617_
                     (lambda (_g1852518571_)
                       (if (gx#stx-pair/null? _g1852518571_)
                           (if (fx>= (gx#stx-length _g1852518571_) '0)
                               (let ((_g24518_
                                      (gx#syntax-split-splice
                                       _g1852518571_
                                       '0)))
                                 (begin
                                   (let ((_g24519_
                                          (if (##values? _g24518_)
                                              (##vector-length _g24518_)
                                              1)))
                                     (if (not (##fx= _g24519_ 2))
                                         (error "Context expects 2 values"
                                                _g24519_)))
                                   (let ((_target1853818573_
                                          (##vector-ref _g24518_ 0))
                                         (_tl1854018575_
                                          (##vector-ref _g24518_ 1)))
                                     (letrec ((_loop1854118578_
                                               (lambda (_hd1853918581_
                                                        _arg1854518583_)
                                                 (if (gx#stx-pair?
                                                      _hd1853918581_)
                                                     (let ((_e1854218586_
                                                            (gx#stx-e
                                                             _hd1853918581_)))
                                                       (let ((_lp-hd1854318589_
                                                              (##car _e1854218586_))
                                                             (_lp-tl1854418591_
                                                              (##cdr _e1854218586_)))
                                                         (_loop1854118578_
                                                          _lp-tl1854418591_
                                                          (cons _lp-hd1854318589_
                                                                _arg1854518583_))))
                                                     (let ((_arg1854618594_
                                                            (reverse _arg1854518583_)))
                                                       ((lambda (_L18597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L18598_)
                  (cons _L18499_
                        (cons (gxc#xform-wrap-source
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id18518_ '()))
                                                 (foldr1 cons
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#ref)
                             (cons _L18597_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g1860918612_ _g1861018614_)
                             (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                         (cons _g1860918612_ '()))
                                   _g1861018614_))
                           '()
                           _L18598_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx18441_)
                              '())))
                _tl1854018575_
                _arg1854618594_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop1854118578_
                                        _target1853818573_
                                        '())))))
                               (_g1852318568_ _g1852518571_))
                           (_g1852318568_ _g1852518571_))))
                    (_g1852118664_
                     (lambda (_g1852518620_)
                       (if (gx#stx-pair/null? _g1852518620_)
                           (if (fx>= (gx#stx-length _g1852518620_) '0)
                               (let ((_g24520_
                                      (gx#syntax-split-splice
                                       _g1852518620_
                                       '0)))
                                 (begin
                                   (let ((_g24521_
                                          (if (##values? _g24520_)
                                              (##vector-length _g24520_)
                                              1)))
                                     (if (not (##fx= _g24521_ 2))
                                         (error "Context expects 2 values"
                                                _g24521_)))
                                   (let ((_target1852718622_
                                          (##vector-ref _g24520_ 0))
                                         (_tl1852918624_
                                          (##vector-ref _g24520_ 1)))
                                     (if (gx#stx-null? _tl1852918624_)
                                         (letrec ((_loop1853018627_
                                                   (lambda (_hd1852818630_
                                                            _arg1853418632_)
                                                     (if (gx#stx-pair?
                                                          _hd1852818630_)
                                                         (let ((_e1853118635_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1852818630_)))
                   (let ((_lp-hd1853218638_ (##car _e1853118635_))
                         (_lp-tl1853318640_ (##cdr _e1853118635_)))
                     (_loop1853018627_
                      _lp-tl1853318640_
                      (cons _lp-hd1853218638_ _arg1853418632_))))
                 (let ((_arg1853518643_ (reverse _arg1853418632_)))
                   ((lambda (_L18646_)
                      (cons _L18499_
                            (cons (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _id18518_ '()))
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g1865618659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1865718661_)
                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                               (cons _g1865618659_ '()))
                         _g1865718661_))
                 '()
                 _L18646_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _stx18441_)
                                  '())))
                    _arg1853518643_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1853018627_
                                            _target1852718622_
                                            '()))
                                         (_g1852218617_ _g1852518620_)))))
                               (_g1852218617_ _g1852518620_))
                           (_g1852218617_ _g1852518620_)))))
               (_g1852118664_ _L18499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp18446_
                                                _rest18471_
                                                (cons _id18518_ _ids18449_)
                                                (cons _impl18520_ _impls18450_)
                                                (cons _clause18667_
                                                      _clauses18451_))))
                                           _tl1848018495_
                                           _hd1847918493_)))
                                      (_g1847418485_ _g1847518488_)))))
                          (_g1847318670_ _clause18472_))))))
            (if (##pair? _rest1845218460_)
                (let ((_hd1845718676_ (##car _rest1845218460_))
                      (_tl1845818678_ (##cdr _rest1845218460_)))
                  (let* ((_clause18681_ _hd1845718676_)
                         (_rest18683_ _tl1845818678_))
                    (_K1845618673_ _rest18683_ _clause18681_)))
                (_else1845418468_))))))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx18688_ _id18689_ _clauses18690_)
          (let ((_gensym?18692_ '#f))
            (gxc#lift-case-lambda-clauses__%
             _stx18688_
             _id18689_
             _clauses18690_
             _gensym?18692_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g24523_
          (let ((_g24522_ (length _g24523_)))
            (cond ((##fx= _g24522_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g24523_))
                  ((##fx= _g24522_ 4)
                   (apply gxc#lift-case-lambda-clauses__% _g24523_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g24523_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx17718_)
      (letrec ((_case-lambda-clause-def17720_
                (lambda (_id18437_ _impl18438_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id18437_ '())
                               (cons (gxc#compile-e _impl18438_) '())))
                   _stx17718_)))
               (_opt-lambda-dispatch-name17721_
                (lambda (_id18433_)
                  (if (uninterned-symbol? _id18433_)
                      (let ((_str18435_ (symbol->string _id18433_)))
                        (if (string-prefix? _str18435_ '"opt-lambda")
                            '"%"
                            _id18433_))
                      _id18433_)))
               (_kw-lambda-dispatch-name17722_
                (lambda (_id18428_ _name18429_)
                  (if (uninterned-symbol? _id18428_)
                      (let ((_str18431_ (symbol->string _id18428_)))
                        (if (string-prefix? _str18431_ '"kw-lambda")
                            _name18429_
                            _id18428_))
                      _id18428_))))
        (let* ((_g1772717786_
                (lambda (_g1772817783_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1772817783_)))
               (_g1772617832_
                (lambda (_g1772817789_)
                  (if (gx#stx-pair? _g1772817789_)
                      (let ((_e1777317791_ (gx#stx-e _g1772817789_)))
                        (let ((_hd1777417794_ (##car _e1777317791_))
                              (_tl1777517796_ (##cdr _e1777317791_)))
                          (if (gx#stx-pair? _tl1777517796_)
                              (let ((_e1777617799_ (gx#stx-e _tl1777517796_)))
                                (let ((_hd1777717802_ (##car _e1777617799_))
                                      (_tl1777817804_ (##cdr _e1777617799_)))
                                  (if (gx#stx-pair? _tl1777817804_)
                                      (let ((_e1777917807_
                                             (gx#stx-e _tl1777817804_)))
                                        (let ((_hd1778017810_
                                               (##car _e1777917807_))
                                              (_tl1778117812_
                                               (##cdr _e1777917807_)))
                                          (if (gx#stx-null? _tl1778117812_)
                                              ((lambda (_L17815_ _L17816_)
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L17816_
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L17815_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx17718_))
                                               _hd1778017810_
                                               _hd1777717802_)
                                              (_g1772717786_ _g1772817789_))))
                                      (_g1772717786_ _g1772817789_))))
                              (_g1772717786_ _g1772817789_))))
                      (_g1772717786_ _g1772817789_))))
               (_g1772518118_
                (lambda (_g1772817835_)
                  (if (gx#stx-pair? _g1772817835_)
                      (let ((_e1775917837_ (gx#stx-e _g1772817835_)))
                        (let ((_hd1776017840_ (##car _e1775917837_))
                              (_tl1776117842_ (##cdr _e1775917837_)))
                          (if (gx#stx-pair? _tl1776117842_)
                              (let ((_e1776217845_ (gx#stx-e _tl1776117842_)))
                                (let ((_hd1776317848_ (##car _e1776217845_))
                                      (_tl1776417850_ (##cdr _e1776217845_)))
                                  (if (gx#stx-pair? _hd1776317848_)
                                      (let ((_e1776517853_
                                             (gx#stx-e _hd1776317848_)))
                                        (let ((_hd1776617856_
                                               (##car _e1776517853_))
                                              (_tl1776717858_
                                               (##cdr _e1776517853_)))
                                          (if (gx#stx-null? _tl1776717858_)
                                              (if (gx#stx-pair? _tl1776417850_)
                                                  (let ((_e1776817861_
                                                         (gx#stx-e
                                                          _tl1776417850_)))
                                                    (let ((_hd1776917864_
                                                           (##car _e1776817861_))
                                                          (_tl1777017866_
                                                           (##cdr _e1776817861_)))
                                                      (if (gx#stx-null?
                                                           _tl1777017866_)
                                                          ((lambda (_L17869_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L17870_)
                     (if (if (gx#identifier? _L17870_)
                             (gxc#kw-lambda-expr? _L17869_)
                             '#f)
                         (let* ((_g1788617939_
                                 (lambda (_g1788717936_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1788717936_)))
                                (_g1788518115_
                                 (lambda (_g1788717942_)
                                   (if (gx#stx-pair? _g1788717942_)
                                       (let ((_e1789317944_
                                              (gx#stx-e _g1788717942_)))
                                         (let ((_hd1789417947_
                                                (##car _e1789317944_))
                                               (_tl1789517949_
                                                (##cdr _e1789317944_)))
                                           (if (gx#stx-pair? _tl1789517949_)
                                               (let ((_e1789617952_
                                                      (gx#stx-e
                                                       _tl1789517949_)))
                                                 (let ((_hd1789717955_
                                                        (##car _e1789617952_))
                                                       (_tl1789817957_
                                                        (##cdr _e1789617952_)))
                                                   (if (gx#stx-pair?
                                                        _hd1789717955_)
                                                       (let ((_e1789917960_
                                                              (gx#stx-e
                                                               _hd1789717955_)))
                                                         (let ((_hd1790017963_
                                                                (##car _e1789917960_))
                                                               (_tl1790117965_
                                                                (##cdr _e1789917960_)))
                                                           (if (gx#stx-pair?
                                                                _hd1790017963_)
                                                               (let ((_e1790217968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1790017963_)))
                         (let ((_hd1790317971_ (##car _e1790217968_))
                               (_tl1790417973_ (##cdr _e1790217968_)))
                           (if (gx#stx-pair? _hd1790317971_)
                               (let ((_e1790517976_ (gx#stx-e _hd1790317971_)))
                                 (let ((_hd1790617979_ (##car _e1790517976_))
                                       (_tl1790717981_ (##cdr _e1790517976_)))
                                   (if (gx#stx-null? _tl1790717981_)
                                       (if (gx#stx-pair? _tl1790417973_)
                                           (let ((_e1790817984_
                                                  (gx#stx-e _tl1790417973_)))
                                             (let ((_hd1790917987_
                                                    (##car _e1790817984_))
                                                   (_tl1791017989_
                                                    (##cdr _e1790817984_)))
                                               (if (gx#stx-pair?
                                                    _hd1790917987_)
                                                   (let ((_e1791117992_
                                                          (gx#stx-e
                                                           _hd1790917987_)))
                                                     (let ((_hd1791217995_
                                                            (##car _e1791117992_))
                                                           (_tl1791317997_
                                                            (##cdr _e1791117992_)))
                                                       (if (gx#stx-pair?
                                                            _tl1791317997_)
                                                           (let ((_e1791418000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1791317997_)))
                     (let ((_hd1791518003_ (##car _e1791418000_))
                           (_tl1791618005_ (##cdr _e1791418000_)))
                       (if (gx#stx-pair? _hd1791518003_)
                           (let ((_e1791718008_ (gx#stx-e _hd1791518003_)))
                             (let ((_hd1791818011_ (##car _e1791718008_))
                                   (_tl1791918013_ (##cdr _e1791718008_)))
                               (if (gx#stx-pair? _hd1791818011_)
                                   (let ((_e1792018016_
                                          (gx#stx-e _hd1791818011_)))
                                     (let ((_hd1792118019_
                                            (##car _e1792018016_))
                                           (_tl1792218021_
                                            (##cdr _e1792018016_)))
                                       (if (gx#stx-pair? _hd1792118019_)
                                           (let ((_e1792318024_
                                                  (gx#stx-e _hd1792118019_)))
                                             (let ((_hd1792418027_
                                                    (##car _e1792318024_))
                                                   (_tl1792518029_
                                                    (##cdr _e1792318024_)))
                                               (if (gx#stx-null?
                                                    _tl1792518029_)
                                                   (if (gx#stx-pair?
                                                        _tl1792218021_)
                                                       (let ((_e1792618032_
                                                              (gx#stx-e
                                                               _tl1792218021_)))
                                                         (let ((_hd1792718035_
                                                                (##car _e1792618032_))
                                                               (_tl1792818037_
                                                                (##cdr _e1792618032_)))
                                                           (if (gx#stx-null?
                                                                _tl1792818037_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl1791918013_)
                           (if (gx#stx-pair? _tl1791618005_)
                               (let ((_e1792918040_ (gx#stx-e _tl1791618005_)))
                                 (let ((_hd1793018043_ (##car _e1792918040_))
                                       (_tl1793118045_ (##cdr _e1792918040_)))
                                   (if (gx#stx-null? _tl1793118045_)
                                       (if (gx#stx-null? _tl1791017989_)
                                           (if (gx#stx-null? _tl1790117965_)
                                               (if (gx#stx-pair?
                                                    _tl1789817957_)
                                                   (let ((_e1793218048_
                                                          (gx#stx-e
                                                           _tl1789817957_)))
                                                     (let ((_hd1793318051_
                                                            (##car _e1793218048_))
                                                           (_tl1793418053_
                                                            (##cdr _e1793218048_)))
                                                       (if (gx#stx-null?
                                                            _tl1793418053_)
                                                           ((lambda (_L18056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L18057_
                             _L18058_
                             _L18059_
                             _L18060_)
                      (let* ((_get-kws-id18100_
                              (make-symbol
                               (gx#stx-e _L17870_)
                               '"__"
                               (_kw-lambda-dispatch-name17722_
                                (gx#stx-e _L18060_)
                                '"@")))
                             (_get-kws-id18102_
                              (gx#core-quote-syntax__1
                               _get-kws-id18100_
                               (gx#stx-source _stx17718_)))
                             (_main-id18104_
                              (make-symbol
                               (gx#stx-e _L17870_)
                               '"__"
                               (_kw-lambda-dispatch-name17722_
                                (gx#stx-e _L18059_)
                                '"%")))
                             (_main-id18106_
                              (gx#core-quote-syntax__1
                               _main-id18104_
                               (gx#stx-source _stx17718_)))
                             (_g24524_
                              (gx#core-bind-runtime!__0 _get-kws-id18102_))
                             (_g24525_
                              (gx#core-bind-runtime!__0 _main-id18106_))
                             (_new-kw-dispatch18110_
                              (gxc#apply-expression-subst
                               _L18056_
                               _L18060_
                               _get-kws-id18102_))
                             (_new-get-kws18112_
                              (gxc#apply-expression-subst
                               _L18057_
                               _L18059_
                               _main-id18106_)))
                        (begin
                          (gxc#verbose
                           '"lift kw-lambda dispatch "
                           (gxc#identifier-symbol _L17870_)
                           '" => "
                           (gxc#identifier-symbol _get-kws-id18102_)
                           '" => "
                           (gxc#identifier-symbol _main-id18106_))
                          (gxc#xform-wrap-source
                           (cons '%#begin
                                 (cons (gxc#lift-top-lambda-define-values%
                                        (gxc#xform-wrap-source
                                         (cons '%#define-values
                                               (cons (cons _main-id18106_ '())
                                                     (cons _L18058_ '())))
                                         _stx17718_))
                                       (cons (gxc#xform-wrap-source
                                              (cons '%#define-values
                                                    (cons (cons _get-kws-id18102_
                                                                '())
                                                          (cons _new-get-kws18112_
                                                                '())))
                                              _stx17718_)
                                             (cons (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons (cons _L17870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _new-kw-dispatch18110_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx17718_)
                                                   '()))))
                           _stx17718_))))
                    _hd1793318051_
                    _hd1793018043_
                    _hd1792718035_
                    _hd1792418027_
                    _hd1790617979_)
                   (_g1788617939_ _g1788717942_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1788617939_
                                                    _g1788717942_))
                                               (_g1788617939_ _g1788717942_))
                                           (_g1788617939_ _g1788717942_))
                                       (_g1788617939_ _g1788717942_))))
                               (_g1788617939_ _g1788717942_))
                           (_g1788617939_ _g1788717942_))
                       (_g1788617939_ _g1788717942_))))
               (_g1788617939_ _g1788717942_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1788617939_
                                                    _g1788717942_))))
                                           (_g1788617939_ _g1788717942_))))
                                   (_g1788617939_ _g1788717942_))))
                           (_g1788617939_ _g1788717942_))))
                   (_g1788617939_ _g1788717942_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1788617939_
                                                    _g1788717942_))))
                                           (_g1788617939_ _g1788717942_))
                                       (_g1788617939_ _g1788717942_))))
                               (_g1788617939_ _g1788717942_))))
                       (_g1788617939_ _g1788717942_))))
               (_g1788617939_ _g1788717942_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1788617939_ _g1788717942_))))
                                       (_g1788617939_ _g1788717942_)))))
                           (_g1788518115_ _L17869_))
                         (_g1772617832_ _g1772817835_)))
                   _hd1776917864_
                   _hd1776617856_)
                  (_g1772617832_ _g1772817835_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1772617832_
                                                   _g1772817835_))
                                              (_g1772617832_ _g1772817835_))))
                                      (_g1772617832_ _g1772817835_))))
                              (_g1772617832_ _g1772817835_))))
                      (_g1772617832_ _g1772817835_))))
               (_g1772418300_
                (lambda (_g1772818121_)
                  (if (gx#stx-pair? _g1772818121_)
                      (let ((_e1774518123_ (gx#stx-e _g1772818121_)))
                        (let ((_hd1774618126_ (##car _e1774518123_))
                              (_tl1774718128_ (##cdr _e1774518123_)))
                          (if (gx#stx-pair? _tl1774718128_)
                              (let ((_e1774818131_ (gx#stx-e _tl1774718128_)))
                                (let ((_hd1774918134_ (##car _e1774818131_))
                                      (_tl1775018136_ (##cdr _e1774818131_)))
                                  (if (gx#stx-pair? _hd1774918134_)
                                      (let ((_e1775118139_
                                             (gx#stx-e _hd1774918134_)))
                                        (let ((_hd1775218142_
                                               (##car _e1775118139_))
                                              (_tl1775318144_
                                               (##cdr _e1775118139_)))
                                          (if (gx#stx-null? _tl1775318144_)
                                              (if (gx#stx-pair? _tl1775018136_)
                                                  (let ((_e1775418147_
                                                         (gx#stx-e
                                                          _tl1775018136_)))
                                                    (let ((_hd1775518150_
                                                           (##car _e1775418147_))
                                                          (_tl1775618152_
                                                           (##cdr _e1775418147_)))
                                                      (if (gx#stx-null?
                                                           _tl1775618152_)
                                                          ((lambda (_L18155_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L18156_)
                     (if (if (gx#identifier? _L18156_)
                             (gxc#opt-lambda-expr? _L18155_)
                             '#f)
                         (let* ((_g1817218202_
                                 (lambda (_g1817318199_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1817318199_)))
                                (_g1817118297_
                                 (lambda (_g1817318205_)
                                   (if (gx#stx-pair? _g1817318205_)
                                       (let ((_e1817718207_
                                              (gx#stx-e _g1817318205_)))
                                         (let ((_hd1817818210_
                                                (##car _e1817718207_))
                                               (_tl1817918212_
                                                (##cdr _e1817718207_)))
                                           (if (gx#stx-pair? _tl1817918212_)
                                               (let ((_e1818018215_
                                                      (gx#stx-e
                                                       _tl1817918212_)))
                                                 (let ((_hd1818118218_
                                                        (##car _e1818018215_))
                                                       (_tl1818218220_
                                                        (##cdr _e1818018215_)))
                                                   (if (gx#stx-pair?
                                                        _hd1818118218_)
                                                       (let ((_e1818318223_
                                                              (gx#stx-e
                                                               _hd1818118218_)))
                                                         (let ((_hd1818418226_
                                                                (##car _e1818318223_))
                                                               (_tl1818518228_
                                                                (##cdr _e1818318223_)))
                                                           (if (gx#stx-pair?
                                                                _hd1818418226_)
                                                               (let ((_e1818618231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1818418226_)))
                         (let ((_hd1818718234_ (##car _e1818618231_))
                               (_tl1818818236_ (##cdr _e1818618231_)))
                           (if (gx#stx-pair? _hd1818718234_)
                               (let ((_e1818918239_ (gx#stx-e _hd1818718234_)))
                                 (let ((_hd1819018242_ (##car _e1818918239_))
                                       (_tl1819118244_ (##cdr _e1818918239_)))
                                   (if (gx#stx-null? _tl1819118244_)
                                       (if (gx#stx-pair? _tl1818818236_)
                                           (let ((_e1819218247_
                                                  (gx#stx-e _tl1818818236_)))
                                             (let ((_hd1819318250_
                                                    (##car _e1819218247_))
                                                   (_tl1819418252_
                                                    (##cdr _e1819218247_)))
                                               (if (gx#stx-null?
                                                    _tl1819418252_)
                                                   (if (gx#stx-null?
                                                        _tl1818518228_)
                                                       (if (gx#stx-pair?
                                                            _tl1818218220_)
                                                           (let ((_e1819518255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1818218220_)))
                     (let ((_hd1819618258_ (##car _e1819518255_))
                           (_tl1819718260_ (##cdr _e1819518255_)))
                       (if (gx#stx-null? _tl1819718260_)
                           ((lambda (_L18263_ _L18264_ _L18265_)
                              (let* ((_lambda-id18289_
                                      (make-symbol
                                       (gx#stx-e _L18156_)
                                       '"__"
                                       (_opt-lambda-dispatch-name17721_
                                        (gx#stx-e _L18265_))))
                                     (_lambda-id18291_
                                      (gx#core-quote-syntax__1
                                       _lambda-id18289_
                                       (gx#stx-source _stx17718_)))
                                     (_g24526_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id18291_))
                                     (_new-case-lambda-expr18294_
                                      (gxc#apply-expression-subst
                                       _L18263_
                                       _L18265_
                                       _lambda-id18291_)))
                                (begin
                                  (gxc#verbose
                                   '"lift opt-lambda dispatch "
                                   (gxc#identifier-symbol _L18156_)
                                   '" => "
                                   (gxc#identifier-symbol _lambda-id18291_))
                                  (gxc#xform-wrap-source
                                   (cons '%#begin
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _lambda-id18291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (gxc#compile-e _L18264_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx17718_)
                                               (cons (gxc#lift-top-lambda-define-values%
                                                      (gxc#xform-wrap-source
                                                       (cons '%#define-values
                                                             (cons (cons _L18156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons _new-case-lambda-expr18294_ '())))
               _stx17718_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _stx17718_))))
                            _hd1819618258_
                            _hd1819318250_
                            _hd1819018242_)
                           (_g1817218202_ _g1817318205_))))
                   (_g1817218202_ _g1817318205_))
               (_g1817218202_ _g1817318205_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1817218202_
                                                    _g1817318205_))))
                                           (_g1817218202_ _g1817318205_))
                                       (_g1817218202_ _g1817318205_))))
                               (_g1817218202_ _g1817318205_))))
                       (_g1817218202_ _g1817318205_))))
               (_g1817218202_ _g1817318205_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1817218202_ _g1817318205_))))
                                       (_g1817218202_ _g1817318205_)))))
                           (_g1817118297_ _L18155_))
                         (_g1772518118_ _g1772818121_)))
                   _hd1775518150_
                   _hd1775218142_)
                  (_g1772518118_ _g1772818121_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1772518118_
                                                   _g1772818121_))
                                              (_g1772518118_ _g1772818121_))))
                                      (_g1772518118_ _g1772818121_))))
                              (_g1772518118_ _g1772818121_))))
                      (_g1772518118_ _g1772818121_))))
               (_g1772318425_
                (lambda (_g1772818303_)
                  (if (gx#stx-pair? _g1772818303_)
                      (let ((_e1773118305_ (gx#stx-e _g1772818303_)))
                        (let ((_hd1773218308_ (##car _e1773118305_))
                              (_tl1773318310_ (##cdr _e1773118305_)))
                          (if (gx#stx-pair? _tl1773318310_)
                              (let ((_e1773418313_ (gx#stx-e _tl1773318310_)))
                                (let ((_hd1773518316_ (##car _e1773418313_))
                                      (_tl1773618318_ (##cdr _e1773418313_)))
                                  (if (gx#stx-pair? _hd1773518316_)
                                      (let ((_e1773718321_
                                             (gx#stx-e _hd1773518316_)))
                                        (let ((_hd1773818324_
                                               (##car _e1773718321_))
                                              (_tl1773918326_
                                               (##cdr _e1773718321_)))
                                          (if (gx#stx-null? _tl1773918326_)
                                              (if (gx#stx-pair? _tl1773618318_)
                                                  (let ((_e1774018329_
                                                         (gx#stx-e
                                                          _tl1773618318_)))
                                                    (let ((_hd1774118332_
                                                           (##car _e1774018329_))
                                                          (_tl1774218334_
                                                           (##cdr _e1774018329_)))
                                                      (if (gx#stx-null?
                                                           _tl1774218334_)
                                                          ((lambda (_L18337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L18338_)
                     (if (if (gx#identifier? _L18338_)
                             (gxc#case-lambda-expr? _L18337_)
                             '#f)
                         (let* ((_g1835518369_
                                 (lambda (_g1835618366_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1835618366_)))
                                (_g1835418400_
                                 (lambda (_g1835618372_)
                                   (if (gx#stx-pair? _g1835618372_)
                                       (let ((_e1836218374_
                                              (gx#stx-e _g1835618372_)))
                                         (let ((_hd1836318377_
                                                (##car _e1836218374_))
                                               (_tl1836418379_
                                                (##cdr _e1836218374_)))
                                           ((lambda (_L18382_)
                                              (let ((_g24527_
                                                     (gxc#lift-case-lambda-clauses__0
                                                      _stx17718_
                                                      _L18338_
                                                      _L18382_)))
                                                (begin
                                                  (let ((_g24528_
                                                         (if (##values?
                                                              _g24527_)
                                                             (##vector-length
                                                              _g24527_)
                                                             1)))
                                                    (if (not (##fx= _g24528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            3))
                (error "Context expects 3 values" _g24528_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_ids18392_
                                                         (##vector-ref
                                                          _g24527_
                                                          0))
                                                        (_impls18393_
                                                         (##vector-ref
                                                          _g24527_
                                                          1))
                                                        (_clauses18394_
                                                         (##vector-ref
                                                          _g24527_
                                                          2)))
                                                    (let* ((_g24529_
                                                            (for-each
                                                             gx#core-bind-runtime!
                                                             _ids18392_))
                                                           (_defs18397_
                                                            (map _case-lambda-clause-def17720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids18392_
                         _impls18393_)))
              (begin
                (gxc#verbose
                 '"lift case-lambda clauses "
                 (gxc#identifier-symbol _L18338_)
                 '" => "
                 (map gxc#identifier-symbol _ids18392_))
                (gxc#xform-wrap-source
                 (cons '%#begin
                       (foldr1 cons
                               (cons (gxc#xform-wrap-source
                                      (cons '%#define-values
                                            (cons (cons _L18338_ '())
                                                  (cons (gxc#xform-wrap-source
                                                         (cons '%#case-lambda
                                                               _clauses18394_)
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'case-lambda-expr))
                                                        '())))
                                      _stx17718_)
                                     '())
                               _defs18397_))
                 _stx17718_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _tl1836418379_)))
                                       (_g1835518369_ _g1835618372_))))
                                (_g1835318422_
                                 (lambda (_g1835618403_)
                                   (if (gx#stx-pair? _g1835618403_)
                                       (let ((_e1835818405_
                                              (gx#stx-e _g1835618403_)))
                                         (let ((_hd1835918408_
                                                (##car _e1835818405_))
                                               (_tl1836018410_
                                                (##cdr _e1835818405_)))
                                           ((lambda (_L18413_)
                                              (if (andmap1 gxc#dispatch-lambda-form?
                                                           _L18413_)
                                                  _stx17718_
                                                  (_g1835418400_
                                                   _g1835618403_)))
                                            _tl1836018410_)))
                                       (_g1835418400_ _g1835618403_)))))
                           (_g1835318422_ _L18337_))
                         (_g1772418300_ _g1772818303_)))
                   _hd1774118332_
                   _hd1773818324_)
                  (_g1772418300_ _g1772818303_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1772418300_
                                                   _g1772818303_))
                                              (_g1772418300_ _g1772818303_))))
                                      (_g1772418300_ _g1772818303_))))
                              (_g1772418300_ _g1772818303_))))
                      (_g1772418300_ _g1772818303_)))))
          (_g1772318425_ _stx17718_)))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx16650_)
      (letrec* ((_bind-e__2447324474_
                 (lambda (_id17702_ _expr17703_ _compile?17704_)
                   (cons (cons _id17702_ '())
                         (cons (if _compile?17704_
                                   (gxc#compile-e _expr17703_)
                                   _expr17703_)
                               '()))))
                (_bind-e__0__2447524476_
                 (lambda (_id17709_ _expr17710_)
                   (let ((_compile?17712_ '#t))
                     (_bind-e__2447324474_
                      _id17709_
                      _expr17710_
                      _compile?17712_))))
                (_bind-e16652_
                 (lambda _g24531_
                   (let ((_g24530_ (length _g24531_)))
                     (cond ((##fx= _g24530_ 2)
                            (apply _bind-e__0__2447524476_ _g24531_))
                           ((##fx= _g24530_ 3)
                            (apply _bind-e__2447324474_ _g24531_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g24531_))))))
                (_compile-bindings16653_
                 (lambda (_bindings17286_)
                   (let _lp17288_ ((_rest17290_ _bindings17286_)
                                   (_lift117291_ '())
                                   (_lift217292_ '())
                                   (_bind17293_ '()))
                     (let* ((_rest1729417302_ _rest17290_)
                            (_else1729617310_
                             (lambda ()
                               (values (reverse _lift117291_)
                                       (reverse _lift217292_)
                                       (reverse _bind17293_))))
                            (_K1729817689_
                             (lambda (_rest17313_ _hd17314_)
                               (let* ((_g1731817354_
                                       (lambda (_g1731917351_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1731917351_)))
                                      (_g1731717395_
                                       (lambda (_g1731917357_)
                                         (if (gx#stx-pair? _g1731917357_)
                                             (let ((_e1734417359_
                                                    (gx#stx-e _g1731917357_)))
                                               (let ((_hd1734517362_
                                                      (##car _e1734417359_))
                                                     (_tl1734617364_
                                                      (##cdr _e1734417359_)))
                                                 (if (gx#stx-pair?
                                                      _tl1734617364_)
                                                     (let ((_e1734717367_
                                                            (gx#stx-e
                                                             _tl1734617364_)))
                                                       (let ((_hd1734817370_
                                                              (##car _e1734717367_))
                                                             (_tl1734917372_
                                                              (##cdr _e1734717367_)))
                                                         (if (gx#stx-null?
                                                              _tl1734917372_)
                                                             ((lambda (_L17375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L17376_)
                        (_lp17288_
                         _rest17313_
                         _lift117291_
                         _lift217292_
                         (cons (cons _L17376_
                                     (cons (gxc#compile-e _L17375_) '()))
                               _bind17293_)))
                      _hd1734817370_
                      _hd1734517362_)
                     (_g1731817354_ _g1731917357_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1731817354_
                                                      _g1731917357_))))
                                             (_g1731817354_ _g1731917357_))))
                                      (_g1731617567_
                                       (lambda (_g1731917398_)
                                         (if (gx#stx-pair? _g1731917398_)
                                             (let ((_e1733317400_
                                                    (gx#stx-e _g1731917398_)))
                                               (let ((_hd1733417403_
                                                      (##car _e1733317400_))
                                                     (_tl1733517405_
                                                      (##cdr _e1733317400_)))
                                                 (if (gx#stx-pair?
                                                      _hd1733417403_)
                                                     (let ((_e1733617408_
                                                            (gx#stx-e
                                                             _hd1733417403_)))
                                                       (let ((_hd1733717411_
                                                              (##car _e1733617408_))
                                                             (_tl1733817413_
                                                              (##cdr _e1733617408_)))
                                                         (if (gx#stx-null?
                                                              _tl1733817413_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1733517405_)
                         (let ((_e1733917416_ (gx#stx-e _tl1733517405_)))
                           (let ((_hd1734017419_ (##car _e1733917416_))
                                 (_tl1734117421_ (##cdr _e1733917416_)))
                             (if (gx#stx-null? _tl1734117421_)
                                 ((lambda (_L17424_ _L17425_)
                                    (if (if (gx#identifier? _L17425_)
                                            (gxc#opt-lambda-expr? _L17424_)
                                            '#f)
                                        (let* ((_g1743917469_
                                                (lambda (_g1744017466_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1744017466_)))
                                               (_g1743817564_
                                                (lambda (_g1744017472_)
                                                  (if (gx#stx-pair?
                                                       _g1744017472_)
                                                      (let ((_e1744417474_
                                                             (gx#stx-e
                                                              _g1744017472_)))
                                                        (let ((_hd1744517477_
                                                               (##car _e1744417474_))
                                                              (_tl1744617479_
                                                               (##cdr _e1744417474_)))
                                                          (if (gx#stx-pair?
                                                               _tl1744617479_)
                                                              (let ((_e1744717482_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1744617479_)))
                        (let ((_hd1744817485_ (##car _e1744717482_))
                              (_tl1744917487_ (##cdr _e1744717482_)))
                          (if (gx#stx-pair? _hd1744817485_)
                              (let ((_e1745017490_ (gx#stx-e _hd1744817485_)))
                                (let ((_hd1745117493_ (##car _e1745017490_))
                                      (_tl1745217495_ (##cdr _e1745017490_)))
                                  (if (gx#stx-pair? _hd1745117493_)
                                      (let ((_e1745317498_
                                             (gx#stx-e _hd1745117493_)))
                                        (let ((_hd1745417501_
                                               (##car _e1745317498_))
                                              (_tl1745517503_
                                               (##cdr _e1745317498_)))
                                          (if (gx#stx-pair? _hd1745417501_)
                                              (let ((_e1745617506_
                                                     (gx#stx-e
                                                      _hd1745417501_)))
                                                (let ((_hd1745717509_
                                                       (##car _e1745617506_))
                                                      (_tl1745817511_
                                                       (##cdr _e1745617506_)))
                                                  (if (gx#stx-null?
                                                       _tl1745817511_)
                                                      (if (gx#stx-pair?
                                                           _tl1745517503_)
                                                          (let ((_e1745917514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1745517503_)))
                    (let ((_hd1746017517_ (##car _e1745917514_))
                          (_tl1746117519_ (##cdr _e1745917514_)))
                      (if (gx#stx-null? _tl1746117519_)
                          (if (gx#stx-null? _tl1745217495_)
                              (if (gx#stx-pair? _tl1744917487_)
                                  (let ((_e1746217522_
                                         (gx#stx-e _tl1744917487_)))
                                    (let ((_hd1746317525_
                                           (##car _e1746217522_))
                                          (_tl1746417527_
                                           (##cdr _e1746217522_)))
                                      (if (gx#stx-null? _tl1746417527_)
                                          ((lambda (_L17530_ _L17531_ _L17532_)
                                             (let* ((_lambda-id17556_
                                                     (make-symbol
                                                      (gx#stx-e _L17425_)
                                                      (gensym '__)))
                                                    (_lambda-id17558_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id17556_
                                                      (gx#stx-source
                                                       _stx16650_)))
                                                    (_g24532_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id17558_))
                                                    (_new-case-lambda-expr17561_
                                                     (gxc#apply-expression-subst
                                                      _L17530_
                                                      _L17532_
                                                      _lambda-id17558_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#identifier-symbol
                                                   _L17425_)
                                                  '" => "
                                                  (gxc#identifier-symbol
                                                   _lambda-id17558_))
                                                 (_lp17288_
                                                  (cons (_bind-e__2447324474_
                                                         _L17425_
                                                         _new-case-lambda-expr17561_
                                                         '#f)
                                                        _rest17313_)
                                                  (cons (_bind-e__0__2447524476_
                                                         _lambda-id17558_
                                                         _L17531_)
                                                        _lift117291_)
                                                  _lift217292_
                                                  _bind17293_))))
                                           _hd1746317525_
                                           _hd1746017517_
                                           _hd1745717509_)
                                          (_g1743917469_ _g1744017472_))))
                                  (_g1743917469_ _g1744017472_))
                              (_g1743917469_ _g1744017472_))
                          (_g1743917469_ _g1744017472_))))
                  (_g1743917469_ _g1744017472_))
              (_g1743917469_ _g1744017472_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1743917469_ _g1744017472_))))
                                      (_g1743917469_ _g1744017472_))))
                              (_g1743917469_ _g1744017472_))))
                      (_g1743917469_ _g1744017472_))))
              (_g1743917469_ _g1744017472_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1743817564_ _L17424_))
                                        (_g1731717395_ _g1731917398_)))
                                  _hd1734017419_
                                  _hd1733717411_)
                                 (_g1731717395_ _g1731917398_))))
                         (_g1731717395_ _g1731917398_))
                     (_g1731717395_ _g1731917398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1731717395_
                                                      _g1731917398_))))
                                             (_g1731717395_ _g1731917398_))))
                                      (_g1731517686_
                                       (lambda (_g1731917570_)
                                         (if (gx#stx-pair? _g1731917570_)
                                             (let ((_e1732217572_
                                                    (gx#stx-e _g1731917570_)))
                                               (let ((_hd1732317575_
                                                      (##car _e1732217572_))
                                                     (_tl1732417577_
                                                      (##cdr _e1732217572_)))
                                                 (if (gx#stx-pair?
                                                      _hd1732317575_)
                                                     (let ((_e1732517580_
                                                            (gx#stx-e
                                                             _hd1732317575_)))
                                                       (let ((_hd1732617583_
                                                              (##car _e1732517580_))
                                                             (_tl1732717585_
                                                              (##cdr _e1732517580_)))
                                                         (if (gx#stx-null?
                                                              _tl1732717585_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1732417577_)
                         (let ((_e1732817588_ (gx#stx-e _tl1732417577_)))
                           (let ((_hd1732917591_ (##car _e1732817588_))
                                 (_tl1733017593_ (##cdr _e1732817588_)))
                             (if (gx#stx-null? _tl1733017593_)
                                 ((lambda (_L17596_ _L17597_)
                                    (if (if (gx#identifier? _L17597_)
                                            (gxc#case-lambda-expr? _L17596_)
                                            '#f)
                                        (let* ((_g1761217626_
                                                (lambda (_g1761317623_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1761317623_)))
                                               (_g1761117661_
                                                (lambda (_g1761317629_)
                                                  (if (gx#stx-pair?
                                                       _g1761317629_)
                                                      (let ((_e1761917631_
                                                             (gx#stx-e
                                                              _g1761317629_)))
                                                        (let ((_hd1762017634_
                                                               (##car _e1761917631_))
                                                              (_tl1762117636_
                                                               (##cdr _e1761917631_)))
                                                          ((lambda (_L17639_)
                                                             (let ((_g24533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__%
                             _stx16650_
                             _L17597_
                             _L17639_
                             '#t)))
                       (begin
                         (let ((_g24534_
                                (if (##values? _g24533_)
                                    (##vector-length _g24533_)
                                    1)))
                           (if (not (##fx= _g24534_ 3))
                               (error "Context expects 3 values" _g24534_)))
                         (let ((_ids17649_ (##vector-ref _g24533_ 0))
                               (_impls17650_ (##vector-ref _g24533_ 1))
                               (_clauses17651_ (##vector-ref _g24533_ 2)))
                           (let* ((_g24535_
                                   (for-each gx#core-bind-runtime! _ids17649_))
                                  (_xbind17654_
                                   (map _bind-e16652_ _ids17649_ _impls17650_))
                                  (_expr*17656_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses17651_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*17658_
                                   (_bind-e__2447324474_
                                    _L17597_
                                    _expr*17656_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#identifier-symbol _L17597_)
                                '" => "
                                (map gxc#identifier-symbol _ids17649_))
                               (_lp17288_
                                _rest17313_
                                _lift117291_
                                (foldl1 cons _lift217292_ _xbind17654_)
                                (cons _bind*17658_ _bind17293_))))))))
                   _tl1762117636_)))
              (_g1761217626_ _g1761317629_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1761017683_
                                                (lambda (_g1761317664_)
                                                  (if (gx#stx-pair?
                                                       _g1761317664_)
                                                      (let ((_e1761517666_
                                                             (gx#stx-e
                                                              _g1761317664_)))
                                                        (let ((_hd1761617669_
                                                               (##car _e1761517666_))
                                                              (_tl1761717671_
                                                               (##cdr _e1761517666_)))
                                                          ((lambda (_L17674_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L17674_)
                         (_lp17288_
                          _rest17313_
                          _lift117291_
                          _lift217292_
                          (cons (_bind-e__2447324474_ _L17597_ _L17596_ '#f)
                                _bind17293_))
                         (_g1761117661_ _g1761317664_)))
                   _tl1761717671_)))
              (_g1761117661_ _g1761317664_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1761017683_ _L17596_))
                                        (_g1731617567_ _g1731917570_)))
                                  _hd1732917591_
                                  _hd1732617583_)
                                 (_g1731617567_ _g1731917570_))))
                         (_g1731617567_ _g1731917570_))
                     (_g1731617567_ _g1731917570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1731617567_
                                                      _g1731917570_))))
                                             (_g1731617567_ _g1731917570_)))))
                                 (_g1731517686_ _hd17314_)))))
                       (if (##pair? _rest1729417302_)
                           (let ((_hd1729917692_ (##car _rest1729417302_))
                                 (_tl1730017694_ (##cdr _rest1729417302_)))
                             (let* ((_hd17697_ _hd1729917692_)
                                    (_rest17699_ _tl1730017694_))
                               (_K1729817689_ _rest17699_ _hd17697_)))
                           (_else1729617310_))))))
                (_lift-kw-lambda?16654_
                 (lambda (_bind17210_)
                   (let* ((_g1721317230_
                           (lambda (_g1721417227_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1721417227_)))
                          (_g1721217237_
                           (lambda (_g1721417233_) ((lambda () '#f))))
                          (_g1721117283_
                           (lambda (_g1721417240_)
                             (if (gx#stx-pair? _g1721417240_)
                                 (let ((_e1721717242_
                                        (gx#stx-e _g1721417240_)))
                                   (let ((_hd1721817245_ (##car _e1721717242_))
                                         (_tl1721917247_
                                          (##cdr _e1721717242_)))
                                     (if (gx#stx-pair? _hd1721817245_)
                                         (let ((_e1722017250_
                                                (gx#stx-e _hd1721817245_)))
                                           (let ((_hd1722117253_
                                                  (##car _e1722017250_))
                                                 (_tl1722217255_
                                                  (##cdr _e1722017250_)))
                                             (if (gx#stx-null? _tl1722217255_)
                                                 (if (gx#stx-pair?
                                                      _tl1721917247_)
                                                     (let ((_e1722317258_
                                                            (gx#stx-e
                                                             _tl1721917247_)))
                                                       (let ((_hd1722417261_
                                                              (##car _e1722317258_))
                                                             (_tl1722517263_
                                                              (##cdr _e1722317258_)))
                                                         (if (gx#stx-null?
                                                              _tl1722517263_)
                                                             ((lambda (_L17266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L17267_)
                        (if (gx#identifier? _L17267_)
                            (gxc#kw-lambda-expr? _L17266_)
                            '#f))
                      _hd1722417261_
                      _hd1722117253_)
                     (_g1721217237_ _g1721417240_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1721217237_
                                                      _g1721417240_))
                                                 (_g1721217237_
                                                  _g1721417240_))))
                                         (_g1721217237_ _g1721417240_))))
                                 (_g1721217237_ _g1721417240_)))))
                     (_g1721117283_ _bind17210_))))
                (_lift-kw-lambda-bindings16655_
                 (lambda (_bindings16822_)
                   (let _lp16824_ ((_rest16826_ _bindings16822_)
                                   (_lift116827_ '())
                                   (_lift216828_ '())
                                   (_bind16829_ '()))
                     (let* ((_rest1683016838_ _rest16826_)
                            (_else1683216846_
                             (lambda ()
                               (values (reverse _lift116827_)
                                       (reverse _lift216828_)
                                       (reverse _bind16829_))))
                            (_K1683417198_
                             (lambda (_rest16849_ _hd16850_)
                               (let* ((_g1685316878_
                                       (lambda (_g1685416875_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1685416875_)))
                                      (_g1685216919_
                                       (lambda (_g1685416881_)
                                         (if (gx#stx-pair? _g1685416881_)
                                             (let ((_e1686816883_
                                                    (gx#stx-e _g1685416881_)))
                                               (let ((_hd1686916886_
                                                      (##car _e1686816883_))
                                                     (_tl1687016888_
                                                      (##cdr _e1686816883_)))
                                                 (if (gx#stx-pair?
                                                      _tl1687016888_)
                                                     (let ((_e1687116891_
                                                            (gx#stx-e
                                                             _tl1687016888_)))
                                                       (let ((_hd1687216894_
                                                              (##car _e1687116891_))
                                                             (_tl1687316896_
                                                              (##cdr _e1687116891_)))
                                                         (if (gx#stx-null?
                                                              _tl1687316896_)
                                                             ((lambda (_L16899_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L16900_)
                        (_lp16824_
                         _rest16849_
                         _lift116827_
                         _lift216828_
                         (cons (cons _L16900_ (cons _L16899_ '()))
                               _bind16829_)))
                      _hd1687216894_
                      _hd1686916886_)
                     (_g1685316878_ _g1685416881_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1685316878_
                                                      _g1685416881_))))
                                             (_g1685316878_ _g1685416881_))))
                                      (_g1685117195_
                                       (lambda (_g1685416922_)
                                         (if (gx#stx-pair? _g1685416922_)
                                             (let ((_e1685716924_
                                                    (gx#stx-e _g1685416922_)))
                                               (let ((_hd1685816927_
                                                      (##car _e1685716924_))
                                                     (_tl1685916929_
                                                      (##cdr _e1685716924_)))
                                                 (if (gx#stx-pair?
                                                      _hd1685816927_)
                                                     (let ((_e1686016932_
                                                            (gx#stx-e
                                                             _hd1685816927_)))
                                                       (let ((_hd1686116935_
                                                              (##car _e1686016932_))
                                                             (_tl1686216937_
                                                              (##cdr _e1686016932_)))
                                                         (if (gx#stx-null?
                                                              _tl1686216937_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1685916929_)
                         (let ((_e1686316940_ (gx#stx-e _tl1685916929_)))
                           (let ((_hd1686416943_ (##car _e1686316940_))
                                 (_tl1686516945_ (##cdr _e1686316940_)))
                             (if (gx#stx-null? _tl1686516945_)
                                 ((lambda (_L16948_ _L16949_)
                                    (if (if (gx#identifier? _L16949_)
                                            (gxc#kw-lambda-expr? _L16948_)
                                            '#f)
                                        (let* ((_g1696317016_
                                                (lambda (_g1696417013_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1696417013_)))
                                               (_g1696217192_
                                                (lambda (_g1696417019_)
                                                  (if (gx#stx-pair?
                                                       _g1696417019_)
                                                      (let ((_e1697017021_
                                                             (gx#stx-e
                                                              _g1696417019_)))
                                                        (let ((_hd1697117024_
                                                               (##car _e1697017021_))
                                                              (_tl1697217026_
                                                               (##cdr _e1697017021_)))
                                                          (if (gx#stx-pair?
                                                               _tl1697217026_)
                                                              (let ((_e1697317029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1697217026_)))
                        (let ((_hd1697417032_ (##car _e1697317029_))
                              (_tl1697517034_ (##cdr _e1697317029_)))
                          (if (gx#stx-pair? _hd1697417032_)
                              (let ((_e1697617037_ (gx#stx-e _hd1697417032_)))
                                (let ((_hd1697717040_ (##car _e1697617037_))
                                      (_tl1697817042_ (##cdr _e1697617037_)))
                                  (if (gx#stx-pair? _hd1697717040_)
                                      (let ((_e1697917045_
                                             (gx#stx-e _hd1697717040_)))
                                        (let ((_hd1698017048_
                                               (##car _e1697917045_))
                                              (_tl1698117050_
                                               (##cdr _e1697917045_)))
                                          (if (gx#stx-pair? _hd1698017048_)
                                              (let ((_e1698217053_
                                                     (gx#stx-e
                                                      _hd1698017048_)))
                                                (let ((_hd1698317056_
                                                       (##car _e1698217053_))
                                                      (_tl1698417058_
                                                       (##cdr _e1698217053_)))
                                                  (if (gx#stx-null?
                                                       _tl1698417058_)
                                                      (if (gx#stx-pair?
                                                           _tl1698117050_)
                                                          (let ((_e1698517061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1698117050_)))
                    (let ((_hd1698617064_ (##car _e1698517061_))
                          (_tl1698717066_ (##cdr _e1698517061_)))
                      (if (gx#stx-pair? _hd1698617064_)
                          (let ((_e1698817069_ (gx#stx-e _hd1698617064_)))
                            (let ((_hd1698917072_ (##car _e1698817069_))
                                  (_tl1699017074_ (##cdr _e1698817069_)))
                              (if (gx#stx-pair? _tl1699017074_)
                                  (let ((_e1699117077_
                                         (gx#stx-e _tl1699017074_)))
                                    (let ((_hd1699217080_
                                           (##car _e1699117077_))
                                          (_tl1699317082_
                                           (##cdr _e1699117077_)))
                                      (if (gx#stx-pair? _hd1699217080_)
                                          (let ((_e1699417085_
                                                 (gx#stx-e _hd1699217080_)))
                                            (let ((_hd1699517088_
                                                   (##car _e1699417085_))
                                                  (_tl1699617090_
                                                   (##cdr _e1699417085_)))
                                              (if (gx#stx-pair? _hd1699517088_)
                                                  (let ((_e1699717093_
                                                         (gx#stx-e
                                                          _hd1699517088_)))
                                                    (let ((_hd1699817096_
                                                           (##car _e1699717093_))
                                                          (_tl1699917098_
                                                           (##cdr _e1699717093_)))
                                                      (if (gx#stx-pair?
                                                           _hd1699817096_)
                                                          (let ((_e1700017101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1699817096_)))
                    (let ((_hd1700117104_ (##car _e1700017101_))
                          (_tl1700217106_ (##cdr _e1700017101_)))
                      (if (gx#stx-null? _tl1700217106_)
                          (if (gx#stx-pair? _tl1699917098_)
                              (let ((_e1700317109_ (gx#stx-e _tl1699917098_)))
                                (let ((_hd1700417112_ (##car _e1700317109_))
                                      (_tl1700517114_ (##cdr _e1700317109_)))
                                  (if (gx#stx-null? _tl1700517114_)
                                      (if (gx#stx-null? _tl1699617090_)
                                          (if (gx#stx-pair? _tl1699317082_)
                                              (let ((_e1700617117_
                                                     (gx#stx-e
                                                      _tl1699317082_)))
                                                (let ((_hd1700717120_
                                                       (##car _e1700617117_))
                                                      (_tl1700817122_
                                                       (##cdr _e1700617117_)))
                                                  (if (gx#stx-null?
                                                       _tl1700817122_)
                                                      (if (gx#stx-null?
                                                           _tl1698717066_)
                                                          (if (gx#stx-null?
                                                               _tl1697817042_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1697517034_)
                          (let ((_e1700917125_ (gx#stx-e _tl1697517034_)))
                            (let ((_hd1701017128_ (##car _e1700917125_))
                                  (_tl1701117130_ (##cdr _e1700917125_)))
                              (if (gx#stx-null? _tl1701117130_)
                                  ((lambda (_L17133_
                                            _L17134_
                                            _L17135_
                                            _L17136_
                                            _L17137_)
                                     (let* ((_get-kws-id17177_
                                             (make-symbol
                                              (gx#stx-e _L16949_)
                                              (gensym '__)))
                                            (_get-kws-id17179_
                                             (gx#core-quote-syntax__1
                                              _get-kws-id17177_
                                              (gx#stx-source _stx16650_)))
                                            (_main-id17181_
                                             (make-symbol
                                              (gx#stx-e _L16949_)
                                              (gensym '__)))
                                            (_main-id17183_
                                             (gx#core-quote-syntax__1
                                              _main-id17181_
                                              (gx#stx-source _stx16650_)))
                                            (_g24536_
                                             (gx#core-bind-runtime!__0
                                              _get-kws-id17179_))
                                            (_g24537_
                                             (gx#core-bind-runtime!__0
                                              _main-id17183_))
                                            (_new-kw-dispatch17187_
                                             (gxc#apply-expression-subst
                                              _L17133_
                                              _L17137_
                                              _get-kws-id17179_))
                                            (_new-get-kws17189_
                                             (gxc#apply-expression-subst
                                              _L17134_
                                              _L17136_
                                              _main-id17183_)))
                                       (begin
                                         (gxc#verbose
                                          '"lift kw-lambda dispatch "
                                          (gxc#identifier-symbol _L16949_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _get-kws-id17179_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _main-id17183_))
                                         (_lp16824_
                                          _rest16849_
                                          (cons (_bind-e__2447324474_
                                                 _main-id17183_
                                                 _L17135_
                                                 '#f)
                                                _lift116827_)
                                          (cons (_bind-e__2447324474_
                                                 _get-kws-id17179_
                                                 _new-get-kws17189_
                                                 '#f)
                                                _lift216828_)
                                          (cons (_bind-e__2447324474_
                                                 _L16949_
                                                 _new-kw-dispatch17187_
                                                 '#f)
                                                _bind16829_)))))
                                   _hd1701017128_
                                   _hd1700717120_
                                   _hd1700417112_
                                   _hd1700117104_
                                   _hd1698317056_)
                                  (_g1696317016_ _g1696417019_))))
                          (_g1696317016_ _g1696417019_))
                      (_g1696317016_ _g1696417019_))
                  (_g1696317016_ _g1696417019_))
              (_g1696317016_ _g1696417019_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1696317016_ _g1696417019_))
                                          (_g1696317016_ _g1696417019_))
                                      (_g1696317016_ _g1696417019_))))
                              (_g1696317016_ _g1696417019_))
                          (_g1696317016_ _g1696417019_))))
                  (_g1696317016_ _g1696417019_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1696317016_
                                                   _g1696417019_))))
                                          (_g1696317016_ _g1696417019_))))
                                  (_g1696317016_ _g1696417019_))))
                          (_g1696317016_ _g1696417019_))))
                  (_g1696317016_ _g1696417019_))
              (_g1696317016_ _g1696417019_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1696317016_ _g1696417019_))))
                                      (_g1696317016_ _g1696417019_))))
                              (_g1696317016_ _g1696417019_))))
                      (_g1696317016_ _g1696417019_))))
              (_g1696317016_ _g1696417019_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1696217192_ _L16948_))
                                        (_g1685216919_ _g1685416922_)))
                                  _hd1686416943_
                                  _hd1686116935_)
                                 (_g1685216919_ _g1685416922_))))
                         (_g1685216919_ _g1685416922_))
                     (_g1685216919_ _g1685416922_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1685216919_
                                                      _g1685416922_))))
                                             (_g1685216919_ _g1685416922_)))))
                                 (_g1685117195_ _hd16850_)))))
                       (if (##pair? _rest1683016838_)
                           (let ((_hd1683517201_ (##car _rest1683016838_))
                                 (_tl1683617203_ (##cdr _rest1683016838_)))
                             (let* ((_hd17206_ _hd1683517201_)
                                    (_rest17208_ _tl1683617203_))
                               (_K1683417198_ _rest17208_ _hd17206_)))
                           (_else1683216846_)))))))
        (let* ((_g1665816684_
                (lambda (_g1665916681_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1665916681_)))
               (_g1665716691_
                (lambda (_g1665916687_)
                  ((lambda () (gxc#xform-let-values% _stx16650_)))))
               (_g1665616819_
                (lambda (_g1665916694_)
                  (if (gx#stx-pair? _g1665916694_)
                      (let ((_e1666216696_ (gx#stx-e _g1665916694_)))
                        (let ((_hd1666316699_ (##car _e1666216696_))
                              (_tl1666416701_ (##cdr _e1666216696_)))
                          (if (gx#stx-pair? _tl1666416701_)
                              (let ((_e1666516704_ (gx#stx-e _tl1666416701_)))
                                (let ((_hd1666616707_ (##car _e1666516704_))
                                      (_tl1666716709_ (##cdr _e1666516704_)))
                                  (if (gx#stx-pair/null? _hd1666616707_)
                                      (if (fx>= (gx#stx-length _hd1666616707_)
                                                '0)
                                          (let ((_g24538_
                                                 (gx#syntax-split-splice
                                                  _hd1666616707_
                                                  '0)))
                                            (begin
                                              (let ((_g24539_
                                                     (if (##values? _g24538_)
                                                         (##vector-length
                                                          _g24538_)
                                                         1)))
                                                (if (not (##fx= _g24539_ 2))
                                                    (error "Context expects 2 values"
                                                           _g24539_)))
                                              (let ((_target1666816712_
                                                     (##vector-ref _g24538_ 0))
                                                    (_tl1667016714_
                                                     (##vector-ref
                                                      _g24538_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl1667016714_)
                                                    (letrec ((_loop1667116717_
                                                              (lambda (_hd1666916720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind1667516722_)
                        (if (gx#stx-pair? _hd1666916720_)
                            (let ((_e1667216725_ (gx#stx-e _hd1666916720_)))
                              (let ((_lp-hd1667316728_ (##car _e1667216725_))
                                    (_lp-tl1667416730_ (##cdr _e1667216725_)))
                                (_loop1667116717_
                                 _lp-tl1667416730_
                                 (cons _lp-hd1667316728_ _bind1667516722_))))
                            (let ((_bind1667616733_
                                   (reverse _bind1667516722_)))
                              (if (gx#stx-pair? _tl1666716709_)
                                  (let ((_e1667716736_
                                         (gx#stx-e _tl1666716709_)))
                                    (let ((_hd1667816739_
                                           (##car _e1667716736_))
                                          (_tl1667916741_
                                           (##cdr _e1667716736_)))
                                      (if (gx#stx-null? _tl1667916741_)
                                          ((lambda (_L16744_ _L16745_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1676516768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1676616770_)
                             (cons _g1676516768_ _g1676616770_))
                           '()
                           _L16745_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (if (ormap1 _lift-kw-lambda?16654_
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g1677316776_ _g1677416778_)
                                    (cons _g1677316776_ _g1677416778_))
                                  '()
                                  _L16745_)))
                (let ((_g24540_
                       (_lift-kw-lambda-bindings16655_
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1678016783_ _g1678116785_)
                                    (cons _g1678016783_ _g1678116785_))
                                  '()
                                  _L16745_)))))
                  (begin
                    (let ((_g24541_
                           (if (##values? _g24540_)
                               (##vector-length _g24540_)
                               1)))
                      (if (not (##fx= _g24541_ 3))
                          (error "Context expects 3 values" _g24541_)))
                    (let ((_lift116788_ (##vector-ref _g24540_ 0))
                          (_lift216789_ (##vector-ref _g24540_ 1))
                          (_hd16790_ (##vector-ref _g24540_ 2)))
                      (let* ((_expr16792_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _hd16790_ (cons _L16744_ '())))
                               _stx16650_))
                             (_expr16794_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift216789_
                                           (cons _expr16792_ '())))
                               _stx16650_))
                             (_expr16796_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift116788_
                                           (cons _expr16794_ '())))
                               _stx16650_)))
                        (gxc#lift-top-lambda-let-values% _expr16796_)))))
                (let ((_g24542_
                       (_compile-bindings16653_
                        (begin
                          '#!void
                          (foldr1 (lambda (_g1679816801_ _g1679916803_)
                                    (cons _g1679816801_ _g1679916803_))
                                  '()
                                  _L16745_)))))
                  (begin
                    (let ((_g24543_
                           (if (##values? _g24542_)
                               (##vector-length _g24542_)
                               1)))
                      (if (not (##fx= _g24543_ 3))
                          (error "Context expects 3 values" _g24543_)))
                    (let ((_lift116806_ (##vector-ref _g24542_ 0))
                          (_lift216807_ (##vector-ref _g24542_ 1))
                          (_hd16808_ (##vector-ref _g24542_ 2)))
                      (let* ((_body16810_ (gxc#compile-e _L16744_))
                             (_expr16812_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _hd16808_ (cons _body16810_ '())))
                               _stx16650_))
                             (_expr16814_
                              (if (null? _lift216807_)
                                  _expr16812_
                                  (gxc#xform-wrap-source
                                   (cons '%#let-values
                                         (cons _lift216807_
                                               (cons _expr16812_ '())))
                                   _stx16650_)))
                             (_expr16816_
                              (if (null? _lift116806_)
                                  _expr16814_
                                  (gxc#xform-wrap-source
                                   (cons '%#let-values
                                         (cons _lift116806_
                                               (cons _expr16814_ '())))
                                   _stx16650_))))
                        _expr16816_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj24486
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj24486)
                                                      __obj24486)))
                                                 (_g1665716691_
                                                  _g1665916694_)))
                                           _hd1667816739_
                                           _bind1667616733_)
                                          (_g1665716691_ _g1665916694_))))
                                  (_g1665716691_ _g1665916694_)))))))
              (_loop1667116717_ _target1666816712_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1665716691_
                                                     _g1665916694_)))))
                                          (_g1665716691_ _g1665916694_))
                                      (_g1665716691_ _g1665916694_))))
                              (_g1665716691_ _g1665916694_))))
                      (_g1665716691_ _g1665916694_)))))
          (_g1665616819_ _stx16650_)))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx15794_)
      (letrec* ((_bind-e__2447824479_
                 (lambda (_id16634_ _expr16635_ _compile?16636_)
                   (cons (cons _id16634_ '())
                         (cons (if _compile?16636_
                                   (gxc#compile-e _expr16635_)
                                   _expr16635_)
                               '()))))
                (_bind-e__0__2448024481_
                 (lambda (_id16641_ _expr16642_)
                   (let ((_compile?16644_ '#t))
                     (_bind-e__2447824479_
                      _id16641_
                      _expr16642_
                      _compile?16644_))))
                (_bind-e15796_
                 (lambda _g24545_
                   (let ((_g24544_ (length _g24545_)))
                     (cond ((##fx= _g24544_ 2)
                            (apply _bind-e__0__2448024481_ _g24545_))
                           ((##fx= _g24544_ 3)
                            (apply _bind-e__2447824479_ _g24545_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g24545_))))))
                (_compile-bindings15797_
                 (lambda (_rest15932_)
                   (let _lp15934_ ((_rest15936_ _rest15932_) (_bind15937_ '()))
                     (let* ((_rest1593815946_ _rest15936_)
                            (_else1594015954_
                             (lambda () (reverse _bind15937_)))
                            (_K1594216621_
                             (lambda (_rest15957_ _hd15958_)
                               (let* ((_g1596316010_
                                       (lambda (_g1596416007_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1596416007_)))
                                      (_g1596216051_
                                       (lambda (_g1596416013_)
                                         (if (gx#stx-pair? _g1596416013_)
                                             (let ((_e1600016015_
                                                    (gx#stx-e _g1596416013_)))
                                               (let ((_hd1600116018_
                                                      (##car _e1600016015_))
                                                     (_tl1600216020_
                                                      (##cdr _e1600016015_)))
                                                 (if (gx#stx-pair?
                                                      _tl1600216020_)
                                                     (let ((_e1600316023_
                                                            (gx#stx-e
                                                             _tl1600216020_)))
                                                       (let ((_hd1600416026_
                                                              (##car _e1600316023_))
                                                             (_tl1600516028_
                                                              (##cdr _e1600316023_)))
                                                         (if (gx#stx-null?
                                                              _tl1600516028_)
                                                             ((lambda (_L16031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L16032_)
                        (_lp15934_
                         _rest15957_
                         (cons (cons _L16032_
                                     (cons (gxc#compile-e _L16031_) '()))
                               _bind15937_)))
                      _hd1600416026_
                      _hd1600116018_)
                     (_g1596316010_ _g1596416013_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1596316010_
                                                      _g1596416013_))))
                                             (_g1596316010_ _g1596416013_))))
                                      (_g1596116327_
                                       (lambda (_g1596416054_)
                                         (if (gx#stx-pair? _g1596416054_)
                                             (let ((_e1598916056_
                                                    (gx#stx-e _g1596416054_)))
                                               (let ((_hd1599016059_
                                                      (##car _e1598916056_))
                                                     (_tl1599116061_
                                                      (##cdr _e1598916056_)))
                                                 (if (gx#stx-pair?
                                                      _hd1599016059_)
                                                     (let ((_e1599216064_
                                                            (gx#stx-e
                                                             _hd1599016059_)))
                                                       (let ((_hd1599316067_
                                                              (##car _e1599216064_))
                                                             (_tl1599416069_
                                                              (##cdr _e1599216064_)))
                                                         (if (gx#stx-null?
                                                              _tl1599416069_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1599116061_)
                         (let ((_e1599516072_ (gx#stx-e _tl1599116061_)))
                           (let ((_hd1599616075_ (##car _e1599516072_))
                                 (_tl1599716077_ (##cdr _e1599516072_)))
                             (if (gx#stx-null? _tl1599716077_)
                                 ((lambda (_L16080_ _L16081_)
                                    (if (if (gx#identifier? _L16081_)
                                            (gxc#kw-lambda-expr? _L16080_)
                                            '#f)
                                        (let* ((_g1609516148_
                                                (lambda (_g1609616145_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1609616145_)))
                                               (_g1609416324_
                                                (lambda (_g1609616151_)
                                                  (if (gx#stx-pair?
                                                       _g1609616151_)
                                                      (let ((_e1610216153_
                                                             (gx#stx-e
                                                              _g1609616151_)))
                                                        (let ((_hd1610316156_
                                                               (##car _e1610216153_))
                                                              (_tl1610416158_
                                                               (##cdr _e1610216153_)))
                                                          (if (gx#stx-pair?
                                                               _tl1610416158_)
                                                              (let ((_e1610516161_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1610416158_)))
                        (let ((_hd1610616164_ (##car _e1610516161_))
                              (_tl1610716166_ (##cdr _e1610516161_)))
                          (if (gx#stx-pair? _hd1610616164_)
                              (let ((_e1610816169_ (gx#stx-e _hd1610616164_)))
                                (let ((_hd1610916172_ (##car _e1610816169_))
                                      (_tl1611016174_ (##cdr _e1610816169_)))
                                  (if (gx#stx-pair? _hd1610916172_)
                                      (let ((_e1611116177_
                                             (gx#stx-e _hd1610916172_)))
                                        (let ((_hd1611216180_
                                               (##car _e1611116177_))
                                              (_tl1611316182_
                                               (##cdr _e1611116177_)))
                                          (if (gx#stx-pair? _hd1611216180_)
                                              (let ((_e1611416185_
                                                     (gx#stx-e
                                                      _hd1611216180_)))
                                                (let ((_hd1611516188_
                                                       (##car _e1611416185_))
                                                      (_tl1611616190_
                                                       (##cdr _e1611416185_)))
                                                  (if (gx#stx-null?
                                                       _tl1611616190_)
                                                      (if (gx#stx-pair?
                                                           _tl1611316182_)
                                                          (let ((_e1611716193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1611316182_)))
                    (let ((_hd1611816196_ (##car _e1611716193_))
                          (_tl1611916198_ (##cdr _e1611716193_)))
                      (if (gx#stx-pair? _hd1611816196_)
                          (let ((_e1612016201_ (gx#stx-e _hd1611816196_)))
                            (let ((_hd1612116204_ (##car _e1612016201_))
                                  (_tl1612216206_ (##cdr _e1612016201_)))
                              (if (gx#stx-pair? _tl1612216206_)
                                  (let ((_e1612316209_
                                         (gx#stx-e _tl1612216206_)))
                                    (let ((_hd1612416212_
                                           (##car _e1612316209_))
                                          (_tl1612516214_
                                           (##cdr _e1612316209_)))
                                      (if (gx#stx-pair? _hd1612416212_)
                                          (let ((_e1612616217_
                                                 (gx#stx-e _hd1612416212_)))
                                            (let ((_hd1612716220_
                                                   (##car _e1612616217_))
                                                  (_tl1612816222_
                                                   (##cdr _e1612616217_)))
                                              (if (gx#stx-pair? _hd1612716220_)
                                                  (let ((_e1612916225_
                                                         (gx#stx-e
                                                          _hd1612716220_)))
                                                    (let ((_hd1613016228_
                                                           (##car _e1612916225_))
                                                          (_tl1613116230_
                                                           (##cdr _e1612916225_)))
                                                      (if (gx#stx-pair?
                                                           _hd1613016228_)
                                                          (let ((_e1613216233_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1613016228_)))
                    (let ((_hd1613316236_ (##car _e1613216233_))
                          (_tl1613416238_ (##cdr _e1613216233_)))
                      (if (gx#stx-null? _tl1613416238_)
                          (if (gx#stx-pair? _tl1613116230_)
                              (let ((_e1613516241_ (gx#stx-e _tl1613116230_)))
                                (let ((_hd1613616244_ (##car _e1613516241_))
                                      (_tl1613716246_ (##cdr _e1613516241_)))
                                  (if (gx#stx-null? _tl1613716246_)
                                      (if (gx#stx-null? _tl1612816222_)
                                          (if (gx#stx-pair? _tl1612516214_)
                                              (let ((_e1613816249_
                                                     (gx#stx-e
                                                      _tl1612516214_)))
                                                (let ((_hd1613916252_
                                                       (##car _e1613816249_))
                                                      (_tl1614016254_
                                                       (##cdr _e1613816249_)))
                                                  (if (gx#stx-null?
                                                       _tl1614016254_)
                                                      (if (gx#stx-null?
                                                           _tl1611916198_)
                                                          (if (gx#stx-null?
                                                               _tl1611016174_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl1610716166_)
                          (let ((_e1614116257_ (gx#stx-e _tl1610716166_)))
                            (let ((_hd1614216260_ (##car _e1614116257_))
                                  (_tl1614316262_ (##cdr _e1614116257_)))
                              (if (gx#stx-null? _tl1614316262_)
                                  ((lambda (_L16265_
                                            _L16266_
                                            _L16267_
                                            _L16268_
                                            _L16269_)
                                     (let* ((_get-kws-id16309_
                                             (make-symbol
                                              (gx#stx-e _L16081_)
                                              (gensym '__)))
                                            (_get-kws-id16311_
                                             (gx#core-quote-syntax__1
                                              _get-kws-id16309_
                                              (gx#stx-source _stx15794_)))
                                            (_main-id16313_
                                             (make-symbol
                                              (gx#stx-e _L16081_)
                                              (gensym '__)))
                                            (_main-id16315_
                                             (gx#core-quote-syntax__1
                                              _main-id16313_
                                              (gx#stx-source _stx15794_)))
                                            (_g24546_
                                             (gx#core-bind-runtime!__0
                                              _get-kws-id16311_))
                                            (_g24547_
                                             (gx#core-bind-runtime!__0
                                              _main-id16315_))
                                            (_new-kw-dispatch16319_
                                             (gxc#apply-expression-subst
                                              _L16265_
                                              _L16269_
                                              _get-kws-id16311_))
                                            (_new-get-kws16321_
                                             (gxc#apply-expression-subst
                                              _L16266_
                                              _L16268_
                                              _main-id16315_)))
                                       (begin
                                         (gxc#verbose
                                          '"lift kw-lambda dispatch "
                                          (gxc#identifier-symbol _L16081_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _get-kws-id16311_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _main-id16315_))
                                         (_lp15934_
                                          (cons (_bind-e__2447824479_
                                                 _main-id16315_
                                                 _L16267_
                                                 '#f)
                                                (cons (_bind-e__2447824479_
                                                       _get-kws-id16311_
                                                       _new-get-kws16321_
                                                       '#f)
                                                      (cons (_bind-e__2447824479_
                                                             _L16081_
                                                             _new-kw-dispatch16319_
                                                             '#f)
                                                            _rest15957_)))
                                          _bind15937_))))
                                   _hd1614216260_
                                   _hd1613916252_
                                   _hd1613616244_
                                   _hd1613316236_
                                   _hd1611516188_)
                                  (_g1609516148_ _g1609616151_))))
                          (_g1609516148_ _g1609616151_))
                      (_g1609516148_ _g1609616151_))
                  (_g1609516148_ _g1609616151_))
              (_g1609516148_ _g1609616151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1609516148_ _g1609616151_))
                                          (_g1609516148_ _g1609616151_))
                                      (_g1609516148_ _g1609616151_))))
                              (_g1609516148_ _g1609616151_))
                          (_g1609516148_ _g1609616151_))))
                  (_g1609516148_ _g1609616151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1609516148_
                                                   _g1609616151_))))
                                          (_g1609516148_ _g1609616151_))))
                                  (_g1609516148_ _g1609616151_))))
                          (_g1609516148_ _g1609616151_))))
                  (_g1609516148_ _g1609616151_))
              (_g1609516148_ _g1609616151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1609516148_ _g1609616151_))))
                                      (_g1609516148_ _g1609616151_))))
                              (_g1609516148_ _g1609616151_))))
                      (_g1609516148_ _g1609616151_))))
              (_g1609516148_ _g1609616151_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1609416324_ _L16080_))
                                        (_g1596216051_ _g1596416054_)))
                                  _hd1599616075_
                                  _hd1599316067_)
                                 (_g1596216051_ _g1596416054_))))
                         (_g1596216051_ _g1596416054_))
                     (_g1596216051_ _g1596416054_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1596216051_
                                                      _g1596416054_))))
                                             (_g1596216051_ _g1596416054_))))
                                      (_g1596016499_
                                       (lambda (_g1596416330_)
                                         (if (gx#stx-pair? _g1596416330_)
                                             (let ((_e1597816332_
                                                    (gx#stx-e _g1596416330_)))
                                               (let ((_hd1597916335_
                                                      (##car _e1597816332_))
                                                     (_tl1598016337_
                                                      (##cdr _e1597816332_)))
                                                 (if (gx#stx-pair?
                                                      _hd1597916335_)
                                                     (let ((_e1598116340_
                                                            (gx#stx-e
                                                             _hd1597916335_)))
                                                       (let ((_hd1598216343_
                                                              (##car _e1598116340_))
                                                             (_tl1598316345_
                                                              (##cdr _e1598116340_)))
                                                         (if (gx#stx-null?
                                                              _tl1598316345_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1598016337_)
                         (let ((_e1598416348_ (gx#stx-e _tl1598016337_)))
                           (let ((_hd1598516351_ (##car _e1598416348_))
                                 (_tl1598616353_ (##cdr _e1598416348_)))
                             (if (gx#stx-null? _tl1598616353_)
                                 ((lambda (_L16356_ _L16357_)
                                    (if (if (gx#identifier? _L16357_)
                                            (gxc#opt-lambda-expr? _L16356_)
                                            '#f)
                                        (let* ((_g1637116401_
                                                (lambda (_g1637216398_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1637216398_)))
                                               (_g1637016496_
                                                (lambda (_g1637216404_)
                                                  (if (gx#stx-pair?
                                                       _g1637216404_)
                                                      (let ((_e1637616406_
                                                             (gx#stx-e
                                                              _g1637216404_)))
                                                        (let ((_hd1637716409_
                                                               (##car _e1637616406_))
                                                              (_tl1637816411_
                                                               (##cdr _e1637616406_)))
                                                          (if (gx#stx-pair?
                                                               _tl1637816411_)
                                                              (let ((_e1637916414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1637816411_)))
                        (let ((_hd1638016417_ (##car _e1637916414_))
                              (_tl1638116419_ (##cdr _e1637916414_)))
                          (if (gx#stx-pair? _hd1638016417_)
                              (let ((_e1638216422_ (gx#stx-e _hd1638016417_)))
                                (let ((_hd1638316425_ (##car _e1638216422_))
                                      (_tl1638416427_ (##cdr _e1638216422_)))
                                  (if (gx#stx-pair? _hd1638316425_)
                                      (let ((_e1638516430_
                                             (gx#stx-e _hd1638316425_)))
                                        (let ((_hd1638616433_
                                               (##car _e1638516430_))
                                              (_tl1638716435_
                                               (##cdr _e1638516430_)))
                                          (if (gx#stx-pair? _hd1638616433_)
                                              (let ((_e1638816438_
                                                     (gx#stx-e
                                                      _hd1638616433_)))
                                                (let ((_hd1638916441_
                                                       (##car _e1638816438_))
                                                      (_tl1639016443_
                                                       (##cdr _e1638816438_)))
                                                  (if (gx#stx-null?
                                                       _tl1639016443_)
                                                      (if (gx#stx-pair?
                                                           _tl1638716435_)
                                                          (let ((_e1639116446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl1638716435_)))
                    (let ((_hd1639216449_ (##car _e1639116446_))
                          (_tl1639316451_ (##cdr _e1639116446_)))
                      (if (gx#stx-null? _tl1639316451_)
                          (if (gx#stx-null? _tl1638416427_)
                              (if (gx#stx-pair? _tl1638116419_)
                                  (let ((_e1639416454_
                                         (gx#stx-e _tl1638116419_)))
                                    (let ((_hd1639516457_
                                           (##car _e1639416454_))
                                          (_tl1639616459_
                                           (##cdr _e1639416454_)))
                                      (if (gx#stx-null? _tl1639616459_)
                                          ((lambda (_L16462_ _L16463_ _L16464_)
                                             (let* ((_lambda-id16488_
                                                     (make-symbol
                                                      (gx#stx-e _L16357_)
                                                      (gensym '__)))
                                                    (_lambda-id16490_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id16488_
                                                      (gx#stx-source
                                                       _stx15794_)))
                                                    (_g24548_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id16490_))
                                                    (_new-case-lambda-expr16493_
                                                     (gxc#apply-expression-subst
                                                      _L16462_
                                                      _L16464_
                                                      _lambda-id16490_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#identifier-symbol
                                                   _L16357_)
                                                  '" => "
                                                  (gxc#identifier-symbol
                                                   _lambda-id16490_))
                                                 (_lp15934_
                                                  (cons (_bind-e__2447824479_
                                                         _L16357_
                                                         _new-case-lambda-expr16493_
                                                         '#f)
                                                        _rest15957_)
                                                  (cons (_bind-e__0__2448024481_
                                                         _lambda-id16490_
                                                         _L16463_)
                                                        _bind15937_)))))
                                           _hd1639516457_
                                           _hd1639216449_
                                           _hd1638916441_)
                                          (_g1637116401_ _g1637216404_))))
                                  (_g1637116401_ _g1637216404_))
                              (_g1637116401_ _g1637216404_))
                          (_g1637116401_ _g1637216404_))))
                  (_g1637116401_ _g1637216404_))
              (_g1637116401_ _g1637216404_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1637116401_ _g1637216404_))))
                                      (_g1637116401_ _g1637216404_))))
                              (_g1637116401_ _g1637216404_))))
                      (_g1637116401_ _g1637216404_))))
              (_g1637116401_ _g1637216404_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1637016496_ _L16356_))
                                        (_g1596116327_ _g1596416330_)))
                                  _hd1598516351_
                                  _hd1598216343_)
                                 (_g1596116327_ _g1596416330_))))
                         (_g1596116327_ _g1596416330_))
                     (_g1596116327_ _g1596416330_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1596116327_
                                                      _g1596416330_))))
                                             (_g1596116327_ _g1596416330_))))
                                      (_g1595916618_
                                       (lambda (_g1596416502_)
                                         (if (gx#stx-pair? _g1596416502_)
                                             (let ((_e1596716504_
                                                    (gx#stx-e _g1596416502_)))
                                               (let ((_hd1596816507_
                                                      (##car _e1596716504_))
                                                     (_tl1596916509_
                                                      (##cdr _e1596716504_)))
                                                 (if (gx#stx-pair?
                                                      _hd1596816507_)
                                                     (let ((_e1597016512_
                                                            (gx#stx-e
                                                             _hd1596816507_)))
                                                       (let ((_hd1597116515_
                                                              (##car _e1597016512_))
                                                             (_tl1597216517_
                                                              (##cdr _e1597016512_)))
                                                         (if (gx#stx-null?
                                                              _tl1597216517_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1596916509_)
                         (let ((_e1597316520_ (gx#stx-e _tl1596916509_)))
                           (let ((_hd1597416523_ (##car _e1597316520_))
                                 (_tl1597516525_ (##cdr _e1597316520_)))
                             (if (gx#stx-null? _tl1597516525_)
                                 ((lambda (_L16528_ _L16529_)
                                    (if (if (gx#identifier? _L16529_)
                                            (gxc#case-lambda-expr? _L16528_)
                                            '#f)
                                        (let* ((_g1654416558_
                                                (lambda (_g1654516555_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1654516555_)))
                                               (_g1654316593_
                                                (lambda (_g1654516561_)
                                                  (if (gx#stx-pair?
                                                       _g1654516561_)
                                                      (let ((_e1655116563_
                                                             (gx#stx-e
                                                              _g1654516561_)))
                                                        (let ((_hd1655216566_
                                                               (##car _e1655116563_))
                                                              (_tl1655316568_
                                                               (##cdr _e1655116563_)))
                                                          ((lambda (_L16571_)
                                                             (let ((_g24549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__%
                             _stx15794_
                             _L16529_
                             _L16571_
                             '#t)))
                       (begin
                         (let ((_g24550_
                                (if (##values? _g24549_)
                                    (##vector-length _g24549_)
                                    1)))
                           (if (not (##fx= _g24550_ 3))
                               (error "Context expects 3 values" _g24550_)))
                         (let ((_ids16581_ (##vector-ref _g24549_ 0))
                               (_impls16582_ (##vector-ref _g24549_ 1))
                               (_clauses16583_ (##vector-ref _g24549_ 2)))
                           (let* ((_g24551_
                                   (for-each gx#core-bind-runtime! _ids16581_))
                                  (_xbind16586_
                                   (map _bind-e15796_ _ids16581_ _impls16582_))
                                  (_expr*16588_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses16583_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*16590_
                                   (_bind-e__2447824479_
                                    _L16529_
                                    _expr*16588_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#identifier-symbol _L16529_)
                                '" => "
                                (map gxc#identifier-symbol _ids16581_))
                               (_lp15934_
                                _rest15957_
                                (cons _bind*16590_
                                      (foldl1 cons
                                              _bind15937_
                                              _xbind16586_)))))))))
                   _tl1655316568_)))
              (_g1654416558_ _g1654516561_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1654216615_
                                                (lambda (_g1654516596_)
                                                  (if (gx#stx-pair?
                                                       _g1654516596_)
                                                      (let ((_e1654716598_
                                                             (gx#stx-e
                                                              _g1654516596_)))
                                                        (let ((_hd1654816601_
                                                               (##car _e1654716598_))
                                                              (_tl1654916603_
                                                               (##cdr _e1654716598_)))
                                                          ((lambda (_L16606_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L16606_)
                         (_lp15934_
                          _rest15957_
                          (cons (_bind-e__2447824479_ _L16529_ _L16528_ '#f)
                                _bind15937_))
                         (_g1654316593_ _g1654516596_)))
                   _tl1654916603_)))
              (_g1654316593_ _g1654516596_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1654216615_ _L16528_))
                                        (_g1596016499_ _g1596416502_)))
                                  _hd1597416523_
                                  _hd1597116515_)
                                 (_g1596016499_ _g1596416502_))))
                         (_g1596016499_ _g1596416502_))
                     (_g1596016499_ _g1596416502_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1596016499_
                                                      _g1596416502_))))
                                             (_g1596016499_ _g1596416502_)))))
                                 (_g1595916618_ _hd15958_)))))
                       (if (##pair? _rest1593815946_)
                           (let ((_hd1594316624_ (##car _rest1593815946_))
                                 (_tl1594416626_ (##cdr _rest1593815946_)))
                             (let* ((_hd16629_ _hd1594316624_)
                                    (_rest16631_ _tl1594416626_))
                               (_K1594216621_ _rest16631_ _hd16629_)))
                           (_else1594015954_)))))))
        (let* ((_g1580015827_
                (lambda (_g1580115824_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1580115824_)))
               (_g1579915834_
                (lambda (_g1580115830_)
                  ((lambda () (gxc#xform-let-values% _stx15794_)))))
               (_g1579815929_
                (lambda (_g1580115837_)
                  (if (gx#stx-pair? _g1580115837_)
                      (let ((_e1580515839_ (gx#stx-e _g1580115837_)))
                        (let ((_hd1580615842_ (##car _e1580515839_))
                              (_tl1580715844_ (##cdr _e1580515839_)))
                          (if (gx#stx-pair? _tl1580715844_)
                              (let ((_e1580815847_ (gx#stx-e _tl1580715844_)))
                                (let ((_hd1580915850_ (##car _e1580815847_))
                                      (_tl1581015852_ (##cdr _e1580815847_)))
                                  (if (gx#stx-pair/null? _hd1580915850_)
                                      (if (fx>= (gx#stx-length _hd1580915850_)
                                                '0)
                                          (let ((_g24552_
                                                 (gx#syntax-split-splice
                                                  _hd1580915850_
                                                  '0)))
                                            (begin
                                              (let ((_g24553_
                                                     (if (##values? _g24552_)
                                                         (##vector-length
                                                          _g24552_)
                                                         1)))
                                                (if (not (##fx= _g24553_ 2))
                                                    (error "Context expects 2 values"
                                                           _g24553_)))
                                              (let ((_target1581115855_
                                                     (##vector-ref _g24552_ 0))
                                                    (_tl1581315857_
                                                     (##vector-ref
                                                      _g24552_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl1581315857_)
                                                    (letrec ((_loop1581415860_
                                                              (lambda (_hd1581215863_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind1581815865_)
                        (if (gx#stx-pair? _hd1581215863_)
                            (let ((_e1581515868_ (gx#stx-e _hd1581215863_)))
                              (let ((_lp-hd1581615871_ (##car _e1581515868_))
                                    (_lp-tl1581715873_ (##cdr _e1581515868_)))
                                (_loop1581415860_
                                 _lp-tl1581715873_
                                 (cons _lp-hd1581615871_ _bind1581815865_))))
                            (let ((_bind1581915876_
                                   (reverse _bind1581815865_)))
                              (if (gx#stx-pair? _tl1581015852_)
                                  (let ((_e1582015879_
                                         (gx#stx-e _tl1581015852_)))
                                    (let ((_hd1582115882_
                                           (##car _e1582015879_))
                                          (_tl1582215884_
                                           (##cdr _e1582015879_)))
                                      (if (gx#stx-null? _tl1582215884_)
                                          ((lambda (_L15887_ _L15888_ _L15889_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1591015913_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1591115915_)
                             (cons _g1591015913_ _g1591115915_))
                           '()
                           _L15888_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_hd15926_
                                                           (_compile-bindings15797_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g1591815921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1591915923_)
                                (cons _g1591815921_ _g1591915923_))
                              '()
                              _L15888_))))
                  (_body15927_ (gxc#compile-e _L15887_)))
              (gxc#xform-wrap-source
               (cons _L15889_ (cons _hd15926_ (cons _body15927_ '())))
               _stx15794_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj24487
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj24487)
                                                      __obj24487)))
                                                 (_g1579915834_
                                                  _g1580115837_)))
                                           _hd1582115882_
                                           _bind1581915876_
                                           _hd1580615842_)
                                          (_g1579915834_ _g1580115837_))))
                                  (_g1579915834_ _g1580115837_)))))))
              (_loop1581415860_ _target1581115855_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1579915834_
                                                     _g1580115837_)))))
                                          (_g1579915834_ _g1580115837_))
                                      (_g1579915834_ _g1580115837_))))
                              (_g1579915834_ _g1580115837_))))
                      (_g1579915834_ _g1580115837_)))))
          (_g1579815929_ _stx15794_)))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind15712_)
      (let* ((_g1571515732_
              (lambda (_g1571615729_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1571615729_)))
             (_g1571415739_ (lambda (_g1571615735_) ((lambda () '#f))))
             (_g1571315791_
              (lambda (_g1571615742_)
                (if (gx#stx-pair? _g1571615742_)
                    (let ((_e1571915744_ (gx#stx-e _g1571615742_)))
                      (let ((_hd1572015747_ (##car _e1571915744_))
                            (_tl1572115749_ (##cdr _e1571915744_)))
                        (if (gx#stx-pair? _hd1572015747_)
                            (let ((_e1572215752_ (gx#stx-e _hd1572015747_)))
                              (let ((_hd1572315755_ (##car _e1572215752_))
                                    (_tl1572415757_ (##cdr _e1572215752_)))
                                (if (gx#stx-null? _tl1572415757_)
                                    (if (gx#stx-pair? _tl1572115749_)
                                        (let ((_e1572515760_
                                               (gx#stx-e _tl1572115749_)))
                                          (let ((_hd1572615763_
                                                 (##car _e1572515760_))
                                                (_tl1572715765_
                                                 (##cdr _e1572515760_)))
                                            (if (gx#stx-null? _tl1572715765_)
                                                ((lambda (_L15768_ _L15769_)
                                                   (if (gx#identifier?
                                                        _L15769_)
                                                       (let ((_$e15785_
                                                              (gxc#case-lambda-expr?
                                                               _L15768_)))
                                                         (if _$e15785_
                                                             _$e15785_
                                                             (let ((_$e15788_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#opt-lambda-expr? _L15768_)))
                       (if _$e15788_
                           _$e15788_
                           (gxc#kw-lambda-expr? _L15768_)))))
               '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1572615763_
                                                 _hd1572315755_)
                                                (_g1571415739_
                                                 _g1571615742_))))
                                        (_g1571415739_ _g1571615742_))
                                    (_g1571415739_ _g1571615742_))))
                            (_g1571415739_ _g1571615742_))))
                    (_g1571415739_ _g1571615742_)))))
        (_g1571315791_ _bind15712_)))))
