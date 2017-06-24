(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#syntax-pattern::t
    (make-struct-type
     'gx#syntax-pattern::t
     gx#expander::t
     '2
     'syntax-pattern
     '()
     '#f))
  (define gx#syntax-pattern? (make-struct-predicate gx#syntax-pattern::t))
  (define gx#make-syntax-pattern
    (lambda _$args14283_
      (apply make-struct-instance gx#syntax-pattern::t _$args14283_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self14280_ _stx14281_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx14281_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx13889_)
      (let ((_generate13891_
             (lambda (_e14118_)
               (let ((_BUG14120_
                      (lambda (_q14278_)
                        (error '"BUG: syntax; generate"
                               _stx13889_
                               _e14118_
                               _q14278_))))
                 (let ((_local-pattern-e14121_
                        (lambda (_pat14276_)
                          (gx#syntax-local-rewrap
                           (##structure-ref
                            _pat14276_
                            '2
                            gx#syntax-pattern::t
                            '#f)))))
                   (let ((_getvar14122_
                          (lambda (_q14273_ _vars14274_)
                            (assgetq _q14273_ _vars14274_ _BUG14120_))))
                     (let ((_getarg14123_
                            (lambda (_arg14239_ _vars14240_)
                              (let ((_arg1424114248_ _arg14239_))
                                (let ((_E1424314252_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _arg1424114248_))))
                                  (let ((_K1424414261_
                                         (lambda (_e14255_ _tag14256_)
                                           (let ((_$e14258_ _tag14256_))
                                             (if (eq? _$e14258_ 'ref)
                                                 (_getvar14122_
                                                  _e14255_
                                                  _vars14240_)
                                                 (if (eq? _$e14258_ 'pattern)
                                                     (_local-pattern-e14121_
                                                      _e14255_)
                                                     (_BUG14120_
                                                      _arg14239_)))))))
                                    (if (##pair? _arg1424114248_)
                                        (let ((_hd1424514264_
                                               (##car _arg1424114248_))
                                              (_tl1424614266_
                                               (##cdr _arg1424114248_)))
                                          (let ((_tag14269_ _hd1424514264_))
                                            (let ((_e14271_ _tl1424614266_))
                                              (_K1424414261_
                                               _e14271_
                                               _tag14269_))))
                                        (_E1424314252_))))))))
                       ((letrec ((_recur14125_
                                  (lambda (_e14127_ _vars14128_)
                                    (let ((_e1412914136_ _e14127_))
                                      (let ((_E1413114140_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _e1412914136_))))
                                        (let ((_K1413214227_
                                               (lambda (_body14143_ _tag14144_)
                                                 (let ((_$e14146_ _tag14144_))
                                                   (if (eq? _$e14146_ 'datum)
                                                       (gx#core-list
                                                        'quote
                                                        _body14143_)
                                                       (if (eq? _$e14146_
                                                                'term)
                                                           (gx#core-list
                                                            'datum->syntax
                                                            '#f
                                                            (gx#core-list
                                                             'quote
                                                             _body14143_))
                                                           (if (eq? _$e14146_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'pattern)
                       (_local-pattern-e14121_ _body14143_)
                       (if (eq? _$e14146_ 'ref)
                           (_getvar14122_ _body14143_ _vars14128_)
                           (if (eq? _$e14146_ 'cons)
                               (gx#core-list
                                'cons
                                (_recur14125_ (car _body14143_) _vars14128_)
                                (_recur14125_ (cdr _body14143_) _vars14128_))
                               (if (eq? _$e14146_ 'vector)
                                   (gx#core-list
                                    'list->vector
                                    (_recur14125_ _body14143_ _vars14128_))
                                   (if (eq? _$e14146_ 'box)
                                       (gx#core-list
                                        'box
                                        (_recur14125_ _body14143_ _vars14128_))
                                       (if (eq? _$e14146_ 'splice)
                                           (let ((_body1414814159_
                                                  _body14143_))
                                             (let ((_E1415014163_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _body1414814159_))))
                                               (let ((_K1415114201_
                                                      (lambda (_args14166_
                                                               _iv14167_
                                                               _hd14168_
                                                               _depth14169_)
                                                        (let ((_targets14175_
                                                               (map (lambda (_g1417014172_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_getarg14123_ _g1417014172_ _vars14128_))
                            _args14166_)))
                  (let ((_fold-in14177_ (gx#gentemps _args14166_)))
                    (let ((_fold-out14179_ (gx#genident__0)))
                      (let ((_lambda-args14181_
                             (foldr1 cons
                                     (cons _fold-out14179_ '())
                                     _fold-in14177_)))
                        (let ((_lambda-body14198_
                               (if (fx> _depth14169_ '1)
                                   (let ((_r-args14189_
                                          (map (lambda (_arg14183_)
                                                 (cons 'ref (cdr _arg14183_)))
                                               _args14166_))
                                         (_r-vars14190_
                                          (foldr (lambda (_arg14185_
                                                          _var14186_
                                                          _r14187_)
                                                   (cons (cons (cdr _arg14185_)
                                                               _var14186_)
                                                         _r14187_))
                                                 _vars14128_
                                                 _args14166_
                                                 _fold-in14177_)))
                                     (_recur14125_
                                      (cons* 'splice
                                             (fx- _depth14169_ '1)
                                             _hd14168_
                                             (cons 'var _fold-out14179_)
                                             _r-args14189_)
                                      _r-vars14190_))
                                   (let ((_hd-vars14196_
                                          (foldr (lambda (_arg14192_
                                                          _var14193_
                                                          _r14194_)
                                                   (cons (cons (cdr _arg14192_)
                                                               _var14193_)
                                                         _r14194_))
                                                 _vars14128_
                                                 _args14166_
                                                 _fold-in14177_)))
                                     (gx#core-list
                                      'cons
                                      (_recur14125_ _hd14168_ _hd-vars14196_)
                                      _fold-out14179_)))))
                          (let ()
                            (gx#core-list
                             'begin
                             (if (fx> (length _targets14175_) '1)
                                 (gx#core-cons*
                                  'syntax-check-splice-targets
                                  _targets14175_)
                                 '#!void)
                             (gx#core-cons*
                              'foldr
                              (gx#core-list
                               'lambda%
                               _lambda-args14181_
                               _lambda-body14198_)
                              (_recur14125_ _iv14167_ _vars14128_)
                              _targets14175_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _body1414814159_)
                                                     (let ((_hd1415214204_
                                                            (##car _body1414814159_))
                                                           (_tl1415314206_
                                                            (##cdr _body1414814159_)))
                                                       (let ((_depth14209_
                                                              _hd1415214204_))
                                                         (if (##pair? _tl1415314206_)
                                                             (let ((_hd1415414211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl1415314206_))
                           (_tl1415514213_ (##cdr _tl1415314206_)))
                       (let ((_hd14216_ _hd1415414211_))
                         (if (##pair? _tl1415514213_)
                             (let ((_hd1415614218_ (##car _tl1415514213_))
                                   (_tl1415714220_ (##cdr _tl1415514213_)))
                               (let ((_iv14223_ _hd1415614218_))
                                 (let ((_args14225_ _tl1415714220_))
                                   (_K1415114201_
                                    _args14225_
                                    _iv14223_
                                    _hd14216_
                                    _depth14209_))))
                             (_E1415014163_))))
                     (_E1415014163_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1415014163_)))))
                                           (if (eq? _$e14146_ 'var)
                                               _body14143_
                                               (_BUG14120_
                                                _e14127_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _e1412914136_)
                                              (let ((_hd1413314230_
                                                     (##car _e1412914136_))
                                                    (_tl1413414232_
                                                     (##cdr _e1412914136_)))
                                                (let ((_tag14235_
                                                       _hd1413314230_))
                                                  (let ((_body14237_
                                                         _tl1413414232_))
                                                    (_K1413214227_
                                                     _body14237_
                                                     _tag14235_))))
                                              (_E1413114140_))))))))
                          _recur14125_)
                        _e14118_
                        '()))))))))
        (let ((_parse13892_
               (lambda (_e13933_)
                 (let ((_make-cons13935_
                        (lambda (_hd14110_ _tl14111_)
                          (let ((_g14295_ _hd14110_) (_g14297_ _tl14111_))
                            (begin
                              (let ((_g14296_ (values-count _g14295_)))
                                (if (not (fx= _g14296_ 2))
                                    (error "Context expects 2 values"
                                           _g14296_)))
                              (let ((_g14298_ (values-count _g14297_)))
                                (if (not (fx= _g14298_ 2))
                                    (error "Context expects 2 values"
                                           _g14298_)))
                              (let ((_hd-e14113_ (values-ref _g14295_ 0))
                                    (_hd-vars14114_ (values-ref _g14295_ 1)))
                                (let ((_tl-e14115_ (values-ref _g14297_ 0))
                                      (_tl-vars14116_ (values-ref _g14297_ 1)))
                                  (values (cons* 'cons _hd-e14113_ _tl-e14115_)
                                          (append _hd-vars14114_
                                                  _tl-vars14116_)))))))))
                   (let ((_make-splice13936_
                          (lambda (_where14049_
                                   _depth14050_
                                   _hd14051_
                                   _tl14052_)
                            (let ((_g14291_ _hd14051_) (_g14293_ _tl14052_))
                              (begin
                                (let ((_g14292_ (values-count _g14291_)))
                                  (if (not (fx= _g14292_ 2))
                                      (error "Context expects 2 values"
                                             _g14292_)))
                                (let ((_g14294_ (values-count _g14293_)))
                                  (if (not (fx= _g14294_ 2))
                                      (error "Context expects 2 values"
                                             _g14294_)))
                                (let ((_hd-e14054_ (values-ref _g14291_ 0))
                                      (_hd-vars14055_ (values-ref _g14291_ 1)))
                                  (let ((_tl-e14056_ (values-ref _g14293_ 0))
                                        (_tl-vars14057_
                                         (values-ref _g14293_ 1)))
                                    ((letrec ((_lp14059_
                                               (lambda (_rest14061_
                                                        _targets14062_
                                                        _vars14063_)
                                                 (let ((_rest1406414074_
                                                        _rest14061_))
                                                   (let ((_E1406714078_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest1406414074_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_else1406614082_
                                                            (lambda ()
                                                              (if (null? _targets14062_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Misplaced ellipsis"
                           _stx13889_
                           _where14049_)
                          (values (cons* 'splice
                                         _depth14050_
                                         _hd-e14054_
                                         _tl-e14056_
                                         _targets14062_)
                                  _vars14063_)))))
               (let ((_K1406814091_
                      (lambda (_rest14085_ _hd-pat14086_ _hd-depth*14087_)
                        (let ((_hd-depth14089_
                               (fx- _hd-depth*14087_ _depth14050_)))
                          (if (fxpositive? _hd-depth14089_)
                              (_lp14059_
                               _rest14085_
                               (cons (cons 'ref _hd-pat14086_) _targets14062_)
                               (cons (cons _hd-depth14089_ _hd-pat14086_)
                                     _vars14063_))
                              (if (fxzero? _hd-depth14089_)
                                  (_lp14059_
                                   _rest14085_
                                   (cons (cons 'pattern _hd-pat14086_)
                                         _targets14062_)
                                   _vars14063_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Too many ellipses"
                                   _stx13889_
                                   _where14049_)))))))
                 (if (##pair? _rest1406414074_)
                     (let ((_hd1406914094_ (##car _rest1406414074_))
                           (_tl1407014096_ (##cdr _rest1406414074_)))
                       (if (##pair? _hd1406914094_)
                           (let ((_hd1407114099_ (##car _hd1406914094_))
                                 (_tl1407214101_ (##cdr _hd1406914094_)))
                             (let ((_hd-depth*14104_ _hd1407114099_))
                               (let ((_hd-pat14106_ _tl1407214101_))
                                 (let ((_rest14108_ _tl1407014096_))
                                   (_K1406814091_
                                    _rest14108_
                                    _hd-pat14106_
                                    _hd-depth*14104_)))))
                           (_else1406614082_)))
                     (_else1406614082_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _lp14059_)
                                     _hd-vars14055_
                                     '()
                                     _tl-vars14057_))))))))
                     (letrec ((_recur13937_
                               (lambda (_e13942_ _is-e?13943_)
                                 (if (_is-e?13943_ _e13942_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Mislpaced ellipsis"
                                      _stx13889_)
                                     (if (gx#syntax-local-pattern? _e13942_)
                                         (let ((_pat13945_
                                                (gx#syntax-local-e__0
                                                 _e13942_)))
                                           (let ((_depth13947_
                                                  (##structure-ref
                                                   _pat13945_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                             (let ()
                                               (if (fxpositive? _depth13947_)
                                                   (values (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13945_)
                   (cons (cons _depth13947_ _pat13945_) '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (values (cons 'pattern
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13945_)
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (gx#identifier? _e13942_)
                                             (values (cons 'term _e13942_) '())
                                             (if (gx#stx-pair? _e13942_)
                                                 (let ((_e1394913956_
                                                        _e13942_))
                                                   (let ((_E1395113960_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e1394913956_))))
                                                     (let ((_E1395014039_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1394913956_)
                          (let ((_e1395213964_ (gx#syntax-e _e1394913956_)))
                            (let ((_hd1395313967_ (##car _e1395213964_))
                                  (_tl1395413969_ (##cdr _e1395213964_)))
                              (let ((_hd13972_ _hd1395313967_))
                                (let ((_rest13974_ _tl1395413969_))
                                  (if '#t
                                      (if (_is-e?13943_ _hd13972_)
                                          (let ((_e1397513982_ _rest13974_))
                                            (let ((_E1397713986_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad ellipsis syntax"
                                                      _stx13889_
                                                      _e13942_))))
                                              (let ((_E1397614000_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1397513982_)
                                                           (let ((_e1397813990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1397513982_)))
                     (let ((_hd1397913993_ (##car _e1397813990_))
                           (_tl1398013995_ (##cdr _e1397813990_)))
                       (let ((_rest13998_ _hd1397913993_))
                         (if (gx#stx-null? _tl1398013995_)
                             (if '#t
                                 (_recur13937_ _rest13998_ false)
                                 (_E1397713986_))
                             (_E1397713986_)))))
                   (_E1397713986_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1397614000_)))))
                                          ((letrec ((_lp14004_
                                                     (lambda (_rest14006_
                                                              _depth14007_)
                                                       (let ((_e1400814015_
                                                              _rest14006_))
                                                         (let ((_E1401014019_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (fxpositive? _depth14007_)
                              (_make-splice13936_
                               _e13942_
                               _depth14007_
                               (_recur13937_ _hd13972_ _is-e?13943_)
                               (_recur13937_ _rest14006_ _is-e?13943_))
                              (_make-cons13935_
                               (_recur13937_ _hd13972_ _is-e?13943_)
                               (_recur13937_ _rest14006_ _is-e?13943_))))))
                   (let ((_E1400914035_
                          (lambda ()
                            (if (gx#stx-pair? _e1400814015_)
                                (let ((_e1401114023_
                                       (gx#syntax-e _e1400814015_)))
                                  (let ((_hd1401214026_ (##car _e1401114023_))
                                        (_tl1401314028_ (##cdr _e1401114023_)))
                                    (let ((_rest-hd14031_ _hd1401214026_))
                                      (let ((_rest-tl14033_ _tl1401314028_))
                                        (if '#t
                                            (if (_is-e?13943_ _rest-hd14031_)
                                                (_lp14004_
                                                 _rest-tl14033_
                                                 (fx+ _depth14007_ '1))
                                                (if (fxpositive? _depth14007_)
                                                    (_make-splice13936_
                                                     _e13942_
                                                     _depth14007_
                                                     (_recur13937_
                                                      _hd13972_
                                                      _is-e?13943_)
                                                     (_recur13937_
                                                      _rest14006_
                                                      _is-e?13943_))
                                                    (_make-cons13935_
                                                     (_recur13937_
                                                      _hd13972_
                                                      _is-e?13943_)
                                                     (_recur13937_
                                                      _rest14006_
                                                      _is-e?13943_))))
                                            (_E1401014019_))))))
                                (_E1401014019_)))))
                     (let () (_E1400914035_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _lp14004_)
                                           _rest13974_
                                           '0))
                                      (_E1395113960_))))))
                          (_E1395113960_)))))
               (let () (_E1395014039_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-vector? _e13942_)
                                                     (let ((_g14285_
                                                            (_recur13937_
                                                             (vector->list
                                                              (gx#stx-unwrap__0
                                                               _e13942_))
                                                             _is-e?13943_)))
                                                       (begin
                                                         (let ((_g14286_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g14285_)))
                   (if (not (fx= _g14286_ 2))
                       (error "Context expects 2 values" _g14286_)))
                 (let ((_e14043_ (values-ref _g14285_ 0))
                       (_vars14044_ (values-ref _g14285_ 1)))
                   (values (cons 'vector _e14043_) _vars14044_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-box? _e13942_)
                                                         (let ((_g14287_
                                                                (_recur13937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (unbox (gx#stx-unwrap__0 _e13942_))
                         _is-e?13943_)))
                   (begin
                     (let ((_g14288_ (values-count _g14287_)))
                       (if (not (fx= _g14288_ 2))
                           (error "Context expects 2 values" _g14288_)))
                     (let ((_e14046_ (values-ref _g14287_ 0))
                           (_vars14047_ (values-ref _g14287_ 1)))
                       (values (cons 'box _e14046_) _vars14047_))))
                 (values (cons 'datum _e13942_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       (let ((_g14289_ (_recur13937_ _e13933_ gx#ellipsis?)))
                         (begin
                           (let ((_g14290_ (values-count _g14289_)))
                             (if (not (fx= _g14290_ 2))
                                 (error "Context expects 2 values" _g14290_)))
                           (let ((_tree13939_ (values-ref _g14289_ 0))
                                 (_vars13940_ (values-ref _g14289_ 1)))
                             (if (null? _vars13940_)
                                 _tree13939_
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Missing ellipsis"
                                  _stx13889_
                                  _vars13940_)))))))))))
          (let ((_e1389313903_ _stx13889_))
            (let ((_E1389513907_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _stx13889_))))
              (let ((_E1389413929_
                     (lambda ()
                       (if (gx#stx-pair? _e1389313903_)
                           (let ((_e1389613911_ (gx#syntax-e _e1389313903_)))
                             (let ((_hd1389713914_ (##car _e1389613911_))
                                   (_tl1389813916_ (##cdr _e1389613911_)))
                               (if (gx#stx-pair? _tl1389813916_)
                                   (let ((_e1389913919_
                                          (gx#syntax-e _tl1389813916_)))
                                     (let ((_hd1390013922_
                                            (##car _e1389913919_))
                                           (_tl1390113924_
                                            (##cdr _e1389913919_)))
                                       (let ((_form13927_ _hd1390013922_))
                                         (if (gx#stx-null? _tl1390113924_)
                                             (if '#t
                                                 (gx#stx-wrap-source
                                                  (_generate13891_
                                                   (_parse13892_ _form13927_))
                                                  (gx#stx-source _stx13889_))
                                                 (_E1389513907_))
                                             (_E1389513907_)))))
                                   (_E1389513907_))))
                           (_E1389513907_)))))
                (let () (_E1389413929_)))))))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda13159
      (lambda (_stx13161_ _identifier=?13162_ _unwrap-e13163_ _wrap-e13164_)
        (let ((_generate-body13167_
               (lambda (_bindings13711_ _body13712_)
                 ((letrec ((_recur13714_
                            (lambda (_rest13716_)
                              (let ((_rest1371713725_ _rest13716_))
                                (let ((_E1372013729_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1371713725_))))
                                  (let ((_else1371913733_
                                         (lambda () _body13712_)))
                                    (let ((_K1372113739_
                                           (lambda (_rest13736_ _hd13737_)
                                             (gx#core-list
                                              'let-values
                                              (cons _hd13737_ '())
                                              (_recur13714_ _rest13736_)))))
                                      (if (##pair? _rest1371713725_)
                                          (let ((_hd1372213742_
                                                 (##car _rest1371713725_))
                                                (_tl1372313744_
                                                 (##cdr _rest1371713725_)))
                                            (let ((_hd13747_ _hd1372213742_))
                                              (let ((_rest13749_
                                                     _tl1372313744_))
                                                (_K1372113739_
                                                 _rest13749_
                                                 _hd13747_))))
                                          (_else1371913733_)))))))))
                    _recur13714_)
                  _bindings13711_))))
          (let ((_generate-match13169_
                 (lambda (_where13333_
                          _target13334_
                          _hd13335_
                          _mvars13336_
                          _K13337_
                          _E13338_)
                   (let ((_BUG13340_
                          (lambda (_q13572_)
                            (error '"BUG: syntax-case; generate"
                                   _stx13161_
                                   _hd13335_
                                   _q13572_))))
                     (let ((_splice-rlen13342_
                            (lambda (_e13388_)
                              ((letrec ((_lp13390_
                                         (lambda (_e13392_ _n13393_)
                                           (let ((_e1339413401_ _e13392_))
                                             (let ((_E1339613405_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _e1339413401_))))
                                               (let ((_K1339713414_
                                                      (lambda (_body13408_
                                                               _tag13409_)
                                                        (let ((_$e13411_
                                                               _tag13409_))
                                                          (if (eq? _$e13411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'splice)
                      (gx#raise-syntax-error
                       '#f
                       '"Ambiguous pattern"
                       _stx13161_
                       _where13333_)
                      (if (eq? _$e13411_ 'cons)
                          (_lp13390_ (cdr _body13408_) (fx+ _n13393_ '1))
                          _n13393_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _e1339413401_)
                                                     (let ((_hd1339813417_
                                                            (##car _e1339413401_))
                                                           (_tl1339913419_
                                                            (##cdr _e1339413401_)))
                                                       (let ((_tag13422_
                                                              _hd1339813417_))
                                                         (let ((_body13424_
                                                                _tl1339913419_))
                                                           (_K1339713414_
                                                            _body13424_
                                                            _tag13422_))))
                                                     (_E1339613405_))))))))
                                 _lp13390_)
                               _e13388_
                               '0))))
                       (let ((_splice-vars13343_
                              (lambda (_e13350_)
                                ((letrec ((_recur13352_
                                           (lambda (_e13354_ _vars13355_)
                                             (let ((_e1335613363_ _e13354_))
                                               (let ((_E1335813367_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _e1335613363_))))
                                                 (let ((_K1335913376_
                                                        (lambda (_body13370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tag13371_)
                  (let ((_$e13373_ _tag13371_))
                    (if (eq? _$e13373_ 'var)
                        (cons _body13370_ _vars13355_)
                        (if (memq _$e13373_ '(cons splice))
                            (_recur13352_
                             (cdr _body13370_)
                             (_recur13352_ (car _body13370_) _vars13355_))
                            (if (memq _$e13373_ '(vector box))
                                (_recur13352_ _body13370_ _vars13355_)
                                _vars13355_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _e1335613363_)
                                                       (let ((_hd1336013379_
                                                              (##car _e1335613363_))
                                                             (_tl1336113381_
                                                              (##cdr _e1335613363_)))
                                                         (let ((_tag13384_
                                                                _hd1336013379_))
                                                           (let ((_body13386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1336113381_))
                     (_K1335913376_ _body13386_ _tag13384_))))
               (_E1335813367_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _recur13352_)
                                 _e13350_
                                 '()))))
                         (let ((_make-body13344_
                                (lambda (_vars13346_)
                                  (cons _K13337_
                                        (map (lambda (_mvar13348_)
                                               (assgetq (car _mvar13348_)
                                                        _vars13346_
                                                        _BUG13340_))
                                             _mvars13336_)))))
                           (letrec ((_recur13341_
                                     (lambda (_e13426_
                                              _vars13427_
                                              _target13428_
                                              _E13429_
                                              _k13430_)
                                       (let ((_e1343113438_ _e13426_))
                                         (let ((_E1343313442_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _e1343113438_))))
                                           (let ((_K1343413560_
                                                  (lambda (_body13445_
                                                           _tag13446_)
                                                    (let ((_$e13448_
                                                           _tag13446_))
                                                      (if (eq? _$e13448_ 'any)
                                                          (_k13430_
                                                           _vars13427_)
                                                          (if (eq? _$e13448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'id)
                      (gx#core-list
                       'if
                       (gx#core-list 'identifier? _target13428_)
                       (gx#core-list
                        'if
                        (gx#core-list
                         _identifier=?13162_
                         (gx#core-list _wrap-e13164_ _body13445_)
                         _target13428_)
                        (_k13430_ _vars13427_)
                        _E13429_)
                       _E13429_)
                      (if (eq? _$e13448_ 'var)
                          (_k13430_
                           (cons (cons _body13445_ _target13428_) _vars13427_))
                          (if (eq? _$e13448_ 'cons)
                              (let ((_$e13451_ (gx#genident__1 'e))
                                    (_$hd13452_ (gx#genident__1 'hd))
                                    (_$tl13453_ (gx#genident__1 'tl)))
                                (gx#core-list
                                 'if
                                 (gx#core-list 'stx-pair? _target13428_)
                                 (gx#core-list
                                  'let-values
                                  (cons (cons (cons _$e13451_ '())
                                              (cons (gx#core-list
                                                     _unwrap-e13163_
                                                     _target13428_)
                                                    '()))
                                        '())
                                  (gx#core-list
                                   'let-values
                                   (cons (cons (cons _$hd13452_ '())
                                               (cons (gx#core-list
                                                      '##car
                                                      _$e13451_)
                                                     '()))
                                         (cons (cons (cons _$tl13453_ '())
                                                     (cons (gx#core-list
                                                            '##cdr
                                                            _$e13451_)
                                                           '()))
                                               '()))
                                   (let ((_body1345413461_ _body13445_))
                                     (let ((_E1345613465_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _body1345413461_))))
                                       (let ((_K1345713473_
                                              (lambda (_tl13468_ _hd13469_)
                                                (_recur13341_
                                                 _hd13469_
                                                 _vars13427_
                                                 _$hd13452_
                                                 _E13429_
                                                 (lambda (_vars13471_)
                                                   (_recur13341_
                                                    _tl13468_
                                                    _vars13471_
                                                    _$tl13453_
                                                    _E13429_
                                                    _k13430_))))))
                                         (if (##pair? _body1345413461_)
                                             (let ((_hd1345813476_
                                                    (##car _body1345413461_))
                                                   (_tl1345913478_
                                                    (##cdr _body1345413461_)))
                                               (let ((_hd13481_
                                                      _hd1345813476_))
                                                 (let ((_tl13483_
                                                        _tl1345913478_))
                                                   (_K1345713473_
                                                    _tl13483_
                                                    _hd13481_))))
                                             (_E1345613465_)))))))
                                 _E13429_))
                              (if (eq? _$e13448_ 'splice)
                                  (let ((_body1348413491_ _body13445_))
                                    (let ((_E1348613495_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _body1348413491_))))
                                      (let ((_K1348713544_
                                             (lambda (_tl13498_ _hd13499_)
                                               (let ((_rlen13501_
                                                      (_splice-rlen13342_
                                                       _tl13498_)))
                                                 (let ((_$target13503_
                                                        (gx#genident__1
                                                         'target)))
                                                   (let ((_$hd13505_
                                                          (gx#genident__1
                                                           'hd)))
                                                     (let ((_$tl13507_
                                                            (gx#genident__1
                                                             'tl)))
                                                       (let ((_$lp13509_
                                                              (gx#genident__1
                                                               'loop)))
                                                         (let ((_$lp-e13511_
                                                                (gx#genident__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'e)))
                   (let ((_$lp-hd13513_ (gx#genident__1 'lp-hd)))
                     (let ((_$lp-tl13515_ (gx#genident__1 'lp-tl)))
                       (let ((_svars13517_ (_splice-vars13343_ _hd13499_)))
                         (let ((_lvars13519_ (gx#gentemps _svars13517_)))
                           (let ((_tlvars13521_ (gx#gentemps _svars13517_)))
                             (let ((_linit13525_
                                    (map (lambda (_var13523_)
                                           (gx#core-list 'quote '()))
                                         _lvars13519_)))
                               (let ()
                                 (let ((_make-loop13528_
                                        (lambda (_vars13530_)
                                          (gx#core-list
                                           'letrec-values
                                           (cons (cons (cons _$lp13509_ '())
                                                       (cons (gx#core-list
                                                              'lambda%
                                                              (cons _$hd13505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _lvars13519_)
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _$hd13505_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$lp-e13511_ '())
                                    (cons (gx#core-list
                                           _unwrap-e13163_
                                           _$hd13505_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$lp-hd13513_ '())
                                     (cons (gx#core-list '##car _$lp-e13511_)
                                           '()))
                               (cons (cons (cons _$lp-tl13515_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$lp-e13511_)
                                                 '()))
                                     '()))
                         (_recur13341_
                          _hd13499_
                          '()
                          _$lp-hd13513_
                          _E13429_
                          (lambda (_hdvars13532_)
                            (cons* _$lp13509_
                                   _$lp-tl13515_
                                   (map (lambda (_svar13534_ _lvar13535_)
                                          (gx#core-list
                                           'cons
                                           (assgetq _svar13534_
                                                    _hdvars13532_
                                                    _BUG13340_)
                                           _lvar13535_))
                                        _svars13517_
                                        _lvars13519_))))))
                       (gx#core-list
                        'let-values
                        (map (lambda (_lvar13537_ _tlvar13538_)
                               (cons (cons _tlvar13538_ '())
                                     (cons (gx#core-list 'reverse _lvar13537_)
                                           '())))
                             _lvars13519_
                             _tlvars13521_)
                        (_k13430_
                         (foldl (lambda (_svar13540_ _tlvar13541_ _r13542_)
                                  (cons (cons _svar13540_ _tlvar13541_)
                                        _r13542_))
                                _vars13530_
                                _svars13517_
                                _tlvars13521_)))))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons* _$lp13509_
                                                  _$target13503_
                                                  _linit13525_)))))
                                   (gx#core-list
                                    'if
                                    (gx#core-list
                                     'stx-pair/null?
                                     _target13428_)
                                    (gx#core-list
                                     'if
                                     (gx#core-list
                                      'fx>=
                                      (gx#core-list 'stx-length _target13428_)
                                      _rlen13501_)
                                     (gx#core-list
                                      'let-values
                                      (cons (cons (cons _$target13503_
                                                        (cons _$tl13507_ '()))
                                                  (cons (gx#core-list
                                                         'syntax-split-splice
                                                         _target13428_
                                                         _rlen13501_)
                                                        '()))
                                            '())
                                      (_recur13341_
                                       _tl13498_
                                       _vars13427_
                                       _$tl13507_
                                       _E13429_
                                       _make-loop13528_))
                                     _E13429_)
                                    _E13429_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _body1348413491_)
                                            (let ((_hd1348813547_
                                                   (##car _body1348413491_))
                                                  (_tl1348913549_
                                                   (##cdr _body1348413491_)))
                                              (let ((_hd13552_ _hd1348813547_))
                                                (let ((_tl13554_
                                                       _tl1348913549_))
                                                  (_K1348713544_
                                                   _tl13554_
                                                   _hd13552_))))
                                            (_E1348613495_)))))
                                  (if (eq? _$e13448_ 'null)
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-null? _target13428_)
                                       (_k13430_ _vars13427_)
                                       _E13429_)
                                      (if (eq? _$e13448_ 'vector)
                                          (let ((_$e13556_
                                                 (gx#genident__1 'e)))
                                            (gx#core-list
                                             'if
                                             (gx#core-list
                                              'stx-vector?
                                              _target13428_)
                                             (gx#core-list
                                              'let-values
                                              (cons (cons (cons _$e13556_ '())
                                                          (cons (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'vector->list
                         (gx#core-list _unwrap-e13163_ _target13428_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (_recur13341_
                                               _body13445_
                                               _vars13427_
                                               _$e13556_
                                               _E13429_
                                               _k13430_))
                                             _E13429_))
                                          (if (eq? _$e13448_ 'box)
                                              (let ((_$e13558_
                                                     (gx#genident__1 'e)))
                                                (gx#core-list
                                                 'if
                                                 (gx#core-list
                                                  'stx-box?
                                                  _target13428_)
                                                 (gx#core-list
                                                  'let-values
                                                  (cons (cons (cons _$e13558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (gx#core-list
                             'unbox
                             (gx#core-list _unwrap-e13163_ _target13428_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur13341_
                                                   _body13445_
                                                   _vars13427_
                                                   _$e13558_
                                                   _E13429_
                                                   _k13430_))
                                                 _E13429_))
                                              (if (eq? _$e13448_ 'datum)
                                                  (gx#core-list
                                                   'if
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target13428_)
                                                   (gx#core-list
                                                    'if
                                                    (gx#core-list
                                                     'equal?
                                                     (gx#core-list
                                                      'stx-e
                                                      _target13428_)
                                                     _body13445_)
                                                    (_k13430_ _vars13427_)
                                                    _E13429_)
                                                   _E13429_)
                                                  (_BUG13340_
                                                   _e13426_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _e1343113438_)
                                                 (let ((_hd1343513563_
                                                        (##car _e1343113438_))
                                                       (_tl1343613565_
                                                        (##cdr _e1343113438_)))
                                                   (let ((_tag13568_
                                                          _hd1343513563_))
                                                     (let ((_body13570_
                                                            _tl1343613565_))
                                                       (_K1343413560_
                                                        _body13570_
                                                        _tag13568_))))
                                                 (_E1343313442_))))))))
                             (_recur13341_
                              _hd13335_
                              '()
                              _target13334_
                              _E13338_
                              _make-body13344_)))))))))
            (let ((_parse-clause13170_
                   (lambda (_hd13239_ _ids13240_)
                     ((letrec ((_recur13242_
                                (lambda (_e13244_ _vars13245_ _depth13246_)
                                  (if (gx#identifier? _e13244_)
                                      (if (gx#underscore? _e13244_)
                                          (values '(any) _vars13245_)
                                          (if (gx#ellipsis? _e13244_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Misplaced ellipsis"
                                               _stx13161_
                                               _hd13239_)
                                              (if (find (lambda (_id13248_)
                                                          (gx#bound-identifier=?
                                                           _e13244_
                                                           _id13248_))
                                                        _ids13240_)
                                                  (values (cons 'id _e13244_)
                                                          _vars13245_)
                                                  (if (find (lambda (_var13250_)
                                                              (gx#bound-identifier=?
                                                               _e13244_
                                                               (car _var13250_)))
                                                            _vars13245_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Duplicate pattern variable"
                                                       _stx13161_
                                                       _e13244_)
                                                      (values (cons 'var
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e13244_)
                      (cons (cons _e13244_ _depth13246_) _vars13245_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _e13244_)
                                          (let ((_e1325113258_ _e13244_))
                                            (let ((_E1325313262_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _e1325113258_))))
                                              (let ((_E1325213323_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1325113258_)
                                                           (let ((_e1325413266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1325113258_)))
                     (let ((_hd1325513269_ (##car _e1325413266_))
                           (_tl1325613271_ (##cdr _e1325413266_)))
                       (let ((_hd13274_ _hd1325513269_))
                         (let ((_rest13276_ _tl1325613271_))
                           (if '#t
                               (let ((_make-pair13291_
                                      (lambda (_tag13278_ _hd13279_ _tl13280_)
                                        (let ((_hd-depth13282_
                                               (if (eq? _tag13278_ 'splice)
                                                   (fx+ _depth13246_ '1)
                                                   _depth13246_)))
                                          (let ((_g14301_
                                                 (_recur13242_
                                                  _hd13279_
                                                  _vars13245_
                                                  _hd-depth13282_)))
                                            (begin
                                              (let ((_g14302_
                                                     (values-count _g14301_)))
                                                (if (not (fx= _g14302_ 2))
                                                    (error "Context expects 2 values"
                                                           _g14302_)))
                                              (let ((_hd13284_
                                                     (values-ref _g14301_ 0))
                                                    (_vars13285_
                                                     (values-ref _g14301_ 1)))
                                                (let ((_g14303_
                                                       (_recur13242_
                                                        _tl13280_
                                                        _vars13285_
                                                        _depth13246_)))
                                                  (begin
                                                    (let ((_g14304_
                                                           (values-count
                                                            _g14303_)))
                                                      (if (not (fx= _g14304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g14304_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_tl13287_
                                                           (values-ref
                                                            _g14303_
                                                            0))
                                                          (_vars13288_
                                                           (values-ref
                                                            _g14303_
                                                            1)))
                                                      (let ()
                                                        (values (cons* _tag13278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd13284_
                               _tl13287_)
                        _vars13288_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((_e1329213299_ _rest13276_))
                                   (let ((_E1329413303_
                                          (lambda ()
                                            (_make-pair13291_
                                             'cons
                                             _hd13274_
                                             _rest13276_))))
                                     (let ((_E1329313319_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1329213299_)
                                                  (let ((_e1329513307_
                                                         (gx#syntax-e
                                                          _e1329213299_)))
                                                    (let ((_hd1329613310_
                                                           (##car _e1329513307_))
                                                          (_tl1329713312_
                                                           (##cdr _e1329513307_)))
                                                      (let ((_rest-hd13315_
                                                             _hd1329613310_))
                                                        (let ((_rest-tl13317_
                                                               _tl1329713312_))
                                                          (if '#t
                                                              (if (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest-hd13315_)
                          (_make-pair13291_ 'splice _hd13274_ _rest-tl13317_)
                          (_make-pair13291_ 'cons _hd13274_ _rest13276_))
                      (_E1329413303_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1329413303_)))))
                                       (let () (_E1329313319_))))))
                               (_E1325313262_))))))
                   (_E1325313262_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1325213323_)))))
                                          (if (gx#stx-null? _e13244_)
                                              (values '(null) _vars13245_)
                                              (if (gx#stx-vector? _e13244_)
                                                  (let ((_g14305_
                                                         (_recur13242_
                                                          (vector->list
                                                           (gx#syntax-e
                                                            _e13244_))
                                                          _vars13245_
                                                          _depth13246_)))
                                                    (begin
                                                      (let ((_g14306_
                                                             (values-count
                                                              _g14305_)))
                                                        (if (not (fx= _g14306_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g14306_)))
              (let ((_e13327_ (values-ref _g14305_ 0))
                    (_vars13328_ (values-ref _g14305_ 1)))
                (values (cons 'vector _e13327_) _vars13328_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e13244_)
                                                      (let ((_g14307_
                                                             (_recur13242_
                                                              (unbox (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e13244_))
                      _vars13245_
                      _depth13246_)))
                (begin
                  (let ((_g14308_ (values-count _g14307_)))
                    (if (not (fx= _g14308_ 2))
                        (error "Context expects 2 values" _g14308_)))
                  (let ((_e13330_ (values-ref _g14307_ 0))
                        (_vars13331_ (values-ref _g14307_ 1)))
                    (values (cons 'box _e13330_) _vars13331_))))
              (if (gx#stx-datum? _e13244_)
                  (values (cons 'datum (gx#stx-e _e13244_)) _vars13245_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad pattern"
                   _stx13161_
                   _e13244_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        _recur13242_)
                      _hd13239_
                      '()
                      '0))))
              (let ((_generate-clause13168_
                     (lambda (_target13574_ _ids13575_ _clause13576_ _E13577_)
                       (let ((_generate113579_
                              (lambda (_hd13666_ _fender13667_ _body13668_)
                                (let ((_g14299_
                                       (_parse-clause13170_
                                        _hd13666_
                                        _ids13575_)))
                                  (begin
                                    (let ((_g14300_ (values-count _g14299_)))
                                      (if (not (fx= _g14300_ 2))
                                          (error "Context expects 2 values"
                                                 _g14300_)))
                                    (let ((_e13670_ (values-ref _g14299_ 0))
                                          (_mvars13671_
                                           (values-ref _g14299_ 1)))
                                      (let ((_pvars13673_
                                             (map gx#syntax-local-rewrap
                                                  (gx#gentemps _mvars13671_))))
                                        (let ((_E13675_
                                               (cons _E13577_
                                                     (cons _target13574_
                                                           '()))))
                                          (let ((_K13708_
                                                 (gx#core-list
                                                  'lambda%
                                                  _pvars13673_
                                                  (gx#core-list
                                                   'let-syntax
                                                   (map (lambda (_mvar13677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pvar13678_)
                  (let ((_mvar1367913686_ _mvar13677_))
                    (let ((_E1368113690_
                           (lambda ()
                             (error '"No clause matching" _mvar1367913686_))))
                      (let ((_K1368213696_
                             (lambda (_depth13693_ _id13694_)
                               (cons _id13694_
                                     (cons (gx#core-list
                                            'make-syntax-pattern
                                            (gx#core-list 'quote _id13694_)
                                            (gx#core-list 'quote _pvar13678_)
                                            _depth13693_)
                                           '())))))
                        (if (##pair? _mvar1367913686_)
                            (let ((_hd1368313699_ (##car _mvar1367913686_))
                                  (_tl1368413701_ (##cdr _mvar1367913686_)))
                              (let ((_id13704_ _hd1368313699_))
                                (let ((_depth13706_ _tl1368413701_))
                                  (_K1368213696_ _depth13706_ _id13704_))))
                            (_E1368113690_))))))
                _mvars13671_
                _pvars13673_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (eq? _fender13667_ '#t)
                                                       _body13668_
                                                       (gx#core-list
                                                        'if
                                                        _fender13667_
                                                        _body13668_
                                                        _E13675_))))))
                                            (let ()
                                              (_generate-match13169_
                                               _hd13666_
                                               _target13574_
                                               _e13670_
                                               _mvars13671_
                                               _K13708_
                                               _E13675_)))))))))))
                         (let ((_e1358013600_ _clause13576_))
                           (let ((_E1358913604_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _e1358013600_))))
                             (let ((_E1358213638_
                                    (lambda ()
                                      (if (gx#stx-pair? _e1358013600_)
                                          (let ((_e1359013608_
                                                 (gx#syntax-e _e1358013600_)))
                                            (let ((_hd1359113611_
                                                   (##car _e1359013608_))
                                                  (_tl1359213613_
                                                   (##cdr _e1359013608_)))
                                              (let ((_hd13616_ _hd1359113611_))
                                                (if (gx#stx-pair?
                                                     _tl1359213613_)
                                                    (let ((_e1359313618_
                                                           (gx#syntax-e
                                                            _tl1359213613_)))
                                                      (let ((_hd1359413621_
                                                             (##car _e1359313618_))
                                                            (_tl1359513623_
                                                             (##cdr _e1359313618_)))
                                                        (let ((_fender13626_
                                                               _hd1359413621_))
                                                          (if (gx#stx-pair?
                                                               _tl1359513623_)
                                                              (let ((_e1359613628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1359513623_)))
                        (let ((_hd1359713631_ (##car _e1359613628_))
                              (_tl1359813633_ (##cdr _e1359613628_)))
                          (let ((_body13636_ _hd1359713631_))
                            (if (gx#stx-null? _tl1359813633_)
                                (if '#t
                                    (_generate113579_
                                     _hd13616_
                                     _fender13626_
                                     _body13636_)
                                    (_E1358913604_))
                                (_E1358913604_)))))
                      (_E1358913604_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1358913604_)))))
                                          (_E1358913604_)))))
                               (let ((_E1358113662_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1358013600_)
                                            (let ((_e1358313642_
                                                   (gx#syntax-e
                                                    _e1358013600_)))
                                              (let ((_hd1358413645_
                                                     (##car _e1358313642_))
                                                    (_tl1358513647_
                                                     (##cdr _e1358313642_)))
                                                (let ((_hd13650_
                                                       _hd1358413645_))
                                                  (if (gx#stx-pair?
                                                       _tl1358513647_)
                                                      (let ((_e1358613652_
                                                             (gx#syntax-e
                                                              _tl1358513647_)))
                                                        (let ((_hd1358713655_
                                                               (##car _e1358613652_))
                                                              (_tl1358813657_
                                                               (##cdr _e1358613652_)))
                                                          (let ((_body13660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1358713655_))
                    (if (gx#stx-null? _tl1358813657_)
                        (if '#t
                            (_generate113579_ _hd13650_ '#t _body13660_)
                            (_E1358213638_))
                        (_E1358213638_)))))
              (_E1358213638_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1358213638_)))))
                                 (let () (_E1358113662_))))))))))
                (let ((_generate-bindings13166_
                       (lambda (_target13751_
                                _ids13752_
                                _clauses13753_
                                _clause-ids13754_
                                _E13755_)
                         (let ((_generate113757_
                                (lambda (_clause13856_
                                         _clause-id13857_
                                         _E13858_)
                                  (cons (cons _clause-id13857_ '())
                                        (cons (gx#core-list
                                               'lambda%
                                               (cons _target13751_ '())
                                               (_generate-clause13168_
                                                _target13751_
                                                _ids13752_
                                                _clause13856_
                                                _E13858_))
                                              '())))))
                           ((letrec ((_lp13759_
                                      (lambda (_rest13761_
                                               _rest-ids13762_
                                               _bindings13763_)
                                        (let ((_rest1376413772_ _rest13761_))
                                          (let ((_E1376713776_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1376413772_))))
                                            (let ((_else1376613780_
                                                   (lambda ()
                                                     _bindings13763_)))
                                              (let ((_K1376813844_
                                                     (lambda (_rest13783_
                                                              _clause13784_)
                                                       (let ((_rest-ids1378513792_
                                                              _rest-ids13762_))
                                                         (let ((_E1378713796_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (error '"No clause matching" _rest-ids1378513792_))))
                   (let ((_K1378813832_
                          (lambda (_rest-ids13799_ _clause-id13800_)
                            (let ((_rest-ids1380113809_ _rest-ids13799_))
                              (let ((_E1380413813_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _rest-ids1380113809_))))
                                (let ((_else1380313817_
                                       (lambda ()
                                         (cons (_generate113757_
                                                _clause13784_
                                                _clause-id13800_
                                                _E13755_)
                                               _bindings13763_))))
                                  (let ((_K1380513822_
                                         (lambda (_next-clause-id13820_)
                                           (_lp13759_
                                            _rest13783_
                                            _rest-ids13799_
                                            (cons (_generate113757_
                                                   _clause13784_
                                                   _clause-id13800_
                                                   _next-clause-id13820_)
                                                  _bindings13763_)))))
                                    (if (##pair? _rest-ids1380113809_)
                                        (let ((_hd1380613825_
                                               (##car _rest-ids1380113809_))
                                              (_tl1380713827_
                                               (##cdr _rest-ids1380113809_)))
                                          (let ((_next-clause-id13830_
                                                 _hd1380613825_))
                                            (_K1380513822_
                                             _next-clause-id13830_)))
                                        (_else1380313817_)))))))))
                     (if (##pair? _rest-ids1378513792_)
                         (let ((_hd1378913835_ (##car _rest-ids1378513792_))
                               (_tl1379013837_ (##cdr _rest-ids1378513792_)))
                           (let ((_clause-id13840_ _hd1378913835_))
                             (let ((_rest-ids13842_ _tl1379013837_))
                               (_K1378813832_
                                _rest-ids13842_
                                _clause-id13840_))))
                         (_E1378713796_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (##pair? _rest1376413772_)
                                                    (let ((_hd1376913847_
                                                           (##car _rest1376413772_))
                                                          (_tl1377013849_
                                                           (##cdr _rest1376413772_)))
                                                      (let ((_clause13852_
                                                             _hd1376913847_))
                                                        (let ((_rest13854_
                                                               _tl1377013849_))
                                                          (_K1376813844_
                                                           _rest13854_
                                                           _clause13852_))))
                                                    (_else1376613780_)))))))))
                              _lp13759_)
                            _clauses13753_
                            _clause-ids13754_
                            '())))))
                  (let ((_e1317113184_ _stx13161_))
                    (let ((_E1317313188_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e1317113184_))))
                      (let ((_E1317213235_
                             (lambda ()
                               (if (gx#stx-pair? _e1317113184_)
                                   (let ((_e1317413192_
                                          (gx#syntax-e _e1317113184_)))
                                     (let ((_hd1317513195_
                                            (##car _e1317413192_))
                                           (_tl1317613197_
                                            (##cdr _e1317413192_)))
                                       (if (gx#stx-pair? _tl1317613197_)
                                           (let ((_e1317713200_
                                                  (gx#syntax-e
                                                   _tl1317613197_)))
                                             (let ((_hd1317813203_
                                                    (##car _e1317713200_))
                                                   (_tl1317913205_
                                                    (##cdr _e1317713200_)))
                                               (let ((_expr13208_
                                                      _hd1317813203_))
                                                 (if (gx#stx-pair?
                                                      _tl1317913205_)
                                                     (let ((_e1318013210_
                                                            (gx#syntax-e
                                                             _tl1317913205_)))
                                                       (let ((_hd1318113213_
                                                              (##car _e1318013210_))
                                                             (_tl1318213215_
                                                              (##cdr _e1318013210_)))
                                                         (let ((_ids13218_
                                                                _hd1318113213_))
                                                           (let ((_clauses13220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1318213215_))
                     (if '#t
                         (if (not (gx#identifier-list? _ids13218_))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad template identifier list"
                              _stx13161_
                              _ids13218_)
                             (if (not (gx#stx-list? _clauses13220_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _stx13161_)
                                 (let ((_ids13222_
                                        (gx#syntax->list _ids13218_)))
                                   (let ((_clauses13224_
                                          (gx#syntax->list _clauses13220_)))
                                     (let ((_clause-ids13226_
                                            (gx#gentemps _clauses13224_)))
                                       (let ((_E13228_ (gx#genident__0)))
                                         (let ((_target13230_
                                                (gx#genident__0)))
                                           (let ((_first13232_
                                                  (if (null? _clauses13224_)
                                                      _E13228_
                                                      (car _clause-ids13226_))))
                                             (let ()
                                               (gx#stx-wrap-source
                                                (gx#core-list
                                                 'let-values
                                                 (cons (cons (cons _E13228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _target13230_ '())
                            (gx#core-list
                             'raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _target13230_))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_generate-body13167_
                                                  (_generate-bindings13166_
                                                   _target13230_
                                                   _ids13222_
                                                   _clauses13224_
                                                   _clause-ids13226_
                                                   _E13228_)
                                                  (cons _first13232_
                                                        (cons _expr13208_
                                                              '()))))
                                                (gx#stx-source
                                                 _stx13161_)))))))))))
                         (_E1317313188_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1317313188_)))))
                                           (_E1317313188_))))
                                   (_E1317313188_)))))
                        (let () (_E1317213235_))))))))))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx13863_)
          (let ((_identifier=?13865_ 'free-identifier=?))
            (let ((_unwrap-e13867_ 'syntax-e))
              (let ((_wrap-e13869_ 'quote-syntax))
                (gx#macro-expand-syntax-case__opt-lambda13159
                 _stx13863_
                 _identifier=?13865_
                 _unwrap-e13867_
                 _wrap-e13869_))))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx13871_ _identifier=?13872_)
          (let ((_unwrap-e13874_ 'syntax-e))
            (let ((_wrap-e13876_ 'quote-syntax))
              (gx#macro-expand-syntax-case__opt-lambda13159
               _stx13871_
               _identifier=?13872_
               _unwrap-e13874_
               _wrap-e13876_)))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx13878_ _identifier=?13879_ _unwrap-e13880_)
          (let ((_wrap-e13882_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda13159
             _stx13878_
             _identifier=?13879_
             _unwrap-e13880_
             _wrap-e13882_))))
      (define gx#macro-expand-syntax-case
        (lambda _g14310_
          (let ((_g14309_ (length _g14310_)))
            (cond ((fx= _g14309_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g14310_))
                  ((fx= _g14309_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g14310_))
                  ((fx= _g14309_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g14310_))
                  ((fx= _g14309_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda13159
                          _g14310_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gx#macro-expand-syntax-case
                    _g14310_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx13158_)
      (if (gx#identifier? _stx13158_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda4062 _stx13158_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd13116_ . _rest13117_)
      (let ((_len13119_ (length _hd13116_)))
        ((letrec ((_lp13121_
                   (lambda (_rest13123_)
                     (let ((_rest1312413132_ _rest13123_))
                       (let ((_E1312713136_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1312413132_))))
                         (let ((_else1312613140_ (lambda () '#!void)))
                           (let ((_K1312813146_
                                  (lambda (_rest13143_ _hd13144_)
                                    (if (fx= _len13119_ (length _hd13144_))
                                        (_lp13121_ _rest13143_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Splice length mismatch"
                                         _hd13144_)))))
                             (if (##pair? _rest1312413132_)
                                 (let ((_hd1312913149_
                                        (##car _rest1312413132_))
                                       (_tl1313013151_
                                        (##cdr _rest1312413132_)))
                                   (let ((_hd13154_ _hd1312913149_))
                                     (let ((_rest13156_ _tl1313013151_))
                                       (_K1312813146_ _rest13156_ _hd13154_))))
                                 (_else1312613140_)))))))))
           _lp13121_)
         _rest13117_))))
  (define gx#syntax-split-splice
    (lambda (_stx13074_ _n13075_)
      ((letrec ((_lp13077_
                 (lambda (_rest13079_ _r13080_)
                   (if (gx#stx-pair? _rest13079_)
                       (let ((_g1308113088_ (gx#syntax-e _rest13079_)))
                         (let ((_E1308313092_
                                (lambda ()
                                  (error '"No clause matching"
                                         _g1308113088_))))
                           (let ((_K1308413098_
                                  (lambda (_rest13095_ _hd13096_)
                                    (_lp13077_
                                     _rest13095_
                                     (cons _hd13096_ _r13080_)))))
                             (if (##pair? _g1308113088_)
                                 (let ((_hd1308513101_ (##car _g1308113088_))
                                       (_tl1308613103_ (##cdr _g1308113088_)))
                                   (let ((_hd13106_ _hd1308513101_))
                                     (let ((_rest13108_ _tl1308613103_))
                                       (_K1308413098_ _rest13108_ _hd13106_))))
                                 (_E1308313092_)))))
                       ((letrec ((_lp13110_
                                  (lambda (_n13112_ _l13113_ _r13114_)
                                    (if (null? _l13113_)
                                        (values _l13113_ _r13114_)
                                        (if (fxpositive? _n13112_)
                                            (_lp13110_
                                             (fx- _n13112_ '1)
                                             (cdr _l13113_)
                                             (cons (car _l13113_) _r13114_))
                                            (values (reverse _l13113_)
                                                    _r13114_))))))
                          _lp13110_)
                        _n13075_
                        _r13080_
                        _rest13079_)))))
         _lp13077_)
       _stx13074_
       '()))))
