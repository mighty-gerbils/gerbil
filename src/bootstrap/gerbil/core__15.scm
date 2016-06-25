(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<module-sugar>[:0:]#require|
    (lambda (_$stx27158_)
      (let ((_g2716327182_
             (lambda (_g2716427178_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2716427178_))))
        (let ((_g2716227228_
               (lambda (_g2716427186_)
                 (if (gx#stx-pair? _g2716427186_)
                     (let ((_e2717127189_ (gx#syntax-e _g2716427186_)))
                       (let ((_hd2717227193_ (##car _e2717127189_))
                             (_tl2717327196_ (##cdr _e2717127189_)))
                         (if (gx#stx-pair? _tl2717327196_)
                             (let ((_e2717427199_
                                    (gx#syntax-e _tl2717327196_)))
                               (let ((_hd2717527203_ (##car _e2717427199_))
                                     (_tl2717627206_ (##cdr _e2717427199_)))
                                 ((lambda (_L27209_ _L27211_ _L27212_)
                                    (cons (gx#datum->syntax '#f 'cond-expand)
                                          (cons (cons _L27211_
                                                      (cons (cons _L27212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L27209_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'else)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'syntax-error)
                                (cons '"Missing required feature"
                                      (cons _L27211_ '())))
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _tl2717627206_
                                  _hd2717527203_
                                  _hd2717227193_)))
                             (_g2716327182_ _g2716427186_))))
                     (_g2716327182_ _g2716427186_)))))
          (let ((_g2716127249_
                 (lambda (_g2716427232_)
                   (if (gx#stx-pair? _g2716427232_)
                       (let ((_e2716527235_ (gx#syntax-e _g2716427232_)))
                         (let ((_hd2716627239_ (##car _e2716527235_))
                               (_tl2716727242_ (##cdr _e2716527235_)))
                           (if (gx#stx-null? _tl2716727242_)
                               ((lambda ()
                                  (cons (gx#datum->syntax '#f 'begin) '())))
                               (_g2716227228_ _g2716427232_))))
                       (_g2716227228_ _g2716427232_)))))
            (_g2716127249_ _$stx27158_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx27253_)
      (let ((_g2725827298_
             (lambda (_g2725927294_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2725927294_))))
        (let ((_g2725727399_
               (lambda (_g2725927302_)
                 (if (gx#stx-pair? _g2725927302_)
                     (let ((_e2727527305_ (gx#syntax-e _g2725927302_)))
                       (let ((_hd2727627309_ (##car _e2727527305_))
                             (_tl2727727312_ (##cdr _e2727527305_)))
                         (if (gx#stx-pair? _tl2727727312_)
                             (let ((_e2727827315_
                                    (gx#syntax-e _tl2727727312_)))
                               (let ((_hd2727927319_ (##car _e2727827315_))
                                     (_tl2728027322_ (##cdr _e2727827315_)))
                                 (if (gx#stx-pair? _hd2727927319_)
                                     (let ((_e2728127325_
                                            (gx#syntax-e _hd2727927319_)))
                                       (let ((_hd2728227329_
                                              (##car _e2728127325_))
                                             (_tl2728327332_
                                              (##cdr _e2728127325_)))
                                         (if (gx#stx-pair/null? _tl2728027322_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2728027322_)
                                                       '0)
                                                 (let ((_g28513_
                                                        (gx#syntax-split-splice
                                                         _tl2728027322_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28514_
                                                            (values-count
                                                             _g28513_)))
                                                       (if (not (fx= _g28514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28514_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2728427335_
                                                            (values-ref
                                                             _g28513_
                                                             0))
                                                           (_tl2728627338_
                                                            (values-ref
                                                             _g28513_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2728627338_)
                                                           (letrec ((_loop2728727341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2728527345_ _body2729127348_)
                               (if (gx#stx-pair? _hd2728527345_)
                                   (let ((_e2728827351_
                                          (gx#syntax-e _hd2728527345_)))
                                     (let ((_lp-hd2728927355_
                                            (##car _e2728827351_))
                                           (_lp-tl2729027358_
                                            (##cdr _e2728827351_)))
                                       (_loop2728727341_
                                        _lp-tl2729027358_
                                        (cons _lp-hd2728927355_
                                              _body2729127348_))))
                                   (let ((_body2729227361_
                                          (reverse _body2729127348_)))
                                     ((lambda (_L27365_
                                               _L27367_
                                               _L27368_
                                               _L27369_)
                                        (if (gx#identifier? _L27368_)
                                            (cons _L27369_
                                                  (cons _L27368_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L27367_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2739027393_
                                                    _g2739127396_)
                                             (cons _g2739027393_
                                                   _g2739127396_))
                                           '()
                                           _L27365_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2725827298_ _g2725927302_)))
                                      _body2729227361_
                                      _tl2728327332_
                                      _hd2728227329_
                                      _hd2727627309_))))))
                     (_loop2728727341_ _target2728427335_ '()))
                   (_g2725827298_ _g2725927302_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2725827298_ _g2725927302_))
                                             (_g2725827298_ _g2725927302_))))
                                     (_g2725827298_ _g2725927302_))))
                             (_g2725827298_ _g2725927302_))))
                     (_g2725827298_ _g2725927302_)))))
          (let ((_g2725627453_
                 (lambda (_g2725927403_)
                   (if (gx#stx-pair? _g2725927403_)
                       (let ((_e2726227406_ (gx#syntax-e _g2725927403_)))
                         (let ((_hd2726327410_ (##car _e2726227406_))
                               (_tl2726427413_ (##cdr _e2726227406_)))
                           (if (gx#stx-pair? _tl2726427413_)
                               (let ((_e2726527416_
                                      (gx#syntax-e _tl2726427413_)))
                                 (let ((_hd2726627420_ (##car _e2726527416_))
                                       (_tl2726727423_ (##cdr _e2726527416_)))
                                   (if (gx#stx-pair? _tl2726727423_)
                                       (let ((_e2726827426_
                                              (gx#syntax-e _tl2726727423_)))
                                         (let ((_hd2726927430_
                                                (##car _e2726827426_))
                                               (_tl2727027433_
                                                (##cdr _e2726827426_)))
                                           (if (gx#stx-null? _tl2727027433_)
                                               ((lambda (_L27436_ _L27438_)
                                                  (if (gx#identifier? _L27438_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L27438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-import-expander)
                                      (cons _L27436_ '()))
                                '())))
              (_g2725727399_ _g2725927403_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2726927430_
                                                _hd2726627420_)
                                               (_g2725727399_ _g2725927403_))))
                                       (_g2725727399_ _g2725927403_))))
                               (_g2725727399_ _g2725927403_))))
                       (_g2725727399_ _g2725927403_)))))
            (_g2725627453_ _$stx27253_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-export|
    (lambda (_$stx27458_)
      (let ((_g2746327503_
             (lambda (_g2746427499_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2746427499_))))
        (let ((_g2746227604_
               (lambda (_g2746427507_)
                 (if (gx#stx-pair? _g2746427507_)
                     (let ((_e2748027510_ (gx#syntax-e _g2746427507_)))
                       (let ((_hd2748127514_ (##car _e2748027510_))
                             (_tl2748227517_ (##cdr _e2748027510_)))
                         (if (gx#stx-pair? _tl2748227517_)
                             (let ((_e2748327520_
                                    (gx#syntax-e _tl2748227517_)))
                               (let ((_hd2748427524_ (##car _e2748327520_))
                                     (_tl2748527527_ (##cdr _e2748327520_)))
                                 (if (gx#stx-pair? _hd2748427524_)
                                     (let ((_e2748627530_
                                            (gx#syntax-e _hd2748427524_)))
                                       (let ((_hd2748727534_
                                              (##car _e2748627530_))
                                             (_tl2748827537_
                                              (##cdr _e2748627530_)))
                                         (if (gx#stx-pair/null? _tl2748527527_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2748527527_)
                                                       '0)
                                                 (let ((_g28515_
                                                        (gx#syntax-split-splice
                                                         _tl2748527527_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28516_
                                                            (values-count
                                                             _g28515_)))
                                                       (if (not (fx= _g28516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28516_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2748927540_
                                                            (values-ref
                                                             _g28515_
                                                             0))
                                                           (_tl2749127543_
                                                            (values-ref
                                                             _g28515_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2749127543_)
                                                           (letrec ((_loop2749227546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2749027550_ _body2749627553_)
                               (if (gx#stx-pair? _hd2749027550_)
                                   (let ((_e2749327556_
                                          (gx#syntax-e _hd2749027550_)))
                                     (let ((_lp-hd2749427560_
                                            (##car _e2749327556_))
                                           (_lp-tl2749527563_
                                            (##cdr _e2749327556_)))
                                       (_loop2749227546_
                                        _lp-tl2749527563_
                                        (cons _lp-hd2749427560_
                                              _body2749627553_))))
                                   (let ((_body2749727566_
                                          (reverse _body2749627553_)))
                                     ((lambda (_L27570_
                                               _L27572_
                                               _L27573_
                                               _L27574_)
                                        (if (gx#identifier? _L27573_)
                                            (cons _L27574_
                                                  (cons _L27573_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L27572_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2759527598_
                                                    _g2759627601_)
                                             (cons _g2759527598_
                                                   _g2759627601_))
                                           '()
                                           _L27570_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2746327503_ _g2746427507_)))
                                      _body2749727566_
                                      _tl2748827537_
                                      _hd2748727534_
                                      _hd2748127514_))))))
                     (_loop2749227546_ _target2748927540_ '()))
                   (_g2746327503_ _g2746427507_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2746327503_ _g2746427507_))
                                             (_g2746327503_ _g2746427507_))))
                                     (_g2746327503_ _g2746427507_))))
                             (_g2746327503_ _g2746427507_))))
                     (_g2746327503_ _g2746427507_)))))
          (let ((_g2746127658_
                 (lambda (_g2746427608_)
                   (if (gx#stx-pair? _g2746427608_)
                       (let ((_e2746727611_ (gx#syntax-e _g2746427608_)))
                         (let ((_hd2746827615_ (##car _e2746727611_))
                               (_tl2746927618_ (##cdr _e2746727611_)))
                           (if (gx#stx-pair? _tl2746927618_)
                               (let ((_e2747027621_
                                      (gx#syntax-e _tl2746927618_)))
                                 (let ((_hd2747127625_ (##car _e2747027621_))
                                       (_tl2747227628_ (##cdr _e2747027621_)))
                                   (if (gx#stx-pair? _tl2747227628_)
                                       (let ((_e2747327631_
                                              (gx#syntax-e _tl2747227628_)))
                                         (let ((_hd2747427635_
                                                (##car _e2747327631_))
                                               (_tl2747527638_
                                                (##cdr _e2747327631_)))
                                           (if (gx#stx-null? _tl2747527638_)
                                               ((lambda (_L27641_ _L27643_)
                                                  (if (gx#identifier? _L27643_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L27643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-export-expander)
                                      (cons _L27641_ '()))
                                '())))
              (_g2746227604_ _g2746427608_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2747427635_
                                                _hd2747127625_)
                                               (_g2746227604_ _g2746427608_))))
                                       (_g2746227604_ _g2746427608_))))
                               (_g2746227604_ _g2746427608_))))
                       (_g2746227604_ _g2746427608_)))))
            (_g2746127658_ _$stx27458_))))))
  (define |gerbil/core::<module-sugar>[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx27663_)
       (let ((_g2766627690_
              (lambda (_g2766727686_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2766727686_))))
         (let ((_g2766527812_
                (lambda (_g2766727694_)
                  (if (gx#stx-pair? _g2766727694_)
                      (let ((_e2767027697_ (gx#syntax-e _g2766727694_)))
                        (let ((_hd2767127701_ (##car _e2767027697_))
                              (_tl2767227704_ (##cdr _e2767027697_)))
                          (if (gx#stx-pair? _tl2767227704_)
                              (let ((_e2767327707_
                                     (gx#syntax-e _tl2767227704_)))
                                (let ((_hd2767427711_ (##car _e2767327707_))
                                      (_tl2767527714_ (##cdr _e2767327707_)))
                                  (if (gx#stx-pair/null? _tl2767527714_)
                                      (if (fx>= (gx#stx-length _tl2767527714_)
                                                '0)
                                          (let ((_g28517_
                                                 (gx#syntax-split-splice
                                                  _tl2767527714_
                                                  '0)))
                                            (begin
                                              (let ((_g28518_
                                                     (values-count _g28517_)))
                                                (if (not (fx= _g28518_ 2))
                                                    (error "Context expects 2 values"
                                                           _g28518_)))
                                              (let ((_target2767627717_
                                                     (values-ref _g28517_ 0))
                                                    (_tl2767827720_
                                                     (values-ref _g28517_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2767827720_)
                                                    (letrec ((_loop2767927723_
                                                              (lambda (_hd2767727727_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2768327730_)
                        (if (gx#stx-pair? _hd2767727727_)
                            (let ((_e2768027733_ (gx#syntax-e _hd2767727727_)))
                              (let ((_lp-hd2768127737_ (##car _e2768027733_))
                                    (_lp-tl2768227740_ (##cdr _e2768027733_)))
                                (_loop2767927723_
                                 _lp-tl2768227740_
                                 (cons _lp-hd2768127737_ _id2768327730_))))
                            (let ((_id2768427743_ (reverse _id2768327730_)))
                              ((lambda (_L27747_ _L27749_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2776627769_
                                                        _g2776727772_)
                                                 (cons _g2776627769_
                                                       _g2776727772_))
                                               '()
                                               _L27747_)))
                                     (let ((_keys27783_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2777427777_
                                                               _g2777527780_)
                                                        (cons _g2777427777_
                                                              _g2777527780_))
                                                      '()
                                                      _L27747_)))))
                                       (let ((_keytab27794_
                                              (let ((_ht27786_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2778827790_)
                                                     (hash-put!
                                                      _ht27786_
                                                      _g2778827790_
                                                      '#t))
                                                   _keys27783_)
                                                  _ht27786_))))
                                         (let ((_imports27797_
                                                (gx#core-expand-import-source
                                                 _L27749_)))
                                           (let ((_fold-e27807_
                                                  (letrec ((_fold-e27800_
                                                            (lambda (_in27803_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r27805_)
                      (if (gx#module-import? _in27803_)
                          (if (hash-get
                               _keytab27794_
                               (gx#module-import-name _in27803_))
                              (cons _in27803_ _r27805_)
                              _r27805_)
                          (if (gx#import-set? _in27803_)
                              (foldl _fold-e27800_
                                     _r27805_
                                     (gx#import-set-imports _in27803_))
                              _r27805_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e27800_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e27807_
                                                            '()
                                                            _imports27797_)))))))
                                     (_g2766627690_ _g2766727694_)))
                               _id2768427743_
                               _hd2767427711_))))))
              (_loop2767927723_ _target2767627717_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2766627690_
                                                     _g2766727694_)))))
                                          (_g2766627690_ _g2766727694_))
                                      (_g2766627690_ _g2766727694_))))
                              (_g2766627690_ _g2766727694_))))
                      (_g2766627690_ _g2766727694_)))))
           (_g2766527812_ _stx27663_))))))
  (define |gerbil/core::<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx27817_)
       (let ((_g2782027844_
              (lambda (_g2782127840_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2782127840_))))
         (let ((_g2781927966_
                (lambda (_g2782127848_)
                  (if (gx#stx-pair? _g2782127848_)
                      (let ((_e2782427851_ (gx#syntax-e _g2782127848_)))
                        (let ((_hd2782527855_ (##car _e2782427851_))
                              (_tl2782627858_ (##cdr _e2782427851_)))
                          (if (gx#stx-pair? _tl2782627858_)
                              (let ((_e2782727861_
                                     (gx#syntax-e _tl2782627858_)))
                                (let ((_hd2782827865_ (##car _e2782727861_))
                                      (_tl2782927868_ (##cdr _e2782727861_)))
                                  (if (gx#stx-pair/null? _tl2782927868_)
                                      (if (fx>= (gx#stx-length _tl2782927868_)
                                                '0)
                                          (let ((_g28519_
                                                 (gx#syntax-split-splice
                                                  _tl2782927868_
                                                  '0)))
                                            (begin
                                              (let ((_g28520_
                                                     (values-count _g28519_)))
                                                (if (not (fx= _g28520_ 2))
                                                    (error "Context expects 2 values"
                                                           _g28520_)))
                                              (let ((_target2783027871_
                                                     (values-ref _g28519_ 0))
                                                    (_tl2783227874_
                                                     (values-ref _g28519_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2783227874_)
                                                    (letrec ((_loop2783327877_
                                                              (lambda (_hd2783127881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2783727884_)
                        (if (gx#stx-pair? _hd2783127881_)
                            (let ((_e2783427887_ (gx#syntax-e _hd2783127881_)))
                              (let ((_lp-hd2783527891_ (##car _e2783427887_))
                                    (_lp-tl2783627894_ (##cdr _e2783427887_)))
                                (_loop2783327877_
                                 _lp-tl2783627894_
                                 (cons _lp-hd2783527891_ _id2783727884_))))
                            (let ((_id2783827897_ (reverse _id2783727884_)))
                              ((lambda (_L27901_ _L27903_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2792027923_
                                                        _g2792127926_)
                                                 (cons _g2792027923_
                                                       _g2792127926_))
                                               '()
                                               _L27901_)))
                                     (let ((_keys27937_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2792827931_
                                                               _g2792927934_)
                                                        (cons _g2792827931_
                                                              _g2792927934_))
                                                      '()
                                                      _L27901_)))))
                                       (let ((_keytab27948_
                                              (let ((_ht27940_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2794227944_)
                                                     (hash-put!
                                                      _ht27940_
                                                      _g2794227944_
                                                      '#t))
                                                   _keys27937_)
                                                  _ht27940_))))
                                         (let ((_exports27951_
                                                (gx#core-expand-export-source
                                                 _L27903_)))
                                           (let ((_fold-e27961_
                                                  (letrec ((_fold-e27954_
                                                            (lambda (_out27957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r27959_)
                      (if (gx#module-export? _out27957_)
                          (if (hash-get
                               _keytab27948_
                               (gx#module-export-name _out27957_))
                              _r27959_
                              (cons _out27957_ _r27959_))
                          (if (gx#export-set? _out27957_)
                              (foldl _fold-e27954_
                                     _r27959_
                                     (gx#export-set-exports _out27957_))
                              _r27959_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e27954_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e27961_
                                                            '()
                                                            _exports27951_)))))))
                                     (_g2782027844_ _g2782127848_)))
                               _id2783827897_
                               _hd2782827865_))))))
              (_loop2783327877_ _target2783027871_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2782027844_
                                                     _g2782127848_)))))
                                          (_g2782027844_ _g2782127848_))
                                      (_g2782027844_ _g2782127848_))))
                              (_g2782027844_ _g2782127848_))))
                      (_g2782027844_ _g2782127848_)))))
           (_g2781927966_ _stx27817_))))))
  (define |gerbil/core::<module-sugar>[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx27971_)
       (let ((_g2797427994_
              (lambda (_g2797527990_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2797527990_))))
         (let ((_g2797328229_
                (lambda (_g2797527998_)
                  (if (gx#stx-pair? _g2797527998_)
                      (let ((_e2797728001_ (gx#syntax-e _g2797527998_)))
                        (let ((_hd2797828005_ (##car _e2797728001_))
                              (_tl2797928008_ (##cdr _e2797728001_)))
                          (if (gx#stx-pair/null? _tl2797928008_)
                              (if (fx>= (gx#stx-length _tl2797928008_) '0)
                                  (let ((_g28521_
                                         (gx#syntax-split-splice
                                          _tl2797928008_
                                          '0)))
                                    (begin
                                      (let ((_g28522_ (values-count _g28521_)))
                                        (if (not (fx= _g28522_ 2))
                                            (error "Context expects 2 values"
                                                   _g28522_)))
                                      (let ((_target2798028011_
                                             (values-ref _g28521_ 0))
                                            (_tl2798228014_
                                             (values-ref _g28521_ 1)))
                                        (if (gx#stx-null? _tl2798228014_)
                                            (letrec ((_loop2798328017_
                                                      (lambda (_hd2798128021_
                                                               _id2798728024_)
                                                        (if (gx#stx-pair?
                                                             _hd2798128021_)
                                                            (let ((_e2798428027_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2798128021_)))
                      (let ((_lp-hd2798528031_ (##car _e2798428027_))
                            (_lp-tl2798628034_ (##cdr _e2798428027_)))
                        (_loop2798328017_
                         _lp-tl2798628034_
                         (cons _lp-hd2798528031_ _id2798728024_))))
                    (let ((_id2798828037_ (reverse _id2798728024_)))
                      ((lambda (_L28041_)
                         ((letrec ((_lp28057_
                                    (lambda (_rest28060_ _ids28062_)
                                      (let ((_g2806528077_
                                             (lambda (_g2806628073_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2806628073_))))
                                        (let ((_g2806428088_
                                               (lambda (_g2806628081_)
                                                 ((lambda ()
                                                    (cons 'begin:
                                                          _ids28062_))))))
                                          (let ((_g2806328217_
                                                 (lambda (_g2806628092_)
                                                   (if (gx#stx-pair?
                                                        _g2806628092_)
                                                       (let ((_e2806928095_
                                                              (gx#syntax-e
                                                               _g2806628092_)))
                                                         (let ((_hd2807028099_
                                                                (##car _e2806928095_))
                                                               (_tl2807128102_
                                                                (##cdr _e2806928095_)))
                                                           ((lambda (_L28105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L28107_)
                      (let ((_info28122_
                             (gx#syntax-local-value _L28107_ false)))
                        (if (|gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info?|
                             _info28122_)
                            (let ((_g2812428141_
                                   (slot-ref
                                    _info28122_
                                    'expander-identifiers)))
                              (let ((_E2812628147_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _g2812428141_))))
                                (let ((_K2812728159_
                                       (lambda (_setf28151_
                                                _getf28153_
                                                _type?28154_
                                                _make-type28155_
                                                _type::t28156_
                                                _super28157_)
                                         (_lp28057_
                                          _L28105_
                                          (cons _L28107_
                                                (cons _type::t28156_
                                                      (cons _make-type28155_
                                                            (cons _type?28154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr cons
                                 (foldr cons _ids28062_ _setf28151_)
                                 _getf28153_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _g2812428141_)
                                      (let ((_hd2812828163_
                                             (##car _g2812428141_))
                                            (_tl2812928166_
                                             (##cdr _g2812428141_)))
                                        (let ((_super28169_ _hd2812828163_))
                                          (if (##pair? _tl2812928166_)
                                              (let ((_hd2813028172_
                                                     (##car _tl2812928166_))
                                                    (_tl2813128175_
                                                     (##cdr _tl2812928166_)))
                                                (let ((_type::t28178_
                                                       _hd2813028172_))
                                                  (if (##pair? _tl2813128175_)
                                                      (let ((_hd2813228181_
                                                             (##car _tl2813128175_))
                                                            (_tl2813328184_
                                                             (##cdr _tl2813128175_)))
                                                        (let ((_make-type28187_
                                                               _hd2813228181_))
                                                          (if (##pair? _tl2813328184_)
                                                              (let ((_hd2813428190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##car _tl2813328184_))
                            (_tl2813528193_ (##cdr _tl2813328184_)))
                        (let ((_type?28196_ _hd2813428190_))
                          (if (##pair? _tl2813528193_)
                              (let ((_hd2813628199_ (##car _tl2813528193_))
                                    (_tl2813728202_ (##cdr _tl2813528193_)))
                                (let ((_getf28205_ _hd2813628199_))
                                  (if (##pair? _tl2813728202_)
                                      (let ((_hd2813828208_
                                             (##car _tl2813728202_))
                                            (_tl2813928211_
                                             (##cdr _tl2813728202_)))
                                        (let ((_setf28214_ _hd2813828208_))
                                          (if (##null? _tl2813928211_)
                                              (_K2812728159_
                                               _setf28214_
                                               _getf28205_
                                               _type?28196_
                                               _make-type28187_
                                               _type::t28178_
                                               _super28169_)
                                              (_E2812628147_))))
                                      (_E2812628147_))))
                              (_E2812628147_))))
                      (_E2812628147_))))
              (_E2812628147_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E2812628147_))))
                                      (_E2812628147_)))))
                            (gx#raise-syntax-error
                             '#f
                             '"Incomplete type info"
                             _stx27971_
                             _L28107_))))
                    _tl2807128102_
                    _hd2807028099_)))
               (_g2806428088_ _g2806628092_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2806328217_ _rest28060_)))))))
                            _lp28057_)
                          (begin
                            '#!void
                            (foldr (lambda (_g2822028223_ _g2822128226_)
                                     (cons _g2822028223_ _g2822128226_))
                                   '()
                                   _L28041_))
                          '()))
                       _id2798828037_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop2798328017_
                                               _target2798028011_
                                               '()))
                                            (_g2797427994_ _g2797527998_)))))
                                  (_g2797427994_ _g2797527998_))
                              (_g2797427994_ _g2797527998_))))
                      (_g2797427994_ _g2797527998_)))))
           (_g2797328229_ _stx27971_)))))))
