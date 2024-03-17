(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar$<sugar:2>[1]#_g24803_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g24804_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g24805_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25673_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25676_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25677_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25738_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25739_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25740_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25741_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25785_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25786_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25787_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25788_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25799_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25800_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/sugar$<sugar:2>[:0:]#lambda|
      (lambda (_stx8934_)
        (letrec ((_simple-lambda?8937_
                  (lambda (_hd12334_)
                    (gx#stx-andmap gx#identifier? _hd12334_)))
                 (_opt-lambda?8939_
                  (lambda (_hd12186_)
                    (let _lp12189_ ((_rest12192_ _hd12186_) (_opt?12194_ '#f))
                      (let* ((___stx2269722698_ _rest12192_)
                             (_g1219712209_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2269722698_))))
                        (let ((___kont2270022701_
                               (lambda (_L12241_ _L12243_)
                                 (let* ((___stx2267322674_ _L12243_)
                                        (_g1225912273_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2267322674_))))
                                   (let ((___kont2267622677_
                                          (lambda (_L12311_)
                                            (_lp12189_ _L12241_ '#t)))
                                         (___kont2267822679_
                                          (lambda ()
                                            (if (gx#identifier? _L12243_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (not _opt?12194_))
                                                    (_lp12189_ _L12241_ '#f)
                                                    '#f)
                                                '#f))))
                                     (let ((___match2269422695_
                                            (lambda (_e1226412291_
                                                     _hd1226312295_
                                                     _tl1226212298_
                                                     _e1226712301_
                                                     _hd1226612305_
                                                     _tl1226512308_)
                                              (let ((_L12311_ _hd1226312295_))
                                                (if (gx#identifier? _L12311_)
                                                    (___kont2267622677_
                                                     _L12311_)
                                                    (___kont2267822679_))))))
                                       (if (gx#stx-pair? ___stx2267322674_)
                                           (let ((_e1226412291_
                                                  (gx#syntax-e
                                                   ___stx2267322674_)))
                                             (let ((_tl1226212298_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e1226412291_)))
                                                   (_hd1226312295_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e1226412291_))))
                                               (if (gx#stx-pair?
                                                    _tl1226212298_)
                                                   (let ((_e1226712301_
                                                          (gx#syntax-e
                                                           _tl1226212298_)))
                                                     (let ((_tl1226512308_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e1226712301_)))
                                                           (_hd1226612305_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e1226712301_))))
                                                       (if (gx#stx-null?
                                                            _tl1226512308_)
                                                           (___match2269422695_
                                                            _e1226412291_
                                                            _hd1226312295_
                                                            _tl1226212298_
                                                            _e1226712301_
                                                            _hd1226612305_
                                                            _tl1226512308_)
                                                           (___kont2267822679_))))
                                                   (___kont2267822679_))))
                                           (___kont2267822679_)))))))
                              (___kont2270222703_
                               (lambda ()
                                 (if _opt?12194_
                                     (let ((_$e12220_
                                            (gx#stx-null? _rest12192_)))
                                       (if _$e12220_
                                           _$e12220_
                                           (gx#identifier? _rest12192_)))
                                     '#f))))
                          (if (gx#stx-pair? ___stx2269722698_)
                              (let ((_e1220312231_
                                     (gx#syntax-e ___stx2269722698_)))
                                (let ((_tl1220112238_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1220312231_)))
                                      (_hd1220212235_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1220312231_))))
                                  (___kont2270022701_
                                   _tl1220112238_
                                   _hd1220212235_)))
                              (___kont2270222703_)))))))
                 (_opt-lambda-split8940_
                  (lambda (_hd12038_)
                    (let _lp12041_ ((_rest12044_ _hd12038_)
                                    (_pre12046_ '())
                                    (_opt12047_ '()))
                      (let* ((___stx2273722738_ _rest12044_)
                             (_g1205012062_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2273722738_))))
                        (let ((___kont2274022741_
                               (lambda (_L12090_ _L12092_)
                                 (let* ((___stx2271322714_ _L12092_)
                                        (_g1210812123_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2271322714_))))
                                   (let ((___kont2271622717_
                                          (lambda (_L12161_ _L12163_)
                                            (_lp12041_
                                             _L12090_
                                             _pre12046_
                                             (let ((__tmp24613
                                                    (let ((__tmp24614
                                                           (_generate-bind8943_
                                                            _L12163_)))
                                                      (declare (not safe))
                                                      (cons __tmp24614
                                                            _L12161_))))
                                               (declare (not safe))
                                               (cons __tmp24613 _opt12047_)))))
                                         (___kont2271822719_
                                          (lambda ()
                                            (_lp12041_
                                             _L12090_
                                             (let ((__tmp24615
                                                    (_generate-bind8943_
                                                     _L12092_)))
                                               (declare (not safe))
                                               (cons __tmp24615 _pre12046_))
                                             _opt12047_))))
                                     (if (gx#stx-pair? ___stx2271322714_)
                                         (let ((_e1211412141_
                                                (gx#syntax-e
                                                 ___stx2271322714_)))
                                           (let ((_tl1211212148_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1211412141_)))
                                                 (_hd1211312145_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1211412141_))))
                                             (if (gx#stx-pair? _tl1211212148_)
                                                 (let ((_e1211712151_
                                                        (gx#syntax-e
                                                         _tl1211212148_)))
                                                   (let ((_tl1211512158_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1211712151_)))
                                                         (_hd1211612155_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1211712151_))))
                                                     (if (gx#stx-null?
                                                          _tl1211512158_)
                                                         (___kont2271622717_
                                                          _hd1211612155_
                                                          _hd1211312145_)
                                                         (___kont2271822719_))))
                                                 (___kont2271822719_))))
                                         (___kont2271822719_))))))
                              (___kont2274222743_
                               (lambda ()
                                 (values (reverse _pre12046_)
                                         (reverse _opt12047_)
                                         (if (gx#identifier? _rest12044_)
                                             (_generate-bind8943_ _rest12044_)
                                             _rest12044_)))))
                          (if (gx#stx-pair? ___stx2273722738_)
                              (let ((_e1205612080_
                                     (gx#syntax-e ___stx2273722738_)))
                                (let ((_tl1205412087_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1205612080_)))
                                      (_hd1205512084_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1205612080_))))
                                  (___kont2274022741_
                                   _tl1205412087_
                                   _hd1205512084_)))
                              (___kont2274222743_)))))))
                 (_kw-lambda?8941_
                  (lambda (_hd11706_)
                    (let _lp11709_ ((_rest11712_ _hd11706_)
                                    (_opt?11714_ '#f)
                                    (_key?11715_ '#f))
                      (let* ((___stx2280122802_ _rest11712_)
                             (_g1172011750_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2280122802_))))
                        (let ((___kont2280422805_
                               (lambda (_L11945_ _L11947_ _L11948_)
                                 (let* ((___stx2277722778_ _L11947_)
                                        (_g1196311977_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2277722778_))))
                                   (let ((___kont2278022781_
                                          (lambda (_L12015_)
                                            (if (gx#identifier? _L12015_)
                                                (_lp11709_
                                                 _L11945_
                                                 _opt?11714_
                                                 '#t)
                                                '#f)))
                                         (___kont2278222783_
                                          (lambda ()
                                            (if (gx#identifier? _L11947_)
                                                (_lp11709_
                                                 _L11945_
                                                 _opt?11714_
                                                 '#t)
                                                '#f))))
                                     (if (gx#stx-pair? ___stx2277722778_)
                                         (let ((_e1196811995_
                                                (gx#syntax-e
                                                 ___stx2277722778_)))
                                           (let ((_tl1196612002_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1196811995_)))
                                                 (_hd1196711999_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1196811995_))))
                                             (if (gx#stx-pair? _tl1196612002_)
                                                 (let ((_e1197112005_
                                                        (gx#syntax-e
                                                         _tl1196612002_)))
                                                   (let ((_tl1196912012_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1197112005_)))
                                                         (_hd1197012009_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1197112005_))))
                                                     (if (gx#stx-null?
                                                          _tl1196912012_)
                                                         (___kont2278022781_
                                                          _hd1196711999_)
                                                         (___kont2278222783_))))
                                                 (___kont2278222783_))))
                                         (___kont2278222783_))))))
                              (___kont2280622807_
                               (lambda (_L11902_ _L11904_)
                                 (if (gx#identifier? _L11904_)
                                     (_lp11709_ _L11902_ _opt?11714_ '#t)
                                     '#f)))
                              (___kont2280822809_
                               (lambda (_L11782_ _L11784_)
                                 (let* ((___stx2275322754_ _L11784_)
                                        (_g1180011814_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2275322754_))))
                                   (let ((___kont2275622757_
                                          (lambda (_L11852_)
                                            (if (gx#identifier? _L11852_)
                                                (_lp11709_
                                                 _L11782_
                                                 '#t
                                                 _key?11715_)
                                                '#f)))
                                         (___kont2275822759_
                                          (lambda ()
                                            (if (gx#identifier? _L11784_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (not _opt?11714_))
                                                    (_lp11709_
                                                     _L11782_
                                                     '#f
                                                     _key?11715_)
                                                    '#f)
                                                '#f))))
                                     (if (gx#stx-pair? ___stx2275322754_)
                                         (let ((_e1180511832_
                                                (gx#syntax-e
                                                 ___stx2275322754_)))
                                           (let ((_tl1180311839_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1180511832_)))
                                                 (_hd1180411836_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1180511832_))))
                                             (if (gx#stx-pair? _tl1180311839_)
                                                 (let ((_e1180811842_
                                                        (gx#syntax-e
                                                         _tl1180311839_)))
                                                   (let ((_tl1180611849_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1180811842_)))
                                                         (_hd1180711846_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1180811842_))))
                                                     (if (gx#stx-null?
                                                          _tl1180611849_)
                                                         (___kont2275622757_
                                                          _hd1180411836_)
                                                         (___kont2275822759_))))
                                                 (___kont2275822759_))))
                                         (___kont2275822759_))))))
                              (___kont2281022811_
                               (lambda ()
                                 (if _key?11715_
                                     (let ((_$e11761_
                                            (gx#stx-null? _rest11712_)))
                                       (if _$e11761_
                                           _$e11761_
                                           (gx#identifier? _rest11712_)))
                                     '#f))))
                          (let ((___match2282422825_
                                 (lambda (_e1172711925_
                                          _hd1172611929_
                                          _tl1172511932_
                                          _e1173011935_
                                          _hd1172911939_
                                          _tl1172811942_)
                                   (let ((_L11945_ _tl1172811942_)
                                         (_L11947_ _hd1172911939_)
                                         (_L11948_ _hd1172611929_))
                                     (if (gx#stx-keyword? _L11948_)
                                         (___kont2280422805_
                                          _L11945_
                                          _L11947_
                                          _L11948_)
                                         (if (gx#stx-datum? _hd1172611929_)
                                             (let ((_e1173611888_
                                                    (gx#stx-e _hd1172611929_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (equal? _e1173611888_
                                                             '#!key))
                                                   (___kont2280622807_
                                                    _tl1172811942_
                                                    _hd1172911939_)
                                                   (___kont2280822809_
                                                    _tl1172511932_
                                                    _hd1172611929_)))
                                             (___kont2280822809_
                                              _tl1172511932_
                                              _hd1172611929_)))))))
                            (if (gx#stx-pair? ___stx2280122802_)
                                (let ((_e1172711925_
                                       (gx#syntax-e ___stx2280122802_)))
                                  (let ((_tl1172511932_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1172711925_)))
                                        (_hd1172611929_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1172711925_))))
                                    (if (gx#stx-pair? _tl1172511932_)
                                        (let ((_e1173011935_
                                               (gx#syntax-e _tl1172511932_)))
                                          (let ((_tl1172811942_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1173011935_)))
                                                (_hd1172911939_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1173011935_))))
                                            (___match2282422825_
                                             _e1172711925_
                                             _hd1172611929_
                                             _tl1172511932_
                                             _e1173011935_
                                             _hd1172911939_
                                             _tl1172811942_)))
                                        (if (gx#stx-datum? _hd1172611929_)
                                            (let ((_e1173611888_
                                                   (gx#stx-e _hd1172611929_)))
                                              (___kont2280822809_
                                               _tl1172511932_
                                               _hd1172611929_))
                                            (___kont2280822809_
                                             _tl1172511932_
                                             _hd1172611929_)))))
                                (___kont2281022811_))))))))
                 (_kw-lambda-split8942_
                  (lambda (_hd11439_)
                    (let _lp11442_ ((_rest11445_ _hd11439_)
                                    (_kwvar11447_ '#f)
                                    (_kwargs11448_ '())
                                    (_args11449_ '()))
                      (let* ((___stx2287522876_ _rest11445_)
                             (_g1145411484_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2287522876_))))
                        (let ((___kont2287822879_
                               (lambda (_L11603_ _L11605_ _L11606_)
                                 (let ((_key11620_ (gx#stx-e _L11606_)))
                                   (if (find (lambda (_kwarg11623_)
                                               (let ((__tmp24621
                                                      (car _kwarg11623_)))
                                                 (declare (not safe))
                                                 (eq? _key11620_ __tmp24621)))
                                             _kwargs11448_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"bad syntax; duplicate keyword argument"
                                        _stx8934_
                                        _hd11439_
                                        _key11620_)
                                       (let* ((___stx2285122852_ _L11605_)
                                              (_g1162711642_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  ___stx2285122852_))))
                                         (let ((___kont2285422855_
                                                (lambda (_L11680_ _L11682_)
                                                  (_lp11442_
                                                   _L11603_
                                                   _kwvar11447_
                                                   (let ((__tmp24616
                                                          (list _key11620_
                                                                (_generate-bind8943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11682_)
                        _L11680_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp24616
                                                           _kwargs11448_))
                                                   _args11449_)))
                                               (___kont2285622857_
                                                (lambda ()
                                                  (_lp11442_
                                                   _L11603_
                                                   _kwvar11447_
                                                   (let ((__tmp24617
                                                          (list _key11620_
                                                                (_generate-bind8943_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11605_)
                        (let ((__tmp24620 (gx#datum->syntax '#f 'error))
                              (__tmp24618
                               (let ((__tmp24619
                                      (let ()
                                        (declare (not safe))
                                        (cons _L11606_ '()))))
                                 (declare (not safe))
                                 (cons '"Missing required keyword argument"
                                       __tmp24619))))
                          (declare (not safe))
                          (cons __tmp24620 __tmp24618)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp24617
                                                           _kwargs11448_))
                                                   _args11449_))))
                                           (if (gx#stx-pair? ___stx2285122852_)
                                               (let ((_e1163311660_
                                                      (gx#syntax-e
                                                       ___stx2285122852_)))
                                                 (let ((_tl1163111667_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1163311660_)))
                                                       (_hd1163211664_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1163311660_))))
                                                   (if (gx#stx-pair?
                                                        _tl1163111667_)
                                                       (let ((_e1163611670_
                                                              (gx#syntax-e
                                                               _tl1163111667_)))
                                                         (let ((_tl1163411677_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e1163611670_)))
                       (_hd1163511674_
                        (let () (declare (not safe)) (##car _e1163611670_))))
                   (if (gx#stx-null? _tl1163411677_)
                       (___kont2285422855_ _hd1163511674_ _hd1163211664_)
                       (___kont2285622857_))))
               (___kont2285622857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2285622857_))))))))
                              (___kont2288022881_
                               (lambda (_L11560_ _L11562_)
                                 (if _kwvar11447_
                                     (gx#raise-syntax-error
                                      '#f
                                      '"bad syntax; duplicate #!key argument"
                                      _stx8934_
                                      _hd11439_
                                      _L11562_)
                                     (_lp11442_
                                      _L11560_
                                      (_generate-bind8943_ _L11562_)
                                      _kwargs11448_
                                      _args11449_))))
                              (___kont2288222883_
                               (lambda (_L11512_ _L11514_)
                                 (_lp11442_
                                  _L11512_
                                  _kwvar11447_
                                  _kwargs11448_
                                  (let ()
                                    (declare (not safe))
                                    (cons _L11514_ _args11449_)))))
                              (___kont2288422885_
                               (lambda ()
                                 (values _kwvar11447_
                                         (reverse _kwargs11448_)
                                         (foldl cons
                                                _rest11445_
                                                _args11449_)))))
                          (let ((___match2289822899_
                                 (lambda (_e1146111583_
                                          _hd1146011587_
                                          _tl1145911590_
                                          _e1146411593_
                                          _hd1146311597_
                                          _tl1146211600_)
                                   (let ((_L11603_ _tl1146211600_)
                                         (_L11605_ _hd1146311597_)
                                         (_L11606_ _hd1146011587_))
                                     (if (gx#stx-keyword? _L11606_)
                                         (___kont2287822879_
                                          _L11603_
                                          _L11605_
                                          _L11606_)
                                         (if (gx#stx-datum? _hd1146011587_)
                                             (let ((_e1147011546_
                                                    (gx#stx-e _hd1146011587_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (equal? _e1147011546_
                                                             '#!key))
                                                   (___kont2288022881_
                                                    _tl1146211600_
                                                    _hd1146311597_)
                                                   (___kont2288222883_
                                                    _tl1145911590_
                                                    _hd1146011587_)))
                                             (___kont2288222883_
                                              _tl1145911590_
                                              _hd1146011587_)))))))
                            (if (gx#stx-pair? ___stx2287522876_)
                                (let ((_e1146111583_
                                       (gx#syntax-e ___stx2287522876_)))
                                  (let ((_tl1145911590_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1146111583_)))
                                        (_hd1146011587_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1146111583_))))
                                    (if (gx#stx-pair? _tl1145911590_)
                                        (let ((_e1146411593_
                                               (gx#syntax-e _tl1145911590_)))
                                          (let ((_tl1146211600_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1146411593_)))
                                                (_hd1146311597_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1146411593_))))
                                            (___match2289822899_
                                             _e1146111583_
                                             _hd1146011587_
                                             _tl1145911590_
                                             _e1146411593_
                                             _hd1146311597_
                                             _tl1146211600_)))
                                        (if (gx#stx-datum? _hd1146011587_)
                                            (let ((_e1147011546_
                                                   (gx#stx-e _hd1146011587_)))
                                              (___kont2288222883_
                                               _tl1145911590_
                                               _hd1146011587_))
                                            (___kont2288222883_
                                             _tl1145911590_
                                             _hd1146011587_)))))
                                (___kont2288422885_))))))))
                 (_generate-bind8943_
                  (lambda (_e11436_)
                    (if (gx#underscore? _e11436_)
                        (gx#genident _e11436_)
                        _e11436_)))
                 (_check-duplicate-bindings8944_
                  (lambda (_hd11133_)
                    (letrec ((_cons-id11136_
                              (lambda (_id11432_ _ids11434_)
                                (if (gx#underscore? _id11432_)
                                    _ids11434_
                                    (let ()
                                      (declare (not safe))
                                      (cons _id11432_ _ids11434_))))))
                      (let _lp11139_ ((_rest11142_ _hd11133_) (_ids11144_ '()))
                        (let* ((___stx2294922950_ _rest11142_)
                               (_g1114711159_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx2294922950_))))
                          (let ((___kont2295222953_
                                 (lambda (_L11187_ _L11189_)
                                   (if (gx#identifier? _L11189_)
                                       (_lp11139_
                                        _L11187_
                                        (_cons-id11136_ _L11189_ _ids11144_))
                                       (if (gx#stx-pair? _L11189_)
                                           (let* ((_g1120511219_
                                                   (lambda (_g1120611215_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g1120611215_)))
                                                  (_g1120411260_
                                                   (lambda (_g1120611223_)
                                                     (if (gx#stx-pair?
                                                          _g1120611223_)
                                                         (let ((_e1121011226_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1120611223_)))
                   (let ((_hd1120911230_
                          (let () (declare (not safe)) (##car _e1121011226_)))
                         (_tl1120811233_
                          (let () (declare (not safe)) (##cdr _e1121011226_))))
                     (if (gx#stx-pair? _tl1120811233_)
                         (let ((_e1121311236_ (gx#syntax-e _tl1120811233_)))
                           (let ((_hd1121211240_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e1121311236_)))
                                 (_tl1121111243_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e1121311236_))))
                             (if (gx#stx-null? _tl1121111243_)
                                 ((lambda (_L11246_)
                                    (_lp11139_
                                     _L11187_
                                     (_cons-id11136_ _L11246_ _ids11144_)))
                                  _hd1120911230_)
                                 (_g1120511219_ _g1120611223_))))
                         (_g1120511219_ _g1120611223_))))
                 (_g1120511219_ _g1120611223_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1120411260_ _L11189_))
                                           (if (gx#stx-keyword? _L11189_)
                                               (let* ((_g1126411276_
                                                       (lambda (_g1126511272_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g1126511272_)))
                                                      (_g1126311378_
                                                       (lambda (_g1126511280_)
                                                         (if (gx#stx-pair?
                                                              _g1126511280_)
                                                             (let ((_e1127011283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1126511280_)))
                       (let ((_hd1126911287_
                              (let ()
                                (declare (not safe))
                                (##car _e1127011283_)))
                             (_tl1126811290_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1127011283_))))
                         ((lambda (_L11293_ _L11295_)
                            (let* ((___stx2292522926_ _L11295_)
                                   (_g1130711321_
                                    (lambda ()
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       ___stx2292522926_))))
                              (let ((___kont2292822929_
                                     (lambda (_L11359_)
                                       (_lp11139_
                                        _L11293_
                                        (_cons-id11136_ _L11359_ _ids11144_))))
                                    (___kont2293022931_
                                     (lambda ()
                                       (_lp11139_
                                        _L11293_
                                        (_cons-id11136_
                                         _L11295_
                                         _ids11144_)))))
                                (if (gx#stx-pair? ___stx2292522926_)
                                    (let ((_e1131211339_
                                           (gx#syntax-e ___stx2292522926_)))
                                      (let ((_tl1131011346_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1131211339_)))
                                            (_hd1131111343_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1131211339_))))
                                        (if (gx#stx-pair? _tl1131011346_)
                                            (let ((_e1131511349_
                                                   (gx#syntax-e
                                                    _tl1131011346_)))
                                              (let ((_tl1131311356_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1131511349_)))
                                                    (_hd1131411353_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1131511349_))))
                                                (if (gx#stx-null?
                                                     _tl1131311356_)
                                                    (___kont2292822929_
                                                     _hd1131111343_)
                                                    (___kont2293022931_))))
                                            (___kont2293022931_))))
                                    (___kont2293022931_)))))
                          _tl1126811290_
                          _hd1126911287_)))
                     (_g1126411276_ _g1126511280_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1126311378_ _L11187_))
                                               (if (let ((__tmp24622
                                                          (gx#stx-e _L11189_)))
                                                     (declare (not safe))
                                                     (eq? __tmp24622 '#!key))
                                                   (let* ((_g1138211394_
                                                           (lambda (_g1138311390_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g1138311390_)))
                                                          (_g1138111424_
                                                           (lambda (_g1138311398_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1138311398_)
                         (let ((_e1138811401_ (gx#syntax-e _g1138311398_)))
                           (let ((_hd1138711405_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e1138811401_)))
                                 (_tl1138611408_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e1138811401_))))
                             ((lambda (_L11411_ _L11413_)
                                (_lp11139_
                                 _L11411_
                                 (_cons-id11136_ _L11413_ _ids11144_)))
                              _tl1138611408_
                              _hd1138711405_)))
                         (_g1138211394_ _g1138311398_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1138111424_ _L11187_))
                                                   (error '"BUG: check-duplicate-bindings"
                                                          _stx8934_
                                                          _rest11142_)))))))
                                (___kont2295422955_
                                 (lambda ()
                                   (gx#check-duplicate-identifiers
                                    (if (gx#stx-null? _rest11142_)
                                        _ids11144_
                                        (_cons-id11136_
                                         _rest11142_
                                         _ids11144_))
                                    _stx8934_))))
                            (if (gx#stx-pair? ___stx2294922950_)
                                (let ((_e1115311177_
                                       (gx#syntax-e ___stx2294922950_)))
                                  (let ((_tl1115111184_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1115311177_)))
                                        (_hd1115211181_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1115311177_))))
                                    (___kont2295222953_
                                     _tl1115111184_
                                     _hd1115211181_)))
                                (___kont2295422955_))))))))
                 (_generate-opt-primary8945_
                  (lambda (_pre10925_ _opt10927_ _tail10928_ _body10929_)
                    (let* ((_g1093110972_
                            (lambda (_g1093210968_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g1093210968_)))
                           (_g1093011129_
                            (lambda (_g1093210976_)
                              (if (gx#stx-pair? _g1093210976_)
                                  (let ((_e1093910979_
                                         (gx#syntax-e _g1093210976_)))
                                    (let ((_hd1093810983_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1093910979_)))
                                          (_tl1093710986_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1093910979_))))
                                      (if (gx#stx-pair/null? _hd1093810983_)
                                          (let ((_g24623_
                                                 (gx#syntax-split-splice
                                                  _hd1093810983_
                                                  '0)))
                                            (begin
                                              (let ((_g24624_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g24623_)
                                                           (##vector-length
                                                            _g24623_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g24624_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g24624_)))
                                              (let ((_target1094010989_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g24623_
                                                        0)))
                                                    (_tl1094210992_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g24623_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _tl1094210992_)
                                                    (letrec ((_loop1094310995_
                                                              (lambda (_hd1094110999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _pre1094711002_)
                        (if (gx#stx-pair? _hd1094110999_)
                            (let ((_e1094411005_ (gx#syntax-e _hd1094110999_)))
                              (let ((_lp-hd1094511009_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1094411005_)))
                                    (_lp-tl1094611012_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1094411005_))))
                                (_loop1094310995_
                                 _lp-tl1094611012_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd1094511009_ _pre1094711002_)))))
                            (let ((_pre1094811015_ (reverse _pre1094711002_)))
                              (if (gx#stx-pair? _tl1093710986_)
                                  (let ((_e1095111019_
                                         (gx#syntax-e _tl1093710986_)))
                                    (let ((_hd1095011023_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1095111019_)))
                                          (_tl1094911026_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1095111019_))))
                                      (if (gx#stx-pair/null? _hd1095011023_)
                                          (let ((_g24625_
                                                 (gx#syntax-split-splice
                                                  _hd1095011023_
                                                  '0)))
                                            (begin
                                              (let ((_g24626_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g24625_)
                                                           (##vector-length
                                                            _g24625_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g24626_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g24626_)))
                                              (let ((_target1095211029_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g24625_
                                                        0)))
                                                    (_tl1095411032_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g24625_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _tl1095411032_)
                                                    (letrec ((_loop1095511035_
                                                              (lambda (_hd1095311039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _opt1095911042_)
                        (if (gx#stx-pair? _hd1095311039_)
                            (let ((_e1095611045_ (gx#syntax-e _hd1095311039_)))
                              (let ((_lp-hd1095711049_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1095611045_)))
                                    (_lp-tl1095811052_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1095611045_))))
                                (_loop1095511035_
                                 _lp-tl1095811052_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd1095711049_ _opt1095911042_)))))
                            (let ((_opt1096011055_ (reverse _opt1095911042_)))
                              (if (gx#stx-pair? _tl1094911026_)
                                  (let ((_e1096311059_
                                         (gx#syntax-e _tl1094911026_)))
                                    (let ((_hd1096211063_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1096311059_)))
                                          (_tl1096111066_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1096311059_))))
                                      (if (gx#stx-pair? _tl1096111066_)
                                          (let ((_e1096611069_
                                                 (gx#syntax-e _tl1096111066_)))
                                            (let ((_hd1096511073_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1096611069_)))
                                                  (_tl1096411076_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1096611069_))))
                                              (if (gx#stx-null? _tl1096411076_)
                                                  ((lambda (_L11079_
                                                            _L11081_
                                                            _L11082_
                                                            _L11083_)
                                                     (let ()
                                                       (let ((__tmp24629
                                                              (gx#datum->syntax
                                                               '#f
                                                               'lambda%))
                                                             (__tmp24627
                                                              (let ((__tmp24628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr (lambda (_g1111211117_ _g1111311120_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g1111211117_ _g1111311120_)))
                                    (foldr (lambda (_g1111411123_
                                                    _g1111511126_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g1111411123_
                                                     _g1111511126_)))
                                           _L11081_
                                           _L11082_)
                                    _L11083_)))
                        (declare (not safe))
                        (cons __tmp24628 _L11079_))))
                 (declare (not safe))
                 (cons __tmp24629 __tmp24627))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd1096511073_
                                                   _hd1096211063_
                                                   _opt1096011055_
                                                   _pre1094811015_)
                                                  (_g1093110972_
                                                   _g1093210976_))))
                                          (_g1093110972_ _g1093210976_))))
                                  (_g1093110972_ _g1093210976_)))))))
              (_loop1095511035_ _target1095211029_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1093110972_
                                                     _g1093210976_)))))
                                          (_g1093110972_ _g1093210976_))))
                                  (_g1093110972_ _g1093210976_)))))))
              (_loop1094310995_ _target1094010989_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1093110972_
                                                     _g1093210976_)))))
                                          (_g1093110972_ _g1093210976_))))
                                  (_g1093110972_ _g1093210976_)))))
                      (_g1093011129_
                       (list _pre10925_
                             (map car _opt10927_)
                             _tail10928_
                             _body10929_)))))
                 (_generate-opt-dispatch8946_
                  (lambda (_primary10919_ _pre10921_ _opt10922_ _tail10923_)
                    (let ((__tmp24631
                           (list _pre10921_
                                 (_generate-opt-clause8948_
                                  _primary10919_
                                  _pre10921_
                                  _opt10922_)))
                          (__tmp24630
                           (_generate-opt-dispatch*8947_
                            _primary10919_
                            _pre10921_
                            _opt10922_
                            _tail10923_)))
                      (declare (not safe))
                      (cons __tmp24631 __tmp24630))))
                 (_generate-opt-dispatch*8947_
                  (lambda (_primary10476_ _pre10478_ _opt10479_ _tail10480_)
                    (let _recur10482_ ((_opt-rest10485_ _opt10479_)
                                       (_right10487_ '()))
                      (if (let () (declare (not safe)) (pair? _opt-rest10485_))
                          (let* ((_hd10489_ (caar _opt-rest10485_))
                                 (_rest10492_ (cdr _opt-rest10485_))
                                 (_right*10495_
                                  (let ()
                                    (declare (not safe))
                                    (cons _hd10489_ _right10487_)))
                                 (_g1049810515_
                                  (lambda (_g1049910511_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1049910511_)))
                                 (_g1049710698_
                                  (lambda (_g1049910519_)
                                    (if (gx#stx-pair/null? _g1049910519_)
                                        (let ((_g24639_
                                               (gx#syntax-split-splice
                                                _g1049910519_
                                                '0)))
                                          (begin
                                            (let ((_g24640_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g24639_)
                                                         (##vector-length
                                                          _g24639_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g24640_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g24640_)))
                                            (let ((_target1050110522_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g24639_
                                                      0)))
                                                  (_tl1050310525_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g24639_
                                                      1))))
                                              (if (gx#stx-null? _tl1050310525_)
                                                  (letrec ((_loop1050410528_
                                                            (lambda (_hd1050210532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-bind1050810535_)
                      (if (gx#stx-pair? _hd1050210532_)
                          (let ((_e1050510538_ (gx#syntax-e _hd1050210532_)))
                            (let ((_lp-hd1050610542_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1050510538_)))
                                  (_lp-tl1050710545_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1050510538_))))
                              (_loop1050410528_
                               _lp-tl1050710545_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd1050610542_
                                       _pre-bind1050810535_)))))
                          (let ((_pre-bind1050910548_
                                 (reverse _pre-bind1050810535_)))
                            ((lambda (_L10552_)
                               (let ()
                                 (let* ((_g1057310590_
                                         (lambda (_g1057410586_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g1057410586_)))
                                        (_g1057210694_
                                         (lambda (_g1057410594_)
                                           (if (gx#stx-pair/null?
                                                _g1057410594_)
                                               (let ((_g24641_
                                                      (gx#syntax-split-splice
                                                       _g1057410594_
                                                       '0)))
                                                 (begin
                                                   (let ((_g24642_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g24641_)
                        (##vector-length _g24641_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g24642_ 2)))
                 (error "Context expects 2 values" _g24642_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target1057610597_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g24641_
                                                             0)))
                                                         (_tl1057810600_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g24641_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl1057810600_)
                                                         (letrec ((_loop1057910603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd1057710607_ _opt-bind1058310610_)
                             (if (gx#stx-pair? _hd1057710607_)
                                 (let ((_e1058010613_
                                        (gx#syntax-e _hd1057710607_)))
                                   (let ((_lp-hd1058110617_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e1058010613_)))
                                         (_lp-tl1058210620_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e1058010613_))))
                                     (_loop1057910603_
                                      _lp-tl1058210620_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd1058110617_
                                              _opt-bind1058310610_)))))
                                 (let ((_opt-bind1058410623_
                                        (reverse _opt-bind1058310610_)))
                                   ((lambda (_L10627_)
                                      (let ()
                                        (let* ((_g1064410652_
                                                (lambda (_g1064510648_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g1064510648_)))
                                               (_g1064310690_
                                                (lambda (_g1064510656_)
                                                  ((lambda (_L10659_)
                                                     (let ()
                                                       (let ()
                                                         (let ((__tmp24644
                                                                (list (foldr (lambda (_g1067310678_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              _g1067410681_)
                                       (let ()
                                         (declare (not safe))
                                         (cons _g1067310678_ _g1067410681_)))
                                     (foldr (lambda (_g1067510684_
                                                     _g1067610687_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g1067510684_
                                                      _g1067610687_)))
                                            (let ()
                                              (declare (not safe))
                                              (cons _L10659_ '()))
                                            _L10627_)
                                     _L10552_)
                              (_generate-opt-clause8948_
                               _primary10476_
                               (foldr cons (reverse _right*10495_) _pre10478_)
                               _rest10492_)))
                       (__tmp24643 (_recur10482_ _rest10492_ _right*10495_)))
                   (declare (not safe))
                   (cons __tmp24644 __tmp24643)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1064510656_))))
                                          (_g1064310690_ _hd10489_))))
                                    _opt-bind1058410623_))))))
                   (_loop1057910603_ _target1057610597_ '()))
                 (_g1057310590_ _g1057410594_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1057310590_
                                                _g1057410594_)))))
                                   (_g1057210694_ (reverse _right10487_)))))
                             _pre-bind1050910548_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1050410528_
                                                     _target1050110522_
                                                     '()))
                                                  (_g1049810515_
                                                   _g1049910519_)))))
                                        (_g1049810515_ _g1049910519_)))))
                            (_g1049710698_ _pre10478_))
                          (if (gx#stx-null? _tail10480_)
                              '()
                              (let* ((_g1070210743_
                                      (lambda (_g1070310739_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g1070310739_)))
                                     (_g1070110915_
                                      (lambda (_g1070310747_)
                                        (if (gx#stx-pair? _g1070310747_)
                                            (let ((_e1071010750_
                                                   (gx#syntax-e
                                                    _g1070310747_)))
                                              (let ((_hd1070910754_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1071010750_)))
                                                    (_tl1070810757_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1071010750_))))
                                                (if (gx#stx-pair/null?
                                                     _hd1070910754_)
                                                    (let ((_g24632_
                                                           (gx#syntax-split-splice
                                                            _hd1070910754_
                                                            '0)))
                                                      (begin
                                                        (let ((_g24633_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g24632_)
                             (##vector-length _g24632_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g24633_ 2)))
                      (error "Context expects 2 values" _g24633_)))
                (let ((_target1071110760_
                       (let () (declare (not safe)) (##vector-ref _g24632_ 0)))
                      (_tl1071310763_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g24632_ 1))))
                  (if (gx#stx-null? _tl1071310763_)
                      (letrec ((_loop1071410766_
                                (lambda (_hd1071210770_ _pre1071810773_)
                                  (if (gx#stx-pair? _hd1071210770_)
                                      (let ((_e1071510776_
                                             (gx#syntax-e _hd1071210770_)))
                                        (let ((_lp-hd1071610780_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1071510776_)))
                                              (_lp-tl1071710783_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1071510776_))))
                                          (_loop1071410766_
                                           _lp-tl1071710783_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1071610780_
                                                   _pre1071810773_)))))
                                      (let ((_pre1071910786_
                                             (reverse _pre1071810773_)))
                                        (if (gx#stx-pair? _tl1070810757_)
                                            (let ((_e1072210790_
                                                   (gx#syntax-e
                                                    _tl1070810757_)))
                                              (let ((_hd1072110794_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1072210790_)))
                                                    (_tl1072010797_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1072210790_))))
                                                (if (gx#stx-pair/null?
                                                     _hd1072110794_)
                                                    (let ((_g24634_
                                                           (gx#syntax-split-splice
                                                            _hd1072110794_
                                                            '0)))
                                                      (begin
                                                        (let ((_g24635_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g24634_)
                             (##vector-length _g24634_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g24635_ 2)))
                      (error "Context expects 2 values" _g24635_)))
                (let ((_target1072310800_
                       (let () (declare (not safe)) (##vector-ref _g24634_ 0)))
                      (_tl1072510803_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g24634_ 1))))
                  (if (gx#stx-null? _tl1072510803_)
                      (letrec ((_loop1072610806_
                                (lambda (_hd1072410810_ _opt1073010813_)
                                  (if (gx#stx-pair? _hd1072410810_)
                                      (let ((_e1072710816_
                                             (gx#syntax-e _hd1072410810_)))
                                        (let ((_lp-hd1072810820_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1072710816_)))
                                              (_lp-tl1072910823_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1072710816_))))
                                          (_loop1072610806_
                                           _lp-tl1072910823_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1072810820_
                                                   _opt1073010813_)))))
                                      (let ((_opt1073110826_
                                             (reverse _opt1073010813_)))
                                        (if (gx#stx-pair? _tl1072010797_)
                                            (let ((_e1073410830_
                                                   (gx#syntax-e
                                                    _tl1072010797_)))
                                              (let ((_hd1073310834_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1073410830_)))
                                                    (_tl1073210837_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1073410830_))))
                                                (if (gx#stx-pair?
                                                     _tl1073210837_)
                                                    (let ((_e1073710840_
                                                           (gx#syntax-e
                                                            _tl1073210837_)))
                                                      (let ((_hd1073610844_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1073710840_)))
                    (_tl1073510847_
                     (let () (declare (not safe)) (##cdr _e1073710840_))))
                (if (gx#stx-null? _tl1073510847_)
                    ((lambda (_L10850_ _L10852_ _L10853_ _L10854_)
                       (let ()
                         (list (list (foldr (lambda (_g1088210887_
                                                     _g1088310890_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g1088210887_
                                                      _g1088310890_)))
                                            (foldr (lambda (_g1088410893_
                                                            _g1088510896_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1088410893_
                                                             _g1088510896_)))
                                                   _L10852_
                                                   _L10853_)
                                            _L10854_)
                                     (gx#stx-wrap-source
                                      (let ((__tmp24638
                                             (gx#datum->syntax '#f 'apply))
                                            (__tmp24636
                                             (let ((__tmp24637
                                                    (foldr (lambda (_g1089810903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1089910906_)
                     (let ()
                       (declare (not safe))
                       (cons _g1089810903_ _g1089910906_)))
                   (foldr (lambda (_g1090010909_ _g1090110912_)
                            (let ()
                              (declare (not safe))
                              (cons _g1090010909_ _g1090110912_)))
                          (let () (declare (not safe)) (cons _L10852_ '()))
                          _L10853_)
                   _L10854_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L10850_ __tmp24637))))
                                        (declare (not safe))
                                        (cons __tmp24638 __tmp24636))
                                      (gx#stx-source _stx8934_))))))
                     _hd1073610844_
                     _hd1073310834_
                     _opt1073110826_
                     _pre1071910786_)
                    (_g1070210743_ _g1070310747_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1070210743_
                                                     _g1070310747_))))
                                            (_g1070210743_ _g1070310747_)))))))
                        (_loop1072610806_ _target1072310800_ '()))
                      (_g1070210743_ _g1070310747_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1070210743_
                                                     _g1070310747_))))
                                            (_g1070210743_ _g1070310747_)))))))
                        (_loop1071410766_ _target1071110760_ '()))
                      (_g1070210743_ _g1070310747_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1070210743_
                                                     _g1070310747_))))
                                            (_g1070210743_ _g1070310747_)))))
                                (_g1070110915_
                                 (list _pre10478_
                                       (reverse _right10487_)
                                       _tail10480_
                                       _primary10476_))))))))
                 (_generate-opt-clause8948_
                  (lambda (_primary10174_ _pre10176_ _opt10177_)
                    (let _recur10179_ ((_opt-rest10182_ _opt10177_)
                                       (_right10184_ '()))
                      (if (let () (declare (not safe)) (pair? _opt-rest10182_))
                          (let* ((_hd10186_ (car _opt-rest10182_))
                                 (_rest10189_ (cdr _opt-rest10182_))
                                 (_g1019210200_
                                  (lambda (_g1019310196_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1019310196_)))
                                 (_g1019110289_
                                  (lambda (_g1019310204_)
                                    ((lambda (_L10207_)
                                       (let ()
                                         (let* ((_g1022310231_
                                                 (lambda (_g1022410227_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g1022410227_)))
                                                (_g1022210285_
                                                 (lambda (_g1022410235_)
                                                   ((lambda (_L10238_)
                                                      (let ()
                                                        (let* ((_g1025110259_
                                                                (lambda (_g1025210255_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g1025210255_)))
                       (_g1025010281_
                        (lambda (_g1025210263_)
                          ((lambda (_L10266_)
                             (let ()
                               (let ()
                                 (let ((__tmp24656
                                        (gx#datum->syntax '#f 'let-values))
                                       (__tmp24650
                                        (let ((__tmp24652
                                               (let ((__tmp24653
                                                      (let ((__tmp24655
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L10207_ '())))
                    (__tmp24654
                     (let () (declare (not safe)) (cons _L10238_ '()))))
                (declare (not safe))
                (cons __tmp24655 __tmp24654))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24653 '())))
                                              (__tmp24651
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L10266_ '()))))
                                          (declare (not safe))
                                          (cons __tmp24652 __tmp24651))))
                                   (declare (not safe))
                                   (cons __tmp24656 __tmp24650)))))
                           _g1025210263_))))
                  (_g1025010281_
                   (_recur10179_
                    _rest10189_
                    (let ()
                      (declare (not safe))
                      (cons _L10207_ _right10184_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1022410235_))))
                                           (_g1022210285_ (cdr _hd10186_)))))
                                     _g1019310204_))))
                            (_g1019110289_ (car _hd10186_)))
                          (let* ((_g1029310330_
                                  (lambda (_g1029410326_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1029410326_)))
                                 (_g1029210472_
                                  (lambda (_g1029410334_)
                                    (if (gx#stx-pair? _g1029410334_)
                                        (let ((_e1030010337_
                                               (gx#syntax-e _g1029410334_)))
                                          (let ((_hd1029910341_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1030010337_)))
                                                (_tl1029810344_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1030010337_))))
                                            (if (gx#stx-pair/null?
                                                 _hd1029910341_)
                                                (let ((_g24645_
                                                       (gx#syntax-split-splice
                                                        _hd1029910341_
                                                        '0)))
                                                  (begin
                                                    (let ((_g24646_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g24645_)
                         (##vector-length _g24645_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g24646_ 2)))
                  (error "Context expects 2 values" _g24646_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1030110347_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g24645_
                                                              0)))
                                                          (_tl1030310350_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g24645_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1030310350_)
                                                          (letrec ((_loop1030410353_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1030210357_ _pre1030810360_)
                              (if (gx#stx-pair? _hd1030210357_)
                                  (let ((_e1030510363_
                                         (gx#syntax-e _hd1030210357_)))
                                    (let ((_lp-hd1030610367_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1030510363_)))
                                          (_lp-tl1030710370_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1030510363_))))
                                      (_loop1030410353_
                                       _lp-tl1030710370_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1030610367_
                                               _pre1030810360_)))))
                                  (let ((_pre1030910373_
                                         (reverse _pre1030810360_)))
                                    (if (gx#stx-pair? _tl1029810344_)
                                        (let ((_e1031210377_
                                               (gx#syntax-e _tl1029810344_)))
                                          (let ((_hd1031110381_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1031210377_)))
                                                (_tl1031010384_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1031210377_))))
                                            (if (gx#stx-pair/null?
                                                 _hd1031110381_)
                                                (let ((_g24647_
                                                       (gx#syntax-split-splice
                                                        _hd1031110381_
                                                        '0)))
                                                  (begin
                                                    (let ((_g24648_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g24647_)
                         (##vector-length _g24647_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g24648_ 2)))
                  (error "Context expects 2 values" _g24648_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1031310387_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g24647_
                                                              0)))
                                                          (_tl1031510390_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g24647_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1031510390_)
                                                          (letrec ((_loop1031610393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1031410397_ _opt1032010400_)
                              (if (gx#stx-pair? _hd1031410397_)
                                  (let ((_e1031710403_
                                         (gx#syntax-e _hd1031410397_)))
                                    (let ((_lp-hd1031810407_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1031710403_)))
                                          (_lp-tl1031910410_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1031710403_))))
                                      (_loop1031610393_
                                       _lp-tl1031910410_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1031810407_
                                               _opt1032010400_)))))
                                  (let ((_opt1032110413_
                                         (reverse _opt1032010400_)))
                                    (if (gx#stx-pair? _tl1031010384_)
                                        (let ((_e1032410417_
                                               (gx#syntax-e _tl1031010384_)))
                                          (let ((_hd1032310421_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1032410417_)))
                                                (_tl1032210424_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1032410417_))))
                                            (if (gx#stx-null? _tl1032210424_)
                                                ((lambda (_L10427_
                                                          _L10429_
                                                          _L10430_)
                                                   (let ()
                                                     (gx#stx-wrap-source
                                                      (let ((__tmp24649
                                                             (foldr (lambda (_g1045510460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1045610463_)
                              (let ()
                                (declare (not safe))
                                (cons _g1045510460_ _g1045610463_)))
                            (foldr (lambda (_g1045710466_ _g1045810469_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g1045710466_ _g1045810469_)))
                                   '()
                                   _L10429_)
                            _L10430_)))
                (declare (not safe))
                (cons _L10427_ __tmp24649))
              (gx#stx-source _stx8934_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1032310421_
                                                 _opt1032110413_
                                                 _pre1030910373_)
                                                (_g1029310330_
                                                 _g1029410334_))))
                                        (_g1029310330_ _g1029410334_)))))))
                    (_loop1031610393_ _target1031310387_ '()))
                  (_g1029310330_ _g1029410334_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1029310330_
                                                 _g1029410334_))))
                                        (_g1029310330_ _g1029410334_)))))))
                    (_loop1030410353_ _target1030110347_ '()))
                  (_g1029310330_ _g1029410334_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1029310330_
                                                 _g1029410334_))))
                                        (_g1029310330_ _g1029410334_)))))
                            (_g1029210472_
                             (list _pre10176_
                                   (reverse _right10184_)
                                   _primary10174_)))))))
                 (_generate-kw-primary8949_
                  (lambda (_key9550_ _kwargs9552_ _args9553_ _body9554_)
                    (letrec ((_make-body9556_
                              (lambda (_kwargs10043_ _kwvals10045_)
                                (if (let ()
                                      (declare (not safe))
                                      (pair? _kwargs10043_))
                                    (let* ((_kwarg10047_ (car _kwargs10043_))
                                           (_var10050_ (cadr _kwarg10047_))
                                           (_default10053_
                                            (caddr _kwarg10047_))
                                           (_kwval10056_ (car _kwvals10045_))
                                           (_rest-kwargs10059_
                                            (cdr _kwargs10043_))
                                           (_rest-kwvals10062_
                                            (cdr _kwvals10045_)))
                                      (let* ((_g1006710090_
                                              (lambda (_g1006810086_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _g1006810086_)))
                                             (_g1006610170_
                                              (lambda (_g1006810094_)
                                                (if (gx#stx-pair?
                                                     _g1006810094_)
                                                    (let ((_e1007510097_
                                                           (gx#syntax-e
                                                            _g1006810094_)))
                                                      (let ((_hd1007410101_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1007510097_)))
                    (_tl1007310104_
                     (let () (declare (not safe)) (##cdr _e1007510097_))))
                (if (gx#stx-pair? _tl1007310104_)
                    (let ((_e1007810107_ (gx#syntax-e _tl1007310104_)))
                      (let ((_hd1007710111_
                             (let ()
                               (declare (not safe))
                               (##car _e1007810107_)))
                            (_tl1007610114_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1007810107_))))
                        (if (gx#stx-pair? _tl1007610114_)
                            (let ((_e1008110117_ (gx#syntax-e _tl1007610114_)))
                              (let ((_hd1008010121_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1008110117_)))
                                    (_tl1007910124_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1008110117_))))
                                (if (gx#stx-pair? _tl1007910124_)
                                    (let ((_e1008410127_
                                           (gx#syntax-e _tl1007910124_)))
                                      (let ((_hd1008310131_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1008410127_)))
                                            (_tl1008210134_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1008410127_))))
                                        (if (gx#stx-null? _tl1008210134_)
                                            ((lambda (_L10137_
                                                      _L10139_
                                                      _L10140_
                                                      _L10141_)
                                               (let ()
                                                 (let ((__tmp24673
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let-values))
                                                       (__tmp24657
                                                        (let ((__tmp24659
                                                               (let ((__tmp24660
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp24672
                                     (let ()
                                       (declare (not safe))
                                       (cons _L10141_ '())))
                                    (__tmp24661
                                     (let ((__tmp24662
                                            (let ((__tmp24671
                                                   (gx#datum->syntax '#f 'if))
                                                  (__tmp24663
                                                   (let ((__tmp24666
                                                          (let ((__tmp24670
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'eq?))
                        (__tmp24667
                         (let ((__tmp24668
                                (let ((__tmp24669
                                       (gx#datum->syntax '#f 'absent-value)))
                                  (declare (not safe))
                                  (cons __tmp24669 '()))))
                           (declare (not safe))
                           (cons _L10140_ __tmp24668))))
                    (declare (not safe))
                    (cons __tmp24670 __tmp24667)))
                 (__tmp24664
                  (let ((__tmp24665
                         (let () (declare (not safe)) (cons _L10140_ '()))))
                    (declare (not safe))
                    (cons _L10139_ __tmp24665))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp24666
                                                           __tmp24664))))
                                              (declare (not safe))
                                              (cons __tmp24671 __tmp24663))))
                                       (declare (not safe))
                                       (cons __tmp24662 '()))))
                                (declare (not safe))
                                (cons __tmp24672 __tmp24661))))
                         (declare (not safe))
                         (cons __tmp24660 '())))
                      (__tmp24658
                       (let () (declare (not safe)) (cons _L10137_ '()))))
                  (declare (not safe))
                  (cons __tmp24659 __tmp24658))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24673
                                                         __tmp24657))))
                                             _hd1008310131_
                                             _hd1008010121_
                                             _hd1007710111_
                                             _hd1007410101_)
                                            (_g1006710090_ _g1006810094_))))
                                    (_g1006710090_ _g1006810094_))))
                            (_g1006710090_ _g1006810094_))))
                    (_g1006710090_ _g1006810094_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1006710090_
                                                     _g1006810094_)))))
                                        (_g1006610170_
                                         (list _var10050_
                                               _kwval10056_
                                               _default10053_
                                               (_make-body9556_
                                                _rest-kwargs10059_
                                                _rest-kwvals10062_)))))
                                    (let ()
                                      (declare (not safe))
                                      (cons 'begin _body9554_)))))
                             (_make-main9558_
                              (lambda ()
                                (let* ((_g98519859_
                                        (lambda (_g98529855_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g98529855_)))
                                       (_g985010035_
                                        (lambda (_g98529863_)
                                          ((lambda (_L9866_)
                                             (let ()
                                               (let* ((_g98789895_
                                                       (lambda (_g98799891_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g98799891_)))
                                                      (_g987710031_
                                                       (lambda (_g98799899_)
                                                         (if (gx#stx-pair/null?
                                                              _g98799899_)
                                                             (let ((_g24674_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g98799899_ '0)))
                       (begin
                         (let ((_g24675_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g24674_)
                                      (##vector-length _g24674_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g24675_ 2)))
                               (error "Context expects 2 values" _g24675_)))
                         (let ((_target98819902_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g24674_ 0)))
                               (_tl98839905_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g24674_ 1))))
                           (if (gx#stx-null? _tl98839905_)
                               (letrec ((_loop98849908_
                                         (lambda (_hd98829912_ _kwval98889915_)
                                           (if (gx#stx-pair? _hd98829912_)
                                               (let ((_e98859918_
                                                      (gx#syntax-e
                                                       _hd98829912_)))
                                                 (let ((_lp-hd98869922_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e98859918_)))
                                                       (_lp-tl98879925_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e98859918_))))
                                                   (_loop98849908_
                                                    _lp-tl98879925_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd98869922_
                                                            _kwval98889915_)))))
                                               (let ((_kwval98899928_
                                                      (reverse _kwval98889915_)))
                                                 ((lambda (_L9932_)
                                                    (let ()
                                                      (let* ((_g99499957_
                                                              (lambda (_g99509953_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g99509953_)))
                     (_g994810027_
                      (lambda (_g99509961_)
                        ((lambda (_L9964_)
                           (let ()
                             (let* ((_g99779985_
                                     (lambda (_g99789981_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g99789981_)))
                                    (_g997610015_
                                     (lambda (_g99789989_)
                                       ((lambda (_L9992_)
                                          (let ()
                                            (let ()
                                              (gx#stx-wrap-source
                                               (let ((__tmp24680
                                                      (gx#datum->syntax
                                                       '#f
                                                       'lambda))
                                                     (__tmp24676
                                                      (let ((__tmp24678
                                                             (let ((__tmp24679
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr (lambda (_g1000610009_ _g1000710012_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g1000610009_ _g1000710012_)))
                                   _L9964_
                                   _L9932_)))
                       (declare (not safe))
                       (cons _L9866_ __tmp24679)))
                    (__tmp24677
                     (let () (declare (not safe)) (cons _L9992_ '()))))
                (declare (not safe))
                (cons __tmp24678 __tmp24677))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24680 __tmp24676))
                                               (gx#stx-source _stx8934_)))))
                                        _g99789989_))))
                               (_g997610015_
                                (_make-body9556_
                                 _kwargs9552_
                                 (foldr (lambda (_g1001810021_ _g1001910024_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g1001810021_
                                                  _g1001910024_)))
                                        '()
                                        _L9932_))))))
                         _g99509961_))))
                (_g994810027_ _args9553_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _kwval98899928_))))))
                                 (_loop98849908_ _target98819902_ '()))
                               (_g98789895_ _g98799899_)))))
                     (_g98789895_ _g98799899_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g987710031_
                                                  (gx#gentemps
                                                   (map cadr _kwargs9552_))))))
                                           _g98529863_))))
                                  (_g985010035_
                                   (let ((_$e10039_ _key9550_))
                                     (if _$e10039_ _$e10039_ '_))))))
                             (_make-dispatch9559_
                              (lambda (_main9659_)
                                (let* ((_g96629670_
                                        (lambda (_g96639666_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g96639666_)))
                                       (_g96619841_
                                        (lambda (_g96639674_)
                                          ((lambda (_L9677_)
                                             (let ()
                                               (let* ((_g96899706_
                                                       (lambda (_g96909702_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g96909702_)))
                                                      (_g96889802_
                                                       (lambda (_g96909710_)
                                                         (if (gx#stx-pair/null?
                                                              _g96909710_)
                                                             (let ((_g24681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g96909710_ '0)))
                       (begin
                         (let ((_g24682_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g24681_)
                                      (##vector-length _g24681_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g24682_ 2)))
                               (error "Context expects 2 values" _g24682_)))
                         (let ((_target96929713_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g24681_ 0)))
                               (_tl96949716_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g24681_ 1))))
                           (if (gx#stx-null? _tl96949716_)
                               (letrec ((_loop96959719_
                                         (lambda (_hd96939723_
                                                  _get-kw96999726_)
                                           (if (gx#stx-pair? _hd96939723_)
                                               (let ((_e96969729_
                                                      (gx#syntax-e
                                                       _hd96939723_)))
                                                 (let ((_lp-hd96979733_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e96969729_)))
                                                       (_lp-tl96989736_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e96969729_))))
                                                   (_loop96959719_
                                                    _lp-tl96989736_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd96979733_
                                                            _get-kw96999726_)))))
                                               (let ((_get-kw97009739_
                                                      (reverse _get-kw96999726_)))
                                                 ((lambda (_L9743_)
                                                    (let ()
                                                      (let* ((_g97609768_
                                                              (lambda (_g97619764_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g97619764_)))
                     (_g97599798_
                      (lambda (_g97619772_)
                        ((lambda (_L9775_)
                           (let ()
                             (let ()
                               (gx#stx-wrap-source
                                (let ((__tmp24693
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp24683
                                       (let ((__tmp24691
                                              (let ((__tmp24692
                                                     (gx#datum->syntax
                                                      '#f
                                                      'args)))
                                                (declare (not safe))
                                                (cons _L9677_ __tmp24692)))
                                             (__tmp24684
                                              (let ((__tmp24685
                                                     (let ((__tmp24690
                                                            (gx#datum->syntax
                                                             '#f
                                                             'apply))
                                                           (__tmp24686
                                                            (let ((__tmp24687
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp24688
                                  (foldr (lambda (_g97899792_ _g97909795_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g97899792_ _g97909795_)))
                                         (let ((__tmp24689
                                                (gx#datum->syntax '#f 'args)))
                                           (declare (not safe))
                                           (cons __tmp24689 '()))
                                         _L9743_)))
                             (declare (not safe))
                             (cons _L9677_ __tmp24688))))
                      (declare (not safe))
                      (cons _L9775_ __tmp24687))))
               (declare (not safe))
               (cons __tmp24690 __tmp24686))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp24685 '()))))
                                         (declare (not safe))
                                         (cons __tmp24691 __tmp24684))))
                                  (declare (not safe))
                                  (cons __tmp24693 __tmp24683))
                                (gx#stx-source _stx8934_)))))
                         _g97619772_))))
                (_g97599798_ _main9659_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _get-kw97009739_))))))
                                 (_loop96959719_ _target96929713_ '()))
                               (_g96899706_ _g96909710_)))))
                     (_g96899706_ _g96909710_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g96889802_
                                                  (map (lambda (_kwarg9806_)
                                                         (let* ((_g98099817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g98109813_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g98109813_)))
                        (_g98089837_
                         (lambda (_g98109821_)
                           ((lambda (_L9824_)
                              (let ()
                                (let ((__tmp24701
                                       (gx#datum->syntax
                                        '#f
                                        'symbolic-table-ref))
                                      (__tmp24694
                                       (let ((__tmp24695
                                              (let ((__tmp24698
                                                     (let ((__tmp24700
                                                            (gx#datum->syntax
                                                             '#f
                                                             'quote))
                                                           (__tmp24699
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L9824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp24700 __tmp24699)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp24696
                                                     (let ((__tmp24697
                                                            (gx#datum->syntax
                                                             '#f
                                                             'absent-value)))
                                                       (declare (not safe))
                                                       (cons __tmp24697 '()))))
                                                (declare (not safe))
                                                (cons __tmp24698 __tmp24696))))
                                         (declare (not safe))
                                         (cons _L9677_ __tmp24695))))
                                  (declare (not safe))
                                  (cons __tmp24701 __tmp24694))))
                            _g98109821_))))
                   (_g98089837_ (car _kwarg9806_))))
               _kwargs9552_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g96639674_))))
                                  (_g96619841_
                                   (let ((_$e9845_ _key9550_))
                                     (if _$e9845_
                                         _$e9845_
                                         (gx#genident 'keys))))))))
                      (let* ((_g95619569_
                              (lambda (_g95629565_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g95629565_)))
                             (_g95609655_
                              (lambda (_g95629573_)
                                ((lambda (_L9576_)
                                   (let ()
                                     (let* ((_g95899597_
                                             (lambda (_g95909593_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g95909593_)))
                                            (_g95889651_
                                             (lambda (_g95909601_)
                                               ((lambda (_L9604_)
                                                  (let ()
                                                    (let* ((_g96179625_
                                                            (lambda (_g96189621_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g96189621_)))
                                                           (_g96169647_
                                                            (lambda (_g96189629_)
                                                              ((lambda (_L9632_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ()
                             (let ((__tmp24708
                                    (gx#datum->syntax '#f 'let-values))
                                   (__tmp24702
                                    (let ((__tmp24704
                                           (let ((__tmp24705
                                                  (let ((__tmp24707
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L9576_ '())))
                                                        (__tmp24706
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L9632_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24707
                                                          __tmp24706))))
                                             (declare (not safe))
                                             (cons __tmp24705 '())))
                                          (__tmp24703
                                           (let ()
                                             (declare (not safe))
                                             (cons _L9604_ '()))))
                                      (declare (not safe))
                                      (cons __tmp24704 __tmp24703))))
                               (declare (not safe))
                               (cons __tmp24708 __tmp24702)))))
                       _g96189629_))))
              (_g96169647_ (_make-main9558_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g95909601_))))
                                       (_g95889651_
                                        (_make-dispatch9559_ _L9576_)))))
                                 _g95629573_))))
                        (_g95609655_ (gx#genident 'kw-lambda-main))))))
                 (_generate-kw-dispatch8950_
                  (lambda (_primary9463_ _kwargs9465_ _strict?9466_)
                    (let* ((_g94689487_
                            (lambda (_g94699483_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g94699483_)))
                           (_g94679546_
                            (lambda (_g94699491_)
                              (if (gx#stx-pair? _g94699491_)
                                  (let ((_e94759494_
                                         (gx#syntax-e _g94699491_)))
                                    (let ((_hd94749498_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e94759494_)))
                                          (_tl94739501_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e94759494_))))
                                      (if (gx#stx-pair? _tl94739501_)
                                          (let ((_e94789504_
                                                 (gx#syntax-e _tl94739501_)))
                                            (let ((_hd94779508_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e94789504_)))
                                                  (_tl94769511_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e94789504_))))
                                              (if (gx#stx-pair? _tl94769511_)
                                                  (let ((_e94819514_
                                                         (gx#syntax-e
                                                          _tl94769511_)))
                                                    (let ((_hd94809518_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e94819514_)))
                                                          (_tl94799521_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e94819514_))))
                                                      (if (gx#stx-null?
                                                           _tl94799521_)
                                                          ((lambda (_L9524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L9526_
                            _L9527_)
                     (let ()
                       (let ((__tmp24721 (gx#datum->syntax '#f 'lambda%))
                             (__tmp24709
                              (let ((__tmp24710
                                     (let ((__tmp24711
                                            (let ((__tmp24720
                                                   (gx#datum->syntax
                                                    '#f
                                                    'apply))
                                                  (__tmp24712
                                                   (let ((__tmp24719
                                                          (gx#datum->syntax
                                                           '#f
                                                           'keyword-dispatch))
                                                         (__tmp24713
                                                          (let ((__tmp24716
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp24718 (gx#datum->syntax '#f 'quote))
                               (__tmp24717
                                (let ()
                                  (declare (not safe))
                                  (cons _L9527_ '()))))
                           (declare (not safe))
                           (cons __tmp24718 __tmp24717)))
                        (__tmp24714
                         (let ((__tmp24715
                                (let ()
                                  (declare (not safe))
                                  (cons _L9524_ '()))))
                           (declare (not safe))
                           (cons _L9526_ __tmp24715))))
                    (declare (not safe))
                    (cons __tmp24716 __tmp24714))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp24719
                                                           __tmp24713))))
                                              (declare (not safe))
                                              (cons __tmp24720 __tmp24712))))
                                       (declare (not safe))
                                       (cons __tmp24711 '()))))
                                (declare (not safe))
                                (cons _L9524_ __tmp24710))))
                         (declare (not safe))
                         (cons __tmp24721 __tmp24709))))
                   _hd94809518_
                   _hd94779508_
                   _hd94749498_)
                  (_g94689487_ _g94699491_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g94689487_ _g94699491_))))
                                          (_g94689487_ _g94699491_))))
                                  (_g94689487_ _g94699491_)))))
                      (_g94679546_
                       (list (if _strict?9466_
                                 (_generate-kw-table8951_
                                  (map car _kwargs9465_))
                                 '#f)
                             _primary9463_
                             (gx#genident 'args))))))
                 (_generate-kw-table8951_
                  (lambda (_kws9437_)
                    (let _rehash9440_ ((_pht9443_
                                        (make-vector (length _kws9437_) '#f)))
                      (let _lp9446_ ((_rest9449_ _kws9437_))
                        (if (let () (declare (not safe)) (pair? _rest9449_))
                            (let* ((_key9452_ (car _rest9449_))
                                   (_rest9455_ (cdr _rest9449_))
                                   (_pos9458_
                                    (fxmodulo
                                     (keyword-hash _key9452_)
                                     (vector-length _pht9443_))))
                              (if (vector-ref _pht9443_ _pos9458_)
                                  (if (fx< (vector-length _pht9443_) '8192)
                                      (_rehash9440_
                                       (make-vector
                                        (quotient
                                         (fx* '3 (vector-length _pht9443_))
                                         '2)
                                        '#f))
                                      (error '"Unresolvable keyword collision"
                                             _kws9437_))
                                  (begin
                                    (vector-set! _pht9443_ _pos9458_ _key9452_)
                                    (_lp9446_ _rest9455_))))
                            _pht9443_))))))
          (let* ((___stx2296522966_ _stx8934_)
                 (_g89558986_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx2296522966_))))
            (let ((___kont2296822969_
                   (lambda (_L9418_ _L9420_)
                     (let ((__tmp24723 (gx#datum->syntax '#f 'lambda%))
                           (__tmp24722
                            (let ()
                              (declare (not safe))
                              (cons _L9420_ _L9418_))))
                       (declare (not safe))
                       (cons __tmp24723 __tmp24722))))
                  (___kont2297022971_
                   (lambda (_L9190_ _L9192_)
                     (let ((_g24724_ (_opt-lambda-split8940_ _L9192_)))
                       (begin
                         (let ((_g24725_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g24724_)
                                      (##vector-length _g24724_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g24725_ 3)))
                               (error "Context expects 3 values" _g24725_)))
                         (let ((_pre9205_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g24724_ 0)))
                               (_opt9207_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g24724_ 1)))
                               (_tail9208_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g24724_ 2))))
                           (let* ((_g92109218_
                                   (lambda (_g92119214_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g92119214_)))
                                  (_g92099387_
                                   (lambda (_g92119222_)
                                     ((lambda (_L9225_)
                                        (let ()
                                          (let* ((_g92389246_
                                                  (lambda (_g92399242_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g92399242_)))
                                                 (_g92379383_
                                                  (lambda (_g92399250_)
                                                    ((lambda (_L9253_)
                                                       (let ()
                                                         (let* ((_g92669283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g92679279_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g92679279_)))
                        (_g92659379_
                         (lambda (_g92679287_)
                           (if (gx#stx-pair/null? _g92679287_)
                               (let ((_g24726_
                                      (gx#syntax-split-splice _g92679287_ '0)))
                                 (begin
                                   (let ((_g24727_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g24726_)
                                                (##vector-length _g24726_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g24727_ 2)))
                                         (error "Context expects 2 values"
                                                _g24727_)))
                                   (let ((_target92699290_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g24726_ 0)))
                                         (_tl92719293_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g24726_ 1))))
                                     (if (gx#stx-null? _tl92719293_)
                                         (letrec ((_loop92729296_
                                                   (lambda (_hd92709300_
                                                            _clause92769303_)
                                                     (if (gx#stx-pair?
                                                          _hd92709300_)
                                                         (let ((_e92739306_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd92709300_)))
                   (let ((_lp-hd92749310_
                          (let () (declare (not safe)) (##car _e92739306_)))
                         (_lp-tl92759313_
                          (let () (declare (not safe)) (##cdr _e92739306_))))
                     (_loop92729296_
                      _lp-tl92759313_
                      (let ()
                        (declare (not safe))
                        (cons _lp-hd92749310_ _clause92769303_)))))
                 (let ((_clause92779316_ (reverse _clause92769303_)))
                   ((lambda (_L9320_)
                      (let ()
                        (let* ((_g93379345_
                                (lambda (_g93389341_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g93389341_)))
                               (_g93369367_
                                (lambda (_g93389349_)
                                  ((lambda (_L9352_)
                                     (let ()
                                       (let ()
                                         (let ((__tmp24734
                                                (gx#datum->syntax
                                                 '#f
                                                 'let-values))
                                               (__tmp24728
                                                (let ((__tmp24730
                                                       (let ((__tmp24731
                                                              (let ((__tmp24733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let () (declare (not safe)) (cons _L9225_ '())))
                            (__tmp24732
                             (let () (declare (not safe)) (cons _L9253_ '()))))
                        (declare (not safe))
                        (cons __tmp24733 __tmp24732))))
                 (declare (not safe))
                 (cons __tmp24731 '())))
              (__tmp24729 (let () (declare (not safe)) (cons _L9352_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp24730
                                                        __tmp24729))))
                                           (declare (not safe))
                                           (cons __tmp24734 __tmp24728)))))
                                   _g93389349_))))
                          (_g93369367_
                           (gx#stx-wrap-source
                            (let ((__tmp24736
                                   (gx#datum->syntax '#f 'case-lambda))
                                  (__tmp24735
                                   (foldr (lambda (_g93709373_ _g93719376_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g93709373_ _g93719376_)))
                                          '()
                                          _L9320_)))
                              (declare (not safe))
                              (cons __tmp24736 __tmp24735))
                            (gx#stx-source _stx8934_))))))
                    _clause92779316_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop92729296_
                                            _target92699290_
                                            '()))
                                         (_g92669283_ _g92679287_)))))
                               (_g92669283_ _g92679287_)))))
                   (_g92659379_
                    (_generate-opt-dispatch8946_
                     _L9225_
                     _pre9205_
                     _opt9207_
                     _tail9208_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g92399250_))))
                                            (_g92379383_
                                             (gx#stx-wrap-source
                                              (_generate-opt-primary8945_
                                               _pre9205_
                                               _opt9207_
                                               _tail9208_
                                               _L9190_)
                                              (gx#stx-source _stx8934_))))))
                                      _g92119222_))))
                             (_g92099387_ (gx#genident 'opt-lambda))))))))
                  (___kont2297222973_
                   (lambda (_L9013_ _L9015_)
                     (let* ((_g90319038_
                             (lambda (_g90329034_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g90329034_)))
                            (_g90309159_
                             (lambda (_g90329042_)
                               ((lambda ()
                                  (let ()
                                    (let ((_g24737_
                                           (_kw-lambda-split8942_ _L9015_)))
                                      (begin
                                        (let ((_g24738_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g24737_)
                                                     (##vector-length _g24737_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g24738_ 3)))
                                              (error "Context expects 3 values"
                                                     _g24738_)))
                                        (let ((_key9051_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g24737_ 0)))
                                              (_kwargs9053_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g24737_ 1)))
                                              (_args9054_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g24737_ 2))))
                                          (let* ((_g90569064_
                                                  (lambda (_g90579060_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g90579060_)))
                                                 (_g90559155_
                                                  (lambda (_g90579068_)
                                                    ((lambda (_L9071_)
                                                       (let ()
                                                         (let* ((_g90899097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g90909093_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g90909093_)))
                        (_g90889151_
                         (lambda (_g90909101_)
                           ((lambda (_L9104_)
                              (let ()
                                (let* ((_g91179125_
                                        (lambda (_g91189121_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g91189121_)))
                                       (_g91169147_
                                        (lambda (_g91189129_)
                                          ((lambda (_L9132_)
                                             (let ()
                                               (let ()
                                                 (let ((__tmp24745
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let-values))
                                                       (__tmp24739
                                                        (let ((__tmp24741
                                                               (let ((__tmp24742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp24744
                                     (let ()
                                       (declare (not safe))
                                       (cons _L9071_ '())))
                                    (__tmp24743
                                     (let ()
                                       (declare (not safe))
                                       (cons _L9104_ '()))))
                                (declare (not safe))
                                (cons __tmp24744 __tmp24743))))
                         (declare (not safe))
                         (cons __tmp24742 '())))
                      (__tmp24740
                       (let () (declare (not safe)) (cons _L9132_ '()))))
                  (declare (not safe))
                  (cons __tmp24741 __tmp24740))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24745
                                                         __tmp24739)))))
                                           _g91189129_))))
                                  (_g91169147_
                                   (gx#stx-wrap-source
                                    (_generate-kw-dispatch8950_
                                     _L9071_
                                     _kwargs9053_
                                     (let ()
                                       (declare (not safe))
                                       (not _key9051_)))
                                    (gx#stx-source _stx8934_))))))
                            _g90909101_))))
                   (_g90889151_
                    (gx#stx-wrap-source
                     (_generate-kw-primary8949_
                      _key9051_
                      _kwargs9053_
                      _args9054_
                      _L9013_)
                     (gx#stx-source _stx8934_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g90579068_))))
                                            (_g90559155_
                                             (gx#genident
                                              'kw-lambda))))))))))))
                       (_g90309159_
                        (_check-duplicate-bindings8944_ _L9015_))))))
              (let* ((___match2301023011_
                      (lambda (_e89778993_
                               _hd89768997_
                               _tl89759000_
                               _e89809003_
                               _hd89799007_
                               _tl89789010_)
                        (let ((_L9013_ _tl89789010_) (_L9015_ _hd89799007_))
                          (if (_kw-lambda?8941_ _L9015_)
                              (___kont2297222973_ _L9013_ _L9015_)
                              (let () (declare (not safe)) (_g89558986_))))))
                     (___match2299822999_
                      (lambda (_e89699170_
                               _hd89689174_
                               _tl89679177_
                               _e89729180_
                               _hd89719184_
                               _tl89709187_)
                        (let ((_L9190_ _tl89709187_) (_L9192_ _hd89719184_))
                          (if (_opt-lambda?8939_ _L9192_)
                              (___kont2297022971_ _L9190_ _L9192_)
                              (___match2301023011_
                               _e89699170_
                               _hd89689174_
                               _tl89679177_
                               _e89729180_
                               _hd89719184_
                               _tl89709187_)))))
                     (___match2298622987_
                      (lambda (_e89619398_
                               _hd89609402_
                               _tl89599405_
                               _e89649408_
                               _hd89639412_
                               _tl89629415_)
                        (let ((_L9418_ _tl89629415_) (_L9420_ _hd89639412_))
                          (if (_simple-lambda?8937_ _L9420_)
                              (___kont2296822969_ _L9418_ _L9420_)
                              (___match2299822999_
                               _e89619398_
                               _hd89609402_
                               _tl89599405_
                               _e89649408_
                               _hd89639412_
                               _tl89629415_))))))
                (if (gx#stx-pair? ___stx2296522966_)
                    (let ((_e89619398_ (gx#syntax-e ___stx2296522966_)))
                      (let ((_tl89599405_
                             (let () (declare (not safe)) (##cdr _e89619398_)))
                            (_hd89609402_
                             (let ()
                               (declare (not safe))
                               (##car _e89619398_))))
                        (if (gx#stx-pair? _tl89599405_)
                            (let ((_e89649408_ (gx#syntax-e _tl89599405_)))
                              (let ((_tl89629415_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e89649408_)))
                                    (_hd89639412_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e89649408_))))
                                (___match2298622987_
                                 _e89619398_
                                 _hd89609402_
                                 _tl89599405_
                                 _e89649408_
                                 _hd89639412_
                                 _tl89629415_)))
                            (let () (declare (not safe)) (_g89558986_)))))
                    (let () (declare (not safe)) (_g89558986_)))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#def|
      (lambda (_$stx12350_)
        (let* ((___stx2301323014_ _$stx12350_)
               (_g1235612420_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2301323014_))))
          (let ((___kont2301623017_
                 (lambda (_L12650_ _L12652_ _L12653_ _L12654_)
                   (let ((__tmp24753 (gx#datum->syntax '#f 'def))
                         (__tmp24746
                          (let ((__tmp24752
                                 (let ()
                                   (declare (not safe))
                                   (cons _L12654_ _L12653_)))
                                (__tmp24747
                                 (let ((__tmp24748
                                        (let ((__tmp24751
                                               (gx#datum->syntax '#f 'lambda))
                                              (__tmp24749
                                               (let ((__tmp24750
                                                      (foldr (lambda (_g1267612679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1267712682_)
                       (let ()
                         (declare (not safe))
                         (cons _g1267612679_ _g1267712682_)))
                     '()
                     _L12650_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L12652_ __tmp24750))))
                                          (declare (not safe))
                                          (cons __tmp24751 __tmp24749))))
                                   (declare (not safe))
                                   (cons __tmp24748 '()))))
                            (declare (not safe))
                            (cons __tmp24752 __tmp24747))))
                     (declare (not safe))
                     (cons __tmp24753 __tmp24746))))
                (___kont2302023021_
                 (lambda (_L12542_ _L12544_ _L12545_)
                   (let ((__tmp24761 (gx#datum->syntax '#f 'define-values))
                         (__tmp24754
                          (let ((__tmp24760
                                 (let ()
                                   (declare (not safe))
                                   (cons _L12545_ '())))
                                (__tmp24755
                                 (let ((__tmp24756
                                        (let ((__tmp24759
                                               (gx#datum->syntax '#f 'lambda))
                                              (__tmp24757
                                               (let ((__tmp24758
                                                      (foldr (lambda (_g1256412567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1256512570_)
                       (let ()
                         (declare (not safe))
                         (cons _g1256412567_ _g1256512570_)))
                     '()
                     _L12542_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L12544_ __tmp24758))))
                                          (declare (not safe))
                                          (cons __tmp24759 __tmp24757))))
                                   (declare (not safe))
                                   (cons __tmp24756 '()))))
                            (declare (not safe))
                            (cons __tmp24760 __tmp24755))))
                     (declare (not safe))
                     (cons __tmp24761 __tmp24754))))
                (___kont2302423025_
                 (lambda (_L12457_ _L12459_)
                   (let ((__tmp24765 (gx#datum->syntax '#f 'define-values))
                         (__tmp24762
                          (let ((__tmp24764
                                 (let ()
                                   (declare (not safe))
                                   (cons _L12459_ '())))
                                (__tmp24763
                                 (let ()
                                   (declare (not safe))
                                   (cons _L12457_ '()))))
                            (declare (not safe))
                            (cons __tmp24764 __tmp24763))))
                     (declare (not safe))
                     (cons __tmp24765 __tmp24762)))))
            (let* ((___match2310423105_
                    (lambda (_e1240812427_
                             _hd1240712431_
                             _tl1240612434_
                             _e1241112437_
                             _hd1241012441_
                             _tl1240912444_
                             _e1241412447_
                             _hd1241312451_
                             _tl1241212454_)
                      (let ((_L12457_ _hd1241312451_)
                            (_L12459_ _hd1241012441_))
                        (if (gx#identifier? _L12459_)
                            (___kont2302423025_ _L12457_ _L12459_)
                            (let () (declare (not safe)) (_g1235612420_))))))
                   (___match2309623097_
                    (lambda (_e1240812427_
                             _hd1240712431_
                             _tl1240612434_
                             _e1241112437_
                             _hd1241012441_
                             _tl1240912444_)
                      (if (gx#stx-pair? _tl1240912444_)
                          (let ((_e1241412447_ (gx#syntax-e _tl1240912444_)))
                            (let ((_tl1241212454_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1241412447_)))
                                  (_hd1241312451_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1241412447_))))
                              (if (gx#stx-null? _tl1241212454_)
                                  (___match2310423105_
                                   _e1240812427_
                                   _hd1240712431_
                                   _tl1240612434_
                                   _e1241112437_
                                   _hd1241012441_
                                   _tl1240912444_
                                   _e1241412447_
                                   _hd1241312451_
                                   _tl1241212454_)
                                  (let ()
                                    (declare (not safe))
                                    (_g1235612420_)))))
                          (let () (declare (not safe)) (_g1235612420_)))))
                   (___match2308423085_
                    (lambda (_e1238812482_
                             _hd1238712486_
                             _tl1238612489_
                             _e1239112492_
                             _hd1239012496_
                             _tl1238912499_
                             _e1239412502_
                             _hd1239312506_
                             _tl1239212509_
                             ___splice2302223023_
                             _target1239512512_
                             _tl1239712515_)
                      (letrec ((_loop1239812518_
                                (lambda (_hd1239612522_ _body1240212525_)
                                  (if (gx#stx-pair? _hd1239612522_)
                                      (let ((_e1239912528_
                                             (gx#syntax-e _hd1239612522_)))
                                        (let ((_lp-tl1240112535_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1239912528_)))
                                              (_lp-hd1240012532_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1239912528_))))
                                          (_loop1239812518_
                                           _lp-tl1240112535_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1240012532_
                                                   _body1240212525_)))))
                                      (let ((_body1240312538_
                                             (reverse _body1240212525_)))
                                        (let ((_L12542_ _body1240312538_)
                                              (_L12544_ _tl1239212509_)
                                              (_L12545_ _hd1239312506_))
                                          (if (gx#identifier? _L12545_)
                                              (___kont2302023021_
                                               _L12542_
                                               _L12544_
                                               _L12545_)
                                              (___match2309623097_
                                               _e1238812482_
                                               _hd1238712486_
                                               _tl1238612489_
                                               _e1239112492_
                                               _hd1239012496_
                                               _tl1238912499_))))))))
                        (_loop1239812518_ _target1239512512_ '()))))
                   (___match2305823059_
                    (lambda (_e1236412580_
                             _hd1236312584_
                             _tl1236212587_
                             _e1236712590_
                             _hd1236612594_
                             _tl1236512597_
                             _e1237012600_
                             _hd1236912604_
                             _tl1236812607_
                             _e1237312610_
                             _hd1237212614_
                             _tl1237112617_
                             ___splice2301823019_
                             _target1237412620_
                             _tl1237612623_)
                      (letrec ((_loop1237712626_
                                (lambda (_hd1237512630_ _body1238112633_)
                                  (if (gx#stx-pair? _hd1237512630_)
                                      (let ((_e1237812636_
                                             (gx#syntax-e _hd1237512630_)))
                                        (let ((_lp-tl1238012643_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1237812636_)))
                                              (_lp-hd1237912640_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1237812636_))))
                                          (_loop1237712626_
                                           _lp-tl1238012643_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1237912640_
                                                   _body1238112633_)))))
                                      (let ((_body1238212646_
                                             (reverse _body1238112633_)))
                                        (___kont2301623017_
                                         _body1238212646_
                                         _tl1236812607_
                                         _tl1237112617_
                                         _hd1237212614_))))))
                        (_loop1237712626_ _target1237412620_ '())))))
              (if (gx#stx-pair? ___stx2301323014_)
                  (let ((_e1236412580_ (gx#syntax-e ___stx2301323014_)))
                    (let ((_tl1236212587_
                           (let () (declare (not safe)) (##cdr _e1236412580_)))
                          (_hd1236312584_
                           (let ()
                             (declare (not safe))
                             (##car _e1236412580_))))
                      (if (gx#stx-pair? _tl1236212587_)
                          (let ((_e1236712590_ (gx#syntax-e _tl1236212587_)))
                            (let ((_tl1236512597_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1236712590_)))
                                  (_hd1236612594_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1236712590_))))
                              (if (gx#stx-pair? _hd1236612594_)
                                  (let ((_e1237012600_
                                         (gx#syntax-e _hd1236612594_)))
                                    (let ((_tl1236812607_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1237012600_)))
                                          (_hd1236912604_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1237012600_))))
                                      (if (gx#stx-pair? _hd1236912604_)
                                          (let ((_e1237312610_
                                                 (gx#syntax-e _hd1236912604_)))
                                            (let ((_tl1237112617_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1237312610_)))
                                                  (_hd1237212614_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1237312610_))))
                                              (if (gx#stx-pair/null?
                                                   _tl1236512597_)
                                                  (let ((___splice2301823019_
                                                         (gx#syntax-split-splice
                                                          _tl1236512597_
                                                          '0)))
                                                    (let ((_tl1237612623_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice2301823019_
                                                              '1)))
                                                          (_target1237412620_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice2301823019_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl1237612623_)
                                                          (___match2305823059_
                                                           _e1236412580_
                                                           _hd1236312584_
                                                           _tl1236212587_
                                                           _e1236712590_
                                                           _hd1236612594_
                                                           _tl1236512597_
                                                           _e1237012600_
                                                           _hd1236912604_
                                                           _tl1236812607_
                                                           _e1237312610_
                                                           _hd1237212614_
                                                           _tl1237112617_
                                                           ___splice2301823019_
                                                           _target1237412620_
                                                           _tl1237612623_)
                                                          (if (gx#stx-pair?
                                                               _tl1236512597_)
                                                              (let ((_e1241412447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1236512597_)))
                        (let ((_tl1241212454_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1241412447_)))
                              (_hd1241312451_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1241412447_))))
                          (if (gx#stx-null? _tl1241212454_)
                              (___match2310423105_
                               _e1236412580_
                               _hd1236312584_
                               _tl1236212587_
                               _e1236712590_
                               _hd1236612594_
                               _tl1236512597_
                               _e1241412447_
                               _hd1241312451_
                               _tl1241212454_)
                              (let () (declare (not safe)) (_g1235612420_)))))
                      (let () (declare (not safe)) (_g1235612420_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl1236512597_)
                                                      (let ((_e1241412447_
                                                             (gx#syntax-e
                                                              _tl1236512597_)))
                                                        (let ((_tl1241212454_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1241412447_)))
                      (_hd1241312451_
                       (let () (declare (not safe)) (##car _e1241412447_))))
                  (if (gx#stx-null? _tl1241212454_)
                      (___match2310423105_
                       _e1236412580_
                       _hd1236312584_
                       _tl1236212587_
                       _e1236712590_
                       _hd1236612594_
                       _tl1236512597_
                       _e1241412447_
                       _hd1241312451_
                       _tl1241212454_)
                      (let () (declare (not safe)) (_g1235612420_)))))
              (let () (declare (not safe)) (_g1235612420_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl1236512597_)
                                              (let ((___splice2302223023_
                                                     (gx#syntax-split-splice
                                                      _tl1236512597_
                                                      '0)))
                                                (let ((_tl1239712515_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2302223023_
                                                          '1)))
                                                      (_target1239512512_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2302223023_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1239712515_)
                                                      (___match2308423085_
                                                       _e1236412580_
                                                       _hd1236312584_
                                                       _tl1236212587_
                                                       _e1236712590_
                                                       _hd1236612594_
                                                       _tl1236512597_
                                                       _e1237012600_
                                                       _hd1236912604_
                                                       _tl1236812607_
                                                       ___splice2302223023_
                                                       _target1239512512_
                                                       _tl1239712515_)
                                                      (if (gx#stx-pair?
                                                           _tl1236512597_)
                                                          (let ((_e1241412447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1236512597_)))
                    (let ((_tl1241212454_
                           (let () (declare (not safe)) (##cdr _e1241412447_)))
                          (_hd1241312451_
                           (let ()
                             (declare (not safe))
                             (##car _e1241412447_))))
                      (if (gx#stx-null? _tl1241212454_)
                          (___match2310423105_
                           _e1236412580_
                           _hd1236312584_
                           _tl1236212587_
                           _e1236712590_
                           _hd1236612594_
                           _tl1236512597_
                           _e1241412447_
                           _hd1241312451_
                           _tl1241212454_)
                          (let () (declare (not safe)) (_g1235612420_)))))
                  (let () (declare (not safe)) (_g1235612420_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl1236512597_)
                                                  (let ((_e1241412447_
                                                         (gx#syntax-e
                                                          _tl1236512597_)))
                                                    (let ((_tl1241212454_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1241412447_)))
                                                          (_hd1241312451_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1241412447_))))
                                                      (if (gx#stx-null?
                                                           _tl1241212454_)
                                                          (___match2310423105_
                                                           _e1236412580_
                                                           _hd1236312584_
                                                           _tl1236212587_
                                                           _e1236712590_
                                                           _hd1236612594_
                                                           _tl1236512597_
                                                           _e1241412447_
                                                           _hd1241312451_
                                                           _tl1241212454_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g1235612420_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1235612420_)))))))
                                  (if (gx#stx-pair? _tl1236512597_)
                                      (let ((_e1241412447_
                                             (gx#syntax-e _tl1236512597_)))
                                        (let ((_tl1241212454_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1241412447_)))
                                              (_hd1241312451_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1241412447_))))
                                          (if (gx#stx-null? _tl1241212454_)
                                              (___match2310423105_
                                               _e1236412580_
                                               _hd1236312584_
                                               _tl1236212587_
                                               _e1236712590_
                                               _hd1236612594_
                                               _tl1236512597_
                                               _e1241412447_
                                               _hd1241312451_
                                               _tl1241212454_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1235612420_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1235612420_))))))
                          (let () (declare (not safe)) (_g1235612420_)))))
                  (let () (declare (not safe)) (_g1235612420_))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#def*|
      (lambda (_$stx12691_)
        (let* ((_g1269512719_
                (lambda (_g1269612715_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1269612715_)))
               (_g1269412804_
                (lambda (_g1269612723_)
                  (if (gx#stx-pair? _g1269612723_)
                      (let ((_e1270112726_ (gx#syntax-e _g1269612723_)))
                        (let ((_hd1270012730_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1270112726_)))
                              (_tl1269912733_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1270112726_))))
                          (if (gx#stx-pair? _tl1269912733_)
                              (let ((_e1270412736_
                                     (gx#syntax-e _tl1269912733_)))
                                (let ((_hd1270312740_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1270412736_)))
                                      (_tl1270212743_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1270412736_))))
                                  (if (gx#stx-pair/null? _tl1270212743_)
                                      (let ((_g24766_
                                             (gx#syntax-split-splice
                                              _tl1270212743_
                                              '0)))
                                        (begin
                                          (let ((_g24767_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g24766_)
                                                       (##vector-length
                                                        _g24766_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g24767_ 2)))
                                                (error "Context expects 2 values"
                                                       _g24767_)))
                                          (let ((_target1270512746_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24766_ 0)))
                                                (_tl1270712749_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24766_ 1))))
                                            (if (gx#stx-null? _tl1270712749_)
                                                (letrec ((_loop1270812752_
                                                          (lambda (_hd1270612756_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clauses1271212759_)
                    (if (gx#stx-pair? _hd1270612756_)
                        (let ((_e1270912762_ (gx#syntax-e _hd1270612756_)))
                          (let ((_lp-hd1271012766_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1270912762_)))
                                (_lp-tl1271112769_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1270912762_))))
                            (_loop1270812752_
                             _lp-tl1271112769_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1271012766_ _clauses1271212759_)))))
                        (let ((_clauses1271312772_
                               (reverse _clauses1271212759_)))
                          ((lambda (_L12776_ _L12778_)
                             (if (gx#identifier? _L12778_)
                                 (let ((__tmp24774
                                        (gx#datum->syntax '#f 'define-values))
                                       (__tmp24768
                                        (let ((__tmp24773
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L12778_ '())))
                                              (__tmp24769
                                               (let ((__tmp24770
                                                      (let ((__tmp24772
                                                             (gx#datum->syntax
                                                              '#f
                                                              'case-lambda))
                                                            (__tmp24771
                                                             (foldr (lambda (_g1279512798_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1279612801_)
                              (let ()
                                (declare (not safe))
                                (cons _g1279512798_ _g1279612801_)))
                            '()
                            _L12776_)))
                (declare (not safe))
                (cons __tmp24772 __tmp24771))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24770 '()))))
                                          (declare (not safe))
                                          (cons __tmp24773 __tmp24769))))
                                   (declare (not safe))
                                   (cons __tmp24774 __tmp24768))
                                 (_g1269512719_ _g1269612723_)))
                           _clauses1271312772_
                           _hd1270312740_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1270812752_
                                                   _target1270512746_
                                                   '()))
                                                (_g1269512719_
                                                 _g1269612723_)))))
                                      (_g1269512719_ _g1269612723_))))
                              (_g1269512719_ _g1269612723_))))
                      (_g1269512719_ _g1269612723_)))))
          (_g1269412804_ _$stx12691_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#defvalues|
      (lambda (_$stx12809_)
        (let* ((_g1281312831_
                (lambda (_g1281412827_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1281412827_)))
               (_g1281212886_
                (lambda (_g1281412835_)
                  (if (gx#stx-pair? _g1281412835_)
                      (let ((_e1281912838_ (gx#syntax-e _g1281412835_)))
                        (let ((_hd1281812842_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1281912838_)))
                              (_tl1281712845_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1281912838_))))
                          (if (gx#stx-pair? _tl1281712845_)
                              (let ((_e1282212848_
                                     (gx#syntax-e _tl1281712845_)))
                                (let ((_hd1282112852_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1282212848_)))
                                      (_tl1282012855_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1282212848_))))
                                  (if (gx#stx-pair? _tl1282012855_)
                                      (let ((_e1282512858_
                                             (gx#syntax-e _tl1282012855_)))
                                        (let ((_hd1282412862_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1282512858_)))
                                              (_tl1282312865_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1282512858_))))
                                          (if (gx#stx-null? _tl1282312865_)
                                              ((lambda (_L12868_ _L12870_)
                                                 (if (gx#identifier-list?
                                                      _L12870_)
                                                     (let ((__tmp24777
                                                            (gx#datum->syntax
                                                             '#f
                                                             'define-values))
                                                           (__tmp24775
                                                            (let ((__tmp24776
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L12868_ '()))))
                      (declare (not safe))
                      (cons _L12870_ __tmp24776))))
               (declare (not safe))
               (cons __tmp24777 __tmp24775))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1281312831_
                                                      _g1281412835_)))
                                               _hd1282412862_
                                               _hd1282112852_)
                                              (_g1281312831_ _g1281412835_))))
                                      (_g1281312831_ _g1281412835_))))
                              (_g1281312831_ _g1281412835_))))
                      (_g1281312831_ _g1281412835_)))))
          (_g1281212886_ _$stx12809_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#case|
      (lambda (_$stx12890_)
        (let* ((_g1289412918_
                (lambda (_g1289512914_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1289512914_)))
               (_g1289313003_
                (lambda (_g1289512922_)
                  (if (gx#stx-pair? _g1289512922_)
                      (let ((_e1290012925_ (gx#syntax-e _g1289512922_)))
                        (let ((_hd1289912929_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1290012925_)))
                              (_tl1289812932_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1290012925_))))
                          (if (gx#stx-pair? _tl1289812932_)
                              (let ((_e1290312935_
                                     (gx#syntax-e _tl1289812932_)))
                                (let ((_hd1290212939_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1290312935_)))
                                      (_tl1290112942_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1290312935_))))
                                  (if (gx#stx-pair/null? _tl1290112942_)
                                      (let ((_g24778_
                                             (gx#syntax-split-splice
                                              _tl1290112942_
                                              '0)))
                                        (begin
                                          (let ((_g24779_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g24778_)
                                                       (##vector-length
                                                        _g24778_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g24779_ 2)))
                                                (error "Context expects 2 values"
                                                       _g24779_)))
                                          (let ((_target1290412945_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24778_ 0)))
                                                (_tl1290612948_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24778_ 1))))
                                            (if (gx#stx-null? _tl1290612948_)
                                                (letrec ((_loop1290712951_
                                                          (lambda (_hd1290512955_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause1291112958_)
                    (if (gx#stx-pair? _hd1290512955_)
                        (let ((_e1290812961_ (gx#syntax-e _hd1290512955_)))
                          (let ((_lp-hd1290912965_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1290812961_)))
                                (_lp-tl1291012968_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1290812961_))))
                            (_loop1290712951_
                             _lp-tl1291012968_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1290912965_ _clause1291112958_)))))
                        (let ((_clause1291212971_
                               (reverse _clause1291112958_)))
                          ((lambda (_L12975_ _L12977_)
                             (let ((__tmp24790 (gx#datum->syntax '#f 'let))
                                   (__tmp24780
                                    (let ((__tmp24787
                                           (let ((__tmp24789
                                                  (gx#datum->syntax '#f '$e))
                                                 (__tmp24788
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L12977_ '()))))
                                             (declare (not safe))
                                             (cons __tmp24789 __tmp24788)))
                                          (__tmp24781
                                           (let ((__tmp24782
                                                  (let ((__tmp24786
                                                         (gx#datum->syntax
                                                          '#f
                                                          '~case))
                                                        (__tmp24783
                                                         (let ((__tmp24785
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$e))
                       (__tmp24784
                        (foldr (lambda (_g1299412997_ _g1299513000_)
                                 (let ()
                                   (declare (not safe))
                                   (cons _g1299412997_ _g1299513000_)))
                               '()
                               _L12975_)))
                   (declare (not safe))
                   (cons __tmp24785 __tmp24784))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24786
                                                          __tmp24783))))
                                             (declare (not safe))
                                             (cons __tmp24782 '()))))
                                      (declare (not safe))
                                      (cons __tmp24787 __tmp24781))))
                               (declare (not safe))
                               (cons __tmp24790 __tmp24780)))
                           _clause1291212971_
                           _hd1290212939_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1290712951_
                                                   _target1290412945_
                                                   '()))
                                                (_g1289412918_
                                                 _g1289512922_)))))
                                      (_g1289412918_ _g1289512922_))))
                              (_g1289412918_ _g1289512922_))))
                      (_g1289412918_ _g1289512922_)))))
          (_g1289313003_ _$stx12890_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#~case|
      (lambda (_stx13008_)
        (letrec ((_parse-clauses13011_
                  (lambda (_e15474_ _clauses15476_)
                    (let _lp15478_ ((_rest15481_ _clauses15476_)
                                    (_datums15483_ '())
                                    (_dispatch15484_ '())
                                    (_default15485_ '#f))
                      (let* ((___stx2320323204_ _rest15481_)
                             (_g1548815500_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2320323204_))))
                        (let ((___kont2320623207_
                               (lambda (_L15532_ _L15534_)
                                 (let* ((___stx2310723108_ _L15534_)
                                        (_g1555215625_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2310723108_))))
                                   (let ((___kont2311023111_
                                          (lambda (_L15990_)
                                            (if (gx#stx-null? _L15532_)
                                                (let* ((_g1600516013_
                                                        (lambda (_g1600616009_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g1600616009_)))
                                                       (_g1600416032_
                                                        (lambda (_g1600616017_)
                                                          ((lambda (_L16020_)
                                                             (let ()
                                                               (_lp15478_
                                                                '()
                                                                _datums15483_
                                                                _dispatch15484_
                                                                (let ((__tmp24791
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L16020_ '()))))
                          (declare (not safe))
                          (cons _L15990_ __tmp24791)))))
                   _g1600616017_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1600416032_ _e15474_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _stx13008_
                                                 _L15534_))))
                                         (___kont2311223113_
                                          (lambda (_L15930_)
                                            (if (gx#stx-null? _L15532_)
                                                (_lp15478_
                                                 '()
                                                 _datums15483_
                                                 _dispatch15484_
                                                 (let ((__tmp24793
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin))
                                                       (__tmp24792
                                                        (foldr (lambda (_g1594415947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1594515950_)
                         (let ()
                           (declare (not safe))
                           (cons _g1594415947_ _g1594515950_)))
                       '()
                       _L15930_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24793
                                                         __tmp24792)))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _stx13008_
                                                 _L15534_))))
                                         (___kont2311623117_
                                          (lambda (_L15815_ _L15817_)
                                            (if (let ((__tmp24797
                                                       (foldr (lambda (_g1583515838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1583615841_)
                        (let ()
                          (declare (not safe))
                          (cons _g1583515838_ _g1583615841_)))
                      '()
                      _L15817_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (null? __tmp24797))
                                                (_lp15478_
                                                 _L15532_
                                                 _datums15483_
                                                 _dispatch15484_
                                                 _default15485_)
                                                (let* ((_g1584415852_
                                                        (lambda (_g1584515848_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g1584515848_)))
                                                       (_g1584315879_
                                                        (lambda (_g1584515856_)
                                                          ((lambda (_L15859_)
                                                             (let ()
                                                               (_lp15478_
                                                                _L15532_
                                                                (let ((__tmp24794
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (map gx#stx-e
                                    (foldr (lambda (_g1587015873_
                                                    _g1587115876_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g1587015873_
                                                     _g1587115876_)))
                                           '()
                                           _L15817_))))
                          (declare (not safe))
                          (cons __tmp24794 _datums15483_))
                        (let ((__tmp24795
                               (let ((__tmp24796
                                      (let ()
                                        (declare (not safe))
                                        (cons _L15859_ '()))))
                                 (declare (not safe))
                                 (cons _L15815_ __tmp24796))))
                          (declare (not safe))
                          (cons __tmp24795 _dispatch15484_))
                        _default15485_)))
                   _g1584515856_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1584315879_ _e15474_)))))
                                         (___kont2312023121_
                                          (lambda (_L15702_ _L15704_)
                                            (if (let ((__tmp24802
                                                       (foldr (lambda (_g1572315726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1572415729_)
                        (let ()
                          (declare (not safe))
                          (cons _g1572315726_ _g1572415729_)))
                      '()
                      _L15704_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (null? __tmp24802))
                                                (_lp15478_
                                                 _L15532_
                                                 _datums15483_
                                                 _dispatch15484_
                                                 _default15485_)
                                                (_lp15478_
                                                 _L15532_
                                                 (let ((__tmp24798
                                                        (map gx#stx-e
                                                             (foldr (lambda (_g1573115734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1573215737_)
                              (let ()
                                (declare (not safe))
                                (cons _g1573115734_ _g1573215737_)))
                            '()
                            _L15704_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24798
                                                         _datums15483_))
                                                 (let ((__tmp24799
                                                        (let ((__tmp24801
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp24800
                                                               (foldr (lambda (_g1573915742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1574015745_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g1573915742_ _g1574015745_)))
                              '()
                              _L15702_)))
                  (declare (not safe))
                  (cons __tmp24801 __tmp24800))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24799
                                                         _dispatch15484_))
                                                 _default15485_)))))
                                     (let* ((___match2320023201_
                                             (lambda (_e1560115632_
                                                      _hd1560015636_
                                                      _tl1559915639_
                                                      ___splice2312223123_
                                                      _target1560215642_
                                                      _tl1560415645_)
                                               (letrec ((_loop1560515648_
                                                         (lambda (_hd1560315652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1560915655_)
                   (if (gx#stx-pair? _hd1560315652_)
                       (let ((_e1560615658_ (gx#syntax-e _hd1560315652_)))
                         (let ((_lp-tl1560815665_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1560615658_)))
                               (_lp-hd1560715662_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1560615658_))))
                           (_loop1560515648_
                            _lp-tl1560815665_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd1560715662_ _datum1560915655_)))))
                       (let ((_datum1561015668_ (reverse _datum1560915655_)))
                         (if (gx#stx-pair/null? _tl1559915639_)
                             (let ((___splice2312423125_
                                    (gx#syntax-split-splice
                                     _tl1559915639_
                                     '0)))
                               (let ((_tl1561315675_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         ___splice2312423125_
                                         '1)))
                                     (_target1561115672_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         ___splice2312423125_
                                         '0))))
                                 (if (gx#stx-null? _tl1561315675_)
                                     (letrec ((_loop1561415678_
                                               (lambda (_hd1561215682_
                                                        _body1561815685_)
                                                 (if (gx#stx-pair?
                                                      _hd1561215682_)
                                                     (let ((_e1561515688_
                                                            (gx#syntax-e
                                                             _hd1561215682_)))
                                                       (let ((_lp-tl1561715695_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e1561515688_)))
                     (_lp-hd1561615692_
                      (let () (declare (not safe)) (##car _e1561515688_))))
                 (_loop1561415678_
                  _lp-tl1561715695_
                  (let ()
                    (declare (not safe))
                    (cons _lp-hd1561615692_ _body1561815685_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_body1561915698_
                                                            (reverse _body1561815685_)))
                                                       (___kont2312023121_
                                                        _body1561915698_
                                                        _datum1561015668_))))))
                                       (_loop1561415678_
                                        _target1561115672_
                                        '()))
                                     (let ()
                                       (declare (not safe))
                                       (_g1555215625_)))))
                             (let ()
                               (declare (not safe))
                               (_g1555215625_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1560515648_
                                                  _target1560215642_
                                                  '()))))
                                            (___match2318623187_
                                             (lambda (_e1558115755_
                                                      _hd1558015759_
                                                      _tl1557915762_
                                                      ___splice2311823119_
                                                      _target1558215765_
                                                      _tl1558415768_)
                                               (letrec ((_loop1558515771_
                                                         (lambda (_hd1558315775_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1558915778_)
                   (if (gx#stx-pair? _hd1558315775_)
                       (let ((_e1558615781_ (gx#syntax-e _hd1558315775_)))
                         (let ((_lp-tl1558815788_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1558615781_)))
                               (_lp-hd1558715785_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1558615781_))))
                           (_loop1558515771_
                            _lp-tl1558815788_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd1558715785_ _datum1558915778_)))))
                       (let ((_datum1559015791_ (reverse _datum1558915778_)))
                         (if (gx#stx-pair? _tl1557915762_)
                             (let ((_e1559315795_
                                    (gx#syntax-e _tl1557915762_)))
                               (let ((_tl1559115802_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1559315795_)))
                                     (_hd1559215799_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1559315795_))))
                                 (if (gx#identifier? _hd1559215799_)
                                     (if (gx#free-identifier=?
                                          |gerbil/core/sugar$<sugar:2>[1]#_g24803_|
                                          _hd1559215799_)
                                         (if (gx#stx-pair? _tl1559115802_)
                                             (let ((_e1559615805_
                                                    (gx#syntax-e
                                                     _tl1559115802_)))
                                               (let ((_tl1559415812_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1559615805_)))
                                                     (_hd1559515809_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1559615805_))))
                                                 (if (gx#stx-null?
                                                      _tl1559415812_)
                                                     (___kont2311623117_
                                                      _hd1559515809_
                                                      _datum1559015791_)
                                                     (___match2320023201_
                                                      _e1558115755_
                                                      _hd1558015759_
                                                      _tl1557915762_
                                                      ___splice2311823119_
                                                      _target1558215765_
                                                      _tl1558415768_))))
                                             (___match2320023201_
                                              _e1558115755_
                                              _hd1558015759_
                                              _tl1557915762_
                                              ___splice2311823119_
                                              _target1558215765_
                                              _tl1558415768_))
                                         (___match2320023201_
                                          _e1558115755_
                                          _hd1558015759_
                                          _tl1557915762_
                                          ___splice2311823119_
                                          _target1558215765_
                                          _tl1558415768_))
                                     (___match2320023201_
                                      _e1558115755_
                                      _hd1558015759_
                                      _tl1557915762_
                                      ___splice2311823119_
                                      _target1558215765_
                                      _tl1558415768_))))
                             (___match2320023201_
                              _e1558115755_
                              _hd1558015759_
                              _tl1557915762_
                              ___splice2311823119_
                              _target1558215765_
                              _tl1558415768_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1558515771_
                                                  _target1558215765_
                                                  '()))))
                                            (___match2317223173_
                                             (lambda (_e1556715890_
                                                      _hd1556615894_
                                                      _tl1556515897_
                                                      ___splice2311423115_
                                                      _target1556815900_
                                                      _tl1557015903_)
                                               (letrec ((_loop1557115906_
                                                         (lambda (_hd1556915910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body1557515913_)
                   (if (gx#stx-pair? _hd1556915910_)
                       (let ((_e1557215916_ (gx#syntax-e _hd1556915910_)))
                         (let ((_lp-tl1557415923_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1557215916_)))
                               (_lp-hd1557315920_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1557215916_))))
                           (_loop1557115906_
                            _lp-tl1557415923_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd1557315920_ _body1557515913_)))))
                       (let ((_body1557615926_ (reverse _body1557515913_)))
                         (___kont2311223113_ _body1557615926_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1557115906_
                                                  _target1556815900_
                                                  '())))))
                                       (if (gx#stx-pair? ___stx2310723108_)
                                           (let ((_e1555715960_
                                                  (gx#syntax-e
                                                   ___stx2310723108_)))
                                             (let ((_tl1555515967_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e1555715960_)))
                                                   (_hd1555615964_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e1555715960_))))
                                               (if (gx#identifier?
                                                    _hd1555615964_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/sugar$<sugar:2>[1]#_g24805_|
                                                        _hd1555615964_)
                                                       (if (gx#stx-pair?
                                                            _tl1555515967_)
                                                           (let ((_e1556015970_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1555515967_)))
                     (let ((_tl1555815977_
                            (let ()
                              (declare (not safe))
                              (##cdr _e1556015970_)))
                           (_hd1555915974_
                            (let ()
                              (declare (not safe))
                              (##car _e1556015970_))))
                       (if (gx#identifier? _hd1555915974_)
                           (if (gx#free-identifier=?
                                |gerbil/core/sugar$<sugar:2>[1]#_g24804_|
                                _hd1555915974_)
                               (if (gx#stx-pair? _tl1555815977_)
                                   (let ((_e1556315980_
                                          (gx#syntax-e _tl1555815977_)))
                                     (let ((_tl1556115987_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e1556315980_)))
                                           (_hd1556215984_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e1556315980_))))
                                       (if (gx#stx-null? _tl1556115987_)
                                           (___kont2311023111_ _hd1556215984_)
                                           (if (gx#stx-pair/null?
                                                _tl1555515967_)
                                               (let ((___splice2311423115_
                                                      (gx#syntax-split-splice
                                                       _tl1555515967_
                                                       '0)))
                                                 (let ((_tl1557015903_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice2311423115_
                                                           '1)))
                                                       (_target1556815900_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice2311423115_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _tl1557015903_)
                                                       (___match2317223173_
                                                        _e1555715960_
                                                        _hd1555615964_
                                                        _tl1555515967_
                                                        ___splice2311423115_
                                                        _target1556815900_
                                                        _tl1557015903_)
                                                       (if (gx#stx-pair/null?
                                                            _hd1555615964_)
                                                           (let ((___splice2311823119_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _hd1555615964_ '0)))
                     (let ((_tl1558415768_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice2311823119_ '1)))
                           (_target1558215765_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice2311823119_ '0))))
                       (if (gx#stx-null? _tl1558415768_)
                           (___match2318623187_
                            _e1555715960_
                            _hd1555615964_
                            _tl1555515967_
                            ___splice2311823119_
                            _target1558215765_
                            _tl1558415768_)
                           (let () (declare (not safe)) (_g1555215625_)))))
                   (let () (declare (not safe)) (_g1555215625_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _hd1555615964_)
                                                   (let ((___splice2311823119_
                                                          (gx#syntax-split-splice
                                                           _hd1555615964_
                                                           '0)))
                                                     (let ((_tl1558415768_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice2311823119_
                                                               '1)))
                                                           (_target1558215765_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice2311823119_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _tl1558415768_)
                                                           (___match2318623187_
                                                            _e1555715960_
                                                            _hd1555615964_
                                                            _tl1555515967_
                                                            ___splice2311823119_
                                                            _target1558215765_
                                                            _tl1558415768_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_g1555215625_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1555215625_)))))))
                                   (if (gx#stx-pair/null? _tl1555515967_)
                                       (let ((___splice2311423115_
                                              (gx#syntax-split-splice
                                               _tl1555515967_
                                               '0)))
                                         (let ((_tl1557015903_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice2311423115_
                                                   '1)))
                                               (_target1556815900_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice2311423115_
                                                   '0))))
                                           (if (gx#stx-null? _tl1557015903_)
                                               (___match2317223173_
                                                _e1555715960_
                                                _hd1555615964_
                                                _tl1555515967_
                                                ___splice2311423115_
                                                _target1556815900_
                                                _tl1557015903_)
                                               (if (gx#stx-pair/null?
                                                    _hd1555615964_)
                                                   (let ((___splice2311823119_
                                                          (gx#syntax-split-splice
                                                           _hd1555615964_
                                                           '0)))
                                                     (let ((_tl1558415768_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice2311823119_
                                                               '1)))
                                                           (_target1558215765_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice2311823119_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _tl1558415768_)
                                                           (___match2318623187_
                                                            _e1555715960_
                                                            _hd1555615964_
                                                            _tl1555515967_
                                                            ___splice2311823119_
                                                            _target1558215765_
                                                            _tl1558415768_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_g1555215625_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1555215625_))))))
                                       (if (gx#stx-pair/null? _hd1555615964_)
                                           (let ((___splice2311823119_
                                                  (gx#syntax-split-splice
                                                   _hd1555615964_
                                                   '0)))
                                             (let ((_tl1558415768_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice2311823119_
                                                       '1)))
                                                   (_target1558215765_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice2311823119_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _tl1558415768_)
                                                   (___match2318623187_
                                                    _e1555715960_
                                                    _hd1555615964_
                                                    _tl1555515967_
                                                    ___splice2311823119_
                                                    _target1558215765_
                                                    _tl1558415768_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1555215625_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g1555215625_)))))
                               (if (gx#stx-pair/null? _tl1555515967_)
                                   (let ((___splice2311423115_
                                          (gx#syntax-split-splice
                                           _tl1555515967_
                                           '0)))
                                     (let ((_tl1557015903_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2311423115_
                                               '1)))
                                           (_target1556815900_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2311423115_
                                               '0))))
                                       (if (gx#stx-null? _tl1557015903_)
                                           (___match2317223173_
                                            _e1555715960_
                                            _hd1555615964_
                                            _tl1555515967_
                                            ___splice2311423115_
                                            _target1556815900_
                                            _tl1557015903_)
                                           (if (gx#stx-pair/null?
                                                _hd1555615964_)
                                               (let ((___splice2311823119_
                                                      (gx#syntax-split-splice
                                                       _hd1555615964_
                                                       '0)))
                                                 (let ((_tl1558415768_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice2311823119_
                                                           '1)))
                                                       (_target1558215765_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice2311823119_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _tl1558415768_)
                                                       (___match2318623187_
                                                        _e1555715960_
                                                        _hd1555615964_
                                                        _tl1555515967_
                                                        ___splice2311823119_
                                                        _target1558215765_
                                                        _tl1558415768_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_g1555215625_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g1555215625_))))))
                                   (if (gx#stx-pair/null? _hd1555615964_)
                                       (let ((___splice2311823119_
                                              (gx#syntax-split-splice
                                               _hd1555615964_
                                               '0)))
                                         (let ((_tl1558415768_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice2311823119_
                                                   '1)))
                                               (_target1558215765_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice2311823119_
                                                   '0))))
                                           (if (gx#stx-null? _tl1558415768_)
                                               (___match2318623187_
                                                _e1555715960_
                                                _hd1555615964_
                                                _tl1555515967_
                                                ___splice2311823119_
                                                _target1558215765_
                                                _tl1558415768_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_g1555215625_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g1555215625_)))))
                           (if (gx#stx-pair/null? _tl1555515967_)
                               (let ((___splice2311423115_
                                      (gx#syntax-split-splice
                                       _tl1555515967_
                                       '0)))
                                 (let ((_tl1557015903_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice2311423115_
                                           '1)))
                                       (_target1556815900_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice2311423115_
                                           '0))))
                                   (if (gx#stx-null? _tl1557015903_)
                                       (___match2317223173_
                                        _e1555715960_
                                        _hd1555615964_
                                        _tl1555515967_
                                        ___splice2311423115_
                                        _target1556815900_
                                        _tl1557015903_)
                                       (if (gx#stx-pair/null? _hd1555615964_)
                                           (let ((___splice2311823119_
                                                  (gx#syntax-split-splice
                                                   _hd1555615964_
                                                   '0)))
                                             (let ((_tl1558415768_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice2311823119_
                                                       '1)))
                                                   (_target1558215765_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice2311823119_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _tl1558415768_)
                                                   (___match2318623187_
                                                    _e1555715960_
                                                    _hd1555615964_
                                                    _tl1555515967_
                                                    ___splice2311823119_
                                                    _target1558215765_
                                                    _tl1558415768_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1555215625_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g1555215625_))))))
                               (if (gx#stx-pair/null? _hd1555615964_)
                                   (let ((___splice2311823119_
                                          (gx#syntax-split-splice
                                           _hd1555615964_
                                           '0)))
                                     (let ((_tl1558415768_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2311823119_
                                               '1)))
                                           (_target1558215765_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2311823119_
                                               '0))))
                                       (if (gx#stx-null? _tl1558415768_)
                                           (___match2318623187_
                                            _e1555715960_
                                            _hd1555615964_
                                            _tl1555515967_
                                            ___splice2311823119_
                                            _target1558215765_
                                            _tl1558415768_)
                                           (let ()
                                             (declare (not safe))
                                             (_g1555215625_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g1555215625_)))))))
                   (if (gx#stx-pair/null? _tl1555515967_)
                       (let ((___splice2311423115_
                              (gx#syntax-split-splice _tl1555515967_ '0)))
                         (let ((_tl1557015903_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice2311423115_ '1)))
                               (_target1556815900_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice2311423115_ '0))))
                           (if (gx#stx-null? _tl1557015903_)
                               (___match2317223173_
                                _e1555715960_
                                _hd1555615964_
                                _tl1555515967_
                                ___splice2311423115_
                                _target1556815900_
                                _tl1557015903_)
                               (if (gx#stx-pair/null? _hd1555615964_)
                                   (let ((___splice2311823119_
                                          (gx#syntax-split-splice
                                           _hd1555615964_
                                           '0)))
                                     (let ((_tl1558415768_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2311823119_
                                               '1)))
                                           (_target1558215765_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2311823119_
                                               '0))))
                                       (if (gx#stx-null? _tl1558415768_)
                                           (___match2318623187_
                                            _e1555715960_
                                            _hd1555615964_
                                            _tl1555515967_
                                            ___splice2311823119_
                                            _target1558215765_
                                            _tl1558415768_)
                                           (let ()
                                             (declare (not safe))
                                             (_g1555215625_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g1555215625_))))))
                       (if (gx#stx-pair/null? _hd1555615964_)
                           (let ((___splice2311823119_
                                  (gx#syntax-split-splice _hd1555615964_ '0)))
                             (let ((_tl1558415768_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref ___splice2311823119_ '1)))
                                   (_target1558215765_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref ___splice2311823119_ '0))))
                               (if (gx#stx-null? _tl1558415768_)
                                   (___match2318623187_
                                    _e1555715960_
                                    _hd1555615964_
                                    _tl1555515967_
                                    ___splice2311823119_
                                    _target1558215765_
                                    _tl1558415768_)
                                   (let ()
                                     (declare (not safe))
                                     (_g1555215625_)))))
                           (let () (declare (not safe)) (_g1555215625_)))))
               (if (gx#stx-pair/null? _hd1555615964_)
                   (let ((___splice2311823119_
                          (gx#syntax-split-splice _hd1555615964_ '0)))
                     (let ((_tl1558415768_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice2311823119_ '1)))
                           (_target1558215765_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice2311823119_ '0))))
                       (if (gx#stx-null? _tl1558415768_)
                           (___match2318623187_
                            _e1555715960_
                            _hd1555615964_
                            _tl1555515967_
                            ___splice2311823119_
                            _target1558215765_
                            _tl1558415768_)
                           (let () (declare (not safe)) (_g1555215625_)))))
                   (let () (declare (not safe)) (_g1555215625_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _hd1555615964_)
                                                       (let ((___splice2311823119_
                                                              (gx#syntax-split-splice
                                                               _hd1555615964_
                                                               '0)))
                                                         (let ((_tl1558415768_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref ___splice2311823119_ '1)))
                       (_target1558215765_
                        (let ()
                          (declare (not safe))
                          (##vector-ref ___splice2311823119_ '0))))
                   (if (gx#stx-null? _tl1558415768_)
                       (___match2318623187_
                        _e1555715960_
                        _hd1555615964_
                        _tl1555515967_
                        ___splice2311823119_
                        _target1558215765_
                        _tl1558415768_)
                       (let () (declare (not safe)) (_g1555215625_)))))
               (let () (declare (not safe)) (_g1555215625_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g1555215625_))))))))
                              (___kont2320823209_
                               (lambda ()
                                 (_check-duplicate-datums13013_ _datums15483_)
                                 (values (reverse _datums15483_)
                                         (reverse _dispatch15484_)
                                         (let ((_$e15511_ _default15485_))
                                           (if _$e15511_
                                               _$e15511_
                                               '#!void))))))
                          (let ((_g1548715515_
                                 (lambda ()
                                   (if (gx#stx-null? ___stx2320323204_)
                                       (___kont2320823209_)
                                       (let ()
                                         (declare (not safe))
                                         (_g1548815500_))))))
                            (if (gx#stx-pair? ___stx2320323204_)
                                (let ((_e1549415522_
                                       (gx#syntax-e ___stx2320323204_)))
                                  (let ((_tl1549215529_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1549415522_)))
                                        (_hd1549315526_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1549415522_))))
                                    (___kont2320623207_
                                     _tl1549215529_
                                     _hd1549315526_)))
                                (let ()
                                  (declare (not safe))
                                  (_g1548715515_)))))))))
                 (_check-duplicate-datums13013_
                  (lambda (_datums15462_)
                    (let ((_ht15465_ (make-hash-table)))
                      (for-each
                       (lambda (_lst15468_)
                         (for-each
                          (lambda (_datum15471_)
                            (if (hash-get _ht15465_ _datum15471_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _stx13008_
                                 _datum15471_)
                                (hash-put! _ht15465_ _datum15471_ '#t)))
                          _lst15468_))
                       _datums15462_))))
                 (_count-datums13014_
                  (lambda (_datums15455_)
                    (foldl (lambda (_lst15458_ _r15460_)
                             (+ (length _lst15458_) _r15460_))
                           '0
                           _datums15455_)))
                 (_symbolic-datums?13015_
                  (lambda (_datums15449_)
                    (andmap (lambda (_lst15452_) (andmap symbol? _lst15452_))
                            _datums15449_)))
                 (_char-datums?13016_
                  (lambda (_datums15443_)
                    (andmap (lambda (_lst15446_) (andmap char? _lst15446_))
                            _datums15443_)))
                 (_fixnum-datums?13017_
                  (lambda (_datums15437_)
                    (andmap (lambda (_lst15440_) (andmap fixnum? _lst15440_))
                            _datums15437_)))
                 (_eq-datums?13018_
                  (lambda (_datums15420_)
                    (andmap (lambda (_lst15423_)
                              (andmap (lambda (_x15426_)
                                        (let ((_$e15429_
                                               (let ()
                                                 (declare (not safe))
                                                 (symbol? _x15426_))))
                                          (if _$e15429_
                                              _$e15429_
                                              (let ((_$e15433_
                                                     (keyword? _x15426_)))
                                                (if _$e15433_
                                                    _$e15433_
                                                    (let ()
                                                      (declare (not safe))
                                                      (immediate?
                                                       _x15426_)))))))
                                      _lst15423_))
                            _datums15420_)))
                 (_generate-simple-case13019_
                  (lambda (_e15184_
                           _datums15186_
                           _dispatch15187_
                           _default15188_)
                    (let* ((_g1519015198_
                            (lambda (_g1519115194_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g1519115194_)))
                           (_g1518915416_
                            (lambda (_g1519115202_)
                              ((lambda (_L15205_)
                                 (let ()
                                   (let _recur15217_ ((_datums15220_
                                                       _datums15186_)
                                                      (_dispatch15222_
                                                       _dispatch15187_))
                                     (let* ((___stx2322123222_ _datums15220_)
                                            (_g1522515246_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx2322123222_))))
                                       (let ((___kont2322423225_
                                              (lambda (_L15304_ _L15306_)
                                                (let* ((_g1532615338_
                                                        (lambda (_g1532715334_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g1532715334_)))
                                                       (_g1532515408_
                                                        (lambda (_g1532715342_)
                                                          (if (gx#stx-pair?
                                                               _g1532715342_)
                                                              (let ((_e1533215345_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g1532715342_)))
                        (let ((_hd1533115349_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1533215345_)))
                              (_tl1533015352_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1533215345_))))
                          ((lambda (_L15355_ _L15357_)
                             (let* ((_g1536915377_
                                     (lambda (_g1537015373_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g1537015373_)))
                                    (_g1536815404_
                                     (lambda (_g1537015381_)
                                       ((lambda (_L15384_)
                                          (let ()
                                            (let ((__tmp24816
                                                   (gx#datum->syntax '#f 'if))
                                                  (__tmp24806
                                                   (let ((__tmp24809
                                                          (let ((__tmp24815
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'or))
                        (__tmp24810
                         (foldr (lambda (_g1539515398_ _g1539615401_)
                                  (let ((__tmp24811
                                         (let ((__tmp24814
                                                (gx#datum->syntax
                                                 '#f
                                                 '~case-test))
                                               (__tmp24812
                                                (let ((__tmp24813
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L15205_ '()))))
                                                  (declare (not safe))
                                                  (cons _g1539515398_
                                                        __tmp24813))))
                                           (declare (not safe))
                                           (cons __tmp24814 __tmp24812))))
                                    (declare (not safe))
                                    (cons __tmp24811 _g1539615401_)))
                                '()
                                _L15306_)))
                    (declare (not safe))
                    (cons __tmp24815 __tmp24810)))
                 (__tmp24807
                  (let ((__tmp24808
                         (let () (declare (not safe)) (cons _L15384_ '()))))
                    (declare (not safe))
                    (cons _L15357_ __tmp24808))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp24809
                                                           __tmp24807))))
                                              (declare (not safe))
                                              (cons __tmp24816 __tmp24806))))
                                        _g1537015381_))))
                               (_g1536815404_
                                (_recur15217_ _L15304_ _L15355_))))
                           _tl1533015352_
                           _hd1533115349_)))
                      (_g1532615338_ _g1532715342_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1532515408_
                                                   _dispatch15222_))))
                                             (___kont2322823229_
                                              (lambda () _default15188_)))
                                         (let ((___match2324423245_
                                                (lambda (_e1523115264_
                                                         _hd1523015268_
                                                         _tl1522915271_
                                                         ___splice2322623227_
                                                         _target1523215274_
                                                         _tl1523415277_)
                                                  (letrec ((_loop1523515280_
                                                            (lambda (_hd1523315284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _datum1523915287_)
                      (if (gx#stx-pair? _hd1523315284_)
                          (let ((_e1523615290_ (gx#syntax-e _hd1523315284_)))
                            (let ((_lp-tl1523815297_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1523615290_)))
                                  (_lp-hd1523715294_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1523615290_))))
                              (_loop1523515280_
                               _lp-tl1523815297_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd1523715294_ _datum1523915287_)))))
                          (let ((_datum1524015300_
                                 (reverse _datum1523915287_)))
                            (___kont2322423225_
                             _tl1522915271_
                             _datum1524015300_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1523515280_
                                                     _target1523215274_
                                                     '())))))
                                           (if (gx#stx-pair? ___stx2322123222_)
                                               (let ((_e1523115264_
                                                      (gx#syntax-e
                                                       ___stx2322123222_)))
                                                 (let ((_tl1522915271_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1523115264_)))
                                                       (_hd1523015268_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1523115264_))))
                                                   (if (gx#stx-pair/null?
                                                        _hd1523015268_)
                                                       (let ((___splice2322623227_
                                                              (gx#syntax-split-splice
                                                               _hd1523015268_
                                                               '0)))
                                                         (let ((_tl1523415277_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref ___splice2322623227_ '1)))
                       (_target1523215274_
                        (let ()
                          (declare (not safe))
                          (##vector-ref ___splice2322623227_ '0))))
                   (if (gx#stx-null? _tl1523415277_)
                       (___match2324423245_
                        _e1523115264_
                        _hd1523015268_
                        _tl1522915271_
                        ___splice2322623227_
                        _target1523215274_
                        _tl1523415277_)
                       (___kont2322823229_))))
               (___kont2322823229_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2322823229_))))))))
                               _g1519115202_))))
                      (_g1518915416_ _e15184_))))
                 (_datum-dispatch-index13020_
                  (lambda (_datums15056_)
                    (let _lp15059_ ((_rest15062_ _datums15056_)
                                    (_ix15064_ '0)
                                    (_r15065_ '()))
                      (let* ((___stx2324723248_ _rest15062_)
                             (_g1506815089_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2324723248_))))
                        (let ((___kont2325023251_
                               (lambda (_L15147_ _L15149_)
                                 (_lp15059_
                                  _L15147_
                                  (let ()
                                    (declare (not safe))
                                    (fx+ _ix15064_ '1))
                                  (foldl (lambda (_x15168_ _r15170_)
                                           (let ((__tmp24817
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _x15168_
                                                          _ix15064_))))
                                             (declare (not safe))
                                             (cons __tmp24817 _r15170_)))
                                         _r15065_
                                         (foldr (lambda (_g1517115174_
                                                         _g1517215177_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g1517115174_
                                                          _g1517215177_)))
                                                '()
                                                _L15149_)))))
                              (___kont2325423255_ (lambda () _r15065_)))
                          (let ((___match2327023271_
                                 (lambda (_e1507415107_
                                          _hd1507315111_
                                          _tl1507215114_
                                          ___splice2325223253_
                                          _target1507515117_
                                          _tl1507715120_)
                                   (letrec ((_loop1507815123_
                                             (lambda (_hd1507615127_
                                                      _datum1508215130_)
                                               (if (gx#stx-pair?
                                                    _hd1507615127_)
                                                   (let ((_e1507915133_
                                                          (gx#syntax-e
                                                           _hd1507615127_)))
                                                     (let ((_lp-tl1508115140_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e1507915133_)))
                                                           (_lp-hd1508015137_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e1507915133_))))
                                                       (_loop1507815123_
                                                        _lp-tl1508115140_
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _lp-hd1508015137_
                                                                _datum1508215130_)))))
                                                   (let ((_datum1508315143_
                                                          (reverse _datum1508215130_)))
                                                     (___kont2325023251_
                                                      _tl1507215114_
                                                      _datum1508315143_))))))
                                     (_loop1507815123_
                                      _target1507515117_
                                      '())))))
                            (if (gx#stx-pair? ___stx2324723248_)
                                (let ((_e1507415107_
                                       (gx#syntax-e ___stx2324723248_)))
                                  (let ((_tl1507215114_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1507415107_)))
                                        (_hd1507315111_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1507415107_))))
                                    (if (gx#stx-pair/null? _hd1507315111_)
                                        (let ((___splice2325223253_
                                               (gx#syntax-split-splice
                                                _hd1507315111_
                                                '0)))
                                          (let ((_tl1507715120_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice2325223253_
                                                    '1)))
                                                (_target1507515117_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice2325223253_
                                                    '0))))
                                            (if (gx#stx-null? _tl1507715120_)
                                                (___match2327023271_
                                                 _e1507415107_
                                                 _hd1507315111_
                                                 _tl1507215114_
                                                 ___splice2325223253_
                                                 _target1507515117_
                                                 _tl1507715120_)
                                                (___kont2325423255_))))
                                        (___kont2325423255_))))
                                (___kont2325423255_))))))))
                 (_duplicate-indexes?13021_
                  (lambda (_xs15037_)
                    (let ((_ht15040_ (make-hash-table-eq)))
                      (let _lp15043_ ((_rest15046_ _xs15037_))
                        (if (let () (declare (not safe)) (pair? _rest15046_))
                            (let* ((_ix15049_ (car _rest15046_))
                                   (_$e15052_ (hash-get _ht15040_ _ix15049_)))
                              (if _$e15052_
                                  _$e15052_
                                  (begin
                                    (hash-put! _ht15040_ _ix15049_ '#t)
                                    (_lp15043_ (cdr _rest15046_)))))
                            '#f)))))
                 (_generate-hash-dispatch-table13022_
                  (lambda (_indexes15006_ _hash-e15008_)
                    (let _lp15010_ ((_len15013_
                                     (* '2 (length _indexes15006_))))
                      (let* ((_hs15019_
                              (map (lambda (_x15016_)
                                     (_hash-e15008_ (car _x15016_)))
                                   _indexes15006_))
                             (_xs15025_
                              (map (lambda (_h15022_)
                                     (fxmodulo _h15022_ _len15013_))
                                   _hs15019_)))
                        (if (_duplicate-indexes?13021_ _xs15025_)
                            (if (< _len15013_ '131072)
                                (_lp15010_ (quotient (fx* _len15013_ '3) '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _stx13008_
                                 _indexes15006_))
                            (let ((_tab15030_ (make-vector _len15013_ '#f)))
                              (for-each
                               (lambda (_entry15033_ _x15035_)
                                 (vector-set!
                                  _tab15030_
                                  _x15035_
                                  _entry15033_))
                               _indexes15006_
                               _xs15025_)
                              _tab15030_))))))
                 (_generate-symbolic-dispatch13023_
                  (lambda (_e14609_
                           _datums14611_
                           _dispatch14612_
                           _default14613_)
                    (let* ((_indexes14615_
                            (_datum-dispatch-index13020_ _datums14611_))
                           (_tab14618_
                            (_generate-hash-dispatch-table13022_
                             _indexes14615_
                             symbol-hash)))
                      (if (= (length _dispatch14612_) '1)
                          (let* ((_tab14626_
                                  (vector-map
                                   (lambda (_x14623_)
                                     (if _x14623_ (car _x14623_) '#f))
                                   _tab14618_))
                                 (_g1462914667_
                                  (lambda (_g1463014663_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1463014663_)))
                                 (_g1462814798_
                                  (lambda (_g1463014671_)
                                    (if (gx#stx-pair? _g1463014671_)
                                        (let ((_e1464014674_
                                               (gx#syntax-e _g1463014671_)))
                                          (let ((_hd1463914678_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1464014674_)))
                                                (_tl1463814681_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1464014674_))))
                                            (if (gx#stx-pair? _tl1463814681_)
                                                (let ((_e1464314684_
                                                       (gx#syntax-e
                                                        _tl1463814681_)))
                                                  (let ((_hd1464214688_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1464314684_)))
                                                        (_tl1464114691_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1464314684_))))
                                                    (if (gx#stx-pair?
                                                         _tl1464114691_)
                                                        (let ((_e1464614694_
                                                               (gx#syntax-e
                                                                _tl1464114691_)))
                                                          (let ((_hd1464514698_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1464614694_)))
                        (_tl1464414701_
                         (let () (declare (not safe)) (##cdr _e1464614694_))))
                    (if (gx#stx-pair? _tl1464414701_)
                        (let ((_e1464914704_ (gx#syntax-e _tl1464414701_)))
                          (let ((_hd1464814708_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1464914704_)))
                                (_tl1464714711_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1464914704_))))
                            (if (gx#stx-pair? _hd1464814708_)
                                (let ((_e1465214714_
                                       (gx#syntax-e _hd1464814708_)))
                                  (let ((_hd1465114718_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1465214714_)))
                                        (_tl1465014721_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1465214714_))))
                                    (if (gx#stx-null? _tl1465014721_)
                                        (if (gx#stx-pair? _tl1464714711_)
                                            (let ((_e1465514724_
                                                   (gx#syntax-e
                                                    _tl1464714711_)))
                                              (let ((_hd1465414728_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1465514724_)))
                                                    (_tl1465314731_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1465514724_))))
                                                (if (gx#stx-pair?
                                                     _tl1465314731_)
                                                    (let ((_e1465814734_
                                                           (gx#syntax-e
                                                            _tl1465314731_)))
                                                      (let ((_hd1465714738_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1465814734_)))
                    (_tl1465614741_
                     (let () (declare (not safe)) (##cdr _e1465814734_))))
                (if (gx#stx-pair? _tl1465614741_)
                    (let ((_e1466114744_ (gx#syntax-e _tl1465614741_)))
                      (let ((_hd1466014748_
                             (let ()
                               (declare (not safe))
                               (##car _e1466114744_)))
                            (_tl1465914751_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1466114744_))))
                        (if (gx#stx-null? _tl1465914751_)
                            ((lambda (_L14754_
                                      _L14756_
                                      _L14757_
                                      _L14758_
                                      _L14759_
                                      _L14760_
                                      _L14761_)
                               (let ()
                                 (let ((__tmp24975 (gx#datum->syntax '#f 'let))
                                       (__tmp24911
                                        (let ((__tmp24962
                                               (let ((__tmp24969
                                                      (let ((__tmp24970
                                                             (let ((__tmp24971
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp24974 (gx#datum->syntax '#f 'lambda))
                                  (__tmp24972
                                   (let ((__tmp24973
                                          (let ()
                                            (declare (not safe))
                                            (cons _L14757_ '()))))
                                     (declare (not safe))
                                     (cons '() __tmp24973))))
                              (declare (not safe))
                              (cons __tmp24974 __tmp24972))))
                       (declare (not safe))
                       (cons __tmp24971 '()))))
                (declare (not safe))
                (cons _L14760_ __tmp24970)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp24963
                                                      (let ((__tmp24964
                                                             (let ((__tmp24965
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp24966
                                   (let ((__tmp24968
                                          (gx#datum->syntax '#f 'quote))
                                         (__tmp24967
                                          (let ()
                                            (declare (not safe))
                                            (cons _L14756_ '()))))
                                     (declare (not safe))
                                     (cons __tmp24968 __tmp24967))))
                              (declare (not safe))
                              (cons __tmp24966 '()))))
                       (declare (not safe))
                       (cons _L14759_ __tmp24965))))
                (declare (not safe))
                (cons __tmp24964 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24969 __tmp24963)))
                                              (__tmp24912
                                               (let ((__tmp24913
                                                      (let ((__tmp24961
                                                             (gx#datum->syntax
                                                              '#f
                                                              'if))
                                                            (__tmp24914
                                                             (let ((__tmp24958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp24960 (gx#datum->syntax '#f 'symbol?))
                                  (__tmp24959
                                   (let ()
                                     (declare (not safe))
                                     (cons _L14761_ '()))))
                              (declare (not safe))
                              (cons __tmp24960 __tmp24959)))
                           (__tmp24915
                            (let ((__tmp24918
                                   (let ((__tmp24957
                                          (gx#datum->syntax '#f 'let*))
                                         (__tmp24919
                                          (let ((__tmp24932
                                                 (let ((__tmp24951
                                                        (let ((__tmp24956
                                                               (gx#datum->syntax
                                                                '#f
                                                                'h))
                                                              (__tmp24952
                                                               (let ((__tmp24953
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp24955
                                     (gx#datum->syntax '#f '##symbol-hash))
                                    (__tmp24954
                                     (let ()
                                       (declare (not safe))
                                       (cons _L14761_ '()))))
                                (declare (not safe))
                                (cons __tmp24955 __tmp24954))))
                         (declare (not safe))
                         (cons __tmp24953 '()))))
                  (declare (not safe))
                  (cons __tmp24956 __tmp24952)))
               (__tmp24933
                (let ((__tmp24943
                       (let ((__tmp24950 (gx#datum->syntax '#f 'ix))
                             (__tmp24944
                              (let ((__tmp24945
                                     (let ((__tmp24949
                                            (gx#datum->syntax '#f '##fxmodulo))
                                           (__tmp24946
                                            (let ((__tmp24948
                                                   (gx#datum->syntax '#f 'h))
                                                  (__tmp24947
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L14754_ '()))))
                                              (declare (not safe))
                                              (cons __tmp24948 __tmp24947))))
                                       (declare (not safe))
                                       (cons __tmp24949 __tmp24946))))
                                (declare (not safe))
                                (cons __tmp24945 '()))))
                         (declare (not safe))
                         (cons __tmp24950 __tmp24944)))
                      (__tmp24934
                       (let ((__tmp24935
                              (let ((__tmp24942 (gx#datum->syntax '#f 'q))
                                    (__tmp24936
                                     (let ((__tmp24937
                                            (let ((__tmp24941
                                                   (gx#datum->syntax
                                                    '#f
                                                    '##vector-ref))
                                                  (__tmp24938
                                                   (let ((__tmp24939
                                                          (let ((__tmp24940
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'ix)))
                    (declare (not safe))
                    (cons __tmp24940 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L14759_
                                                           __tmp24939))))
                                              (declare (not safe))
                                              (cons __tmp24941 __tmp24938))))
                                       (declare (not safe))
                                       (cons __tmp24937 '()))))
                                (declare (not safe))
                                (cons __tmp24942 __tmp24936))))
                         (declare (not safe))
                         (cons __tmp24935 '()))))
                  (declare (not safe))
                  (cons __tmp24943 __tmp24934))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24951
                                                         __tmp24933)))
                                                (__tmp24920
                                                 (let ((__tmp24921
                                                        (let ((__tmp24931
                                                               (gx#datum->syntax
                                                                '#f
                                                                'if))
                                                              (__tmp24922
                                                               (let ((__tmp24926
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp24930 (gx#datum->syntax '#f 'eq?))
                                    (__tmp24927
                                     (let ((__tmp24929
                                            (gx#datum->syntax '#f 'q))
                                           (__tmp24928
                                            (let ()
                                              (declare (not safe))
                                              (cons _L14761_ '()))))
                                       (declare (not safe))
                                       (cons __tmp24929 __tmp24928))))
                                (declare (not safe))
                                (cons __tmp24930 __tmp24927)))
                             (__tmp24923
                              (let ((__tmp24924
                                     (let ((__tmp24925
                                            (let ()
                                              (declare (not safe))
                                              (cons _L14760_ '()))))
                                       (declare (not safe))
                                       (cons __tmp24925 '()))))
                                (declare (not safe))
                                (cons _L14758_ __tmp24924))))
                         (declare (not safe))
                         (cons __tmp24926 __tmp24923))))
                  (declare (not safe))
                  (cons __tmp24931 __tmp24922))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24921 '()))))
                                            (declare (not safe))
                                            (cons __tmp24932 __tmp24920))))
                                     (declare (not safe))
                                     (cons __tmp24957 __tmp24919)))
                                  (__tmp24916
                                   (let ((__tmp24917
                                          (let ()
                                            (declare (not safe))
                                            (cons _L14760_ '()))))
                                     (declare (not safe))
                                     (cons __tmp24917 '()))))
                              (declare (not safe))
                              (cons __tmp24918 __tmp24916))))
                       (declare (not safe))
                       (cons __tmp24958 __tmp24915))))
                (declare (not safe))
                (cons __tmp24961 __tmp24914))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24913 '()))))
                                          (declare (not safe))
                                          (cons __tmp24962 __tmp24912))))
                                   (declare (not safe))
                                   (cons __tmp24975 __tmp24911))))
                             _hd1466014748_
                             _hd1465714738_
                             _hd1465414728_
                             _hd1465114718_
                             _hd1464514698_
                             _hd1464214688_
                             _hd1463914678_)
                            (_g1462914667_ _g1463014671_))))
                    (_g1462914667_ _g1463014671_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1462914667_
                                                     _g1463014671_))))
                                            (_g1462914667_ _g1463014671_))
                                        (_g1462914667_ _g1463014671_))))
                                (_g1462914667_ _g1463014671_))))
                        (_g1462914667_ _g1463014671_))))
                (_g1462914667_ _g1463014671_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1462914667_
                                                 _g1463014671_))))
                                        (_g1462914667_ _g1463014671_)))))
                            (_g1462814798_
                             (list _e14609_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch14612_
                                   _default14613_
                                   _tab14626_
                                   (vector-length _tab14626_))))
                          (let* ((_g1480214846_
                                  (lambda (_g1480314842_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1480314842_)))
                                 (_g1480115002_
                                  (lambda (_g1480314850_)
                                    (if (gx#stx-pair? _g1480314850_)
                                        (let ((_e1481314853_
                                               (gx#syntax-e _g1480314850_)))
                                          (let ((_hd1481214857_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1481314853_)))
                                                (_tl1481114860_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1481314853_))))
                                            (if (gx#stx-pair? _tl1481114860_)
                                                (let ((_e1481614863_
                                                       (gx#syntax-e
                                                        _tl1481114860_)))
                                                  (let ((_hd1481514867_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1481614863_)))
                                                        (_tl1481414870_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1481614863_))))
                                                    (if (gx#stx-pair?
                                                         _tl1481414870_)
                                                        (let ((_e1481914873_
                                                               (gx#syntax-e
                                                                _tl1481414870_)))
                                                          (let ((_hd1481814877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1481914873_)))
                        (_tl1481714880_
                         (let () (declare (not safe)) (##cdr _e1481914873_))))
                    (if (gx#stx-pair? _tl1481714880_)
                        (let ((_e1482214883_ (gx#syntax-e _tl1481714880_)))
                          (let ((_hd1482114887_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1482214883_)))
                                (_tl1482014890_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1482214883_))))
                            (if (gx#stx-pair/null? _hd1482114887_)
                                (let ((_g24818_
                                       (gx#syntax-split-splice
                                        _hd1482114887_
                                        '0)))
                                  (begin
                                    (let ((_g24819_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g24818_)
                                                 (##vector-length _g24818_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g24819_ 2)))
                                          (error "Context expects 2 values"
                                                 _g24819_)))
                                    (let ((_target1482314893_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g24818_ 0)))
                                          (_tl1482514896_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g24818_ 1))))
                                      (if (gx#stx-null? _tl1482514896_)
                                          (letrec ((_loop1482614899_
                                                    (lambda (_hd1482414903_
                                                             _dispatch1483014906_)
                                                      (if (gx#stx-pair?
                                                           _hd1482414903_)
                                                          (let ((_e1482714909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1482414903_)))
                    (let ((_lp-hd1482814913_
                           (let () (declare (not safe)) (##car _e1482714909_)))
                          (_lp-tl1482914916_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1482714909_))))
                      (_loop1482614899_
                       _lp-tl1482914916_
                       (let ()
                         (declare (not safe))
                         (cons _lp-hd1482814913_ _dispatch1483014906_)))))
                  (let ((_dispatch1483114919_ (reverse _dispatch1483014906_)))
                    (if (gx#stx-pair? _tl1482014890_)
                        (let ((_e1483414923_ (gx#syntax-e _tl1482014890_)))
                          (let ((_hd1483314927_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1483414923_)))
                                (_tl1483214930_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1483414923_))))
                            (if (gx#stx-pair? _tl1483214930_)
                                (let ((_e1483714933_
                                       (gx#syntax-e _tl1483214930_)))
                                  (let ((_hd1483614937_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1483714933_)))
                                        (_tl1483514940_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1483714933_))))
                                    (if (gx#stx-pair? _tl1483514940_)
                                        (let ((_e1484014943_
                                               (gx#syntax-e _tl1483514940_)))
                                          (let ((_hd1483914947_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1484014943_)))
                                                (_tl1483814950_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1484014943_))))
                                            (if (gx#stx-null? _tl1483814950_)
                                                ((lambda (_L14953_
                                                          _L14955_
                                                          _L14956_
                                                          _L14957_
                                                          _L14958_
                                                          _L14959_
                                                          _L14960_)
                                                   (let ()
                                                     (let ((__tmp24910
                                                            (gx#datum->syntax
                                                             '#f
                                                             'let))
                                                           (__tmp24820
                                                            (let ((__tmp24897
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp24904
                                  (let ((__tmp24905
                                         (let ((__tmp24906
                                                (let ((__tmp24909
                                                       (gx#datum->syntax
                                                        '#f
                                                        'lambda))
                                                      (__tmp24907
                                                       (let ((__tmp24908
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L14956_ '()))))
                 (declare (not safe))
                 (cons '() __tmp24908))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp24909
                                                        __tmp24907))))
                                           (declare (not safe))
                                           (cons __tmp24906 '()))))
                                    (declare (not safe))
                                    (cons _L14959_ __tmp24905)))
                                 (__tmp24898
                                  (let ((__tmp24899
                                         (let ((__tmp24900
                                                (let ((__tmp24901
                                                       (let ((__tmp24903
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp24902
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L14955_ '()))))
                 (declare (not safe))
                 (cons __tmp24903 __tmp24902))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp24901 '()))))
                                           (declare (not safe))
                                           (cons _L14958_ __tmp24900))))
                                    (declare (not safe))
                                    (cons __tmp24899 '()))))
                             (declare (not safe))
                             (cons __tmp24904 __tmp24898)))
                          (__tmp24821
                           (let ((__tmp24822
                                  (let ((__tmp24896 (gx#datum->syntax '#f 'if))
                                        (__tmp24823
                                         (let ((__tmp24893
                                                (let ((__tmp24895
                                                       (gx#datum->syntax
                                                        '#f
                                                        'symbol?))
                                                      (__tmp24894
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L14960_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp24895
                                                        __tmp24894)))
                                               (__tmp24824
                                                (let ((__tmp24827
                                                       (let ((__tmp24892
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp24828
                                                              (let ((__tmp24867
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp24886
                                    (let ((__tmp24891
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp24887
                                           (let ((__tmp24888
                                                  (let ((__tmp24890
                                                         (gx#datum->syntax
                                                          '#f
                                                          '##symbol-hash))
                                                        (__tmp24889
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L14960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24890
                                                          __tmp24889))))
                                             (declare (not safe))
                                             (cons __tmp24888 '()))))
                                      (declare (not safe))
                                      (cons __tmp24891 __tmp24887)))
                                   (__tmp24868
                                    (let ((__tmp24878
                                           (let ((__tmp24885
                                                  (gx#datum->syntax '#f 'ix))
                                                 (__tmp24879
                                                  (let ((__tmp24880
                                                         (let ((__tmp24884
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fxmodulo))
                       (__tmp24881
                        (let ((__tmp24883 (gx#datum->syntax '#f 'h))
                              (__tmp24882
                               (let ()
                                 (declare (not safe))
                                 (cons _L14953_ '()))))
                          (declare (not safe))
                          (cons __tmp24883 __tmp24882))))
                   (declare (not safe))
                   (cons __tmp24884 __tmp24881))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24880 '()))))
                                             (declare (not safe))
                                             (cons __tmp24885 __tmp24879)))
                                          (__tmp24869
                                           (let ((__tmp24870
                                                  (let ((__tmp24877
                                                         (gx#datum->syntax
                                                          '#f
                                                          'q))
                                                        (__tmp24871
                                                         (let ((__tmp24872
                                                                (let ((__tmp24876
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##vector-ref))
                              (__tmp24873
                               (let ((__tmp24874
                                      (let ((__tmp24875
                                             (gx#datum->syntax '#f 'ix)))
                                        (declare (not safe))
                                        (cons __tmp24875 '()))))
                                 (declare (not safe))
                                 (cons _L14958_ __tmp24874))))
                          (declare (not safe))
                          (cons __tmp24876 __tmp24873))))
                   (declare (not safe))
                   (cons __tmp24872 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24877
                                                          __tmp24871))))
                                             (declare (not safe))
                                             (cons __tmp24870 '()))))
                                      (declare (not safe))
                                      (cons __tmp24878 __tmp24869))))
                               (declare (not safe))
                               (cons __tmp24886 __tmp24868)))
                            (__tmp24829
                             (let ((__tmp24830
                                    (let ((__tmp24866
                                           (gx#datum->syntax '#f 'if))
                                          (__tmp24831
                                           (let ((__tmp24865
                                                  (gx#datum->syntax '#f 'q))
                                                 (__tmp24832
                                                  (let ((__tmp24835
                                                         (let ((__tmp24864
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if))
                       (__tmp24836
                        (let ((__tmp24856
                               (let ((__tmp24863 (gx#datum->syntax '#f 'eq?))
                                     (__tmp24857
                                      (let ((__tmp24859
                                             (let ((__tmp24862
                                                    (gx#datum->syntax
                                                     '#f
                                                     '##car))
                                                   (__tmp24860
                                                    (let ((__tmp24861
                                                           (gx#datum->syntax
                                                            '#f
                                                            'q)))
                                                      (declare (not safe))
                                                      (cons __tmp24861 '()))))
                                               (declare (not safe))
                                               (cons __tmp24862 __tmp24860)))
                                            (__tmp24858
                                             (let ()
                                               (declare (not safe))
                                               (cons _L14960_ '()))))
                                        (declare (not safe))
                                        (cons __tmp24859 __tmp24858))))
                                 (declare (not safe))
                                 (cons __tmp24863 __tmp24857)))
                              (__tmp24837
                               (let ((__tmp24840
                                      (let ((__tmp24855
                                             (gx#datum->syntax '#f 'let))
                                            (__tmp24841
                                             (let ((__tmp24848
                                                    (let ((__tmp24854
                                                           (gx#datum->syntax
                                                            '#f
                                                            'x))
                                                          (__tmp24849
                                                           (let ((__tmp24850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp24853 (gx#datum->syntax '#f '##cdr))
                                (__tmp24851
                                 (let ((__tmp24852 (gx#datum->syntax '#f 'q)))
                                   (declare (not safe))
                                   (cons __tmp24852 '()))))
                            (declare (not safe))
                            (cons __tmp24853 __tmp24851))))
                     (declare (not safe))
                     (cons __tmp24850 '()))))
              (declare (not safe))
              (cons __tmp24854 __tmp24849)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp24842
                                                    (let ((__tmp24843
                                                           (let ((__tmp24847
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '~case-dispatch))
                         (__tmp24844
                          (let ((__tmp24846 (gx#datum->syntax '#f 'x))
                                (__tmp24845
                                 (foldr (lambda (_g1499314996_ _g1499414999_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g1499314996_
                                                  _g1499414999_)))
                                        '()
                                        _L14957_)))
                            (declare (not safe))
                            (cons __tmp24846 __tmp24845))))
                     (declare (not safe))
                     (cons __tmp24847 __tmp24844))))
              (declare (not safe))
              (cons __tmp24843 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp24848 __tmp24842))))
                                        (declare (not safe))
                                        (cons __tmp24855 __tmp24841)))
                                     (__tmp24838
                                      (let ((__tmp24839
                                             (let ()
                                               (declare (not safe))
                                               (cons _L14959_ '()))))
                                        (declare (not safe))
                                        (cons __tmp24839 '()))))
                                 (declare (not safe))
                                 (cons __tmp24840 __tmp24838))))
                          (declare (not safe))
                          (cons __tmp24856 __tmp24837))))
                   (declare (not safe))
                   (cons __tmp24864 __tmp24836)))
                (__tmp24833
                 (let ((__tmp24834
                        (let () (declare (not safe)) (cons _L14959_ '()))))
                   (declare (not safe))
                   (cons __tmp24834 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24835
                                                          __tmp24833))))
                                             (declare (not safe))
                                             (cons __tmp24865 __tmp24832))))
                                      (declare (not safe))
                                      (cons __tmp24866 __tmp24831))))
                               (declare (not safe))
                               (cons __tmp24830 '()))))
                        (declare (not safe))
                        (cons __tmp24867 __tmp24829))))
                 (declare (not safe))
                 (cons __tmp24892 __tmp24828)))
              (__tmp24825
               (let ((__tmp24826
                      (let () (declare (not safe)) (cons _L14959_ '()))))
                 (declare (not safe))
                 (cons __tmp24826 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp24827
                                                        __tmp24825))))
                                           (declare (not safe))
                                           (cons __tmp24893 __tmp24824))))
                                    (declare (not safe))
                                    (cons __tmp24896 __tmp24823))))
                             (declare (not safe))
                             (cons __tmp24822 '()))))
                      (declare (not safe))
                      (cons __tmp24897 __tmp24821))))
               (declare (not safe))
               (cons __tmp24910 __tmp24820))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1483914947_
                                                 _hd1483614937_
                                                 _hd1483314927_
                                                 _dispatch1483114919_
                                                 _hd1481814877_
                                                 _hd1481514867_
                                                 _hd1481214857_)
                                                (_g1480214846_
                                                 _g1480314850_))))
                                        (_g1480214846_ _g1480314850_))))
                                (_g1480214846_ _g1480314850_))))
                        (_g1480214846_ _g1480314850_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1482614899_
                                             _target1482314893_
                                             '()))
                                          (_g1480214846_ _g1480314850_)))))
                                (_g1480214846_ _g1480314850_))))
                        (_g1480214846_ _g1480314850_))))
                (_g1480214846_ _g1480314850_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1480214846_
                                                 _g1480314850_))))
                                        (_g1480214846_ _g1480314850_)))))
                            (_g1480115002_
                             (list _e14609_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch14612_
                                   _default14613_
                                   _tab14618_
                                   (vector-length _tab14618_))))))))
                 (_max-char13024_
                  (lambda (_datums14598_)
                    (foldl (lambda (_lst14601_ _r14603_)
                             (foldl (lambda (_char14605_ _r14607_)
                                      (max (char->integer _char14605_)
                                           _r14607_))
                                    _r14603_
                                    _lst14601_))
                           '0
                           _datums14598_)))
                 (_generate-char-dispatch-table13025_
                  (lambda (_indexes14577_)
                    (let* ((_ixs14583_
                            (map (lambda (_x14580_)
                                   (char->integer (car _x14580_)))
                                 _indexes14577_))
                           (_len14586_
                            (let ((__tmp24976 (foldl max '0 _ixs14583_)))
                              (declare (not safe))
                              (fx+ __tmp24976 '1)))
                           (_vec14589_ (make-vector _len14586_ '#f)))
                      (for-each
                       (lambda (_entry14594_ _x14596_)
                         (vector-set! _vec14589_ _x14596_ (cdr _entry14594_)))
                       _indexes14577_
                       _ixs14583_)
                      _vec14589_)))
                 (_simple-char-range?13026_
                  (lambda (_tab14553_)
                    (let ((_end14556_ (vector-length _tab14553_)))
                      (let _lp14559_ ((_i14562_ '0))
                        (let ((_ix14565_ (vector-ref _tab14553_ _i14562_)))
                          (if _ix14565_
                              (let _lp214568_ ((_i14571_
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _i14562_ '1))))
                                (if (fx< _i14571_ _end14556_)
                                    (let ((_ix*14574_
                                           (vector-ref _tab14553_ _i14571_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (eq? _ix14565_ _ix*14574_))
                                          (_lp214568_
                                           (let ()
                                             (declare (not safe))
                                             (fx+ _i14571_ '1)))
                                          '#f))
                                    '#t))
                              (_lp14559_
                               (let ()
                                 (declare (not safe))
                                 (fx+ _i14562_ '1)))))))))
                 (_char-range-start13027_
                  (lambda (_tab14544_)
                    (let _lp14547_ ((_i14550_ '0))
                      (if (vector-ref _tab14544_ _i14550_)
                          _i14550_
                          (_lp14547_
                           (let () (declare (not safe)) (fx+ _i14550_ '1)))))))
                 (_generate-char-dispatch13028_
                  (lambda (_e14167_
                           _datums14169_
                           _dispatch14170_
                           _default14171_)
                    (if (< (_max-char13024_ _datums14169_) '128)
                        (let* ((_indexes14173_
                                (_datum-dispatch-index13020_ _datums14169_))
                               (_tab14176_
                                (_generate-char-dispatch-table13025_
                                 _indexes14173_)))
                          (if (_simple-char-range?13026_ _tab14176_)
                              (let ((_start14181_
                                     (_char-range-start13027_ _tab14176_))
                                    (_end14183_ (vector-length _tab14176_)))
                                (let* ((_g1418514219_
                                        (lambda (_g1418614215_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g1418614215_)))
                                       (_g1418414336_
                                        (lambda (_g1418614223_)
                                          (if (gx#stx-pair? _g1418614223_)
                                              (let ((_e1419514226_
                                                     (gx#syntax-e
                                                      _g1418614223_)))
                                                (let ((_hd1419414230_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1419514226_)))
                                                      (_tl1419314233_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1419514226_))))
                                                  (if (gx#stx-pair?
                                                       _tl1419314233_)
                                                      (let ((_e1419814236_
                                                             (gx#syntax-e
                                                              _tl1419314233_)))
                                                        (let ((_hd1419714240_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1419814236_)))
                      (_tl1419614243_
                       (let () (declare (not safe)) (##cdr _e1419814236_))))
                  (if (gx#stx-pair? _tl1419614243_)
                      (let ((_e1420114246_ (gx#syntax-e _tl1419614243_)))
                        (let ((_hd1420014250_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1420114246_)))
                              (_tl1419914253_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1420114246_))))
                          (if (gx#stx-pair? _hd1420014250_)
                              (let ((_e1420414256_
                                     (gx#syntax-e _hd1420014250_)))
                                (let ((_hd1420314260_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1420414256_)))
                                      (_tl1420214263_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1420414256_))))
                                  (if (gx#stx-null? _tl1420214263_)
                                      (if (gx#stx-pair? _tl1419914253_)
                                          (let ((_e1420714266_
                                                 (gx#syntax-e _tl1419914253_)))
                                            (let ((_hd1420614270_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1420714266_)))
                                                  (_tl1420514273_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1420714266_))))
                                              (if (gx#stx-pair? _tl1420514273_)
                                                  (let ((_e1421014276_
                                                         (gx#syntax-e
                                                          _tl1420514273_)))
                                                    (let ((_hd1420914280_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1421014276_)))
                                                          (_tl1420814283_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1421014276_))))
                                                      (if (gx#stx-pair?
                                                           _tl1420814283_)
                                                          (let ((_e1421314286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1420814283_)))
                    (let ((_hd1421214290_
                           (let () (declare (not safe)) (##car _e1421314286_)))
                          (_tl1421114293_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1421314286_))))
                      (if (gx#stx-null? _tl1421114293_)
                          ((lambda (_L14296_
                                    _L14298_
                                    _L14299_
                                    _L14300_
                                    _L14301_
                                    _L14302_)
                             (let ()
                               (let ((__tmp25096 (gx#datum->syntax '#f 'let))
                                     (__tmp25049
                                      (let ((__tmp25090
                                             (let ((__tmp25091
                                                    (let ((__tmp25092
                                                           (let ((__tmp25095
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'lambda))
                         (__tmp25093
                          (let ((__tmp25094
                                 (let ()
                                   (declare (not safe))
                                   (cons _L14299_ '()))))
                            (declare (not safe))
                            (cons '() __tmp25094))))
                     (declare (not safe))
                     (cons __tmp25095 __tmp25093))))
              (declare (not safe))
              (cons __tmp25092 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L14301_ __tmp25091)))
                                            (__tmp25050
                                             (let ((__tmp25051
                                                    (let ((__tmp25089
                                                           (gx#datum->syntax
                                                            '#f
                                                            'if))
                                                          (__tmp25052
                                                           (let ((__tmp25086
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp25088 (gx#datum->syntax '#f 'char?))
                                (__tmp25087
                                 (let ()
                                   (declare (not safe))
                                   (cons _L14302_ '()))))
                            (declare (not safe))
                            (cons __tmp25088 __tmp25087)))
                         (__tmp25053
                          (let ((__tmp25056
                                 (let ((__tmp25085 (gx#datum->syntax '#f 'let))
                                       (__tmp25057
                                        (let ((__tmp25079
                                               (let ((__tmp25084
                                                      (gx#datum->syntax
                                                       '#f
                                                       'ix))
                                                     (__tmp25080
                                                      (let ((__tmp25081
                                                             (let ((__tmp25083
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '##char->integer))
                           (__tmp25082
                            (let () (declare (not safe)) (cons _L14302_ '()))))
                       (declare (not safe))
                       (cons __tmp25083 __tmp25082))))
                (declare (not safe))
                (cons __tmp25081 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25084 __tmp25080)))
                                              (__tmp25058
                                               (let ((__tmp25059
                                                      (let ((__tmp25078
                                                             (gx#datum->syntax
                                                              '#f
                                                              'if))
                                                            (__tmp25060
                                                             (let ((__tmp25064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp25077 (gx#datum->syntax '#f 'and))
                                  (__tmp25065
                                   (let ((__tmp25072
                                          (let ((__tmp25076
                                                 (gx#datum->syntax
                                                  '#f
                                                  '##fx>=))
                                                (__tmp25073
                                                 (let ((__tmp25075
                                                        (gx#datum->syntax
                                                         '#f
                                                         'ix))
                                                       (__tmp25074
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L14298_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp25075
                                                         __tmp25074))))
                                            (declare (not safe))
                                            (cons __tmp25076 __tmp25073)))
                                         (__tmp25066
                                          (let ((__tmp25067
                                                 (let ((__tmp25071
                                                        (gx#datum->syntax
                                                         '#f
                                                         '##fx<))
                                                       (__tmp25068
                                                        (let ((__tmp25070
                                                               (gx#datum->syntax
                                                                '#f
                                                                'ix))
                                                              (__tmp25069
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L14296_ '()))))
                  (declare (not safe))
                  (cons __tmp25070 __tmp25069))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25071
                                                         __tmp25068))))
                                            (declare (not safe))
                                            (cons __tmp25067 '()))))
                                     (declare (not safe))
                                     (cons __tmp25072 __tmp25066))))
                              (declare (not safe))
                              (cons __tmp25077 __tmp25065)))
                           (__tmp25061
                            (let ((__tmp25062
                                   (let ((__tmp25063
                                          (let ()
                                            (declare (not safe))
                                            (cons _L14301_ '()))))
                                     (declare (not safe))
                                     (cons __tmp25063 '()))))
                              (declare (not safe))
                              (cons _L14300_ __tmp25062))))
                       (declare (not safe))
                       (cons __tmp25064 __tmp25061))))
                (declare (not safe))
                (cons __tmp25078 __tmp25060))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25059 '()))))
                                          (declare (not safe))
                                          (cons __tmp25079 __tmp25058))))
                                   (declare (not safe))
                                   (cons __tmp25085 __tmp25057)))
                                (__tmp25054
                                 (let ((__tmp25055
                                        (let ()
                                          (declare (not safe))
                                          (cons _L14301_ '()))))
                                   (declare (not safe))
                                   (cons __tmp25055 '()))))
                            (declare (not safe))
                            (cons __tmp25056 __tmp25054))))
                     (declare (not safe))
                     (cons __tmp25086 __tmp25053))))
              (declare (not safe))
              (cons __tmp25089 __tmp25052))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp25051 '()))))
                                        (declare (not safe))
                                        (cons __tmp25090 __tmp25050))))
                                 (declare (not safe))
                                 (cons __tmp25096 __tmp25049))))
                           _hd1421214290_
                           _hd1420914280_
                           _hd1420614270_
                           _hd1420314260_
                           _hd1419714240_
                           _hd1419414230_)
                          (_g1418514219_ _g1418614223_))))
                  (_g1418514219_ _g1418614223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1418514219_
                                                   _g1418614223_))))
                                          (_g1418514219_ _g1418614223_))
                                      (_g1418514219_ _g1418614223_))))
                              (_g1418514219_ _g1418614223_))))
                      (_g1418514219_ _g1418614223_))))
              (_g1418514219_ _g1418614223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1418514219_ _g1418614223_)))))
                                  (_g1418414336_
                                   (list _e14167_
                                         (gx#genident 'default)
                                         _dispatch14170_
                                         _default14171_
                                         _start14181_
                                         _end14183_))))
                              (let* ((_g1434014384_
                                      (lambda (_g1434114380_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g1434114380_)))
                                     (_g1433914540_
                                      (lambda (_g1434114388_)
                                        (if (gx#stx-pair? _g1434114388_)
                                            (let ((_e1435114391_
                                                   (gx#syntax-e
                                                    _g1434114388_)))
                                              (let ((_hd1435014395_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1435114391_)))
                                                    (_tl1434914398_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1435114391_))))
                                                (if (gx#stx-pair?
                                                     _tl1434914398_)
                                                    (let ((_e1435414401_
                                                           (gx#syntax-e
                                                            _tl1434914398_)))
                                                      (let ((_hd1435314405_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1435414401_)))
                    (_tl1435214408_
                     (let () (declare (not safe)) (##cdr _e1435414401_))))
                (if (gx#stx-pair? _tl1435214408_)
                    (let ((_e1435714411_ (gx#syntax-e _tl1435214408_)))
                      (let ((_hd1435614415_
                             (let ()
                               (declare (not safe))
                               (##car _e1435714411_)))
                            (_tl1435514418_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1435714411_))))
                        (if (gx#stx-pair? _tl1435514418_)
                            (let ((_e1436014421_ (gx#syntax-e _tl1435514418_)))
                              (let ((_hd1435914425_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1436014421_)))
                                    (_tl1435814428_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1436014421_))))
                                (if (gx#stx-pair/null? _hd1435914425_)
                                    (let ((_g24977_
                                           (gx#syntax-split-splice
                                            _hd1435914425_
                                            '0)))
                                      (begin
                                        (let ((_g24978_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g24977_)
                                                     (##vector-length _g24977_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g24978_ 2)))
                                              (error "Context expects 2 values"
                                                     _g24978_)))
                                        (let ((_target1436114431_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g24977_ 0)))
                                              (_tl1436314434_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g24977_ 1))))
                                          (if (gx#stx-null? _tl1436314434_)
                                              (letrec ((_loop1436414437_
                                                        (lambda (_hd1436214441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _dispatch1436814444_)
                  (if (gx#stx-pair? _hd1436214441_)
                      (let ((_e1436514447_ (gx#syntax-e _hd1436214441_)))
                        (let ((_lp-hd1436614451_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1436514447_)))
                              (_lp-tl1436714454_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1436514447_))))
                          (_loop1436414437_
                           _lp-tl1436714454_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd1436614451_ _dispatch1436814444_)))))
                      (let ((_dispatch1436914457_
                             (reverse _dispatch1436814444_)))
                        (if (gx#stx-pair? _tl1435814428_)
                            (let ((_e1437214461_ (gx#syntax-e _tl1435814428_)))
                              (let ((_hd1437114465_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1437214461_)))
                                    (_tl1437014468_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1437214461_))))
                                (if (gx#stx-pair? _tl1437014468_)
                                    (let ((_e1437514471_
                                           (gx#syntax-e _tl1437014468_)))
                                      (let ((_hd1437414475_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1437514471_)))
                                            (_tl1437314478_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1437514471_))))
                                        (if (gx#stx-pair? _tl1437314478_)
                                            (let ((_e1437814481_
                                                   (gx#syntax-e
                                                    _tl1437314478_)))
                                              (let ((_hd1437714485_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1437814481_)))
                                                    (_tl1437614488_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1437814481_))))
                                                (if (gx#stx-null?
                                                     _tl1437614488_)
                                                    ((lambda (_L14491_
                                                              _L14493_
                                                              _L14494_
                                                              _L14495_
                                                              _L14496_
                                                              _L14497_
                                                              _L14498_)
                                                       (let ()
                                                         (let ((__tmp25048
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let))
                       (__tmp24979
                        (let ((__tmp25035
                               (let ((__tmp25042
                                      (let ((__tmp25043
                                             (let ((__tmp25044
                                                    (let ((__tmp25047
                                                           (gx#datum->syntax
                                                            '#f
                                                            'lambda))
                                                          (__tmp25045
                                                           (let ((__tmp25046
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L14494_ '()))))
                     (declare (not safe))
                     (cons '() __tmp25046))))
              (declare (not safe))
              (cons __tmp25047 __tmp25045))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp25044 '()))))
                                        (declare (not safe))
                                        (cons _L14497_ __tmp25043)))
                                     (__tmp25036
                                      (let ((__tmp25037
                                             (let ((__tmp25038
                                                    (let ((__tmp25039
                                                           (let ((__tmp25041
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp25040
                          (let () (declare (not safe)) (cons _L14493_ '()))))
                     (declare (not safe))
                     (cons __tmp25041 __tmp25040))))
              (declare (not safe))
              (cons __tmp25039 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L14496_ __tmp25038))))
                                        (declare (not safe))
                                        (cons __tmp25037 '()))))
                                 (declare (not safe))
                                 (cons __tmp25042 __tmp25036)))
                              (__tmp24980
                               (let ((__tmp24981
                                      (let ((__tmp25034
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp24982
                                             (let ((__tmp25031
                                                    (let ((__tmp25033
                                                           (gx#datum->syntax
                                                            '#f
                                                            'char?))
                                                          (__tmp25032
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L14498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp25033 __tmp25032)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp24983
                                                    (let ((__tmp24986
                                                           (let ((__tmp25030
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'let))
                         (__tmp24987
                          (let ((__tmp25024
                                 (let ((__tmp25029 (gx#datum->syntax '#f 'ix))
                                       (__tmp25025
                                        (let ((__tmp25026
                                               (let ((__tmp25028
                                                      (gx#datum->syntax
                                                       '#f
                                                       '##char->integer))
                                                     (__tmp25027
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L14498_ '()))))
                                                 (declare (not safe))
                                                 (cons __tmp25028
                                                       __tmp25027))))
                                          (declare (not safe))
                                          (cons __tmp25026 '()))))
                                   (declare (not safe))
                                   (cons __tmp25029 __tmp25025)))
                                (__tmp24988
                                 (let ((__tmp24989
                                        (let ((__tmp25023
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp24990
                                               (let ((__tmp25018
                                                      (let ((__tmp25022
                                                             (gx#datum->syntax
                                                              '#f
                                                              '##fx<))
                                                            (__tmp25019
                                                             (let ((__tmp25021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'ix))
                           (__tmp25020
                            (let () (declare (not safe)) (cons _L14491_ '()))))
                       (declare (not safe))
                       (cons __tmp25021 __tmp25020))))
                (declare (not safe))
                (cons __tmp25022 __tmp25019)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp24991
                                                      (let ((__tmp24994
                                                             (let ((__tmp25017
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let))
                           (__tmp24995
                            (let ((__tmp25009
                                   (let ((__tmp25016 (gx#datum->syntax '#f 'x))
                                         (__tmp25010
                                          (let ((__tmp25011
                                                 (let ((__tmp25015
                                                        (gx#datum->syntax
                                                         '#f
                                                         '##vector-ref))
                                                       (__tmp25012
                                                        (let ((__tmp25013
                                                               (let ((__tmp25014
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'ix)))
                         (declare (not safe))
                         (cons __tmp25014 '()))))
                  (declare (not safe))
                  (cons _L14496_ __tmp25013))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25015
                                                         __tmp25012))))
                                            (declare (not safe))
                                            (cons __tmp25011 '()))))
                                     (declare (not safe))
                                     (cons __tmp25016 __tmp25010)))
                                  (__tmp24996
                                   (let ((__tmp24997
                                          (let ((__tmp25008
                                                 (gx#datum->syntax '#f 'if))
                                                (__tmp24998
                                                 (let ((__tmp25007
                                                        (gx#datum->syntax
                                                         '#f
                                                         'x))
                                                       (__tmp24999
                                                        (let ((__tmp25002
                                                               (let ((__tmp25006
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f '~case-dispatch))
                             (__tmp25003
                              (let ((__tmp25005 (gx#datum->syntax '#f 'x))
                                    (__tmp25004
                                     (foldr (lambda (_g1453114534_
                                                     _g1453214537_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g1453114534_
                                                      _g1453214537_)))
                                            '()
                                            _L14495_)))
                                (declare (not safe))
                                (cons __tmp25005 __tmp25004))))
                         (declare (not safe))
                         (cons __tmp25006 __tmp25003)))
                      (__tmp25000
                       (let ((__tmp25001
                              (let ()
                                (declare (not safe))
                                (cons _L14497_ '()))))
                         (declare (not safe))
                         (cons __tmp25001 '()))))
                  (declare (not safe))
                  (cons __tmp25002 __tmp25000))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25007
                                                         __tmp24999))))
                                            (declare (not safe))
                                            (cons __tmp25008 __tmp24998))))
                                     (declare (not safe))
                                     (cons __tmp24997 '()))))
                              (declare (not safe))
                              (cons __tmp25009 __tmp24996))))
                       (declare (not safe))
                       (cons __tmp25017 __tmp24995)))
                    (__tmp24992
                     (let ((__tmp24993
                            (let () (declare (not safe)) (cons _L14497_ '()))))
                       (declare (not safe))
                       (cons __tmp24993 '()))))
                (declare (not safe))
                (cons __tmp24994 __tmp24992))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25018
                                                       __tmp24991))))
                                          (declare (not safe))
                                          (cons __tmp25023 __tmp24990))))
                                   (declare (not safe))
                                   (cons __tmp24989 '()))))
                            (declare (not safe))
                            (cons __tmp25024 __tmp24988))))
                     (declare (not safe))
                     (cons __tmp25030 __tmp24987)))
                  (__tmp24984
                   (let ((__tmp24985
                          (let () (declare (not safe)) (cons _L14497_ '()))))
                     (declare (not safe))
                     (cons __tmp24985 '()))))
              (declare (not safe))
              (cons __tmp24986 __tmp24984))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp25031 __tmp24983))))
                                        (declare (not safe))
                                        (cons __tmp25034 __tmp24982))))
                                 (declare (not safe))
                                 (cons __tmp24981 '()))))
                          (declare (not safe))
                          (cons __tmp25035 __tmp24980))))
                   (declare (not safe))
                   (cons __tmp25048 __tmp24979))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1437714485_
                                                     _hd1437414475_
                                                     _hd1437114465_
                                                     _dispatch1436914457_
                                                     _hd1435614415_
                                                     _hd1435314405_
                                                     _hd1435014395_)
                                                    (_g1434014384_
                                                     _g1434114388_))))
                                            (_g1434014384_ _g1434114388_))))
                                    (_g1434014384_ _g1434114388_))))
                            (_g1434014384_ _g1434114388_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1436414437_
                                                 _target1436114431_
                                                 '()))
                                              (_g1434014384_ _g1434114388_)))))
                                    (_g1434014384_ _g1434114388_))))
                            (_g1434014384_ _g1434114388_))))
                    (_g1434014384_ _g1434114388_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1434014384_
                                                     _g1434114388_))))
                                            (_g1434014384_ _g1434114388_)))))
                                (_g1433914540_
                                 (list _e14167_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _dispatch14170_
                                       _default14171_
                                       _tab14176_
                                       (vector-length _tab14176_))))))
                        (_generate-char-dispatch/hash13029_
                         _e14167_
                         _datums14169_
                         _dispatch14170_
                         _default14171_))))
                 (_generate-char-dispatch/hash13029_
                  (lambda (_e13945_
                           _datums13947_
                           _dispatch13948_
                           _default13949_)
                    (let* ((_indexes13951_
                            (_datum-dispatch-index13020_ _datums13947_))
                           (_tab13954_
                            (_generate-hash-dispatch-table13022_
                             _indexes13951_
                             char->integer)))
                      (let* ((_g1395914003_
                              (lambda (_g1396013999_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g1396013999_)))
                             (_g1395814163_
                              (lambda (_g1396014007_)
                                (if (gx#stx-pair? _g1396014007_)
                                    (let ((_e1397014010_
                                           (gx#syntax-e _g1396014007_)))
                                      (let ((_hd1396914014_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1397014010_)))
                                            (_tl1396814017_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1397014010_))))
                                        (if (gx#stx-pair? _tl1396814017_)
                                            (let ((_e1397314020_
                                                   (gx#syntax-e
                                                    _tl1396814017_)))
                                              (let ((_hd1397214024_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1397314020_)))
                                                    (_tl1397114027_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1397314020_))))
                                                (if (gx#stx-pair?
                                                     _tl1397114027_)
                                                    (let ((_e1397614030_
                                                           (gx#syntax-e
                                                            _tl1397114027_)))
                                                      (let ((_hd1397514034_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1397614030_)))
                    (_tl1397414037_
                     (let () (declare (not safe)) (##cdr _e1397614030_))))
                (if (gx#stx-pair? _tl1397414037_)
                    (let ((_e1397914040_ (gx#syntax-e _tl1397414037_)))
                      (let ((_hd1397814044_
                             (let ()
                               (declare (not safe))
                               (##car _e1397914040_)))
                            (_tl1397714047_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1397914040_))))
                        (if (gx#stx-pair/null? _hd1397814044_)
                            (let ((_g25097_
                                   (gx#syntax-split-splice _hd1397814044_ '0)))
                              (begin
                                (let ((_g25098_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g25097_)
                                             (##vector-length _g25097_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g25098_ 2)))
                                      (error "Context expects 2 values"
                                             _g25098_)))
                                (let ((_target1398014050_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g25097_ 0)))
                                      (_tl1398214053_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g25097_ 1))))
                                  (if (gx#stx-null? _tl1398214053_)
                                      (letrec ((_loop1398314056_
                                                (lambda (_hd1398114060_
                                                         _dispatch1398714063_)
                                                  (if (gx#stx-pair?
                                                       _hd1398114060_)
                                                      (let ((_e1398414066_
                                                             (gx#syntax-e
                                                              _hd1398114060_)))
                                                        (let ((_lp-hd1398514070_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1398414066_)))
                      (_lp-tl1398614073_
                       (let () (declare (not safe)) (##cdr _e1398414066_))))
                  (_loop1398314056_
                   _lp-tl1398614073_
                   (let ()
                     (declare (not safe))
                     (cons _lp-hd1398514070_ _dispatch1398714063_)))))
              (let ((_dispatch1398814076_ (reverse _dispatch1398714063_)))
                (if (gx#stx-pair? _tl1397714047_)
                    (let ((_e1399114080_ (gx#syntax-e _tl1397714047_)))
                      (let ((_hd1399014084_
                             (let ()
                               (declare (not safe))
                               (##car _e1399114080_)))
                            (_tl1398914087_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1399114080_))))
                        (if (gx#stx-pair? _tl1398914087_)
                            (let ((_e1399414090_ (gx#syntax-e _tl1398914087_)))
                              (let ((_hd1399314094_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1399414090_)))
                                    (_tl1399214097_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1399414090_))))
                                (if (gx#stx-pair? _tl1399214097_)
                                    (let ((_e1399714100_
                                           (gx#syntax-e _tl1399214097_)))
                                      (let ((_hd1399614104_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1399714100_)))
                                            (_tl1399514107_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1399714100_))))
                                        (if (gx#stx-null? _tl1399514107_)
                                            ((lambda (_L14110_
                                                      _L14112_
                                                      _L14113_
                                                      _L14114_
                                                      _L14115_
                                                      _L14116_
                                                      _L14117_)
                                               (let ()
                                                 (let ((__tmp25189
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let))
                                                       (__tmp25099
                                                        (let ((__tmp25176
                                                               (let ((__tmp25183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp25184
                                     (let ((__tmp25185
                                            (let ((__tmp25188
                                                   (gx#datum->syntax
                                                    '#f
                                                    'lambda))
                                                  (__tmp25186
                                                   (let ((__tmp25187
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L14113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '() __tmp25187))))
                                              (declare (not safe))
                                              (cons __tmp25188 __tmp25186))))
                                       (declare (not safe))
                                       (cons __tmp25185 '()))))
                                (declare (not safe))
                                (cons _L14116_ __tmp25184)))
                             (__tmp25177
                              (let ((__tmp25178
                                     (let ((__tmp25179
                                            (let ((__tmp25180
                                                   (let ((__tmp25182
                                                          (gx#datum->syntax
                                                           '#f
                                                           'quote))
                                                         (__tmp25181
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L14112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25182
                                                           __tmp25181))))
                                              (declare (not safe))
                                              (cons __tmp25180 '()))))
                                       (declare (not safe))
                                       (cons _L14115_ __tmp25179))))
                                (declare (not safe))
                                (cons __tmp25178 '()))))
                         (declare (not safe))
                         (cons __tmp25183 __tmp25177)))
                      (__tmp25100
                       (let ((__tmp25101
                              (let ((__tmp25175 (gx#datum->syntax '#f 'if))
                                    (__tmp25102
                                     (let ((__tmp25172
                                            (let ((__tmp25174
                                                   (gx#datum->syntax
                                                    '#f
                                                    'char?))
                                                  (__tmp25173
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L14117_ '()))))
                                              (declare (not safe))
                                              (cons __tmp25174 __tmp25173)))
                                           (__tmp25103
                                            (let ((__tmp25106
                                                   (let ((__tmp25171
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let*))
                                                         (__tmp25107
                                                          (let ((__tmp25146
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp25165
                                (let ((__tmp25170 (gx#datum->syntax '#f 'h))
                                      (__tmp25166
                                       (let ((__tmp25167
                                              (let ((__tmp25169
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##char->integer))
                                                    (__tmp25168
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L14117_ '()))))
                                                (declare (not safe))
                                                (cons __tmp25169 __tmp25168))))
                                         (declare (not safe))
                                         (cons __tmp25167 '()))))
                                  (declare (not safe))
                                  (cons __tmp25170 __tmp25166)))
                               (__tmp25147
                                (let ((__tmp25157
                                       (let ((__tmp25164
                                              (gx#datum->syntax '#f 'ix))
                                             (__tmp25158
                                              (let ((__tmp25159
                                                     (let ((__tmp25163
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##fxmodulo))
                                                           (__tmp25160
                                                            (let ((__tmp25162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp25161
                           (let () (declare (not safe)) (cons _L14110_ '()))))
                      (declare (not safe))
                      (cons __tmp25162 __tmp25161))))
               (declare (not safe))
               (cons __tmp25163 __tmp25160))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25159 '()))))
                                         (declare (not safe))
                                         (cons __tmp25164 __tmp25158)))
                                      (__tmp25148
                                       (let ((__tmp25149
                                              (let ((__tmp25156
                                                     (gx#datum->syntax '#f 'q))
                                                    (__tmp25150
                                                     (let ((__tmp25151
                                                            (let ((__tmp25155
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##vector-ref))
                          (__tmp25152
                           (let ((__tmp25153
                                  (let ((__tmp25154
                                         (gx#datum->syntax '#f 'ix)))
                                    (declare (not safe))
                                    (cons __tmp25154 '()))))
                             (declare (not safe))
                             (cons _L14115_ __tmp25153))))
                      (declare (not safe))
                      (cons __tmp25155 __tmp25152))))
               (declare (not safe))
               (cons __tmp25151 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25156 __tmp25150))))
                                         (declare (not safe))
                                         (cons __tmp25149 '()))))
                                  (declare (not safe))
                                  (cons __tmp25157 __tmp25148))))
                           (declare (not safe))
                           (cons __tmp25165 __tmp25147)))
                        (__tmp25108
                         (let ((__tmp25109
                                (let ((__tmp25145 (gx#datum->syntax '#f 'if))
                                      (__tmp25110
                                       (let ((__tmp25144
                                              (gx#datum->syntax '#f 'q))
                                             (__tmp25111
                                              (let ((__tmp25114
                                                     (let ((__tmp25143
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp25115
                                                            (let ((__tmp25135
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp25142 (gx#datum->syntax '#f 'eq?))
                                 (__tmp25136
                                  (let ((__tmp25138
                                         (let ((__tmp25141
                                                (gx#datum->syntax '#f '##car))
                                               (__tmp25139
                                                (let ((__tmp25140
                                                       (gx#datum->syntax
                                                        '#f
                                                        'q)))
                                                  (declare (not safe))
                                                  (cons __tmp25140 '()))))
                                           (declare (not safe))
                                           (cons __tmp25141 __tmp25139)))
                                        (__tmp25137
                                         (let ()
                                           (declare (not safe))
                                           (cons _L14117_ '()))))
                                    (declare (not safe))
                                    (cons __tmp25138 __tmp25137))))
                             (declare (not safe))
                             (cons __tmp25142 __tmp25136)))
                          (__tmp25116
                           (let ((__tmp25119
                                  (let ((__tmp25134
                                         (gx#datum->syntax '#f 'let))
                                        (__tmp25120
                                         (let ((__tmp25127
                                                (let ((__tmp25133
                                                       (gx#datum->syntax
                                                        '#f
                                                        'x))
                                                      (__tmp25128
                                                       (let ((__tmp25129
                                                              (let ((__tmp25132
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '##cdr))
                            (__tmp25130
                             (let ((__tmp25131 (gx#datum->syntax '#f 'q)))
                               (declare (not safe))
                               (cons __tmp25131 '()))))
                        (declare (not safe))
                        (cons __tmp25132 __tmp25130))))
                 (declare (not safe))
                 (cons __tmp25129 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25133
                                                        __tmp25128)))
                                               (__tmp25121
                                                (let ((__tmp25122
                                                       (let ((__tmp25126
                                                              (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch))
                                                             (__tmp25123
                                                              (let ((__tmp25125
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'x))
                            (__tmp25124
                             (foldr (lambda (_g1415414157_ _g1415514160_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g1415414157_ _g1415514160_)))
                                    '()
                                    _L14114_)))
                        (declare (not safe))
                        (cons __tmp25125 __tmp25124))))
                 (declare (not safe))
                 (cons __tmp25126 __tmp25123))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25122 '()))))
                                           (declare (not safe))
                                           (cons __tmp25127 __tmp25121))))
                                    (declare (not safe))
                                    (cons __tmp25134 __tmp25120)))
                                 (__tmp25117
                                  (let ((__tmp25118
                                         (let ()
                                           (declare (not safe))
                                           (cons _L14116_ '()))))
                                    (declare (not safe))
                                    (cons __tmp25118 '()))))
                             (declare (not safe))
                             (cons __tmp25119 __tmp25117))))
                      (declare (not safe))
                      (cons __tmp25135 __tmp25116))))
               (declare (not safe))
               (cons __tmp25143 __tmp25115)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp25112
                                                     (let ((__tmp25113
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L14116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp25113 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25114 __tmp25112))))
                                         (declare (not safe))
                                         (cons __tmp25144 __tmp25111))))
                                  (declare (not safe))
                                  (cons __tmp25145 __tmp25110))))
                           (declare (not safe))
                           (cons __tmp25109 '()))))
                    (declare (not safe))
                    (cons __tmp25146 __tmp25108))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25171
                                                           __tmp25107)))
                                                  (__tmp25104
                                                   (let ((__tmp25105
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L14116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25105 '()))))
                                              (declare (not safe))
                                              (cons __tmp25106 __tmp25104))))
                                       (declare (not safe))
                                       (cons __tmp25172 __tmp25103))))
                                (declare (not safe))
                                (cons __tmp25175 __tmp25102))))
                         (declare (not safe))
                         (cons __tmp25101 '()))))
                  (declare (not safe))
                  (cons __tmp25176 __tmp25100))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25189
                                                         __tmp25099))))
                                             _hd1399614104_
                                             _hd1399314094_
                                             _hd1399014084_
                                             _dispatch1398814076_
                                             _hd1397514034_
                                             _hd1397214024_
                                             _hd1396914014_)
                                            (_g1395914003_ _g1396014007_))))
                                    (_g1395914003_ _g1396014007_))))
                            (_g1395914003_ _g1396014007_))))
                    (_g1395914003_ _g1396014007_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1398314056_
                                         _target1398014050_
                                         '()))
                                      (_g1395914003_ _g1396014007_)))))
                            (_g1395914003_ _g1396014007_))))
                    (_g1395914003_ _g1396014007_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1395914003_
                                                     _g1396014007_))))
                                            (_g1395914003_ _g1396014007_))))
                                    (_g1395914003_ _g1396014007_)))))
                        (_g1395814163_
                         (list _e13945_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch13948_
                               _default13949_
                               _tab13954_
                               (vector-length _tab13954_)))))))
                 (_min-fixnum13030_
                  (lambda (_datums13938_)
                    (foldl (lambda (_lst13941_ _r13943_)
                             (foldl min _r13943_ _lst13941_))
                           ##max-fixnum
                           _datums13938_)))
                 (_max-fixnum13031_
                  (lambda (_datums13931_)
                    (foldl (lambda (_lst13934_ _r13936_)
                             (foldl max _r13936_ _lst13934_))
                           ##min-fixnum
                           _datums13931_)))
                 (_generate-fixnum-dispatch-table13032_
                  (lambda (_indexes13913_)
                    (let* ((_ixs13916_ (map car _indexes13913_))
                           (_len13919_
                            (let ((__tmp25190 (foldl max '0 _ixs13916_)))
                              (declare (not safe))
                              (fx+ __tmp25190 '1)))
                           (_vec13922_ (make-vector _len13919_ '#f)))
                      (for-each
                       (lambda (_entry13927_ _x13929_)
                         (vector-set! _vec13922_ _x13929_ (cdr _entry13927_)))
                       _indexes13913_
                       _ixs13916_)
                      _vec13922_)))
                 (_generate-fixnum-dispatch13033_
                  (lambda (_e13647_
                           _datums13649_
                           _dispatch13650_
                           _default13651_)
                    (if (and (>= (_min-fixnum13030_ _datums13649_) '0)
                             (< (_max-fixnum13031_ _datums13649_) '1024))
                        (let* ((_indexes13653_
                                (_datum-dispatch-index13020_ _datums13649_))
                               (_tab13656_
                                (_generate-fixnum-dispatch-table13032_
                                 _indexes13653_))
                               (_dense?13659_
                                (andmap values (vector->list _tab13656_))))
                          (let* ((_g1366413708_
                                  (lambda (_g1366513704_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1366513704_)))
                                 (_g1366313909_
                                  (lambda (_g1366513712_)
                                    (if (gx#stx-pair? _g1366513712_)
                                        (let ((_e1367513715_
                                               (gx#syntax-e _g1366513712_)))
                                          (let ((_hd1367413719_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1367513715_)))
                                                (_tl1367313722_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1367513715_))))
                                            (if (gx#stx-pair? _tl1367313722_)
                                                (let ((_e1367813725_
                                                       (gx#syntax-e
                                                        _tl1367313722_)))
                                                  (let ((_hd1367713729_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1367813725_)))
                                                        (_tl1367613732_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1367813725_))))
                                                    (if (gx#stx-pair?
                                                         _tl1367613732_)
                                                        (let ((_e1368113735_
                                                               (gx#syntax-e
                                                                _tl1367613732_)))
                                                          (let ((_hd1368013739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1368113735_)))
                        (_tl1367913742_
                         (let () (declare (not safe)) (##cdr _e1368113735_))))
                    (if (gx#stx-pair? _tl1367913742_)
                        (let ((_e1368413745_ (gx#syntax-e _tl1367913742_)))
                          (let ((_hd1368313749_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1368413745_)))
                                (_tl1368213752_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1368413745_))))
                            (if (gx#stx-pair/null? _hd1368313749_)
                                (let ((_g25191_
                                       (gx#syntax-split-splice
                                        _hd1368313749_
                                        '0)))
                                  (begin
                                    (let ((_g25192_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g25191_)
                                                 (##vector-length _g25191_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g25192_ 2)))
                                          (error "Context expects 2 values"
                                                 _g25192_)))
                                    (let ((_target1368513755_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g25191_ 0)))
                                          (_tl1368713758_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g25191_ 1))))
                                      (if (gx#stx-null? _tl1368713758_)
                                          (letrec ((_loop1368813761_
                                                    (lambda (_hd1368613765_
                                                             _dispatch1369213768_)
                                                      (if (gx#stx-pair?
                                                           _hd1368613765_)
                                                          (let ((_e1368913771_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1368613765_)))
                    (let ((_lp-hd1369013775_
                           (let () (declare (not safe)) (##car _e1368913771_)))
                          (_lp-tl1369113778_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1368913771_))))
                      (_loop1368813761_
                       _lp-tl1369113778_
                       (let ()
                         (declare (not safe))
                         (cons _lp-hd1369013775_ _dispatch1369213768_)))))
                  (let ((_dispatch1369313781_ (reverse _dispatch1369213768_)))
                    (if (gx#stx-pair? _tl1368213752_)
                        (let ((_e1369613785_ (gx#syntax-e _tl1368213752_)))
                          (let ((_hd1369513789_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1369613785_)))
                                (_tl1369413792_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1369613785_))))
                            (if (gx#stx-pair? _tl1369413792_)
                                (let ((_e1369913795_
                                       (gx#syntax-e _tl1369413792_)))
                                  (let ((_hd1369813799_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1369913795_)))
                                        (_tl1369713802_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1369913795_))))
                                    (if (gx#stx-pair? _tl1369713802_)
                                        (let ((_e1370213805_
                                               (gx#syntax-e _tl1369713802_)))
                                          (let ((_hd1370113809_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1370213805_)))
                                                (_tl1370013812_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1370213805_))))
                                            (if (gx#stx-null? _tl1370013812_)
                                                ((lambda (_L13815_
                                                          _L13817_
                                                          _L13818_
                                                          _L13819_
                                                          _L13820_
                                                          _L13821_
                                                          _L13822_)
                                                   (let ()
                                                     (let* ((_g1386113869_
                                                             (lambda (_g1386213865_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _g1386213865_)))
                                                            (_g1386013889_
                                                             (lambda (_g1386213873_)
                                                               ((lambda (_L13876_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((__tmp25246 (gx#datum->syntax '#f 'let))
                                  (__tmp25193
                                   (let ((__tmp25233
                                          (let ((__tmp25240
                                                 (let ((__tmp25241
                                                        (let ((__tmp25242
                                                               (let ((__tmp25245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'lambda))
                             (__tmp25243
                              (let ((__tmp25244
                                     (let ()
                                       (declare (not safe))
                                       (cons _L13818_ '()))))
                                (declare (not safe))
                                (cons '() __tmp25244))))
                         (declare (not safe))
                         (cons __tmp25245 __tmp25243))))
                  (declare (not safe))
                  (cons __tmp25242 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L13821_ __tmp25241)))
                                                (__tmp25234
                                                 (let ((__tmp25235
                                                        (let ((__tmp25236
                                                               (let ((__tmp25237
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp25239 (gx#datum->syntax '#f 'quote))
                                    (__tmp25238
                                     (let ()
                                       (declare (not safe))
                                       (cons _L13817_ '()))))
                                (declare (not safe))
                                (cons __tmp25239 __tmp25238))))
                         (declare (not safe))
                         (cons __tmp25237 '()))))
                  (declare (not safe))
                  (cons _L13820_ __tmp25236))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25235 '()))))
                                            (declare (not safe))
                                            (cons __tmp25240 __tmp25234)))
                                         (__tmp25194
                                          (let ((__tmp25195
                                                 (let ((__tmp25232
                                                        (gx#datum->syntax
                                                         '#f
                                                         'if))
                                                       (__tmp25196
                                                        (let ((__tmp25229
                                                               (let ((__tmp25231
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fixnum?))
                             (__tmp25230
                              (let ()
                                (declare (not safe))
                                (cons _L13822_ '()))))
                         (declare (not safe))
                         (cons __tmp25231 __tmp25230)))
                      (__tmp25197
                       (let ((__tmp25200
                              (let ((__tmp25228 (gx#datum->syntax '#f 'if))
                                    (__tmp25201
                                     (let ((__tmp25216
                                            (let ((__tmp25227
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp25217
                                                   (let ((__tmp25223
                                                          (let ((__tmp25226
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '##fx>=))
                        (__tmp25224
                         (let ((__tmp25225
                                (let () (declare (not safe)) (cons '0 '()))))
                           (declare (not safe))
                           (cons _L13822_ __tmp25225))))
                    (declare (not safe))
                    (cons __tmp25226 __tmp25224)))
                 (__tmp25218
                  (let ((__tmp25219
                         (let ((__tmp25222 (gx#datum->syntax '#f '##fx<))
                               (__tmp25220
                                (let ((__tmp25221
                                       (let ()
                                         (declare (not safe))
                                         (cons _L13815_ '()))))
                                  (declare (not safe))
                                  (cons _L13822_ __tmp25221))))
                           (declare (not safe))
                           (cons __tmp25222 __tmp25220))))
                    (declare (not safe))
                    (cons __tmp25219 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25223
                                                           __tmp25218))))
                                              (declare (not safe))
                                              (cons __tmp25227 __tmp25217)))
                                           (__tmp25202
                                            (let ((__tmp25205
                                                   (let ((__tmp25215
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp25206
                                                          (let ((__tmp25208
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp25214 (gx#datum->syntax '#f 'x))
                               (__tmp25209
                                (let ((__tmp25210
                                       (let ((__tmp25213
                                              (gx#datum->syntax
                                               '#f
                                               '##vector-ref))
                                             (__tmp25211
                                              (let ((__tmp25212
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L13822_ '()))))
                                                (declare (not safe))
                                                (cons _L13820_ __tmp25212))))
                                         (declare (not safe))
                                         (cons __tmp25213 __tmp25211))))
                                  (declare (not safe))
                                  (cons __tmp25210 '()))))
                           (declare (not safe))
                           (cons __tmp25214 __tmp25209)))
                        (__tmp25207
                         (let () (declare (not safe)) (cons _L13876_ '()))))
                    (declare (not safe))
                    (cons __tmp25208 __tmp25207))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25215
                                                           __tmp25206)))
                                                  (__tmp25203
                                                   (let ((__tmp25204
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L13821_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25204 '()))))
                                              (declare (not safe))
                                              (cons __tmp25205 __tmp25203))))
                                       (declare (not safe))
                                       (cons __tmp25216 __tmp25202))))
                                (declare (not safe))
                                (cons __tmp25228 __tmp25201)))
                             (__tmp25198
                              (let ((__tmp25199
                                     (let ()
                                       (declare (not safe))
                                       (cons _L13821_ '()))))
                                (declare (not safe))
                                (cons __tmp25199 '()))))
                         (declare (not safe))
                         (cons __tmp25200 __tmp25198))))
                  (declare (not safe))
                  (cons __tmp25229 __tmp25197))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25232
                                                         __tmp25196))))
                                            (declare (not safe))
                                            (cons __tmp25195 '()))))
                                     (declare (not safe))
                                     (cons __tmp25233 __tmp25194))))
                              (declare (not safe))
                              (cons __tmp25246 __tmp25193))))
                        _g1386213873_))))
               (_g1386013889_
                (if _dense?13659_
                    (let ((__tmp25261 (gx#datum->syntax '#f '~case-dispatch))
                          (__tmp25258
                           (let ((__tmp25260 (gx#datum->syntax '#f 'x))
                                 (__tmp25259
                                  (foldr (lambda (_g1389213895_ _g1389313898_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g1389213895_
                                                   _g1389313898_)))
                                         '()
                                         _L13819_)))
                             (declare (not safe))
                             (cons __tmp25260 __tmp25259))))
                      (declare (not safe))
                      (cons __tmp25261 __tmp25258))
                    (let ((__tmp25257 (gx#datum->syntax '#f 'if))
                          (__tmp25247
                           (let ((__tmp25256 (gx#datum->syntax '#f 'x))
                                 (__tmp25248
                                  (let ((__tmp25251
                                         (let ((__tmp25255
                                                (gx#datum->syntax
                                                 '#f
                                                 '~case-dispatch))
                                               (__tmp25252
                                                (let ((__tmp25254
                                                       (gx#datum->syntax
                                                        '#f
                                                        'x))
                                                      (__tmp25253
                                                       (foldr (lambda (_g1390013903_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1390113906_)
                        (let ()
                          (declare (not safe))
                          (cons _g1390013903_ _g1390113906_)))
                      '()
                      _L13819_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25254
                                                        __tmp25253))))
                                           (declare (not safe))
                                           (cons __tmp25255 __tmp25252)))
                                        (__tmp25249
                                         (let ((__tmp25250
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L13821_ '()))))
                                           (declare (not safe))
                                           (cons __tmp25250 '()))))
                                    (declare (not safe))
                                    (cons __tmp25251 __tmp25249))))
                             (declare (not safe))
                             (cons __tmp25256 __tmp25248))))
                      (declare (not safe))
                      (cons __tmp25257 __tmp25247)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1370113809_
                                                 _hd1369813799_
                                                 _hd1369513789_
                                                 _dispatch1369313781_
                                                 _hd1368013739_
                                                 _hd1367713729_
                                                 _hd1367413719_)
                                                (_g1366413708_
                                                 _g1366513712_))))
                                        (_g1366413708_ _g1366513712_))))
                                (_g1366413708_ _g1366513712_))))
                        (_g1366413708_ _g1366513712_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1368813761_
                                             _target1368513755_
                                             '()))
                                          (_g1366413708_ _g1366513712_)))))
                                (_g1366413708_ _g1366513712_))))
                        (_g1366413708_ _g1366513712_))))
                (_g1366413708_ _g1366513712_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1366413708_
                                                 _g1366513712_))))
                                        (_g1366413708_ _g1366513712_)))))
                            (_g1366313909_
                             (list _e13647_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch13650_
                                   _default13651_
                                   _tab13656_
                                   (vector-length _tab13656_)))))
                        (_generate-fixnum-dispatch/hash13034_
                         _e13647_
                         _datums13649_
                         _dispatch13650_
                         _default13651_))))
                 (_generate-fixnum-dispatch/hash13034_
                  (lambda (_e13425_
                           _datums13427_
                           _dispatch13428_
                           _default13429_)
                    (let* ((_indexes13431_
                            (_datum-dispatch-index13020_ _datums13427_))
                           (_tab13434_
                            (_generate-hash-dispatch-table13022_
                             _indexes13431_
                             values)))
                      (let* ((_g1343913483_
                              (lambda (_g1344013479_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g1344013479_)))
                             (_g1343813643_
                              (lambda (_g1344013487_)
                                (if (gx#stx-pair? _g1344013487_)
                                    (let ((_e1345013490_
                                           (gx#syntax-e _g1344013487_)))
                                      (let ((_hd1344913494_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1345013490_)))
                                            (_tl1344813497_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1345013490_))))
                                        (if (gx#stx-pair? _tl1344813497_)
                                            (let ((_e1345313500_
                                                   (gx#syntax-e
                                                    _tl1344813497_)))
                                              (let ((_hd1345213504_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1345313500_)))
                                                    (_tl1345113507_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1345313500_))))
                                                (if (gx#stx-pair?
                                                     _tl1345113507_)
                                                    (let ((_e1345613510_
                                                           (gx#syntax-e
                                                            _tl1345113507_)))
                                                      (let ((_hd1345513514_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1345613510_)))
                    (_tl1345413517_
                     (let () (declare (not safe)) (##cdr _e1345613510_))))
                (if (gx#stx-pair? _tl1345413517_)
                    (let ((_e1345913520_ (gx#syntax-e _tl1345413517_)))
                      (let ((_hd1345813524_
                             (let ()
                               (declare (not safe))
                               (##car _e1345913520_)))
                            (_tl1345713527_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1345913520_))))
                        (if (gx#stx-pair/null? _hd1345813524_)
                            (let ((_g25262_
                                   (gx#syntax-split-splice _hd1345813524_ '0)))
                              (begin
                                (let ((_g25263_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g25262_)
                                             (##vector-length _g25262_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g25263_ 2)))
                                      (error "Context expects 2 values"
                                             _g25263_)))
                                (let ((_target1346013530_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g25262_ 0)))
                                      (_tl1346213533_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g25262_ 1))))
                                  (if (gx#stx-null? _tl1346213533_)
                                      (letrec ((_loop1346313536_
                                                (lambda (_hd1346113540_
                                                         _dispatch1346713543_)
                                                  (if (gx#stx-pair?
                                                       _hd1346113540_)
                                                      (let ((_e1346413546_
                                                             (gx#syntax-e
                                                              _hd1346113540_)))
                                                        (let ((_lp-hd1346513550_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1346413546_)))
                      (_lp-tl1346613553_
                       (let () (declare (not safe)) (##cdr _e1346413546_))))
                  (_loop1346313536_
                   _lp-tl1346613553_
                   (let ()
                     (declare (not safe))
                     (cons _lp-hd1346513550_ _dispatch1346713543_)))))
              (let ((_dispatch1346813556_ (reverse _dispatch1346713543_)))
                (if (gx#stx-pair? _tl1345713527_)
                    (let ((_e1347113560_ (gx#syntax-e _tl1345713527_)))
                      (let ((_hd1347013564_
                             (let ()
                               (declare (not safe))
                               (##car _e1347113560_)))
                            (_tl1346913567_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1347113560_))))
                        (if (gx#stx-pair? _tl1346913567_)
                            (let ((_e1347413570_ (gx#syntax-e _tl1346913567_)))
                              (let ((_hd1347313574_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1347413570_)))
                                    (_tl1347213577_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1347413570_))))
                                (if (gx#stx-pair? _tl1347213577_)
                                    (let ((_e1347713580_
                                           (gx#syntax-e _tl1347213577_)))
                                      (let ((_hd1347613584_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1347713580_)))
                                            (_tl1347513587_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1347713580_))))
                                        (if (gx#stx-null? _tl1347513587_)
                                            ((lambda (_L13590_
                                                      _L13592_
                                                      _L13593_
                                                      _L13594_
                                                      _L13595_
                                                      _L13596_
                                                      _L13597_)
                                               (let ()
                                                 (let ((__tmp25422
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let))
                                                       (__tmp25340
                                                        (let ((__tmp25409
                                                               (let ((__tmp25416
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp25417
                                     (let ((__tmp25418
                                            (let ((__tmp25421
                                                   (gx#datum->syntax
                                                    '#f
                                                    'lambda))
                                                  (__tmp25419
                                                   (let ((__tmp25420
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L13593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '() __tmp25420))))
                                              (declare (not safe))
                                              (cons __tmp25421 __tmp25419))))
                                       (declare (not safe))
                                       (cons __tmp25418 '()))))
                                (declare (not safe))
                                (cons _L13596_ __tmp25417)))
                             (__tmp25410
                              (let ((__tmp25411
                                     (let ((__tmp25412
                                            (let ((__tmp25413
                                                   (let ((__tmp25415
                                                          (gx#datum->syntax
                                                           '#f
                                                           'quote))
                                                         (__tmp25414
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L13592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25415
                                                           __tmp25414))))
                                              (declare (not safe))
                                              (cons __tmp25413 '()))))
                                       (declare (not safe))
                                       (cons _L13595_ __tmp25412))))
                                (declare (not safe))
                                (cons __tmp25411 '()))))
                         (declare (not safe))
                         (cons __tmp25416 __tmp25410)))
                      (__tmp25341
                       (let ((__tmp25342
                              (let ((__tmp25408 (gx#datum->syntax '#f 'if))
                                    (__tmp25343
                                     (let ((__tmp25405
                                            (let ((__tmp25407
                                                   (gx#datum->syntax
                                                    '#f
                                                    'fixnum?))
                                                  (__tmp25406
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L13597_ '()))))
                                              (declare (not safe))
                                              (cons __tmp25407 __tmp25406)))
                                           (__tmp25344
                                            (let ((__tmp25347
                                                   (let ((__tmp25404
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let*))
                                                         (__tmp25348
                                                          (let ((__tmp25387
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp25397
                                (let ((__tmp25403 (gx#datum->syntax '#f 'ix))
                                      (__tmp25398
                                       (let ((__tmp25399
                                              (let ((__tmp25402
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##fxmodulo))
                                                    (__tmp25400
                                                     (let ((__tmp25401
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L13590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L13597_ __tmp25401))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25402 __tmp25400))))
                                         (declare (not safe))
                                         (cons __tmp25399 '()))))
                                  (declare (not safe))
                                  (cons __tmp25403 __tmp25398)))
                               (__tmp25388
                                (let ((__tmp25389
                                       (let ((__tmp25396
                                              (gx#datum->syntax '#f 'q))
                                             (__tmp25390
                                              (let ((__tmp25391
                                                     (let ((__tmp25395
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##vector-ref))
                                                           (__tmp25392
                                                            (let ((__tmp25393
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp25394 (gx#datum->syntax '#f 'ix)))
                             (declare (not safe))
                             (cons __tmp25394 '()))))
                      (declare (not safe))
                      (cons _L13595_ __tmp25393))))
               (declare (not safe))
               (cons __tmp25395 __tmp25392))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25391 '()))))
                                         (declare (not safe))
                                         (cons __tmp25396 __tmp25390))))
                                  (declare (not safe))
                                  (cons __tmp25389 '()))))
                           (declare (not safe))
                           (cons __tmp25397 __tmp25388)))
                        (__tmp25349
                         (let ((__tmp25350
                                (let ((__tmp25386 (gx#datum->syntax '#f 'if))
                                      (__tmp25351
                                       (let ((__tmp25385
                                              (gx#datum->syntax '#f 'q))
                                             (__tmp25352
                                              (let ((__tmp25355
                                                     (let ((__tmp25384
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp25356
                                                            (let ((__tmp25376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp25383 (gx#datum->syntax '#f 'eq?))
                                 (__tmp25377
                                  (let ((__tmp25379
                                         (let ((__tmp25382
                                                (gx#datum->syntax '#f '##car))
                                               (__tmp25380
                                                (let ((__tmp25381
                                                       (gx#datum->syntax
                                                        '#f
                                                        'q)))
                                                  (declare (not safe))
                                                  (cons __tmp25381 '()))))
                                           (declare (not safe))
                                           (cons __tmp25382 __tmp25380)))
                                        (__tmp25378
                                         (let ()
                                           (declare (not safe))
                                           (cons _L13597_ '()))))
                                    (declare (not safe))
                                    (cons __tmp25379 __tmp25378))))
                             (declare (not safe))
                             (cons __tmp25383 __tmp25377)))
                          (__tmp25357
                           (let ((__tmp25360
                                  (let ((__tmp25375
                                         (gx#datum->syntax '#f 'let))
                                        (__tmp25361
                                         (let ((__tmp25368
                                                (let ((__tmp25374
                                                       (gx#datum->syntax
                                                        '#f
                                                        'x))
                                                      (__tmp25369
                                                       (let ((__tmp25370
                                                              (let ((__tmp25373
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '##cdr))
                            (__tmp25371
                             (let ((__tmp25372 (gx#datum->syntax '#f 'q)))
                               (declare (not safe))
                               (cons __tmp25372 '()))))
                        (declare (not safe))
                        (cons __tmp25373 __tmp25371))))
                 (declare (not safe))
                 (cons __tmp25370 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25374
                                                        __tmp25369)))
                                               (__tmp25362
                                                (let ((__tmp25363
                                                       (let ((__tmp25367
                                                              (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch))
                                                             (__tmp25364
                                                              (let ((__tmp25366
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'x))
                            (__tmp25365
                             (foldr (lambda (_g1363413637_ _g1363513640_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g1363413637_ _g1363513640_)))
                                    '()
                                    _L13594_)))
                        (declare (not safe))
                        (cons __tmp25366 __tmp25365))))
                 (declare (not safe))
                 (cons __tmp25367 __tmp25364))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25363 '()))))
                                           (declare (not safe))
                                           (cons __tmp25368 __tmp25362))))
                                    (declare (not safe))
                                    (cons __tmp25375 __tmp25361)))
                                 (__tmp25358
                                  (let ((__tmp25359
                                         (let ()
                                           (declare (not safe))
                                           (cons _L13596_ '()))))
                                    (declare (not safe))
                                    (cons __tmp25359 '()))))
                             (declare (not safe))
                             (cons __tmp25360 __tmp25358))))
                      (declare (not safe))
                      (cons __tmp25376 __tmp25357))))
               (declare (not safe))
               (cons __tmp25384 __tmp25356)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp25353
                                                     (let ((__tmp25354
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L13596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp25354 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25355 __tmp25353))))
                                         (declare (not safe))
                                         (cons __tmp25385 __tmp25352))))
                                  (declare (not safe))
                                  (cons __tmp25386 __tmp25351))))
                           (declare (not safe))
                           (cons __tmp25350 '()))))
                    (declare (not safe))
                    (cons __tmp25387 __tmp25349))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25404
                                                           __tmp25348)))
                                                  (__tmp25345
                                                   (let ((__tmp25346
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L13596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25346 '()))))
                                              (declare (not safe))
                                              (cons __tmp25347 __tmp25345))))
                                       (declare (not safe))
                                       (cons __tmp25405 __tmp25344))))
                                (declare (not safe))
                                (cons __tmp25408 __tmp25343))))
                         (declare (not safe))
                         (cons __tmp25342 '()))))
                  (declare (not safe))
                  (cons __tmp25409 __tmp25341))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25422
                                                         __tmp25340))))
                                             _hd1347613584_
                                             _hd1347313574_
                                             _hd1347013564_
                                             _dispatch1346813556_
                                             _hd1345513514_
                                             _hd1345213504_
                                             _hd1344913494_)
                                            (_g1343913483_ _g1344013487_))))
                                    (_g1343913483_ _g1344013487_))))
                            (_g1343913483_ _g1344013487_))))
                    (_g1343913483_ _g1344013487_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1346313536_
                                         _target1346013530_
                                         '()))
                                      (_g1343913483_ _g1344013487_)))))
                            (_g1343913483_ _g1344013487_))))
                    (_g1343913483_ _g1344013487_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1343913483_
                                                     _g1344013487_))))
                                            (_g1343913483_ _g1344013487_))))
                                    (_g1343913483_ _g1344013487_)))))
                        (_g1343813643_
                         (list _e13425_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch13428_
                               _default13429_
                               _tab13434_
                               (vector-length _tab13434_)))))))
                 (_generate-generic-dispatch13035_
                  (lambda (_e13161_
                           _datums13163_
                           _dispatch13164_
                           _default13165_)
                    (let ((_g25423_
                           (if (_eq-datums?13018_ _datums13163_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_hash-e13167_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g25423_ 0)))
                              (_hashf13169_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g25423_ 1)))
                              (_eqf13170_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g25423_ 2))))
                          (let* ((_indexes13172_
                                  (_datum-dispatch-index13020_ _datums13163_))
                                 (_tab13175_
                                  (_generate-hash-dispatch-table13022_
                                   _indexes13172_
                                   _hash-e13167_)))
                            (let* ((_g1318013232_
                                    (lambda (_g1318113228_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g1318113228_)))
                                   (_g1317913421_
                                    (lambda (_g1318113236_)
                                      (if (gx#stx-pair? _g1318113236_)
                                          (let ((_e1319313239_
                                                 (gx#syntax-e _g1318113236_)))
                                            (let ((_hd1319213243_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1319313239_)))
                                                  (_tl1319113246_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1319313239_))))
                                              (if (gx#stx-pair? _tl1319113246_)
                                                  (let ((_e1319613249_
                                                         (gx#syntax-e
                                                          _tl1319113246_)))
                                                    (let ((_hd1319513253_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1319613249_)))
                                                          (_tl1319413256_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1319613249_))))
                                                      (if (gx#stx-pair?
                                                           _tl1319413256_)
                                                          (let ((_e1319913259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1319413256_)))
                    (let ((_hd1319813263_
                           (let () (declare (not safe)) (##car _e1319913259_)))
                          (_tl1319713266_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1319913259_))))
                      (if (gx#stx-pair? _tl1319713266_)
                          (let ((_e1320213269_ (gx#syntax-e _tl1319713266_)))
                            (let ((_hd1320113273_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1320213269_)))
                                  (_tl1320013276_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1320213269_))))
                              (if (gx#stx-pair/null? _hd1320113273_)
                                  (let ((_g25424_
                                         (gx#syntax-split-splice
                                          _hd1320113273_
                                          '0)))
                                    (begin
                                      (let ((_g25425_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g25424_)
                                                   (##vector-length _g25424_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g25425_ 2)))
                                            (error "Context expects 2 values"
                                                   _g25425_)))
                                      (let ((_target1320313279_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g25424_ 0)))
                                            (_tl1320513282_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g25424_ 1))))
                                        (if (gx#stx-null? _tl1320513282_)
                                            (letrec ((_loop1320613285_
                                                      (lambda (_hd1320413289_
                                                               _dispatch1321013292_)
                                                        (if (gx#stx-pair?
                                                             _hd1320413289_)
                                                            (let ((_e1320713295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1320413289_)))
                      (let ((_lp-hd1320813299_
                             (let ()
                               (declare (not safe))
                               (##car _e1320713295_)))
                            (_lp-tl1320913302_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1320713295_))))
                        (_loop1320613285_
                         _lp-tl1320913302_
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd1320813299_ _dispatch1321013292_)))))
                    (let ((_dispatch1321113305_
                           (reverse _dispatch1321013292_)))
                      (if (gx#stx-pair? _tl1320013276_)
                          (let ((_e1321413309_ (gx#syntax-e _tl1320013276_)))
                            (let ((_hd1321313313_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1321413309_)))
                                  (_tl1321213316_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1321413309_))))
                              (if (gx#stx-pair? _tl1321213316_)
                                  (let ((_e1321713319_
                                         (gx#syntax-e _tl1321213316_)))
                                    (let ((_hd1321613323_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1321713319_)))
                                          (_tl1321513326_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1321713319_))))
                                      (if (gx#stx-pair? _tl1321513326_)
                                          (let ((_e1322013329_
                                                 (gx#syntax-e _tl1321513326_)))
                                            (let ((_hd1321913333_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1322013329_)))
                                                  (_tl1321813336_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1322013329_))))
                                              (if (gx#stx-pair? _tl1321813336_)
                                                  (let ((_e1322313339_
                                                         (gx#syntax-e
                                                          _tl1321813336_)))
                                                    (let ((_hd1322213343_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1322313339_)))
                                                          (_tl1322113346_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1322313339_))))
                                                      (if (gx#stx-pair?
                                                           _tl1322113346_)
                                                          (let ((_e1322613349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1322113346_)))
                    (let ((_hd1322513353_
                           (let () (declare (not safe)) (##car _e1322613349_)))
                          (_tl1322413356_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1322613349_))))
                      (if (gx#stx-null? _tl1322413356_)
                          ((lambda (_L13359_
                                    _L13361_
                                    _L13362_
                                    _L13363_
                                    _L13364_
                                    _L13365_
                                    _L13366_
                                    _L13367_
                                    _L13368_)
                             (let ()
                               (let ((__tmp25505 (gx#datum->syntax '#f 'let))
                                     (__tmp25426
                                      (let ((__tmp25492
                                             (let ((__tmp25499
                                                    (let ((__tmp25500
                                                           (let ((__tmp25501
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp25504 (gx#datum->syntax '#f 'lambda))
                                (__tmp25502
                                 (let ((__tmp25503
                                        (let ()
                                          (declare (not safe))
                                          (cons _L13364_ '()))))
                                   (declare (not safe))
                                   (cons '() __tmp25503))))
                            (declare (not safe))
                            (cons __tmp25504 __tmp25502))))
                     (declare (not safe))
                     (cons __tmp25501 '()))))
              (declare (not safe))
              (cons _L13367_ __tmp25500)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp25493
                                                    (let ((__tmp25494
                                                           (let ((__tmp25495
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp25496
                                 (let ((__tmp25498
                                        (gx#datum->syntax '#f 'quote))
                                       (__tmp25497
                                        (let ()
                                          (declare (not safe))
                                          (cons _L13363_ '()))))
                                   (declare (not safe))
                                   (cons __tmp25498 __tmp25497))))
                            (declare (not safe))
                            (cons __tmp25496 '()))))
                     (declare (not safe))
                     (cons _L13366_ __tmp25495))))
              (declare (not safe))
              (cons __tmp25494 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp25499 __tmp25493)))
                                            (__tmp25427
                                             (let ((__tmp25428
                                                    (let ((__tmp25491
                                                           (gx#datum->syntax
                                                            '#f
                                                            'let*))
                                                          (__tmp25429
                                                           (let ((__tmp25467
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp25486
                                 (let ((__tmp25490 (gx#datum->syntax '#f 'h))
                                       (__tmp25487
                                        (let ((__tmp25488
                                               (let ((__tmp25489
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L13368_ '()))))
                                                 (declare (not safe))
                                                 (cons _L13361_ __tmp25489))))
                                          (declare (not safe))
                                          (cons __tmp25488 '()))))
                                   (declare (not safe))
                                   (cons __tmp25490 __tmp25487)))
                                (__tmp25468
                                 (let ((__tmp25478
                                        (let ((__tmp25485
                                               (gx#datum->syntax '#f 'ix))
                                              (__tmp25479
                                               (let ((__tmp25480
                                                      (let ((__tmp25484
                                                             (gx#datum->syntax
                                                              '#f
                                                              '##fxmodulo))
                                                            (__tmp25481
                                                             (let ((__tmp25483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'h))
                           (__tmp25482
                            (let () (declare (not safe)) (cons _L13362_ '()))))
                       (declare (not safe))
                       (cons __tmp25483 __tmp25482))))
                (declare (not safe))
                (cons __tmp25484 __tmp25481))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25480 '()))))
                                          (declare (not safe))
                                          (cons __tmp25485 __tmp25479)))
                                       (__tmp25469
                                        (let ((__tmp25470
                                               (let ((__tmp25477
                                                      (gx#datum->syntax
                                                       '#f
                                                       'q))
                                                     (__tmp25471
                                                      (let ((__tmp25472
                                                             (let ((__tmp25476
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '##vector-ref))
                           (__tmp25473
                            (let ((__tmp25474
                                   (let ((__tmp25475
                                          (gx#datum->syntax '#f 'ix)))
                                     (declare (not safe))
                                     (cons __tmp25475 '()))))
                              (declare (not safe))
                              (cons _L13366_ __tmp25474))))
                       (declare (not safe))
                       (cons __tmp25476 __tmp25473))))
                (declare (not safe))
                (cons __tmp25472 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25477
                                                       __tmp25471))))
                                          (declare (not safe))
                                          (cons __tmp25470 '()))))
                                   (declare (not safe))
                                   (cons __tmp25478 __tmp25469))))
                            (declare (not safe))
                            (cons __tmp25486 __tmp25468)))
                         (__tmp25430
                          (let ((__tmp25431
                                 (let ((__tmp25466 (gx#datum->syntax '#f 'if))
                                       (__tmp25432
                                        (let ((__tmp25465
                                               (gx#datum->syntax '#f 'q))
                                              (__tmp25433
                                               (let ((__tmp25436
                                                      (let ((__tmp25464
                                                             (gx#datum->syntax
                                                              '#f
                                                              'if))
                                                            (__tmp25437
                                                             (let ((__tmp25457
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp25458
                                   (let ((__tmp25460
                                          (let ((__tmp25463
                                                 (gx#datum->syntax '#f '##car))
                                                (__tmp25461
                                                 (let ((__tmp25462
                                                        (gx#datum->syntax
                                                         '#f
                                                         'q)))
                                                   (declare (not safe))
                                                   (cons __tmp25462 '()))))
                                            (declare (not safe))
                                            (cons __tmp25463 __tmp25461)))
                                         (__tmp25459
                                          (let ()
                                            (declare (not safe))
                                            (cons _L13368_ '()))))
                                     (declare (not safe))
                                     (cons __tmp25460 __tmp25459))))
                              (declare (not safe))
                              (cons _L13359_ __tmp25458)))
                           (__tmp25438
                            (let ((__tmp25441
                                   (let ((__tmp25456
                                          (gx#datum->syntax '#f 'let))
                                         (__tmp25442
                                          (let ((__tmp25449
                                                 (let ((__tmp25455
                                                        (gx#datum->syntax
                                                         '#f
                                                         'x))
                                                       (__tmp25450
                                                        (let ((__tmp25451
                                                               (let ((__tmp25454
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f '##cdr))
                             (__tmp25452
                              (let ((__tmp25453 (gx#datum->syntax '#f 'q)))
                                (declare (not safe))
                                (cons __tmp25453 '()))))
                         (declare (not safe))
                         (cons __tmp25454 __tmp25452))))
                  (declare (not safe))
                  (cons __tmp25451 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25455
                                                         __tmp25450)))
                                                (__tmp25443
                                                 (let ((__tmp25444
                                                        (let ((__tmp25448
                                                               (gx#datum->syntax
                                                                '#f
                                                                '~case-dispatch))
                                                              (__tmp25445
                                                               (let ((__tmp25447
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'x))
                             (__tmp25446
                              (foldr (lambda (_g1341213415_ _g1341313418_)
                                       (let ()
                                         (declare (not safe))
                                         (cons _g1341213415_ _g1341313418_)))
                                     '()
                                     _L13365_)))
                         (declare (not safe))
                         (cons __tmp25447 __tmp25446))))
                  (declare (not safe))
                  (cons __tmp25448 __tmp25445))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25444 '()))))
                                            (declare (not safe))
                                            (cons __tmp25449 __tmp25443))))
                                     (declare (not safe))
                                     (cons __tmp25456 __tmp25442)))
                                  (__tmp25439
                                   (let ((__tmp25440
                                          (let ()
                                            (declare (not safe))
                                            (cons _L13367_ '()))))
                                     (declare (not safe))
                                     (cons __tmp25440 '()))))
                              (declare (not safe))
                              (cons __tmp25441 __tmp25439))))
                       (declare (not safe))
                       (cons __tmp25457 __tmp25438))))
                (declare (not safe))
                (cons __tmp25464 __tmp25437)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp25434
                                                      (let ((__tmp25435
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L13367_ '()))))
                (declare (not safe))
                (cons __tmp25435 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25436
                                                       __tmp25434))))
                                          (declare (not safe))
                                          (cons __tmp25465 __tmp25433))))
                                   (declare (not safe))
                                   (cons __tmp25466 __tmp25432))))
                            (declare (not safe))
                            (cons __tmp25431 '()))))
                     (declare (not safe))
                     (cons __tmp25467 __tmp25430))))
              (declare (not safe))
              (cons __tmp25491 __tmp25429))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp25428 '()))))
                                        (declare (not safe))
                                        (cons __tmp25492 __tmp25427))))
                                 (declare (not safe))
                                 (cons __tmp25505 __tmp25426))))
                           _hd1322513353_
                           _hd1322213343_
                           _hd1321913333_
                           _hd1321613323_
                           _hd1321313313_
                           _dispatch1321113305_
                           _hd1319813263_
                           _hd1319513253_
                           _hd1319213243_)
                          (_g1318013232_ _g1318113236_))))
                  (_g1318013232_ _g1318113236_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1318013232_
                                                   _g1318113236_))))
                                          (_g1318013232_ _g1318113236_))))
                                  (_g1318013232_ _g1318113236_))))
                          (_g1318013232_ _g1318113236_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1320613285_
                                               _target1320313279_
                                               '()))
                                            (_g1318013232_ _g1318113236_)))))
                                  (_g1318013232_ _g1318113236_))))
                          (_g1318013232_ _g1318113236_))))
                  (_g1318013232_ _g1318113236_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1318013232_
                                                   _g1318113236_))))
                                          (_g1318013232_ _g1318113236_)))))
                              (_g1317913421_
                               (list _e13161_
                                     (gx#genident 'default)
                                     (gx#genident 'table)
                                     _dispatch13164_
                                     _default13165_
                                     _tab13175_
                                     (vector-length _tab13175_)
                                     _hashf13169_
                                     _eqf13170_))))))))))
          (let* ((_g1303713061_
                  (lambda (_g1303813057_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1303813057_)))
                 (_g1303613157_
                  (lambda (_g1303813065_)
                    (if (gx#stx-pair? _g1303813065_)
                        (let ((_e1304313068_ (gx#syntax-e _g1303813065_)))
                          (let ((_hd1304213072_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1304313068_)))
                                (_tl1304113075_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1304313068_))))
                            (if (gx#stx-pair? _tl1304113075_)
                                (let ((_e1304613078_
                                       (gx#syntax-e _tl1304113075_)))
                                  (let ((_hd1304513082_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1304613078_)))
                                        (_tl1304413085_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1304613078_))))
                                    (if (gx#stx-pair/null? _tl1304413085_)
                                        (let ((_g25506_
                                               (gx#syntax-split-splice
                                                _tl1304413085_
                                                '0)))
                                          (begin
                                            (let ((_g25507_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g25506_)
                                                         (##vector-length
                                                          _g25506_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g25507_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g25507_)))
                                            (let ((_target1304713088_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g25506_
                                                      0)))
                                                  (_tl1304913091_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g25506_
                                                      1))))
                                              (if (gx#stx-null? _tl1304913091_)
                                                  (letrec ((_loop1305013094_
                                                            (lambda (_hd1304813098_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause1305413101_)
                      (if (gx#stx-pair? _hd1304813098_)
                          (let ((_e1305113104_ (gx#syntax-e _hd1304813098_)))
                            (let ((_lp-hd1305213108_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1305113104_)))
                                  (_lp-tl1305313111_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1305113104_))))
                              (_loop1305013094_
                               _lp-tl1305313111_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd1305213108_
                                       _clause1305413101_)))))
                          (let ((_clause1305513114_
                                 (reverse _clause1305413101_)))
                            ((lambda (_L13118_ _L13120_)
                               (let ((_g25508_
                                      (_parse-clauses13011_
                                       _L13120_
                                       (foldr (lambda (_g1313813141_
                                                       _g1313913144_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g1313813141_
                                                        _g1313913144_)))
                                              '()
                                              _L13118_))))
                                 (begin
                                   (let ((_g25509_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g25508_)
                                                (##vector-length _g25508_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g25509_ 3)))
                                         (error "Context expects 3 values"
                                                _g25509_)))
                                   (let ((_datums13147_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g25508_ 0)))
                                         (_dispatch13149_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g25508_ 1)))
                                         (_default13150_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g25508_ 2))))
                                     (let ((_datum-count13152_
                                            (_count-datums13014_
                                             _datums13147_)))
                                       (if (< _datum-count13152_ '6)
                                           (_generate-simple-case13019_
                                            _L13120_
                                            _datums13147_
                                            _dispatch13149_
                                            _default13150_)
                                           (if (_char-datums?13016_
                                                _datums13147_)
                                               (_generate-char-dispatch13028_
                                                _L13120_
                                                _datums13147_
                                                _dispatch13149_
                                                _default13150_)
                                               (if (_fixnum-datums?13017_
                                                    _datums13147_)
                                                   (_generate-fixnum-dispatch13033_
                                                    _L13120_
                                                    _datums13147_
                                                    _dispatch13149_
                                                    _default13150_)
                                                   (if (< _datum-count13152_
                                                          '12)
                                                       (_generate-simple-case13019_
                                                        _L13120_
                                                        _datums13147_
                                                        _dispatch13149_
                                                        _default13150_)
                                                       (if (_symbolic-datums?13015_
                                                            _datums13147_)
                                                           (_generate-symbolic-dispatch13023_
                                                            _L13120_
                                                            _datums13147_
                                                            _dispatch13149_
                                                            _default13150_)
                                                           (_generate-generic-dispatch13035_
                                                            _L13120_
                                                            _datums13147_
                                                            _dispatch13149_
                                                            _default13150_)))))))))))
                             _clause1305513114_
                             _hd1304513082_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1305013094_
                                                     _target1304713088_
                                                     '()))
                                                  (_g1303713061_
                                                   _g1303813065_)))))
                                        (_g1303713061_ _g1303813065_))))
                                (_g1303713061_ _g1303813065_))))
                        (_g1303713061_ _g1303813065_)))))
            (_g1303613157_ _stx13008_)))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#~case-test|
      (lambda (_stx16059_)
        (let* ((_g1606216080_
                (lambda (_g1606316076_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1606316076_)))
               (_g1606116146_
                (lambda (_g1606316084_)
                  (if (gx#stx-pair? _g1606316084_)
                      (let ((_e1606816087_ (gx#syntax-e _g1606316084_)))
                        (let ((_hd1606716091_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1606816087_)))
                              (_tl1606616094_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1606816087_))))
                          (if (gx#stx-pair? _tl1606616094_)
                              (let ((_e1607116097_
                                     (gx#syntax-e _tl1606616094_)))
                                (let ((_hd1607016101_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1607116097_)))
                                      (_tl1606916104_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1607116097_))))
                                  (if (gx#stx-pair? _tl1606916104_)
                                      (let ((_e1607416107_
                                             (gx#syntax-e _tl1606916104_)))
                                        (let ((_hd1607316111_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1607416107_)))
                                              (_tl1607216114_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1607416107_))))
                                          (if (gx#stx-null? _tl1607216114_)
                                              ((lambda (_L16117_ _L16119_)
                                                 (let ((_datum-e16135_
                                                        (gx#stx-e _L16119_)))
                                                   (if (or (let ()
                                                             (declare
                                                               (not safe))
                                                             (symbol? _datum-e16135_))
                                                           (keyword?
                                                            _datum-e16135_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (immediate?
                                                              _datum-e16135_)))
                                                       (let ((__tmp25527
                                                              (gx#datum->syntax
                                                               '#f
                                                               'eq?))
                                                             (__tmp25522
                                                              (let ((__tmp25524
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp25526 (gx#datum->syntax '#f 'quote))
                                   (__tmp25525
                                    (let ()
                                      (declare (not safe))
                                      (cons _L16119_ '()))))
                               (declare (not safe))
                               (cons __tmp25526 __tmp25525)))
                            (__tmp25523
                             (let ()
                               (declare (not safe))
                               (cons _L16117_ '()))))
                        (declare (not safe))
                        (cons __tmp25524 __tmp25523))))
                 (declare (not safe))
                 (cons __tmp25527 __tmp25522))
               (if (let () (declare (not safe)) (number? _datum-e16135_))
                   (let ((__tmp25521 (gx#datum->syntax '#f 'eqv?))
                         (__tmp25516
                          (let ((__tmp25518
                                 (let ((__tmp25520
                                        (gx#datum->syntax '#f 'quote))
                                       (__tmp25519
                                        (let ()
                                          (declare (not safe))
                                          (cons _L16119_ '()))))
                                   (declare (not safe))
                                   (cons __tmp25520 __tmp25519)))
                                (__tmp25517
                                 (let ()
                                   (declare (not safe))
                                   (cons _L16117_ '()))))
                            (declare (not safe))
                            (cons __tmp25518 __tmp25517))))
                     (declare (not safe))
                     (cons __tmp25521 __tmp25516))
                   (let ((__tmp25515 (gx#datum->syntax '#f 'equal?))
                         (__tmp25510
                          (let ((__tmp25512
                                 (let ((__tmp25514
                                        (gx#datum->syntax '#f 'quote))
                                       (__tmp25513
                                        (let ()
                                          (declare (not safe))
                                          (cons _L16119_ '()))))
                                   (declare (not safe))
                                   (cons __tmp25514 __tmp25513)))
                                (__tmp25511
                                 (let ()
                                   (declare (not safe))
                                   (cons _L16117_ '()))))
                            (declare (not safe))
                            (cons __tmp25512 __tmp25511))))
                     (declare (not safe))
                     (cons __tmp25515 __tmp25510))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd1607316111_
                                               _hd1607016101_)
                                              (_g1606216080_ _g1606316084_))))
                                      (_g1606216080_ _g1606316084_))))
                              (_g1606216080_ _g1606316084_))))
                      (_g1606216080_ _g1606316084_)))))
          (_g1606116146_ _stx16059_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#~case-dispatch|
      (lambda (_$stx16150_)
        (let* ((_g1615416178_
                (lambda (_g1615516174_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1615516174_)))
               (_g1615316263_
                (lambda (_g1615516182_)
                  (if (gx#stx-pair? _g1615516182_)
                      (let ((_e1616016185_ (gx#syntax-e _g1615516182_)))
                        (let ((_hd1615916189_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1616016185_)))
                              (_tl1615816192_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1616016185_))))
                          (if (gx#stx-pair? _tl1615816192_)
                              (let ((_e1616316195_
                                     (gx#syntax-e _tl1615816192_)))
                                (let ((_hd1616216199_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1616316195_)))
                                      (_tl1616116202_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1616316195_))))
                                  (if (gx#stx-pair/null? _tl1616116202_)
                                      (let ((_g25528_
                                             (gx#syntax-split-splice
                                              _tl1616116202_
                                              '0)))
                                        (begin
                                          (let ((_g25529_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g25528_)
                                                       (##vector-length
                                                        _g25528_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g25529_ 2)))
                                                (error "Context expects 2 values"
                                                       _g25529_)))
                                          (let ((_target1616416205_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25528_ 0)))
                                                (_tl1616616208_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25528_ 1))))
                                            (if (gx#stx-null? _tl1616616208_)
                                                (letrec ((_loop1616716211_
                                                          (lambda (_hd1616516215_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _K1617116218_)
                    (if (gx#stx-pair? _hd1616516215_)
                        (let ((_e1616816221_ (gx#syntax-e _hd1616516215_)))
                          (let ((_lp-hd1616916225_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1616816221_)))
                                (_lp-tl1617016228_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1616816221_))))
                            (_loop1616716211_
                             _lp-tl1617016228_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1616916225_ _K1617116218_)))))
                        (let ((_K1617216231_ (reverse _K1617116218_)))
                          ((lambda (_L16235_ _L16237_)
                             (let ((__tmp25533
                                    (gx#datum->syntax '#f '~case-dispatch*))
                                   (__tmp25530
                                    (let ((__tmp25531
                                           (let ((__tmp25532
                                                  (foldr (lambda (_g1625416257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1625516260_)
                   (let ()
                     (declare (not safe))
                     (cons _g1625416257_ _g1625516260_)))
                 '()
                 _L16235_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (cons _L16237_ __tmp25532))))
                                      (declare (not safe))
                                      (cons '0 __tmp25531))))
                               (declare (not safe))
                               (cons __tmp25533 __tmp25530)))
                           _K1617216231_
                           _hd1616216199_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1616716211_
                                                   _target1616416205_
                                                   '()))
                                                (_g1615416178_
                                                 _g1615516182_)))))
                                      (_g1615416178_ _g1615516182_))))
                              (_g1615416178_ _g1615516182_))))
                      (_g1615416178_ _g1615516182_)))))
          (_g1615316263_ _$stx16150_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#~case-dispatch*|
      (lambda (_stx16268_)
        (let* ((___stx2327323274_ _stx16268_)
               (_g1627516371_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2327323274_))))
          (let ((___kont2327623277_
                 (lambda (_L16848_ _L16850_)
                   (let ((__tmp25535 (gx#datum->syntax '#f 'quote))
                         (__tmp25534
                          (let () (declare (not safe)) (cons '#!void '()))))
                     (declare (not safe))
                     (cons __tmp25535 __tmp25534))))
                (___kont2327823279_
                 (lambda (_L16790_ _L16792_ _L16793_) _L16790_))
                (___kont2328023281_
                 (lambda (_L16687_ _L16689_ _L16690_ _L16691_)
                   (let* ((_g1671216720_
                           (lambda (_g1671316716_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g1671316716_)))
                          (_g1671116739_
                           (lambda (_g1671316724_)
                             ((lambda (_L16727_)
                                (let ()
                                  (let ((__tmp25543 (gx#datum->syntax '#f 'if))
                                        (__tmp25536
                                         (let ((__tmp25539
                                                (let ((__tmp25542
                                                       (gx#datum->syntax
                                                        '#f
                                                        '##fx=))
                                                      (__tmp25540
                                                       (let ((__tmp25541
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L16727_ '()))))
                 (declare (not safe))
                 (cons _L16690_ __tmp25541))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25542
                                                        __tmp25540)))
                                               (__tmp25537
                                                (let ((__tmp25538
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L16687_ '()))))
                                                  (declare (not safe))
                                                  (cons _L16689_ __tmp25538))))
                                           (declare (not safe))
                                           (cons __tmp25539 __tmp25537))))
                                    (declare (not safe))
                                    (cons __tmp25543 __tmp25536))))
                              _g1671316724_))))
                     (_g1671116739_ (gx#stx-e _L16691_)))))
                (___kont2328223283_
                 (lambda (_L16537_ _L16539_ _L16540_ _L16541_ _L16542_)
                   (let* ((_g1656616581_
                           (lambda (_g1656716577_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g1656716577_)))
                          (_g1656516626_
                           (lambda (_g1656716585_)
                             (if (gx#stx-pair? _g1656716585_)
                                 (let ((_e1657216588_
                                        (gx#syntax-e _g1656716585_)))
                                   (let ((_hd1657116592_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e1657216588_)))
                                         (_tl1657016595_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e1657216588_))))
                                     (if (gx#stx-pair? _tl1657016595_)
                                         (let ((_e1657516598_
                                                (gx#syntax-e _tl1657016595_)))
                                           (let ((_hd1657416602_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1657516598_)))
                                                 (_tl1657316605_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1657516598_))))
                                             (if (gx#stx-null? _tl1657316605_)
                                                 ((lambda (_L16608_ _L16610_)
                                                    (let ()
                                                      (let ((__tmp25560
                                                             (gx#datum->syntax
                                                              '#f
                                                              'if))
                                                            (__tmp25544
                                                             (let ((__tmp25556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp25559 (gx#datum->syntax '#f '##fx=))
                                  (__tmp25557
                                   (let ((__tmp25558
                                          (let ()
                                            (declare (not safe))
                                            (cons _L16610_ '()))))
                                     (declare (not safe))
                                     (cons _L16541_ __tmp25558))))
                              (declare (not safe))
                              (cons __tmp25559 __tmp25557)))
                           (__tmp25545
                            (let ((__tmp25546
                                   (let ((__tmp25547
                                          (let ((__tmp25555
                                                 (gx#datum->syntax '#f 'if))
                                                (__tmp25548
                                                 (let ((__tmp25551
                                                        (let ((__tmp25554
                                                               (gx#datum->syntax
                                                                '#f
                                                                '##fx=))
                                                              (__tmp25552
                                                               (let ((__tmp25553
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _L16608_ '()))))
                         (declare (not safe))
                         (cons _L16541_ __tmp25553))))
                  (declare (not safe))
                  (cons __tmp25554 __tmp25552)))
               (__tmp25549
                (let ((__tmp25550
                       (let () (declare (not safe)) (cons _L16537_ '()))))
                  (declare (not safe))
                  (cons _L16539_ __tmp25550))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25551
                                                         __tmp25549))))
                                            (declare (not safe))
                                            (cons __tmp25555 __tmp25548))))
                                     (declare (not safe))
                                     (cons __tmp25547 '()))))
                              (declare (not safe))
                              (cons _L16540_ __tmp25546))))
                       (declare (not safe))
                       (cons __tmp25556 __tmp25545))))
                (declare (not safe))
                (cons __tmp25560 __tmp25544))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1657416602_
                                                  _hd1657116592_)
                                                 (_g1656616581_
                                                  _g1656716585_))))
                                         (_g1656616581_ _g1656716585_))))
                                 (_g1656616581_ _g1656716585_)))))
                     (_g1656516626_
                      (list (gx#stx-e _L16542_)
                            (let ((__tmp25561 (gx#stx-e _L16542_)))
                              (declare (not safe))
                              (fx+ __tmp25561 '1)))))))
                (___kont2328423285_
                 (lambda (_L16438_ _L16440_ _L16441_)
                   (let ((__tmp25565
                          (gx#datum->syntax '#f '~case-dispatch-bsearch))
                         (__tmp25562
                          (let ((__tmp25563
                                 (let ((__tmp25564
                                        (foldr (lambda (_g1646116464_
                                                        _g1646216467_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g1646116464_
                                                         _g1646216467_)))
                                               '()
                                               _L16438_)))
                                   (declare (not safe))
                                   (cons _L16440_ __tmp25564))))
                            (declare (not safe))
                            (cons _L16441_ __tmp25563))))
                     (declare (not safe))
                     (cons __tmp25565 __tmp25562)))))
            (let ((___match2343023431_
                   (lambda (_e1635016378_
                            _hd1634916382_
                            _tl1634816385_
                            _e1635316388_
                            _hd1635216392_
                            _tl1635116395_
                            _e1635616398_
                            _hd1635516402_
                            _tl1635416405_
                            ___splice2328623287_
                            _target1635716408_
                            _tl1635916411_)
                     (letrec ((_loop1636016414_
                               (lambda (_hd1635816418_ _K1636416421_)
                                 (if (gx#stx-pair? _hd1635816418_)
                                     (let ((_e1636116424_
                                            (gx#syntax-e _hd1635816418_)))
                                       (let ((_lp-tl1636316431_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e1636116424_)))
                                             (_lp-hd1636216428_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e1636116424_))))
                                         (_loop1636016414_
                                          _lp-tl1636316431_
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd1636216428_
                                                  _K1636416421_)))))
                                     (let ((_K1636516434_
                                            (reverse _K1636416421_)))
                                       (___kont2328423285_
                                        _K1636516434_
                                        _hd1635516402_
                                        _hd1635216392_))))))
                       (_loop1636016414_ _target1635716408_ '())))))
              (if (gx#stx-pair? ___stx2327323274_)
                  (let ((_e1628116818_ (gx#syntax-e ___stx2327323274_)))
                    (let ((_tl1627916825_
                           (let () (declare (not safe)) (##cdr _e1628116818_)))
                          (_hd1628016822_
                           (let ()
                             (declare (not safe))
                             (##car _e1628116818_))))
                      (if (gx#stx-pair? _tl1627916825_)
                          (let ((_e1628416828_ (gx#syntax-e _tl1627916825_)))
                            (let ((_tl1628216835_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1628416828_)))
                                  (_hd1628316832_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1628416828_))))
                              (if (gx#stx-pair? _tl1628216835_)
                                  (let ((_e1628716838_
                                         (gx#syntax-e _tl1628216835_)))
                                    (let ((_tl1628516845_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1628716838_)))
                                          (_hd1628616842_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1628716838_))))
                                      (if (gx#stx-null? _tl1628516845_)
                                          (___kont2327623277_
                                           _hd1628616842_
                                           _hd1628316832_)
                                          (if (gx#stx-pair? _tl1628516845_)
                                              (let ((_e1630216780_
                                                     (gx#syntax-e
                                                      _tl1628516845_)))
                                                (let ((_tl1630016787_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1630216780_)))
                                                      (_hd1630116784_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1630216780_))))
                                                  (if (gx#stx-null?
                                                       _tl1630016787_)
                                                      (___kont2327823279_
                                                       _hd1630116784_
                                                       _hd1628616842_
                                                       _hd1628316832_)
                                                      (if (gx#stx-pair?
                                                           _tl1630016787_)
                                                          (let ((_e1632116677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1630016787_)))
                    (let ((_tl1631916684_
                           (let () (declare (not safe)) (##cdr _e1632116677_)))
                          (_hd1632016681_
                           (let ()
                             (declare (not safe))
                             (##car _e1632116677_))))
                      (if (gx#stx-null? _tl1631916684_)
                          (___kont2328023281_
                           _hd1632016681_
                           _hd1630116784_
                           _hd1628616842_
                           _hd1628316832_)
                          (if (gx#stx-pair? _tl1631916684_)
                              (let ((_e1634416527_
                                     (gx#syntax-e _tl1631916684_)))
                                (let ((_tl1634216534_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1634416527_)))
                                      (_hd1634316531_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1634416527_))))
                                  (if (gx#stx-null? _tl1634216534_)
                                      (___kont2328223283_
                                       _hd1634316531_
                                       _hd1632016681_
                                       _hd1630116784_
                                       _hd1628616842_
                                       _hd1628316832_)
                                      (if (gx#stx-pair/null? _tl1628516845_)
                                          (let ((___splice2328623287_
                                                 (gx#syntax-split-splice
                                                  _tl1628516845_
                                                  '0)))
                                            (let ((_tl1635916411_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2328623287_
                                                      '1)))
                                                  (_target1635716408_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2328623287_
                                                      '0))))
                                              (if (gx#stx-null? _tl1635916411_)
                                                  (___match2343023431_
                                                   _e1628116818_
                                                   _hd1628016822_
                                                   _tl1627916825_
                                                   _e1628416828_
                                                   _hd1628316832_
                                                   _tl1628216835_
                                                   _e1628716838_
                                                   _hd1628616842_
                                                   _tl1628516845_
                                                   ___splice2328623287_
                                                   _target1635716408_
                                                   _tl1635916411_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1627516371_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1627516371_))))))
                              (if (gx#stx-pair/null? _tl1628516845_)
                                  (let ((___splice2328623287_
                                         (gx#syntax-split-splice
                                          _tl1628516845_
                                          '0)))
                                    (let ((_tl1635916411_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2328623287_
                                              '1)))
                                          (_target1635716408_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2328623287_
                                              '0))))
                                      (if (gx#stx-null? _tl1635916411_)
                                          (___match2343023431_
                                           _e1628116818_
                                           _hd1628016822_
                                           _tl1627916825_
                                           _e1628416828_
                                           _hd1628316832_
                                           _tl1628216835_
                                           _e1628716838_
                                           _hd1628616842_
                                           _tl1628516845_
                                           ___splice2328623287_
                                           _target1635716408_
                                           _tl1635916411_)
                                          (let ()
                                            (declare (not safe))
                                            (_g1627516371_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1627516371_)))))))
                  (if (gx#stx-pair/null? _tl1628516845_)
                      (let ((___splice2328623287_
                             (gx#syntax-split-splice _tl1628516845_ '0)))
                        (let ((_tl1635916411_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice2328623287_ '1)))
                              (_target1635716408_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice2328623287_ '0))))
                          (if (gx#stx-null? _tl1635916411_)
                              (___match2343023431_
                               _e1628116818_
                               _hd1628016822_
                               _tl1627916825_
                               _e1628416828_
                               _hd1628316832_
                               _tl1628216835_
                               _e1628716838_
                               _hd1628616842_
                               _tl1628516845_
                               ___splice2328623287_
                               _target1635716408_
                               _tl1635916411_)
                              (let () (declare (not safe)) (_g1627516371_)))))
                      (let () (declare (not safe)) (_g1627516371_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl1628516845_)
                                                  (let ((___splice2328623287_
                                                         (gx#syntax-split-splice
                                                          _tl1628516845_
                                                          '0)))
                                                    (let ((_tl1635916411_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice2328623287_
                                                              '1)))
                                                          (_target1635716408_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice2328623287_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl1635916411_)
                                                          (___match2343023431_
                                                           _e1628116818_
                                                           _hd1628016822_
                                                           _tl1627916825_
                                                           _e1628416828_
                                                           _hd1628316832_
                                                           _tl1628216835_
                                                           _e1628716838_
                                                           _hd1628616842_
                                                           _tl1628516845_
                                                           ___splice2328623287_
                                                           _target1635716408_
                                                           _tl1635916411_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g1627516371_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1627516371_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1627516371_)))))
                          (let () (declare (not safe)) (_g1627516371_)))))
                  (let () (declare (not safe)) (_g1627516371_))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#~case-dispatch-bsearch|
      (lambda (_stx16870_)
        (letrec ((_split16873_
                  (lambda (_lst17234_ _mid17236_)
                    (let _lp17238_ ((_i17241_ '0)
                                    (_rest17243_ _lst17234_)
                                    (_left17244_ '()))
                      (if (fx< _i17241_ _mid17236_)
                          (_lp17238_
                           (let () (declare (not safe)) (fx+ _i17241_ '1))
                           (cdr _rest17243_)
                           (let ((__tmp25566 (car _rest17243_)))
                             (declare (not safe))
                             (cons __tmp25566 _left17244_)))
                          (values (reverse _left17244_) _rest17243_))))))
          (let* ((_g1687616904_
                  (lambda (_g1687716900_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1687716900_)))
                 (_g1687517230_
                  (lambda (_g1687716908_)
                    (if (gx#stx-pair? _g1687716908_)
                        (let ((_e1688316911_ (gx#syntax-e _g1687716908_)))
                          (let ((_hd1688216915_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1688316911_)))
                                (_tl1688116918_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1688316911_))))
                            (if (gx#stx-pair? _tl1688116918_)
                                (let ((_e1688616921_
                                       (gx#syntax-e _tl1688116918_)))
                                  (let ((_hd1688516925_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1688616921_)))
                                        (_tl1688416928_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1688616921_))))
                                    (if (gx#stx-pair? _tl1688416928_)
                                        (let ((_e1688916931_
                                               (gx#syntax-e _tl1688416928_)))
                                          (let ((_hd1688816935_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1688916931_)))
                                                (_tl1688716938_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1688916931_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1688716938_)
                                                (let ((_g25567_
                                                       (gx#syntax-split-splice
                                                        _tl1688716938_
                                                        '0)))
                                                  (begin
                                                    (let ((_g25568_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g25567_)
                         (##vector-length _g25567_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g25568_ 2)))
                  (error "Context expects 2 values" _g25568_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1689016941_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g25567_
                                                              0)))
                                                          (_tl1689216944_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g25567_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1689216944_)
                                                          (letrec ((_loop1689316947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1689116951_ _K1689716954_)
                              (if (gx#stx-pair? _hd1689116951_)
                                  (let ((_e1689416957_
                                         (gx#syntax-e _hd1689116951_)))
                                    (let ((_lp-hd1689516961_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1689416957_)))
                                          (_lp-tl1689616964_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1689416957_))))
                                      (_loop1689316947_
                                       _lp-tl1689616964_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1689516961_
                                               _K1689716954_)))))
                                  (let ((_K1689816967_
                                         (reverse _K1689716954_)))
                                    ((lambda (_L16971_ _L16973_ _L16974_)
                                       (let* ((_len17004_
                                               (length (foldr (lambda (_g1699516998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1699617001_)
                        (let ()
                          (declare (not safe))
                          (cons _g1699516998_ _g1699617001_)))
                      '()
                      _L16971_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_mid17007_
                                               (quotient _len17004_ '2))
                                              (_g25569_
                                               (_split16873_
                                                (foldr (lambda (_g1700917012_
                                                                _g1701017015_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g1700917012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1701017015_)))
               '()
               _L16971_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _mid17007_)))
                                         (begin
                                           (let ((_g25570_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g25569_)
                                                        (##vector-length
                                                         _g25569_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g25570_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g25570_)))
                                           (let ((_left17018_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g25569_ 0)))
                                                 (_right17020_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g25569_
                                                     1))))
                                             (let ()
                                               (let* ((_g1702417065_
                                                       (lambda (_g1702517061_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g1702517061_)))
                                                      (_g1702317226_
                                                       (lambda (_g1702517069_)
                                                         (if (gx#stx-pair?
                                                              _g1702517069_)
                                                             (let ((_e1703217072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1702517069_)))
                       (let ((_hd1703117076_
                              (let ()
                                (declare (not safe))
                                (##car _e1703217072_)))
                             (_tl1703017079_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1703217072_))))
                         (if (gx#stx-pair? _tl1703017079_)
                             (let ((_e1703517082_
                                    (gx#syntax-e _tl1703017079_)))
                               (let ((_hd1703417086_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1703517082_)))
                                     (_tl1703317089_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1703517082_))))
                                 (if (gx#stx-pair/null? _hd1703417086_)
                                     (let ((_g25571_
                                            (gx#syntax-split-splice
                                             _hd1703417086_
                                             '0)))
                                       (begin
                                         (let ((_g25572_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g25571_)
                                                      (##vector-length
                                                       _g25571_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g25572_ 2)))
                                               (error "Context expects 2 values"
                                                      _g25572_)))
                                         (let ((_target1703617092_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g25571_ 0)))
                                               (_tl1703817095_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g25571_ 1))))
                                           (if (gx#stx-null? _tl1703817095_)
                                               (letrec ((_loop1703917098_
                                                         (lambda (_hd1703717102_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K-left1704317105_)
                   (if (gx#stx-pair? _hd1703717102_)
                       (let ((_e1704017108_ (gx#syntax-e _hd1703717102_)))
                         (let ((_lp-hd1704117112_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1704017108_)))
                               (_lp-tl1704217115_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1704017108_))))
                           (_loop1703917098_
                            _lp-tl1704217115_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd1704117112_ _K-left1704317105_)))))
                       (let ((_K-left1704417118_ (reverse _K-left1704317105_)))
                         (if (gx#stx-pair? _tl1703317089_)
                             (let ((_e1704717122_
                                    (gx#syntax-e _tl1703317089_)))
                               (let ((_hd1704617126_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1704717122_)))
                                     (_tl1704517129_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1704717122_))))
                                 (if (gx#stx-pair/null? _hd1704617126_)
                                     (let ((_g25573_
                                            (gx#syntax-split-splice
                                             _hd1704617126_
                                             '0)))
                                       (begin
                                         (let ((_g25574_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g25573_)
                                                      (##vector-length
                                                       _g25573_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g25574_ 2)))
                                               (error "Context expects 2 values"
                                                      _g25574_)))
                                         (let ((_target1704817132_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g25573_ 0)))
                                               (_tl1705017135_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g25573_ 1))))
                                           (if (gx#stx-null? _tl1705017135_)
                                               (letrec ((_loop1705117138_
                                                         (lambda (_hd1704917142_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K-right1705517145_)
                   (if (gx#stx-pair? _hd1704917142_)
                       (let ((_e1705217148_ (gx#syntax-e _hd1704917142_)))
                         (let ((_lp-hd1705317152_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1705217148_)))
                               (_lp-tl1705417155_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1705217148_))))
                           (_loop1705117138_
                            _lp-tl1705417155_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd1705317152_ _K-right1705517145_)))))
                       (let ((_K-right1705617158_
                              (reverse _K-right1705517145_)))
                         (if (gx#stx-pair? _tl1704517129_)
                             (let ((_e1705917162_
                                    (gx#syntax-e _tl1704517129_)))
                               (let ((_hd1705817166_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1705917162_)))
                                     (_tl1705717169_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1705917162_))))
                                 (if (gx#stx-null? _tl1705717169_)
                                     ((lambda (_L17172_
                                               _L17174_
                                               _L17175_
                                               _L17176_)
                                        (let ()
                                          (let ((__tmp25592
                                                 (gx#datum->syntax '#f 'if))
                                                (__tmp25575
                                                 (let ((__tmp25588
                                                        (let ((__tmp25591
                                                               (gx#datum->syntax
                                                                '#f
                                                                '##fx<))
                                                              (__tmp25589
                                                               (let ((__tmp25590
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _L17172_ '()))))
                         (declare (not safe))
                         (cons _L16973_ __tmp25590))))
                  (declare (not safe))
                  (cons __tmp25591 __tmp25589)))
               (__tmp25576
                (let ((__tmp25583
                       (let ((__tmp25587
                              (gx#datum->syntax '#f '~case-dispatch*))
                             (__tmp25584
                              (let ((__tmp25585
                                     (let ((__tmp25586
                                            (foldr (lambda (_g1721117214_
                                                            _g1721217217_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1721117214_
                                                             _g1721217217_)))
                                                   '()
                                                   _L17175_)))
                                       (declare (not safe))
                                       (cons _L16973_ __tmp25586))))
                                (declare (not safe))
                                (cons _L16974_ __tmp25585))))
                         (declare (not safe))
                         (cons __tmp25587 __tmp25584)))
                      (__tmp25577
                       (let ((__tmp25578
                              (let ((__tmp25582
                                     (gx#datum->syntax '#f '~case-dispatch*))
                                    (__tmp25579
                                     (let ((__tmp25580
                                            (let ((__tmp25581
                                                   (foldr (lambda (_g1720917220_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1721017223_)
                    (let ()
                      (declare (not safe))
                      (cons _g1720917220_ _g1721017223_)))
                  '()
                  _L17174_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (cons _L16973_ __tmp25581))))
                                       (declare (not safe))
                                       (cons _L17172_ __tmp25580))))
                                (declare (not safe))
                                (cons __tmp25582 __tmp25579))))
                         (declare (not safe))
                         (cons __tmp25578 '()))))
                  (declare (not safe))
                  (cons __tmp25583 __tmp25577))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25588
                                                         __tmp25576))))
                                            (declare (not safe))
                                            (cons __tmp25592 __tmp25575))))
                                      _hd1705817166_
                                      _K-right1705617158_
                                      _K-left1704417118_
                                      _hd1703117076_)
                                     (_g1702417065_ _g1702517069_))))
                             (_g1702417065_ _g1702517069_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1705117138_
                                                  _target1704817132_
                                                  '()))
                                               (_g1702417065_
                                                _g1702517069_)))))
                                     (_g1702417065_ _g1702517069_))))
                             (_g1702417065_ _g1702517069_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1703917098_
                                                  _target1703617092_
                                                  '()))
                                               (_g1702417065_
                                                _g1702517069_)))))
                                     (_g1702417065_ _g1702517069_))))
                             (_g1702417065_ _g1702517069_))))
                     (_g1702417065_ _g1702517069_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1702317226_
                                                  (list _mid17007_
                                                        _left17018_
                                                        _right17020_
                                                        (fx+ _mid17007_
                                                             (gx#stx-e
                                                              _L16974_))))))))))
                                     _K1689816967_
                                     _hd1688816935_
                                     _hd1688516925_))))))
                    (_loop1689316947_ _target1689016941_ '()))
                  (_g1687616904_ _g1687716908_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1687616904_
                                                 _g1687716908_))))
                                        (_g1687616904_ _g1687716908_))))
                                (_g1687616904_ _g1687716908_))))
                        (_g1687616904_ _g1687716908_)))))
            (_g1687517230_ _stx16870_)))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#do|
      (lambda (_$stx17250_)
        (let* ((_g1725417325_
                (lambda (_g1725517321_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1725517321_)))
               (_g1725317614_
                (lambda (_g1725517329_)
                  (if (gx#stx-pair? _g1725517329_)
                      (let ((_e1726417332_ (gx#syntax-e _g1725517329_)))
                        (let ((_hd1726317336_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1726417332_)))
                              (_tl1726217339_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1726417332_))))
                          (if (gx#stx-pair? _tl1726217339_)
                              (let ((_e1726717342_
                                     (gx#syntax-e _tl1726217339_)))
                                (let ((_hd1726617346_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1726717342_)))
                                      (_tl1726517349_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1726717342_))))
                                  (if (gx#stx-pair/null? _hd1726617346_)
                                      (let ((_g25593_
                                             (gx#syntax-split-splice
                                              _hd1726617346_
                                              '0)))
                                        (begin
                                          (let ((_g25594_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g25593_)
                                                       (##vector-length
                                                        _g25593_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g25594_ 2)))
                                                (error "Context expects 2 values"
                                                       _g25594_)))
                                          (let ((_target1726817352_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25593_ 0)))
                                                (_tl1727017355_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25593_ 1))))
                                            (if (gx#stx-null? _tl1727017355_)
                                                (letrec ((_loop1727117358_
                                                          (lambda (_hd1726917362_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _step1727517365_
                           _init1727617367_
                           _var1727717369_)
                    (if (gx#stx-pair? _hd1726917362_)
                        (let ((_e1727217372_ (gx#syntax-e _hd1726917362_)))
                          (let ((_lp-hd1727317376_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1727217372_)))
                                (_lp-tl1727417379_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1727217372_))))
                            (if (gx#stx-pair? _lp-hd1727317376_)
                                (let ((_e1728317382_
                                       (gx#syntax-e _lp-hd1727317376_)))
                                  (let ((_hd1728217386_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1728317382_)))
                                        (_tl1728117389_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1728317382_))))
                                    (if (gx#stx-pair? _tl1728117389_)
                                        (let ((_e1728617392_
                                               (gx#syntax-e _tl1728117389_)))
                                          (let ((_hd1728517396_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1728617392_)))
                                                (_tl1728417399_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1728617392_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1728417399_)
                                                (let ((_g25626_
                                                       (gx#syntax-split-splice
                                                        _tl1728417399_
                                                        '0)))
                                                  (begin
                                                    (let ((_g25627_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g25626_)
                         (##vector-length _g25626_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g25627_ 2)))
                  (error "Context expects 2 values" _g25627_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1728717402_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g25626_
                                                              0)))
                                                          (_tl1728917405_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g25626_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1728917405_)
                                                          (letrec ((_loop1729017408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1728817412_ _step1729417415_)
                              (if (gx#stx-pair? _hd1728817412_)
                                  (let ((_e1729117418_
                                         (gx#syntax-e _hd1728817412_)))
                                    (let ((_lp-hd1729217422_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1729117418_)))
                                          (_lp-tl1729317425_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1729117418_))))
                                      (_loop1729017408_
                                       _lp-tl1729317425_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1729217422_
                                               _step1729417415_)))))
                                  (let ((_step1729517428_
                                         (reverse _step1729417415_)))
                                    (_loop1727117358_
                                     _lp-tl1727417379_
                                     (let ()
                                       (declare (not safe))
                                       (cons _step1729517428_
                                             _step1727517365_))
                                     (let ()
                                       (declare (not safe))
                                       (cons _hd1728517396_ _init1727617367_))
                                     (let ()
                                       (declare (not safe))
                                       (cons _hd1728217386_
                                             _var1727717369_))))))))
                    (_loop1729017408_ _target1728717402_ '()))
                  (_g1725417325_ _g1725517329_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1725417325_
                                                 _g1725517329_))))
                                        (_g1725417325_ _g1725517329_))))
                                (_g1725417325_ _g1725517329_))))
                        (let ((_step1727817432_ (reverse _step1727517365_))
                              (_init1727917435_ (reverse _init1727617367_))
                              (_var1728017437_ (reverse _var1727717369_)))
                          (if (gx#stx-pair? _tl1726517349_)
                              (let ((_e1729817440_
                                     (gx#syntax-e _tl1726517349_)))
                                (let ((_hd1729717444_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1729817440_)))
                                      (_tl1729617447_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1729817440_))))
                                  (if (gx#stx-pair? _hd1729717444_)
                                      (let ((_e1730117450_
                                             (gx#syntax-e _hd1729717444_)))
                                        (let ((_hd1730017454_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1730117450_)))
                                              (_tl1729917457_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1730117450_))))
                                          (if (gx#stx-pair/null?
                                               _tl1729917457_)
                                              (let ((_g25595_
                                                     (gx#syntax-split-splice
                                                      _tl1729917457_
                                                      '0)))
                                                (begin
                                                  (let ((_g25596_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g25595_)
                                                               (##vector-length
                                                                _g25595_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g25596_ 2)))
                (error "Context expects 2 values" _g25596_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1730217460_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g25595_
                                                            0)))
                                                        (_tl1730417463_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g25595_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl1730417463_)
                                                        (letrec ((_loop1730517466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1730317470_ _fini1730917473_)
                            (if (gx#stx-pair? _hd1730317470_)
                                (let ((_e1730617476_
                                       (gx#syntax-e _hd1730317470_)))
                                  (let ((_lp-hd1730717480_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1730617476_)))
                                        (_lp-tl1730817483_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1730617476_))))
                                    (_loop1730517466_
                                     _lp-tl1730817483_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd1730717480_
                                             _fini1730917473_)))))
                                (let ((_fini1731017486_
                                       (reverse _fini1730917473_)))
                                  (if (gx#stx-pair/null? _tl1729617447_)
                                      (let ((_g25597_
                                             (gx#syntax-split-splice
                                              _tl1729617447_
                                              '0)))
                                        (begin
                                          (let ((_g25598_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g25597_)
                                                       (##vector-length
                                                        _g25597_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g25598_ 2)))
                                                (error "Context expects 2 values"
                                                       _g25598_)))
                                          (let ((_target1731117490_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25597_ 0)))
                                                (_tl1731317493_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25597_ 1))))
                                            (if (gx#stx-null? _tl1731317493_)
                                                (letrec ((_loop1731417496_
                                                          (lambda (_hd1731217500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body1731817503_)
                    (if (gx#stx-pair? _hd1731217500_)
                        (let ((_e1731517506_ (gx#syntax-e _hd1731217500_)))
                          (let ((_lp-hd1731617510_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1731517506_)))
                                (_lp-tl1731717513_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1731517506_))))
                            (_loop1731417496_
                             _lp-tl1731717513_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1731617510_ _body1731817503_)))))
                        (let ((_body1731917516_ (reverse _body1731817503_)))
                          ((lambda (_L17520_
                                    _L17522_
                                    _L17523_
                                    _L17524_
                                    _L17525_
                                    _L17526_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_g1755917562_ _g1756017565_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g1755917562_
                                                   _g1756017565_)))
                                         '()
                                         _L17526_))
                                 (let ((__tmp25625 (gx#datum->syntax '#f 'let))
                                       (__tmp25599
                                        (let ((__tmp25624
                                               (gx#datum->syntax '#f '$loop))
                                              (__tmp25600
                                               (let ((__tmp25621
                                                      (begin
                                                        (gx#syntax-check-splice-targets
                                                         _L17525_
                                                         _L17526_)
                                                        (foldr (lambda (_g1757617580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1757717583_
                                _g1757817585_)
                         (let ((__tmp25622
                                (let ((__tmp25623
                                       (let ()
                                         (declare (not safe))
                                         (cons _g1757617580_ '()))))
                                  (declare (not safe))
                                  (cons _g1757717583_ __tmp25623))))
                           (declare (not safe))
                           (cons __tmp25622 _g1757817585_)))
                       '()
                       _L17525_
                       _L17526_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp25601
                                                      (let ((__tmp25602
                                                             (let ((__tmp25620
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'if))
                           (__tmp25603
                            (let ((__tmp25604
                                   (let ((__tmp25616
                                          (let ((__tmp25619
                                                 (gx#datum->syntax '#f 'begin))
                                                (__tmp25617
                                                 (let ((__tmp25618
                                                        (foldr (lambda (_g1757417588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1757517591_)
                         (let ()
                           (declare (not safe))
                           (cons _g1757417588_ _g1757517591_)))
                       '()
                       _L17522_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '#!void __tmp25618))))
                                            (declare (not safe))
                                            (cons __tmp25619 __tmp25617)))
                                         (__tmp25605
                                          (let ((__tmp25606
                                                 (let ((__tmp25615
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin))
                                                       (__tmp25607
                                                        (foldr (lambda (_g1756717594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1756817597_)
                         (let ()
                           (declare (not safe))
                           (cons _g1756717594_ _g1756817597_)))
                       (let ((__tmp25608
                              (let ((__tmp25614 (gx#datum->syntax '#f '$loop))
                                    (__tmp25609
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _L17524_
                                        _L17526_)
                                       (foldr (lambda (_g1756917600_
                                                       _g1757017603_
                                                       _g1757117605_)
                                                (let ((__tmp25610
                                                       (let ((__tmp25613
                                                              (gx#datum->syntax
                                                               '#f
                                                               'begin))
                                                             (__tmp25611
                                                              (let ((__tmp25612
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr (lambda (_g1757217608_ _g1757317611_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g1757217608_ _g1757317611_)))
                                    '()
                                    _g1756917600_)))
                        (declare (not safe))
                        (cons _g1757017603_ __tmp25612))))
                 (declare (not safe))
                 (cons __tmp25613 __tmp25611))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25610
                                                        _g1757117605_)))
                                              '()
                                              _L17524_
                                              _L17526_))))
                                (declare (not safe))
                                (cons __tmp25614 __tmp25609))))
                         (declare (not safe))
                         (cons __tmp25608 '()))
                       _L17520_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25615
                                                         __tmp25607))))
                                            (declare (not safe))
                                            (cons __tmp25606 '()))))
                                     (declare (not safe))
                                     (cons __tmp25616 __tmp25605))))
                              (declare (not safe))
                              (cons _L17523_ __tmp25604))))
                       (declare (not safe))
                       (cons __tmp25620 __tmp25603))))
                (declare (not safe))
                (cons __tmp25602 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25621
                                                       __tmp25601))))
                                          (declare (not safe))
                                          (cons __tmp25624 __tmp25600))))
                                   (declare (not safe))
                                   (cons __tmp25625 __tmp25599))
                                 (_g1725417325_ _g1725517329_)))
                           _body1731917516_
                           _fini1731017486_
                           _hd1730017454_
                           _step1727817432_
                           _init1727917435_
                           _var1728017437_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1731417496_
                                                   _target1731117490_
                                                   '()))
                                                (_g1725417325_
                                                 _g1725517329_)))))
                                      (_g1725417325_ _g1725517329_)))))))
                  (_loop1730517466_ _target1730217460_ '()))
                (_g1725417325_ _g1725517329_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1725417325_ _g1725517329_))))
                                      (_g1725417325_ _g1725517329_))))
                              (_g1725417325_ _g1725517329_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1727117358_
                                                   _target1726817352_
                                                   '()
                                                   '()
                                                   '()))
                                                (_g1725417325_
                                                 _g1725517329_)))))
                                      (_g1725417325_ _g1725517329_))))
                              (_g1725417325_ _g1725517329_))))
                      (_g1725417325_ _g1725517329_)))))
          (_g1725317614_ _$stx17250_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#do-while|
      (lambda (_$stx17622_)
        (let* ((_g1762617649_
                (lambda (_g1762717645_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1762717645_)))
               (_g1762517720_
                (lambda (_g1762717653_)
                  (if (gx#stx-pair? _g1762717653_)
                      (let ((_e1763417656_ (gx#syntax-e _g1762717653_)))
                        (let ((_hd1763317660_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1763417656_)))
                              (_tl1763217663_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1763417656_))))
                          (if (gx#stx-pair? _tl1763217663_)
                              (let ((_e1763717666_
                                     (gx#syntax-e _tl1763217663_)))
                                (let ((_hd1763617670_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1763717666_)))
                                      (_tl1763517673_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1763717666_))))
                                  (if (gx#stx-pair? _tl1763517673_)
                                      (let ((_e1764017676_
                                             (gx#syntax-e _tl1763517673_)))
                                        (let ((_hd1763917680_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1764017676_)))
                                              (_tl1763817683_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1764017676_))))
                                          (if (gx#stx-pair? _hd1763917680_)
                                              (let ((_e1764317686_
                                                     (gx#syntax-e
                                                      _hd1763917680_)))
                                                (let ((_hd1764217690_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1764317686_)))
                                                      (_tl1764117693_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1764317686_))))
                                                  ((lambda (_L17696_
                                                            _L17698_
                                                            _L17699_
                                                            _L17700_)
                                                     (let ((__tmp25634
                                                            (gx#datum->syntax
                                                             '#f
                                                             'do))
                                                           (__tmp25628
                                                            (let ((__tmp25629
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp25630
                                  (let ((__tmp25631
                                         (let ((__tmp25633
                                                (gx#datum->syntax '#f 'not))
                                               (__tmp25632
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L17699_ '()))))
                                           (declare (not safe))
                                           (cons __tmp25633 __tmp25632))))
                                    (declare (not safe))
                                    (cons __tmp25631 _L17698_))))
                             (declare (not safe))
                             (cons __tmp25630 _L17696_))))
                      (declare (not safe))
                      (cons _L17700_ __tmp25629))))
               (declare (not safe))
               (cons __tmp25634 __tmp25628)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl1763817683_
                                                   _tl1764117693_
                                                   _hd1764217690_
                                                   _hd1763617670_)))
                                              (_g1762617649_ _g1762717653_))))
                                      (_g1762617649_ _g1762717653_))))
                              (_g1762617649_ _g1762717653_))))
                      (_g1762617649_ _g1762717653_)))))
          (_g1762517720_ _$stx17622_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#begin0|
      (lambda (_$stx17724_)
        (let* ((___stx2343323434_ _$stx17724_)
               (_g1772917760_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2343323434_))))
          (let ((___kont2343623437_ (lambda (_L17872_) _L17872_))
                (___kont2343823439_
                 (lambda (_L17817_ _L17819_)
                   (let ((__tmp25648 (gx#datum->syntax '#f 'let))
                         (__tmp25635
                          (let ((__tmp25645
                                 (let ((__tmp25647 (gx#datum->syntax '#f '$r))
                                       (__tmp25646
                                        (let ()
                                          (declare (not safe))
                                          (cons _L17819_ '()))))
                                   (declare (not safe))
                                   (cons __tmp25647 __tmp25646)))
                                (__tmp25636
                                 (let ((__tmp25639
                                        (let ((__tmp25644
                                               (gx#datum->syntax
                                                '#f
                                                '%#expression))
                                              (__tmp25640
                                               (let ((__tmp25641
                                                      (let ((__tmp25643
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp25642
                                                             (foldr (lambda (_g1783617839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1783717842_)
                              (let ()
                                (declare (not safe))
                                (cons _g1783617839_ _g1783717842_)))
                            '()
                            _L17817_)))
                (declare (not safe))
                (cons __tmp25643 __tmp25642))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25641 '()))))
                                          (declare (not safe))
                                          (cons __tmp25644 __tmp25640)))
                                       (__tmp25637
                                        (let ((__tmp25638
                                               (gx#datum->syntax '#f '$r)))
                                          (declare (not safe))
                                          (cons __tmp25638 '()))))
                                   (declare (not safe))
                                   (cons __tmp25639 __tmp25637))))
                            (declare (not safe))
                            (cons __tmp25645 __tmp25636))))
                     (declare (not safe))
                     (cons __tmp25648 __tmp25635)))))
            (let ((___match2347623477_
                   (lambda (_e1774217767_
                            _hd1774117771_
                            _tl1774017774_
                            _e1774517777_
                            _hd1774417781_
                            _tl1774317784_
                            ___splice2344023441_
                            _target1774617787_
                            _tl1774817790_)
                     (letrec ((_loop1774917793_
                               (lambda (_hd1774717797_ _rest1775317800_)
                                 (if (gx#stx-pair? _hd1774717797_)
                                     (let ((_e1775017803_
                                            (gx#syntax-e _hd1774717797_)))
                                       (let ((_lp-tl1775217810_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e1775017803_)))
                                             (_lp-hd1775117807_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e1775017803_))))
                                         (_loop1774917793_
                                          _lp-tl1775217810_
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd1775117807_
                                                  _rest1775317800_)))))
                                     (let ((_rest1775417813_
                                            (reverse _rest1775317800_)))
                                       (___kont2343823439_
                                        _rest1775417813_
                                        _hd1774417781_))))))
                       (_loop1774917793_ _target1774617787_ '())))))
              (if (gx#stx-pair? ___stx2343323434_)
                  (let ((_e1773417852_ (gx#syntax-e ___stx2343323434_)))
                    (let ((_tl1773217859_
                           (let () (declare (not safe)) (##cdr _e1773417852_)))
                          (_hd1773317856_
                           (let ()
                             (declare (not safe))
                             (##car _e1773417852_))))
                      (if (gx#stx-pair? _tl1773217859_)
                          (let ((_e1773717862_ (gx#syntax-e _tl1773217859_)))
                            (let ((_tl1773517869_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1773717862_)))
                                  (_hd1773617866_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1773717862_))))
                              (if (gx#stx-null? _tl1773517869_)
                                  (___kont2343623437_ _hd1773617866_)
                                  (if (gx#stx-pair/null? _tl1773517869_)
                                      (let ((___splice2344023441_
                                             (gx#syntax-split-splice
                                              _tl1773517869_
                                              '0)))
                                        (let ((_tl1774817790_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2344023441_
                                                  '1)))
                                              (_target1774617787_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2344023441_
                                                  '0))))
                                          (if (gx#stx-null? _tl1774817790_)
                                              (___match2347623477_
                                               _e1773417852_
                                               _hd1773317856_
                                               _tl1773217859_
                                               _e1773717862_
                                               _hd1773617866_
                                               _tl1773517869_
                                               ___splice2344023441_
                                               _target1774617787_
                                               _tl1774817790_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1772917760_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1772917760_))))))
                          (let () (declare (not safe)) (_g1772917760_)))))
                  (let () (declare (not safe)) (_g1772917760_))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#rec|
      (lambda (_$stx17890_)
        (let* ((___stx2347923480_ _$stx17890_)
               (_g1789617949_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2347923480_))))
          (let ((___kont2348223483_
                 (lambda (_L18151_ _L18153_)
                   (let ((__tmp25654 (gx#datum->syntax '#f 'letrec))
                         (__tmp25649
                          (let ((__tmp25651
                                 (let ((__tmp25652
                                        (let ((__tmp25653
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L18151_ '()))))
                                          (declare (not safe))
                                          (cons _L18153_ __tmp25653))))
                                   (declare (not safe))
                                   (cons __tmp25652 '())))
                                (__tmp25650
                                 (let ()
                                   (declare (not safe))
                                   (cons _L18153_ '()))))
                            (declare (not safe))
                            (cons __tmp25651 __tmp25650))))
                     (declare (not safe))
                     (cons __tmp25654 __tmp25649))))
                (___kont2348423485_
                 (lambda (_L18095_ _L18097_)
                   (let ((__tmp25662 (gx#datum->syntax '#f 'letrec-values))
                         (__tmp25655
                          (let ((__tmp25659
                                 (let ((__tmp25660
                                        (let ((__tmp25661
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L18095_ '()))))
                                          (declare (not safe))
                                          (cons _L18097_ __tmp25661))))
                                   (declare (not safe))
                                   (cons __tmp25660 '())))
                                (__tmp25656
                                 (let ((__tmp25657
                                        (let ((__tmp25658
                                               (gx#datum->syntax '#f 'values)))
                                          (declare (not safe))
                                          (cons __tmp25658 _L18097_))))
                                   (declare (not safe))
                                   (cons __tmp25657 '()))))
                            (declare (not safe))
                            (cons __tmp25659 __tmp25656))))
                     (declare (not safe))
                     (cons __tmp25662 __tmp25655))))
                (___kont2348623487_
                 (lambda (_L18016_ _L18018_ _L18019_)
                   (let ((__tmp25672 (gx#datum->syntax '#f 'letrec))
                         (__tmp25663
                          (let ((__tmp25665
                                 (let ((__tmp25666
                                        (let ((__tmp25667
                                               (let ((__tmp25668
                                                      (let ((__tmp25671
                                                             (gx#datum->syntax
                                                              '#f
                                                              'lambda))
                                                            (__tmp25669
                                                             (let ((__tmp25670
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr (lambda (_g1803918042_ _g1804018045_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g1803918042_ _g1804018045_)))
                                   '()
                                   _L18016_)))
                       (declare (not safe))
                       (cons _L18018_ __tmp25670))))
                (declare (not safe))
                (cons __tmp25671 __tmp25669))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25668 '()))))
                                          (declare (not safe))
                                          (cons _L18019_ __tmp25667))))
                                   (declare (not safe))
                                   (cons __tmp25666 '())))
                                (__tmp25664
                                 (let ()
                                   (declare (not safe))
                                   (cons _L18019_ '()))))
                            (declare (not safe))
                            (cons __tmp25665 __tmp25664))))
                     (declare (not safe))
                     (cons __tmp25672 __tmp25663)))))
            (let* ((___match2356623567_
                    (lambda (_e1792817956_
                             _hd1792717960_
                             _tl1792617963_
                             _e1793117966_
                             _hd1793017970_
                             _tl1792917973_
                             _e1793417976_
                             _hd1793317980_
                             _tl1793217983_
                             ___splice2348823489_
                             _target1793517986_
                             _tl1793717989_)
                      (letrec ((_loop1793817992_
                                (lambda (_hd1793617996_ _body1794217999_)
                                  (if (gx#stx-pair? _hd1793617996_)
                                      (let ((_e1793918002_
                                             (gx#syntax-e _hd1793617996_)))
                                        (let ((_lp-tl1794118009_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1793918002_)))
                                              (_lp-hd1794018006_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1793918002_))))
                                          (_loop1793817992_
                                           _lp-tl1794118009_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1794018006_
                                                   _body1794217999_)))))
                                      (let ((_body1794318012_
                                             (reverse _body1794217999_)))
                                        (let ((_L18016_ _body1794318012_)
                                              (_L18018_ _tl1793217983_)
                                              (_L18019_ _hd1793317980_))
                                          (if (gx#identifier? _L18019_)
                                              (___kont2348623487_
                                               _L18016_
                                               _L18018_
                                               _L18019_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1789617949_)))))))))
                        (_loop1793817992_ _target1793517986_ '()))))
                   (___match2354023541_
                    (lambda (_e1791318055_
                             _hd1791218059_
                             _tl1791118062_
                             _e1791618065_
                             _hd1791518069_
                             _tl1791418072_
                             _e1791918075_
                             _hd1791818079_
                             _tl1791718082_
                             _e1792218085_
                             _hd1792118089_
                             _tl1792018092_)
                      (let ((_L18095_ _hd1792118089_)
                            (_L18097_ _tl1791718082_))
                        (if (gx#identifier-list? _L18097_)
                            (___kont2348423485_ _L18095_ _L18097_)
                            (if (gx#stx-pair/null? _tl1791418072_)
                                (let ((___splice2348823489_
                                       (gx#syntax-split-splice
                                        _tl1791418072_
                                        '0)))
                                  (let ((_tl1793717989_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice2348823489_
                                            '1)))
                                        (_target1793517986_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice2348823489_
                                            '0))))
                                    (if (gx#stx-null? _tl1793717989_)
                                        (___match2356623567_
                                         _e1791318055_
                                         _hd1791218059_
                                         _tl1791118062_
                                         _e1791618065_
                                         _hd1791518069_
                                         _tl1791418072_
                                         _e1791918075_
                                         _hd1791818079_
                                         _tl1791718082_
                                         ___splice2348823489_
                                         _target1793517986_
                                         _tl1793717989_)
                                        (let ()
                                          (declare (not safe))
                                          (_g1789617949_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1789617949_)))))))
                   (___match2351023511_
                    (lambda (_e1790218121_
                             _hd1790118125_
                             _tl1790018128_
                             _e1790518131_
                             _hd1790418135_
                             _tl1790318138_
                             _e1790818141_
                             _hd1790718145_
                             _tl1790618148_)
                      (let ((_L18151_ _hd1790718145_)
                            (_L18153_ _hd1790418135_))
                        (if (gx#identifier? _L18153_)
                            (___kont2348223483_ _L18151_ _L18153_)
                            (if (gx#stx-pair? _hd1790418135_)
                                (let ((_e1791918075_
                                       (gx#syntax-e _hd1790418135_)))
                                  (let ((_tl1791718082_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1791918075_)))
                                        (_hd1791818079_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1791918075_))))
                                    (if (gx#identifier? _hd1791818079_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core/sugar$<sugar:2>[1]#_g25673_|
                                             _hd1791818079_)
                                            (___match2354023541_
                                             _e1790218121_
                                             _hd1790118125_
                                             _tl1790018128_
                                             _e1790518131_
                                             _hd1790418135_
                                             _tl1790318138_
                                             _e1791918075_
                                             _hd1791818079_
                                             _tl1791718082_
                                             _e1790818141_
                                             _hd1790718145_
                                             _tl1790618148_)
                                            (if (gx#stx-pair/null?
                                                 _tl1790318138_)
                                                (let ((___splice2348823489_
                                                       (gx#syntax-split-splice
                                                        _tl1790318138_
                                                        '0)))
                                                  (let ((_tl1793717989_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice2348823489_
                                                            '1)))
                                                        (_target1793517986_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice2348823489_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl1793717989_)
                                                        (___match2356623567_
                                                         _e1790218121_
                                                         _hd1790118125_
                                                         _tl1790018128_
                                                         _e1790518131_
                                                         _hd1790418135_
                                                         _tl1790318138_
                                                         _e1791918075_
                                                         _hd1791818079_
                                                         _tl1791718082_
                                                         ___splice2348823489_
                                                         _target1793517986_
                                                         _tl1793717989_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g1789617949_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1789617949_))))
                                        (if (gx#stx-pair/null? _tl1790318138_)
                                            (let ((___splice2348823489_
                                                   (gx#syntax-split-splice
                                                    _tl1790318138_
                                                    '0)))
                                              (let ((_tl1793717989_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2348823489_
                                                        '1)))
                                                    (_target1793517986_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2348823489_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl1793717989_)
                                                    (___match2356623567_
                                                     _e1790218121_
                                                     _hd1790118125_
                                                     _tl1790018128_
                                                     _e1790518131_
                                                     _hd1790418135_
                                                     _tl1790318138_
                                                     _e1791918075_
                                                     _hd1791818079_
                                                     _tl1791718082_
                                                     ___splice2348823489_
                                                     _target1793517986_
                                                     _tl1793717989_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g1789617949_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g1789617949_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g1789617949_))))))))
              (if (gx#stx-pair? ___stx2347923480_)
                  (let ((_e1790218121_ (gx#syntax-e ___stx2347923480_)))
                    (let ((_tl1790018128_
                           (let () (declare (not safe)) (##cdr _e1790218121_)))
                          (_hd1790118125_
                           (let ()
                             (declare (not safe))
                             (##car _e1790218121_))))
                      (if (gx#stx-pair? _tl1790018128_)
                          (let ((_e1790518131_ (gx#syntax-e _tl1790018128_)))
                            (let ((_tl1790318138_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1790518131_)))
                                  (_hd1790418135_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1790518131_))))
                              (if (gx#stx-pair? _tl1790318138_)
                                  (let ((_e1790818141_
                                         (gx#syntax-e _tl1790318138_)))
                                    (let ((_tl1790618148_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1790818141_)))
                                          (_hd1790718145_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1790818141_))))
                                      (if (gx#stx-null? _tl1790618148_)
                                          (___match2351023511_
                                           _e1790218121_
                                           _hd1790118125_
                                           _tl1790018128_
                                           _e1790518131_
                                           _hd1790418135_
                                           _tl1790318138_
                                           _e1790818141_
                                           _hd1790718145_
                                           _tl1790618148_)
                                          (if (gx#stx-pair? _hd1790418135_)
                                              (let ((_e1791918075_
                                                     (gx#syntax-e
                                                      _hd1790418135_)))
                                                (let ((_tl1791718082_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1791918075_)))
                                                      (_hd1791818079_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1791918075_))))
                                                  (if (gx#stx-pair/null?
                                                       _tl1790318138_)
                                                      (let ((___splice2348823489_
                                                             (gx#syntax-split-splice
                                                              _tl1790318138_
                                                              '0)))
                                                        (let ((_tl1793717989_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice2348823489_ '1)))
                      (_target1793517986_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice2348823489_ '0))))
                  (if (gx#stx-null? _tl1793717989_)
                      (___match2356623567_
                       _e1790218121_
                       _hd1790118125_
                       _tl1790018128_
                       _e1790518131_
                       _hd1790418135_
                       _tl1790318138_
                       _e1791918075_
                       _hd1791818079_
                       _tl1791718082_
                       ___splice2348823489_
                       _target1793517986_
                       _tl1793717989_)
                      (let () (declare (not safe)) (_g1789617949_)))))
              (let () (declare (not safe)) (_g1789617949_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1789617949_))))))
                                  (if (gx#stx-pair? _hd1790418135_)
                                      (let ((_e1791918075_
                                             (gx#syntax-e _hd1790418135_)))
                                        (let ((_tl1791718082_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1791918075_)))
                                              (_hd1791818079_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1791918075_))))
                                          (if (gx#stx-pair/null?
                                               _tl1790318138_)
                                              (let ((___splice2348823489_
                                                     (gx#syntax-split-splice
                                                      _tl1790318138_
                                                      '0)))
                                                (let ((_tl1793717989_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2348823489_
                                                          '1)))
                                                      (_target1793517986_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2348823489_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1793717989_)
                                                      (___match2356623567_
                                                       _e1790218121_
                                                       _hd1790118125_
                                                       _tl1790018128_
                                                       _e1790518131_
                                                       _hd1790418135_
                                                       _tl1790318138_
                                                       _e1791918075_
                                                       _hd1791818079_
                                                       _tl1791718082_
                                                       ___splice2348823489_
                                                       _target1793517986_
                                                       _tl1793717989_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g1789617949_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g1789617949_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1789617949_))))))
                          (let () (declare (not safe)) (_g1789617949_)))))
                  (let () (declare (not safe)) (_g1789617949_))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#alet|
      (lambda (_stx18173_)
        (letrec ((_let-bind?18176_
                  (lambda (_x19099_)
                    (let* ((___stx2356923570_ _x19099_)
                           (_g1910419123_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2356923570_))))
                      (let ((___kont2357223573_
                             (lambda (_L19191_ _L19193_)
                               (_let-head?18179_ _L19193_)))
                            (___kont2357423575_ (lambda (_L19151_) '#t))
                            (___kont2357623577_ (lambda () '#f)))
                        (if (gx#stx-pair? ___stx2356923570_)
                            (let ((_e1911019171_
                                   (gx#syntax-e ___stx2356923570_)))
                              (let ((_tl1910819178_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1911019171_)))
                                    (_hd1910919175_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1911019171_))))
                                (if (gx#stx-pair? _tl1910819178_)
                                    (let ((_e1911319181_
                                           (gx#syntax-e _tl1910819178_)))
                                      (let ((_tl1911119188_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1911319181_)))
                                            (_hd1911219185_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1911319181_))))
                                        (if (gx#stx-null? _tl1911119188_)
                                            (___kont2357223573_
                                             _hd1911219185_
                                             _hd1910919175_)
                                            (___kont2357623577_))))
                                    (if (gx#stx-null? _tl1910819178_)
                                        (___kont2357423575_ _hd1910919175_)
                                        (___kont2357623577_)))))
                            (___kont2357623577_))))))
                 (_let-bind18178_
                  (lambda (_x19001_)
                    (let* ((___stx2360323604_ _x19001_)
                           (_g1900519024_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2360323604_))))
                      (let ((___kont2360623607_
                             (lambda (_L19080_ _L19082_) _x19001_))
                            (___kont2360823609_
                             (lambda (_L19041_)
                               (let ((__tmp25675 (gx#datum->syntax '#f '_))
                                     (__tmp25674
                                      (let ()
                                        (declare (not safe))
                                        (cons _L19041_ '()))))
                                 (declare (not safe))
                                 (cons __tmp25675 __tmp25674)))))
                        (if (gx#stx-pair? ___stx2360323604_)
                            (let ((_e1901119060_
                                   (gx#syntax-e ___stx2360323604_)))
                              (let ((_tl1900919067_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1901119060_)))
                                    (_hd1901019064_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1901119060_))))
                                (if (gx#stx-pair? _tl1900919067_)
                                    (let ((_e1901419070_
                                           (gx#syntax-e _tl1900919067_)))
                                      (let ((_tl1901219077_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1901419070_)))
                                            (_hd1901319074_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1901419070_))))
                                        (if (gx#stx-null? _tl1901219077_)
                                            (___kont2360623607_
                                             _hd1901319074_
                                             _hd1901019064_)
                                            (let ()
                                              (declare (not safe))
                                              (_g1900519024_)))))
                                    (if (gx#stx-null? _tl1900919067_)
                                        (___kont2360823609_ _hd1901019064_)
                                        (let ()
                                          (declare (not safe))
                                          (_g1900519024_))))))
                            (let () (declare (not safe)) (_g1900519024_)))))))
                 (_let-head?18179_
                  (lambda (_x18941_)
                    (let* ((___stx2363523636_ _x18941_)
                           (_g1894518956_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2363523636_))))
                      (let ((___kont2363823639_
                             (lambda (_L18984_)
                               (gx#stx-andmap gx#identifier? _L18984_)))
                            (___kont2364023641_
                             (lambda () (gx#identifier? _x18941_))))
                        (if (gx#stx-pair? ___stx2363523636_)
                            (let ((_e1895018974_
                                   (gx#syntax-e ___stx2363523636_)))
                              (let ((_tl1894818981_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1895018974_)))
                                    (_hd1894918978_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1895018974_))))
                                (if (gx#identifier? _hd1894918978_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar$<sugar:2>[1]#_g25676_|
                                         _hd1894918978_)
                                        (___kont2363823639_ _tl1894818981_)
                                        (___kont2364023641_))
                                    (___kont2364023641_))))
                            (___kont2364023641_))))))
                 (_let-head18180_
                  (lambda (_x18881_)
                    (let* ((___stx2365523656_ _x18881_)
                           (_g1888518896_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2365523656_))))
                      (let ((___kont2365823659_ (lambda (_L18924_) _L18924_))
                            (___kont2366023661_ (lambda () (list _x18881_))))
                        (if (gx#stx-pair? ___stx2365523656_)
                            (let ((_e1889018914_
                                   (gx#syntax-e ___stx2365523656_)))
                              (let ((_tl1888818921_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1889018914_)))
                                    (_hd1888918918_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1889018914_))))
                                (if (gx#identifier? _hd1888918918_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar$<sugar:2>[1]#_g25677_|
                                         _hd1888918918_)
                                        (___kont2365823659_ _tl1888818921_)
                                        (___kont2366023661_))
                                    (___kont2366023661_))))
                            (___kont2366023661_)))))))
          (let* ((___stx2367523676_ _stx18173_)
                 (_g1818418256_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx2367523676_))))
            (let ((___kont2367823679_
                   (lambda (_L18854_ _L18856_ _L18857_ _L18858_)
                     (let ((__tmp25678
                            (let ((__tmp25679
                                   (let ((__tmp25680
                                          (let ((__tmp25681
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L18856_ '()))))
                                            (declare (not safe))
                                            (cons _L18857_ __tmp25681))))
                                     (declare (not safe))
                                     (cons __tmp25680 '()))))
                              (declare (not safe))
                              (cons __tmp25679 _L18854_))))
                       (declare (not safe))
                       (cons _L18858_ __tmp25678))))
                  (___kont2368023681_
                   (lambda (_L18776_ _L18778_)
                     (let ((__tmp25688 (gx#datum->syntax '#f 'and))
                           (__tmp25682
                            (let ((__tmp25683
                                   (let ((__tmp25684
                                          (let ((__tmp25687
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp25685
                                                 (let ((__tmp25686
                                                        (foldr (lambda (_g1879818801_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1879918804_)
                         (let ()
                           (declare (not safe))
                           (cons _g1879818801_ _g1879918804_)))
                       '()
                       _L18776_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp25686))))
                                            (declare (not safe))
                                            (cons __tmp25687 __tmp25685))))
                                     (declare (not safe))
                                     (cons __tmp25684 '()))))
                              (declare (not safe))
                              (cons _L18778_ __tmp25683))))
                       (declare (not safe))
                       (cons __tmp25688 __tmp25682))))
                  (___kont2368423685_
                   (lambda (_L18343_ _L18345_)
                     (let* ((_g1837618402_
                             (lambda (_g1837718398_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g1837718398_)))
                            (_g1837518687_
                             (lambda (_g1837718406_)
                               (if (gx#stx-pair/null? _g1837718406_)
                                   (let ((_g25689_
                                          (gx#syntax-split-splice
                                           _g1837718406_
                                           '0)))
                                     (begin
                                       (let ((_g25690_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g25689_)
                                                    (##vector-length _g25689_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g25690_ 2)))
                                             (error "Context expects 2 values"
                                                    _g25690_)))
                                       (let ((_target1838018409_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g25689_ 0)))
                                             (_tl1838218412_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g25689_ 1))))
                                         (if (gx#stx-null? _tl1838218412_)
                                             (letrec ((_loop1838318415_
                                                       (lambda (_hd1838118419_
                                                                _e1838718422_
                                                                _hd1838818424_)
                                                         (if (gx#stx-pair?
                                                              _hd1838118419_)
                                                             (let ((_e1838418427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd1838118419_)))
                       (let ((_lp-hd1838518431_
                              (let ()
                                (declare (not safe))
                                (##car _e1838418427_)))
                             (_lp-tl1838618434_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1838418427_))))
                         (if (gx#stx-pair? _lp-hd1838518431_)
                             (let ((_e1839318437_
                                    (gx#syntax-e _lp-hd1838518431_)))
                               (let ((_hd1839218441_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1839318437_)))
                                     (_tl1839118444_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1839318437_))))
                                 (if (gx#stx-pair? _tl1839118444_)
                                     (let ((_e1839618447_
                                            (gx#syntax-e _tl1839118444_)))
                                       (let ((_hd1839518451_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e1839618447_)))
                                             (_tl1839418454_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e1839618447_))))
                                         (if (gx#stx-null? _tl1839418454_)
                                             (_loop1838318415_
                                              _lp-tl1838618434_
                                              (let ()
                                                (declare (not safe))
                                                (cons _hd1839518451_
                                                      _e1838718422_))
                                              (let ()
                                                (declare (not safe))
                                                (cons _hd1839218441_
                                                      _hd1838818424_)))
                                             (_g1837618402_ _g1837718406_))))
                                     (_g1837618402_ _g1837718406_))))
                             (_g1837618402_ _g1837718406_))))
                     (let ((_e1838918457_ (reverse _e1838718422_))
                           (_hd1839018460_ (reverse _hd1838818424_)))
                       ((lambda (_L18463_ _L18465_)
                          (let ()
                            (let* ((_g1848118498_
                                    (lambda (_g1848218494_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g1848218494_)))
                                   (_g1848018675_
                                    (lambda (_g1848218502_)
                                      (if (gx#stx-pair/null? _g1848218502_)
                                          (let ((_g25691_
                                                 (gx#syntax-split-splice
                                                  _g1848218502_
                                                  '0)))
                                            (begin
                                              (let ((_g25692_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g25691_)
                                                           (##vector-length
                                                            _g25691_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g25692_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g25692_)))
                                              (let ((_target1848418505_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g25691_
                                                        0)))
                                                    (_tl1848618508_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g25691_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _tl1848618508_)
                                                    (letrec ((_loop1848718511_
                                                              (lambda (_hd1848518515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _$e1849118518_)
                        (if (gx#stx-pair? _hd1848518515_)
                            (let ((_e1848818521_ (gx#syntax-e _hd1848518515_)))
                              (let ((_lp-hd1848918525_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1848818521_)))
                                    (_lp-tl1849018528_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1848818521_))))
                                (_loop1848718511_
                                 _lp-tl1849018528_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd1848918525_ _$e1849118518_)))))
                            (let ((_$e1849218531_ (reverse _$e1849118518_)))
                              ((lambda (_L18535_)
                                 (let ()
                                   (let* ((_g1855218569_
                                           (lambda (_g1855318565_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g1855318565_)))
                                          (_g1855118663_
                                           (lambda (_g1855318573_)
                                             (if (gx#stx-pair/null?
                                                  _g1855318573_)
                                                 (let ((_g25693_
                                                        (gx#syntax-split-splice
                                                         _g1855318573_
                                                         '0)))
                                                   (begin
                                                     (let ((_g25694_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g25693_)
                          (##vector-length _g25693_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g25694_ 2)))
                   (error "Context expects 2 values" _g25694_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1855518576_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g25693_
                                                               0)))
                                                           (_tl1855718579_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g25693_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl1855718579_)
                                                           (letrec ((_loop1855818582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1855618586_ _hd-bind1856218589_)
                               (if (gx#stx-pair? _hd1855618586_)
                                   (let ((_e1855918592_
                                          (gx#syntax-e _hd1855618586_)))
                                     (let ((_lp-hd1856018596_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e1855918592_)))
                                           (_lp-tl1856118599_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e1855918592_))))
                                       (_loop1855818582_
                                        _lp-tl1856118599_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd1856018596_
                                                _hd-bind1856218589_)))))
                                   (let ((_hd-bind1856318602_
                                          (reverse _hd-bind1856218589_)))
                                     ((lambda (_L18606_)
                                        (let ()
                                          (let ()
                                            (let ((__tmp25711
                                                   (gx#datum->syntax
                                                    '#f
                                                    'let-values))
                                                  (__tmp25695
                                                   (let ((__tmp25707
                                                          (begin
                                                            (gx#syntax-check-splice-targets
                                                             _L18463_
                                                             _L18535_)
                                                            (foldr (lambda (_g1863118635_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1863218638_
                                    _g1863318640_)
                             (let ((__tmp25708
                                    (let ((__tmp25710
                                           (let ()
                                             (declare (not safe))
                                             (cons _g1863218638_ '())))
                                          (__tmp25709
                                           (let ()
                                             (declare (not safe))
                                             (cons _g1863118635_ '()))))
                                      (declare (not safe))
                                      (cons __tmp25710 __tmp25709))))
                               (declare (not safe))
                               (cons __tmp25708 _g1863318640_)))
                           '()
                           _L18463_
                           _L18535_)))
                 (__tmp25696
                  (let ((__tmp25697
                         (let ((__tmp25706 (gx#datum->syntax '#f 'and))
                               (__tmp25698
                                (foldr (lambda (_g1862418643_ _g1862518646_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g1862418643_ _g1862518646_)))
                                       (let ((__tmp25699
                                              (let ((__tmp25705
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let-values))
                                                    (__tmp25700
                                                     (let ((__tmp25702
                                                            (begin
                                                              (gx#syntax-check-splice-targets
                                                               _L18535_
                                                               _L18606_)
                                                              (foldr (lambda (_g1862818649_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1862918652_
                                      _g1863018654_)
                               (let ((__tmp25703
                                      (let ((__tmp25704
                                             (let ()
                                               (declare (not safe))
                                               (cons _g1862818649_ '()))))
                                        (declare (not safe))
                                        (cons _g1862918652_ __tmp25704))))
                                 (declare (not safe))
                                 (cons __tmp25703 _g1863018654_)))
                             '()
                             _L18535_
                             _L18606_)))
                   (__tmp25701
                    (foldr (lambda (_g1862618657_ _g1862718660_)
                             (let ()
                               (declare (not safe))
                               (cons _g1862618657_ _g1862718660_)))
                           '()
                           _L18343_)))
               (declare (not safe))
               (cons __tmp25702 __tmp25701))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25705 __tmp25700))))
                                         (declare (not safe))
                                         (cons __tmp25699 '()))
                                       _L18535_)))
                           (declare (not safe))
                           (cons __tmp25706 __tmp25698))))
                    (declare (not safe))
                    (cons __tmp25697 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25707
                                                           __tmp25696))))
                                              (declare (not safe))
                                              (cons __tmp25711 __tmp25695)))))
                                      _hd-bind1856318602_))))))
                     (_loop1855818582_ _target1855518576_ '()))
                   (_g1855218569_ _g1855318573_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1855218569_
                                                  _g1855318573_)))))
                                     (_g1855118663_
                                      (gx#stx-map
                                       _let-head18180_
                                       (foldr (lambda (_g1866618669_
                                                       _g1866718672_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g1866618669_
                                                        _g1866718672_)))
                                              '()
                                              _L18465_))))))
                               _$e1849218531_))))))
              (_loop1848718511_ _target1848418505_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1848118498_
                                                     _g1848218502_)))))
                                          (_g1848118498_ _g1848218502_)))))
                              (_g1848018675_
                               (gx#gentemps
                                (foldr (lambda (_g1867818681_ _g1867918684_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g1867818681_ _g1867918684_)))
                                       '()
                                       _L18465_))))))
                        _e1838918457_
                        _hd1839018460_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop1838318415_
                                                _target1838018409_
                                                '()
                                                '()))
                                             (_g1837618402_ _g1837718406_)))))
                                   (_g1837618402_ _g1837718406_)))))
                       (_g1837518687_
                        (gx#stx-map
                         _let-bind18178_
                         (foldr (lambda (_g1869018693_ _g1869118696_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g1869018693_ _g1869118696_)))
                                '()
                                _L18345_)))))))
              (let* ((___match2377223773_
                      (lambda (_e1822918263_
                               _hd1822818267_
                               _tl1822718270_
                               _e1823218273_
                               _hd1823118277_
                               _tl1823018280_
                               ___splice2368623687_
                               _target1823318283_
                               _tl1823518286_)
                        (letrec ((_loop1823618289_
                                  (lambda (_hd1823418293_ _bind1824018296_)
                                    (if (gx#stx-pair? _hd1823418293_)
                                        (let ((_e1823718299_
                                               (gx#syntax-e _hd1823418293_)))
                                          (let ((_lp-tl1823918306_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1823718299_)))
                                                (_lp-hd1823818303_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1823718299_))))
                                            (_loop1823618289_
                                             _lp-tl1823918306_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd1823818303_
                                                     _bind1824018296_)))))
                                        (let ((_bind1824118309_
                                               (reverse _bind1824018296_)))
                                          (if (gx#stx-pair/null?
                                               _tl1823018280_)
                                              (let ((___splice2368823689_
                                                     (gx#syntax-split-splice
                                                      _tl1823018280_
                                                      '0)))
                                                (let ((_tl1824418316_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2368823689_
                                                          '1)))
                                                      (_target1824218313_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2368823689_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1824418316_)
                                                      (letrec ((_loop1824518319_
                                                                (lambda (_hd1824318323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body1824918326_)
                          (if (gx#stx-pair? _hd1824318323_)
                              (let ((_e1824618329_
                                     (gx#syntax-e _hd1824318323_)))
                                (let ((_lp-tl1824818336_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1824618329_)))
                                      (_lp-hd1824718333_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1824618329_))))
                                  (_loop1824518319_
                                   _lp-tl1824818336_
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd1824718333_
                                           _body1824918326_)))))
                              (let ((_body1825018339_
                                     (reverse _body1824918326_)))
                                (let ((_L18343_ _body1825018339_)
                                      (_L18345_ _bind1824118309_))
                                  (if (gx#stx-andmap
                                       _let-bind?18176_
                                       (foldr (lambda (_g1836718370_
                                                       _g1836818373_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g1836718370_
                                                        _g1836818373_)))
                                              '()
                                              _L18345_))
                                      (___kont2368423685_ _L18343_ _L18345_)
                                      (let ()
                                        (declare (not safe))
                                        (_g1818418256_)))))))))
                (_loop1824518319_ _target1824218313_ '()))
              (let () (declare (not safe)) (_g1818418256_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1818418256_))))))))
                          (_loop1823618289_ _target1823318283_ '()))))
                     (___match2375223753_
                      (lambda (_e1820618706_
                               _hd1820518710_
                               _tl1820418713_
                               _e1820918716_
                               _hd1820818720_
                               _tl1820718723_
                               _e1821218726_
                               _hd1821118730_
                               _tl1821018733_
                               _e1821518736_
                               _hd1821418740_
                               _tl1821318743_
                               ___splice2368223683_
                               _target1821618746_
                               _tl1821818749_)
                        (letrec ((_loop1821918752_
                                  (lambda (_hd1821718756_ _body1822318759_)
                                    (if (gx#stx-pair? _hd1821718756_)
                                        (let ((_e1822018762_
                                               (gx#syntax-e _hd1821718756_)))
                                          (let ((_lp-tl1822218769_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1822018762_)))
                                                (_lp-hd1822118766_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1822018762_))))
                                            (_loop1821918752_
                                             _lp-tl1822218769_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd1822118766_
                                                     _body1822318759_)))))
                                        (let ((_body1822418772_
                                               (reverse _body1822318759_)))
                                          (___kont2368023681_
                                           _body1822418772_
                                           _hd1821418740_))))))
                          (_loop1821918752_ _target1821618746_ '()))))
                     (___match2371623717_
                      (lambda (_e1819218814_
                               _hd1819118818_
                               _tl1819018821_
                               _e1819518824_
                               _hd1819418828_
                               _tl1819318831_
                               _e1819818834_
                               _hd1819718838_
                               _tl1819618841_
                               _e1820118844_
                               _hd1820018848_
                               _tl1819918851_)
                        (let ((_L18854_ _tl1819318831_)
                              (_L18856_ _hd1820018848_)
                              (_L18857_ _hd1819718838_)
                              (_L18858_ _hd1819118818_))
                          (if (_let-head?18179_ _L18857_)
                              (___kont2367823679_
                               _L18854_
                               _L18856_
                               _L18857_
                               _L18858_)
                              (if (gx#stx-pair? _hd1819718838_)
                                  (let ((_e1821518736_
                                         (gx#syntax-e _hd1819718838_)))
                                    (let ((_tl1821318743_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1821518736_)))
                                          (_hd1821418740_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1821518736_))))
                                      (if (gx#stx-pair/null? _hd1819418828_)
                                          (let ((___splice2368623687_
                                                 (gx#syntax-split-splice
                                                  _hd1819418828_
                                                  '0)))
                                            (let ((_tl1823518286_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2368623687_
                                                      '1)))
                                                  (_target1823318283_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2368623687_
                                                      '0))))
                                              (if (gx#stx-null? _tl1823518286_)
                                                  (___match2377223773_
                                                   _e1819218814_
                                                   _hd1819118818_
                                                   _tl1819018821_
                                                   _e1819518824_
                                                   _hd1819418828_
                                                   _tl1819318831_
                                                   ___splice2368623687_
                                                   _target1823318283_
                                                   _tl1823518286_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1818418256_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1818418256_)))))
                                  (if (gx#stx-pair/null? _hd1819418828_)
                                      (let ((___splice2368623687_
                                             (gx#syntax-split-splice
                                              _hd1819418828_
                                              '0)))
                                        (let ((_tl1823518286_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2368623687_
                                                  '1)))
                                              (_target1823318283_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2368623687_
                                                  '0))))
                                          (if (gx#stx-null? _tl1823518286_)
                                              (___match2377223773_
                                               _e1819218814_
                                               _hd1819118818_
                                               _tl1819018821_
                                               _e1819518824_
                                               _hd1819418828_
                                               _tl1819318831_
                                               ___splice2368623687_
                                               _target1823318283_
                                               _tl1823518286_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1818418256_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1818418256_)))))))))
                (if (gx#stx-pair? ___stx2367523676_)
                    (let ((_e1819218814_ (gx#syntax-e ___stx2367523676_)))
                      (let ((_tl1819018821_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1819218814_)))
                            (_hd1819118818_
                             (let ()
                               (declare (not safe))
                               (##car _e1819218814_))))
                        (if (gx#stx-pair? _tl1819018821_)
                            (let ((_e1819518824_ (gx#syntax-e _tl1819018821_)))
                              (let ((_tl1819318831_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1819518824_)))
                                    (_hd1819418828_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1819518824_))))
                                (if (gx#stx-pair? _hd1819418828_)
                                    (let ((_e1819818834_
                                           (gx#syntax-e _hd1819418828_)))
                                      (let ((_tl1819618841_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1819818834_)))
                                            (_hd1819718838_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1819818834_))))
                                        (if (gx#stx-pair? _tl1819618841_)
                                            (let ((_e1820118844_
                                                   (gx#syntax-e
                                                    _tl1819618841_)))
                                              (let ((_tl1819918851_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1820118844_)))
                                                    (_hd1820018848_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1820118844_))))
                                                (if (gx#stx-null?
                                                     _tl1819918851_)
                                                    (___match2371623717_
                                                     _e1819218814_
                                                     _hd1819118818_
                                                     _tl1819018821_
                                                     _e1819518824_
                                                     _hd1819418828_
                                                     _tl1819318831_
                                                     _e1819818834_
                                                     _hd1819718838_
                                                     _tl1819618841_
                                                     _e1820118844_
                                                     _hd1820018848_
                                                     _tl1819918851_)
                                                    (if (gx#stx-pair?
                                                         _hd1819718838_)
                                                        (let ((_e1821518736_
                                                               (gx#syntax-e
                                                                _hd1819718838_)))
                                                          (let ((_tl1821318743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e1821518736_)))
                        (_hd1821418740_
                         (let () (declare (not safe)) (##car _e1821518736_))))
                    (if (gx#stx-pair/null? _hd1819418828_)
                        (let ((___splice2368623687_
                               (gx#syntax-split-splice _hd1819418828_ '0)))
                          (let ((_tl1823518286_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2368623687_ '1)))
                                (_target1823318283_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2368623687_ '0))))
                            (if (gx#stx-null? _tl1823518286_)
                                (___match2377223773_
                                 _e1819218814_
                                 _hd1819118818_
                                 _tl1819018821_
                                 _e1819518824_
                                 _hd1819418828_
                                 _tl1819318831_
                                 ___splice2368623687_
                                 _target1823318283_
                                 _tl1823518286_)
                                (let ()
                                  (declare (not safe))
                                  (_g1818418256_)))))
                        (let () (declare (not safe)) (_g1818418256_)))))
                (if (gx#stx-pair/null? _hd1819418828_)
                    (let ((___splice2368623687_
                           (gx#syntax-split-splice _hd1819418828_ '0)))
                      (let ((_tl1823518286_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice2368623687_ '1)))
                            (_target1823318283_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice2368623687_ '0))))
                        (if (gx#stx-null? _tl1823518286_)
                            (___match2377223773_
                             _e1819218814_
                             _hd1819118818_
                             _tl1819018821_
                             _e1819518824_
                             _hd1819418828_
                             _tl1819318831_
                             ___splice2368623687_
                             _target1823318283_
                             _tl1823518286_)
                            (let () (declare (not safe)) (_g1818418256_)))))
                    (let () (declare (not safe)) (_g1818418256_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _hd1819718838_)
                                                (let ((_e1821518736_
                                                       (gx#syntax-e
                                                        _hd1819718838_)))
                                                  (let ((_tl1821318743_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1821518736_)))
                                                        (_hd1821418740_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1821518736_))))
                                                    (if (gx#stx-null?
                                                         _tl1821318743_)
                                                        (if (gx#stx-null?
                                                             _tl1819618841_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1819318831_)
                        (let ((___splice2368223683_
                               (gx#syntax-split-splice _tl1819318831_ '0)))
                          (let ((_tl1821818749_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2368223683_ '1)))
                                (_target1821618746_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2368223683_ '0))))
                            (if (gx#stx-null? _tl1821818749_)
                                (___match2375223753_
                                 _e1819218814_
                                 _hd1819118818_
                                 _tl1819018821_
                                 _e1819518824_
                                 _hd1819418828_
                                 _tl1819318831_
                                 _e1819818834_
                                 _hd1819718838_
                                 _tl1819618841_
                                 _e1821518736_
                                 _hd1821418740_
                                 _tl1821318743_
                                 ___splice2368223683_
                                 _target1821618746_
                                 _tl1821818749_)
                                (if (gx#stx-pair/null? _hd1819418828_)
                                    (let ((___splice2368623687_
                                           (gx#syntax-split-splice
                                            _hd1819418828_
                                            '0)))
                                      (let ((_tl1823518286_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice2368623687_
                                                '1)))
                                            (_target1823318283_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice2368623687_
                                                '0))))
                                        (if (gx#stx-null? _tl1823518286_)
                                            (___match2377223773_
                                             _e1819218814_
                                             _hd1819118818_
                                             _tl1819018821_
                                             _e1819518824_
                                             _hd1819418828_
                                             _tl1819318831_
                                             ___splice2368623687_
                                             _target1823318283_
                                             _tl1823518286_)
                                            (let ()
                                              (declare (not safe))
                                              (_g1818418256_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g1818418256_))))))
                        (if (gx#stx-pair/null? _hd1819418828_)
                            (let ((___splice2368623687_
                                   (gx#syntax-split-splice _hd1819418828_ '0)))
                              (let ((_tl1823518286_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice2368623687_ '1)))
                                    (_target1823318283_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice2368623687_
                                        '0))))
                                (if (gx#stx-null? _tl1823518286_)
                                    (___match2377223773_
                                     _e1819218814_
                                     _hd1819118818_
                                     _tl1819018821_
                                     _e1819518824_
                                     _hd1819418828_
                                     _tl1819318831_
                                     ___splice2368623687_
                                     _target1823318283_
                                     _tl1823518286_)
                                    (let ()
                                      (declare (not safe))
                                      (_g1818418256_)))))
                            (let () (declare (not safe)) (_g1818418256_))))
                    (if (gx#stx-pair/null? _hd1819418828_)
                        (let ((___splice2368623687_
                               (gx#syntax-split-splice _hd1819418828_ '0)))
                          (let ((_tl1823518286_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2368623687_ '1)))
                                (_target1823318283_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2368623687_ '0))))
                            (if (gx#stx-null? _tl1823518286_)
                                (___match2377223773_
                                 _e1819218814_
                                 _hd1819118818_
                                 _tl1819018821_
                                 _e1819518824_
                                 _hd1819418828_
                                 _tl1819318831_
                                 ___splice2368623687_
                                 _target1823318283_
                                 _tl1823518286_)
                                (let ()
                                  (declare (not safe))
                                  (_g1818418256_)))))
                        (let () (declare (not safe)) (_g1818418256_))))
                (if (gx#stx-pair/null? _hd1819418828_)
                    (let ((___splice2368623687_
                           (gx#syntax-split-splice _hd1819418828_ '0)))
                      (let ((_tl1823518286_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice2368623687_ '1)))
                            (_target1823318283_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice2368623687_ '0))))
                        (if (gx#stx-null? _tl1823518286_)
                            (___match2377223773_
                             _e1819218814_
                             _hd1819118818_
                             _tl1819018821_
                             _e1819518824_
                             _hd1819418828_
                             _tl1819318831_
                             ___splice2368623687_
                             _target1823318283_
                             _tl1823518286_)
                            (let () (declare (not safe)) (_g1818418256_)))))
                    (let () (declare (not safe)) (_g1818418256_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _hd1819418828_)
                                                    (let ((___splice2368623687_
                                                           (gx#syntax-split-splice
                                                            _hd1819418828_
                                                            '0)))
                                                      (let ((_tl1823518286_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice2368623687_ '1)))
                    (_target1823318283_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice2368623687_ '0))))
                (if (gx#stx-null? _tl1823518286_)
                    (___match2377223773_
                     _e1819218814_
                     _hd1819118818_
                     _tl1819018821_
                     _e1819518824_
                     _hd1819418828_
                     _tl1819318831_
                     ___splice2368623687_
                     _target1823318283_
                     _tl1823518286_)
                    (let () (declare (not safe)) (_g1818418256_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g1818418256_)))))))
                                    (if (gx#stx-pair/null? _hd1819418828_)
                                        (let ((___splice2368623687_
                                               (gx#syntax-split-splice
                                                _hd1819418828_
                                                '0)))
                                          (let ((_tl1823518286_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice2368623687_
                                                    '1)))
                                                (_target1823318283_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice2368623687_
                                                    '0))))
                                            (if (gx#stx-null? _tl1823518286_)
                                                (___match2377223773_
                                                 _e1819218814_
                                                 _hd1819118818_
                                                 _tl1819018821_
                                                 _e1819518824_
                                                 _hd1819418828_
                                                 _tl1819318831_
                                                 ___splice2368623687_
                                                 _target1823318283_
                                                 _tl1823518286_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1818418256_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1818418256_))))))
                            (let () (declare (not safe)) (_g1818418256_)))))
                    (let () (declare (not safe)) (_g1818418256_)))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#alet*|
      (lambda (_$stx19216_)
        (let* ((___stx2377523776_ _$stx19216_)
               (_g1922219273_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2377523776_))))
          (let ((___kont2377823779_ (lambda () '#t))
                (___kont2378023781_
                 (lambda (_L19431_)
                   (let ((__tmp25714 (gx#datum->syntax '#f 'let))
                         (__tmp25712
                          (let ((__tmp25713
                                 (foldr (lambda (_g1944719450_ _g1944819453_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g1944719450_
                                                  _g1944819453_)))
                                        '()
                                        _L19431_)))
                            (declare (not safe))
                            (cons '() __tmp25713))))
                     (declare (not safe))
                     (cons __tmp25714 __tmp25712))))
                (___kont2378423785_
                 (lambda (_L19340_ _L19342_ _L19343_ _L19344_)
                   (let ((__tmp25721 (gx#datum->syntax '#f 'alet))
                         (__tmp25715
                          (let ((__tmp25720
                                 (let ()
                                   (declare (not safe))
                                   (cons _L19343_ '())))
                                (__tmp25716
                                 (let ((__tmp25717
                                        (let ((__tmp25718
                                               (let ((__tmp25719
                                                      (foldr (lambda (_g1936519368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1936619371_)
                       (let ()
                         (declare (not safe))
                         (cons _g1936519368_ _g1936619371_)))
                     '()
                     _L19340_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L19342_ __tmp25719))))
                                          (declare (not safe))
                                          (cons _L19344_ __tmp25718))))
                                   (declare (not safe))
                                   (cons __tmp25717 '()))))
                            (declare (not safe))
                            (cons __tmp25720 __tmp25716))))
                     (declare (not safe))
                     (cons __tmp25721 __tmp25715)))))
            (let* ((___match2385223853_
                    (lambda (_e1925219280_
                             _hd1925119284_
                             _tl1925019287_
                             _e1925519290_
                             _hd1925419294_
                             _tl1925319297_
                             _e1925819300_
                             _hd1925719304_
                             _tl1925619307_
                             ___splice2378623787_
                             _target1925919310_
                             _tl1926119313_)
                      (letrec ((_loop1926219316_
                                (lambda (_hd1926019320_ _body1926619323_)
                                  (if (gx#stx-pair? _hd1926019320_)
                                      (let ((_e1926319326_
                                             (gx#syntax-e _hd1926019320_)))
                                        (let ((_lp-tl1926519333_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1926319326_)))
                                              (_lp-hd1926419330_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1926319326_))))
                                          (_loop1926219316_
                                           _lp-tl1926519333_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1926419330_
                                                   _body1926619323_)))))
                                      (let ((_body1926719336_
                                             (reverse _body1926619323_)))
                                        (___kont2378423785_
                                         _body1926719336_
                                         _tl1925619307_
                                         _hd1925719304_
                                         _hd1925119284_))))))
                        (_loop1926219316_ _target1925919310_ '()))))
                   (___match2382623827_
                    (lambda (_e1923319381_
                             _hd1923219385_
                             _tl1923119388_
                             _e1923619391_
                             _hd1923519395_
                             _tl1923419398_
                             ___splice2378223783_
                             _target1923719401_
                             _tl1923919404_)
                      (letrec ((_loop1924019407_
                                (lambda (_hd1923819411_ _body1924419414_)
                                  (if (gx#stx-pair? _hd1923819411_)
                                      (let ((_e1924119417_
                                             (gx#syntax-e _hd1923819411_)))
                                        (let ((_lp-tl1924319424_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1924119417_)))
                                              (_lp-hd1924219421_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1924119417_))))
                                          (_loop1924019407_
                                           _lp-tl1924319424_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1924219421_
                                                   _body1924419414_)))))
                                      (let ((_body1924519427_
                                             (reverse _body1924419414_)))
                                        (___kont2378023781_
                                         _body1924519427_))))))
                        (_loop1924019407_ _target1923719401_ '())))))
              (if (gx#stx-pair? ___stx2377523776_)
                  (let ((_e1922619463_ (gx#syntax-e ___stx2377523776_)))
                    (let ((_tl1922419470_
                           (let () (declare (not safe)) (##cdr _e1922619463_)))
                          (_hd1922519467_
                           (let ()
                             (declare (not safe))
                             (##car _e1922619463_))))
                      (if (gx#stx-pair? _tl1922419470_)
                          (let ((_e1922919473_ (gx#syntax-e _tl1922419470_)))
                            (let ((_tl1922719480_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1922919473_)))
                                  (_hd1922819477_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1922919473_))))
                              (if (gx#stx-null? _hd1922819477_)
                                  (if (gx#stx-null? _tl1922719480_)
                                      (___kont2377823779_)
                                      (if (gx#stx-pair/null? _tl1922719480_)
                                          (let ((___splice2378223783_
                                                 (gx#syntax-split-splice
                                                  _tl1922719480_
                                                  '0)))
                                            (let ((_tl1923919404_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2378223783_
                                                      '1)))
                                                  (_target1923719401_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2378223783_
                                                      '0))))
                                              (if (gx#stx-null? _tl1923919404_)
                                                  (___match2382623827_
                                                   _e1922619463_
                                                   _hd1922519467_
                                                   _tl1922419470_
                                                   _e1922919473_
                                                   _hd1922819477_
                                                   _tl1922719480_
                                                   ___splice2378223783_
                                                   _target1923719401_
                                                   _tl1923919404_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1922219273_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1922219273_))))
                                  (if (gx#stx-pair? _hd1922819477_)
                                      (let ((_e1925819300_
                                             (gx#syntax-e _hd1922819477_)))
                                        (let ((_tl1925619307_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1925819300_)))
                                              (_hd1925719304_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1925819300_))))
                                          (if (gx#stx-pair/null?
                                               _tl1922719480_)
                                              (let ((___splice2378623787_
                                                     (gx#syntax-split-splice
                                                      _tl1922719480_
                                                      '0)))
                                                (let ((_tl1926119313_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2378623787_
                                                          '1)))
                                                      (_target1925919310_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2378623787_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1926119313_)
                                                      (___match2385223853_
                                                       _e1922619463_
                                                       _hd1922519467_
                                                       _tl1922419470_
                                                       _e1922919473_
                                                       _hd1922819477_
                                                       _tl1922719480_
                                                       _e1925819300_
                                                       _hd1925719304_
                                                       _tl1925619307_
                                                       ___splice2378623787_
                                                       _target1925919310_
                                                       _tl1926119313_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g1922219273_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g1922219273_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1922219273_))))))
                          (let () (declare (not safe)) (_g1922219273_)))))
                  (let () (declare (not safe)) (_g1922219273_))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#@list|
      (lambda (_$stx19493_)
        (let* ((___stx2385523856_ _$stx19493_)
               (_g1950419582_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2385523856_))))
          (let ((___kont2385823859_
                 (lambda ()
                   (let ((__tmp25723 (gx#datum->syntax '#f 'quote))
                         (__tmp25722
                          (let () (declare (not safe)) (cons '() '()))))
                     (declare (not safe))
                     (cons __tmp25723 __tmp25722))))
                (___kont2386023861_
                 (lambda (_L19913_)
                   (let ((__tmp25725 (gx#datum->syntax '#f 'quote))
                         (__tmp25724
                          (let () (declare (not safe)) (cons _L19913_ '()))))
                     (declare (not safe))
                     (cons __tmp25725 __tmp25724))))
                (___kont2386223863_
                 (lambda (_L19861_)
                   (let ((__tmp25727 (gx#datum->syntax '#f 'quasiquote))
                         (__tmp25726
                          (let () (declare (not safe)) (cons _L19861_ '()))))
                     (declare (not safe))
                     (cons __tmp25727 __tmp25726))))
                (___kont2386423865_ (lambda (_L19808_) _L19808_))
                (___kont2386623867_ (lambda (_L19750_ _L19752_) _L19752_))
                (___kont2386823869_
                 (lambda (_L19692_ _L19694_ _L19695_ _L19696_)
                   (let ((__tmp25733 (gx#datum->syntax '#f 'foldr))
                         (__tmp25728
                          (let ((__tmp25732 (gx#datum->syntax '#f 'cons))
                                (__tmp25729
                                 (let ((__tmp25731
                                        (let ()
                                          (declare (not safe))
                                          (cons _L19696_ _L19692_)))
                                       (__tmp25730
                                        (let ()
                                          (declare (not safe))
                                          (cons _L19695_ '()))))
                                   (declare (not safe))
                                   (cons __tmp25731 __tmp25730))))
                            (declare (not safe))
                            (cons __tmp25732 __tmp25729))))
                     (declare (not safe))
                     (cons __tmp25733 __tmp25728))))
                (___kont2387023871_
                 (lambda (_L19638_ _L19640_ _L19641_)
                   (let ((__tmp25737 (gx#datum->syntax '#f 'cons))
                         (__tmp25734
                          (let ((__tmp25735
                                 (let ((__tmp25736
                                        (let ()
                                          (declare (not safe))
                                          (cons _L19641_ _L19638_))))
                                   (declare (not safe))
                                   (cons __tmp25736 '()))))
                            (declare (not safe))
                            (cons _L19640_ __tmp25735))))
                     (declare (not safe))
                     (cons __tmp25737 __tmp25734))))
                (___kont2387223873_ (lambda (_L19599_) _L19599_)))
            (let* ((___match2399423995_
                    (lambda (_e1955719662_
                             _hd1955619666_
                             _tl1955519669_
                             _e1956019672_
                             _hd1955919676_
                             _tl1955819679_
                             _e1956319682_
                             _hd1956219686_
                             _tl1956119689_)
                      (let ((_L19692_ _tl1956119689_)
                            (_L19694_ _hd1956219686_)
                            (_L19695_ _hd1955919676_)
                            (_L19696_ _hd1955619666_))
                        (if (gx#ellipsis? _L19694_)
                            (___kont2386823869_
                             _L19692_
                             _L19694_
                             _L19695_
                             _L19696_)
                            (___kont2387023871_
                             _tl1955819679_
                             _hd1955919676_
                             _hd1955619666_)))))
                   (___match2397623977_
                    (lambda (_e1954419720_
                             _hd1954319724_
                             _tl1954219727_
                             _e1954719730_
                             _hd1954619734_
                             _tl1954519737_
                             _e1955019740_
                             _hd1954919744_
                             _tl1954819747_)
                      (let ((_L19750_ _hd1954919744_)
                            (_L19752_ _hd1954619734_))
                        (if (gx#ellipsis? _L19750_)
                            (___kont2386623867_ _L19750_ _L19752_)
                            (___match2399423995_
                             _e1954419720_
                             _hd1954319724_
                             _tl1954219727_
                             _e1954719730_
                             _hd1954619734_
                             _tl1954519737_
                             _e1955019740_
                             _hd1954919744_
                             _tl1954819747_))))))
              (if (gx#stx-pair? ___stx2385523856_)
                  (let ((_e1950819935_ (gx#syntax-e ___stx2385523856_)))
                    (let ((_tl1950619942_
                           (let () (declare (not safe)) (##cdr _e1950819935_)))
                          (_hd1950719939_
                           (let ()
                             (declare (not safe))
                             (##car _e1950819935_))))
                      (if (gx#stx-null? _tl1950619942_)
                          (___kont2385823859_)
                          (if (gx#stx-pair? _tl1950619942_)
                              (let ((_e1951519893_
                                     (gx#syntax-e _tl1950619942_)))
                                (let ((_tl1951319900_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1951519893_)))
                                      (_hd1951419897_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1951519893_))))
                                  (if (gx#identifier? _hd1951419897_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar$<sugar:2>[1]#_g25739_|
                                           _hd1951419897_)
                                          (if (gx#stx-pair? _tl1951319900_)
                                              (let ((_e1951819903_
                                                     (gx#syntax-e
                                                      _tl1951319900_)))
                                                (let ((_tl1951619910_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1951819903_)))
                                                      (_hd1951719907_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1951819903_))))
                                                  (if (gx#stx-null?
                                                       _tl1951619910_)
                                                      (___kont2386023861_
                                                       _hd1951719907_)
                                                      (___match2399423995_
                                                       _e1950819935_
                                                       _hd1950719939_
                                                       _tl1950619942_
                                                       _e1951519893_
                                                       _hd1951419897_
                                                       _tl1951319900_
                                                       _e1951819903_
                                                       _hd1951719907_
                                                       _tl1951619910_))))
                                              (___kont2387023871_
                                               _tl1951319900_
                                               _hd1951419897_
                                               _hd1950719939_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar$<sugar:2>[1]#_g25738_|
                                               _hd1951419897_)
                                              (if (gx#stx-pair? _tl1951319900_)
                                                  (let ((_e1952819851_
                                                         (gx#syntax-e
                                                          _tl1951319900_)))
                                                    (let ((_tl1952619858_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1952819851_)))
                                                          (_hd1952719855_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1952819851_))))
                                                      (if (gx#stx-null?
                                                           _tl1952619858_)
                                                          (___kont2386223863_
                                                           _hd1952719855_)
                                                          (___match2399423995_
                                                           _e1950819935_
                                                           _hd1950719939_
                                                           _tl1950619942_
                                                           _e1951519893_
                                                           _hd1951419897_
                                                           _tl1951319900_
                                                           _e1952819851_
                                                           _hd1952719855_
                                                           _tl1952619858_))))
                                                  (___kont2387023871_
                                                   _tl1951319900_
                                                   _hd1951419897_
                                                   _hd1950719939_))
                                              (if (gx#stx-pair? _tl1951319900_)
                                                  (let ((_e1955019740_
                                                         (gx#syntax-e
                                                          _tl1951319900_)))
                                                    (let ((_tl1954819747_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1955019740_)))
                                                          (_hd1954919744_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1955019740_))))
                                                      (if (gx#stx-null?
                                                           _tl1954819747_)
                                                          (___match2397623977_
                                                           _e1950819935_
                                                           _hd1950719939_
                                                           _tl1950619942_
                                                           _e1951519893_
                                                           _hd1951419897_
                                                           _tl1951319900_
                                                           _e1955019740_
                                                           _hd1954919744_
                                                           _tl1954819747_)
                                                          (___match2399423995_
                                                           _e1950819935_
                                                           _hd1950719939_
                                                           _tl1950619942_
                                                           _e1951519893_
                                                           _hd1951419897_
                                                           _tl1951319900_
                                                           _e1955019740_
                                                           _hd1954919744_
                                                           _tl1954819747_))))
                                                  (___kont2387023871_
                                                   _tl1951319900_
                                                   _hd1951419897_
                                                   _hd1950719939_))))
                                      (if (gx#stx-datum? _hd1951419897_)
                                          (let ((_e1953619794_
                                                 (gx#stx-e _hd1951419897_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e1953619794_ '::))
                                                (if (gx#stx-pair?
                                                     _tl1951319900_)
                                                    (let ((_e1953919798_
                                                           (gx#syntax-e
                                                            _tl1951319900_)))
                                                      (let ((_tl1953719805_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e1953919798_)))
                    (_hd1953819802_
                     (let () (declare (not safe)) (##car _e1953919798_))))
                (if (gx#stx-null? _tl1953719805_)
                    (___kont2386423865_ _hd1953819802_)
                    (___match2399423995_
                     _e1950819935_
                     _hd1950719939_
                     _tl1950619942_
                     _e1951519893_
                     _hd1951419897_
                     _tl1951319900_
                     _e1953919798_
                     _hd1953819802_
                     _tl1953719805_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2387023871_
                                                     _tl1951319900_
                                                     _hd1951419897_
                                                     _hd1950719939_))
                                                (if (gx#stx-pair?
                                                     _tl1951319900_)
                                                    (let ((_e1955019740_
                                                           (gx#syntax-e
                                                            _tl1951319900_)))
                                                      (let ((_tl1954819747_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e1955019740_)))
                    (_hd1954919744_
                     (let () (declare (not safe)) (##car _e1955019740_))))
                (if (gx#stx-null? _tl1954819747_)
                    (___match2397623977_
                     _e1950819935_
                     _hd1950719939_
                     _tl1950619942_
                     _e1951519893_
                     _hd1951419897_
                     _tl1951319900_
                     _e1955019740_
                     _hd1954919744_
                     _tl1954819747_)
                    (___match2399423995_
                     _e1950819935_
                     _hd1950719939_
                     _tl1950619942_
                     _e1951519893_
                     _hd1951419897_
                     _tl1951319900_
                     _e1955019740_
                     _hd1954919744_
                     _tl1954819747_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2387023871_
                                                     _tl1951319900_
                                                     _hd1951419897_
                                                     _hd1950719939_))))
                                          (if (gx#stx-pair? _tl1951319900_)
                                              (let ((_e1955019740_
                                                     (gx#syntax-e
                                                      _tl1951319900_)))
                                                (let ((_tl1954819747_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1955019740_)))
                                                      (_hd1954919744_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1955019740_))))
                                                  (if (gx#stx-null?
                                                       _tl1954819747_)
                                                      (___match2397623977_
                                                       _e1950819935_
                                                       _hd1950719939_
                                                       _tl1950619942_
                                                       _e1951519893_
                                                       _hd1951419897_
                                                       _tl1951319900_
                                                       _e1955019740_
                                                       _hd1954919744_
                                                       _tl1954819747_)
                                                      (___match2399423995_
                                                       _e1950819935_
                                                       _hd1950719939_
                                                       _tl1950619942_
                                                       _e1951519893_
                                                       _hd1951419897_
                                                       _tl1951319900_
                                                       _e1955019740_
                                                       _hd1954919744_
                                                       _tl1954819747_))))
                                              (___kont2387023871_
                                               _tl1951319900_
                                               _hd1951419897_
                                               _hd1950719939_))))))
                              (___kont2387223873_ _tl1950619942_)))))
                  (let () (declare (not safe)) (_g1950419582_))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#quasiquote|
      (lambda (_stx19953_)
        (letrec ((_simple-quote?19956_
                  (lambda (_e20648_)
                    (let* ((___stx2401524016_ _e20648_)
                           (_g2065620693_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2401524016_))))
                      (let ((___kont2401824019_ (lambda () '#f))
                            (___kont2402024021_ (lambda () '#f))
                            (___kont2402224023_
                             (lambda (_L20807_ _L20809_)
                               (if (_simple-quote?19956_ _L20809_)
                                   (_simple-quote?19956_ _L20807_)
                                   '#f)))
                            (___kont2402424025_
                             (lambda (_L20768_)
                               (_simple-quote?19956_
                                (foldr (lambda (_g2078120784_ _g2078220787_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g2078120784_ _g2078220787_)))
                                       '()
                                       _L20768_))))
                            (___kont2402824029_
                             (lambda (_L20715_)
                               (_simple-quote?19956_ _L20715_)))
                            (___kont2403024031_ (lambda () '#t)))
                        (let* ((_g2065420727_
                                (lambda ()
                                  (if (gx#stx-box? ___stx2401524016_)
                                      (let ((_e2068720711_
                                             (unbox (gx#syntax-e
                                                     ___stx2401524016_))))
                                        (___kont2402824029_ _e2068720711_))
                                      (___kont2403024031_))))
                               (___match2408624087_
                                (lambda (_e2067620734_
                                         ___splice2402624027_
                                         _target2067720738_
                                         _tl2067920741_)
                                  (letrec ((_loop2068020744_
                                            (lambda (_hd2067820748_
                                                     _e2068420751_)
                                              (if (gx#stx-pair? _hd2067820748_)
                                                  (let ((_e2068120754_
                                                         (gx#syntax-e
                                                          _hd2067820748_)))
                                                    (let ((_lp-tl2068320761_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2068120754_)))
                                                          (_lp-hd2068220758_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2068120754_))))
                                                      (_loop2068020744_
                                                       _lp-tl2068320761_
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _lp-hd2068220758_
                                                               _e2068420751_)))))
                                                  (let ((_e2068520764_
                                                         (reverse _e2068420751_)))
                                                    (___kont2402424025_
                                                     _e2068520764_))))))
                                    (_loop2068020744_
                                     _target2067720738_
                                     '()))))
                               (_g2065320790_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx2401524016_)
                                      (let ((_e2067620734_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx2401524016_))))
                                        (if (gx#stx-pair/null? _e2067620734_)
                                            (let ((___splice2402624027_
                                                   (gx#syntax-split-splice
                                                    _e2067620734_
                                                    '0)))
                                              (let ((_tl2067920741_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2402624027_
                                                        '1)))
                                                    (_target2067720738_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2402624027_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl2067920741_)
                                                    (___match2408624087_
                                                     _e2067620734_
                                                     ___splice2402624027_
                                                     _target2067720738_
                                                     _tl2067920741_)
                                                    (___kont2403024031_))))
                                            (___kont2403024031_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g2065420727_))))))
                          (if (gx#stx-pair? ___stx2401524016_)
                              (let ((_e2066020858_
                                     (gx#syntax-e ___stx2401524016_)))
                                (let ((_tl2065820865_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2066020858_)))
                                      (_hd2065920862_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2066020858_))))
                                  (if (gx#identifier? _hd2065920862_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar$<sugar:2>[1]#_g25741_|
                                           _hd2065920862_)
                                          (if (gx#stx-pair? _tl2065820865_)
                                              (let ((_e2066320868_
                                                     (gx#syntax-e
                                                      _tl2065820865_)))
                                                (let ((_tl2066120875_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2066320868_)))
                                                      (_hd2066220872_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2066320868_))))
                                                  (if (gx#stx-null?
                                                       _tl2066120875_)
                                                      (___kont2401824019_)
                                                      (___kont2402224023_
                                                       _tl2065820865_
                                                       _hd2065920862_))))
                                              (___kont2402224023_
                                               _tl2065820865_
                                               _hd2065920862_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar$<sugar:2>[1]#_g25740_|
                                               _hd2065920862_)
                                              (if (gx#stx-pair? _tl2065820865_)
                                                  (let ((_e2066920837_
                                                         (gx#syntax-e
                                                          _tl2065820865_)))
                                                    (let ((_tl2066720844_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2066920837_)))
                                                          (_hd2066820841_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2066920837_))))
                                                      (if (gx#stx-null?
                                                           _tl2066720844_)
                                                          (___kont2402024021_)
                                                          (___kont2402224023_
                                                           _tl2065820865_
                                                           _hd2065920862_))))
                                                  (___kont2402224023_
                                                   _tl2065820865_
                                                   _hd2065920862_))
                                              (___kont2402224023_
                                               _tl2065820865_
                                               _hd2065920862_)))
                                      (___kont2402224023_
                                       _tl2065820865_
                                       _hd2065920862_))))
                              (let ()
                                (declare (not safe))
                                (_g2065320790_))))))))
                 (_generate19958_
                  (lambda (_e20020_ _d20022_)
                    (let* ((___stx2409324094_ _e20020_)
                           (_g2003120089_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2409324094_))))
                      (let ((___kont2409624097_
                             (lambda (_L20600_)
                               (let* ((_g2061320621_
                                       (lambda (_g2061420617_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2061420617_)))
                                      (_g2061220640_
                                       (lambda (_g2061420625_)
                                         ((lambda (_L20628_)
                                            (let ()
                                              (let ((__tmp25748
                                                     (gx#datum->syntax
                                                      '#f
                                                      'list))
                                                    (__tmp25742
                                                     (let ((__tmp25744
                                                            (let ((__tmp25747
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'quote))
                          (__tmp25745
                           (let ((__tmp25746
                                  (gx#datum->syntax '#f 'quasiquote)))
                             (declare (not safe))
                             (cons __tmp25746 '()))))
                      (declare (not safe))
                      (cons __tmp25747 __tmp25745)))
                   (__tmp25743
                    (let () (declare (not safe)) (cons _L20628_ '()))))
               (declare (not safe))
               (cons __tmp25744 __tmp25743))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25748 __tmp25742))))
                                          _g2061420625_))))
                                 (_g2061220640_
                                  (_generate19958_
                                   _L20600_
                                   (let ()
                                     (declare (not safe))
                                     (fx+ _d20022_ '1)))))))
                            (___kont2409824099_
                             (lambda (_L20529_)
                               (if (let ()
                                     (declare (not safe))
                                     (fxzero? _d20022_))
                                   _L20529_
                                   (let* ((_g2054220550_
                                           (lambda (_g2054320546_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2054320546_)))
                                          (_g2054120569_
                                           (lambda (_g2054320554_)
                                             ((lambda (_L20557_)
                                                (let ()
                                                  (let ((__tmp25755
                                                         (gx#datum->syntax
                                                          '#f
                                                          'list))
                                                        (__tmp25749
                                                         (let ((__tmp25751
                                                                (let ((__tmp25754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'quote))
                              (__tmp25752
                               (let ((__tmp25753
                                      (gx#datum->syntax '#f 'unquote)))
                                 (declare (not safe))
                                 (cons __tmp25753 '()))))
                          (declare (not safe))
                          (cons __tmp25754 __tmp25752)))
                       (__tmp25750
                        (let () (declare (not safe)) (cons _L20557_ '()))))
                   (declare (not safe))
                   (cons __tmp25751 __tmp25750))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp25755
                                                          __tmp25749))))
                                              _g2054320554_))))
                                     (_g2054120569_
                                      (_generate19958_
                                       _L20529_
                                       (let ()
                                         (declare (not safe))
                                         (fx- _d20022_ '1))))))))
                            (___kont2410024101_
                             (lambda (_L20458_)
                               (if (let ()
                                     (declare (not safe))
                                     (fxzero? _d20022_))
                                   (let ((__tmp25770
                                          (gx#datum->syntax '#f 'foldr))
                                         (__tmp25763
                                          (let ((__tmp25769
                                                 (gx#datum->syntax '#f 'cons))
                                                (__tmp25764
                                                 (let ((__tmp25766
                                                        (let ((__tmp25768
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp25767
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '() '()))))
                  (declare (not safe))
                  (cons __tmp25768 __tmp25767)))
               (__tmp25765 (let () (declare (not safe)) (cons _L20458_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25766
                                                         __tmp25765))))
                                            (declare (not safe))
                                            (cons __tmp25769 __tmp25764))))
                                     (declare (not safe))
                                     (cons __tmp25770 __tmp25763))
                                   (let* ((_g2047120479_
                                           (lambda (_g2047220475_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2047220475_)))
                                          (_g2047020498_
                                           (lambda (_g2047220483_)
                                             ((lambda (_L20486_)
                                                (let ()
                                                  (let ((__tmp25762
                                                         (gx#datum->syntax
                                                          '#f
                                                          'list))
                                                        (__tmp25756
                                                         (let ((__tmp25758
                                                                (let ((__tmp25761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'quote))
                              (__tmp25759
                               (let ((__tmp25760
                                      (gx#datum->syntax
                                       '#f
                                       'unquote-splicing)))
                                 (declare (not safe))
                                 (cons __tmp25760 '()))))
                          (declare (not safe))
                          (cons __tmp25761 __tmp25759)))
                       (__tmp25757
                        (let () (declare (not safe)) (cons _L20486_ '()))))
                   (declare (not safe))
                   (cons __tmp25758 __tmp25757))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp25762
                                                          __tmp25756))))
                                              _g2047220483_))))
                                     (_g2047020498_
                                      (_generate19958_
                                       _L20458_
                                       (let ()
                                         (declare (not safe))
                                         (fx- _d20022_ '1))))))))
                            (___kont2410224103_
                             (lambda (_L20383_ _L20385_)
                               (let* ((_g2040020408_
                                       (lambda (_g2040120404_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2040120404_)))
                                      (_g2039920427_
                                       (lambda (_g2040120412_)
                                         ((lambda (_L20415_)
                                            (let ()
                                              (let ((__tmp25775
                                                     (gx#datum->syntax
                                                      '#f
                                                      'foldr))
                                                    (__tmp25771
                                                     (let ((__tmp25774
                                                            (gx#datum->syntax
                                                             '#f
                                                             'cons))
                                                           (__tmp25772
                                                            (let ((__tmp25773
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L20385_ '()))))
                      (declare (not safe))
                      (cons _L20415_ __tmp25773))))
               (declare (not safe))
               (cons __tmp25774 __tmp25772))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25775 __tmp25771))))
                                          _g2040120412_))))
                                 (_g2039920427_
                                  (_generate19958_ _L20383_ _d20022_)))))
                            (___kont2410424105_
                             (lambda (_L20269_ _L20271_)
                               (let* ((_g2028220297_
                                       (lambda (_g2028320293_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2028320293_)))
                                      (_g2028120342_
                                       (lambda (_g2028320301_)
                                         (if (gx#stx-pair? _g2028320301_)
                                             (let ((_e2028820304_
                                                    (gx#syntax-e
                                                     _g2028320301_)))
                                               (let ((_hd2028720308_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2028820304_)))
                                                     (_tl2028620311_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2028820304_))))
                                                 (if (gx#stx-pair?
                                                      _tl2028620311_)
                                                     (let ((_e2029120314_
                                                            (gx#syntax-e
                                                             _tl2028620311_)))
                                                       (let ((_hd2029020318_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2029120314_)))
                     (_tl2028920321_
                      (let () (declare (not safe)) (##cdr _e2029120314_))))
                 (if (gx#stx-null? _tl2028920321_)
                     ((lambda (_L20324_ _L20326_)
                        (let ()
                          (let ((__tmp25778 (gx#datum->syntax '#f 'cons))
                                (__tmp25776
                                 (let ((__tmp25777
                                        (let ()
                                          (declare (not safe))
                                          (cons _L20324_ '()))))
                                   (declare (not safe))
                                   (cons _L20326_ __tmp25777))))
                            (declare (not safe))
                            (cons __tmp25778 __tmp25776))))
                      _hd2029020318_
                      _hd2028720308_)
                     (_g2028220297_ _g2028320301_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2028220297_
                                                      _g2028320301_))))
                                             (_g2028220297_ _g2028320301_)))))
                                 (_g2028120342_
                                  (list (_generate19958_ _L20271_ _d20022_)
                                        (_generate19958_
                                         _L20269_
                                         _d20022_))))))
                            (___kont2410624107_
                             (lambda (_L20199_)
                               (let* ((_g2021320221_
                                       (lambda (_g2021420217_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2021420217_)))
                                      (_g2021220240_
                                       (lambda (_g2021420225_)
                                         ((lambda (_L20228_)
                                            (let ()
                                              (let ((__tmp25780
                                                     (gx#datum->syntax
                                                      '#f
                                                      'list->vector))
                                                    (__tmp25779
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L20228_ '()))))
                                                (declare (not safe))
                                                (cons __tmp25780 __tmp25779))))
                                          _g2021420225_))))
                                 (_g2021220240_
                                  (_generate19958_
                                   (foldr (lambda (_g2024320246_ _g2024420249_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g2024320246_
                                                    _g2024420249_)))
                                          '()
                                          _L20199_)
                                   _d20022_)))))
                            (___kont2411024111_
                             (lambda (_L20117_)
                               (let* ((_g2012720135_
                                       (lambda (_g2012820131_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2012820131_)))
                                      (_g2012620154_
                                       (lambda (_g2012820139_)
                                         ((lambda (_L20142_)
                                            (let ()
                                              (let ((__tmp25782
                                                     (gx#datum->syntax
                                                      '#f
                                                      'box))
                                                    (__tmp25781
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L20142_ '()))))
                                                (declare (not safe))
                                                (cons __tmp25782 __tmp25781))))
                                          _g2012820139_))))
                                 (_g2012620154_
                                  (_generate19958_ _L20117_ _d20022_)))))
                            (___kont2411224113_
                             (lambda (_L20096_)
                               (let ((__tmp25784 (gx#datum->syntax '#f 'quote))
                                     (__tmp25783
                                      (let ()
                                        (declare (not safe))
                                        (cons _L20096_ '()))))
                                 (declare (not safe))
                                 (cons __tmp25784 __tmp25783)))))
                        (let* ((_g2002920158_
                                (lambda ()
                                  (if (gx#stx-box? ___stx2409324094_)
                                      (let ((_e2008220113_
                                             (unbox (gx#syntax-e
                                                     ___stx2409324094_))))
                                        (___kont2411024111_ _e2008220113_))
                                      (___kont2411224113_ ___stx2409324094_))))
                               (___match2421224213_
                                (lambda (_e2007120165_
                                         ___splice2410824109_
                                         _target2007220169_
                                         _tl2007420172_)
                                  (letrec ((_loop2007520175_
                                            (lambda (_hd2007320179_
                                                     _e2007920182_)
                                              (if (gx#stx-pair? _hd2007320179_)
                                                  (let ((_e2007620185_
                                                         (gx#syntax-e
                                                          _hd2007320179_)))
                                                    (let ((_lp-tl2007820192_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2007620185_)))
                                                          (_lp-hd2007720189_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2007620185_))))
                                                      (_loop2007520175_
                                                       _lp-tl2007820192_
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _lp-hd2007720189_
                                                               _e2007920182_)))))
                                                  (let ((_e2008020195_
                                                         (reverse _e2007920182_)))
                                                    (___kont2410624107_
                                                     _e2008020195_))))))
                                    (_loop2007520175_
                                     _target2007220169_
                                     '()))))
                               (_g2002820252_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx2409324094_)
                                      (let ((_e2007120165_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx2409324094_))))
                                        (if (gx#stx-pair/null? _e2007120165_)
                                            (let ((___splice2410824109_
                                                   (gx#syntax-split-splice
                                                    _e2007120165_
                                                    '0)))
                                              (let ((_tl2007420172_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2410824109_
                                                        '1)))
                                                    (_target2007220169_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2410824109_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl2007420172_)
                                                    (___match2421224213_
                                                     _e2007120165_
                                                     ___splice2410824109_
                                                     _target2007220169_
                                                     _tl2007420172_)
                                                    (___kont2411224113_
                                                     ___stx2409324094_))))
                                            (___kont2411224113_
                                             ___stx2409324094_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g2002920158_))))))
                          (if (gx#stx-pair? ___stx2409324094_)
                              (let ((_e2003620580_
                                     (gx#syntax-e ___stx2409324094_)))
                                (let ((_tl2003420587_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2003620580_)))
                                      (_hd2003520584_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2003620580_))))
                                  (if (gx#identifier? _hd2003520584_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar$<sugar:2>[1]#_g25788_|
                                           _hd2003520584_)
                                          (if (gx#stx-pair? _tl2003420587_)
                                              (let ((_e2003920590_
                                                     (gx#syntax-e
                                                      _tl2003420587_)))
                                                (let ((_tl2003720597_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2003920590_)))
                                                      (_hd2003820594_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2003920590_))))
                                                  (if (gx#stx-null?
                                                       _tl2003720597_)
                                                      (___kont2409624097_
                                                       _hd2003820594_)
                                                      (___kont2410424105_
                                                       _tl2003420587_
                                                       _hd2003520584_))))
                                              (___kont2410424105_
                                               _tl2003420587_
                                               _hd2003520584_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar$<sugar:2>[1]#_g25787_|
                                               _hd2003520584_)
                                              (if (gx#stx-pair? _tl2003420587_)
                                                  (let ((_e2004620519_
                                                         (gx#syntax-e
                                                          _tl2003420587_)))
                                                    (let ((_tl2004420526_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2004620519_)))
                                                          (_hd2004520523_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2004620519_))))
                                                      (if (gx#stx-null?
                                                           _tl2004420526_)
                                                          (___kont2409824099_
                                                           _hd2004520523_)
                                                          (___kont2410424105_
                                                           _tl2003420587_
                                                           _hd2003520584_))))
                                                  (___kont2410424105_
                                                   _tl2003420587_
                                                   _hd2003520584_))
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar$<sugar:2>[1]#_g25786_|
                                                   _hd2003520584_)
                                                  (if (gx#stx-pair?
                                                       _tl2003420587_)
                                                      (let ((_e2005320448_
                                                             (gx#syntax-e
                                                              _tl2003420587_)))
                                                        (let ((_tl2005120455_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2005320448_)))
                      (_hd2005220452_
                       (let () (declare (not safe)) (##car _e2005320448_))))
                  (if (gx#stx-null? _tl2005120455_)
                      (___kont2410024101_ _hd2005220452_)
                      (___kont2410424105_ _tl2003420587_ _hd2003520584_))))
              (___kont2410424105_ _tl2003420587_ _hd2003520584_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2410424105_
                                                   _tl2003420587_
                                                   _hd2003520584_))))
                                      (if (gx#stx-pair? _hd2003520584_)
                                          (let ((_e2006120363_
                                                 (gx#syntax-e _hd2003520584_)))
                                            (let ((_tl2005920370_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2006120363_)))
                                                  (_hd2006020367_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2006120363_))))
                                              (if (gx#identifier?
                                                   _hd2006020367_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar$<sugar:2>[1]#_g25785_|
                                                       _hd2006020367_)
                                                      (if (gx#stx-pair?
                                                           _tl2005920370_)
                                                          (let ((_e2006420373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2005920370_)))
                    (let ((_tl2006220380_
                           (let () (declare (not safe)) (##cdr _e2006420373_)))
                          (_hd2006320377_
                           (let ()
                             (declare (not safe))
                             (##car _e2006420373_))))
                      (if (gx#stx-null? _tl2006220380_)
                          (if (let () (declare (not safe)) (fxzero? _d20022_))
                              (let ((_L20383_ _tl2003420587_)
                                    (_L20385_ _hd2006320377_))
                                (___kont2410224103_ _L20383_ _L20385_))
                              (___kont2410424105_
                               _tl2003420587_
                               _hd2003520584_))
                          (___kont2410424105_ _tl2003420587_ _hd2003520584_))))
                  (___kont2410424105_ _tl2003420587_ _hd2003520584_))
              (___kont2410424105_ _tl2003420587_ _hd2003520584_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2410424105_
                                                   _tl2003420587_
                                                   _hd2003520584_))))
                                          (___kont2410424105_
                                           _tl2003420587_
                                           _hd2003520584_)))))
                              (let ()
                                (declare (not safe))
                                (_g2002820252_)))))))))
          (let* ((_g1996019974_
                  (lambda (_g1996119970_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1996119970_)))
                 (_g1995920016_
                  (lambda (_g1996119978_)
                    (if (gx#stx-pair? _g1996119978_)
                        (let ((_e1996519981_ (gx#syntax-e _g1996119978_)))
                          (let ((_hd1996419985_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1996519981_)))
                                (_tl1996319988_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1996519981_))))
                            (if (gx#stx-pair? _tl1996319988_)
                                (let ((_e1996819991_
                                       (gx#syntax-e _tl1996319988_)))
                                  (let ((_hd1996719995_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1996819991_)))
                                        (_tl1996619998_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1996819991_))))
                                    (if (gx#stx-null? _tl1996619998_)
                                        ((lambda (_L20001_)
                                           (if (_simple-quote?19956_ _L20001_)
                                               (let ((__tmp25790
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp25789
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L20001_ '()))))
                                                 (declare (not safe))
                                                 (cons __tmp25790 __tmp25789))
                                               (_generate19958_ _L20001_ '0)))
                                         _hd1996719995_)
                                        (_g1996019974_ _g1996119978_))))
                                (_g1996019974_ _g1996119978_))))
                        (_g1996019974_ _g1996119978_)))))
            (_g1995920016_ _stx19953_)))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#delay|
      (lambda (_$stx20888_)
        (let* ((___stx2421924220_ _$stx20888_)
               (_g2089320914_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2421924220_))))
          (let ((___kont2422224223_
                 (lambda (_L20982_)
                   (let ((__tmp25792 (gx#datum->syntax '#f 'quote))
                         (__tmp25791
                          (let () (declare (not safe)) (cons _L20982_ '()))))
                     (declare (not safe))
                     (cons __tmp25792 __tmp25791))))
                (___kont2422424225_
                 (lambda (_L20941_)
                   (let ((__tmp25798 (gx#datum->syntax '#f 'make-promise))
                         (__tmp25793
                          (let ((__tmp25794
                                 (let ((__tmp25797
                                        (gx#datum->syntax '#f 'lambda%))
                                       (__tmp25795
                                        (let ((__tmp25796
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L20941_ '()))))
                                          (declare (not safe))
                                          (cons '() __tmp25796))))
                                   (declare (not safe))
                                   (cons __tmp25797 __tmp25795))))
                            (declare (not safe))
                            (cons __tmp25794 '()))))
                     (declare (not safe))
                     (cons __tmp25798 __tmp25793)))))
            (let ((___match2424024241_
                   (lambda (_e2089820962_
                            _hd2089720966_
                            _tl2089620969_
                            _e2090120972_
                            _hd2090020976_
                            _tl2089920979_)
                     (let ((_L20982_ _hd2090020976_))
                       (if (gx#stx-datum? _L20982_)
                           (___kont2422224223_ _L20982_)
                           (___kont2422424225_ _hd2090020976_))))))
              (if (gx#stx-pair? ___stx2421924220_)
                  (let ((_e2089820962_ (gx#syntax-e ___stx2421924220_)))
                    (let ((_tl2089620969_
                           (let () (declare (not safe)) (##cdr _e2089820962_)))
                          (_hd2089720966_
                           (let ()
                             (declare (not safe))
                             (##car _e2089820962_))))
                      (if (gx#stx-pair? _tl2089620969_)
                          (let ((_e2090120972_ (gx#syntax-e _tl2089620969_)))
                            (let ((_tl2089920979_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2090120972_)))
                                  (_hd2090020976_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2090120972_))))
                              (if (gx#stx-null? _tl2089920979_)
                                  (___match2424024241_
                                   _e2089820962_
                                   _hd2089720966_
                                   _tl2089620969_
                                   _e2090120972_
                                   _hd2090020976_
                                   _tl2089920979_)
                                  (let ()
                                    (declare (not safe))
                                    (_g2089320914_)))))
                          (let () (declare (not safe)) (_g2089320914_)))))
                  (let () (declare (not safe)) (_g2089320914_))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#cut|
      (lambda (_stx20999_)
        (letrec ((_generate21002_
                  (lambda (_rest21121_)
                    (let _lp21124_ ((_rest21127_ _rest21121_)
                                    (_hd21129_ '())
                                    (_body21130_ '()))
                      (let* ((___stx2427724278_ _rest21127_)
                             (_g2113321145_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2427724278_))))
                        (let ((___kont2428024281_
                               (lambda (_L21173_ _L21175_)
                                 (let* ((___stx2425724258_ _L21175_)
                                        (_g2119221199_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2425724258_))))
                                   (let ((___kont2426024261_
                                          (lambda ()
                                            (let ((_arg21235_ (gx#genident)))
                                              (_lp21124_
                                               _L21173_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _arg21235_ _hd21129_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _arg21235_
                                                       _body21130_))))))
                                         (___kont2426224263_
                                          (lambda ()
                                            (if (gx#stx-null? _L21173_)
                                                (let ((_tail21221_
                                                       (gx#genident)))
                                                  (values (foldl cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tail21221_
                         _hd21129_)
                  (foldl cons (list _tail21221_) _body21130_)
                  '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; cut ellipsis <...> not in tail position"
                                                 _stx20999_
                                                 _L21175_))))
                                         (___kont2426424265_
                                          (lambda ()
                                            (_lp21124_
                                             _L21173_
                                             _hd21129_
                                             (let ()
                                               (declare (not safe))
                                               (cons _L21175_ _body21130_))))))
                                     (if (gx#identifier? ___stx2425724258_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core/sugar$<sugar:2>[1]#_g25800_|
                                              ___stx2425724258_)
                                             (___kont2426024261_)
                                             (if (gx#free-identifier=?
                                                  |gerbil/core/sugar$<sugar:2>[1]#_g25799_|
                                                  ___stx2425724258_)
                                                 (___kont2426224263_)
                                                 (___kont2426424265_)))
                                         (___kont2426424265_))))))
                              (___kont2428224283_
                               (lambda ()
                                 (values (reverse _hd21129_)
                                         (reverse _body21130_)
                                         '#f))))
                          (if (gx#stx-pair? ___stx2427724278_)
                              (let ((_e2113921163_
                                     (gx#syntax-e ___stx2427724278_)))
                                (let ((_tl2113721170_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2113921163_)))
                                      (_hd2113821167_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2113921163_))))
                                  (___kont2428024281_
                                   _tl2113721170_
                                   _hd2113821167_)))
                              (___kont2428224283_))))))))
          (let* ((_g2100521016_
                  (lambda (_g2100621012_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2100621012_)))
                 (_g2100421117_
                  (lambda (_g2100621020_)
                    (if (gx#stx-pair? _g2100621020_)
                        (let ((_e2101021023_ (gx#syntax-e _g2100621020_)))
                          (let ((_hd2100921027_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2101021023_)))
                                (_tl2100821030_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2101021023_))))
                            ((lambda (_L21033_)
                               (if (and (gx#stx-list? _L21033_)
                                        (let ((__tmp25811
                                               (gx#stx-null? _L21033_)))
                                          (declare (not safe))
                                          (not __tmp25811)))
                                   (let ((_g25801_ (_generate21002_ _L21033_)))
                                     (begin
                                       (let ((_g25802_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g25801_)
                                                    (##vector-length _g25801_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g25802_ 3)))
                                             (error "Context expects 3 values"
                                                    _g25802_)))
                                       (let ((_hd21046_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g25801_ 0)))
                                             (_body21048_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g25801_ 1)))
                                             (_tail?21049_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g25801_ 2))))
                                         (let* ((_g2105121059_
                                                 (lambda (_g2105221055_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g2105221055_)))
                                                (_g2105021113_
                                                 (lambda (_g2105221063_)
                                                   ((lambda (_L21066_)
                                                      (let ()
                                                        (let* ((_g2107921087_
                                                                (lambda (_g2108021083_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g2108021083_)))
                       (_g2107821109_
                        (lambda (_g2108021091_)
                          ((lambda (_L21094_)
                             (let ()
                               (let ()
                                 (if _tail?21049_
                                     (let ((__tmp25810
                                            (gx#datum->syntax '#f 'lambda%))
                                           (__tmp25806
                                            (let ((__tmp25807
                                                   (let ((__tmp25808
                                                          (let ((__tmp25809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'apply)))
                    (declare (not safe))
                    (cons __tmp25809 _L21094_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25808 '()))))
                                              (declare (not safe))
                                              (cons _L21066_ __tmp25807))))
                                       (declare (not safe))
                                       (cons __tmp25810 __tmp25806))
                                     (let ((__tmp25805
                                            (gx#datum->syntax '#f 'lambda%))
                                           (__tmp25803
                                            (let ((__tmp25804
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L21094_ '()))))
                                              (declare (not safe))
                                              (cons _L21066_ __tmp25804))))
                                       (declare (not safe))
                                       (cons __tmp25805 __tmp25803))))))
                           _g2108021091_))))
                  (_g2107821109_ _body21048_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2105221063_))))
                                           (_g2105021113_ _hd21046_)))))
                                   (_g2100521016_ _g2100621020_)))
                             _tl2100821030_)))
                        (_g2100521016_ _g2100621020_)))))
            (_g2100421117_ _stx20999_)))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#<>|
      (lambda (_$stx21247_)
        (let ((_g2125021257_
               (lambda (_g2125121253_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g2125121253_))))
          (_g2125021257_ _$stx21247_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#<...>|
      (lambda (_$stx21261_)
        (let ((_g2126421271_
               (lambda (_g2126521267_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g2126521267_))))
          (_g2126421271_ _$stx21261_))))))
