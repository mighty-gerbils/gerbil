(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<module-sugar>[:0:]#require|
    (lambda (_$stx27161_)
      (let ((_g2716627185_
             (lambda (_g2716727181_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2716727181_))))
        (let ((_g2716527231_
               (lambda (_g2716727189_)
                 (if (gx#stx-pair? _g2716727189_)
                     (let ((_e2717427192_ (gx#syntax-e _g2716727189_)))
                       (let ((_hd2717527196_ (##car _e2717427192_))
                             (_tl2717627199_ (##cdr _e2717427192_)))
                         (if (gx#stx-pair? _tl2717627199_)
                             (let ((_e2717727202_
                                    (gx#syntax-e _tl2717627199_)))
                               (let ((_hd2717827206_ (##car _e2717727202_))
                                     (_tl2717927209_ (##cdr _e2717727202_)))
                                 ((lambda (_L27212_ _L27214_ _L27215_)
                                    (cons (gx#datum->syntax '#f 'cond-expand)
                                          (cons (cons _L27214_
                                                      (cons (cons _L27215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L27212_)
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
                                      (cons _L27214_ '())))
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _tl2717927209_
                                  _hd2717827206_
                                  _hd2717527196_)))
                             (_g2716627185_ _g2716727189_))))
                     (_g2716627185_ _g2716727189_)))))
          (let ((_g2716427252_
                 (lambda (_g2716727235_)
                   (if (gx#stx-pair? _g2716727235_)
                       (let ((_e2716827238_ (gx#syntax-e _g2716727235_)))
                         (let ((_hd2716927242_ (##car _e2716827238_))
                               (_tl2717027245_ (##cdr _e2716827238_)))
                           (if (gx#stx-null? _tl2717027245_)
                               ((lambda ()
                                  (cons (gx#datum->syntax '#f 'begin) '())))
                               (_g2716527231_ _g2716727235_))))
                       (_g2716527231_ _g2716727235_)))))
            (_g2716427252_ _$stx27161_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx27256_)
      (let ((_g2726127301_
             (lambda (_g2726227297_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2726227297_))))
        (let ((_g2726027402_
               (lambda (_g2726227305_)
                 (if (gx#stx-pair? _g2726227305_)
                     (let ((_e2727827308_ (gx#syntax-e _g2726227305_)))
                       (let ((_hd2727927312_ (##car _e2727827308_))
                             (_tl2728027315_ (##cdr _e2727827308_)))
                         (if (gx#stx-pair? _tl2728027315_)
                             (let ((_e2728127318_
                                    (gx#syntax-e _tl2728027315_)))
                               (let ((_hd2728227322_ (##car _e2728127318_))
                                     (_tl2728327325_ (##cdr _e2728127318_)))
                                 (if (gx#stx-pair? _hd2728227322_)
                                     (let ((_e2728427328_
                                            (gx#syntax-e _hd2728227322_)))
                                       (let ((_hd2728527332_
                                              (##car _e2728427328_))
                                             (_tl2728627335_
                                              (##cdr _e2728427328_)))
                                         (if (gx#stx-pair/null? _tl2728327325_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2728327325_)
                                                       '0)
                                                 (let ((_g28516_
                                                        (gx#syntax-split-splice
                                                         _tl2728327325_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28517_
                                                            (values-count
                                                             _g28516_)))
                                                       (if (not (fx= _g28517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28517_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2728727338_
                                                            (values-ref
                                                             _g28516_
                                                             0))
                                                           (_tl2728927341_
                                                            (values-ref
                                                             _g28516_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2728927341_)
                                                           (letrec ((_loop2729027344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2728827348_ _body2729427351_)
                               (if (gx#stx-pair? _hd2728827348_)
                                   (let ((_e2729127354_
                                          (gx#syntax-e _hd2728827348_)))
                                     (let ((_lp-hd2729227358_
                                            (##car _e2729127354_))
                                           (_lp-tl2729327361_
                                            (##cdr _e2729127354_)))
                                       (_loop2729027344_
                                        _lp-tl2729327361_
                                        (cons _lp-hd2729227358_
                                              _body2729427351_))))
                                   (let ((_body2729527364_
                                          (reverse _body2729427351_)))
                                     ((lambda (_L27368_
                                               _L27370_
                                               _L27371_
                                               _L27372_)
                                        (if (gx#identifier? _L27371_)
                                            (cons _L27372_
                                                  (cons _L27371_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L27370_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2739327396_
                                                    _g2739427399_)
                                             (cons _g2739327396_
                                                   _g2739427399_))
                                           '()
                                           _L27368_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2726127301_ _g2726227305_)))
                                      _body2729527364_
                                      _tl2728627335_
                                      _hd2728527332_
                                      _hd2727927312_))))))
                     (_loop2729027344_ _target2728727338_ '()))
                   (_g2726127301_ _g2726227305_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2726127301_ _g2726227305_))
                                             (_g2726127301_ _g2726227305_))))
                                     (_g2726127301_ _g2726227305_))))
                             (_g2726127301_ _g2726227305_))))
                     (_g2726127301_ _g2726227305_)))))
          (let ((_g2725927456_
                 (lambda (_g2726227406_)
                   (if (gx#stx-pair? _g2726227406_)
                       (let ((_e2726527409_ (gx#syntax-e _g2726227406_)))
                         (let ((_hd2726627413_ (##car _e2726527409_))
                               (_tl2726727416_ (##cdr _e2726527409_)))
                           (if (gx#stx-pair? _tl2726727416_)
                               (let ((_e2726827419_
                                      (gx#syntax-e _tl2726727416_)))
                                 (let ((_hd2726927423_ (##car _e2726827419_))
                                       (_tl2727027426_ (##cdr _e2726827419_)))
                                   (if (gx#stx-pair? _tl2727027426_)
                                       (let ((_e2727127429_
                                              (gx#syntax-e _tl2727027426_)))
                                         (let ((_hd2727227433_
                                                (##car _e2727127429_))
                                               (_tl2727327436_
                                                (##cdr _e2727127429_)))
                                           (if (gx#stx-null? _tl2727327436_)
                                               ((lambda (_L27439_ _L27441_)
                                                  (if (gx#identifier? _L27441_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L27441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-import-expander)
                                      (cons _L27439_ '()))
                                '())))
              (_g2726027402_ _g2726227406_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2727227433_
                                                _hd2726927423_)
                                               (_g2726027402_ _g2726227406_))))
                                       (_g2726027402_ _g2726227406_))))
                               (_g2726027402_ _g2726227406_))))
                       (_g2726027402_ _g2726227406_)))))
            (_g2725927456_ _$stx27256_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-export|
    (lambda (_$stx27461_)
      (let ((_g2746627506_
             (lambda (_g2746727502_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2746727502_))))
        (let ((_g2746527607_
               (lambda (_g2746727510_)
                 (if (gx#stx-pair? _g2746727510_)
                     (let ((_e2748327513_ (gx#syntax-e _g2746727510_)))
                       (let ((_hd2748427517_ (##car _e2748327513_))
                             (_tl2748527520_ (##cdr _e2748327513_)))
                         (if (gx#stx-pair? _tl2748527520_)
                             (let ((_e2748627523_
                                    (gx#syntax-e _tl2748527520_)))
                               (let ((_hd2748727527_ (##car _e2748627523_))
                                     (_tl2748827530_ (##cdr _e2748627523_)))
                                 (if (gx#stx-pair? _hd2748727527_)
                                     (let ((_e2748927533_
                                            (gx#syntax-e _hd2748727527_)))
                                       (let ((_hd2749027537_
                                              (##car _e2748927533_))
                                             (_tl2749127540_
                                              (##cdr _e2748927533_)))
                                         (if (gx#stx-pair/null? _tl2748827530_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2748827530_)
                                                       '0)
                                                 (let ((_g28518_
                                                        (gx#syntax-split-splice
                                                         _tl2748827530_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28519_
                                                            (values-count
                                                             _g28518_)))
                                                       (if (not (fx= _g28519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28519_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2749227543_
                                                            (values-ref
                                                             _g28518_
                                                             0))
                                                           (_tl2749427546_
                                                            (values-ref
                                                             _g28518_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2749427546_)
                                                           (letrec ((_loop2749527549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2749327553_ _body2749927556_)
                               (if (gx#stx-pair? _hd2749327553_)
                                   (let ((_e2749627559_
                                          (gx#syntax-e _hd2749327553_)))
                                     (let ((_lp-hd2749727563_
                                            (##car _e2749627559_))
                                           (_lp-tl2749827566_
                                            (##cdr _e2749627559_)))
                                       (_loop2749527549_
                                        _lp-tl2749827566_
                                        (cons _lp-hd2749727563_
                                              _body2749927556_))))
                                   (let ((_body2750027569_
                                          (reverse _body2749927556_)))
                                     ((lambda (_L27573_
                                               _L27575_
                                               _L27576_
                                               _L27577_)
                                        (if (gx#identifier? _L27576_)
                                            (cons _L27577_
                                                  (cons _L27576_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L27575_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2759827601_
                                                    _g2759927604_)
                                             (cons _g2759827601_
                                                   _g2759927604_))
                                           '()
                                           _L27573_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2746627506_ _g2746727510_)))
                                      _body2750027569_
                                      _tl2749127540_
                                      _hd2749027537_
                                      _hd2748427517_))))))
                     (_loop2749527549_ _target2749227543_ '()))
                   (_g2746627506_ _g2746727510_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2746627506_ _g2746727510_))
                                             (_g2746627506_ _g2746727510_))))
                                     (_g2746627506_ _g2746727510_))))
                             (_g2746627506_ _g2746727510_))))
                     (_g2746627506_ _g2746727510_)))))
          (let ((_g2746427661_
                 (lambda (_g2746727611_)
                   (if (gx#stx-pair? _g2746727611_)
                       (let ((_e2747027614_ (gx#syntax-e _g2746727611_)))
                         (let ((_hd2747127618_ (##car _e2747027614_))
                               (_tl2747227621_ (##cdr _e2747027614_)))
                           (if (gx#stx-pair? _tl2747227621_)
                               (let ((_e2747327624_
                                      (gx#syntax-e _tl2747227621_)))
                                 (let ((_hd2747427628_ (##car _e2747327624_))
                                       (_tl2747527631_ (##cdr _e2747327624_)))
                                   (if (gx#stx-pair? _tl2747527631_)
                                       (let ((_e2747627634_
                                              (gx#syntax-e _tl2747527631_)))
                                         (let ((_hd2747727638_
                                                (##car _e2747627634_))
                                               (_tl2747827641_
                                                (##cdr _e2747627634_)))
                                           (if (gx#stx-null? _tl2747827641_)
                                               ((lambda (_L27644_ _L27646_)
                                                  (if (gx#identifier? _L27646_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L27646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-export-expander)
                                      (cons _L27644_ '()))
                                '())))
              (_g2746527607_ _g2746727611_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2747727638_
                                                _hd2747427628_)
                                               (_g2746527607_ _g2746727611_))))
                                       (_g2746527607_ _g2746727611_))))
                               (_g2746527607_ _g2746727611_))))
                       (_g2746527607_ _g2746727611_)))))
            (_g2746427661_ _$stx27461_))))))
  (define |gerbil/core::<module-sugar>[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx27666_)
       (let ((_g2766927693_
              (lambda (_g2767027689_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2767027689_))))
         (let ((_g2766827815_
                (lambda (_g2767027697_)
                  (if (gx#stx-pair? _g2767027697_)
                      (let ((_e2767327700_ (gx#syntax-e _g2767027697_)))
                        (let ((_hd2767427704_ (##car _e2767327700_))
                              (_tl2767527707_ (##cdr _e2767327700_)))
                          (if (gx#stx-pair? _tl2767527707_)
                              (let ((_e2767627710_
                                     (gx#syntax-e _tl2767527707_)))
                                (let ((_hd2767727714_ (##car _e2767627710_))
                                      (_tl2767827717_ (##cdr _e2767627710_)))
                                  (if (gx#stx-pair/null? _tl2767827717_)
                                      (if (fx>= (gx#stx-length _tl2767827717_)
                                                '0)
                                          (let ((_g28520_
                                                 (gx#syntax-split-splice
                                                  _tl2767827717_
                                                  '0)))
                                            (begin
                                              (let ((_g28521_
                                                     (values-count _g28520_)))
                                                (if (not (fx= _g28521_ 2))
                                                    (error "Context expects 2 values"
                                                           _g28521_)))
                                              (let ((_target2767927720_
                                                     (values-ref _g28520_ 0))
                                                    (_tl2768127723_
                                                     (values-ref _g28520_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2768127723_)
                                                    (letrec ((_loop2768227726_
                                                              (lambda (_hd2768027730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2768627733_)
                        (if (gx#stx-pair? _hd2768027730_)
                            (let ((_e2768327736_ (gx#syntax-e _hd2768027730_)))
                              (let ((_lp-hd2768427740_ (##car _e2768327736_))
                                    (_lp-tl2768527743_ (##cdr _e2768327736_)))
                                (_loop2768227726_
                                 _lp-tl2768527743_
                                 (cons _lp-hd2768427740_ _id2768627733_))))
                            (let ((_id2768727746_ (reverse _id2768627733_)))
                              ((lambda (_L27750_ _L27752_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2776927772_
                                                        _g2777027775_)
                                                 (cons _g2776927772_
                                                       _g2777027775_))
                                               '()
                                               _L27750_)))
                                     (let ((_keys27786_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2777727780_
                                                               _g2777827783_)
                                                        (cons _g2777727780_
                                                              _g2777827783_))
                                                      '()
                                                      _L27750_)))))
                                       (let ((_keytab27797_
                                              (let ((_ht27789_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2779127793_)
                                                     (hash-put!
                                                      _ht27789_
                                                      _g2779127793_
                                                      '#t))
                                                   _keys27786_)
                                                  _ht27789_))))
                                         (let ((_imports27800_
                                                (gx#core-expand-import-source
                                                 _L27752_)))
                                           (let ((_fold-e27810_
                                                  (letrec ((_fold-e27803_
                                                            (lambda (_in27806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r27808_)
                      (if (gx#module-import? _in27806_)
                          (if (hash-get
                               _keytab27797_
                               (gx#module-import-name _in27806_))
                              (cons _in27806_ _r27808_)
                              _r27808_)
                          (if (gx#import-set? _in27806_)
                              (foldl _fold-e27803_
                                     _r27808_
                                     (gx#import-set-imports _in27806_))
                              _r27808_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e27803_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e27810_
                                                            '()
                                                            _imports27800_)))))))
                                     (_g2766927693_ _g2767027697_)))
                               _id2768727746_
                               _hd2767727714_))))))
              (_loop2768227726_ _target2767927720_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2766927693_
                                                     _g2767027697_)))))
                                          (_g2766927693_ _g2767027697_))
                                      (_g2766927693_ _g2767027697_))))
                              (_g2766927693_ _g2767027697_))))
                      (_g2766927693_ _g2767027697_)))))
           (_g2766827815_ _stx27666_))))))
  (define |gerbil/core::<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx27820_)
       (let ((_g2782327847_
              (lambda (_g2782427843_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2782427843_))))
         (let ((_g2782227969_
                (lambda (_g2782427851_)
                  (if (gx#stx-pair? _g2782427851_)
                      (let ((_e2782727854_ (gx#syntax-e _g2782427851_)))
                        (let ((_hd2782827858_ (##car _e2782727854_))
                              (_tl2782927861_ (##cdr _e2782727854_)))
                          (if (gx#stx-pair? _tl2782927861_)
                              (let ((_e2783027864_
                                     (gx#syntax-e _tl2782927861_)))
                                (let ((_hd2783127868_ (##car _e2783027864_))
                                      (_tl2783227871_ (##cdr _e2783027864_)))
                                  (if (gx#stx-pair/null? _tl2783227871_)
                                      (if (fx>= (gx#stx-length _tl2783227871_)
                                                '0)
                                          (let ((_g28522_
                                                 (gx#syntax-split-splice
                                                  _tl2783227871_
                                                  '0)))
                                            (begin
                                              (let ((_g28523_
                                                     (values-count _g28522_)))
                                                (if (not (fx= _g28523_ 2))
                                                    (error "Context expects 2 values"
                                                           _g28523_)))
                                              (let ((_target2783327874_
                                                     (values-ref _g28522_ 0))
                                                    (_tl2783527877_
                                                     (values-ref _g28522_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2783527877_)
                                                    (letrec ((_loop2783627880_
                                                              (lambda (_hd2783427884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2784027887_)
                        (if (gx#stx-pair? _hd2783427884_)
                            (let ((_e2783727890_ (gx#syntax-e _hd2783427884_)))
                              (let ((_lp-hd2783827894_ (##car _e2783727890_))
                                    (_lp-tl2783927897_ (##cdr _e2783727890_)))
                                (_loop2783627880_
                                 _lp-tl2783927897_
                                 (cons _lp-hd2783827894_ _id2784027887_))))
                            (let ((_id2784127900_ (reverse _id2784027887_)))
                              ((lambda (_L27904_ _L27906_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2792327926_
                                                        _g2792427929_)
                                                 (cons _g2792327926_
                                                       _g2792427929_))
                                               '()
                                               _L27904_)))
                                     (let ((_keys27940_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2793127934_
                                                               _g2793227937_)
                                                        (cons _g2793127934_
                                                              _g2793227937_))
                                                      '()
                                                      _L27904_)))))
                                       (let ((_keytab27951_
                                              (let ((_ht27943_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2794527947_)
                                                     (hash-put!
                                                      _ht27943_
                                                      _g2794527947_
                                                      '#t))
                                                   _keys27940_)
                                                  _ht27943_))))
                                         (let ((_exports27954_
                                                (gx#core-expand-export-source
                                                 _L27906_)))
                                           (let ((_fold-e27964_
                                                  (letrec ((_fold-e27957_
                                                            (lambda (_out27960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r27962_)
                      (if (gx#module-export? _out27960_)
                          (if (hash-get
                               _keytab27951_
                               (gx#module-export-name _out27960_))
                              _r27962_
                              (cons _out27960_ _r27962_))
                          (if (gx#export-set? _out27960_)
                              (foldl _fold-e27957_
                                     _r27962_
                                     (gx#export-set-exports _out27960_))
                              _r27962_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e27957_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e27964_
                                                            '()
                                                            _exports27954_)))))))
                                     (_g2782327847_ _g2782427851_)))
                               _id2784127900_
                               _hd2783127868_))))))
              (_loop2783627880_ _target2783327874_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2782327847_
                                                     _g2782427851_)))))
                                          (_g2782327847_ _g2782427851_))
                                      (_g2782327847_ _g2782427851_))))
                              (_g2782327847_ _g2782427851_))))
                      (_g2782327847_ _g2782427851_)))))
           (_g2782227969_ _stx27820_))))))
  (define |gerbil/core::<module-sugar>[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx27974_)
       (let ((_g2797727997_
              (lambda (_g2797827993_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2797827993_))))
         (let ((_g2797628232_
                (lambda (_g2797828001_)
                  (if (gx#stx-pair? _g2797828001_)
                      (let ((_e2798028004_ (gx#syntax-e _g2797828001_)))
                        (let ((_hd2798128008_ (##car _e2798028004_))
                              (_tl2798228011_ (##cdr _e2798028004_)))
                          (if (gx#stx-pair/null? _tl2798228011_)
                              (if (fx>= (gx#stx-length _tl2798228011_) '0)
                                  (let ((_g28524_
                                         (gx#syntax-split-splice
                                          _tl2798228011_
                                          '0)))
                                    (begin
                                      (let ((_g28525_ (values-count _g28524_)))
                                        (if (not (fx= _g28525_ 2))
                                            (error "Context expects 2 values"
                                                   _g28525_)))
                                      (let ((_target2798328014_
                                             (values-ref _g28524_ 0))
                                            (_tl2798528017_
                                             (values-ref _g28524_ 1)))
                                        (if (gx#stx-null? _tl2798528017_)
                                            (letrec ((_loop2798628020_
                                                      (lambda (_hd2798428024_
                                                               _id2799028027_)
                                                        (if (gx#stx-pair?
                                                             _hd2798428024_)
                                                            (let ((_e2798728030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2798428024_)))
                      (let ((_lp-hd2798828034_ (##car _e2798728030_))
                            (_lp-tl2798928037_ (##cdr _e2798728030_)))
                        (_loop2798628020_
                         _lp-tl2798928037_
                         (cons _lp-hd2798828034_ _id2799028027_))))
                    (let ((_id2799128040_ (reverse _id2799028027_)))
                      ((lambda (_L28044_)
                         ((letrec ((_lp28060_
                                    (lambda (_rest28063_ _ids28065_)
                                      (let ((_g2806828080_
                                             (lambda (_g2806928076_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2806928076_))))
                                        (let ((_g2806728091_
                                               (lambda (_g2806928084_)
                                                 ((lambda ()
                                                    (cons 'begin:
                                                          _ids28065_))))))
                                          (let ((_g2806628220_
                                                 (lambda (_g2806928095_)
                                                   (if (gx#stx-pair?
                                                        _g2806928095_)
                                                       (let ((_e2807228098_
                                                              (gx#syntax-e
                                                               _g2806928095_)))
                                                         (let ((_hd2807328102_
                                                                (##car _e2807228098_))
                                                               (_tl2807428105_
                                                                (##cdr _e2807228098_)))
                                                           ((lambda (_L28108_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L28110_)
                      (let ((_info28125_
                             (gx#syntax-local-value _L28110_ false)))
                        (if (|gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info?|
                             _info28125_)
                            (let ((_g2812728144_
                                   (slot-ref
                                    _info28125_
                                    'expander-identifiers)))
                              (let ((_E2812928150_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _g2812728144_))))
                                (let ((_K2813028162_
                                       (lambda (_setf28154_
                                                _getf28156_
                                                _type?28157_
                                                _make-type28158_
                                                _type::t28159_
                                                _super28160_)
                                         (_lp28060_
                                          _L28108_
                                          (cons _L28110_
                                                (cons _type::t28159_
                                                      (cons _make-type28158_
                                                            (cons _type?28157_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr cons
                                 (foldr cons _ids28065_ _setf28154_)
                                 _getf28156_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _g2812728144_)
                                      (let ((_hd2813128166_
                                             (##car _g2812728144_))
                                            (_tl2813228169_
                                             (##cdr _g2812728144_)))
                                        (let ((_super28172_ _hd2813128166_))
                                          (if (##pair? _tl2813228169_)
                                              (let ((_hd2813328175_
                                                     (##car _tl2813228169_))
                                                    (_tl2813428178_
                                                     (##cdr _tl2813228169_)))
                                                (let ((_type::t28181_
                                                       _hd2813328175_))
                                                  (if (##pair? _tl2813428178_)
                                                      (let ((_hd2813528184_
                                                             (##car _tl2813428178_))
                                                            (_tl2813628187_
                                                             (##cdr _tl2813428178_)))
                                                        (let ((_make-type28190_
                                                               _hd2813528184_))
                                                          (if (##pair? _tl2813628187_)
                                                              (let ((_hd2813728193_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##car _tl2813628187_))
                            (_tl2813828196_ (##cdr _tl2813628187_)))
                        (let ((_type?28199_ _hd2813728193_))
                          (if (##pair? _tl2813828196_)
                              (let ((_hd2813928202_ (##car _tl2813828196_))
                                    (_tl2814028205_ (##cdr _tl2813828196_)))
                                (let ((_getf28208_ _hd2813928202_))
                                  (if (##pair? _tl2814028205_)
                                      (let ((_hd2814128211_
                                             (##car _tl2814028205_))
                                            (_tl2814228214_
                                             (##cdr _tl2814028205_)))
                                        (let ((_setf28217_ _hd2814128211_))
                                          (if (##null? _tl2814228214_)
                                              (_K2813028162_
                                               _setf28217_
                                               _getf28208_
                                               _type?28199_
                                               _make-type28190_
                                               _type::t28181_
                                               _super28172_)
                                              (_E2812928150_))))
                                      (_E2812928150_))))
                              (_E2812928150_))))
                      (_E2812928150_))))
              (_E2812928150_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E2812928150_))))
                                      (_E2812928150_)))))
                            (gx#raise-syntax-error
                             '#f
                             '"Incomplete type info"
                             _stx27974_
                             _L28110_))))
                    _tl2807428105_
                    _hd2807328102_)))
               (_g2806728091_ _g2806928095_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2806628220_ _rest28063_)))))))
                            _lp28060_)
                          (begin
                            '#!void
                            (foldr (lambda (_g2822328226_ _g2822428229_)
                                     (cons _g2822328226_ _g2822428229_))
                                   '()
                                   _L28044_))
                          '()))
                       _id2799128040_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop2798628020_
                                               _target2798328014_
                                               '()))
                                            (_g2797727997_ _g2797828001_)))))
                                  (_g2797727997_ _g2797828001_))
                              (_g2797727997_ _g2797828001_))))
                      (_g2797727997_ _g2797828001_)))))
           (_g2797628232_ _stx27974_)))))))
