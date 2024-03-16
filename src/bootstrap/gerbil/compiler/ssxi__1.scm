(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx157673_)
      (let* ((_g157677157695_
              (lambda (_g157678157691_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157678157691_))))
             (_g157676157750_
              (lambda (_g157678157699_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157678157699_))
                    (let ((_e157681157702_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157678157699_))))
                      (let ((_hd157682157706_
                             (let ()
                               (declare (not safe))
                               (##car _e157681157702_)))
                            (_tl157683157709_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157681157702_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl157683157709_))
                            (let ((_e157684157712_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl157683157709_))))
                              (let ((_hd157685157716_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e157684157712_)))
                                    (_tl157686157719_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e157684157712_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl157686157719_))
                                    (let ((_e157687157722_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl157686157719_))))
                                      (let ((_hd157688157726_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e157687157722_)))
                                            (_tl157689157729_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e157687157722_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl157689157729_))
                                            ((lambda (_L157732_ _L157734_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L157734_))
                                                   (let ((__tmp161232
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp161227
                                                          (let ((__tmp161229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp161231
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp161230
                                (let ()
                                  (declare (not safe))
                                  (cons _L157734_ '()))))
                           (declare (not safe))
                           (cons __tmp161231 __tmp161230)))
                        (__tmp161228
                         (let () (declare (not safe)) (cons _L157732_ '()))))
                    (declare (not safe))
                    (cons __tmp161229 __tmp161228))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp161232
                                                           __tmp161227))
                                                   (_g157677157695_
                                                    _g157678157699_)))
                                             _hd157688157726_
                                             _hd157685157716_)
                                            (_g157677157695_
                                             _g157678157699_))))
                                    (_g157677157695_ _g157678157699_))))
                            (_g157677157695_ _g157678157699_))))
                    (_g157677157695_ _g157678157699_)))))
        (_g157676157750_ _$stx157673_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx157754_)
      (let* ((_g157758157787_
              (lambda (_g157759157783_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g157759157783_))))
             (_g157757157887_
              (lambda (_g157759157791_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g157759157791_))
                    (let ((_e157762157794_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g157759157791_))))
                      (let ((_hd157763157798_
                             (let ()
                               (declare (not safe))
                               (##car _e157762157794_)))
                            (_tl157764157801_
                             (let ()
                               (declare (not safe))
                               (##cdr _e157762157794_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl157764157801_))
                            (let ((_g161233_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl157764157801_
                                      '0))))
                              (begin
                                (let ((_g161234_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161233_)
                                             (##vector-length _g161233_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161234_ 2)))
                                      (error "Context expects 2 values"
                                             _g161234_)))
                                (let ((_target157765157804_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161233_ 0)))
                                      (_tl157767157807_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161233_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl157767157807_))
                                      (letrec ((_loop157768157810_
                                                (lambda (_hd157766157814_
                                                         _type157772157817_
                                                         _symbol157773157819_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd157766157814_))
                                                      (let ((_e157769157822_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd157766157814_))))
                (let ((_lp-hd157770157826_
                       (let () (declare (not safe)) (##car _e157769157822_)))
                      (_lp-tl157771157829_
                       (let () (declare (not safe)) (##cdr _e157769157822_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd157770157826_))
                      (let ((_e157776157832_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd157770157826_))))
                        (let ((_hd157777157836_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157776157832_)))
                              (_tl157778157839_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157776157832_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl157778157839_))
                              (let ((_e157779157842_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl157778157839_))))
                                (let ((_hd157780157846_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e157779157842_)))
                                      (_tl157781157849_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e157779157842_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl157781157849_))
                                      (_loop157768157810_
                                       _lp-tl157771157829_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd157780157846_
                                               _type157772157817_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd157777157836_
                                               _symbol157773157819_)))
                                      (_g157758157787_ _g157759157791_))))
                              (_g157758157787_ _g157759157791_))))
                      (_g157758157787_ _g157759157791_))))
              (let ((_type157774157852_ (reverse _type157772157817_))
                    (_symbol157775157855_ (reverse _symbol157773157819_)))
                ((lambda (_L157858_ _L157860_)
                   (let ((__tmp161241
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161235
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L157858_
                               _L157860_))
                            (let ((__tmp161236
                                   (lambda (_g157875157879_
                                            _g157876157882_
                                            _g157877157884_)
                                     (let ((__tmp161237
                                            (let ((__tmp161240
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp161238
                                                   (let ((__tmp161239
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g157875157879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g157876157882_
                                                           __tmp161239))))
                                              (declare (not safe))
                                              (cons __tmp161240 __tmp161238))))
                                       (declare (not safe))
                                       (cons __tmp161237 _g157877157884_)))))
                              (declare (not safe))
                              (foldr2 __tmp161236 '() _L157858_ _L157860_)))))
                     (declare (not safe))
                     (cons __tmp161241 __tmp161235)))
                 _type157774157852_
                 _symbol157775157855_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop157768157810_
                                         _target157765157804_
                                         '()
                                         '()))
                                      (_g157758157787_ _g157759157791_)))))
                            (_g157758157787_ _g157759157791_))))
                    (_g157758157787_ _g157759157791_)))))
        (_g157757157887_ _$stx157754_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx157892_)
      (let* ((___stx160792160793_ _$stx157892_)
             (_g157897157939_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx160792160793_)))))
        (let ((___kont160795160796_
               (lambda (_L158067_ _L158069_ _L158070_ _L158071_)
                 (let ((__tmp161255
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp161242
                        (let ((__tmp161252
                               (let ((__tmp161254
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161253
                                      (let ()
                                        (declare (not safe))
                                        (cons _L158071_ '()))))
                                 (declare (not safe))
                                 (cons __tmp161254 __tmp161253)))
                              (__tmp161243
                               (let ((__tmp161249
                                      (let ((__tmp161251
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161250
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158070_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161251 __tmp161250)))
                                     (__tmp161244
                                      (let ((__tmp161246
                                             (let ((__tmp161248
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161247
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L158069_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161248 __tmp161247)))
                                            (__tmp161245
                                             (let ()
                                               (declare (not safe))
                                               (cons _L158067_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161246 __tmp161245))))
                                 (declare (not safe))
                                 (cons __tmp161249 __tmp161244))))
                          (declare (not safe))
                          (cons __tmp161252 __tmp161243))))
                   (declare (not safe))
                   (cons __tmp161255 __tmp161242))))
              (___kont160797160798_
               (lambda (_L157986_ _L157988_ _L157989_ _L157990_)
                 (let ((__tmp161256
                        (let ((__tmp161257
                               (let ((__tmp161258
                                      (let ((__tmp161259
                                             (let ((__tmp161260
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp161260 '()))))
                                        (declare (not safe))
                                        (cons _L157986_ __tmp161259))))
                                 (declare (not safe))
                                 (cons _L157988_ __tmp161258))))
                          (declare (not safe))
                          (cons _L157989_ __tmp161257))))
                   (declare (not safe))
                   (cons _L157990_ __tmp161256)))))
          (let ((___match160831160832_
                 (lambda (_e157903158017_
                          _hd157904158021_
                          _tl157905158024_
                          _e157906158027_
                          _hd157907158031_
                          _tl157908158034_
                          _e157909158037_
                          _hd157910158041_
                          _tl157911158044_
                          _e157912158047_
                          _hd157913158051_
                          _tl157914158054_
                          _e157915158057_
                          _hd157916158061_
                          _tl157917158064_)
                   (let ((_L158067_ _hd157916158061_)
                         (_L158069_ _hd157913158051_)
                         (_L158070_ _hd157910158041_)
                         (_L158071_ _hd157907158031_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L158071_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L158070_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L158069_)))
                         (___kont160795160796_
                          _L158067_
                          _L158069_
                          _L158070_
                          _L158071_)
                         (let () (declare (not safe)) (_g157897157939_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx160792160793_))
                (let ((_e157903158017_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx160792160793_))))
                  (let ((_tl157905158024_
                         (let () (declare (not safe)) (##cdr _e157903158017_)))
                        (_hd157904158021_
                         (let ()
                           (declare (not safe))
                           (##car _e157903158017_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl157905158024_))
                        (let ((_e157906158027_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl157905158024_))))
                          (let ((_tl157908158034_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e157906158027_)))
                                (_hd157907158031_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e157906158027_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl157908158034_))
                                (let ((_e157909158037_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl157908158034_))))
                                  (let ((_tl157911158044_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e157909158037_)))
                                        (_hd157910158041_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e157909158037_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl157911158044_))
                                        (let ((_e157912158047_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl157911158044_))))
                                          (let ((_tl157914158054_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e157912158047_)))
                                                (_hd157913158051_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e157912158047_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl157914158054_))
                                                (let ((_e157915158057_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl157914158054_))))
                                                  (let ((_tl157917158064_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e157915158057_)))
                                                        (_hd157916158061_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e157915158057_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl157917158064_))
                                                        (___match160831160832_
                                                         _e157903158017_
                                                         _hd157904158021_
                                                         _tl157905158024_
                                                         _e157906158027_
                                                         _hd157907158031_
                                                         _tl157908158034_
                                                         _e157909158037_
                                                         _hd157910158041_
                                                         _tl157911158044_
                                                         _e157912158047_
                                                         _hd157913158051_
                                                         _tl157914158054_
                                                         _e157915158057_
                                                         _hd157916158061_
                                                         _tl157917158064_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g157897157939_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl157914158054_))
                                                    (___kont160797160798_
                                                     _hd157913158051_
                                                     _hd157910158041_
                                                     _hd157907158031_
                                                     _hd157904158021_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g157897157939_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g157897157939_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g157897157939_)))))
                        (let () (declare (not safe)) (_g157897157939_)))))
                (let () (declare (not safe)) (_g157897157939_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx158096_)
      (let* ((_g158100158135_
              (lambda (_g158101158131_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158101158131_))))
             (_g158099158254_
              (lambda (_g158101158139_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158101158139_))
                    (let ((_e158105158142_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158101158139_))))
                      (let ((_hd158106158146_
                             (let ()
                               (declare (not safe))
                               (##car _e158105158142_)))
                            (_tl158107158149_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158105158142_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl158107158149_))
                            (let ((_g161261_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl158107158149_
                                      '0))))
                              (begin
                                (let ((_g161262_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161261_)
                                             (##vector-length _g161261_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161262_ 2)))
                                      (error "Context expects 2 values"
                                             _g161262_)))
                                (let ((_target158108158152_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161261_ 0)))
                                      (_tl158110158155_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161261_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158110158155_))
                                      (letrec ((_loop158111158158_
                                                (lambda (_hd158109158162_
                                                         _symbol158115158165_
                                                         _method158116158167_
                                                         _type-t158117158169_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd158109158162_))
                                                      (let ((_e158112158172_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd158109158162_))))
                (let ((_lp-hd158113158176_
                       (let () (declare (not safe)) (##car _e158112158172_)))
                      (_lp-tl158114158179_
                       (let () (declare (not safe)) (##cdr _e158112158172_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd158113158176_))
                      (let ((_e158121158182_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd158113158176_))))
                        (let ((_hd158122158186_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158121158182_)))
                              (_tl158123158189_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158121158182_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158123158189_))
                              (let ((_e158124158192_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158123158189_))))
                                (let ((_hd158125158196_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158124158192_)))
                                      (_tl158126158199_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158124158192_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl158126158199_))
                                      (let ((_e158127158202_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl158126158199_))))
                                        (let ((_hd158128158206_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e158127158202_)))
                                              (_tl158129158209_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e158127158202_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158129158209_))
                                              (_loop158111158158_
                                               _lp-tl158114158179_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158128158206_
                                                       _symbol158115158165_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158125158196_
                                                       _method158116158167_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158122158186_
                                                       _type-t158117158169_)))
                                              (_g158100158135_
                                               _g158101158139_))))
                                      (_g158100158135_ _g158101158139_))))
                              (_g158100158135_ _g158101158139_))))
                      (_g158100158135_ _g158101158139_))))
              (let ((_symbol158118158212_ (reverse _symbol158115158165_))
                    (_method158119158215_ (reverse _method158116158167_))
                    (_type-t158120158217_ (reverse _type-t158117158169_)))
                ((lambda (_L158220_ _L158222_ _L158223_)
                   (let ((__tmp161270
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161263
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L158220_
                               _L158222_
                               _L158223_))
                            (let ((__tmp161264
                                   (lambda (_g158239158244_
                                            _g158240158247_
                                            _g158241158249_
                                            _g158242158251_)
                                     (let ((__tmp161265
                                            (let ((__tmp161269
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp161266
                                                   (let ((__tmp161267
                                                          (let ((__tmp161268
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g158239158244_ '()))))
                    (declare (not safe))
                    (cons _g158240158247_ __tmp161268))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g158241158249_
                                                           __tmp161267))))
                                              (declare (not safe))
                                              (cons __tmp161269 __tmp161266))))
                                       (declare (not safe))
                                       (cons __tmp161265 _g158242158251_)))))
                              (declare (not safe))
                              (foldr* __tmp161264
                                      '()
                                      _L158220_
                                      _L158222_
                                      _L158223_)))))
                     (declare (not safe))
                     (cons __tmp161270 __tmp161263)))
                 _symbol158118158212_
                 _method158119158215_
                 _type-t158120158217_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop158111158158_
                                         _target158108158152_
                                         '()
                                         '()
                                         '()))
                                      (_g158100158135_ _g158101158139_)))))
                            (_g158100158135_ _g158101158139_))))
                    (_g158100158135_ _g158101158139_)))))
        (_g158099158254_ _$stx158096_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx158259_)
      (let* ((_g158263158296_
              (lambda (_g158264158292_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158264158292_))))
             (_g158262158410_
              (lambda (_g158264158300_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158264158300_))
                    (let ((_e158268158303_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158264158300_))))
                      (let ((_hd158269158307_
                             (let ()
                               (declare (not safe))
                               (##car _e158268158303_)))
                            (_tl158270158310_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158268158303_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158270158310_))
                            (let ((_e158271158313_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158270158310_))))
                              (let ((_hd158272158317_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158271158313_)))
                                    (_tl158273158320_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158271158313_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl158273158320_))
                                    (let ((_g161271_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl158273158320_
                                              '0))))
                                      (begin
                                        (let ((_g161272_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g161271_)
                                                     (##vector-length
                                                      _g161271_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g161272_ 2)))
                                              (error "Context expects 2 values"
                                                     _g161272_)))
                                        (let ((_target158274158323_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g161271_ 0)))
                                              (_tl158276158326_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g161271_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158276158326_))
                                              (letrec ((_loop158277158329_
                                                        (lambda (_hd158275158333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol158281158336_
                         _method158282158338_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd158275158333_))
                      (let ((_e158278158341_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd158275158333_))))
                        (let ((_lp-hd158279158345_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158278158341_)))
                              (_lp-tl158280158348_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158278158341_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd158279158345_))
                              (let ((_e158285158351_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd158279158345_))))
                                (let ((_hd158286158355_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158285158351_)))
                                      (_tl158287158358_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158285158351_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl158287158358_))
                                      (let ((_e158288158361_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl158287158358_))))
                                        (let ((_hd158289158365_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e158288158361_)))
                                              (_tl158290158368_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e158288158361_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl158290158368_))
                                              (_loop158277158329_
                                               _lp-tl158280158348_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158289158365_
                                                       _symbol158281158336_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd158286158355_
                                                       _method158282158338_)))
                                              (_g158263158296_
                                               _g158264158300_))))
                                      (_g158263158296_ _g158264158300_))))
                              (_g158263158296_ _g158264158300_))))
                      (let ((_symbol158283158371_
                             (reverse _symbol158281158336_))
                            (_method158284158374_
                             (reverse _method158282158338_)))
                        ((lambda (_L158377_ _L158379_ _L158380_)
                           (let ((__tmp161280
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp161273
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L158377_
                                       _L158379_))
                                    (let ((__tmp161274
                                           (lambda (_g158398158402_
                                                    _g158399158405_
                                                    _g158400158407_)
                                             (let ((__tmp161275
                                                    (let ((__tmp161279
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp161276
                                                           (let ((__tmp161277
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp161278
                                 (let ()
                                   (declare (not safe))
                                   (cons _g158398158402_ '()))))
                            (declare (not safe))
                            (cons _g158399158405_ __tmp161278))))
                     (declare (not safe))
                     (cons _L158380_ __tmp161277))))
              (declare (not safe))
              (cons __tmp161279 __tmp161276))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp161275
                                                     _g158400158407_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp161274
                                              '()
                                              _L158377_
                                              _L158379_)))))
                             (declare (not safe))
                             (cons __tmp161280 __tmp161273)))
                         _symbol158283158371_
                         _method158284158374_
                         _hd158272158317_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop158277158329_
                                                 _target158274158323_
                                                 '()
                                                 '()))
                                              (_g158263158296_
                                               _g158264158300_)))))
                                    (_g158263158296_ _g158264158300_))))
                            (_g158263158296_ _g158264158300_))))
                    (_g158263158296_ _g158264158300_)))))
        (_g158262158410_ _$stx158259_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx158415_)
      (let* ((_g158419158433_
              (lambda (_g158420158429_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158420158429_))))
             (_g158418158474_
              (lambda (_g158420158437_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158420158437_))
                    (let ((_e158422158440_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158420158437_))))
                      (let ((_hd158423158444_
                             (let ()
                               (declare (not safe))
                               (##car _e158422158440_)))
                            (_tl158424158447_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158422158440_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158424158447_))
                            (let ((_e158425158450_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158424158447_))))
                              (let ((_hd158426158454_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158425158450_)))
                                    (_tl158427158457_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158425158450_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158427158457_))
                                    ((lambda (_L158460_)
                                       (let ((__tmp161285
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp161281
                                              (let ((__tmp161282
                                                     (let ((__tmp161284
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161283
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L158460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161284 __tmp161283))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161282 '()))))
                                         (declare (not safe))
                                         (cons __tmp161285 __tmp161281)))
                                     _hd158426158454_)
                                    (_g158419158433_ _g158420158437_))))
                            (_g158419158433_ _g158420158437_))))
                    (_g158419158433_ _g158420158437_)))))
        (_g158418158474_ _$stx158415_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx158478_)
      (let* ((_g158482158536_
              (lambda (_g158483158532_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158483158532_))))
             (_g158481158717_
              (lambda (_g158483158540_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158483158540_))
                    (let ((_e158495158543_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158483158540_))))
                      (let ((_hd158496158547_
                             (let ()
                               (declare (not safe))
                               (##car _e158495158543_)))
                            (_tl158497158550_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158495158543_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158497158550_))
                            (let ((_e158498158553_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158497158550_))))
                              (let ((_hd158499158557_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158498158553_)))
                                    (_tl158500158560_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158498158553_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158500158560_))
                                    (let ((_e158501158563_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158500158560_))))
                                      (let ((_hd158502158567_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158501158563_)))
                                            (_tl158503158570_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158501158563_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl158503158570_))
                                            (let ((_e158504158573_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl158503158570_))))
                                              (let ((_hd158505158577_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e158504158573_)))
                                                    (_tl158506158580_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e158504158573_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl158506158580_))
                                                    (let ((_e158507158583_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl158506158580_))))
                                                      (let ((_hd158508158587_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e158507158583_)))
                    (_tl158509158590_
                     (let () (declare (not safe)) (##cdr _e158507158583_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl158509158590_))
                    (let ((_e158510158593_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl158509158590_))))
                      (let ((_hd158511158597_
                             (let ()
                               (declare (not safe))
                               (##car _e158510158593_)))
                            (_tl158512158600_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158510158593_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158512158600_))
                            (let ((_e158513158603_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158512158600_))))
                              (let ((_hd158514158607_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158513158603_)))
                                    (_tl158515158610_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158513158603_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158515158610_))
                                    (let ((_e158516158613_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158515158610_))))
                                      (let ((_hd158517158617_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158516158613_)))
                                            (_tl158518158620_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158516158613_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl158518158620_))
                                            (let ((_e158519158623_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl158518158620_))))
                                              (let ((_hd158520158627_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e158519158623_)))
                                                    (_tl158521158630_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e158519158623_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl158521158630_))
                                                    (let ((_e158522158633_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl158521158630_))))
                                                      (let ((_hd158523158637_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e158522158633_)))
                    (_tl158524158640_
                     (let () (declare (not safe)) (##cdr _e158522158633_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl158524158640_))
                    (let ((_e158525158643_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl158524158640_))))
                      (let ((_hd158526158647_
                             (let ()
                               (declare (not safe))
                               (##car _e158525158643_)))
                            (_tl158527158650_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158525158643_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158527158650_))
                            (let ((_e158528158653_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158527158650_))))
                              (let ((_hd158529158657_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158528158653_)))
                                    (_tl158530158660_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158528158653_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158530158660_))
                                    ((lambda (_L158663_
                                              _L158665_
                                              _L158666_
                                              _L158667_
                                              _L158668_
                                              _L158669_
                                              _L158670_
                                              _L158671_
                                              _L158672_
                                              _L158673_
                                              _L158674_)
                                       (let ((__tmp161321
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class)))
                                             (__tmp161286
                                              (let ((__tmp161318
                                                     (let ((__tmp161320
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161319
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L158674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161320 __tmp161319)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp161287
                                                     (let ((__tmp161315
                                                            (let ((__tmp161317
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote)))
                          (__tmp161316
                           (let () (declare (not safe)) (cons _L158673_ '()))))
                      (declare (not safe))
                      (cons __tmp161317 __tmp161316)))
                   (__tmp161288
                    (let ((__tmp161312
                           (let ((__tmp161314
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote)))
                                 (__tmp161313
                                  (let ()
                                    (declare (not safe))
                                    (cons _L158672_ '()))))
                             (declare (not safe))
                             (cons __tmp161314 __tmp161313)))
                          (__tmp161289
                           (let ((__tmp161309
                                  (let ((__tmp161311
                                         (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote)))
                                        (__tmp161310
                                         (let ()
                                           (declare (not safe))
                                           (cons _L158671_ '()))))
                                    (declare (not safe))
                                    (cons __tmp161311 __tmp161310)))
                                 (__tmp161290
                                  (let ((__tmp161306
                                         (let ((__tmp161308
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote)))
                                               (__tmp161307
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L158670_ '()))))
                                           (declare (not safe))
                                           (cons __tmp161308 __tmp161307)))
                                        (__tmp161291
                                         (let ((__tmp161303
                                                (let ((__tmp161305
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'quote)))
                                                      (__tmp161304
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L158669_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp161305
                                                        __tmp161304)))
                                               (__tmp161292
                                                (let ((__tmp161293
                                                       (let ((__tmp161294
                                                              (let ((__tmp161295
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp161300
                                    (let ((__tmp161302
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp161301
                                           (let ()
                                             (declare (not safe))
                                             (cons _L158665_ '()))))
                                      (declare (not safe))
                                      (cons __tmp161302 __tmp161301)))
                                   (__tmp161296
                                    (let ((__tmp161297
                                           (let ((__tmp161299
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'quote)))
                                                 (__tmp161298
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L158663_ '()))))
                                             (declare (not safe))
                                             (cons __tmp161299 __tmp161298))))
                                      (declare (not safe))
                                      (cons __tmp161297 '()))))
                               (declare (not safe))
                               (cons __tmp161300 __tmp161296))))
                        (declare (not safe))
                        (cons _L158666_ __tmp161295))))
                 (declare (not safe))
                 (cons _L158667_ __tmp161294))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L158668_
                                                        __tmp161293))))
                                           (declare (not safe))
                                           (cons __tmp161303 __tmp161292))))
                                    (declare (not safe))
                                    (cons __tmp161306 __tmp161291))))
                             (declare (not safe))
                             (cons __tmp161309 __tmp161290))))
                      (declare (not safe))
                      (cons __tmp161312 __tmp161289))))
               (declare (not safe))
               (cons __tmp161315 __tmp161288))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161318
                                                      __tmp161287))))
                                         (declare (not safe))
                                         (cons __tmp161321 __tmp161286)))
                                     _hd158529158657_
                                     _hd158526158647_
                                     _hd158523158637_
                                     _hd158520158627_
                                     _hd158517158617_
                                     _hd158514158607_
                                     _hd158511158597_
                                     _hd158508158587_
                                     _hd158505158577_
                                     _hd158502158567_
                                     _hd158499158557_)
                                    (_g158482158536_ _g158483158540_))))
                            (_g158482158536_ _g158483158540_))))
                    (_g158482158536_ _g158483158540_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g158482158536_
                                                     _g158483158540_))))
                                            (_g158482158536_
                                             _g158483158540_))))
                                    (_g158482158536_ _g158483158540_))))
                            (_g158482158536_ _g158483158540_))))
                    (_g158482158536_ _g158483158540_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g158482158536_
                                                     _g158483158540_))))
                                            (_g158482158536_
                                             _g158483158540_))))
                                    (_g158482158536_ _g158483158540_))))
                            (_g158482158536_ _g158483158540_))))
                    (_g158482158536_ _g158483158540_)))))
        (_g158481158717_ _$stx158478_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx158721_)
      (let* ((_g158725158739_
              (lambda (_g158726158735_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158726158735_))))
             (_g158724158780_
              (lambda (_g158726158743_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158726158743_))
                    (let ((_e158728158746_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158726158743_))))
                      (let ((_hd158729158750_
                             (let ()
                               (declare (not safe))
                               (##car _e158728158746_)))
                            (_tl158730158753_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158728158746_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158730158753_))
                            (let ((_e158731158756_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158730158753_))))
                              (let ((_hd158732158760_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158731158756_)))
                                    (_tl158733158763_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158731158756_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158733158763_))
                                    ((lambda (_L158766_)
                                       (let ((__tmp161326
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp161322
                                              (let ((__tmp161323
                                                     (let ((__tmp161325
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161324
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L158766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161325 __tmp161324))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161323 '()))))
                                         (declare (not safe))
                                         (cons __tmp161326 __tmp161322)))
                                     _hd158732158760_)
                                    (_g158725158739_ _g158726158743_))))
                            (_g158725158739_ _g158726158743_))))
                    (_g158725158739_ _g158726158743_)))))
        (_g158724158780_ _$stx158721_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx158784_)
      (let* ((_g158788158802_
              (lambda (_g158789158798_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158789158798_))))
             (_g158787158843_
              (lambda (_g158789158806_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158789158806_))
                    (let ((_e158791158809_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158789158806_))))
                      (let ((_hd158792158813_
                             (let ()
                               (declare (not safe))
                               (##car _e158791158809_)))
                            (_tl158793158816_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158791158809_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158793158816_))
                            (let ((_e158794158819_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158793158816_))))
                              (let ((_hd158795158823_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158794158819_)))
                                    (_tl158796158826_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158794158819_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl158796158826_))
                                    ((lambda (_L158829_)
                                       (let ((__tmp161331
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp161327
                                              (let ((__tmp161328
                                                     (let ((__tmp161330
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp161329
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L158829_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp161330 __tmp161329))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp161328 '()))))
                                         (declare (not safe))
                                         (cons __tmp161331 __tmp161327)))
                                     _hd158795158823_)
                                    (_g158788158802_ _g158789158806_))))
                            (_g158788158802_ _g158789158806_))))
                    (_g158788158802_ _g158789158806_)))))
        (_g158787158843_ _$stx158784_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx158847_)
      (let* ((_g158851158873_
              (lambda (_g158852158869_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158852158869_))))
             (_g158850158942_
              (lambda (_g158852158877_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158852158877_))
                    (let ((_e158856158880_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158852158877_))))
                      (let ((_hd158857158884_
                             (let ()
                               (declare (not safe))
                               (##car _e158856158880_)))
                            (_tl158858158887_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158856158880_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158858158887_))
                            (let ((_e158859158890_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158858158887_))))
                              (let ((_hd158860158894_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158859158890_)))
                                    (_tl158861158897_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158859158890_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158861158897_))
                                    (let ((_e158862158900_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158861158897_))))
                                      (let ((_hd158863158904_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158862158900_)))
                                            (_tl158864158907_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158862158900_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl158864158907_))
                                            (let ((_e158865158910_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl158864158907_))))
                                              (let ((_hd158866158914_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e158865158910_)))
                                                    (_tl158867158917_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e158865158910_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl158867158917_))
                                                    ((lambda (_L158920_
                                                              _L158922_
                                                              _L158923_)
                                                       (let ((__tmp161341
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp161332
                      (let ((__tmp161338
                             (let ((__tmp161340
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp161339
                                    (let ()
                                      (declare (not safe))
                                      (cons _L158923_ '()))))
                               (declare (not safe))
                               (cons __tmp161340 __tmp161339)))
                            (__tmp161333
                             (let ((__tmp161335
                                    (let ((__tmp161337
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp161336
                                           (let ()
                                             (declare (not safe))
                                             (cons _L158922_ '()))))
                                      (declare (not safe))
                                      (cons __tmp161337 __tmp161336)))
                                   (__tmp161334
                                    (let ()
                                      (declare (not safe))
                                      (cons _L158920_ '()))))
                               (declare (not safe))
                               (cons __tmp161335 __tmp161334))))
                        (declare (not safe))
                        (cons __tmp161338 __tmp161333))))
                 (declare (not safe))
                 (cons __tmp161341 __tmp161332)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd158866158914_
                                                     _hd158863158904_
                                                     _hd158860158894_)
                                                    (_g158851158873_
                                                     _g158852158877_))))
                                            (_g158851158873_
                                             _g158852158877_))))
                                    (_g158851158873_ _g158852158877_))))
                            (_g158851158873_ _g158852158877_))))
                    (_g158851158873_ _g158852158877_)))))
        (_g158850158942_ _$stx158847_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx158946_)
      (let* ((_g158950158972_
              (lambda (_g158951158968_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158951158968_))))
             (_g158949159041_
              (lambda (_g158951158976_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158951158976_))
                    (let ((_e158955158979_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158951158976_))))
                      (let ((_hd158956158983_
                             (let ()
                               (declare (not safe))
                               (##car _e158955158979_)))
                            (_tl158957158986_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158955158979_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158957158986_))
                            (let ((_e158958158989_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158957158986_))))
                              (let ((_hd158959158993_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158958158989_)))
                                    (_tl158960158996_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158958158989_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158960158996_))
                                    (let ((_e158961158999_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158960158996_))))
                                      (let ((_hd158962159003_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158961158999_)))
                                            (_tl158963159006_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158961158999_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl158963159006_))
                                            (let ((_e158964159009_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl158963159006_))))
                                              (let ((_hd158965159013_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e158964159009_)))
                                                    (_tl158966159016_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e158964159009_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl158966159016_))
                                                    ((lambda (_L159019_
                                                              _L159021_
                                                              _L159022_)
                                                       (let ((__tmp161351
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp161342
                      (let ((__tmp161348
                             (let ((__tmp161350
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp161349
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159022_ '()))))
                               (declare (not safe))
                               (cons __tmp161350 __tmp161349)))
                            (__tmp161343
                             (let ((__tmp161345
                                    (let ((__tmp161347
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp161346
                                           (let ()
                                             (declare (not safe))
                                             (cons _L159021_ '()))))
                                      (declare (not safe))
                                      (cons __tmp161347 __tmp161346)))
                                   (__tmp161344
                                    (let ()
                                      (declare (not safe))
                                      (cons _L159019_ '()))))
                               (declare (not safe))
                               (cons __tmp161345 __tmp161344))))
                        (declare (not safe))
                        (cons __tmp161348 __tmp161343))))
                 (declare (not safe))
                 (cons __tmp161351 __tmp161342)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd158965159013_
                                                     _hd158962159003_
                                                     _hd158959158993_)
                                                    (_g158950158972_
                                                     _g158951158976_))))
                                            (_g158950158972_
                                             _g158951158976_))))
                                    (_g158950158972_ _g158951158976_))))
                            (_g158950158972_ _g158951158976_))))
                    (_g158950158972_ _g158951158976_)))))
        (_g158949159041_ _$stx158946_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx159045_)
      (let* ((___stx160860160861_ _$stx159045_)
             (_g159053159121_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx160860160861_)))))
        (let ((___kont160863160864_
               (lambda (_L159399_ _L159401_)
                 (let ((__tmp161372
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp161352
                        (let ((__tmp161368
                               (let ((__tmp161371
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161369
                                      (let ((__tmp161370
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp161370 '()))))
                                 (declare (not safe))
                                 (cons __tmp161371 __tmp161369)))
                              (__tmp161353
                               (let ((__tmp161365
                                      (let ((__tmp161367
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161366
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159401_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161367 __tmp161366)))
                                     (__tmp161354
                                      (let ((__tmp161355
                                             (let ((__tmp161356
                                                    (let ((__tmp161357
                                                           (let ((__tmp161364
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp161358
                          (let ((__tmp161359
                                 (let ((__tmp161363
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@lambda)))
                                       (__tmp161360
                                        (let ((__tmp161361
                                               (let ((__tmp161362
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L159399_ '()))))
                                                 (declare (not safe))
                                                 (cons 'inline: __tmp161362))))
                                          (declare (not safe))
                                          (cons _L159401_ __tmp161361))))
                                   (declare (not safe))
                                   (cons __tmp161363 __tmp161360))))
                            (declare (not safe))
                            (cons __tmp161359 '()))))
                     (declare (not safe))
                     (cons __tmp161364 __tmp161358))))
              (declare (not safe))
              (cons __tmp161357 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L159399_ __tmp161356))))
                                        (declare (not safe))
                                        (cons '#f __tmp161355))))
                                 (declare (not safe))
                                 (cons __tmp161365 __tmp161354))))
                          (declare (not safe))
                          (cons __tmp161368 __tmp161353))))
                   (declare (not safe))
                   (cons __tmp161372 __tmp161352))))
              (___kont160865160866_
               (lambda (_L159330_ _L159332_)
                 (let ((__tmp161373
                        (let ((__tmp161374
                               (let ((__tmp161375
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L159330_ __tmp161375))))
                          (declare (not safe))
                          (cons 'primitive: __tmp161374))))
                   (declare (not safe))
                   (cons _L159332_ __tmp161373))))
              (___kont160867160868_
               (lambda (_L159269_ _L159271_)
                 (let ((__tmp161389
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp161376
                        (let ((__tmp161385
                               (let ((__tmp161388
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161386
                                      (let ((__tmp161387
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp161387 '()))))
                                 (declare (not safe))
                                 (cons __tmp161388 __tmp161386)))
                              (__tmp161377
                               (let ((__tmp161382
                                      (let ((__tmp161384
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161383
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159271_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161384 __tmp161383)))
                                     (__tmp161378
                                      (let ((__tmp161379
                                             (let ((__tmp161381
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161380
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159269_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161381
                                                     __tmp161380))))
                                        (declare (not safe))
                                        (cons __tmp161379 '()))))
                                 (declare (not safe))
                                 (cons __tmp161382 __tmp161378))))
                          (declare (not safe))
                          (cons __tmp161385 __tmp161377))))
                   (declare (not safe))
                   (cons __tmp161389 __tmp161376))))
              (___kont160869160870_
               (lambda (_L159201_ _L159203_)
                 (let ((__tmp161403
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp161390
                        (let ((__tmp161399
                               (let ((__tmp161402
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161400
                                      (let ((__tmp161401
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp161401 '()))))
                                 (declare (not safe))
                                 (cons __tmp161402 __tmp161400)))
                              (__tmp161391
                               (let ((__tmp161396
                                      (let ((__tmp161398
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp161397
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159203_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161398 __tmp161397)))
                                     (__tmp161392
                                      (let ((__tmp161393
                                             (let ((__tmp161395
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp161394
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159201_ '()))))
                                               (declare (not safe))
                                               (cons __tmp161395
                                                     __tmp161394))))
                                        (declare (not safe))
                                        (cons __tmp161393 '()))))
                                 (declare (not safe))
                                 (cons __tmp161396 __tmp161392))))
                          (declare (not safe))
                          (cons __tmp161399 __tmp161391))))
                   (declare (not safe))
                   (cons __tmp161403 __tmp161390))))
              (___kont160871160872_
               (lambda (_L159148_ _L159150_)
                 (let ((__tmp161404
                        (let ((__tmp161405
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L159148_ __tmp161405))))
                   (declare (not safe))
                   (cons _L159150_ __tmp161404)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx160860160861_))
              (let ((_e159057159355_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx160860160861_))))
                (let ((_tl159059159362_
                       (let () (declare (not safe)) (##cdr _e159057159355_)))
                      (_hd159058159359_
                       (let () (declare (not safe)) (##car _e159057159355_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl159059159362_))
                      (let ((_e159060159365_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159059159362_))))
                        (let ((_tl159062159372_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159060159365_)))
                              (_hd159061159369_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159060159365_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159062159372_))
                              (let ((_e159063159375_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159062159372_))))
                                (let ((_tl159065159382_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159063159375_)))
                                      (_hd159064159379_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159063159375_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd159064159379_))
                                      (let ((_e159066159385_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd159064159379_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e159066159385_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl159065159382_))
                                                (let ((_e159067159389_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl159065159382_))))
                                                  (let ((_tl159069159396_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e159067159389_)))
                                                        (_hd159068159393_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e159067159389_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159069159396_))
                                                        (___kont160863160864_
                                                         _hd159068159393_
                                                         _hd159061159369_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd159061159369_))
                                                            (let ((_e159078159316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd159061159369_))))
                      (declare (not safe))
                      (_g159053159121_))
                    (let () (declare (not safe)) (_g159053159121_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd159061159369_))
                                                    (let ((_e159078159316_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd159061159369_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e159078159316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159065159382_))
                      (___kont160865160866_ _hd159064159379_ _hd159058159359_)
                      (let () (declare (not safe)) (_g159053159121_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159065159382_))
                      (___kont160869160870_ _hd159064159379_ _hd159061159369_)
                      (let () (declare (not safe)) (_g159053159121_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159065159382_))
                                                        (___kont160869160870_
                                                         _hd159064159379_
                                                         _hd159061159369_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g159053159121_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd159061159369_))
                                                (let ((_e159078159316_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd159061159369_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e159078159316_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl159065159382_))
                                                          (___kont160865160866_
                                                           _hd159064159379_
                                                           _hd159058159359_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl159065159382_))
                      (let ((_e159094159259_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159065159382_))))
                        (let ((_tl159096159266_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159094159259_)))
                              (_hd159095159263_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159094159259_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl159096159266_))
                              (___kont160867160868_
                               _hd159095159263_
                               _hd159064159379_)
                              (let ()
                                (declare (not safe))
                                (_g159053159121_)))))
                      (let () (declare (not safe)) (_g159053159121_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl159065159382_))
                  (___kont160869160870_ _hd159064159379_ _hd159061159369_)
                  (let () (declare (not safe)) (_g159053159121_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159065159382_))
                                                    (___kont160869160870_
                                                     _hd159064159379_
                                                     _hd159061159369_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159053159121_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd159061159369_))
                                          (let ((_e159078159316_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd159061159369_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e159078159316_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159065159382_))
                                                    (___kont160865160866_
                                                     _hd159064159379_
                                                     _hd159058159359_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl159065159382_))
                                                        (let ((_e159094159259_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl159065159382_))))
                  (let ((_tl159096159266_
                         (let () (declare (not safe)) (##cdr _e159094159259_)))
                        (_hd159095159263_
                         (let ()
                           (declare (not safe))
                           (##car _e159094159259_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl159096159266_))
                        (___kont160867160868_
                         _hd159095159263_
                         _hd159064159379_)
                        (let () (declare (not safe)) (_g159053159121_)))))
                (let () (declare (not safe)) (_g159053159121_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159065159382_))
                                                    (___kont160869160870_
                                                     _hd159064159379_
                                                     _hd159061159369_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159053159121_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159065159382_))
                                              (___kont160869160870_
                                               _hd159064159379_
                                               _hd159061159369_)
                                              (let ()
                                                (declare (not safe))
                                                (_g159053159121_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd159061159369_))
                                  (let ((_e159078159316_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd159061159369_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl159062159372_))
                                        (___kont160871160872_
                                         _hd159061159369_
                                         _hd159058159359_)
                                        (let ()
                                          (declare (not safe))
                                          (_g159053159121_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159062159372_))
                                      (___kont160871160872_
                                       _hd159061159369_
                                       _hd159058159359_)
                                      (let ()
                                        (declare (not safe))
                                        (_g159053159121_)))))))
                      (let () (declare (not safe)) (_g159053159121_)))))
              (let () (declare (not safe)) (_g159053159121_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx159423_)
      (let* ((___stx161000161001_ _$stx159423_)
             (_g159428159483_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161000161001_)))))
        (let ((___kont161003161004_
               (lambda (_L159668_ _L159670_)
                 (let ((__tmp161421
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp161406
                        (let ((__tmp161417
                               (let ((__tmp161420
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161418
                                      (let ((__tmp161419
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp161419 '()))))
                                 (declare (not safe))
                                 (cons __tmp161420 __tmp161418)))
                              (__tmp161407
                               (let ((__tmp161408
                                      (let ((__tmp161416
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp161409
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L159668_
                                                  _L159670_))
                                               (let ((__tmp161410
                                                      (lambda (_g159687159691_
                                                               _g159688159694_
                                                               _g159689159696_)
                                                        (let ((__tmp161411
                                                               (let ((__tmp161415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp161412
                              (let ((__tmp161413
                                     (let ((__tmp161414
                                            (let ()
                                              (declare (not safe))
                                              (cons _g159687159691_ '()))))
                                       (declare (not safe))
                                       (cons _g159688159694_ __tmp161414))))
                                (declare (not safe))
                                (cons 'primitive: __tmp161413))))
                         (declare (not safe))
                         (cons __tmp161415 __tmp161412))))
                  (declare (not safe))
                  (cons __tmp161411 _g159689159696_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp161410
                                                         '()
                                                         _L159668_
                                                         _L159670_)))))
                                        (declare (not safe))
                                        (cons __tmp161416 __tmp161409))))
                                 (declare (not safe))
                                 (cons __tmp161408 '()))))
                          (declare (not safe))
                          (cons __tmp161417 __tmp161407))))
                   (declare (not safe))
                   (cons __tmp161421 __tmp161406))))
              (___kont161007161008_
               (lambda (_L159554_ _L159556_)
                 (let ((__tmp161436
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp161422
                        (let ((__tmp161432
                               (let ((__tmp161435
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp161433
                                      (let ((__tmp161434
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp161434 '()))))
                                 (declare (not safe))
                                 (cons __tmp161435 __tmp161433)))
                              (__tmp161423
                               (let ((__tmp161424
                                      (let ((__tmp161431
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp161425
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L159554_
                                                  _L159556_))
                                               (let ((__tmp161426
                                                      (lambda (_g159571159575_
                                                               _g159572159578_
                                                               _g159573159580_)
                                                        (let ((__tmp161427
                                                               (let ((__tmp161430
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp161428
                              (let ((__tmp161429
                                     (let ()
                                       (declare (not safe))
                                       (cons _g159571159575_ '()))))
                                (declare (not safe))
                                (cons _g159572159578_ __tmp161429))))
                         (declare (not safe))
                         (cons __tmp161430 __tmp161428))))
                  (declare (not safe))
                  (cons __tmp161427 _g159573159580_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp161426
                                                         '()
                                                         _L159554_
                                                         _L159556_)))))
                                        (declare (not safe))
                                        (cons __tmp161431 __tmp161425))))
                                 (declare (not safe))
                                 (cons __tmp161424 '()))))
                          (declare (not safe))
                          (cons __tmp161432 __tmp161423))))
                   (declare (not safe))
                   (cons __tmp161436 __tmp161422)))))
          (let* ((___match161051161052_
                  (lambda (_e159458159490_
                           _hd159459159494_
                           _tl159460159497_
                           ___splice161009161010_
                           _target159461159500_
                           _tl159463159503_)
                    (letrec ((_loop159464159506_
                              (lambda (_hd159462159510_
                                       _dispatch159468159513_
                                       _arity159469159515_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd159462159510_))
                                    (let ((_e159465159518_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd159462159510_))))
                                      (let ((_lp-tl159467159525_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159465159518_)))
                                            (_lp-hd159466159522_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159465159518_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd159466159522_))
                                            (let ((_e159472159528_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd159466159522_))))
                                              (let ((_tl159474159535_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159472159528_)))
                                                    (_hd159473159532_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159472159528_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159474159535_))
                                                    (let ((_e159475159538_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159474159535_))))
                                                      (let ((_tl159477159545_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e159475159538_)))
                    (_hd159476159542_
                     (let () (declare (not safe)) (##car _e159475159538_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl159477159545_))
                    (_loop159464159506_
                     _lp-tl159467159525_
                     (let ()
                       (declare (not safe))
                       (cons _hd159476159542_ _dispatch159468159513_))
                     (let ()
                       (declare (not safe))
                       (cons _hd159473159532_ _arity159469159515_)))
                    (let () (declare (not safe)) (_g159428159483_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159428159483_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g159428159483_)))))
                                    (let ((_arity159471159551_
                                           (reverse _arity159469159515_))
                                          (_dispatch159470159548_
                                           (reverse _dispatch159468159513_)))
                                      (___kont161007161008_
                                       _dispatch159470159548_
                                       _arity159471159551_))))))
                      (_loop159464159506_ _target159461159500_ '() '()))))
                 (___match161043161044_
                  (lambda (_e159458159490_ _hd159459159494_ _tl159460159497_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl159460159497_))
                        (let ((___splice161009161010_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl159460159497_
                                  '0))))
                          (let ((_tl159463159503_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice161009161010_ '1)))
                                (_target159461159500_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice161009161010_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl159463159503_))
                                (___match161051161052_
                                 _e159458159490_
                                 _hd159459159494_
                                 _tl159460159497_
                                 ___splice161009161010_
                                 _target159461159500_
                                 _tl159463159503_)
                                (let ()
                                  (declare (not safe))
                                  (_g159428159483_)))))
                        (let () (declare (not safe)) (_g159428159483_)))))
                 (___match161037161038_
                  (lambda (_e159432159590_
                           _hd159433159594_
                           _tl159434159597_
                           _e159435159600_
                           _hd159436159604_
                           _tl159437159607_
                           _e159438159610_
                           ___splice161005161006_
                           _target159439159614_
                           _tl159441159617_)
                    (letrec ((_loop159442159620_
                              (lambda (_hd159440159624_
                                       _dispatch159446159627_
                                       _arity159447159629_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd159440159624_))
                                    (let ((_e159443159632_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd159440159624_))))
                                      (let ((_lp-tl159445159639_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159443159632_)))
                                            (_lp-hd159444159636_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159443159632_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd159444159636_))
                                            (let ((_e159450159642_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd159444159636_))))
                                              (let ((_tl159452159649_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159450159642_)))
                                                    (_hd159451159646_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159450159642_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159452159649_))
                                                    (let ((_e159453159652_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159452159649_))))
                                                      (let ((_tl159455159659_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e159453159652_)))
                    (_hd159454159656_
                     (let () (declare (not safe)) (##car _e159453159652_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl159455159659_))
                    (_loop159442159620_
                     _lp-tl159445159639_
                     (let ()
                       (declare (not safe))
                       (cons _hd159454159656_ _dispatch159446159627_))
                     (let ()
                       (declare (not safe))
                       (cons _hd159451159646_ _arity159447159629_)))
                    (___match161043161044_
                     _e159432159590_
                     _hd159433159594_
                     _tl159434159597_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match161043161044_
                                                     _e159432159590_
                                                     _hd159433159594_
                                                     _tl159434159597_))))
                                            (___match161043161044_
                                             _e159432159590_
                                             _hd159433159594_
                                             _tl159434159597_))))
                                    (let ((_arity159449159665_
                                           (reverse _arity159447159629_))
                                          (_dispatch159448159662_
                                           (reverse _dispatch159446159627_)))
                                      (___kont161003161004_
                                       _dispatch159448159662_
                                       _arity159449159665_))))))
                      (_loop159442159620_ _target159439159614_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161000161001_))
                (let ((_e159432159590_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161000161001_))))
                  (let ((_tl159434159597_
                         (let () (declare (not safe)) (##cdr _e159432159590_)))
                        (_hd159433159594_
                         (let ()
                           (declare (not safe))
                           (##car _e159432159590_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl159434159597_))
                        (let ((_e159435159600_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl159434159597_))))
                          (let ((_tl159437159607_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e159435159600_)))
                                (_hd159436159604_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e159435159600_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd159436159604_))
                                (let ((_e159438159610_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd159436159604_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e159438159610_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl159437159607_))
                                          (let ((___splice161005161006_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl159437159607_
                                                    '0))))
                                            (let ((_tl159441159617_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161005161006_
                                                      '1)))
                                                  (_target159439159614_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161005161006_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl159441159617_))
                                                  (___match161037161038_
                                                   _e159432159590_
                                                   _hd159433159594_
                                                   _tl159434159597_
                                                   _e159435159600_
                                                   _hd159436159604_
                                                   _tl159437159607_
                                                   _e159438159610_
                                                   ___splice161005161006_
                                                   _target159439159614_
                                                   _tl159441159617_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl159434159597_))
                                                      (let ((___splice161009161010_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl159434159597_ '0))))
                (let ((_tl159463159503_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161009161010_ '1)))
                      (_target159461159500_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161009161010_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159463159503_))
                      (___match161051161052_
                       _e159432159590_
                       _hd159433159594_
                       _tl159434159597_
                       ___splice161009161010_
                       _target159461159500_
                       _tl159463159503_)
                      (let () (declare (not safe)) (_g159428159483_)))))
              (let () (declare (not safe)) (_g159428159483_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl159434159597_))
                                              (let ((___splice161009161010_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl159434159597_
                                                        '0))))
                                                (let ((_tl159463159503_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice161009161010_
                                                          '1)))
                                                      (_target159461159500_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice161009161010_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl159463159503_))
                                                      (___match161051161052_
                                                       _e159432159590_
                                                       _hd159433159594_
                                                       _tl159434159597_
                                                       ___splice161009161010_
                                                       _target159461159500_
                                                       _tl159463159503_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g159428159483_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g159428159483_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl159434159597_))
                                          (let ((___splice161009161010_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl159434159597_
                                                    '0))))
                                            (let ((_tl159463159503_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161009161010_
                                                      '1)))
                                                  (_target159461159500_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice161009161010_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl159463159503_))
                                                  (___match161051161052_
                                                   _e159432159590_
                                                   _hd159433159594_
                                                   _tl159434159597_
                                                   ___splice161009161010_
                                                   _target159461159500_
                                                   _tl159463159503_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g159428159483_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g159428159483_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl159434159597_))
                                    (let ((___splice161009161010_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl159434159597_
                                              '0))))
                                      (let ((_tl159463159503_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161009161010_
                                                '1)))
                                            (_target159461159500_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161009161010_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159463159503_))
                                            (___match161051161052_
                                             _e159432159590_
                                             _hd159433159594_
                                             _tl159434159597_
                                             ___splice161009161010_
                                             _target159461159500_
                                             _tl159463159503_)
                                            (let ()
                                              (declare (not safe))
                                              (_g159428159483_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g159428159483_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl159434159597_))
                            (let ((___splice161009161010_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl159434159597_
                                      '0))))
                              (let ((_tl159463159503_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice161009161010_
                                        '1)))
                                    (_target159461159500_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice161009161010_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159463159503_))
                                    (___match161051161052_
                                     _e159432159590_
                                     _hd159433159594_
                                     _tl159434159597_
                                     ___splice161009161010_
                                     _target159461159500_
                                     _tl159463159503_)
                                    (let ()
                                      (declare (not safe))
                                      (_g159428159483_)))))
                            (let () (declare (not safe)) (_g159428159483_))))))
                (let () (declare (not safe)) (_g159428159483_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx159705_)
      (let* ((_g159709159727_
              (lambda (_g159710159723_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159710159723_))))
             (_g159708159782_
              (lambda (_g159710159731_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159710159731_))
                    (let ((_e159713159734_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159710159731_))))
                      (let ((_hd159714159738_
                             (let ()
                               (declare (not safe))
                               (##car _e159713159734_)))
                            (_tl159715159741_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159713159734_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159715159741_))
                            (let ((_e159716159744_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159715159741_))))
                              (let ((_hd159717159748_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159716159744_)))
                                    (_tl159718159751_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159716159744_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159718159751_))
                                    (let ((_e159719159754_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159718159751_))))
                                      (let ((_hd159720159758_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159719159754_)))
                                            (_tl159721159761_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159719159754_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159721159761_))
                                            ((lambda (_L159764_ _L159766_)
                                               (let ((__tmp161450
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp161437
                                                      (let ((__tmp161446
                                                             (let ((__tmp161449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp161447
                            (let ((__tmp161448
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp161448 '()))))
                       (declare (not safe))
                       (cons __tmp161449 __tmp161447)))
                    (__tmp161438
                     (let ((__tmp161443
                            (let ((__tmp161445
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp161444
                                   (let ()
                                     (declare (not safe))
                                     (cons _L159766_ '()))))
                              (declare (not safe))
                              (cons __tmp161445 __tmp161444)))
                           (__tmp161439
                            (let ((__tmp161440
                                   (let ((__tmp161442
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp161441
                                          (let ()
                                            (declare (not safe))
                                            (cons _L159764_ '()))))
                                     (declare (not safe))
                                     (cons __tmp161442 __tmp161441))))
                              (declare (not safe))
                              (cons __tmp161440 '()))))
                       (declare (not safe))
                       (cons __tmp161443 __tmp161439))))
                (declare (not safe))
                (cons __tmp161446 __tmp161438))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp161450
                                                       __tmp161437)))
                                             _hd159720159758_
                                             _hd159717159748_)
                                            (_g159709159727_
                                             _g159710159731_))))
                                    (_g159709159727_ _g159710159731_))))
                            (_g159709159727_ _g159710159731_))))
                    (_g159709159727_ _g159710159731_)))))
        (_g159708159782_ _$stx159705_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx159786_)
      (let* ((_g159790159808_
              (lambda (_g159791159804_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159791159804_))))
             (_g159789159863_
              (lambda (_g159791159812_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159791159812_))
                    (let ((_e159794159815_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159791159812_))))
                      (let ((_hd159795159819_
                             (let ()
                               (declare (not safe))
                               (##car _e159794159815_)))
                            (_tl159796159822_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159794159815_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159796159822_))
                            (let ((_e159797159825_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159796159822_))))
                              (let ((_hd159798159829_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159797159825_)))
                                    (_tl159799159832_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159797159825_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159799159832_))
                                    (let ((_e159800159835_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159799159832_))))
                                      (let ((_hd159801159839_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159800159835_)))
                                            (_tl159802159842_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159800159835_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159802159842_))
                                            ((lambda (_L159845_ _L159847_)
                                               (let ((__tmp161464
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp161451
                                                      (let ((__tmp161460
                                                             (let ((__tmp161463
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp161461
                            (let ((__tmp161462
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp161462 '()))))
                       (declare (not safe))
                       (cons __tmp161463 __tmp161461)))
                    (__tmp161452
                     (let ((__tmp161457
                            (let ((__tmp161459
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp161458
                                   (let ()
                                     (declare (not safe))
                                     (cons _L159847_ '()))))
                              (declare (not safe))
                              (cons __tmp161459 __tmp161458)))
                           (__tmp161453
                            (let ((__tmp161454
                                   (let ((__tmp161456
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp161455
                                          (let ()
                                            (declare (not safe))
                                            (cons _L159845_ '()))))
                                     (declare (not safe))
                                     (cons __tmp161456 __tmp161455))))
                              (declare (not safe))
                              (cons __tmp161454 '()))))
                       (declare (not safe))
                       (cons __tmp161457 __tmp161453))))
                (declare (not safe))
                (cons __tmp161460 __tmp161452))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp161464
                                                       __tmp161451)))
                                             _hd159801159839_
                                             _hd159798159829_)
                                            (_g159790159808_
                                             _g159791159812_))))
                                    (_g159790159808_ _g159791159812_))))
                            (_g159790159808_ _g159791159812_))))
                    (_g159790159808_ _g159791159812_)))))
        (_g159789159863_ _$stx159786_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx159867_)
      (let* ((___stx161054161055_ _$stx159867_)
             (_g159874159945_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161054161055_)))))
        (let ((___kont161057161058_
               (lambda (_L160236_ _L160238_)
                 (let ((__tmp161470
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161465
                        (let ((__tmp161466
                               (let ((__tmp161467
                                      (let ((__tmp161469
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp161468
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160236_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161469 __tmp161468))))
                                 (declare (not safe))
                                 (cons __tmp161467 '()))))
                          (declare (not safe))
                          (cons _L160238_ __tmp161466))))
                   (declare (not safe))
                   (cons __tmp161470 __tmp161465))))
              (___kont161059161060_
               (lambda (_L160155_ _L160157_)
                 (let ((__tmp161479
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161471
                        (let ((__tmp161472
                               (let ((__tmp161473
                                      (let ((__tmp161478
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp161474
                                             (let ((__tmp161475
                                                    (lambda (_g160176160179_
                                                             _g160177160182_)
                                                      (let ((__tmp161476
                                                             (let ((__tmp161477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g160176160179_ __tmp161477))))
                (declare (not safe))
                (cons __tmp161476 _g160177160182_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp161475
                                                       '()
                                                       _L160155_))))
                                        (declare (not safe))
                                        (cons __tmp161478 __tmp161474))))
                                 (declare (not safe))
                                 (cons __tmp161473 '()))))
                          (declare (not safe))
                          (cons _L160157_ __tmp161472))))
                   (declare (not safe))
                   (cons __tmp161479 __tmp161471))))
              (___kont161063161064_
               (lambda (_L160067_ _L160069_)
                 (let ((__tmp161486
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161480
                        (let ((__tmp161481
                               (let ((__tmp161482
                                      (let ((__tmp161485
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp161483
                                             (let ((__tmp161484
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160067_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp161484))))
                                        (declare (not safe))
                                        (cons __tmp161485 __tmp161483))))
                                 (declare (not safe))
                                 (cons __tmp161482 '()))))
                          (declare (not safe))
                          (cons _L160069_ __tmp161481))))
                   (declare (not safe))
                   (cons __tmp161486 __tmp161480))))
              (___kont161065161066_
               (lambda (_L160002_ _L160004_)
                 (let ((__tmp161496
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161487
                        (let ((__tmp161488
                               (let ((__tmp161489
                                      (let ((__tmp161495
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp161490
                                             (let ((__tmp161491
                                                    (let ((__tmp161492
                                                           (lambda (_g160021160024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g160022160027_)
                     (let ((__tmp161493
                            (let ((__tmp161494
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g160021160024_ __tmp161494))))
                       (declare (not safe))
                       (cons __tmp161493 _g160022160027_)))))
              (declare (not safe))
              (foldr1 __tmp161492 '() _L160002_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp161491))))
                                        (declare (not safe))
                                        (cons __tmp161495 __tmp161490))))
                                 (declare (not safe))
                                 (cons __tmp161489 '()))))
                          (declare (not safe))
                          (cons _L160004_ __tmp161488))))
                   (declare (not safe))
                   (cons __tmp161496 __tmp161487)))))
          (let* ((___match161173161174_
                  (lambda (_e159925159952_
                           _hd159926159956_
                           _tl159927159959_
                           _e159928159962_
                           _hd159929159966_
                           _tl159930159969_
                           ___splice161067161068_
                           _target159931159972_
                           _tl159933159975_)
                    (letrec ((_loop159934159978_
                              (lambda (_hd159932159982_ _arity159938159985_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd159932159982_))
                                    (let ((_e159935159988_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd159932159982_))))
                                      (let ((_lp-tl159937159995_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159935159988_)))
                                            (_lp-hd159936159992_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159935159988_))))
                                        (_loop159934159978_
                                         _lp-tl159937159995_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd159936159992_
                                                 _arity159938159985_)))))
                                    (let ((_arity159939159998_
                                           (reverse _arity159938159985_)))
                                      (___kont161065161066_
                                       _arity159939159998_
                                       _hd159929159966_))))))
                      (_loop159934159978_ _target159931159972_ '()))))
                 (___match161133161134_
                  (lambda (_e159893160091_
                           _hd159894160095_
                           _tl159895160098_
                           _e159896160101_
                           _hd159897160105_
                           _tl159898160108_
                           _e159899160111_
                           _hd159900160115_
                           _tl159901160118_
                           _e159902160121_
                           ___splice161061161062_
                           _target159903160125_
                           _tl159905160128_)
                    (letrec ((_loop159906160131_
                              (lambda (_hd159904160135_ _arity159910160138_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd159904160135_))
                                    (let ((_e159907160141_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd159904160135_))))
                                      (let ((_lp-tl159909160148_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159907160141_)))
                                            (_lp-hd159908160145_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159907160141_))))
                                        (_loop159906160131_
                                         _lp-tl159909160148_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd159908160145_
                                                 _arity159910160138_)))))
                                    (let ((_arity159911160151_
                                           (reverse _arity159910160138_)))
                                      (___kont161059161060_
                                       _arity159911160151_
                                       _hd159897160105_))))))
                      (_loop159906160131_ _target159903160125_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161054161055_))
                (let ((_e159878160192_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161054161055_))))
                  (let ((_tl159880160199_
                         (let () (declare (not safe)) (##cdr _e159878160192_)))
                        (_hd159879160196_
                         (let ()
                           (declare (not safe))
                           (##car _e159878160192_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl159880160199_))
                        (let ((_e159881160202_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl159880160199_))))
                          (let ((_tl159883160209_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e159881160202_)))
                                (_hd159882160206_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e159881160202_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl159883160209_))
                                (let ((_e159884160212_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl159883160209_))))
                                  (let ((_tl159886160219_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e159884160212_)))
                                        (_hd159885160216_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e159884160212_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd159885160216_))
                                        (let ((_e159887160222_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd159885160216_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e159887160222_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl159886160219_))
                                                  (let ((_e159888160226_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl159886160219_))))
                                                    (let ((_tl159890160233_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e159888160226_)))
                                                          (_hd159889160230_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e159888160226_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl159890160233_))
                                                          (___kont161057161058_
                                                           _hd159889160230_
                                                           _hd159882160206_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl159886160219_))
                      (let ((___splice161061161062_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl159886160219_ '0))))
                        (let ((_tl159905160128_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161061161062_ '1)))
                              (_target159903160125_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161061161062_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl159905160128_))
                              (___match161133161134_
                               _e159878160192_
                               _hd159879160196_
                               _tl159880160199_
                               _e159881160202_
                               _hd159882160206_
                               _tl159883160209_
                               _e159884160212_
                               _hd159885160216_
                               _tl159886160219_
                               _e159887160222_
                               ___splice161061161062_
                               _target159903160125_
                               _tl159905160128_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl159883160209_))
                                  (let ((___splice161067161068_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl159883160209_
                                            '0))))
                                    (let ((_tl159933159975_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice161067161068_
                                              '1)))
                                          (_target159931159972_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice161067161068_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl159933159975_))
                                          (___match161173161174_
                                           _e159878160192_
                                           _hd159879160196_
                                           _tl159880160199_
                                           _e159881160202_
                                           _hd159882160206_
                                           _tl159883160209_
                                           ___splice161067161068_
                                           _target159931159972_
                                           _tl159933159975_)
                                          (let ()
                                            (declare (not safe))
                                            (_g159874159945_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g159874159945_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl159883160209_))
                          (let ((___splice161067161068_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl159883160209_
                                    '0))))
                            (let ((_tl159933159975_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice161067161068_ '1)))
                                  (_target159931159972_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice161067161068_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl159933159975_))
                                  (___match161173161174_
                                   _e159878160192_
                                   _hd159879160196_
                                   _tl159880160199_
                                   _e159881160202_
                                   _hd159882160206_
                                   _tl159883160209_
                                   ___splice161067161068_
                                   _target159931159972_
                                   _tl159933159975_)
                                  (let ()
                                    (declare (not safe))
                                    (_g159874159945_)))))
                          (let () (declare (not safe)) (_g159874159945_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl159886160219_))
                                                      (let ((___splice161061161062_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl159886160219_ '0))))
                (let ((_tl159905160128_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161061161062_ '1)))
                      (_target159903160125_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161061161062_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159905160128_))
                      (___match161133161134_
                       _e159878160192_
                       _hd159879160196_
                       _tl159880160199_
                       _e159881160202_
                       _hd159882160206_
                       _tl159883160209_
                       _e159884160212_
                       _hd159885160216_
                       _tl159886160219_
                       _e159887160222_
                       ___splice161061161062_
                       _target159903160125_
                       _tl159905160128_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl159886160219_))
                          (___kont161063161064_
                           _hd159885160216_
                           _hd159882160206_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl159883160209_))
                              (let ((___splice161067161068_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl159883160209_
                                        '0))))
                                (let ((_tl159933159975_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice161067161068_
                                          '1)))
                                      (_target159931159972_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice161067161068_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159933159975_))
                                      (___match161173161174_
                                       _e159878160192_
                                       _hd159879160196_
                                       _tl159880160199_
                                       _e159881160202_
                                       _hd159882160206_
                                       _tl159883160209_
                                       ___splice161067161068_
                                       _target159931159972_
                                       _tl159933159975_)
                                      (let ()
                                        (declare (not safe))
                                        (_g159874159945_)))))
                              (let ()
                                (declare (not safe))
                                (_g159874159945_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl159886160219_))
                  (___kont161063161064_ _hd159885160216_ _hd159882160206_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl159883160209_))
                      (let ((___splice161067161068_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl159883160209_ '0))))
                        (let ((_tl159933159975_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161067161068_ '1)))
                              (_target159931159972_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice161067161068_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl159933159975_))
                              (___match161173161174_
                               _e159878160192_
                               _hd159879160196_
                               _tl159880160199_
                               _e159881160202_
                               _hd159882160206_
                               _tl159883160209_
                               ___splice161067161068_
                               _target159931159972_
                               _tl159933159975_)
                              (let ()
                                (declare (not safe))
                                (_g159874159945_)))))
                      (let () (declare (not safe)) (_g159874159945_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl159886160219_))
                                                  (___kont161063161064_
                                                   _hd159885160216_
                                                   _hd159882160206_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl159883160209_))
                                                      (let ((___splice161067161068_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl159883160209_ '0))))
                (let ((_tl159933159975_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161067161068_ '1)))
                      (_target159931159972_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice161067161068_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl159933159975_))
                      (___match161173161174_
                       _e159878160192_
                       _hd159879160196_
                       _tl159880160199_
                       _e159881160202_
                       _hd159882160206_
                       _tl159883160209_
                       ___splice161067161068_
                       _target159931159972_
                       _tl159933159975_)
                      (let () (declare (not safe)) (_g159874159945_)))))
              (let () (declare (not safe)) (_g159874159945_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159886160219_))
                                            (___kont161063161064_
                                             _hd159885160216_
                                             _hd159882160206_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl159883160209_))
                                                (let ((___splice161067161068_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl159883160209_
                                                          '0))))
                                                  (let ((_tl159933159975_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice161067161068_
                                                            '1)))
                                                        (_target159931159972_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice161067161068_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159933159975_))
                                                        (___match161173161174_
                                                         _e159878160192_
                                                         _hd159879160196_
                                                         _tl159880160199_
                                                         _e159881160202_
                                                         _hd159882160206_
                                                         _tl159883160209_
                                                         ___splice161067161068_
                                                         _target159931159972_
                                                         _tl159933159975_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g159874159945_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g159874159945_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl159883160209_))
                                    (let ((___splice161067161068_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl159883160209_
                                              '0))))
                                      (let ((_tl159933159975_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161067161068_
                                                '1)))
                                            (_target159931159972_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161067161068_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl159933159975_))
                                            (___match161173161174_
                                             _e159878160192_
                                             _hd159879160196_
                                             _tl159880160199_
                                             _e159881160202_
                                             _hd159882160206_
                                             _tl159883160209_
                                             ___splice161067161068_
                                             _target159931159972_
                                             _tl159933159975_)
                                            (let ()
                                              (declare (not safe))
                                              (_g159874159945_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g159874159945_))))))
                        (let () (declare (not safe)) (_g159874159945_)))))
                (let () (declare (not safe)) (_g159874159945_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx160262_)
      (let* ((___stx161176161177_ _$stx160262_)
             (_g160267160302_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx161176161177_)))))
        (let ((___kont161179161180_
               (lambda (_L160424_ _L160426_)
                 (let ((__tmp161502
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161497
                        (let ((__tmp161498
                               (let ((__tmp161499
                                      (let ((__tmp161501
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp161500
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160424_ '()))))
                                        (declare (not safe))
                                        (cons __tmp161501 __tmp161500))))
                                 (declare (not safe))
                                 (cons __tmp161499 '()))))
                          (declare (not safe))
                          (cons _L160426_ __tmp161498))))
                   (declare (not safe))
                   (cons __tmp161502 __tmp161497))))
              (___kont161181161182_
               (lambda (_L160359_ _L160361_)
                 (let ((__tmp161511
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp161503
                        (let ((__tmp161504
                               (let ((__tmp161505
                                      (let ((__tmp161510
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp161506
                                             (let ((__tmp161507
                                                    (lambda (_g160378160381_
                                                             _g160379160384_)
                                                      (let ((__tmp161508
                                                             (let ((__tmp161509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g160378160381_ __tmp161509))))
                (declare (not safe))
                (cons __tmp161508 _g160379160384_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp161507
                                                       '()
                                                       _L160359_))))
                                        (declare (not safe))
                                        (cons __tmp161510 __tmp161506))))
                                 (declare (not safe))
                                 (cons __tmp161505 '()))))
                          (declare (not safe))
                          (cons _L160361_ __tmp161504))))
                   (declare (not safe))
                   (cons __tmp161511 __tmp161503)))))
          (let ((___match161225161226_
                 (lambda (_e160282160309_
                          _hd160283160313_
                          _tl160284160316_
                          _e160285160319_
                          _hd160286160323_
                          _tl160287160326_
                          ___splice161183161184_
                          _target160288160329_
                          _tl160290160332_)
                   (letrec ((_loop160291160335_
                             (lambda (_hd160289160339_ _arity160295160342_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd160289160339_))
                                   (let ((_e160292160345_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd160289160339_))))
                                     (let ((_lp-tl160294160352_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e160292160345_)))
                                           (_lp-hd160293160349_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e160292160345_))))
                                       (_loop160291160335_
                                        _lp-tl160294160352_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd160293160349_
                                                _arity160295160342_)))))
                                   (let ((_arity160296160355_
                                          (reverse _arity160295160342_)))
                                     (___kont161181161182_
                                      _arity160296160355_
                                      _hd160286160323_))))))
                     (_loop160291160335_ _target160288160329_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx161176161177_))
                (let ((_e160271160394_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx161176161177_))))
                  (let ((_tl160273160401_
                         (let () (declare (not safe)) (##cdr _e160271160394_)))
                        (_hd160272160398_
                         (let ()
                           (declare (not safe))
                           (##car _e160271160394_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160273160401_))
                        (let ((_e160274160404_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160273160401_))))
                          (let ((_tl160276160411_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160274160404_)))
                                (_hd160275160408_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160274160404_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160276160411_))
                                (let ((_e160277160414_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160276160411_))))
                                  (let ((_tl160279160421_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160277160414_)))
                                        (_hd160278160418_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160277160414_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160279160421_))
                                        (___kont161179161180_
                                         _hd160278160418_
                                         _hd160275160408_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl160276160411_))
                                            (let ((___splice161183161184_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl160276160411_
                                                      '0))))
                                              (let ((_tl160290160332_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice161183161184_
                                                        '1)))
                                                    (_target160288160329_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice161183161184_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160290160332_))
                                                    (___match161225161226_
                                                     _e160271160394_
                                                     _hd160272160398_
                                                     _tl160273160401_
                                                     _e160274160404_
                                                     _hd160275160408_
                                                     _tl160276160411_
                                                     ___splice161183161184_
                                                     _target160288160329_
                                                     _tl160290160332_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160267160302_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g160267160302_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160276160411_))
                                    (let ((___splice161183161184_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160276160411_
                                              '0))))
                                      (let ((_tl160290160332_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161183161184_
                                                '1)))
                                            (_target160288160329_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice161183161184_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160290160332_))
                                            (___match161225161226_
                                             _e160271160394_
                                             _hd160272160398_
                                             _tl160273160401_
                                             _e160274160404_
                                             _hd160275160408_
                                             _tl160276160411_
                                             ___splice161183161184_
                                             _target160288160329_
                                             _tl160290160332_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160267160302_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160267160302_))))))
                        (let () (declare (not safe)) (_g160267160302_)))))
                (let () (declare (not safe)) (_g160267160302_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx160446_)
      (let* ((_g160450160485_
              (lambda (_g160451160481_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160451160481_))))
             (_g160449160613_
              (lambda (_g160451160489_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160451160489_))
                    (let ((_e160454160492_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160451160489_))))
                      (let ((_hd160455160496_
                             (let ()
                               (declare (not safe))
                               (##car _e160454160492_)))
                            (_tl160456160499_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160454160492_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160456160499_))
                            (let ((_g161512_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160456160499_
                                      '0))))
                              (begin
                                (let ((_g161513_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161512_)
                                             (##vector-length _g161512_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161513_ 2)))
                                      (error "Context expects 2 values"
                                             _g161513_)))
                                (let ((_target160457160502_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161512_ 0)))
                                      (_tl160459160505_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161512_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160459160505_))
                                      (letrec ((_loop160460160508_
                                                (lambda (_hd160458160512_
                                                         _arity160464160515_
                                                         _prim160465160517_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160458160512_))
                                                      (let ((_e160461160520_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160458160512_))))
                (let ((_lp-hd160462160524_
                       (let () (declare (not safe)) (##car _e160461160520_)))
                      (_lp-tl160463160527_
                       (let () (declare (not safe)) (##cdr _e160461160520_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160462160524_))
                      (let ((_e160468160530_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160462160524_))))
                        (let ((_hd160469160534_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160468160530_)))
                              (_tl160470160537_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160468160530_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160470160537_))
                              (let ((_g161514_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160470160537_
                                        '0))))
                                (begin
                                  (let ((_g161515_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161514_)
                                               (##vector-length _g161514_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161515_ 2)))
                                        (error "Context expects 2 values"
                                               _g161515_)))
                                  (let ((_target160471160540_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161514_ 0)))
                                        (_tl160473160543_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161514_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160473160543_))
                                        (letrec ((_loop160474160546_
                                                  (lambda (_hd160472160550_
                                                           _arity160478160553_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd160472160550_))
                                                        (let ((_e160475160556_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd160472160550_))))
                  (let ((_lp-hd160476160560_
                         (let () (declare (not safe)) (##car _e160475160556_)))
                        (_lp-tl160477160563_
                         (let ()
                           (declare (not safe))
                           (##cdr _e160475160556_))))
                    (_loop160474160546_
                     _lp-tl160477160563_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd160476160560_ _arity160478160553_)))))
                (let ((_arity160479160566_ (reverse _arity160478160553_)))
                  (_loop160460160508_
                   _lp-tl160463160527_
                   (let ()
                     (declare (not safe))
                     (cons _arity160479160566_ _arity160464160515_))
                   (let ()
                     (declare (not safe))
                     (cons _hd160469160534_ _prim160465160517_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop160474160546_
                                           _target160471160540_
                                           '()))
                                        (_g160450160485_ _g160451160489_)))))
                              (_g160450160485_ _g160451160489_))))
                      (_g160450160485_ _g160451160489_))))
              (let ((_arity160466160570_ (reverse _arity160464160515_))
                    (_prim160467160573_ (reverse _prim160465160517_)))
                ((lambda (_L160576_ _L160578_)
                   (let ((__tmp161523
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161516
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L160576_
                               _L160578_))
                            (let ((__tmp161517
                                   (lambda (_g160593160599_
                                            _g160594160602_
                                            _g160595160604_)
                                     (let ((__tmp161518
                                            (let ((__tmp161522
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp161519
                                                   (let ((__tmp161520
                                                          (let ((__tmp161521
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g160596160607_ _g160597160610_)
                           (let ()
                             (declare (not safe))
                             (cons _g160596160607_ _g160597160610_)))))
                    (declare (not safe))
                    (foldr1 __tmp161521 '() _g160593160599_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160594160602_
                                                           __tmp161520))))
                                              (declare (not safe))
                                              (cons __tmp161522 __tmp161519))))
                                       (declare (not safe))
                                       (cons __tmp161518 _g160595160604_)))))
                              (declare (not safe))
                              (foldr2 __tmp161517 '() _L160576_ _L160578_)))))
                     (declare (not safe))
                     (cons __tmp161523 __tmp161516)))
                 _arity160466160570_
                 _prim160467160573_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160460160508_
                                         _target160457160502_
                                         '()
                                         '()))
                                      (_g160450160485_ _g160451160489_)))))
                            (_g160450160485_ _g160451160489_))))
                    (_g160450160485_ _g160451160489_)))))
        (_g160449160613_ _$stx160446_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx160619_)
      (let* ((_g160623160658_
              (lambda (_g160624160654_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160624160654_))))
             (_g160622160786_
              (lambda (_g160624160662_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160624160662_))
                    (let ((_e160627160665_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160624160662_))))
                      (let ((_hd160628160669_
                             (let ()
                               (declare (not safe))
                               (##car _e160627160665_)))
                            (_tl160629160672_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160627160665_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160629160672_))
                            (let ((_g161524_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160629160672_
                                      '0))))
                              (begin
                                (let ((_g161525_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g161524_)
                                             (##vector-length _g161524_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g161525_ 2)))
                                      (error "Context expects 2 values"
                                             _g161525_)))
                                (let ((_target160630160675_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161524_ 0)))
                                      (_tl160632160678_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g161524_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160632160678_))
                                      (letrec ((_loop160633160681_
                                                (lambda (_hd160631160685_
                                                         _arity160637160688_
                                                         _prim160638160690_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160631160685_))
                                                      (let ((_e160634160693_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160631160685_))))
                (let ((_lp-hd160635160697_
                       (let () (declare (not safe)) (##car _e160634160693_)))
                      (_lp-tl160636160700_
                       (let () (declare (not safe)) (##cdr _e160634160693_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160635160697_))
                      (let ((_e160641160703_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160635160697_))))
                        (let ((_hd160642160707_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160641160703_)))
                              (_tl160643160710_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160641160703_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160643160710_))
                              (let ((_g161526_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160643160710_
                                        '0))))
                                (begin
                                  (let ((_g161527_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g161526_)
                                               (##vector-length _g161526_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g161527_ 2)))
                                        (error "Context expects 2 values"
                                               _g161527_)))
                                  (let ((_target160644160713_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161526_ 0)))
                                        (_tl160646160716_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g161526_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160646160716_))
                                        (letrec ((_loop160647160719_
                                                  (lambda (_hd160645160723_
                                                           _arity160651160726_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd160645160723_))
                                                        (let ((_e160648160729_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd160645160723_))))
                  (let ((_lp-hd160649160733_
                         (let () (declare (not safe)) (##car _e160648160729_)))
                        (_lp-tl160650160736_
                         (let ()
                           (declare (not safe))
                           (##cdr _e160648160729_))))
                    (_loop160647160719_
                     _lp-tl160650160736_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd160649160733_ _arity160651160726_)))))
                (let ((_arity160652160739_ (reverse _arity160651160726_)))
                  (_loop160633160681_
                   _lp-tl160636160700_
                   (let ()
                     (declare (not safe))
                     (cons _arity160652160739_ _arity160637160688_))
                   (let ()
                     (declare (not safe))
                     (cons _hd160642160707_ _prim160638160690_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop160647160719_
                                           _target160644160713_
                                           '()))
                                        (_g160623160658_ _g160624160662_)))))
                              (_g160623160658_ _g160624160662_))))
                      (_g160623160658_ _g160624160662_))))
              (let ((_arity160639160743_ (reverse _arity160637160688_))
                    (_prim160640160746_ (reverse _prim160638160690_)))
                ((lambda (_L160749_ _L160751_)
                   (let ((__tmp161535
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp161528
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L160749_
                               _L160751_))
                            (let ((__tmp161529
                                   (lambda (_g160766160772_
                                            _g160767160775_
                                            _g160768160777_)
                                     (let ((__tmp161530
                                            (let ((__tmp161534
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp161531
                                                   (let ((__tmp161532
                                                          (let ((__tmp161533
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g160769160780_ _g160770160783_)
                           (let ()
                             (declare (not safe))
                             (cons _g160769160780_ _g160770160783_)))))
                    (declare (not safe))
                    (foldr1 __tmp161533 '() _g160766160772_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160767160775_
                                                           __tmp161532))))
                                              (declare (not safe))
                                              (cons __tmp161534 __tmp161531))))
                                       (declare (not safe))
                                       (cons __tmp161530 _g160768160777_)))))
                              (declare (not safe))
                              (foldr2 __tmp161529 '() _L160749_ _L160751_)))))
                     (declare (not safe))
                     (cons __tmp161535 __tmp161528)))
                 _arity160639160743_
                 _prim160640160746_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160633160681_
                                         _target160630160675_
                                         '()
                                         '()))
                                      (_g160623160658_ _g160624160662_)))))
                            (_g160623160658_ _g160624160662_))))
                    (_g160623160658_ _g160624160662_)))))
        (_g160622160786_ _$stx160619_)))))
