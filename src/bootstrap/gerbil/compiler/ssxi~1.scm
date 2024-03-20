(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx160644_)
      (let* ((_g160648160666_
              (lambda (_g160649160662_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160649160662_))))
             (_g160647160721_
              (lambda (_g160649160670_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160649160670_))
                    (let ((_e160654160673_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160649160670_))))
                      (let ((_hd160653160677_
                             (let ()
                               (declare (not safe))
                               (##car _e160654160673_)))
                            (_tl160652160680_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160654160673_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160652160680_))
                            (let ((_e160657160683_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160652160680_))))
                              (let ((_hd160656160687_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160657160683_)))
                                    (_tl160655160690_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160657160683_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160655160690_))
                                    (let ((_e160660160693_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160655160690_))))
                                      (let ((_hd160659160697_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160660160693_)))
                                            (_tl160658160700_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160660160693_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160658160700_))
                                            ((lambda (_L160703_ _L160705_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L160705_))
                                                   (let ((__tmp164203
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp164198
                                                          (let ((__tmp164200
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp164202
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp164201
                                (let ()
                                  (declare (not safe))
                                  (cons _L160705_ '()))))
                           (declare (not safe))
                           (cons __tmp164202 __tmp164201)))
                        (__tmp164199
                         (let () (declare (not safe)) (cons _L160703_ '()))))
                    (declare (not safe))
                    (cons __tmp164200 __tmp164199))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp164203
                                                           __tmp164198))
                                                   (_g160648160666_
                                                    _g160649160670_)))
                                             _hd160659160697_
                                             _hd160656160687_)
                                            (_g160648160666_
                                             _g160649160670_))))
                                    (_g160648160666_ _g160649160670_))))
                            (_g160648160666_ _g160649160670_))))
                    (_g160648160666_ _g160649160670_)))))
        (_g160647160721_ _$stx160644_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx160725_)
      (let* ((_g160729160758_
              (lambda (_g160730160754_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160730160754_))))
             (_g160728160858_
              (lambda (_g160730160762_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160730160762_))
                    (let ((_e160735160765_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160730160762_))))
                      (let ((_hd160734160769_
                             (let ()
                               (declare (not safe))
                               (##car _e160735160765_)))
                            (_tl160733160772_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160735160765_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160733160772_))
                            (let ((_g164204_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160733160772_
                                      '0))))
                              (begin
                                (let ((_g164205_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g164204_)
                                             (##vector-length _g164204_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g164205_ 2)))
                                      (error "Context expects 2 values"
                                             _g164205_)))
                                (let ((_target160736160775_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164204_ 0)))
                                      (_tl160738160778_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164204_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160738160778_))
                                      (letrec ((_loop160739160781_
                                                (lambda (_hd160737160785_
                                                         _type160743160788_
                                                         _symbol160744160790_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160737160785_))
                                                      (let ((_e160740160793_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160737160785_))))
                (let ((_lp-hd160741160797_
                       (let () (declare (not safe)) (##car _e160740160793_)))
                      (_lp-tl160742160800_
                       (let () (declare (not safe)) (##cdr _e160740160793_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160741160797_))
                      (let ((_e160749160803_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160741160797_))))
                        (let ((_hd160748160807_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160749160803_)))
                              (_tl160747160810_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160749160803_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl160747160810_))
                              (let ((_e160752160813_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl160747160810_))))
                                (let ((_hd160751160817_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160752160813_)))
                                      (_tl160750160820_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160752160813_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160750160820_))
                                      (_loop160739160781_
                                       _lp-tl160742160800_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd160751160817_
                                               _type160743160788_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd160748160807_
                                               _symbol160744160790_)))
                                      (_g160729160758_ _g160730160762_))))
                              (_g160729160758_ _g160730160762_))))
                      (_g160729160758_ _g160730160762_))))
              (let ((_type160745160823_ (reverse _type160743160788_))
                    (_symbol160746160826_ (reverse _symbol160744160790_)))
                ((lambda (_L160829_ _L160831_)
                   (let ((__tmp164212
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp164206
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L160829_
                               _L160831_))
                            (let ((__tmp164207
                                   (lambda (_g160846160850_
                                            _g160847160853_
                                            _g160848160855_)
                                     (let ((__tmp164208
                                            (let ((__tmp164211
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp164209
                                                   (let ((__tmp164210
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g160846160850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160847160853_
                                                           __tmp164210))))
                                              (declare (not safe))
                                              (cons __tmp164211 __tmp164209))))
                                       (declare (not safe))
                                       (cons __tmp164208 _g160848160855_)))))
                              (declare (not safe))
                              (foldr2 __tmp164207 '() _L160829_ _L160831_)))))
                     (declare (not safe))
                     (cons __tmp164212 __tmp164206)))
                 _type160745160823_
                 _symbol160746160826_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160739160781_
                                         _target160736160775_
                                         '()
                                         '()))
                                      (_g160729160758_ _g160730160762_)))))
                            (_g160729160758_ _g160730160762_))))
                    (_g160729160758_ _g160730160762_)))))
        (_g160728160858_ _$stx160725_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx160863_)
      (let* ((___stx163763163764_ _$stx160863_)
             (_g160868160910_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163763163764_)))))
        (let ((___kont163766163767_
               (lambda (_L161038_ _L161040_ _L161041_ _L161042_)
                 (let ((__tmp164226
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp164213
                        (let ((__tmp164223
                               (let ((__tmp164225
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164224
                                      (let ()
                                        (declare (not safe))
                                        (cons _L161042_ '()))))
                                 (declare (not safe))
                                 (cons __tmp164225 __tmp164224)))
                              (__tmp164214
                               (let ((__tmp164220
                                      (let ((__tmp164222
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164221
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161041_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164222 __tmp164221)))
                                     (__tmp164215
                                      (let ((__tmp164217
                                             (let ((__tmp164219
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp164218
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L161040_ '()))))
                                               (declare (not safe))
                                               (cons __tmp164219 __tmp164218)))
                                            (__tmp164216
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161038_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164217 __tmp164216))))
                                 (declare (not safe))
                                 (cons __tmp164220 __tmp164215))))
                          (declare (not safe))
                          (cons __tmp164223 __tmp164214))))
                   (declare (not safe))
                   (cons __tmp164226 __tmp164213))))
              (___kont163768163769_
               (lambda (_L160957_ _L160959_ _L160960_ _L160961_)
                 (let ((__tmp164227
                        (let ((__tmp164228
                               (let ((__tmp164229
                                      (let ((__tmp164230
                                             (let ((__tmp164231
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp164231 '()))))
                                        (declare (not safe))
                                        (cons _L160957_ __tmp164230))))
                                 (declare (not safe))
                                 (cons _L160959_ __tmp164229))))
                          (declare (not safe))
                          (cons _L160960_ __tmp164228))))
                   (declare (not safe))
                   (cons _L160961_ __tmp164227)))))
          (let ((___match163802163803_
                 (lambda (_e160876160988_
                          _hd160875160992_
                          _tl160874160995_
                          _e160879160998_
                          _hd160878161002_
                          _tl160877161005_
                          _e160882161008_
                          _hd160881161012_
                          _tl160880161015_
                          _e160885161018_
                          _hd160884161022_
                          _tl160883161025_
                          _e160888161028_
                          _hd160887161032_
                          _tl160886161035_)
                   (let ((_L161038_ _hd160887161032_)
                         (_L161040_ _hd160884161022_)
                         (_L161041_ _hd160881161012_)
                         (_L161042_ _hd160878161002_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L161042_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L161041_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L161040_)))
                         (___kont163766163767_
                          _L161038_
                          _L161040_
                          _L161041_
                          _L161042_)
                         (let () (declare (not safe)) (_g160868160910_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx163763163764_))
                (let ((_e160876160988_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx163763163764_))))
                  (let ((_tl160874160995_
                         (let () (declare (not safe)) (##cdr _e160876160988_)))
                        (_hd160875160992_
                         (let ()
                           (declare (not safe))
                           (##car _e160876160988_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160874160995_))
                        (let ((_e160879160998_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160874160995_))))
                          (let ((_tl160877161005_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160879160998_)))
                                (_hd160878161002_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160879160998_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160877161005_))
                                (let ((_e160882161008_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160877161005_))))
                                  (let ((_tl160880161015_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160882161008_)))
                                        (_hd160881161012_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160882161008_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl160880161015_))
                                        (let ((_e160885161018_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl160880161015_))))
                                          (let ((_tl160883161025_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e160885161018_)))
                                                (_hd160884161022_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e160885161018_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl160883161025_))
                                                (let ((_e160888161028_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl160883161025_))))
                                                  (let ((_tl160886161035_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e160888161028_)))
                                                        (_hd160887161032_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e160888161028_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160886161035_))
                                                        (___match163802163803_
                                                         _e160876160988_
                                                         _hd160875160992_
                                                         _tl160874160995_
                                                         _e160879160998_
                                                         _hd160878161002_
                                                         _tl160877161005_
                                                         _e160882161008_
                                                         _hd160881161012_
                                                         _tl160880161015_
                                                         _e160885161018_
                                                         _hd160884161022_
                                                         _tl160883161025_
                                                         _e160888161028_
                                                         _hd160887161032_
                                                         _tl160886161035_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160868160910_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160883161025_))
                                                    (___kont163768163769_
                                                     _hd160884161022_
                                                     _hd160881161012_
                                                     _hd160878161002_
                                                     _hd160875160992_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160868160910_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g160868160910_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g160868160910_)))))
                        (let () (declare (not safe)) (_g160868160910_)))))
                (let () (declare (not safe)) (_g160868160910_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx161067_)
      (let* ((_g161071161106_
              (lambda (_g161072161102_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161072161102_))))
             (_g161070161225_
              (lambda (_g161072161110_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161072161110_))
                    (let ((_e161078161113_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161072161110_))))
                      (let ((_hd161077161117_
                             (let ()
                               (declare (not safe))
                               (##car _e161078161113_)))
                            (_tl161076161120_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161078161113_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161076161120_))
                            (let ((_g164232_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161076161120_
                                      '0))))
                              (begin
                                (let ((_g164233_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g164232_)
                                             (##vector-length _g164232_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g164233_ 2)))
                                      (error "Context expects 2 values"
                                             _g164233_)))
                                (let ((_target161079161123_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164232_ 0)))
                                      (_tl161081161126_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164232_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161081161126_))
                                      (letrec ((_loop161082161129_
                                                (lambda (_hd161080161133_
                                                         _symbol161086161136_
                                                         _method161087161138_
                                                         _type-t161088161140_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd161080161133_))
                                                      (let ((_e161083161143_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd161080161133_))))
                (let ((_lp-hd161084161147_
                       (let () (declare (not safe)) (##car _e161083161143_)))
                      (_lp-tl161085161150_
                       (let () (declare (not safe)) (##cdr _e161083161143_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd161084161147_))
                      (let ((_e161094161153_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd161084161147_))))
                        (let ((_hd161093161157_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161094161153_)))
                              (_tl161092161160_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161094161153_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl161092161160_))
                              (let ((_e161097161163_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl161092161160_))))
                                (let ((_hd161096161167_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e161097161163_)))
                                      (_tl161095161170_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e161097161163_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl161095161170_))
                                      (let ((_e161100161173_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl161095161170_))))
                                        (let ((_hd161099161177_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e161100161173_)))
                                              (_tl161098161180_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e161100161173_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl161098161180_))
                                              (_loop161082161129_
                                               _lp-tl161085161150_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161099161177_
                                                       _symbol161086161136_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161096161167_
                                                       _method161087161138_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161093161157_
                                                       _type-t161088161140_)))
                                              (_g161071161106_
                                               _g161072161110_))))
                                      (_g161071161106_ _g161072161110_))))
                              (_g161071161106_ _g161072161110_))))
                      (_g161071161106_ _g161072161110_))))
              (let ((_symbol161089161183_ (reverse _symbol161086161136_))
                    (_method161090161186_ (reverse _method161087161138_))
                    (_type-t161091161188_ (reverse _type-t161088161140_)))
                ((lambda (_L161191_ _L161193_ _L161194_)
                   (let ((__tmp164241
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp164234
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161191_
                               _L161193_
                               _L161194_))
                            (let ((__tmp164235
                                   (lambda (_g161210161215_
                                            _g161211161218_
                                            _g161212161220_
                                            _g161213161222_)
                                     (let ((__tmp164236
                                            (let ((__tmp164240
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp164237
                                                   (let ((__tmp164238
                                                          (let ((__tmp164239
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g161210161215_ '()))))
                    (declare (not safe))
                    (cons _g161211161218_ __tmp164239))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161212161220_
                                                           __tmp164238))))
                                              (declare (not safe))
                                              (cons __tmp164240 __tmp164237))))
                                       (declare (not safe))
                                       (cons __tmp164236 _g161213161222_)))))
                              (declare (not safe))
                              (foldr* __tmp164235
                                      '()
                                      _L161191_
                                      _L161193_
                                      _L161194_)))))
                     (declare (not safe))
                     (cons __tmp164241 __tmp164234)))
                 _symbol161089161183_
                 _method161090161186_
                 _type-t161091161188_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop161082161129_
                                         _target161079161123_
                                         '()
                                         '()
                                         '()))
                                      (_g161071161106_ _g161072161110_)))))
                            (_g161071161106_ _g161072161110_))))
                    (_g161071161106_ _g161072161110_)))))
        (_g161070161225_ _$stx161067_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx161230_)
      (let* ((_g161234161267_
              (lambda (_g161235161263_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161235161263_))))
             (_g161233161381_
              (lambda (_g161235161271_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161235161271_))
                    (let ((_e161241161274_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161235161271_))))
                      (let ((_hd161240161278_
                             (let ()
                               (declare (not safe))
                               (##car _e161241161274_)))
                            (_tl161239161281_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161241161274_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161239161281_))
                            (let ((_e161244161284_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161239161281_))))
                              (let ((_hd161243161288_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161244161284_)))
                                    (_tl161242161291_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161244161284_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161242161291_))
                                    (let ((_g164242_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161242161291_
                                              '0))))
                                      (begin
                                        (let ((_g164243_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g164242_)
                                                     (##vector-length
                                                      _g164242_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g164243_ 2)))
                                              (error "Context expects 2 values"
                                                     _g164243_)))
                                        (let ((_target161245161294_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g164242_ 0)))
                                              (_tl161247161297_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g164242_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl161247161297_))
                                              (letrec ((_loop161248161300_
                                                        (lambda (_hd161246161304_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol161252161307_
                         _method161253161309_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd161246161304_))
                      (let ((_e161249161312_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd161246161304_))))
                        (let ((_lp-hd161250161316_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161249161312_)))
                              (_lp-tl161251161319_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161249161312_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd161250161316_))
                              (let ((_e161258161322_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd161250161316_))))
                                (let ((_hd161257161326_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e161258161322_)))
                                      (_tl161256161329_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e161258161322_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl161256161329_))
                                      (let ((_e161261161332_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl161256161329_))))
                                        (let ((_hd161260161336_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e161261161332_)))
                                              (_tl161259161339_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e161261161332_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl161259161339_))
                                              (_loop161248161300_
                                               _lp-tl161251161319_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161260161336_
                                                       _symbol161252161307_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd161257161326_
                                                       _method161253161309_)))
                                              (_g161234161267_
                                               _g161235161271_))))
                                      (_g161234161267_ _g161235161271_))))
                              (_g161234161267_ _g161235161271_))))
                      (let ((_symbol161254161342_
                             (reverse _symbol161252161307_))
                            (_method161255161345_
                             (reverse _method161253161309_)))
                        ((lambda (_L161348_ _L161350_ _L161351_)
                           (let ((__tmp164251
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp164244
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L161348_
                                       _L161350_))
                                    (let ((__tmp164245
                                           (lambda (_g161369161373_
                                                    _g161370161376_
                                                    _g161371161378_)
                                             (let ((__tmp164246
                                                    (let ((__tmp164250
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp164247
                                                           (let ((__tmp164248
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp164249
                                 (let ()
                                   (declare (not safe))
                                   (cons _g161369161373_ '()))))
                            (declare (not safe))
                            (cons _g161370161376_ __tmp164249))))
                     (declare (not safe))
                     (cons _L161351_ __tmp164248))))
              (declare (not safe))
              (cons __tmp164250 __tmp164247))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp164246
                                                     _g161371161378_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp164245
                                              '()
                                              _L161348_
                                              _L161350_)))))
                             (declare (not safe))
                             (cons __tmp164251 __tmp164244)))
                         _symbol161254161342_
                         _method161255161345_
                         _hd161243161288_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop161248161300_
                                                 _target161245161294_
                                                 '()
                                                 '()))
                                              (_g161234161267_
                                               _g161235161271_)))))
                                    (_g161234161267_ _g161235161271_))))
                            (_g161234161267_ _g161235161271_))))
                    (_g161234161267_ _g161235161271_)))))
        (_g161233161381_ _$stx161230_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx161386_)
      (let* ((_g161390161404_
              (lambda (_g161391161400_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161391161400_))))
             (_g161389161445_
              (lambda (_g161391161408_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161391161408_))
                    (let ((_e161395161411_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161391161408_))))
                      (let ((_hd161394161415_
                             (let ()
                               (declare (not safe))
                               (##car _e161395161411_)))
                            (_tl161393161418_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161395161411_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161393161418_))
                            (let ((_e161398161421_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161393161418_))))
                              (let ((_hd161397161425_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161398161421_)))
                                    (_tl161396161428_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161398161421_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161396161428_))
                                    ((lambda (_L161431_)
                                       (let ((__tmp164256
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp164252
                                              (let ((__tmp164253
                                                     (let ((__tmp164255
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp164254
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp164255 __tmp164254))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp164253 '()))))
                                         (declare (not safe))
                                         (cons __tmp164256 __tmp164252)))
                                     _hd161397161425_)
                                    (_g161390161404_ _g161391161408_))))
                            (_g161390161404_ _g161391161408_))))
                    (_g161390161404_ _g161391161408_)))))
        (_g161389161445_ _$stx161386_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx161449_)
      (let* ((_g161453161507_
              (lambda (_g161454161503_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161454161503_))))
             (_g161452161688_
              (lambda (_g161454161511_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161454161511_))
                    (let ((_e161468161514_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161454161511_))))
                      (let ((_hd161467161518_
                             (let ()
                               (declare (not safe))
                               (##car _e161468161514_)))
                            (_tl161466161521_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161468161514_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161466161521_))
                            (let ((_e161471161524_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161466161521_))))
                              (let ((_hd161470161528_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161471161524_)))
                                    (_tl161469161531_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161471161524_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161469161531_))
                                    (let ((_e161474161534_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161469161531_))))
                                      (let ((_hd161473161538_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161474161534_)))
                                            (_tl161472161541_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161474161534_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161472161541_))
                                            (let ((_e161477161544_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161472161541_))))
                                              (let ((_hd161476161548_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161477161544_)))
                                                    (_tl161475161551_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161477161544_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl161475161551_))
                                                    (let ((_e161480161554_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl161475161551_))))
                                                      (let ((_hd161479161558_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e161480161554_)))
                    (_tl161478161561_
                     (let () (declare (not safe)) (##cdr _e161480161554_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl161478161561_))
                    (let ((_e161483161564_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl161478161561_))))
                      (let ((_hd161482161568_
                             (let ()
                               (declare (not safe))
                               (##car _e161483161564_)))
                            (_tl161481161571_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161483161564_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161481161571_))
                            (let ((_e161486161574_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161481161571_))))
                              (let ((_hd161485161578_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161486161574_)))
                                    (_tl161484161581_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161486161574_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161484161581_))
                                    (let ((_e161489161584_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161484161581_))))
                                      (let ((_hd161488161588_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161489161584_)))
                                            (_tl161487161591_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161489161584_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161487161591_))
                                            (let ((_e161492161594_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161487161591_))))
                                              (let ((_hd161491161598_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161492161594_)))
                                                    (_tl161490161601_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161492161594_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl161490161601_))
                                                    (let ((_e161495161604_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl161490161601_))))
                                                      (let ((_hd161494161608_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e161495161604_)))
                    (_tl161493161611_
                     (let () (declare (not safe)) (##cdr _e161495161604_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl161493161611_))
                    (let ((_e161498161614_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl161493161611_))))
                      (let ((_hd161497161618_
                             (let ()
                               (declare (not safe))
                               (##car _e161498161614_)))
                            (_tl161496161621_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161498161614_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161496161621_))
                            (let ((_e161501161624_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161496161621_))))
                              (let ((_hd161500161628_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161501161624_)))
                                    (_tl161499161631_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161501161624_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161499161631_))
                                    ((lambda (_L161634_
                                              _L161636_
                                              _L161637_
                                              _L161638_
                                              _L161639_
                                              _L161640_
                                              _L161641_
                                              _L161642_
                                              _L161643_
                                              _L161644_
                                              _L161645_)
                                       (let ((__tmp164292
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class)))
                                             (__tmp164257
                                              (let ((__tmp164289
                                                     (let ((__tmp164291
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp164290
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp164291 __tmp164290)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp164258
                                                     (let ((__tmp164286
                                                            (let ((__tmp164288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote)))
                          (__tmp164287
                           (let () (declare (not safe)) (cons _L161644_ '()))))
                      (declare (not safe))
                      (cons __tmp164288 __tmp164287)))
                   (__tmp164259
                    (let ((__tmp164283
                           (let ((__tmp164285
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote)))
                                 (__tmp164284
                                  (let ()
                                    (declare (not safe))
                                    (cons _L161643_ '()))))
                             (declare (not safe))
                             (cons __tmp164285 __tmp164284)))
                          (__tmp164260
                           (let ((__tmp164280
                                  (let ((__tmp164282
                                         (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote)))
                                        (__tmp164281
                                         (let ()
                                           (declare (not safe))
                                           (cons _L161642_ '()))))
                                    (declare (not safe))
                                    (cons __tmp164282 __tmp164281)))
                                 (__tmp164261
                                  (let ((__tmp164277
                                         (let ((__tmp164279
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote)))
                                               (__tmp164278
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L161641_ '()))))
                                           (declare (not safe))
                                           (cons __tmp164279 __tmp164278)))
                                        (__tmp164262
                                         (let ((__tmp164274
                                                (let ((__tmp164276
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'quote)))
                                                      (__tmp164275
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L161640_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp164276
                                                        __tmp164275)))
                                               (__tmp164263
                                                (let ((__tmp164264
                                                       (let ((__tmp164265
                                                              (let ((__tmp164266
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp164271
                                    (let ((__tmp164273
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp164272
                                           (let ()
                                             (declare (not safe))
                                             (cons _L161636_ '()))))
                                      (declare (not safe))
                                      (cons __tmp164273 __tmp164272)))
                                   (__tmp164267
                                    (let ((__tmp164268
                                           (let ((__tmp164270
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'quote)))
                                                 (__tmp164269
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L161634_ '()))))
                                             (declare (not safe))
                                             (cons __tmp164270 __tmp164269))))
                                      (declare (not safe))
                                      (cons __tmp164268 '()))))
                               (declare (not safe))
                               (cons __tmp164271 __tmp164267))))
                        (declare (not safe))
                        (cons _L161637_ __tmp164266))))
                 (declare (not safe))
                 (cons _L161638_ __tmp164265))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L161639_
                                                        __tmp164264))))
                                           (declare (not safe))
                                           (cons __tmp164274 __tmp164263))))
                                    (declare (not safe))
                                    (cons __tmp164277 __tmp164262))))
                             (declare (not safe))
                             (cons __tmp164280 __tmp164261))))
                      (declare (not safe))
                      (cons __tmp164283 __tmp164260))))
               (declare (not safe))
               (cons __tmp164286 __tmp164259))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp164289
                                                      __tmp164258))))
                                         (declare (not safe))
                                         (cons __tmp164292 __tmp164257)))
                                     _hd161500161628_
                                     _hd161497161618_
                                     _hd161494161608_
                                     _hd161491161598_
                                     _hd161488161588_
                                     _hd161485161578_
                                     _hd161482161568_
                                     _hd161479161558_
                                     _hd161476161548_
                                     _hd161473161538_
                                     _hd161470161528_)
                                    (_g161453161507_ _g161454161511_))))
                            (_g161453161507_ _g161454161511_))))
                    (_g161453161507_ _g161454161511_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g161453161507_
                                                     _g161454161511_))))
                                            (_g161453161507_
                                             _g161454161511_))))
                                    (_g161453161507_ _g161454161511_))))
                            (_g161453161507_ _g161454161511_))))
                    (_g161453161507_ _g161454161511_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g161453161507_
                                                     _g161454161511_))))
                                            (_g161453161507_
                                             _g161454161511_))))
                                    (_g161453161507_ _g161454161511_))))
                            (_g161453161507_ _g161454161511_))))
                    (_g161453161507_ _g161454161511_)))))
        (_g161452161688_ _$stx161449_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx161692_)
      (let* ((_g161696161710_
              (lambda (_g161697161706_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161697161706_))))
             (_g161695161751_
              (lambda (_g161697161714_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161697161714_))
                    (let ((_e161701161717_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161697161714_))))
                      (let ((_hd161700161721_
                             (let ()
                               (declare (not safe))
                               (##car _e161701161717_)))
                            (_tl161699161724_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161701161717_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161699161724_))
                            (let ((_e161704161727_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161699161724_))))
                              (let ((_hd161703161731_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161704161727_)))
                                    (_tl161702161734_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161704161727_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161702161734_))
                                    ((lambda (_L161737_)
                                       (let ((__tmp164297
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp164293
                                              (let ((__tmp164294
                                                     (let ((__tmp164296
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp164295
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp164296 __tmp164295))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp164294 '()))))
                                         (declare (not safe))
                                         (cons __tmp164297 __tmp164293)))
                                     _hd161703161731_)
                                    (_g161696161710_ _g161697161714_))))
                            (_g161696161710_ _g161697161714_))))
                    (_g161696161710_ _g161697161714_)))))
        (_g161695161751_ _$stx161692_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx161755_)
      (let* ((_g161759161773_
              (lambda (_g161760161769_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161760161769_))))
             (_g161758161814_
              (lambda (_g161760161777_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161760161777_))
                    (let ((_e161764161780_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161760161777_))))
                      (let ((_hd161763161784_
                             (let ()
                               (declare (not safe))
                               (##car _e161764161780_)))
                            (_tl161762161787_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161764161780_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161762161787_))
                            (let ((_e161767161790_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161762161787_))))
                              (let ((_hd161766161794_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161767161790_)))
                                    (_tl161765161797_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161767161790_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161765161797_))
                                    ((lambda (_L161800_)
                                       (let ((__tmp164302
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp164298
                                              (let ((__tmp164299
                                                     (let ((__tmp164301
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp164300
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp164301 __tmp164300))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp164299 '()))))
                                         (declare (not safe))
                                         (cons __tmp164302 __tmp164298)))
                                     _hd161766161794_)
                                    (_g161759161773_ _g161760161777_))))
                            (_g161759161773_ _g161760161777_))))
                    (_g161759161773_ _g161760161777_)))))
        (_g161758161814_ _$stx161755_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx161818_)
      (let* ((_g161822161844_
              (lambda (_g161823161840_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161823161840_))))
             (_g161821161913_
              (lambda (_g161823161848_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161823161848_))
                    (let ((_e161829161851_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161823161848_))))
                      (let ((_hd161828161855_
                             (let ()
                               (declare (not safe))
                               (##car _e161829161851_)))
                            (_tl161827161858_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161829161851_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161827161858_))
                            (let ((_e161832161861_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161827161858_))))
                              (let ((_hd161831161865_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161832161861_)))
                                    (_tl161830161868_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161832161861_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161830161868_))
                                    (let ((_e161835161871_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161830161868_))))
                                      (let ((_hd161834161875_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161835161871_)))
                                            (_tl161833161878_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161835161871_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161833161878_))
                                            (let ((_e161838161881_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161833161878_))))
                                              (let ((_hd161837161885_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161838161881_)))
                                                    (_tl161836161888_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161838161881_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161836161888_))
                                                    ((lambda (_L161891_
                                                              _L161893_
                                                              _L161894_)
                                                       (let ((__tmp164312
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp164303
                      (let ((__tmp164309
                             (let ((__tmp164311
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp164310
                                    (let ()
                                      (declare (not safe))
                                      (cons _L161894_ '()))))
                               (declare (not safe))
                               (cons __tmp164311 __tmp164310)))
                            (__tmp164304
                             (let ((__tmp164306
                                    (let ((__tmp164308
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp164307
                                           (let ()
                                             (declare (not safe))
                                             (cons _L161893_ '()))))
                                      (declare (not safe))
                                      (cons __tmp164308 __tmp164307)))
                                   (__tmp164305
                                    (let ()
                                      (declare (not safe))
                                      (cons _L161891_ '()))))
                               (declare (not safe))
                               (cons __tmp164306 __tmp164305))))
                        (declare (not safe))
                        (cons __tmp164309 __tmp164304))))
                 (declare (not safe))
                 (cons __tmp164312 __tmp164303)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd161837161885_
                                                     _hd161834161875_
                                                     _hd161831161865_)
                                                    (_g161822161844_
                                                     _g161823161848_))))
                                            (_g161822161844_
                                             _g161823161848_))))
                                    (_g161822161844_ _g161823161848_))))
                            (_g161822161844_ _g161823161848_))))
                    (_g161822161844_ _g161823161848_)))))
        (_g161821161913_ _$stx161818_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx161917_)
      (let* ((_g161921161943_
              (lambda (_g161922161939_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161922161939_))))
             (_g161920162012_
              (lambda (_g161922161947_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161922161947_))
                    (let ((_e161928161950_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161922161947_))))
                      (let ((_hd161927161954_
                             (let ()
                               (declare (not safe))
                               (##car _e161928161950_)))
                            (_tl161926161957_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161928161950_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161926161957_))
                            (let ((_e161931161960_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161926161957_))))
                              (let ((_hd161930161964_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161931161960_)))
                                    (_tl161929161967_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161931161960_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161929161967_))
                                    (let ((_e161934161970_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161929161967_))))
                                      (let ((_hd161933161974_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161934161970_)))
                                            (_tl161932161977_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161934161970_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161932161977_))
                                            (let ((_e161937161980_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161932161977_))))
                                              (let ((_hd161936161984_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161937161980_)))
                                                    (_tl161935161987_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161937161980_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161935161987_))
                                                    ((lambda (_L161990_
                                                              _L161992_
                                                              _L161993_)
                                                       (let ((__tmp164322
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp164313
                      (let ((__tmp164319
                             (let ((__tmp164321
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp164320
                                    (let ()
                                      (declare (not safe))
                                      (cons _L161993_ '()))))
                               (declare (not safe))
                               (cons __tmp164321 __tmp164320)))
                            (__tmp164314
                             (let ((__tmp164316
                                    (let ((__tmp164318
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp164317
                                           (let ()
                                             (declare (not safe))
                                             (cons _L161992_ '()))))
                                      (declare (not safe))
                                      (cons __tmp164318 __tmp164317)))
                                   (__tmp164315
                                    (let ()
                                      (declare (not safe))
                                      (cons _L161990_ '()))))
                               (declare (not safe))
                               (cons __tmp164316 __tmp164315))))
                        (declare (not safe))
                        (cons __tmp164319 __tmp164314))))
                 (declare (not safe))
                 (cons __tmp164322 __tmp164313)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd161936161984_
                                                     _hd161933161974_
                                                     _hd161930161964_)
                                                    (_g161921161943_
                                                     _g161922161947_))))
                                            (_g161921161943_
                                             _g161922161947_))))
                                    (_g161921161943_ _g161922161947_))))
                            (_g161921161943_ _g161922161947_))))
                    (_g161921161943_ _g161922161947_)))))
        (_g161920162012_ _$stx161917_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx162016_)
      (let* ((___stx163831163832_ _$stx162016_)
             (_g162024162092_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163831163832_)))))
        (let ((___kont163834163835_
               (lambda (_L162370_ _L162372_)
                 (let ((__tmp164343
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp164323
                        (let ((__tmp164339
                               (let ((__tmp164342
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164340
                                      (let ((__tmp164341
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp164341 '()))))
                                 (declare (not safe))
                                 (cons __tmp164342 __tmp164340)))
                              (__tmp164324
                               (let ((__tmp164336
                                      (let ((__tmp164338
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164337
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162372_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164338 __tmp164337)))
                                     (__tmp164325
                                      (let ((__tmp164326
                                             (let ((__tmp164327
                                                    (let ((__tmp164328
                                                           (let ((__tmp164335
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp164329
                          (let ((__tmp164330
                                 (let ((__tmp164334
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@lambda)))
                                       (__tmp164331
                                        (let ((__tmp164332
                                               (let ((__tmp164333
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L162370_ '()))))
                                                 (declare (not safe))
                                                 (cons 'inline: __tmp164333))))
                                          (declare (not safe))
                                          (cons _L162372_ __tmp164332))))
                                   (declare (not safe))
                                   (cons __tmp164334 __tmp164331))))
                            (declare (not safe))
                            (cons __tmp164330 '()))))
                     (declare (not safe))
                     (cons __tmp164335 __tmp164329))))
              (declare (not safe))
              (cons __tmp164328 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L162370_ __tmp164327))))
                                        (declare (not safe))
                                        (cons '#f __tmp164326))))
                                 (declare (not safe))
                                 (cons __tmp164336 __tmp164325))))
                          (declare (not safe))
                          (cons __tmp164339 __tmp164324))))
                   (declare (not safe))
                   (cons __tmp164343 __tmp164323))))
              (___kont163836163837_
               (lambda (_L162301_ _L162303_)
                 (let ((__tmp164344
                        (let ((__tmp164345
                               (let ((__tmp164346
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L162301_ __tmp164346))))
                          (declare (not safe))
                          (cons 'primitive: __tmp164345))))
                   (declare (not safe))
                   (cons _L162303_ __tmp164344))))
              (___kont163838163839_
               (lambda (_L162240_ _L162242_)
                 (let ((__tmp164360
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp164347
                        (let ((__tmp164356
                               (let ((__tmp164359
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164357
                                      (let ((__tmp164358
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp164358 '()))))
                                 (declare (not safe))
                                 (cons __tmp164359 __tmp164357)))
                              (__tmp164348
                               (let ((__tmp164353
                                      (let ((__tmp164355
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164354
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162242_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164355 __tmp164354)))
                                     (__tmp164349
                                      (let ((__tmp164350
                                             (let ((__tmp164352
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp164351
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L162240_ '()))))
                                               (declare (not safe))
                                               (cons __tmp164352
                                                     __tmp164351))))
                                        (declare (not safe))
                                        (cons __tmp164350 '()))))
                                 (declare (not safe))
                                 (cons __tmp164353 __tmp164349))))
                          (declare (not safe))
                          (cons __tmp164356 __tmp164348))))
                   (declare (not safe))
                   (cons __tmp164360 __tmp164347))))
              (___kont163840163841_
               (lambda (_L162172_ _L162174_)
                 (let ((__tmp164374
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp164361
                        (let ((__tmp164370
                               (let ((__tmp164373
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164371
                                      (let ((__tmp164372
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp164372 '()))))
                                 (declare (not safe))
                                 (cons __tmp164373 __tmp164371)))
                              (__tmp164362
                               (let ((__tmp164367
                                      (let ((__tmp164369
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164368
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162174_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164369 __tmp164368)))
                                     (__tmp164363
                                      (let ((__tmp164364
                                             (let ((__tmp164366
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp164365
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L162172_ '()))))
                                               (declare (not safe))
                                               (cons __tmp164366
                                                     __tmp164365))))
                                        (declare (not safe))
                                        (cons __tmp164364 '()))))
                                 (declare (not safe))
                                 (cons __tmp164367 __tmp164363))))
                          (declare (not safe))
                          (cons __tmp164370 __tmp164362))))
                   (declare (not safe))
                   (cons __tmp164374 __tmp164361))))
              (___kont163842163843_
               (lambda (_L162119_ _L162121_)
                 (let ((__tmp164375
                        (let ((__tmp164376
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L162119_ __tmp164376))))
                   (declare (not safe))
                   (cons _L162121_ __tmp164375)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx163831163832_))
              (let ((_e162030162326_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx163831163832_))))
                (let ((_tl162028162333_
                       (let () (declare (not safe)) (##cdr _e162030162326_)))
                      (_hd162029162330_
                       (let () (declare (not safe)) (##car _e162030162326_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl162028162333_))
                      (let ((_e162033162336_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl162028162333_))))
                        (let ((_tl162031162343_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e162033162336_)))
                              (_hd162032162340_
                               (let ()
                                 (declare (not safe))
                                 (##car _e162033162336_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl162031162343_))
                              (let ((_e162036162346_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl162031162343_))))
                                (let ((_tl162034162353_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e162036162346_)))
                                      (_hd162035162350_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e162036162346_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd162035162350_))
                                      (let ((_e162037162356_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd162035162350_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e162037162356_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl162034162353_))
                                                (let ((_e162040162360_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl162034162353_))))
                                                  (let ((_tl162038162367_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e162040162360_)))
                                                        (_hd162039162364_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e162040162360_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl162038162367_))
                                                        (___kont163834163835_
                                                         _hd162039162364_
                                                         _hd162032162340_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd162032162340_))
                                                            (let ((_e162049162287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd162032162340_))))
                      (declare (not safe))
                      (_g162024162092_))
                    (let () (declare (not safe)) (_g162024162092_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd162032162340_))
                                                    (let ((_e162049162287_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd162032162340_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e162049162287_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162034162353_))
                      (___kont163836163837_ _hd162035162350_ _hd162029162330_)
                      (let () (declare (not safe)) (_g162024162092_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162034162353_))
                      (___kont163840163841_ _hd162035162350_ _hd162032162340_)
                      (let () (declare (not safe)) (_g162024162092_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl162034162353_))
                                                        (___kont163840163841_
                                                         _hd162035162350_
                                                         _hd162032162340_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g162024162092_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd162032162340_))
                                                (let ((_e162049162287_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd162032162340_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e162049162287_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl162034162353_))
                                                          (___kont163836163837_
                                                           _hd162035162350_
                                                           _hd162029162330_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl162034162353_))
                      (let ((_e162067162230_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl162034162353_))))
                        (let ((_tl162065162237_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e162067162230_)))
                              (_hd162066162234_
                               (let ()
                                 (declare (not safe))
                                 (##car _e162067162230_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl162065162237_))
                              (___kont163838163839_
                               _hd162066162234_
                               _hd162035162350_)
                              (let ()
                                (declare (not safe))
                                (_g162024162092_)))))
                      (let () (declare (not safe)) (_g162024162092_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl162034162353_))
                  (___kont163840163841_ _hd162035162350_ _hd162032162340_)
                  (let () (declare (not safe)) (_g162024162092_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl162034162353_))
                                                    (___kont163840163841_
                                                     _hd162035162350_
                                                     _hd162032162340_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g162024162092_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd162032162340_))
                                          (let ((_e162049162287_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd162032162340_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e162049162287_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl162034162353_))
                                                    (___kont163836163837_
                                                     _hd162035162350_
                                                     _hd162029162330_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl162034162353_))
                                                        (let ((_e162067162230_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl162034162353_))))
                  (let ((_tl162065162237_
                         (let () (declare (not safe)) (##cdr _e162067162230_)))
                        (_hd162066162234_
                         (let ()
                           (declare (not safe))
                           (##car _e162067162230_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl162065162237_))
                        (___kont163838163839_
                         _hd162066162234_
                         _hd162035162350_)
                        (let () (declare (not safe)) (_g162024162092_)))))
                (let () (declare (not safe)) (_g162024162092_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl162034162353_))
                                                    (___kont163840163841_
                                                     _hd162035162350_
                                                     _hd162032162340_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g162024162092_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl162034162353_))
                                              (___kont163840163841_
                                               _hd162035162350_
                                               _hd162032162340_)
                                              (let ()
                                                (declare (not safe))
                                                (_g162024162092_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd162032162340_))
                                  (let ((_e162049162287_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd162032162340_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl162031162343_))
                                        (___kont163842163843_
                                         _hd162032162340_
                                         _hd162029162330_)
                                        (let ()
                                          (declare (not safe))
                                          (_g162024162092_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl162031162343_))
                                      (___kont163842163843_
                                       _hd162032162340_
                                       _hd162029162330_)
                                      (let ()
                                        (declare (not safe))
                                        (_g162024162092_)))))))
                      (let () (declare (not safe)) (_g162024162092_)))))
              (let () (declare (not safe)) (_g162024162092_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx162394_)
      (let* ((___stx163971163972_ _$stx162394_)
             (_g162399162454_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163971163972_)))))
        (let ((___kont163974163975_
               (lambda (_L162639_ _L162641_)
                 (let ((__tmp164392
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp164377
                        (let ((__tmp164388
                               (let ((__tmp164391
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164389
                                      (let ((__tmp164390
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp164390 '()))))
                                 (declare (not safe))
                                 (cons __tmp164391 __tmp164389)))
                              (__tmp164378
                               (let ((__tmp164379
                                      (let ((__tmp164387
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp164380
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L162639_
                                                  _L162641_))
                                               (let ((__tmp164381
                                                      (lambda (_g162658162662_
                                                               _g162659162665_
                                                               _g162660162667_)
                                                        (let ((__tmp164382
                                                               (let ((__tmp164386
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp164383
                              (let ((__tmp164384
                                     (let ((__tmp164385
                                            (let ()
                                              (declare (not safe))
                                              (cons _g162658162662_ '()))))
                                       (declare (not safe))
                                       (cons _g162659162665_ __tmp164385))))
                                (declare (not safe))
                                (cons 'primitive: __tmp164384))))
                         (declare (not safe))
                         (cons __tmp164386 __tmp164383))))
                  (declare (not safe))
                  (cons __tmp164382 _g162660162667_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp164381
                                                         '()
                                                         _L162639_
                                                         _L162641_)))))
                                        (declare (not safe))
                                        (cons __tmp164387 __tmp164380))))
                                 (declare (not safe))
                                 (cons __tmp164379 '()))))
                          (declare (not safe))
                          (cons __tmp164388 __tmp164378))))
                   (declare (not safe))
                   (cons __tmp164392 __tmp164377))))
              (___kont163978163979_
               (lambda (_L162525_ _L162527_)
                 (let ((__tmp164407
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp164393
                        (let ((__tmp164403
                               (let ((__tmp164406
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164404
                                      (let ((__tmp164405
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp164405 '()))))
                                 (declare (not safe))
                                 (cons __tmp164406 __tmp164404)))
                              (__tmp164394
                               (let ((__tmp164395
                                      (let ((__tmp164402
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp164396
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L162525_
                                                  _L162527_))
                                               (let ((__tmp164397
                                                      (lambda (_g162542162546_
                                                               _g162543162549_
                                                               _g162544162551_)
                                                        (let ((__tmp164398
                                                               (let ((__tmp164401
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp164399
                              (let ((__tmp164400
                                     (let ()
                                       (declare (not safe))
                                       (cons _g162542162546_ '()))))
                                (declare (not safe))
                                (cons _g162543162549_ __tmp164400))))
                         (declare (not safe))
                         (cons __tmp164401 __tmp164399))))
                  (declare (not safe))
                  (cons __tmp164398 _g162544162551_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp164397
                                                         '()
                                                         _L162525_
                                                         _L162527_)))))
                                        (declare (not safe))
                                        (cons __tmp164402 __tmp164396))))
                                 (declare (not safe))
                                 (cons __tmp164395 '()))))
                          (declare (not safe))
                          (cons __tmp164403 __tmp164394))))
                   (declare (not safe))
                   (cons __tmp164407 __tmp164393)))))
          (let* ((___match164022164023_
                  (lambda (_e162431162461_
                           _hd162430162465_
                           _tl162429162468_
                           ___splice163980163981_
                           _target162432162471_
                           _tl162434162474_)
                    (letrec ((_loop162435162477_
                              (lambda (_hd162433162481_
                                       _dispatch162439162484_
                                       _arity162440162486_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162433162481_))
                                    (let ((_e162436162489_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162433162481_))))
                                      (let ((_lp-tl162438162496_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162436162489_)))
                                            (_lp-hd162437162493_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162436162489_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd162437162493_))
                                            (let ((_e162445162499_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd162437162493_))))
                                              (let ((_tl162443162506_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e162445162499_)))
                                                    (_hd162444162503_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e162445162499_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl162443162506_))
                                                    (let ((_e162448162509_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl162443162506_))))
                                                      (let ((_tl162446162516_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e162448162509_)))
                    (_hd162447162513_
                     (let () (declare (not safe)) (##car _e162448162509_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl162446162516_))
                    (_loop162435162477_
                     _lp-tl162438162496_
                     (let ()
                       (declare (not safe))
                       (cons _hd162447162513_ _dispatch162439162484_))
                     (let ()
                       (declare (not safe))
                       (cons _hd162444162503_ _arity162440162486_)))
                    (let () (declare (not safe)) (_g162399162454_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g162399162454_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g162399162454_)))))
                                    (let ((_arity162442162522_
                                           (reverse _arity162440162486_))
                                          (_dispatch162441162519_
                                           (reverse _dispatch162439162484_)))
                                      (___kont163978163979_
                                       _dispatch162441162519_
                                       _arity162442162522_))))))
                      (_loop162435162477_ _target162432162471_ '() '()))))
                 (___match164014164015_
                  (lambda (_e162431162461_ _hd162430162465_ _tl162429162468_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl162429162468_))
                        (let ((___splice163980163981_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl162429162468_
                                  '0))))
                          (let ((_tl162434162474_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice163980163981_ '1)))
                                (_target162432162471_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice163980163981_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl162434162474_))
                                (___match164022164023_
                                 _e162431162461_
                                 _hd162430162465_
                                 _tl162429162468_
                                 ___splice163980163981_
                                 _target162432162471_
                                 _tl162434162474_)
                                (let ()
                                  (declare (not safe))
                                  (_g162399162454_)))))
                        (let () (declare (not safe)) (_g162399162454_)))))
                 (___match164008164009_
                  (lambda (_e162405162561_
                           _hd162404162565_
                           _tl162403162568_
                           _e162408162571_
                           _hd162407162575_
                           _tl162406162578_
                           _e162409162581_
                           ___splice163976163977_
                           _target162410162585_
                           _tl162412162588_)
                    (letrec ((_loop162413162591_
                              (lambda (_hd162411162595_
                                       _dispatch162417162598_
                                       _arity162418162600_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162411162595_))
                                    (let ((_e162414162603_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162411162595_))))
                                      (let ((_lp-tl162416162610_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162414162603_)))
                                            (_lp-hd162415162607_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162414162603_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd162415162607_))
                                            (let ((_e162423162613_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd162415162607_))))
                                              (let ((_tl162421162620_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e162423162613_)))
                                                    (_hd162422162617_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e162423162613_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl162421162620_))
                                                    (let ((_e162426162623_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl162421162620_))))
                                                      (let ((_tl162424162630_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e162426162623_)))
                    (_hd162425162627_
                     (let () (declare (not safe)) (##car _e162426162623_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl162424162630_))
                    (_loop162413162591_
                     _lp-tl162416162610_
                     (let ()
                       (declare (not safe))
                       (cons _hd162425162627_ _dispatch162417162598_))
                     (let ()
                       (declare (not safe))
                       (cons _hd162422162617_ _arity162418162600_)))
                    (___match164014164015_
                     _e162405162561_
                     _hd162404162565_
                     _tl162403162568_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match164014164015_
                                                     _e162405162561_
                                                     _hd162404162565_
                                                     _tl162403162568_))))
                                            (___match164014164015_
                                             _e162405162561_
                                             _hd162404162565_
                                             _tl162403162568_))))
                                    (let ((_arity162420162636_
                                           (reverse _arity162418162600_))
                                          (_dispatch162419162633_
                                           (reverse _dispatch162417162598_)))
                                      (___kont163974163975_
                                       _dispatch162419162633_
                                       _arity162420162636_))))))
                      (_loop162413162591_ _target162410162585_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx163971163972_))
                (let ((_e162405162561_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx163971163972_))))
                  (let ((_tl162403162568_
                         (let () (declare (not safe)) (##cdr _e162405162561_)))
                        (_hd162404162565_
                         (let ()
                           (declare (not safe))
                           (##car _e162405162561_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl162403162568_))
                        (let ((_e162408162571_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl162403162568_))))
                          (let ((_tl162406162578_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e162408162571_)))
                                (_hd162407162575_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e162408162571_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd162407162575_))
                                (let ((_e162409162581_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd162407162575_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e162409162581_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl162406162578_))
                                          (let ((___splice163976163977_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl162406162578_
                                                    '0))))
                                            (let ((_tl162412162588_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163976163977_
                                                      '1)))
                                                  (_target162410162585_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163976163977_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl162412162588_))
                                                  (___match164008164009_
                                                   _e162405162561_
                                                   _hd162404162565_
                                                   _tl162403162568_
                                                   _e162408162571_
                                                   _hd162407162575_
                                                   _tl162406162578_
                                                   _e162409162581_
                                                   ___splice163976163977_
                                                   _target162410162585_
                                                   _tl162412162588_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl162403162568_))
                                                      (let ((___splice163980163981_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl162403162568_ '0))))
                (let ((_tl162434162474_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163980163981_ '1)))
                      (_target162432162471_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163980163981_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162434162474_))
                      (___match164022164023_
                       _e162405162561_
                       _hd162404162565_
                       _tl162403162568_
                       ___splice163980163981_
                       _target162432162471_
                       _tl162434162474_)
                      (let () (declare (not safe)) (_g162399162454_)))))
              (let () (declare (not safe)) (_g162399162454_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl162403162568_))
                                              (let ((___splice163980163981_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl162403162568_
                                                        '0))))
                                                (let ((_tl162434162474_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice163980163981_
                                                          '1)))
                                                      (_target162432162471_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice163980163981_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl162434162474_))
                                                      (___match164022164023_
                                                       _e162405162561_
                                                       _hd162404162565_
                                                       _tl162403162568_
                                                       ___splice163980163981_
                                                       _target162432162471_
                                                       _tl162434162474_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g162399162454_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g162399162454_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl162403162568_))
                                          (let ((___splice163980163981_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl162403162568_
                                                    '0))))
                                            (let ((_tl162434162474_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163980163981_
                                                      '1)))
                                                  (_target162432162471_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163980163981_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl162434162474_))
                                                  (___match164022164023_
                                                   _e162405162561_
                                                   _hd162404162565_
                                                   _tl162403162568_
                                                   ___splice163980163981_
                                                   _target162432162471_
                                                   _tl162434162474_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g162399162454_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g162399162454_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl162403162568_))
                                    (let ((___splice163980163981_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl162403162568_
                                              '0))))
                                      (let ((_tl162434162474_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163980163981_
                                                '1)))
                                            (_target162432162471_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163980163981_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162434162474_))
                                            (___match164022164023_
                                             _e162405162561_
                                             _hd162404162565_
                                             _tl162403162568_
                                             ___splice163980163981_
                                             _target162432162471_
                                             _tl162434162474_)
                                            (let ()
                                              (declare (not safe))
                                              (_g162399162454_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g162399162454_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl162403162568_))
                            (let ((___splice163980163981_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl162403162568_
                                      '0))))
                              (let ((_tl162434162474_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice163980163981_
                                        '1)))
                                    (_target162432162471_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice163980163981_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl162434162474_))
                                    (___match164022164023_
                                     _e162405162561_
                                     _hd162404162565_
                                     _tl162403162568_
                                     ___splice163980163981_
                                     _target162432162471_
                                     _tl162434162474_)
                                    (let ()
                                      (declare (not safe))
                                      (_g162399162454_)))))
                            (let () (declare (not safe)) (_g162399162454_))))))
                (let () (declare (not safe)) (_g162399162454_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx162676_)
      (let* ((_g162680162698_
              (lambda (_g162681162694_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g162681162694_))))
             (_g162679162753_
              (lambda (_g162681162702_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g162681162702_))
                    (let ((_e162686162705_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g162681162702_))))
                      (let ((_hd162685162709_
                             (let ()
                               (declare (not safe))
                               (##car _e162686162705_)))
                            (_tl162684162712_
                             (let ()
                               (declare (not safe))
                               (##cdr _e162686162705_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl162684162712_))
                            (let ((_e162689162715_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl162684162712_))))
                              (let ((_hd162688162719_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e162689162715_)))
                                    (_tl162687162722_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e162689162715_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl162687162722_))
                                    (let ((_e162692162725_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl162687162722_))))
                                      (let ((_hd162691162729_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162692162725_)))
                                            (_tl162690162732_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162692162725_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162690162732_))
                                            ((lambda (_L162735_ _L162737_)
                                               (let ((__tmp164421
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp164408
                                                      (let ((__tmp164417
                                                             (let ((__tmp164420
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp164418
                            (let ((__tmp164419
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp164419 '()))))
                       (declare (not safe))
                       (cons __tmp164420 __tmp164418)))
                    (__tmp164409
                     (let ((__tmp164414
                            (let ((__tmp164416
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp164415
                                   (let ()
                                     (declare (not safe))
                                     (cons _L162737_ '()))))
                              (declare (not safe))
                              (cons __tmp164416 __tmp164415)))
                           (__tmp164410
                            (let ((__tmp164411
                                   (let ((__tmp164413
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp164412
                                          (let ()
                                            (declare (not safe))
                                            (cons _L162735_ '()))))
                                     (declare (not safe))
                                     (cons __tmp164413 __tmp164412))))
                              (declare (not safe))
                              (cons __tmp164411 '()))))
                       (declare (not safe))
                       (cons __tmp164414 __tmp164410))))
                (declare (not safe))
                (cons __tmp164417 __tmp164409))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp164421
                                                       __tmp164408)))
                                             _hd162691162729_
                                             _hd162688162719_)
                                            (_g162680162698_
                                             _g162681162702_))))
                                    (_g162680162698_ _g162681162702_))))
                            (_g162680162698_ _g162681162702_))))
                    (_g162680162698_ _g162681162702_)))))
        (_g162679162753_ _$stx162676_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx162757_)
      (let* ((_g162761162779_
              (lambda (_g162762162775_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g162762162775_))))
             (_g162760162834_
              (lambda (_g162762162783_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g162762162783_))
                    (let ((_e162767162786_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g162762162783_))))
                      (let ((_hd162766162790_
                             (let ()
                               (declare (not safe))
                               (##car _e162767162786_)))
                            (_tl162765162793_
                             (let ()
                               (declare (not safe))
                               (##cdr _e162767162786_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl162765162793_))
                            (let ((_e162770162796_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl162765162793_))))
                              (let ((_hd162769162800_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e162770162796_)))
                                    (_tl162768162803_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e162770162796_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl162768162803_))
                                    (let ((_e162773162806_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl162768162803_))))
                                      (let ((_hd162772162810_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162773162806_)))
                                            (_tl162771162813_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162773162806_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162771162813_))
                                            ((lambda (_L162816_ _L162818_)
                                               (let ((__tmp164435
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp164422
                                                      (let ((__tmp164431
                                                             (let ((__tmp164434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp164432
                            (let ((__tmp164433
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp164433 '()))))
                       (declare (not safe))
                       (cons __tmp164434 __tmp164432)))
                    (__tmp164423
                     (let ((__tmp164428
                            (let ((__tmp164430
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp164429
                                   (let ()
                                     (declare (not safe))
                                     (cons _L162818_ '()))))
                              (declare (not safe))
                              (cons __tmp164430 __tmp164429)))
                           (__tmp164424
                            (let ((__tmp164425
                                   (let ((__tmp164427
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp164426
                                          (let ()
                                            (declare (not safe))
                                            (cons _L162816_ '()))))
                                     (declare (not safe))
                                     (cons __tmp164427 __tmp164426))))
                              (declare (not safe))
                              (cons __tmp164425 '()))))
                       (declare (not safe))
                       (cons __tmp164428 __tmp164424))))
                (declare (not safe))
                (cons __tmp164431 __tmp164423))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp164435
                                                       __tmp164422)))
                                             _hd162772162810_
                                             _hd162769162800_)
                                            (_g162761162779_
                                             _g162762162783_))))
                                    (_g162761162779_ _g162762162783_))))
                            (_g162761162779_ _g162762162783_))))
                    (_g162761162779_ _g162762162783_)))))
        (_g162760162834_ _$stx162757_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx162838_)
      (let* ((___stx164025164026_ _$stx162838_)
             (_g162845162916_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx164025164026_)))))
        (let ((___kont164028164029_
               (lambda (_L163207_ _L163209_)
                 (let ((__tmp164441
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164436
                        (let ((__tmp164437
                               (let ((__tmp164438
                                      (let ((__tmp164440
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp164439
                                             (let ()
                                               (declare (not safe))
                                               (cons _L163207_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164440 __tmp164439))))
                                 (declare (not safe))
                                 (cons __tmp164438 '()))))
                          (declare (not safe))
                          (cons _L163209_ __tmp164437))))
                   (declare (not safe))
                   (cons __tmp164441 __tmp164436))))
              (___kont164030164031_
               (lambda (_L163126_ _L163128_)
                 (let ((__tmp164450
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164442
                        (let ((__tmp164443
                               (let ((__tmp164444
                                      (let ((__tmp164449
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp164445
                                             (let ((__tmp164446
                                                    (lambda (_g163147163150_
                                                             _g163148163153_)
                                                      (let ((__tmp164447
                                                             (let ((__tmp164448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g163147163150_ __tmp164448))))
                (declare (not safe))
                (cons __tmp164447 _g163148163153_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp164446
                                                       '()
                                                       _L163126_))))
                                        (declare (not safe))
                                        (cons __tmp164449 __tmp164445))))
                                 (declare (not safe))
                                 (cons __tmp164444 '()))))
                          (declare (not safe))
                          (cons _L163128_ __tmp164443))))
                   (declare (not safe))
                   (cons __tmp164450 __tmp164442))))
              (___kont164034164035_
               (lambda (_L163038_ _L163040_)
                 (let ((__tmp164457
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164451
                        (let ((__tmp164452
                               (let ((__tmp164453
                                      (let ((__tmp164456
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp164454
                                             (let ((__tmp164455
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L163038_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp164455))))
                                        (declare (not safe))
                                        (cons __tmp164456 __tmp164454))))
                                 (declare (not safe))
                                 (cons __tmp164453 '()))))
                          (declare (not safe))
                          (cons _L163040_ __tmp164452))))
                   (declare (not safe))
                   (cons __tmp164457 __tmp164451))))
              (___kont164036164037_
               (lambda (_L162973_ _L162975_)
                 (let ((__tmp164467
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164458
                        (let ((__tmp164459
                               (let ((__tmp164460
                                      (let ((__tmp164466
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp164461
                                             (let ((__tmp164462
                                                    (let ((__tmp164463
                                                           (lambda (_g162992162995_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g162993162998_)
                     (let ((__tmp164464
                            (let ((__tmp164465
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g162992162995_ __tmp164465))))
                       (declare (not safe))
                       (cons __tmp164464 _g162993162998_)))))
              (declare (not safe))
              (foldr1 __tmp164463 '() _L162973_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp164462))))
                                        (declare (not safe))
                                        (cons __tmp164466 __tmp164461))))
                                 (declare (not safe))
                                 (cons __tmp164460 '()))))
                          (declare (not safe))
                          (cons _L162975_ __tmp164459))))
                   (declare (not safe))
                   (cons __tmp164467 __tmp164458)))))
          (let* ((___match164144164145_
                  (lambda (_e162898162923_
                           _hd162897162927_
                           _tl162896162930_
                           _e162901162933_
                           _hd162900162937_
                           _tl162899162940_
                           ___splice164038164039_
                           _target162902162943_
                           _tl162904162946_)
                    (letrec ((_loop162905162949_
                              (lambda (_hd162903162953_ _arity162909162956_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162903162953_))
                                    (let ((_e162906162959_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162903162953_))))
                                      (let ((_lp-tl162908162966_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162906162959_)))
                                            (_lp-hd162907162963_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162906162959_))))
                                        (_loop162905162949_
                                         _lp-tl162908162966_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd162907162963_
                                                 _arity162909162956_)))))
                                    (let ((_arity162910162969_
                                           (reverse _arity162909162956_)))
                                      (___kont164036164037_
                                       _arity162910162969_
                                       _hd162900162937_))))))
                      (_loop162905162949_ _target162902162943_ '()))))
                 (___match164104164105_
                  (lambda (_e162866163062_
                           _hd162865163066_
                           _tl162864163069_
                           _e162869163072_
                           _hd162868163076_
                           _tl162867163079_
                           _e162872163082_
                           _hd162871163086_
                           _tl162870163089_
                           _e162873163092_
                           ___splice164032164033_
                           _target162874163096_
                           _tl162876163099_)
                    (letrec ((_loop162877163102_
                              (lambda (_hd162875163106_ _arity162881163109_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162875163106_))
                                    (let ((_e162878163112_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162875163106_))))
                                      (let ((_lp-tl162880163119_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162878163112_)))
                                            (_lp-hd162879163116_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162878163112_))))
                                        (_loop162877163102_
                                         _lp-tl162880163119_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd162879163116_
                                                 _arity162881163109_)))))
                                    (let ((_arity162882163122_
                                           (reverse _arity162881163109_)))
                                      (___kont164030164031_
                                       _arity162882163122_
                                       _hd162868163076_))))))
                      (_loop162877163102_ _target162874163096_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx164025164026_))
                (let ((_e162851163163_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx164025164026_))))
                  (let ((_tl162849163170_
                         (let () (declare (not safe)) (##cdr _e162851163163_)))
                        (_hd162850163167_
                         (let ()
                           (declare (not safe))
                           (##car _e162851163163_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl162849163170_))
                        (let ((_e162854163173_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl162849163170_))))
                          (let ((_tl162852163180_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e162854163173_)))
                                (_hd162853163177_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e162854163173_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl162852163180_))
                                (let ((_e162857163183_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl162852163180_))))
                                  (let ((_tl162855163190_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e162857163183_)))
                                        (_hd162856163187_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e162857163183_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd162856163187_))
                                        (let ((_e162858163193_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd162856163187_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e162858163193_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl162855163190_))
                                                  (let ((_e162861163197_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl162855163190_))))
                                                    (let ((_tl162859163204_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e162861163197_)))
                                                          (_hd162860163201_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e162861163197_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl162859163204_))
                                                          (___kont164028164029_
                                                           _hd162860163201_
                                                           _hd162853163177_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl162855163190_))
                      (let ((___splice164032164033_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl162855163190_ '0))))
                        (let ((_tl162876163099_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice164032164033_ '1)))
                              (_target162874163096_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice164032164033_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl162876163099_))
                              (___match164104164105_
                               _e162851163163_
                               _hd162850163167_
                               _tl162849163170_
                               _e162854163173_
                               _hd162853163177_
                               _tl162852163180_
                               _e162857163183_
                               _hd162856163187_
                               _tl162855163190_
                               _e162858163193_
                               ___splice164032164033_
                               _target162874163096_
                               _tl162876163099_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl162852163180_))
                                  (let ((___splice164038164039_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl162852163180_
                                            '0))))
                                    (let ((_tl162904162946_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice164038164039_
                                              '1)))
                                          (_target162902162943_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice164038164039_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl162904162946_))
                                          (___match164144164145_
                                           _e162851163163_
                                           _hd162850163167_
                                           _tl162849163170_
                                           _e162854163173_
                                           _hd162853163177_
                                           _tl162852163180_
                                           ___splice164038164039_
                                           _target162902162943_
                                           _tl162904162946_)
                                          (let ()
                                            (declare (not safe))
                                            (_g162845162916_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g162845162916_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl162852163180_))
                          (let ((___splice164038164039_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl162852163180_
                                    '0))))
                            (let ((_tl162904162946_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice164038164039_ '1)))
                                  (_target162902162943_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice164038164039_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl162904162946_))
                                  (___match164144164145_
                                   _e162851163163_
                                   _hd162850163167_
                                   _tl162849163170_
                                   _e162854163173_
                                   _hd162853163177_
                                   _tl162852163180_
                                   ___splice164038164039_
                                   _target162902162943_
                                   _tl162904162946_)
                                  (let ()
                                    (declare (not safe))
                                    (_g162845162916_)))))
                          (let () (declare (not safe)) (_g162845162916_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl162855163190_))
                                                      (let ((___splice164032164033_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl162855163190_ '0))))
                (let ((_tl162876163099_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice164032164033_ '1)))
                      (_target162874163096_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice164032164033_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162876163099_))
                      (___match164104164105_
                       _e162851163163_
                       _hd162850163167_
                       _tl162849163170_
                       _e162854163173_
                       _hd162853163177_
                       _tl162852163180_
                       _e162857163183_
                       _hd162856163187_
                       _tl162855163190_
                       _e162858163193_
                       ___splice164032164033_
                       _target162874163096_
                       _tl162876163099_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl162855163190_))
                          (___kont164034164035_
                           _hd162856163187_
                           _hd162853163177_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl162852163180_))
                              (let ((___splice164038164039_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl162852163180_
                                        '0))))
                                (let ((_tl162904162946_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice164038164039_
                                          '1)))
                                      (_target162902162943_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice164038164039_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl162904162946_))
                                      (___match164144164145_
                                       _e162851163163_
                                       _hd162850163167_
                                       _tl162849163170_
                                       _e162854163173_
                                       _hd162853163177_
                                       _tl162852163180_
                                       ___splice164038164039_
                                       _target162902162943_
                                       _tl162904162946_)
                                      (let ()
                                        (declare (not safe))
                                        (_g162845162916_)))))
                              (let ()
                                (declare (not safe))
                                (_g162845162916_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl162855163190_))
                  (___kont164034164035_ _hd162856163187_ _hd162853163177_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl162852163180_))
                      (let ((___splice164038164039_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl162852163180_ '0))))
                        (let ((_tl162904162946_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice164038164039_ '1)))
                              (_target162902162943_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice164038164039_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl162904162946_))
                              (___match164144164145_
                               _e162851163163_
                               _hd162850163167_
                               _tl162849163170_
                               _e162854163173_
                               _hd162853163177_
                               _tl162852163180_
                               ___splice164038164039_
                               _target162902162943_
                               _tl162904162946_)
                              (let ()
                                (declare (not safe))
                                (_g162845162916_)))))
                      (let () (declare (not safe)) (_g162845162916_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl162855163190_))
                                                  (___kont164034164035_
                                                   _hd162856163187_
                                                   _hd162853163177_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl162852163180_))
                                                      (let ((___splice164038164039_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl162852163180_ '0))))
                (let ((_tl162904162946_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice164038164039_ '1)))
                      (_target162902162943_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice164038164039_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162904162946_))
                      (___match164144164145_
                       _e162851163163_
                       _hd162850163167_
                       _tl162849163170_
                       _e162854163173_
                       _hd162853163177_
                       _tl162852163180_
                       ___splice164038164039_
                       _target162902162943_
                       _tl162904162946_)
                      (let () (declare (not safe)) (_g162845162916_)))))
              (let () (declare (not safe)) (_g162845162916_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162855163190_))
                                            (___kont164034164035_
                                             _hd162856163187_
                                             _hd162853163177_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl162852163180_))
                                                (let ((___splice164038164039_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl162852163180_
                                                          '0))))
                                                  (let ((_tl162904162946_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice164038164039_
                                                            '1)))
                                                        (_target162902162943_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice164038164039_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl162904162946_))
                                                        (___match164144164145_
                                                         _e162851163163_
                                                         _hd162850163167_
                                                         _tl162849163170_
                                                         _e162854163173_
                                                         _hd162853163177_
                                                         _tl162852163180_
                                                         ___splice164038164039_
                                                         _target162902162943_
                                                         _tl162904162946_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g162845162916_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g162845162916_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl162852163180_))
                                    (let ((___splice164038164039_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl162852163180_
                                              '0))))
                                      (let ((_tl162904162946_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice164038164039_
                                                '1)))
                                            (_target162902162943_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice164038164039_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162904162946_))
                                            (___match164144164145_
                                             _e162851163163_
                                             _hd162850163167_
                                             _tl162849163170_
                                             _e162854163173_
                                             _hd162853163177_
                                             _tl162852163180_
                                             ___splice164038164039_
                                             _target162902162943_
                                             _tl162904162946_)
                                            (let ()
                                              (declare (not safe))
                                              (_g162845162916_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g162845162916_))))))
                        (let () (declare (not safe)) (_g162845162916_)))))
                (let () (declare (not safe)) (_g162845162916_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx163233_)
      (let* ((___stx164147164148_ _$stx163233_)
             (_g163238163273_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx164147164148_)))))
        (let ((___kont164150164151_
               (lambda (_L163395_ _L163397_)
                 (let ((__tmp164473
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164468
                        (let ((__tmp164469
                               (let ((__tmp164470
                                      (let ((__tmp164472
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp164471
                                             (let ()
                                               (declare (not safe))
                                               (cons _L163395_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164472 __tmp164471))))
                                 (declare (not safe))
                                 (cons __tmp164470 '()))))
                          (declare (not safe))
                          (cons _L163397_ __tmp164469))))
                   (declare (not safe))
                   (cons __tmp164473 __tmp164468))))
              (___kont164152164153_
               (lambda (_L163330_ _L163332_)
                 (let ((__tmp164482
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164474
                        (let ((__tmp164475
                               (let ((__tmp164476
                                      (let ((__tmp164481
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp164477
                                             (let ((__tmp164478
                                                    (lambda (_g163349163352_
                                                             _g163350163355_)
                                                      (let ((__tmp164479
                                                             (let ((__tmp164480
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g163349163352_ __tmp164480))))
                (declare (not safe))
                (cons __tmp164479 _g163350163355_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp164478
                                                       '()
                                                       _L163330_))))
                                        (declare (not safe))
                                        (cons __tmp164481 __tmp164477))))
                                 (declare (not safe))
                                 (cons __tmp164476 '()))))
                          (declare (not safe))
                          (cons _L163332_ __tmp164475))))
                   (declare (not safe))
                   (cons __tmp164482 __tmp164474)))))
          (let ((___match164196164197_
                 (lambda (_e163255163280_
                          _hd163254163284_
                          _tl163253163287_
                          _e163258163290_
                          _hd163257163294_
                          _tl163256163297_
                          ___splice164154164155_
                          _target163259163300_
                          _tl163261163303_)
                   (letrec ((_loop163262163306_
                             (lambda (_hd163260163310_ _arity163266163313_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd163260163310_))
                                   (let ((_e163263163316_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd163260163310_))))
                                     (let ((_lp-tl163265163323_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e163263163316_)))
                                           (_lp-hd163264163320_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e163263163316_))))
                                       (_loop163262163306_
                                        _lp-tl163265163323_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd163264163320_
                                                _arity163266163313_)))))
                                   (let ((_arity163267163326_
                                          (reverse _arity163266163313_)))
                                     (___kont164152164153_
                                      _arity163267163326_
                                      _hd163257163294_))))))
                     (_loop163262163306_ _target163259163300_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx164147164148_))
                (let ((_e163244163365_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx164147164148_))))
                  (let ((_tl163242163372_
                         (let () (declare (not safe)) (##cdr _e163244163365_)))
                        (_hd163243163369_
                         (let ()
                           (declare (not safe))
                           (##car _e163244163365_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl163242163372_))
                        (let ((_e163247163375_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl163242163372_))))
                          (let ((_tl163245163382_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e163247163375_)))
                                (_hd163246163379_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e163247163375_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl163245163382_))
                                (let ((_e163250163385_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl163245163382_))))
                                  (let ((_tl163248163392_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e163250163385_)))
                                        (_hd163249163389_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e163250163385_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl163248163392_))
                                        (___kont164150164151_
                                         _hd163249163389_
                                         _hd163246163379_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl163245163382_))
                                            (let ((___splice164154164155_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl163245163382_
                                                      '0))))
                                              (let ((_tl163261163303_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice164154164155_
                                                        '1)))
                                                    (_target163259163300_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice164154164155_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl163261163303_))
                                                    (___match164196164197_
                                                     _e163244163365_
                                                     _hd163243163369_
                                                     _tl163242163372_
                                                     _e163247163375_
                                                     _hd163246163379_
                                                     _tl163245163382_
                                                     ___splice164154164155_
                                                     _target163259163300_
                                                     _tl163261163303_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g163238163273_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g163238163273_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl163245163382_))
                                    (let ((___splice164154164155_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl163245163382_
                                              '0))))
                                      (let ((_tl163261163303_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice164154164155_
                                                '1)))
                                            (_target163259163300_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice164154164155_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl163261163303_))
                                            (___match164196164197_
                                             _e163244163365_
                                             _hd163243163369_
                                             _tl163242163372_
                                             _e163247163375_
                                             _hd163246163379_
                                             _tl163245163382_
                                             ___splice164154164155_
                                             _target163259163300_
                                             _tl163261163303_)
                                            (let ()
                                              (declare (not safe))
                                              (_g163238163273_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g163238163273_))))))
                        (let () (declare (not safe)) (_g163238163273_)))))
                (let () (declare (not safe)) (_g163238163273_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx163417_)
      (let* ((_g163421163456_
              (lambda (_g163422163452_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g163422163452_))))
             (_g163420163584_
              (lambda (_g163422163460_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g163422163460_))
                    (let ((_e163427163463_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g163422163460_))))
                      (let ((_hd163426163467_
                             (let ()
                               (declare (not safe))
                               (##car _e163427163463_)))
                            (_tl163425163470_
                             (let ()
                               (declare (not safe))
                               (##cdr _e163427163463_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl163425163470_))
                            (let ((_g164483_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl163425163470_
                                      '0))))
                              (begin
                                (let ((_g164484_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g164483_)
                                             (##vector-length _g164483_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g164484_ 2)))
                                      (error "Context expects 2 values"
                                             _g164484_)))
                                (let ((_target163428163473_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164483_ 0)))
                                      (_tl163430163476_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164483_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl163430163476_))
                                      (letrec ((_loop163431163479_
                                                (lambda (_hd163429163483_
                                                         _arity163435163486_
                                                         _prim163436163488_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd163429163483_))
                                                      (let ((_e163432163491_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd163429163483_))))
                (let ((_lp-hd163433163495_
                       (let () (declare (not safe)) (##car _e163432163491_)))
                      (_lp-tl163434163498_
                       (let () (declare (not safe)) (##cdr _e163432163491_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd163433163495_))
                      (let ((_e163441163501_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd163433163495_))))
                        (let ((_hd163440163505_
                               (let ()
                                 (declare (not safe))
                                 (##car _e163441163501_)))
                              (_tl163439163508_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e163441163501_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl163439163508_))
                              (let ((_g164493_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl163439163508_
                                        '0))))
                                (begin
                                  (let ((_g164494_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g164493_)
                                               (##vector-length _g164493_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g164494_ 2)))
                                        (error "Context expects 2 values"
                                               _g164494_)))
                                  (let ((_target163442163511_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164493_ 0)))
                                        (_tl163444163514_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164493_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl163444163514_))
                                        (letrec ((_loop163445163517_
                                                  (lambda (_hd163443163521_
                                                           _arity163449163524_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd163443163521_))
                                                        (let ((_e163446163527_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd163443163521_))))
                  (let ((_lp-hd163447163531_
                         (let () (declare (not safe)) (##car _e163446163527_)))
                        (_lp-tl163448163534_
                         (let ()
                           (declare (not safe))
                           (##cdr _e163446163527_))))
                    (_loop163445163517_
                     _lp-tl163448163534_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd163447163531_ _arity163449163524_)))))
                (let ((_arity163450163537_ (reverse _arity163449163524_)))
                  (_loop163431163479_
                   _lp-tl163434163498_
                   (let ()
                     (declare (not safe))
                     (cons _arity163450163537_ _arity163435163486_))
                   (let ()
                     (declare (not safe))
                     (cons _hd163440163505_ _prim163436163488_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop163445163517_
                                           _target163442163511_
                                           '()))
                                        (_g163421163456_ _g163422163460_)))))
                              (_g163421163456_ _g163422163460_))))
                      (_g163421163456_ _g163422163460_))))
              (let ((_arity163437163541_ (reverse _arity163435163486_))
                    (_prim163438163544_ (reverse _prim163436163488_)))
                ((lambda (_L163547_ _L163549_)
                   (let ((__tmp164492
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp164485
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L163547_
                               _L163549_))
                            (let ((__tmp164486
                                   (lambda (_g163564163570_
                                            _g163565163573_
                                            _g163566163575_)
                                     (let ((__tmp164487
                                            (let ((__tmp164491
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp164488
                                                   (let ((__tmp164489
                                                          (let ((__tmp164490
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g163567163578_ _g163568163581_)
                           (let ()
                             (declare (not safe))
                             (cons _g163567163578_ _g163568163581_)))))
                    (declare (not safe))
                    (foldr1 __tmp164490 '() _g163564163570_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g163565163573_
                                                           __tmp164489))))
                                              (declare (not safe))
                                              (cons __tmp164491 __tmp164488))))
                                       (declare (not safe))
                                       (cons __tmp164487 _g163566163575_)))))
                              (declare (not safe))
                              (foldr2 __tmp164486 '() _L163547_ _L163549_)))))
                     (declare (not safe))
                     (cons __tmp164492 __tmp164485)))
                 _arity163437163541_
                 _prim163438163544_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop163431163479_
                                         _target163428163473_
                                         '()
                                         '()))
                                      (_g163421163456_ _g163422163460_)))))
                            (_g163421163456_ _g163422163460_))))
                    (_g163421163456_ _g163422163460_)))))
        (_g163420163584_ _$stx163417_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx163590_)
      (let* ((_g163594163629_
              (lambda (_g163595163625_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g163595163625_))))
             (_g163593163757_
              (lambda (_g163595163633_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g163595163633_))
                    (let ((_e163600163636_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g163595163633_))))
                      (let ((_hd163599163640_
                             (let ()
                               (declare (not safe))
                               (##car _e163600163636_)))
                            (_tl163598163643_
                             (let ()
                               (declare (not safe))
                               (##cdr _e163600163636_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl163598163643_))
                            (let ((_g164495_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl163598163643_
                                      '0))))
                              (begin
                                (let ((_g164496_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g164495_)
                                             (##vector-length _g164495_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g164496_ 2)))
                                      (error "Context expects 2 values"
                                             _g164496_)))
                                (let ((_target163601163646_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164495_ 0)))
                                      (_tl163603163649_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164495_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl163603163649_))
                                      (letrec ((_loop163604163652_
                                                (lambda (_hd163602163656_
                                                         _arity163608163659_
                                                         _prim163609163661_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd163602163656_))
                                                      (let ((_e163605163664_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd163602163656_))))
                (let ((_lp-hd163606163668_
                       (let () (declare (not safe)) (##car _e163605163664_)))
                      (_lp-tl163607163671_
                       (let () (declare (not safe)) (##cdr _e163605163664_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd163606163668_))
                      (let ((_e163614163674_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd163606163668_))))
                        (let ((_hd163613163678_
                               (let ()
                                 (declare (not safe))
                                 (##car _e163614163674_)))
                              (_tl163612163681_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e163614163674_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl163612163681_))
                              (let ((_g164505_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl163612163681_
                                        '0))))
                                (begin
                                  (let ((_g164506_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g164505_)
                                               (##vector-length _g164505_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g164506_ 2)))
                                        (error "Context expects 2 values"
                                               _g164506_)))
                                  (let ((_target163615163684_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164505_ 0)))
                                        (_tl163617163687_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164505_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl163617163687_))
                                        (letrec ((_loop163618163690_
                                                  (lambda (_hd163616163694_
                                                           _arity163622163697_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd163616163694_))
                                                        (let ((_e163619163700_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd163616163694_))))
                  (let ((_lp-hd163620163704_
                         (let () (declare (not safe)) (##car _e163619163700_)))
                        (_lp-tl163621163707_
                         (let ()
                           (declare (not safe))
                           (##cdr _e163619163700_))))
                    (_loop163618163690_
                     _lp-tl163621163707_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd163620163704_ _arity163622163697_)))))
                (let ((_arity163623163710_ (reverse _arity163622163697_)))
                  (_loop163604163652_
                   _lp-tl163607163671_
                   (let ()
                     (declare (not safe))
                     (cons _arity163623163710_ _arity163608163659_))
                   (let ()
                     (declare (not safe))
                     (cons _hd163613163678_ _prim163609163661_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop163618163690_
                                           _target163615163684_
                                           '()))
                                        (_g163594163629_ _g163595163633_)))))
                              (_g163594163629_ _g163595163633_))))
                      (_g163594163629_ _g163595163633_))))
              (let ((_arity163610163714_ (reverse _arity163608163659_))
                    (_prim163611163717_ (reverse _prim163609163661_)))
                ((lambda (_L163720_ _L163722_)
                   (let ((__tmp164504
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp164497
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L163720_
                               _L163722_))
                            (let ((__tmp164498
                                   (lambda (_g163737163743_
                                            _g163738163746_
                                            _g163739163748_)
                                     (let ((__tmp164499
                                            (let ((__tmp164503
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp164500
                                                   (let ((__tmp164501
                                                          (let ((__tmp164502
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g163740163751_ _g163741163754_)
                           (let ()
                             (declare (not safe))
                             (cons _g163740163751_ _g163741163754_)))))
                    (declare (not safe))
                    (foldr1 __tmp164502 '() _g163737163743_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g163738163746_
                                                           __tmp164501))))
                                              (declare (not safe))
                                              (cons __tmp164503 __tmp164500))))
                                       (declare (not safe))
                                       (cons __tmp164499 _g163739163748_)))))
                              (declare (not safe))
                              (foldr2 __tmp164498 '() _L163720_ _L163722_)))))
                     (declare (not safe))
                     (cons __tmp164504 __tmp164497)))
                 _arity163610163714_
                 _prim163611163717_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop163604163652_
                                         _target163601163646_
                                         '()
                                         '()))
                                      (_g163594163629_ _g163595163633_)))))
                            (_g163594163629_ _g163595163633_))))
                    (_g163594163629_ _g163595163633_)))))
        (_g163593163757_ _$stx163590_)))))
