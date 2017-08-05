(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<module-sugar>[:0:]#require|
    (lambda (_$stx28204_)
      (let ((_g2820928228_
             (lambda (_g2821028224_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2821028224_))))
        (let ((_g2820828274_
               (lambda (_g2821028232_)
                 (if (gx#stx-pair? _g2821028232_)
                     (let ((_e2821728235_ (gx#syntax-e _g2821028232_)))
                       (let ((_hd2821828239_ (##car _e2821728235_))
                             (_tl2821928242_ (##cdr _e2821728235_)))
                         (if (gx#stx-pair? _tl2821928242_)
                             (let ((_e2822028245_
                                    (gx#syntax-e _tl2821928242_)))
                               (let ((_hd2822128249_ (##car _e2822028245_))
                                     (_tl2822228252_ (##cdr _e2822028245_)))
                                 ((lambda (_L28255_ _L28257_ _L28258_)
                                    (cons (gx#datum->syntax '#f 'cond-expand)
                                          (cons (cons _L28257_
                                                      (cons (cons _L28258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L28255_)
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
                                      (cons _L28257_ '())))
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _tl2822228252_
                                  _hd2822128249_
                                  _hd2821828239_)))
                             (_g2820928228_ _g2821028232_))))
                     (_g2820928228_ _g2821028232_)))))
          (let ((_g2820728295_
                 (lambda (_g2821028278_)
                   (if (gx#stx-pair? _g2821028278_)
                       (let ((_e2821128281_ (gx#syntax-e _g2821028278_)))
                         (let ((_hd2821228285_ (##car _e2821128281_))
                               (_tl2821328288_ (##cdr _e2821128281_)))
                           (if (gx#stx-null? _tl2821328288_)
                               ((lambda ()
                                  (cons (gx#datum->syntax '#f 'begin) '())))
                               (_g2820828274_ _g2821028278_))))
                       (_g2820828274_ _g2821028278_)))))
            (_g2820728295_ _$stx28204_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx28299_)
      (let ((_g2830428344_
             (lambda (_g2830528340_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2830528340_))))
        (let ((_g2830328445_
               (lambda (_g2830528348_)
                 (if (gx#stx-pair? _g2830528348_)
                     (let ((_e2832128351_ (gx#syntax-e _g2830528348_)))
                       (let ((_hd2832228355_ (##car _e2832128351_))
                             (_tl2832328358_ (##cdr _e2832128351_)))
                         (if (gx#stx-pair? _tl2832328358_)
                             (let ((_e2832428361_
                                    (gx#syntax-e _tl2832328358_)))
                               (let ((_hd2832528365_ (##car _e2832428361_))
                                     (_tl2832628368_ (##cdr _e2832428361_)))
                                 (if (gx#stx-pair? _hd2832528365_)
                                     (let ((_e2832728371_
                                            (gx#syntax-e _hd2832528365_)))
                                       (let ((_hd2832828375_
                                              (##car _e2832728371_))
                                             (_tl2832928378_
                                              (##cdr _e2832728371_)))
                                         (if (gx#stx-pair/null? _tl2832628368_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2832628368_)
                                                       '0)
                                                 (let ((_g30437_
                                                        (gx#syntax-split-splice
                                                         _tl2832628368_
                                                         '0)))
                                                   (begin
                                                     (let ((_g30438_
                                                            (values-count
                                                             _g30437_)))
                                                       (if (not (fx= _g30438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g30438_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2833028381_
                                                            (values-ref
                                                             _g30437_
                                                             0))
                                                           (_tl2833228384_
                                                            (values-ref
                                                             _g30437_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2833228384_)
                                                           (letrec ((_loop2833328387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2833128391_ _body2833728394_)
                               (if (gx#stx-pair? _hd2833128391_)
                                   (let ((_e2833428397_
                                          (gx#syntax-e _hd2833128391_)))
                                     (let ((_lp-hd2833528401_
                                            (##car _e2833428397_))
                                           (_lp-tl2833628404_
                                            (##cdr _e2833428397_)))
                                       (_loop2833328387_
                                        _lp-tl2833628404_
                                        (cons _lp-hd2833528401_
                                              _body2833728394_))))
                                   (let ((_body2833828407_
                                          (reverse _body2833728394_)))
                                     ((lambda (_L28411_
                                               _L28413_
                                               _L28414_
                                               _L28415_)
                                        (if (gx#identifier? _L28414_)
                                            (cons _L28415_
                                                  (cons _L28414_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L28413_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2843628439_
                                                    _g2843728442_)
                                             (cons _g2843628439_
                                                   _g2843728442_))
                                           '()
                                           _L28411_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2830428344_ _g2830528348_)))
                                      _body2833828407_
                                      _tl2832928378_
                                      _hd2832828375_
                                      _hd2832228355_))))))
                     (_loop2833328387_ _target2833028381_ '()))
                   (_g2830428344_ _g2830528348_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2830428344_ _g2830528348_))
                                             (_g2830428344_ _g2830528348_))))
                                     (_g2830428344_ _g2830528348_))))
                             (_g2830428344_ _g2830528348_))))
                     (_g2830428344_ _g2830528348_)))))
          (let ((_g2830228499_
                 (lambda (_g2830528449_)
                   (if (gx#stx-pair? _g2830528449_)
                       (let ((_e2830828452_ (gx#syntax-e _g2830528449_)))
                         (let ((_hd2830928456_ (##car _e2830828452_))
                               (_tl2831028459_ (##cdr _e2830828452_)))
                           (if (gx#stx-pair? _tl2831028459_)
                               (let ((_e2831128462_
                                      (gx#syntax-e _tl2831028459_)))
                                 (let ((_hd2831228466_ (##car _e2831128462_))
                                       (_tl2831328469_ (##cdr _e2831128462_)))
                                   (if (gx#stx-pair? _tl2831328469_)
                                       (let ((_e2831428472_
                                              (gx#syntax-e _tl2831328469_)))
                                         (let ((_hd2831528476_
                                                (##car _e2831428472_))
                                               (_tl2831628479_
                                                (##cdr _e2831428472_)))
                                           (if (gx#stx-null? _tl2831628479_)
                                               ((lambda (_L28482_ _L28484_)
                                                  (if (gx#identifier? _L28484_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L28484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-import-expander)
                                      (cons _L28482_ '()))
                                '())))
              (_g2830328445_ _g2830528449_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2831528476_
                                                _hd2831228466_)
                                               (_g2830328445_ _g2830528449_))))
                                       (_g2830328445_ _g2830528449_))))
                               (_g2830328445_ _g2830528449_))))
                       (_g2830328445_ _g2830528449_)))))
            (_g2830228499_ _$stx28299_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-export|
    (lambda (_$stx28504_)
      (let ((_g2850928549_
             (lambda (_g2851028545_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2851028545_))))
        (let ((_g2850828650_
               (lambda (_g2851028553_)
                 (if (gx#stx-pair? _g2851028553_)
                     (let ((_e2852628556_ (gx#syntax-e _g2851028553_)))
                       (let ((_hd2852728560_ (##car _e2852628556_))
                             (_tl2852828563_ (##cdr _e2852628556_)))
                         (if (gx#stx-pair? _tl2852828563_)
                             (let ((_e2852928566_
                                    (gx#syntax-e _tl2852828563_)))
                               (let ((_hd2853028570_ (##car _e2852928566_))
                                     (_tl2853128573_ (##cdr _e2852928566_)))
                                 (if (gx#stx-pair? _hd2853028570_)
                                     (let ((_e2853228576_
                                            (gx#syntax-e _hd2853028570_)))
                                       (let ((_hd2853328580_
                                              (##car _e2853228576_))
                                             (_tl2853428583_
                                              (##cdr _e2853228576_)))
                                         (if (gx#stx-pair/null? _tl2853128573_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2853128573_)
                                                       '0)
                                                 (let ((_g30439_
                                                        (gx#syntax-split-splice
                                                         _tl2853128573_
                                                         '0)))
                                                   (begin
                                                     (let ((_g30440_
                                                            (values-count
                                                             _g30439_)))
                                                       (if (not (fx= _g30440_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g30440_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2853528586_
                                                            (values-ref
                                                             _g30439_
                                                             0))
                                                           (_tl2853728589_
                                                            (values-ref
                                                             _g30439_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2853728589_)
                                                           (letrec ((_loop2853828592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2853628596_ _body2854228599_)
                               (if (gx#stx-pair? _hd2853628596_)
                                   (let ((_e2853928602_
                                          (gx#syntax-e _hd2853628596_)))
                                     (let ((_lp-hd2854028606_
                                            (##car _e2853928602_))
                                           (_lp-tl2854128609_
                                            (##cdr _e2853928602_)))
                                       (_loop2853828592_
                                        _lp-tl2854128609_
                                        (cons _lp-hd2854028606_
                                              _body2854228599_))))
                                   (let ((_body2854328612_
                                          (reverse _body2854228599_)))
                                     ((lambda (_L28616_
                                               _L28618_
                                               _L28619_
                                               _L28620_)
                                        (if (gx#identifier? _L28619_)
                                            (cons _L28620_
                                                  (cons _L28619_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L28618_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2864128644_
                                                    _g2864228647_)
                                             (cons _g2864128644_
                                                   _g2864228647_))
                                           '()
                                           _L28616_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2850928549_ _g2851028553_)))
                                      _body2854328612_
                                      _tl2853428583_
                                      _hd2853328580_
                                      _hd2852728560_))))))
                     (_loop2853828592_ _target2853528586_ '()))
                   (_g2850928549_ _g2851028553_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2850928549_ _g2851028553_))
                                             (_g2850928549_ _g2851028553_))))
                                     (_g2850928549_ _g2851028553_))))
                             (_g2850928549_ _g2851028553_))))
                     (_g2850928549_ _g2851028553_)))))
          (let ((_g2850728704_
                 (lambda (_g2851028654_)
                   (if (gx#stx-pair? _g2851028654_)
                       (let ((_e2851328657_ (gx#syntax-e _g2851028654_)))
                         (let ((_hd2851428661_ (##car _e2851328657_))
                               (_tl2851528664_ (##cdr _e2851328657_)))
                           (if (gx#stx-pair? _tl2851528664_)
                               (let ((_e2851628667_
                                      (gx#syntax-e _tl2851528664_)))
                                 (let ((_hd2851728671_ (##car _e2851628667_))
                                       (_tl2851828674_ (##cdr _e2851628667_)))
                                   (if (gx#stx-pair? _tl2851828674_)
                                       (let ((_e2851928677_
                                              (gx#syntax-e _tl2851828674_)))
                                         (let ((_hd2852028681_
                                                (##car _e2851928677_))
                                               (_tl2852128684_
                                                (##cdr _e2851928677_)))
                                           (if (gx#stx-null? _tl2852128684_)
                                               ((lambda (_L28687_ _L28689_)
                                                  (if (gx#identifier? _L28689_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L28689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-export-expander)
                                      (cons _L28687_ '()))
                                '())))
              (_g2850828650_ _g2851028654_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2852028681_
                                                _hd2851728671_)
                                               (_g2850828650_ _g2851028654_))))
                                       (_g2850828650_ _g2851028654_))))
                               (_g2850828650_ _g2851028654_))))
                       (_g2850828650_ _g2851028654_)))))
            (_g2850728704_ _$stx28504_))))))
  (define |gerbil/core::<module-sugar>[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx28709_)
       (let ((_g2871228736_
              (lambda (_g2871328732_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2871328732_))))
         (let ((_g2871128858_
                (lambda (_g2871328740_)
                  (if (gx#stx-pair? _g2871328740_)
                      (let ((_e2871628743_ (gx#syntax-e _g2871328740_)))
                        (let ((_hd2871728747_ (##car _e2871628743_))
                              (_tl2871828750_ (##cdr _e2871628743_)))
                          (if (gx#stx-pair? _tl2871828750_)
                              (let ((_e2871928753_
                                     (gx#syntax-e _tl2871828750_)))
                                (let ((_hd2872028757_ (##car _e2871928753_))
                                      (_tl2872128760_ (##cdr _e2871928753_)))
                                  (if (gx#stx-pair/null? _tl2872128760_)
                                      (if (fx>= (gx#stx-length _tl2872128760_)
                                                '0)
                                          (let ((_g30441_
                                                 (gx#syntax-split-splice
                                                  _tl2872128760_
                                                  '0)))
                                            (begin
                                              (let ((_g30442_
                                                     (values-count _g30441_)))
                                                (if (not (fx= _g30442_ 2))
                                                    (error "Context expects 2 values"
                                                           _g30442_)))
                                              (let ((_target2872228763_
                                                     (values-ref _g30441_ 0))
                                                    (_tl2872428766_
                                                     (values-ref _g30441_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2872428766_)
                                                    (letrec ((_loop2872528769_
                                                              (lambda (_hd2872328773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2872928776_)
                        (if (gx#stx-pair? _hd2872328773_)
                            (let ((_e2872628779_ (gx#syntax-e _hd2872328773_)))
                              (let ((_lp-hd2872728783_ (##car _e2872628779_))
                                    (_lp-tl2872828786_ (##cdr _e2872628779_)))
                                (_loop2872528769_
                                 _lp-tl2872828786_
                                 (cons _lp-hd2872728783_ _id2872928776_))))
                            (let ((_id2873028789_ (reverse _id2872928776_)))
                              ((lambda (_L28793_ _L28795_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2881228815_
                                                        _g2881328818_)
                                                 (cons _g2881228815_
                                                       _g2881328818_))
                                               '()
                                               _L28793_)))
                                     (let ((_keys28829_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2882028823_
                                                               _g2882128826_)
                                                        (cons _g2882028823_
                                                              _g2882128826_))
                                                      '()
                                                      _L28793_)))))
                                       (let ((_keytab28840_
                                              (let ((_ht28832_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2883428836_)
                                                     (hash-put!
                                                      _ht28832_
                                                      _g2883428836_
                                                      '#t))
                                                   _keys28829_)
                                                  _ht28832_))))
                                         (let ((_imports28843_
                                                (gx#core-expand-import-source
                                                 _L28795_)))
                                           (let ((_fold-e28853_
                                                  (letrec ((_fold-e28846_
                                                            (lambda (_in28849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r28851_)
                      (if (gx#module-import? _in28849_)
                          (if (hash-get
                               _keytab28840_
                               (gx#module-import-name _in28849_))
                              (cons _in28849_ _r28851_)
                              _r28851_)
                          (if (gx#import-set? _in28849_)
                              (foldl _fold-e28846_
                                     _r28851_
                                     (gx#import-set-imports _in28849_))
                              _r28851_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e28846_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e28853_
                                                            '()
                                                            _imports28843_)))))))
                                     (_g2871228736_ _g2871328740_)))
                               _id2873028789_
                               _hd2872028757_))))))
              (_loop2872528769_ _target2872228763_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2871228736_
                                                     _g2871328740_)))))
                                          (_g2871228736_ _g2871328740_))
                                      (_g2871228736_ _g2871328740_))))
                              (_g2871228736_ _g2871328740_))))
                      (_g2871228736_ _g2871328740_)))))
           (_g2871128858_ _stx28709_))))))
  (define |gerbil/core::<module-sugar>[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_stx28863_)
       (let ((_g2886628890_
              (lambda (_g2886728886_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2886728886_))))
         (let ((_g2886529012_
                (lambda (_g2886728894_)
                  (if (gx#stx-pair? _g2886728894_)
                      (let ((_e2887028897_ (gx#syntax-e _g2886728894_)))
                        (let ((_hd2887128901_ (##car _e2887028897_))
                              (_tl2887228904_ (##cdr _e2887028897_)))
                          (if (gx#stx-pair? _tl2887228904_)
                              (let ((_e2887328907_
                                     (gx#syntax-e _tl2887228904_)))
                                (let ((_hd2887428911_ (##car _e2887328907_))
                                      (_tl2887528914_ (##cdr _e2887328907_)))
                                  (if (gx#stx-pair/null? _tl2887528914_)
                                      (if (fx>= (gx#stx-length _tl2887528914_)
                                                '0)
                                          (let ((_g30443_
                                                 (gx#syntax-split-splice
                                                  _tl2887528914_
                                                  '0)))
                                            (begin
                                              (let ((_g30444_
                                                     (values-count _g30443_)))
                                                (if (not (fx= _g30444_ 2))
                                                    (error "Context expects 2 values"
                                                           _g30444_)))
                                              (let ((_target2887628917_
                                                     (values-ref _g30443_ 0))
                                                    (_tl2887828920_
                                                     (values-ref _g30443_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2887828920_)
                                                    (letrec ((_loop2887928923_
                                                              (lambda (_hd2887728927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2888328930_)
                        (if (gx#stx-pair? _hd2887728927_)
                            (let ((_e2888028933_ (gx#syntax-e _hd2887728927_)))
                              (let ((_lp-hd2888128937_ (##car _e2888028933_))
                                    (_lp-tl2888228940_ (##cdr _e2888028933_)))
                                (_loop2887928923_
                                 _lp-tl2888228940_
                                 (cons _lp-hd2888128937_ _id2888328930_))))
                            (let ((_id2888428943_ (reverse _id2888328930_)))
                              ((lambda (_L28947_ _L28949_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2896628969_
                                                        _g2896728972_)
                                                 (cons _g2896628969_
                                                       _g2896728972_))
                                               '()
                                               _L28947_)))
                                     (let ((_keys28983_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2897428977_
                                                               _g2897528980_)
                                                        (cons _g2897428977_
                                                              _g2897528980_))
                                                      '()
                                                      _L28947_)))))
                                       (let ((_keytab28994_
                                              (let ((_ht28986_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2898828990_)
                                                     (hash-put!
                                                      _ht28986_
                                                      _g2898828990_
                                                      '#t))
                                                   _keys28983_)
                                                  _ht28986_))))
                                         (let ((_imports28997_
                                                (gx#core-expand-import-source
                                                 _L28949_)))
                                           (let ((_fold-e29007_
                                                  (letrec ((_fold-e29000_
                                                            (lambda (_in29003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r29005_)
                      (if (gx#module-import? _in29003_)
                          (if (hash-get
                               _keytab28994_
                               (gx#module-import-name _in29003_))
                              _r29005_
                              (cons _in29003_ _r29005_))
                          (if (gx#import-set? _in29003_)
                              (foldl _fold-e29000_
                                     _r29005_
                                     (gx#import-set-imports _in29003_))
                              (cons _in29003_ _r29005_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e29000_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e29007_
                                                            '()
                                                            _imports28997_)))))))
                                     (_g2886628890_ _g2886728894_)))
                               _id2888428943_
                               _hd2887428911_))))))
              (_loop2887928923_ _target2887628917_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2886628890_
                                                     _g2886728894_)))))
                                          (_g2886628890_ _g2886728894_))
                                      (_g2886628890_ _g2886728894_))))
                              (_g2886628890_ _g2886728894_))))
                      (_g2886628890_ _g2886728894_)))))
           (_g2886529012_ _stx28863_))))))
  (define |gerbil/core::<module-sugar>[1]#module-import-rename|
    (lambda (_in29064_ _rename29066_)
      (gx#make-module-import
       (gx#module-import-source _in29064_)
       _rename29066_
       (gx#module-import-phi _in29064_)
       (gx#module-import-weak? _in29064_))))
  (define |gerbil/core::<module-sugar>[1]#prefix-identifier-key|
    (lambda (_name29017_ _pre29019_)
      (let ((_name2902029028_ _name29017_))
        (let ((_E2902329034_
               (lambda () (error '"No clause matching" _name2902029028_))))
          (let ((_else2902229040_
                 (lambda () (make-symbol _pre29019_ _name29017_))))
            (let ((_K2902429048_
                   (lambda (_mark29044_ _id29046_)
                     (cons (make-symbol _pre29019_ _id29046_) _mark29044_))))
              (if (##pair? _name2902029028_)
                  (let ((_hd2902529052_ (##car _name2902029028_))
                        (_tl2902629055_ (##cdr _name2902029028_)))
                    (let ((_id29058_ _hd2902529052_))
                      (let ((_mark29061_ _tl2902629055_))
                        (_K2902429048_ _mark29061_ _id29058_))))
                  (_else2902229040_))))))))
  (define |gerbil/core::<module-sugar>[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx29068_)
       (let ((_g2907129104_
              (lambda (_g2907229100_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2907229100_))))
         (let ((_g2907029290_
                (lambda (_g2907229108_)
                  (if (gx#stx-pair? _g2907229108_)
                      (let ((_e2907629111_ (gx#syntax-e _g2907229108_)))
                        (let ((_hd2907729115_ (##car _e2907629111_))
                              (_tl2907829118_ (##cdr _e2907629111_)))
                          (if (gx#stx-pair? _tl2907829118_)
                              (let ((_e2907929121_
                                     (gx#syntax-e _tl2907829118_)))
                                (let ((_hd2908029125_ (##car _e2907929121_))
                                      (_tl2908129128_ (##cdr _e2907929121_)))
                                  (if (gx#stx-pair/null? _tl2908129128_)
                                      (if (fx>= (gx#stx-length _tl2908129128_)
                                                '0)
                                          (let ((_g30445_
                                                 (gx#syntax-split-splice
                                                  _tl2908129128_
                                                  '0)))
                                            (begin
                                              (let ((_g30446_
                                                     (values-count _g30445_)))
                                                (if (not (fx= _g30446_ 2))
                                                    (error "Context expects 2 values"
                                                           _g30446_)))
                                              (let ((_target2908229131_
                                                     (values-ref _g30445_ 0))
                                                    (_tl2908429134_
                                                     (values-ref _g30445_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2908429134_)
                                                    (letrec ((_loop2908529137_
                                                              (lambda (_hd2908329141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _new-id2908929144_
                               _id2909029146_)
                        (if (gx#stx-pair? _hd2908329141_)
                            (let ((_e2908629149_ (gx#syntax-e _hd2908329141_)))
                              (let ((_lp-hd2908729153_ (##car _e2908629149_))
                                    (_lp-tl2908829156_ (##cdr _e2908629149_)))
                                (if (gx#stx-pair? _lp-hd2908729153_)
                                    (let ((_e2909329159_
                                           (gx#syntax-e _lp-hd2908729153_)))
                                      (let ((_hd2909429163_
                                             (##car _e2909329159_))
                                            (_tl2909529166_
                                             (##cdr _e2909329159_)))
                                        (if (gx#stx-pair? _tl2909529166_)
                                            (let ((_e2909629169_
                                                   (gx#syntax-e
                                                    _tl2909529166_)))
                                              (let ((_hd2909729173_
                                                     (##car _e2909629169_))
                                                    (_tl2909829176_
                                                     (##cdr _e2909629169_)))
                                                (if (gx#stx-null?
                                                     _tl2909829176_)
                                                    (_loop2908529137_
                                                     _lp-tl2908829156_
                                                     (cons _hd2909729173_
                                                           _new-id2908929144_)
                                                     (cons _hd2909429163_
                                                           _id2909029146_))
                                                    (_g2907129104_
                                                     _g2907229108_))))
                                            (_g2907129104_ _g2907229108_))))
                                    (_g2907129104_ _g2907229108_))))
                            (let ((_new-id2909129179_
                                   (reverse _new-id2908929144_))
                                  (_id2909229182_ (reverse _id2909029146_)))
                              ((lambda (_L29185_ _L29187_ _L29188_)
                                 (if (if (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2920629209_
                                                            _g2920729212_)
                                                     (cons _g2920629209_
                                                           _g2920729212_))
                                                   '()
                                                   _L29187_)))
                                         (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2921429217_
                                                            _g2921529220_)
                                                     (cons _g2921429217_
                                                           _g2921529220_))
                                                   '()
                                                   _L29185_)))
                                         '#f)
                                     (let ((_keytab29223_ (make-hash-table)))
                                       (let ((_found29226_ (make-hash-table)))
                                         (let ((_g30447_
                                                (for-each
                                                 (lambda (_id29229_
                                                          _new-id29231_)
                                                   (hash-put!
                                                    _keytab29223_
                                                    (gx#core-identifier-key
                                                     _id29229_)
                                                    (gx#core-identifier-key
                                                     _new-id29231_)))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2923229235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2923329238_)
                    (cons _g2923229235_ _g2923329238_))
                  '()
                  _L29187_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2924029243_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2924129246_)
                    (cons _g2924029243_ _g2924129246_))
                  '()
                  _L29185_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_imports29251_
                                                  (gx#core-expand-import-source
                                                   _L29188_)))
                                             (let ((_fold-e29271_
                                                    (letrec ((_fold-e29254_
                                                              (lambda (_in29257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _r29259_)
                        (if (gx#module-import? _in29257_)
                            (let ((_name29261_
                                   (gx#module-import-name _in29257_)))
                              (let ((_$e29264_
                                     (hash-get _keytab29223_ _name29261_)))
                                (if _$e29264_
                                    ((lambda (_rename29268_)
                                       (begin
                                         (hash-put!
                                          _found29226_
                                          _name29261_
                                          '#t)
                                         (cons (|gerbil/core::<module-sugar>[1]#module-import-rename|
                                                _in29257_
                                                _rename29268_)
                                               _r29259_)))
                                     _$e29264_)
                                    (cons _in29257_ _r29259_))))
                            (if (gx#import-set? _in29257_)
                                (foldl _fold-e29254_
                                       _r29259_
                                       (gx#import-set-imports _in29257_))
                                (cons _in29257_ _r29259_))))))
              _fold-e29254_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_new-imports29274_
                                                      (foldl _fold-e29271_
                                                             '()
                                                             _imports29251_)))
                                                 (let ()
                                                   (begin
                                                     (for-each
                                                      (lambda (_id29279_)
                                                        (if (hash-get
                                                             _found29226_
                                                             (gx#core-identifier-key
                                                              _id29279_))
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; identifier is not in the import set"
                                                             _stx29068_
                                                             _id29279_)))
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2928129284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2928229287_)
                         (cons _g2928129284_ _g2928229287_))
                       '()
                       _L29187_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'begin:
                                                           _new-imports29274_)))))))))
                                     (_g2907129104_ _g2907229108_)))
                               _new-id2909129179_
                               _id2909229182_
                               _hd2908029125_))))))
              (_loop2908529137_ _target2908229131_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2907129104_
                                                     _g2907229108_)))))
                                          (_g2907129104_ _g2907229108_))
                                      (_g2907129104_ _g2907229108_))))
                              (_g2907129104_ _g2907229108_))))
                      (_g2907129104_ _g2907229108_)))))
           (_g2907029290_ _stx29068_))))))
  (define |gerbil/core::<module-sugar>[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx29296_)
       (let ((_g2929929317_
              (lambda (_g2930029313_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2930029313_))))
         (let ((_g2929829396_
                (lambda (_g2930029321_)
                  (if (gx#stx-pair? _g2930029321_)
                      (let ((_e2930329324_ (gx#syntax-e _g2930029321_)))
                        (let ((_hd2930429328_ (##car _e2930329324_))
                              (_tl2930529331_ (##cdr _e2930329324_)))
                          (if (gx#stx-pair? _tl2930529331_)
                              (let ((_e2930629334_
                                     (gx#syntax-e _tl2930529331_)))
                                (let ((_hd2930729338_ (##car _e2930629334_))
                                      (_tl2930829341_ (##cdr _e2930629334_)))
                                  (if (gx#stx-pair? _tl2930829341_)
                                      (let ((_e2930929344_
                                             (gx#syntax-e _tl2930829341_)))
                                        (let ((_hd2931029348_
                                               (##car _e2930929344_))
                                              (_tl2931129351_
                                               (##cdr _e2930929344_)))
                                          (if (gx#stx-null? _tl2931129351_)
                                              ((lambda (_L29354_ _L29356_)
                                                 (if (gx#identifier? _L29354_)
                                                     (let ((_pre29372_
                                                            (gx#stx-e
                                                             _L29354_)))
                                                       (let ((_imports29375_
                                                              (gx#core-expand-import-source
                                                               _L29356_)))
                                                         (let ((_rename-e29381_
                                                                (lambda (_name29378_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core::<module-sugar>[1]#prefix-identifier-key|
                           _name29378_
                           _pre29372_))))
                   (let ((_fold-e29391_
                          (letrec ((_fold-e29384_
                                    (lambda (_in29387_ _r29389_)
                                      (if (gx#module-import? _in29387_)
                                          (cons (|gerbil/core::<module-sugar>[1]#module-import-rename|
                                                 _in29387_
                                                 (_rename-e29381_
                                                  (gx#module-import-name
                                                   _in29387_)))
                                                _r29389_)
                                          (if (gx#import-set? _in29387_)
                                              (foldl _fold-e29384_
                                                     _r29389_
                                                     (gx#import-set-imports
                                                      _in29387_))
                                              (cons _in29387_ _r29389_))))))
                            _fold-e29384_)))
                     (let ()
                       (cons 'begin:
                             (foldl _fold-e29391_ '() _imports29375_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2929929317_
                                                      _g2930029321_)))
                                               _hd2931029348_
                                               _hd2930729338_)
                                              (_g2929929317_ _g2930029321_))))
                                      (_g2929929317_ _g2930029321_))))
                              (_g2929929317_ _g2930029321_))))
                      (_g2929929317_ _g2930029321_)))))
           (_g2929829396_ _stx29296_))))))
  (define |gerbil/core::<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx29400_)
       (let ((_g2940329427_
              (lambda (_g2940429423_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2940429423_))))
         (let ((_g2940229549_
                (lambda (_g2940429431_)
                  (if (gx#stx-pair? _g2940429431_)
                      (let ((_e2940729434_ (gx#syntax-e _g2940429431_)))
                        (let ((_hd2940829438_ (##car _e2940729434_))
                              (_tl2940929441_ (##cdr _e2940729434_)))
                          (if (gx#stx-pair? _tl2940929441_)
                              (let ((_e2941029444_
                                     (gx#syntax-e _tl2940929441_)))
                                (let ((_hd2941129448_ (##car _e2941029444_))
                                      (_tl2941229451_ (##cdr _e2941029444_)))
                                  (if (gx#stx-pair/null? _tl2941229451_)
                                      (if (fx>= (gx#stx-length _tl2941229451_)
                                                '0)
                                          (let ((_g30448_
                                                 (gx#syntax-split-splice
                                                  _tl2941229451_
                                                  '0)))
                                            (begin
                                              (let ((_g30449_
                                                     (values-count _g30448_)))
                                                (if (not (fx= _g30449_ 2))
                                                    (error "Context expects 2 values"
                                                           _g30449_)))
                                              (let ((_target2941329454_
                                                     (values-ref _g30448_ 0))
                                                    (_tl2941529457_
                                                     (values-ref _g30448_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2941529457_)
                                                    (letrec ((_loop2941629460_
                                                              (lambda (_hd2941429464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2942029467_)
                        (if (gx#stx-pair? _hd2941429464_)
                            (let ((_e2941729470_ (gx#syntax-e _hd2941429464_)))
                              (let ((_lp-hd2941829474_ (##car _e2941729470_))
                                    (_lp-tl2941929477_ (##cdr _e2941729470_)))
                                (_loop2941629460_
                                 _lp-tl2941929477_
                                 (cons _lp-hd2941829474_ _id2942029467_))))
                            (let ((_id2942129480_ (reverse _id2942029467_)))
                              ((lambda (_L29484_ _L29486_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2950329506_
                                                        _g2950429509_)
                                                 (cons _g2950329506_
                                                       _g2950429509_))
                                               '()
                                               _L29484_)))
                                     (let ((_keys29520_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2951129514_
                                                               _g2951229517_)
                                                        (cons _g2951129514_
                                                              _g2951229517_))
                                                      '()
                                                      _L29484_)))))
                                       (let ((_keytab29531_
                                              (let ((_ht29523_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2952529527_)
                                                     (hash-put!
                                                      _ht29523_
                                                      _g2952529527_
                                                      '#t))
                                                   _keys29520_)
                                                  _ht29523_))))
                                         (let ((_exports29534_
                                                (gx#core-expand-export-source
                                                 _L29486_)))
                                           (let ((_fold-e29544_
                                                  (letrec ((_fold-e29537_
                                                            (lambda (_out29540_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r29542_)
                      (if (gx#module-export? _out29540_)
                          (if (hash-get
                               _keytab29531_
                               (gx#module-export-name _out29540_))
                              _r29542_
                              (cons _out29540_ _r29542_))
                          (if (gx#export-set? _out29540_)
                              (foldl _fold-e29537_
                                     _r29542_
                                     (gx#export-set-exports _out29540_))
                              _r29542_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e29537_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e29544_
                                                            '()
                                                            _exports29534_)))))))
                                     (_g2940329427_ _g2940429431_)))
                               _id2942129480_
                               _hd2941129448_))))))
              (_loop2941629460_ _target2941329454_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2940329427_
                                                     _g2940429431_)))))
                                          (_g2940329427_ _g2940429431_))
                                      (_g2940329427_ _g2940429431_))))
                              (_g2940329427_ _g2940429431_))))
                      (_g2940329427_ _g2940429431_)))))
           (_g2940229549_ _stx29400_))))))
  (define |gerbil/core::<module-sugar>[1]#module-export-rename|
    (lambda (_out29554_ _rename29556_)
      (gx#make-module-export
       (gx#module-export-context _out29554_)
       (gx#module-export-key _out29554_)
       (gx#module-export-phi _out29554_)
       _rename29556_
       (gx#module-export-weak? _out29554_))))
  (define |gerbil/core::<module-sugar>[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx29558_)
       (let ((_g2956129594_
              (lambda (_g2956229590_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2956229590_))))
         (let ((_g2956029780_
                (lambda (_g2956229598_)
                  (if (gx#stx-pair? _g2956229598_)
                      (let ((_e2956629601_ (gx#syntax-e _g2956229598_)))
                        (let ((_hd2956729605_ (##car _e2956629601_))
                              (_tl2956829608_ (##cdr _e2956629601_)))
                          (if (gx#stx-pair? _tl2956829608_)
                              (let ((_e2956929611_
                                     (gx#syntax-e _tl2956829608_)))
                                (let ((_hd2957029615_ (##car _e2956929611_))
                                      (_tl2957129618_ (##cdr _e2956929611_)))
                                  (if (gx#stx-pair/null? _tl2957129618_)
                                      (if (fx>= (gx#stx-length _tl2957129618_)
                                                '0)
                                          (let ((_g30450_
                                                 (gx#syntax-split-splice
                                                  _tl2957129618_
                                                  '0)))
                                            (begin
                                              (let ((_g30451_
                                                     (values-count _g30450_)))
                                                (if (not (fx= _g30451_ 2))
                                                    (error "Context expects 2 values"
                                                           _g30451_)))
                                              (let ((_target2957229621_
                                                     (values-ref _g30450_ 0))
                                                    (_tl2957429624_
                                                     (values-ref _g30450_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2957429624_)
                                                    (letrec ((_loop2957529627_
                                                              (lambda (_hd2957329631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _new-id2957929634_
                               _id2958029636_)
                        (if (gx#stx-pair? _hd2957329631_)
                            (let ((_e2957629639_ (gx#syntax-e _hd2957329631_)))
                              (let ((_lp-hd2957729643_ (##car _e2957629639_))
                                    (_lp-tl2957829646_ (##cdr _e2957629639_)))
                                (if (gx#stx-pair? _lp-hd2957729643_)
                                    (let ((_e2958329649_
                                           (gx#syntax-e _lp-hd2957729643_)))
                                      (let ((_hd2958429653_
                                             (##car _e2958329649_))
                                            (_tl2958529656_
                                             (##cdr _e2958329649_)))
                                        (if (gx#stx-pair? _tl2958529656_)
                                            (let ((_e2958629659_
                                                   (gx#syntax-e
                                                    _tl2958529656_)))
                                              (let ((_hd2958729663_
                                                     (##car _e2958629659_))
                                                    (_tl2958829666_
                                                     (##cdr _e2958629659_)))
                                                (if (gx#stx-null?
                                                     _tl2958829666_)
                                                    (_loop2957529627_
                                                     _lp-tl2957829646_
                                                     (cons _hd2958729663_
                                                           _new-id2957929634_)
                                                     (cons _hd2958429653_
                                                           _id2958029636_))
                                                    (_g2956129594_
                                                     _g2956229598_))))
                                            (_g2956129594_ _g2956229598_))))
                                    (_g2956129594_ _g2956229598_))))
                            (let ((_new-id2958129669_
                                   (reverse _new-id2957929634_))
                                  (_id2958229672_ (reverse _id2958029636_)))
                              ((lambda (_L29675_ _L29677_ _L29678_)
                                 (if (if (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2969629699_
                                                            _g2969729702_)
                                                     (cons _g2969629699_
                                                           _g2969729702_))
                                                   '()
                                                   _L29677_)))
                                         (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2970429707_
                                                            _g2970529710_)
                                                     (cons _g2970429707_
                                                           _g2970529710_))
                                                   '()
                                                   _L29675_)))
                                         '#f)
                                     (let ((_keytab29713_ (make-hash-table)))
                                       (let ((_found29716_ (make-hash-table)))
                                         (let ((_g30452_
                                                (for-each
                                                 (lambda (_id29719_
                                                          _new-id29721_)
                                                   (hash-put!
                                                    _keytab29713_
                                                    (gx#core-identifier-key
                                                     _id29719_)
                                                    (gx#core-identifier-key
                                                     _new-id29721_)))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2972229725_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2972329728_)
                    (cons _g2972229725_ _g2972329728_))
                  '()
                  _L29677_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2973029733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2973129736_)
                    (cons _g2973029733_ _g2973129736_))
                  '()
                  _L29675_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_exports29741_
                                                  (gx#core-expand-export-source
                                                   _L29678_)))
                                             (let ((_fold-e29761_
                                                    (letrec ((_fold-e29744_
                                                              (lambda (_out29747_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _r29749_)
                        (if (gx#module-export? _out29747_)
                            (let ((_name29751_
                                   (gx#module-export-name _out29747_)))
                              (let ((_$e29754_
                                     (hash-get _keytab29713_ _name29751_)))
                                (if _$e29754_
                                    ((lambda (_rename29758_)
                                       (begin
                                         (hash-put!
                                          _found29716_
                                          _name29751_
                                          '#t)
                                         (cons (|gerbil/core::<module-sugar>[1]#module-export-rename|
                                                _out29747_
                                                _rename29758_)
                                               _r29749_)))
                                     _$e29754_)
                                    (cons _out29747_ _r29749_))))
                            (if (gx#export-set? _out29747_)
                                (foldl _fold-e29744_
                                       _r29749_
                                       (gx#export-set-exports _out29747_))
                                (cons _out29747_ _r29749_))))))
              _fold-e29744_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_new-exports29764_
                                                      (foldl _fold-e29761_
                                                             '()
                                                             _exports29741_)))
                                                 (let ()
                                                   (begin
                                                     (for-each
                                                      (lambda (_id29769_)
                                                        (if (hash-get
                                                             _found29716_
                                                             (gx#core-identifier-key
                                                              _id29769_))
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; identifier is not in the export set"
                                                             _stx29558_
                                                             _id29769_)))
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2977129774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2977229777_)
                         (cons _g2977129774_ _g2977229777_))
                       '()
                       _L29677_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'begin:
                                                           _new-exports29764_)))))))))
                                     (_g2956129594_ _g2956229598_)))
                               _new-id2958129669_
                               _id2958229672_
                               _hd2957029615_))))))
              (_loop2957529627_ _target2957229621_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2956129594_
                                                     _g2956229598_)))))
                                          (_g2956129594_ _g2956229598_))
                                      (_g2956129594_ _g2956229598_))))
                              (_g2956129594_ _g2956229598_))))
                      (_g2956129594_ _g2956229598_)))))
           (_g2956029780_ _stx29558_))))))
  (define |gerbil/core::<module-sugar>[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx29786_)
       (let ((_g2978929807_
              (lambda (_g2979029803_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2979029803_))))
         (let ((_g2978829886_
                (lambda (_g2979029811_)
                  (if (gx#stx-pair? _g2979029811_)
                      (let ((_e2979329814_ (gx#syntax-e _g2979029811_)))
                        (let ((_hd2979429818_ (##car _e2979329814_))
                              (_tl2979529821_ (##cdr _e2979329814_)))
                          (if (gx#stx-pair? _tl2979529821_)
                              (let ((_e2979629824_
                                     (gx#syntax-e _tl2979529821_)))
                                (let ((_hd2979729828_ (##car _e2979629824_))
                                      (_tl2979829831_ (##cdr _e2979629824_)))
                                  (if (gx#stx-pair? _tl2979829831_)
                                      (let ((_e2979929834_
                                             (gx#syntax-e _tl2979829831_)))
                                        (let ((_hd2980029838_
                                               (##car _e2979929834_))
                                              (_tl2980129841_
                                               (##cdr _e2979929834_)))
                                          (if (gx#stx-null? _tl2980129841_)
                                              ((lambda (_L29844_ _L29846_)
                                                 (if (gx#identifier? _L29844_)
                                                     (let ((_pre29862_
                                                            (gx#stx-e
                                                             _L29844_)))
                                                       (let ((_exports29865_
                                                              (gx#core-expand-export-source
                                                               _L29846_)))
                                                         (let ((_rename-e29871_
                                                                (lambda (_name29868_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core::<module-sugar>[1]#prefix-identifier-key|
                           _name29868_
                           _pre29862_))))
                   (let ((_fold-e29881_
                          (letrec ((_fold-e29874_
                                    (lambda (_out29877_ _r29879_)
                                      (if (gx#module-export? _out29877_)
                                          (cons (|gerbil/core::<module-sugar>[1]#module-export-rename|
                                                 _out29877_
                                                 (_rename-e29871_
                                                  (gx#module-export-name
                                                   _out29877_)))
                                                _r29879_)
                                          (if (gx#export-set? _out29877_)
                                              (foldl _fold-e29874_
                                                     _r29879_
                                                     (gx#export-set-exports
                                                      _out29877_))
                                              (cons _out29877_ _r29879_))))))
                            _fold-e29874_)))
                     (let ()
                       (cons 'begin:
                             (foldl _fold-e29881_ '() _exports29865_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2978929807_
                                                      _g2979029811_)))
                                               _hd2980029838_
                                               _hd2979729828_)
                                              (_g2978929807_ _g2979029811_))))
                                      (_g2978929807_ _g2979029811_))))
                              (_g2978929807_ _g2979029811_))))
                      (_g2978929807_ _g2979029811_)))))
           (_g2978829886_ _stx29786_))))))
  (define |gerbil/core::<module-sugar>[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx29890_)
       (let ((_g2989329913_
              (lambda (_g2989429909_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2989429909_))))
         (let ((_g2989230148_
                (lambda (_g2989429917_)
                  (if (gx#stx-pair? _g2989429917_)
                      (let ((_e2989629920_ (gx#syntax-e _g2989429917_)))
                        (let ((_hd2989729924_ (##car _e2989629920_))
                              (_tl2989829927_ (##cdr _e2989629920_)))
                          (if (gx#stx-pair/null? _tl2989829927_)
                              (if (fx>= (gx#stx-length _tl2989829927_) '0)
                                  (let ((_g30453_
                                         (gx#syntax-split-splice
                                          _tl2989829927_
                                          '0)))
                                    (begin
                                      (let ((_g30454_ (values-count _g30453_)))
                                        (if (not (fx= _g30454_ 2))
                                            (error "Context expects 2 values"
                                                   _g30454_)))
                                      (let ((_target2989929930_
                                             (values-ref _g30453_ 0))
                                            (_tl2990129933_
                                             (values-ref _g30453_ 1)))
                                        (if (gx#stx-null? _tl2990129933_)
                                            (letrec ((_loop2990229936_
                                                      (lambda (_hd2990029940_
                                                               _id2990629943_)
                                                        (if (gx#stx-pair?
                                                             _hd2990029940_)
                                                            (let ((_e2990329946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2990029940_)))
                      (let ((_lp-hd2990429950_ (##car _e2990329946_))
                            (_lp-tl2990529953_ (##cdr _e2990329946_)))
                        (_loop2990229936_
                         _lp-tl2990529953_
                         (cons _lp-hd2990429950_ _id2990629943_))))
                    (let ((_id2990729956_ (reverse _id2990629943_)))
                      ((lambda (_L29960_)
                         ((letrec ((_lp29976_
                                    (lambda (_rest29979_ _ids29981_)
                                      (let ((_g2998429996_
                                             (lambda (_g2998529992_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2998529992_))))
                                        (let ((_g2998330007_
                                               (lambda (_g2998530000_)
                                                 ((lambda ()
                                                    (cons 'begin:
                                                          _ids29981_))))))
                                          (let ((_g2998230136_
                                                 (lambda (_g2998530011_)
                                                   (if (gx#stx-pair?
                                                        _g2998530011_)
                                                       (let ((_e2998830014_
                                                              (gx#syntax-e
                                                               _g2998530011_)))
                                                         (let ((_hd2998930018_
                                                                (##car _e2998830014_))
                                                               (_tl2999030021_
                                                                (##cdr _e2998830014_)))
                                                           ((lambda (_L30024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L30026_)
                      (let ((_info30041_
                             (gx#syntax-local-value _L30026_ false)))
                        (if (|gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info?|
                             _info30041_)
                            (let ((_g3004330060_
                                   (slot-ref
                                    _info30041_
                                    'expander-identifiers)))
                              (let ((_E3004530066_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _g3004330060_))))
                                (let ((_K3004630078_
                                       (lambda (_setf30070_
                                                _getf30072_
                                                _type?30073_
                                                _make-type30074_
                                                _type::t30075_
                                                _super30076_)
                                         (_lp29976_
                                          _L30024_
                                          (cons _L30026_
                                                (cons _type::t30075_
                                                      (cons _make-type30074_
                                                            (cons _type?30073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr cons
                                 (foldr cons _ids29981_ _setf30070_)
                                 _getf30072_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _g3004330060_)
                                      (let ((_hd3004730082_
                                             (##car _g3004330060_))
                                            (_tl3004830085_
                                             (##cdr _g3004330060_)))
                                        (let ((_super30088_ _hd3004730082_))
                                          (if (##pair? _tl3004830085_)
                                              (let ((_hd3004930091_
                                                     (##car _tl3004830085_))
                                                    (_tl3005030094_
                                                     (##cdr _tl3004830085_)))
                                                (let ((_type::t30097_
                                                       _hd3004930091_))
                                                  (if (##pair? _tl3005030094_)
                                                      (let ((_hd3005130100_
                                                             (##car _tl3005030094_))
                                                            (_tl3005230103_
                                                             (##cdr _tl3005030094_)))
                                                        (let ((_make-type30106_
                                                               _hd3005130100_))
                                                          (if (##pair? _tl3005230103_)
                                                              (let ((_hd3005330109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##car _tl3005230103_))
                            (_tl3005430112_ (##cdr _tl3005230103_)))
                        (let ((_type?30115_ _hd3005330109_))
                          (if (##pair? _tl3005430112_)
                              (let ((_hd3005530118_ (##car _tl3005430112_))
                                    (_tl3005630121_ (##cdr _tl3005430112_)))
                                (let ((_getf30124_ _hd3005530118_))
                                  (if (##pair? _tl3005630121_)
                                      (let ((_hd3005730127_
                                             (##car _tl3005630121_))
                                            (_tl3005830130_
                                             (##cdr _tl3005630121_)))
                                        (let ((_setf30133_ _hd3005730127_))
                                          (if (##null? _tl3005830130_)
                                              (_K3004630078_
                                               _setf30133_
                                               _getf30124_
                                               _type?30115_
                                               _make-type30106_
                                               _type::t30097_
                                               _super30088_)
                                              (_E3004530066_))))
                                      (_E3004530066_))))
                              (_E3004530066_))))
                      (_E3004530066_))))
              (_E3004530066_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E3004530066_))))
                                      (_E3004530066_)))))
                            (gx#raise-syntax-error
                             '#f
                             '"Incomplete type info"
                             _stx29890_
                             _L30026_))))
                    _tl2999030021_
                    _hd2998930018_)))
               (_g2998330007_ _g2998530011_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2998230136_ _rest29979_)))))))
                            _lp29976_)
                          (begin
                            '#!void
                            (foldr (lambda (_g3013930142_ _g3014030145_)
                                     (cons _g3013930142_ _g3014030145_))
                                   '()
                                   _L29960_))
                          '()))
                       _id2990729956_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop2990229936_
                                               _target2989929930_
                                               '()))
                                            (_g2989329913_ _g2989429917_)))))
                                  (_g2989329913_ _g2989429917_))
                              (_g2989329913_ _g2989429917_))))
                      (_g2989329913_ _g2989429917_)))))
           (_g2989230148_ _stx29890_)))))))
