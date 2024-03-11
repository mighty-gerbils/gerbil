(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar$<sugar:2>[1]#_g24801_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g24802_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g24803_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25671_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25674_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25675_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25736_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25737_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25738_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25739_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25783_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25784_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25785_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25786_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25797_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25798_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/sugar$<sugar:2>[:0:]#lambda|
      (lambda (_stx8932_)
        (letrec ((_simple-lambda?8935_
                  (lambda (_hd12332_)
                    (gx#stx-andmap gx#identifier? _hd12332_)))
                 (_opt-lambda?8937_
                  (lambda (_hd12184_)
                    (let _lp12187_ ((_rest12190_ _hd12184_) (_opt?12192_ '#f))
                      (let* ((___stx2269522696_ _rest12190_)
                             (_g1219512207_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2269522696_))))
                        (let ((___kont2269822699_
                               (lambda (_L12239_ _L12241_)
                                 (let* ((___stx2267122672_ _L12241_)
                                        (_g1225712271_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2267122672_))))
                                   (let ((___kont2267422675_
                                          (lambda (_L12309_)
                                            (_lp12187_ _L12239_ '#t)))
                                         (___kont2267622677_
                                          (lambda ()
                                            (if (gx#identifier? _L12241_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (not _opt?12192_))
                                                    (_lp12187_ _L12239_ '#f)
                                                    '#f)
                                                '#f))))
                                     (let ((___match2269222693_
                                            (lambda (_e1226212289_
                                                     _hd1226112293_
                                                     _tl1226012296_
                                                     _e1226512299_
                                                     _hd1226412303_
                                                     _tl1226312306_)
                                              (let ((_L12309_ _hd1226112293_))
                                                (if (gx#identifier? _L12309_)
                                                    (___kont2267422675_
                                                     _L12309_)
                                                    (___kont2267622677_))))))
                                       (if (gx#stx-pair? ___stx2267122672_)
                                           (let ((_e1226212289_
                                                  (gx#syntax-e
                                                   ___stx2267122672_)))
                                             (let ((_tl1226012296_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e1226212289_)))
                                                   (_hd1226112293_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e1226212289_))))
                                               (if (gx#stx-pair?
                                                    _tl1226012296_)
                                                   (let ((_e1226512299_
                                                          (gx#syntax-e
                                                           _tl1226012296_)))
                                                     (let ((_tl1226312306_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e1226512299_)))
                                                           (_hd1226412303_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e1226512299_))))
                                                       (if (gx#stx-null?
                                                            _tl1226312306_)
                                                           (___match2269222693_
                                                            _e1226212289_
                                                            _hd1226112293_
                                                            _tl1226012296_
                                                            _e1226512299_
                                                            _hd1226412303_
                                                            _tl1226312306_)
                                                           (___kont2267622677_))))
                                                   (___kont2267622677_))))
                                           (___kont2267622677_)))))))
                              (___kont2270022701_
                               (lambda ()
                                 (if _opt?12192_
                                     (let ((_$e12218_
                                            (gx#stx-null? _rest12190_)))
                                       (if _$e12218_
                                           _$e12218_
                                           (gx#identifier? _rest12190_)))
                                     '#f))))
                          (if (gx#stx-pair? ___stx2269522696_)
                              (let ((_e1220112229_
                                     (gx#syntax-e ___stx2269522696_)))
                                (let ((_tl1219912236_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1220112229_)))
                                      (_hd1220012233_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1220112229_))))
                                  (___kont2269822699_
                                   _tl1219912236_
                                   _hd1220012233_)))
                              (___kont2270022701_)))))))
                 (_opt-lambda-split8938_
                  (lambda (_hd12036_)
                    (let _lp12039_ ((_rest12042_ _hd12036_)
                                    (_pre12044_ '())
                                    (_opt12045_ '()))
                      (let* ((___stx2273522736_ _rest12042_)
                             (_g1204812060_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2273522736_))))
                        (let ((___kont2273822739_
                               (lambda (_L12088_ _L12090_)
                                 (let* ((___stx2271122712_ _L12090_)
                                        (_g1210612121_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2271122712_))))
                                   (let ((___kont2271422715_
                                          (lambda (_L12159_ _L12161_)
                                            (_lp12039_
                                             _L12088_
                                             _pre12044_
                                             (let ((__tmp24611
                                                    (let ((__tmp24612
                                                           (_generate-bind8941_
                                                            _L12161_)))
                                                      (declare (not safe))
                                                      (cons __tmp24612
                                                            _L12159_))))
                                               (declare (not safe))
                                               (cons __tmp24611 _opt12045_)))))
                                         (___kont2271622717_
                                          (lambda ()
                                            (_lp12039_
                                             _L12088_
                                             (let ((__tmp24613
                                                    (_generate-bind8941_
                                                     _L12090_)))
                                               (declare (not safe))
                                               (cons __tmp24613 _pre12044_))
                                             _opt12045_))))
                                     (if (gx#stx-pair? ___stx2271122712_)
                                         (let ((_e1211212139_
                                                (gx#syntax-e
                                                 ___stx2271122712_)))
                                           (let ((_tl1211012146_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1211212139_)))
                                                 (_hd1211112143_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1211212139_))))
                                             (if (gx#stx-pair? _tl1211012146_)
                                                 (let ((_e1211512149_
                                                        (gx#syntax-e
                                                         _tl1211012146_)))
                                                   (let ((_tl1211312156_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1211512149_)))
                                                         (_hd1211412153_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1211512149_))))
                                                     (if (gx#stx-null?
                                                          _tl1211312156_)
                                                         (___kont2271422715_
                                                          _hd1211412153_
                                                          _hd1211112143_)
                                                         (___kont2271622717_))))
                                                 (___kont2271622717_))))
                                         (___kont2271622717_))))))
                              (___kont2274022741_
                               (lambda ()
                                 (values (reverse _pre12044_)
                                         (reverse _opt12045_)
                                         (if (gx#identifier? _rest12042_)
                                             (_generate-bind8941_ _rest12042_)
                                             _rest12042_)))))
                          (if (gx#stx-pair? ___stx2273522736_)
                              (let ((_e1205412078_
                                     (gx#syntax-e ___stx2273522736_)))
                                (let ((_tl1205212085_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1205412078_)))
                                      (_hd1205312082_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1205412078_))))
                                  (___kont2273822739_
                                   _tl1205212085_
                                   _hd1205312082_)))
                              (___kont2274022741_)))))))
                 (_kw-lambda?8939_
                  (lambda (_hd11704_)
                    (let _lp11707_ ((_rest11710_ _hd11704_)
                                    (_opt?11712_ '#f)
                                    (_key?11713_ '#f))
                      (let* ((___stx2279922800_ _rest11710_)
                             (_g1171811748_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2279922800_))))
                        (let ((___kont2280222803_
                               (lambda (_L11943_ _L11945_ _L11946_)
                                 (let* ((___stx2277522776_ _L11945_)
                                        (_g1196111975_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2277522776_))))
                                   (let ((___kont2277822779_
                                          (lambda (_L12013_)
                                            (if (gx#identifier? _L12013_)
                                                (_lp11707_
                                                 _L11943_
                                                 _opt?11712_
                                                 '#t)
                                                '#f)))
                                         (___kont2278022781_
                                          (lambda ()
                                            (if (gx#identifier? _L11945_)
                                                (_lp11707_
                                                 _L11943_
                                                 _opt?11712_
                                                 '#t)
                                                '#f))))
                                     (if (gx#stx-pair? ___stx2277522776_)
                                         (let ((_e1196611993_
                                                (gx#syntax-e
                                                 ___stx2277522776_)))
                                           (let ((_tl1196412000_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1196611993_)))
                                                 (_hd1196511997_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1196611993_))))
                                             (if (gx#stx-pair? _tl1196412000_)
                                                 (let ((_e1196912003_
                                                        (gx#syntax-e
                                                         _tl1196412000_)))
                                                   (let ((_tl1196712010_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1196912003_)))
                                                         (_hd1196812007_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1196912003_))))
                                                     (if (gx#stx-null?
                                                          _tl1196712010_)
                                                         (___kont2277822779_
                                                          _hd1196511997_)
                                                         (___kont2278022781_))))
                                                 (___kont2278022781_))))
                                         (___kont2278022781_))))))
                              (___kont2280422805_
                               (lambda (_L11900_ _L11902_)
                                 (if (gx#identifier? _L11902_)
                                     (_lp11707_ _L11900_ _opt?11712_ '#t)
                                     '#f)))
                              (___kont2280622807_
                               (lambda (_L11780_ _L11782_)
                                 (let* ((___stx2275122752_ _L11782_)
                                        (_g1179811812_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2275122752_))))
                                   (let ((___kont2275422755_
                                          (lambda (_L11850_)
                                            (if (gx#identifier? _L11850_)
                                                (_lp11707_
                                                 _L11780_
                                                 '#t
                                                 _key?11713_)
                                                '#f)))
                                         (___kont2275622757_
                                          (lambda ()
                                            (if (gx#identifier? _L11782_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (not _opt?11712_))
                                                    (_lp11707_
                                                     _L11780_
                                                     '#f
                                                     _key?11713_)
                                                    '#f)
                                                '#f))))
                                     (if (gx#stx-pair? ___stx2275122752_)
                                         (let ((_e1180311830_
                                                (gx#syntax-e
                                                 ___stx2275122752_)))
                                           (let ((_tl1180111837_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1180311830_)))
                                                 (_hd1180211834_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1180311830_))))
                                             (if (gx#stx-pair? _tl1180111837_)
                                                 (let ((_e1180611840_
                                                        (gx#syntax-e
                                                         _tl1180111837_)))
                                                   (let ((_tl1180411847_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1180611840_)))
                                                         (_hd1180511844_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1180611840_))))
                                                     (if (gx#stx-null?
                                                          _tl1180411847_)
                                                         (___kont2275422755_
                                                          _hd1180211834_)
                                                         (___kont2275622757_))))
                                                 (___kont2275622757_))))
                                         (___kont2275622757_))))))
                              (___kont2280822809_
                               (lambda ()
                                 (if _key?11713_
                                     (let ((_$e11759_
                                            (gx#stx-null? _rest11710_)))
                                       (if _$e11759_
                                           _$e11759_
                                           (gx#identifier? _rest11710_)))
                                     '#f))))
                          (let ((___match2282222823_
                                 (lambda (_e1172511923_
                                          _hd1172411927_
                                          _tl1172311930_
                                          _e1172811933_
                                          _hd1172711937_
                                          _tl1172611940_)
                                   (let ((_L11943_ _tl1172611940_)
                                         (_L11945_ _hd1172711937_)
                                         (_L11946_ _hd1172411927_))
                                     (if (gx#stx-keyword? _L11946_)
                                         (___kont2280222803_
                                          _L11943_
                                          _L11945_
                                          _L11946_)
                                         (if (gx#stx-datum? _hd1172411927_)
                                             (let ((_e1173411886_
                                                    (gx#stx-e _hd1172411927_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (equal? _e1173411886_
                                                             '#!key))
                                                   (___kont2280422805_
                                                    _tl1172611940_
                                                    _hd1172711937_)
                                                   (___kont2280622807_
                                                    _tl1172311930_
                                                    _hd1172411927_)))
                                             (___kont2280622807_
                                              _tl1172311930_
                                              _hd1172411927_)))))))
                            (if (gx#stx-pair? ___stx2279922800_)
                                (let ((_e1172511923_
                                       (gx#syntax-e ___stx2279922800_)))
                                  (let ((_tl1172311930_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1172511923_)))
                                        (_hd1172411927_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1172511923_))))
                                    (if (gx#stx-pair? _tl1172311930_)
                                        (let ((_e1172811933_
                                               (gx#syntax-e _tl1172311930_)))
                                          (let ((_tl1172611940_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1172811933_)))
                                                (_hd1172711937_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1172811933_))))
                                            (___match2282222823_
                                             _e1172511923_
                                             _hd1172411927_
                                             _tl1172311930_
                                             _e1172811933_
                                             _hd1172711937_
                                             _tl1172611940_)))
                                        (if (gx#stx-datum? _hd1172411927_)
                                            (let ((_e1173411886_
                                                   (gx#stx-e _hd1172411927_)))
                                              (___kont2280622807_
                                               _tl1172311930_
                                               _hd1172411927_))
                                            (___kont2280622807_
                                             _tl1172311930_
                                             _hd1172411927_)))))
                                (___kont2280822809_))))))))
                 (_kw-lambda-split8940_
                  (lambda (_hd11437_)
                    (let _lp11440_ ((_rest11443_ _hd11437_)
                                    (_kwvar11445_ '#f)
                                    (_kwargs11446_ '())
                                    (_args11447_ '()))
                      (let* ((___stx2287322874_ _rest11443_)
                             (_g1145211482_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2287322874_))))
                        (let ((___kont2287622877_
                               (lambda (_L11601_ _L11603_ _L11604_)
                                 (let ((_key11618_ (gx#stx-e _L11604_)))
                                   (if (find (lambda (_kwarg11621_)
                                               (let ((__tmp24619
                                                      (car _kwarg11621_)))
                                                 (declare (not safe))
                                                 (eq? _key11618_ __tmp24619)))
                                             _kwargs11446_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"bad syntax; duplicate keyword argument"
                                        _stx8932_
                                        _hd11437_
                                        _key11618_)
                                       (let* ((___stx2284922850_ _L11603_)
                                              (_g1162511640_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  ___stx2284922850_))))
                                         (let ((___kont2285222853_
                                                (lambda (_L11678_ _L11680_)
                                                  (_lp11440_
                                                   _L11601_
                                                   _kwvar11445_
                                                   (let ((__tmp24614
                                                          (list _key11618_
                                                                (_generate-bind8941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11680_)
                        _L11678_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp24614
                                                           _kwargs11446_))
                                                   _args11447_)))
                                               (___kont2285422855_
                                                (lambda ()
                                                  (_lp11440_
                                                   _L11601_
                                                   _kwvar11445_
                                                   (let ((__tmp24615
                                                          (list _key11618_
                                                                (_generate-bind8941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11603_)
                        (let ((__tmp24618 (gx#datum->syntax '#f 'error))
                              (__tmp24616
                               (let ((__tmp24617
                                      (let ()
                                        (declare (not safe))
                                        (cons _L11604_ '()))))
                                 (declare (not safe))
                                 (cons '"Missing required keyword argument"
                                       __tmp24617))))
                          (declare (not safe))
                          (cons __tmp24618 __tmp24616)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp24615
                                                           _kwargs11446_))
                                                   _args11447_))))
                                           (if (gx#stx-pair? ___stx2284922850_)
                                               (let ((_e1163111658_
                                                      (gx#syntax-e
                                                       ___stx2284922850_)))
                                                 (let ((_tl1162911665_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1163111658_)))
                                                       (_hd1163011662_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1163111658_))))
                                                   (if (gx#stx-pair?
                                                        _tl1162911665_)
                                                       (let ((_e1163411668_
                                                              (gx#syntax-e
                                                               _tl1162911665_)))
                                                         (let ((_tl1163211675_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e1163411668_)))
                       (_hd1163311672_
                        (let () (declare (not safe)) (##car _e1163411668_))))
                   (if (gx#stx-null? _tl1163211675_)
                       (___kont2285222853_ _hd1163311672_ _hd1163011662_)
                       (___kont2285422855_))))
               (___kont2285422855_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2285422855_))))))))
                              (___kont2287822879_
                               (lambda (_L11558_ _L11560_)
                                 (if _kwvar11445_
                                     (gx#raise-syntax-error
                                      '#f
                                      '"bad syntax; duplicate #!key argument"
                                      _stx8932_
                                      _hd11437_
                                      _L11560_)
                                     (_lp11440_
                                      _L11558_
                                      (_generate-bind8941_ _L11560_)
                                      _kwargs11446_
                                      _args11447_))))
                              (___kont2288022881_
                               (lambda (_L11510_ _L11512_)
                                 (_lp11440_
                                  _L11510_
                                  _kwvar11445_
                                  _kwargs11446_
                                  (let ()
                                    (declare (not safe))
                                    (cons _L11512_ _args11447_)))))
                              (___kont2288222883_
                               (lambda ()
                                 (values _kwvar11445_
                                         (reverse _kwargs11446_)
                                         (foldl cons
                                                _rest11443_
                                                _args11447_)))))
                          (let ((___match2289622897_
                                 (lambda (_e1145911581_
                                          _hd1145811585_
                                          _tl1145711588_
                                          _e1146211591_
                                          _hd1146111595_
                                          _tl1146011598_)
                                   (let ((_L11601_ _tl1146011598_)
                                         (_L11603_ _hd1146111595_)
                                         (_L11604_ _hd1145811585_))
                                     (if (gx#stx-keyword? _L11604_)
                                         (___kont2287622877_
                                          _L11601_
                                          _L11603_
                                          _L11604_)
                                         (if (gx#stx-datum? _hd1145811585_)
                                             (let ((_e1146811544_
                                                    (gx#stx-e _hd1145811585_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (equal? _e1146811544_
                                                             '#!key))
                                                   (___kont2287822879_
                                                    _tl1146011598_
                                                    _hd1146111595_)
                                                   (___kont2288022881_
                                                    _tl1145711588_
                                                    _hd1145811585_)))
                                             (___kont2288022881_
                                              _tl1145711588_
                                              _hd1145811585_)))))))
                            (if (gx#stx-pair? ___stx2287322874_)
                                (let ((_e1145911581_
                                       (gx#syntax-e ___stx2287322874_)))
                                  (let ((_tl1145711588_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1145911581_)))
                                        (_hd1145811585_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1145911581_))))
                                    (if (gx#stx-pair? _tl1145711588_)
                                        (let ((_e1146211591_
                                               (gx#syntax-e _tl1145711588_)))
                                          (let ((_tl1146011598_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1146211591_)))
                                                (_hd1146111595_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1146211591_))))
                                            (___match2289622897_
                                             _e1145911581_
                                             _hd1145811585_
                                             _tl1145711588_
                                             _e1146211591_
                                             _hd1146111595_
                                             _tl1146011598_)))
                                        (if (gx#stx-datum? _hd1145811585_)
                                            (let ((_e1146811544_
                                                   (gx#stx-e _hd1145811585_)))
                                              (___kont2288022881_
                                               _tl1145711588_
                                               _hd1145811585_))
                                            (___kont2288022881_
                                             _tl1145711588_
                                             _hd1145811585_)))))
                                (___kont2288222883_))))))))
                 (_generate-bind8941_
                  (lambda (_e11434_)
                    (if (gx#underscore? _e11434_)
                        (gx#genident _e11434_)
                        _e11434_)))
                 (_check-duplicate-bindings8942_
                  (lambda (_hd11131_)
                    (letrec ((_cons-id11134_
                              (lambda (_id11430_ _ids11432_)
                                (if (gx#underscore? _id11430_)
                                    _ids11432_
                                    (let ()
                                      (declare (not safe))
                                      (cons _id11430_ _ids11432_))))))
                      (let _lp11137_ ((_rest11140_ _hd11131_) (_ids11142_ '()))
                        (let* ((___stx2294722948_ _rest11140_)
                               (_g1114511157_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx2294722948_))))
                          (let ((___kont2295022951_
                                 (lambda (_L11185_ _L11187_)
                                   (if (gx#identifier? _L11187_)
                                       (_lp11137_
                                        _L11185_
                                        (_cons-id11134_ _L11187_ _ids11142_))
                                       (if (gx#stx-pair? _L11187_)
                                           (let* ((_g1120311217_
                                                   (lambda (_g1120411213_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g1120411213_)))
                                                  (_g1120211258_
                                                   (lambda (_g1120411221_)
                                                     (if (gx#stx-pair?
                                                          _g1120411221_)
                                                         (let ((_e1120811224_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1120411221_)))
                   (let ((_hd1120711228_
                          (let () (declare (not safe)) (##car _e1120811224_)))
                         (_tl1120611231_
                          (let () (declare (not safe)) (##cdr _e1120811224_))))
                     (if (gx#stx-pair? _tl1120611231_)
                         (let ((_e1121111234_ (gx#syntax-e _tl1120611231_)))
                           (let ((_hd1121011238_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e1121111234_)))
                                 (_tl1120911241_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e1121111234_))))
                             (if (gx#stx-null? _tl1120911241_)
                                 ((lambda (_L11244_)
                                    (_lp11137_
                                     _L11185_
                                     (_cons-id11134_ _L11244_ _ids11142_)))
                                  _hd1120711228_)
                                 (_g1120311217_ _g1120411221_))))
                         (_g1120311217_ _g1120411221_))))
                 (_g1120311217_ _g1120411221_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1120211258_ _L11187_))
                                           (if (gx#stx-keyword? _L11187_)
                                               (let* ((_g1126211274_
                                                       (lambda (_g1126311270_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g1126311270_)))
                                                      (_g1126111376_
                                                       (lambda (_g1126311278_)
                                                         (if (gx#stx-pair?
                                                              _g1126311278_)
                                                             (let ((_e1126811281_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1126311278_)))
                       (let ((_hd1126711285_
                              (let ()
                                (declare (not safe))
                                (##car _e1126811281_)))
                             (_tl1126611288_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1126811281_))))
                         ((lambda (_L11291_ _L11293_)
                            (let* ((___stx2292322924_ _L11293_)
                                   (_g1130511319_
                                    (lambda ()
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       ___stx2292322924_))))
                              (let ((___kont2292622927_
                                     (lambda (_L11357_)
                                       (_lp11137_
                                        _L11291_
                                        (_cons-id11134_ _L11357_ _ids11142_))))
                                    (___kont2292822929_
                                     (lambda ()
                                       (_lp11137_
                                        _L11291_
                                        (_cons-id11134_
                                         _L11293_
                                         _ids11142_)))))
                                (if (gx#stx-pair? ___stx2292322924_)
                                    (let ((_e1131011337_
                                           (gx#syntax-e ___stx2292322924_)))
                                      (let ((_tl1130811344_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1131011337_)))
                                            (_hd1130911341_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1131011337_))))
                                        (if (gx#stx-pair? _tl1130811344_)
                                            (let ((_e1131311347_
                                                   (gx#syntax-e
                                                    _tl1130811344_)))
                                              (let ((_tl1131111354_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1131311347_)))
                                                    (_hd1131211351_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1131311347_))))
                                                (if (gx#stx-null?
                                                     _tl1131111354_)
                                                    (___kont2292622927_
                                                     _hd1130911341_)
                                                    (___kont2292822929_))))
                                            (___kont2292822929_))))
                                    (___kont2292822929_)))))
                          _tl1126611288_
                          _hd1126711285_)))
                     (_g1126211274_ _g1126311278_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1126111376_ _L11185_))
                                               (if (let ((__tmp24620
                                                          (gx#stx-e _L11187_)))
                                                     (declare (not safe))
                                                     (eq? __tmp24620 '#!key))
                                                   (let* ((_g1138011392_
                                                           (lambda (_g1138111388_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g1138111388_)))
                                                          (_g1137911422_
                                                           (lambda (_g1138111396_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1138111396_)
                         (let ((_e1138611399_ (gx#syntax-e _g1138111396_)))
                           (let ((_hd1138511403_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e1138611399_)))
                                 (_tl1138411406_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e1138611399_))))
                             ((lambda (_L11409_ _L11411_)
                                (_lp11137_
                                 _L11409_
                                 (_cons-id11134_ _L11411_ _ids11142_)))
                              _tl1138411406_
                              _hd1138511403_)))
                         (_g1138011392_ _g1138111396_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1137911422_ _L11185_))
                                                   (error '"BUG: check-duplicate-bindings"
                                                          _stx8932_
                                                          _rest11140_)))))))
                                (___kont2295222953_
                                 (lambda ()
                                   (gx#check-duplicate-identifiers
                                    (if (gx#stx-null? _rest11140_)
                                        _ids11142_
                                        (_cons-id11134_
                                         _rest11140_
                                         _ids11142_))
                                    _stx8932_))))
                            (if (gx#stx-pair? ___stx2294722948_)
                                (let ((_e1115111175_
                                       (gx#syntax-e ___stx2294722948_)))
                                  (let ((_tl1114911182_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1115111175_)))
                                        (_hd1115011179_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1115111175_))))
                                    (___kont2295022951_
                                     _tl1114911182_
                                     _hd1115011179_)))
                                (___kont2295222953_))))))))
                 (_generate-opt-primary8943_
                  (lambda (_pre10923_ _opt10925_ _tail10926_ _body10927_)
                    (let* ((_g1092910970_
                            (lambda (_g1093010966_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g1093010966_)))
                           (_g1092811127_
                            (lambda (_g1093010974_)
                              (if (gx#stx-pair? _g1093010974_)
                                  (let ((_e1093710977_
                                         (gx#syntax-e _g1093010974_)))
                                    (let ((_hd1093610981_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1093710977_)))
                                          (_tl1093510984_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1093710977_))))
                                      (if (gx#stx-pair/null? _hd1093610981_)
                                          (let ((_g24621_
                                                 (gx#syntax-split-splice
                                                  _hd1093610981_
                                                  '0)))
                                            (begin
                                              (let ((_g24622_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g24621_)
                                                           (##vector-length
                                                            _g24621_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g24622_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g24622_)))
                                              (let ((_target1093810987_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g24621_
                                                        0)))
                                                    (_tl1094010990_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g24621_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _tl1094010990_)
                                                    (letrec ((_loop1094110993_
                                                              (lambda (_hd1093910997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _pre1094511000_)
                        (if (gx#stx-pair? _hd1093910997_)
                            (let ((_e1094211003_ (gx#syntax-e _hd1093910997_)))
                              (let ((_lp-hd1094311007_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1094211003_)))
                                    (_lp-tl1094411010_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1094211003_))))
                                (_loop1094110993_
                                 _lp-tl1094411010_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd1094311007_ _pre1094511000_)))))
                            (let ((_pre1094611013_ (reverse _pre1094511000_)))
                              (if (gx#stx-pair? _tl1093510984_)
                                  (let ((_e1094911017_
                                         (gx#syntax-e _tl1093510984_)))
                                    (let ((_hd1094811021_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1094911017_)))
                                          (_tl1094711024_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1094911017_))))
                                      (if (gx#stx-pair/null? _hd1094811021_)
                                          (let ((_g24623_
                                                 (gx#syntax-split-splice
                                                  _hd1094811021_
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
                                              (let ((_target1095011027_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g24623_
                                                        0)))
                                                    (_tl1095211030_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g24623_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _tl1095211030_)
                                                    (letrec ((_loop1095311033_
                                                              (lambda (_hd1095111037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _opt1095711040_)
                        (if (gx#stx-pair? _hd1095111037_)
                            (let ((_e1095411043_ (gx#syntax-e _hd1095111037_)))
                              (let ((_lp-hd1095511047_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1095411043_)))
                                    (_lp-tl1095611050_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1095411043_))))
                                (_loop1095311033_
                                 _lp-tl1095611050_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd1095511047_ _opt1095711040_)))))
                            (let ((_opt1095811053_ (reverse _opt1095711040_)))
                              (if (gx#stx-pair? _tl1094711024_)
                                  (let ((_e1096111057_
                                         (gx#syntax-e _tl1094711024_)))
                                    (let ((_hd1096011061_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1096111057_)))
                                          (_tl1095911064_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1096111057_))))
                                      (if (gx#stx-pair? _tl1095911064_)
                                          (let ((_e1096411067_
                                                 (gx#syntax-e _tl1095911064_)))
                                            (let ((_hd1096311071_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1096411067_)))
                                                  (_tl1096211074_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1096411067_))))
                                              (if (gx#stx-null? _tl1096211074_)
                                                  ((lambda (_L11077_
                                                            _L11079_
                                                            _L11080_
                                                            _L11081_)
                                                     (let ()
                                                       (let ((__tmp24627
                                                              (gx#datum->syntax
                                                               '#f
                                                               'lambda%))
                                                             (__tmp24625
                                                              (let ((__tmp24626
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr (lambda (_g1111011115_ _g1111111118_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g1111011115_ _g1111111118_)))
                                    (foldr (lambda (_g1111211121_
                                                    _g1111311124_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g1111211121_
                                                     _g1111311124_)))
                                           _L11079_
                                           _L11080_)
                                    _L11081_)))
                        (declare (not safe))
                        (cons __tmp24626 _L11077_))))
                 (declare (not safe))
                 (cons __tmp24627 __tmp24625))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd1096311071_
                                                   _hd1096011061_
                                                   _opt1095811053_
                                                   _pre1094611013_)
                                                  (_g1092910970_
                                                   _g1093010974_))))
                                          (_g1092910970_ _g1093010974_))))
                                  (_g1092910970_ _g1093010974_)))))))
              (_loop1095311033_ _target1095011027_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1092910970_
                                                     _g1093010974_)))))
                                          (_g1092910970_ _g1093010974_))))
                                  (_g1092910970_ _g1093010974_)))))))
              (_loop1094110993_ _target1093810987_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1092910970_
                                                     _g1093010974_)))))
                                          (_g1092910970_ _g1093010974_))))
                                  (_g1092910970_ _g1093010974_)))))
                      (_g1092811127_
                       (list _pre10923_
                             (map car _opt10925_)
                             _tail10926_
                             _body10927_)))))
                 (_generate-opt-dispatch8944_
                  (lambda (_primary10917_ _pre10919_ _opt10920_ _tail10921_)
                    (let ((__tmp24629
                           (list _pre10919_
                                 (_generate-opt-clause8946_
                                  _primary10917_
                                  _pre10919_
                                  _opt10920_)))
                          (__tmp24628
                           (_generate-opt-dispatch*8945_
                            _primary10917_
                            _pre10919_
                            _opt10920_
                            _tail10921_)))
                      (declare (not safe))
                      (cons __tmp24629 __tmp24628))))
                 (_generate-opt-dispatch*8945_
                  (lambda (_primary10474_ _pre10476_ _opt10477_ _tail10478_)
                    (let _recur10480_ ((_opt-rest10483_ _opt10477_)
                                       (_right10485_ '()))
                      (if (let () (declare (not safe)) (pair? _opt-rest10483_))
                          (let* ((_hd10487_ (caar _opt-rest10483_))
                                 (_rest10490_ (cdr _opt-rest10483_))
                                 (_right*10493_
                                  (let ()
                                    (declare (not safe))
                                    (cons _hd10487_ _right10485_)))
                                 (_g1049610513_
                                  (lambda (_g1049710509_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1049710509_)))
                                 (_g1049510696_
                                  (lambda (_g1049710517_)
                                    (if (gx#stx-pair/null? _g1049710517_)
                                        (let ((_g24637_
                                               (gx#syntax-split-splice
                                                _g1049710517_
                                                '0)))
                                          (begin
                                            (let ((_g24638_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g24637_)
                                                         (##vector-length
                                                          _g24637_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g24638_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g24638_)))
                                            (let ((_target1049910520_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g24637_
                                                      0)))
                                                  (_tl1050110523_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g24637_
                                                      1))))
                                              (if (gx#stx-null? _tl1050110523_)
                                                  (letrec ((_loop1050210526_
                                                            (lambda (_hd1050010530_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-bind1050610533_)
                      (if (gx#stx-pair? _hd1050010530_)
                          (let ((_e1050310536_ (gx#syntax-e _hd1050010530_)))
                            (let ((_lp-hd1050410540_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1050310536_)))
                                  (_lp-tl1050510543_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1050310536_))))
                              (_loop1050210526_
                               _lp-tl1050510543_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd1050410540_
                                       _pre-bind1050610533_)))))
                          (let ((_pre-bind1050710546_
                                 (reverse _pre-bind1050610533_)))
                            ((lambda (_L10550_)
                               (let ()
                                 (let* ((_g1057110588_
                                         (lambda (_g1057210584_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g1057210584_)))
                                        (_g1057010692_
                                         (lambda (_g1057210592_)
                                           (if (gx#stx-pair/null?
                                                _g1057210592_)
                                               (let ((_g24639_
                                                      (gx#syntax-split-splice
                                                       _g1057210592_
                                                       '0)))
                                                 (begin
                                                   (let ((_g24640_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g24639_)
                        (##vector-length _g24639_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g24640_ 2)))
                 (error "Context expects 2 values" _g24640_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target1057410595_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g24639_
                                                             0)))
                                                         (_tl1057610598_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g24639_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl1057610598_)
                                                         (letrec ((_loop1057710601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd1057510605_ _opt-bind1058110608_)
                             (if (gx#stx-pair? _hd1057510605_)
                                 (let ((_e1057810611_
                                        (gx#syntax-e _hd1057510605_)))
                                   (let ((_lp-hd1057910615_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e1057810611_)))
                                         (_lp-tl1058010618_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e1057810611_))))
                                     (_loop1057710601_
                                      _lp-tl1058010618_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd1057910615_
                                              _opt-bind1058110608_)))))
                                 (let ((_opt-bind1058210621_
                                        (reverse _opt-bind1058110608_)))
                                   ((lambda (_L10625_)
                                      (let ()
                                        (let* ((_g1064210650_
                                                (lambda (_g1064310646_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g1064310646_)))
                                               (_g1064110688_
                                                (lambda (_g1064310654_)
                                                  ((lambda (_L10657_)
                                                     (let ()
                                                       (let ()
                                                         (let ((__tmp24642
                                                                (list (foldr (lambda (_g1067110676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              _g1067210679_)
                                       (let ()
                                         (declare (not safe))
                                         (cons _g1067110676_ _g1067210679_)))
                                     (foldr (lambda (_g1067310682_
                                                     _g1067410685_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g1067310682_
                                                      _g1067410685_)))
                                            (let ()
                                              (declare (not safe))
                                              (cons _L10657_ '()))
                                            _L10625_)
                                     _L10550_)
                              (_generate-opt-clause8946_
                               _primary10474_
                               (foldr cons (reverse _right*10493_) _pre10476_)
                               _rest10490_)))
                       (__tmp24641 (_recur10480_ _rest10490_ _right*10493_)))
                   (declare (not safe))
                   (cons __tmp24642 __tmp24641)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1064310654_))))
                                          (_g1064110688_ _hd10487_))))
                                    _opt-bind1058210621_))))))
                   (_loop1057710601_ _target1057410595_ '()))
                 (_g1057110588_ _g1057210592_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1057110588_
                                                _g1057210592_)))))
                                   (_g1057010692_ (reverse _right10485_)))))
                             _pre-bind1050710546_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1050210526_
                                                     _target1049910520_
                                                     '()))
                                                  (_g1049610513_
                                                   _g1049710517_)))))
                                        (_g1049610513_ _g1049710517_)))))
                            (_g1049510696_ _pre10476_))
                          (if (gx#stx-null? _tail10478_)
                              '()
                              (let* ((_g1070010741_
                                      (lambda (_g1070110737_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g1070110737_)))
                                     (_g1069910913_
                                      (lambda (_g1070110745_)
                                        (if (gx#stx-pair? _g1070110745_)
                                            (let ((_e1070810748_
                                                   (gx#syntax-e
                                                    _g1070110745_)))
                                              (let ((_hd1070710752_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1070810748_)))
                                                    (_tl1070610755_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1070810748_))))
                                                (if (gx#stx-pair/null?
                                                     _hd1070710752_)
                                                    (let ((_g24630_
                                                           (gx#syntax-split-splice
                                                            _hd1070710752_
                                                            '0)))
                                                      (begin
                                                        (let ((_g24631_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g24630_)
                             (##vector-length _g24630_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g24631_ 2)))
                      (error "Context expects 2 values" _g24631_)))
                (let ((_target1070910758_
                       (let () (declare (not safe)) (##vector-ref _g24630_ 0)))
                      (_tl1071110761_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g24630_ 1))))
                  (if (gx#stx-null? _tl1071110761_)
                      (letrec ((_loop1071210764_
                                (lambda (_hd1071010768_ _pre1071610771_)
                                  (if (gx#stx-pair? _hd1071010768_)
                                      (let ((_e1071310774_
                                             (gx#syntax-e _hd1071010768_)))
                                        (let ((_lp-hd1071410778_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1071310774_)))
                                              (_lp-tl1071510781_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1071310774_))))
                                          (_loop1071210764_
                                           _lp-tl1071510781_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1071410778_
                                                   _pre1071610771_)))))
                                      (let ((_pre1071710784_
                                             (reverse _pre1071610771_)))
                                        (if (gx#stx-pair? _tl1070610755_)
                                            (let ((_e1072010788_
                                                   (gx#syntax-e
                                                    _tl1070610755_)))
                                              (let ((_hd1071910792_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1072010788_)))
                                                    (_tl1071810795_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1072010788_))))
                                                (if (gx#stx-pair/null?
                                                     _hd1071910792_)
                                                    (let ((_g24632_
                                                           (gx#syntax-split-splice
                                                            _hd1071910792_
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
                (let ((_target1072110798_
                       (let () (declare (not safe)) (##vector-ref _g24632_ 0)))
                      (_tl1072310801_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g24632_ 1))))
                  (if (gx#stx-null? _tl1072310801_)
                      (letrec ((_loop1072410804_
                                (lambda (_hd1072210808_ _opt1072810811_)
                                  (if (gx#stx-pair? _hd1072210808_)
                                      (let ((_e1072510814_
                                             (gx#syntax-e _hd1072210808_)))
                                        (let ((_lp-hd1072610818_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1072510814_)))
                                              (_lp-tl1072710821_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1072510814_))))
                                          (_loop1072410804_
                                           _lp-tl1072710821_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1072610818_
                                                   _opt1072810811_)))))
                                      (let ((_opt1072910824_
                                             (reverse _opt1072810811_)))
                                        (if (gx#stx-pair? _tl1071810795_)
                                            (let ((_e1073210828_
                                                   (gx#syntax-e
                                                    _tl1071810795_)))
                                              (let ((_hd1073110832_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1073210828_)))
                                                    (_tl1073010835_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1073210828_))))
                                                (if (gx#stx-pair?
                                                     _tl1073010835_)
                                                    (let ((_e1073510838_
                                                           (gx#syntax-e
                                                            _tl1073010835_)))
                                                      (let ((_hd1073410842_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1073510838_)))
                    (_tl1073310845_
                     (let () (declare (not safe)) (##cdr _e1073510838_))))
                (if (gx#stx-null? _tl1073310845_)
                    ((lambda (_L10848_ _L10850_ _L10851_ _L10852_)
                       (let ()
                         (list (list (foldr (lambda (_g1088010885_
                                                     _g1088110888_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g1088010885_
                                                      _g1088110888_)))
                                            (foldr (lambda (_g1088210891_
                                                            _g1088310894_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1088210891_
                                                             _g1088310894_)))
                                                   _L10850_
                                                   _L10851_)
                                            _L10852_)
                                     (gx#stx-wrap-source
                                      (let ((__tmp24636
                                             (gx#datum->syntax '#f 'apply))
                                            (__tmp24634
                                             (let ((__tmp24635
                                                    (foldr (lambda (_g1089610901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1089710904_)
                     (let ()
                       (declare (not safe))
                       (cons _g1089610901_ _g1089710904_)))
                   (foldr (lambda (_g1089810907_ _g1089910910_)
                            (let ()
                              (declare (not safe))
                              (cons _g1089810907_ _g1089910910_)))
                          (let () (declare (not safe)) (cons _L10850_ '()))
                          _L10851_)
                   _L10852_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L10848_ __tmp24635))))
                                        (declare (not safe))
                                        (cons __tmp24636 __tmp24634))
                                      (gx#stx-source _stx8932_))))))
                     _hd1073410842_
                     _hd1073110832_
                     _opt1072910824_
                     _pre1071710784_)
                    (_g1070010741_ _g1070110745_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1070010741_
                                                     _g1070110745_))))
                                            (_g1070010741_ _g1070110745_)))))))
                        (_loop1072410804_ _target1072110798_ '()))
                      (_g1070010741_ _g1070110745_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1070010741_
                                                     _g1070110745_))))
                                            (_g1070010741_ _g1070110745_)))))))
                        (_loop1071210764_ _target1070910758_ '()))
                      (_g1070010741_ _g1070110745_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1070010741_
                                                     _g1070110745_))))
                                            (_g1070010741_ _g1070110745_)))))
                                (_g1069910913_
                                 (list _pre10476_
                                       (reverse _right10485_)
                                       _tail10478_
                                       _primary10474_))))))))
                 (_generate-opt-clause8946_
                  (lambda (_primary10172_ _pre10174_ _opt10175_)
                    (let _recur10177_ ((_opt-rest10180_ _opt10175_)
                                       (_right10182_ '()))
                      (if (let () (declare (not safe)) (pair? _opt-rest10180_))
                          (let* ((_hd10184_ (car _opt-rest10180_))
                                 (_rest10187_ (cdr _opt-rest10180_))
                                 (_g1019010198_
                                  (lambda (_g1019110194_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1019110194_)))
                                 (_g1018910287_
                                  (lambda (_g1019110202_)
                                    ((lambda (_L10205_)
                                       (let ()
                                         (let* ((_g1022110229_
                                                 (lambda (_g1022210225_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g1022210225_)))
                                                (_g1022010283_
                                                 (lambda (_g1022210233_)
                                                   ((lambda (_L10236_)
                                                      (let ()
                                                        (let* ((_g1024910257_
                                                                (lambda (_g1025010253_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g1025010253_)))
                       (_g1024810279_
                        (lambda (_g1025010261_)
                          ((lambda (_L10264_)
                             (let ()
                               (let ()
                                 (let ((__tmp24654
                                        (gx#datum->syntax '#f 'let-values))
                                       (__tmp24648
                                        (let ((__tmp24650
                                               (let ((__tmp24651
                                                      (let ((__tmp24653
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L10205_ '())))
                    (__tmp24652
                     (let () (declare (not safe)) (cons _L10236_ '()))))
                (declare (not safe))
                (cons __tmp24653 __tmp24652))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24651 '())))
                                              (__tmp24649
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L10264_ '()))))
                                          (declare (not safe))
                                          (cons __tmp24650 __tmp24649))))
                                   (declare (not safe))
                                   (cons __tmp24654 __tmp24648)))))
                           _g1025010261_))))
                  (_g1024810279_
                   (_recur10177_
                    _rest10187_
                    (let ()
                      (declare (not safe))
                      (cons _L10205_ _right10182_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1022210233_))))
                                           (_g1022010283_ (cdr _hd10184_)))))
                                     _g1019110202_))))
                            (_g1018910287_ (car _hd10184_)))
                          (let* ((_g1029110328_
                                  (lambda (_g1029210324_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1029210324_)))
                                 (_g1029010470_
                                  (lambda (_g1029210332_)
                                    (if (gx#stx-pair? _g1029210332_)
                                        (let ((_e1029810335_
                                               (gx#syntax-e _g1029210332_)))
                                          (let ((_hd1029710339_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1029810335_)))
                                                (_tl1029610342_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1029810335_))))
                                            (if (gx#stx-pair/null?
                                                 _hd1029710339_)
                                                (let ((_g24643_
                                                       (gx#syntax-split-splice
                                                        _hd1029710339_
                                                        '0)))
                                                  (begin
                                                    (let ((_g24644_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g24643_)
                         (##vector-length _g24643_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g24644_ 2)))
                  (error "Context expects 2 values" _g24644_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1029910345_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g24643_
                                                              0)))
                                                          (_tl1030110348_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g24643_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1030110348_)
                                                          (letrec ((_loop1030210351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1030010355_ _pre1030610358_)
                              (if (gx#stx-pair? _hd1030010355_)
                                  (let ((_e1030310361_
                                         (gx#syntax-e _hd1030010355_)))
                                    (let ((_lp-hd1030410365_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1030310361_)))
                                          (_lp-tl1030510368_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1030310361_))))
                                      (_loop1030210351_
                                       _lp-tl1030510368_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1030410365_
                                               _pre1030610358_)))))
                                  (let ((_pre1030710371_
                                         (reverse _pre1030610358_)))
                                    (if (gx#stx-pair? _tl1029610342_)
                                        (let ((_e1031010375_
                                               (gx#syntax-e _tl1029610342_)))
                                          (let ((_hd1030910379_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1031010375_)))
                                                (_tl1030810382_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1031010375_))))
                                            (if (gx#stx-pair/null?
                                                 _hd1030910379_)
                                                (let ((_g24645_
                                                       (gx#syntax-split-splice
                                                        _hd1030910379_
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
                                                    (let ((_target1031110385_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g24645_
                                                              0)))
                                                          (_tl1031310388_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g24645_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1031310388_)
                                                          (letrec ((_loop1031410391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1031210395_ _opt1031810398_)
                              (if (gx#stx-pair? _hd1031210395_)
                                  (let ((_e1031510401_
                                         (gx#syntax-e _hd1031210395_)))
                                    (let ((_lp-hd1031610405_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1031510401_)))
                                          (_lp-tl1031710408_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1031510401_))))
                                      (_loop1031410391_
                                       _lp-tl1031710408_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1031610405_
                                               _opt1031810398_)))))
                                  (let ((_opt1031910411_
                                         (reverse _opt1031810398_)))
                                    (if (gx#stx-pair? _tl1030810382_)
                                        (let ((_e1032210415_
                                               (gx#syntax-e _tl1030810382_)))
                                          (let ((_hd1032110419_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1032210415_)))
                                                (_tl1032010422_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1032210415_))))
                                            (if (gx#stx-null? _tl1032010422_)
                                                ((lambda (_L10425_
                                                          _L10427_
                                                          _L10428_)
                                                   (let ()
                                                     (gx#stx-wrap-source
                                                      (let ((__tmp24647
                                                             (foldr (lambda (_g1045310458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1045410461_)
                              (let ()
                                (declare (not safe))
                                (cons _g1045310458_ _g1045410461_)))
                            (foldr (lambda (_g1045510464_ _g1045610467_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g1045510464_ _g1045610467_)))
                                   '()
                                   _L10427_)
                            _L10428_)))
                (declare (not safe))
                (cons _L10425_ __tmp24647))
              (gx#stx-source _stx8932_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1032110419_
                                                 _opt1031910411_
                                                 _pre1030710371_)
                                                (_g1029110328_
                                                 _g1029210332_))))
                                        (_g1029110328_ _g1029210332_)))))))
                    (_loop1031410391_ _target1031110385_ '()))
                  (_g1029110328_ _g1029210332_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1029110328_
                                                 _g1029210332_))))
                                        (_g1029110328_ _g1029210332_)))))))
                    (_loop1030210351_ _target1029910345_ '()))
                  (_g1029110328_ _g1029210332_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1029110328_
                                                 _g1029210332_))))
                                        (_g1029110328_ _g1029210332_)))))
                            (_g1029010470_
                             (list _pre10174_
                                   (reverse _right10182_)
                                   _primary10172_)))))))
                 (_generate-kw-primary8947_
                  (lambda (_key9548_ _kwargs9550_ _args9551_ _body9552_)
                    (letrec ((_make-body9554_
                              (lambda (_kwargs10041_ _kwvals10043_)
                                (if (let ()
                                      (declare (not safe))
                                      (pair? _kwargs10041_))
                                    (let* ((_kwarg10045_ (car _kwargs10041_))
                                           (_var10048_ (cadr _kwarg10045_))
                                           (_default10051_
                                            (caddr _kwarg10045_))
                                           (_kwval10054_ (car _kwvals10043_))
                                           (_rest-kwargs10057_
                                            (cdr _kwargs10041_))
                                           (_rest-kwvals10060_
                                            (cdr _kwvals10043_)))
                                      (let* ((_g1006510088_
                                              (lambda (_g1006610084_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _g1006610084_)))
                                             (_g1006410168_
                                              (lambda (_g1006610092_)
                                                (if (gx#stx-pair?
                                                     _g1006610092_)
                                                    (let ((_e1007310095_
                                                           (gx#syntax-e
                                                            _g1006610092_)))
                                                      (let ((_hd1007210099_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1007310095_)))
                    (_tl1007110102_
                     (let () (declare (not safe)) (##cdr _e1007310095_))))
                (if (gx#stx-pair? _tl1007110102_)
                    (let ((_e1007610105_ (gx#syntax-e _tl1007110102_)))
                      (let ((_hd1007510109_
                             (let ()
                               (declare (not safe))
                               (##car _e1007610105_)))
                            (_tl1007410112_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1007610105_))))
                        (if (gx#stx-pair? _tl1007410112_)
                            (let ((_e1007910115_ (gx#syntax-e _tl1007410112_)))
                              (let ((_hd1007810119_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1007910115_)))
                                    (_tl1007710122_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1007910115_))))
                                (if (gx#stx-pair? _tl1007710122_)
                                    (let ((_e1008210125_
                                           (gx#syntax-e _tl1007710122_)))
                                      (let ((_hd1008110129_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1008210125_)))
                                            (_tl1008010132_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1008210125_))))
                                        (if (gx#stx-null? _tl1008010132_)
                                            ((lambda (_L10135_
                                                      _L10137_
                                                      _L10138_
                                                      _L10139_)
                                               (let ()
                                                 (let ((__tmp24671
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let-values))
                                                       (__tmp24655
                                                        (let ((__tmp24657
                                                               (let ((__tmp24658
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp24670
                                     (let ()
                                       (declare (not safe))
                                       (cons _L10139_ '())))
                                    (__tmp24659
                                     (let ((__tmp24660
                                            (let ((__tmp24669
                                                   (gx#datum->syntax '#f 'if))
                                                  (__tmp24661
                                                   (let ((__tmp24664
                                                          (let ((__tmp24668
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'eq?))
                        (__tmp24665
                         (let ((__tmp24666
                                (let ((__tmp24667
                                       (gx#datum->syntax '#f 'absent-value)))
                                  (declare (not safe))
                                  (cons __tmp24667 '()))))
                           (declare (not safe))
                           (cons _L10138_ __tmp24666))))
                    (declare (not safe))
                    (cons __tmp24668 __tmp24665)))
                 (__tmp24662
                  (let ((__tmp24663
                         (let () (declare (not safe)) (cons _L10138_ '()))))
                    (declare (not safe))
                    (cons _L10137_ __tmp24663))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp24664
                                                           __tmp24662))))
                                              (declare (not safe))
                                              (cons __tmp24669 __tmp24661))))
                                       (declare (not safe))
                                       (cons __tmp24660 '()))))
                                (declare (not safe))
                                (cons __tmp24670 __tmp24659))))
                         (declare (not safe))
                         (cons __tmp24658 '())))
                      (__tmp24656
                       (let () (declare (not safe)) (cons _L10135_ '()))))
                  (declare (not safe))
                  (cons __tmp24657 __tmp24656))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24671
                                                         __tmp24655))))
                                             _hd1008110129_
                                             _hd1007810119_
                                             _hd1007510109_
                                             _hd1007210099_)
                                            (_g1006510088_ _g1006610092_))))
                                    (_g1006510088_ _g1006610092_))))
                            (_g1006510088_ _g1006610092_))))
                    (_g1006510088_ _g1006610092_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1006510088_
                                                     _g1006610092_)))))
                                        (_g1006410168_
                                         (list _var10048_
                                               _kwval10054_
                                               _default10051_
                                               (_make-body9554_
                                                _rest-kwargs10057_
                                                _rest-kwvals10060_)))))
                                    (let ()
                                      (declare (not safe))
                                      (cons 'begin _body9552_)))))
                             (_make-main9556_
                              (lambda ()
                                (let* ((_g98499857_
                                        (lambda (_g98509853_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g98509853_)))
                                       (_g984810033_
                                        (lambda (_g98509861_)
                                          ((lambda (_L9864_)
                                             (let ()
                                               (let* ((_g98769893_
                                                       (lambda (_g98779889_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g98779889_)))
                                                      (_g987510029_
                                                       (lambda (_g98779897_)
                                                         (if (gx#stx-pair/null?
                                                              _g98779897_)
                                                             (let ((_g24672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g98779897_ '0)))
                       (begin
                         (let ((_g24673_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g24672_)
                                      (##vector-length _g24672_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g24673_ 2)))
                               (error "Context expects 2 values" _g24673_)))
                         (let ((_target98799900_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g24672_ 0)))
                               (_tl98819903_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g24672_ 1))))
                           (if (gx#stx-null? _tl98819903_)
                               (letrec ((_loop98829906_
                                         (lambda (_hd98809910_ _kwval98869913_)
                                           (if (gx#stx-pair? _hd98809910_)
                                               (let ((_e98839916_
                                                      (gx#syntax-e
                                                       _hd98809910_)))
                                                 (let ((_lp-hd98849920_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e98839916_)))
                                                       (_lp-tl98859923_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e98839916_))))
                                                   (_loop98829906_
                                                    _lp-tl98859923_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd98849920_
                                                            _kwval98869913_)))))
                                               (let ((_kwval98879926_
                                                      (reverse _kwval98869913_)))
                                                 ((lambda (_L9930_)
                                                    (let ()
                                                      (let* ((_g99479955_
                                                              (lambda (_g99489951_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g99489951_)))
                     (_g994610025_
                      (lambda (_g99489959_)
                        ((lambda (_L9962_)
                           (let ()
                             (let* ((_g99759983_
                                     (lambda (_g99769979_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g99769979_)))
                                    (_g997410013_
                                     (lambda (_g99769987_)
                                       ((lambda (_L9990_)
                                          (let ()
                                            (let ()
                                              (gx#stx-wrap-source
                                               (let ((__tmp24678
                                                      (gx#datum->syntax
                                                       '#f
                                                       'lambda))
                                                     (__tmp24674
                                                      (let ((__tmp24676
                                                             (let ((__tmp24677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr (lambda (_g1000410007_ _g1000510010_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g1000410007_ _g1000510010_)))
                                   _L9962_
                                   _L9930_)))
                       (declare (not safe))
                       (cons _L9864_ __tmp24677)))
                    (__tmp24675
                     (let () (declare (not safe)) (cons _L9990_ '()))))
                (declare (not safe))
                (cons __tmp24676 __tmp24675))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24678 __tmp24674))
                                               (gx#stx-source _stx8932_)))))
                                        _g99769987_))))
                               (_g997410013_
                                (_make-body9554_
                                 _kwargs9550_
                                 (foldr (lambda (_g1001610019_ _g1001710022_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g1001610019_
                                                  _g1001710022_)))
                                        '()
                                        _L9930_))))))
                         _g99489959_))))
                (_g994610025_ _args9551_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _kwval98879926_))))))
                                 (_loop98829906_ _target98799900_ '()))
                               (_g98769893_ _g98779897_)))))
                     (_g98769893_ _g98779897_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g987510029_
                                                  (gx#gentemps
                                                   (map cadr _kwargs9550_))))))
                                           _g98509861_))))
                                  (_g984810033_
                                   (let ((_$e10037_ _key9548_))
                                     (if _$e10037_ _$e10037_ '_))))))
                             (_make-dispatch9557_
                              (lambda (_main9657_)
                                (let* ((_g96609668_
                                        (lambda (_g96619664_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g96619664_)))
                                       (_g96599839_
                                        (lambda (_g96619672_)
                                          ((lambda (_L9675_)
                                             (let ()
                                               (let* ((_g96879704_
                                                       (lambda (_g96889700_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g96889700_)))
                                                      (_g96869800_
                                                       (lambda (_g96889708_)
                                                         (if (gx#stx-pair/null?
                                                              _g96889708_)
                                                             (let ((_g24679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g96889708_ '0)))
                       (begin
                         (let ((_g24680_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g24679_)
                                      (##vector-length _g24679_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g24680_ 2)))
                               (error "Context expects 2 values" _g24680_)))
                         (let ((_target96909711_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g24679_ 0)))
                               (_tl96929714_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g24679_ 1))))
                           (if (gx#stx-null? _tl96929714_)
                               (letrec ((_loop96939717_
                                         (lambda (_hd96919721_
                                                  _get-kw96979724_)
                                           (if (gx#stx-pair? _hd96919721_)
                                               (let ((_e96949727_
                                                      (gx#syntax-e
                                                       _hd96919721_)))
                                                 (let ((_lp-hd96959731_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e96949727_)))
                                                       (_lp-tl96969734_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e96949727_))))
                                                   (_loop96939717_
                                                    _lp-tl96969734_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd96959731_
                                                            _get-kw96979724_)))))
                                               (let ((_get-kw96989737_
                                                      (reverse _get-kw96979724_)))
                                                 ((lambda (_L9741_)
                                                    (let ()
                                                      (let* ((_g97589766_
                                                              (lambda (_g97599762_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g97599762_)))
                     (_g97579796_
                      (lambda (_g97599770_)
                        ((lambda (_L9773_)
                           (let ()
                             (let ()
                               (gx#stx-wrap-source
                                (let ((__tmp24691
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp24681
                                       (let ((__tmp24689
                                              (let ((__tmp24690
                                                     (gx#datum->syntax
                                                      '#f
                                                      'args)))
                                                (declare (not safe))
                                                (cons _L9675_ __tmp24690)))
                                             (__tmp24682
                                              (let ((__tmp24683
                                                     (let ((__tmp24688
                                                            (gx#datum->syntax
                                                             '#f
                                                             'apply))
                                                           (__tmp24684
                                                            (let ((__tmp24685
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp24686
                                  (foldr (lambda (_g97879790_ _g97889793_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g97879790_ _g97889793_)))
                                         (let ((__tmp24687
                                                (gx#datum->syntax '#f 'args)))
                                           (declare (not safe))
                                           (cons __tmp24687 '()))
                                         _L9741_)))
                             (declare (not safe))
                             (cons _L9675_ __tmp24686))))
                      (declare (not safe))
                      (cons _L9773_ __tmp24685))))
               (declare (not safe))
               (cons __tmp24688 __tmp24684))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp24683 '()))))
                                         (declare (not safe))
                                         (cons __tmp24689 __tmp24682))))
                                  (declare (not safe))
                                  (cons __tmp24691 __tmp24681))
                                (gx#stx-source _stx8932_)))))
                         _g97599770_))))
                (_g97579796_ _main9657_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _get-kw96989737_))))))
                                 (_loop96939717_ _target96909711_ '()))
                               (_g96879704_ _g96889708_)))))
                     (_g96879704_ _g96889708_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g96869800_
                                                  (map (lambda (_kwarg9804_)
                                                         (let* ((_g98079815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g98089811_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g98089811_)))
                        (_g98069835_
                         (lambda (_g98089819_)
                           ((lambda (_L9822_)
                              (let ()
                                (let ((__tmp24699
                                       (gx#datum->syntax
                                        '#f
                                        'symbolic-table-ref))
                                      (__tmp24692
                                       (let ((__tmp24693
                                              (let ((__tmp24696
                                                     (let ((__tmp24698
                                                            (gx#datum->syntax
                                                             '#f
                                                             'quote))
                                                           (__tmp24697
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L9822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp24698 __tmp24697)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp24694
                                                     (let ((__tmp24695
                                                            (gx#datum->syntax
                                                             '#f
                                                             'absent-value)))
                                                       (declare (not safe))
                                                       (cons __tmp24695 '()))))
                                                (declare (not safe))
                                                (cons __tmp24696 __tmp24694))))
                                         (declare (not safe))
                                         (cons _L9675_ __tmp24693))))
                                  (declare (not safe))
                                  (cons __tmp24699 __tmp24692))))
                            _g98089819_))))
                   (_g98069835_ (car _kwarg9804_))))
               _kwargs9550_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g96619672_))))
                                  (_g96599839_
                                   (let ((_$e9843_ _key9548_))
                                     (if _$e9843_
                                         _$e9843_
                                         (gx#genident 'keys))))))))
                      (let* ((_g95599567_
                              (lambda (_g95609563_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g95609563_)))
                             (_g95589653_
                              (lambda (_g95609571_)
                                ((lambda (_L9574_)
                                   (let ()
                                     (let* ((_g95879595_
                                             (lambda (_g95889591_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g95889591_)))
                                            (_g95869649_
                                             (lambda (_g95889599_)
                                               ((lambda (_L9602_)
                                                  (let ()
                                                    (let* ((_g96159623_
                                                            (lambda (_g96169619_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g96169619_)))
                                                           (_g96149645_
                                                            (lambda (_g96169627_)
                                                              ((lambda (_L9630_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ()
                             (let ((__tmp24706
                                    (gx#datum->syntax '#f 'let-values))
                                   (__tmp24700
                                    (let ((__tmp24702
                                           (let ((__tmp24703
                                                  (let ((__tmp24705
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L9574_ '())))
                                                        (__tmp24704
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L9630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24705
                                                          __tmp24704))))
                                             (declare (not safe))
                                             (cons __tmp24703 '())))
                                          (__tmp24701
                                           (let ()
                                             (declare (not safe))
                                             (cons _L9602_ '()))))
                                      (declare (not safe))
                                      (cons __tmp24702 __tmp24701))))
                               (declare (not safe))
                               (cons __tmp24706 __tmp24700)))))
                       _g96169627_))))
              (_g96149645_ (_make-main9556_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g95889599_))))
                                       (_g95869649_
                                        (_make-dispatch9557_ _L9574_)))))
                                 _g95609571_))))
                        (_g95589653_ (gx#genident 'kw-lambda-main))))))
                 (_generate-kw-dispatch8948_
                  (lambda (_primary9461_ _kwargs9463_ _strict?9464_)
                    (let* ((_g94669485_
                            (lambda (_g94679481_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g94679481_)))
                           (_g94659544_
                            (lambda (_g94679489_)
                              (if (gx#stx-pair? _g94679489_)
                                  (let ((_e94739492_
                                         (gx#syntax-e _g94679489_)))
                                    (let ((_hd94729496_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e94739492_)))
                                          (_tl94719499_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e94739492_))))
                                      (if (gx#stx-pair? _tl94719499_)
                                          (let ((_e94769502_
                                                 (gx#syntax-e _tl94719499_)))
                                            (let ((_hd94759506_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e94769502_)))
                                                  (_tl94749509_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e94769502_))))
                                              (if (gx#stx-pair? _tl94749509_)
                                                  (let ((_e94799512_
                                                         (gx#syntax-e
                                                          _tl94749509_)))
                                                    (let ((_hd94789516_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e94799512_)))
                                                          (_tl94779519_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e94799512_))))
                                                      (if (gx#stx-null?
                                                           _tl94779519_)
                                                          ((lambda (_L9522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L9524_
                            _L9525_)
                     (let ()
                       (let ((__tmp24719 (gx#datum->syntax '#f 'lambda%))
                             (__tmp24707
                              (let ((__tmp24708
                                     (let ((__tmp24709
                                            (let ((__tmp24718
                                                   (gx#datum->syntax
                                                    '#f
                                                    'apply))
                                                  (__tmp24710
                                                   (let ((__tmp24717
                                                          (gx#datum->syntax
                                                           '#f
                                                           'keyword-dispatch))
                                                         (__tmp24711
                                                          (let ((__tmp24714
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp24716 (gx#datum->syntax '#f 'quote))
                               (__tmp24715
                                (let ()
                                  (declare (not safe))
                                  (cons _L9525_ '()))))
                           (declare (not safe))
                           (cons __tmp24716 __tmp24715)))
                        (__tmp24712
                         (let ((__tmp24713
                                (let ()
                                  (declare (not safe))
                                  (cons _L9522_ '()))))
                           (declare (not safe))
                           (cons _L9524_ __tmp24713))))
                    (declare (not safe))
                    (cons __tmp24714 __tmp24712))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp24717
                                                           __tmp24711))))
                                              (declare (not safe))
                                              (cons __tmp24718 __tmp24710))))
                                       (declare (not safe))
                                       (cons __tmp24709 '()))))
                                (declare (not safe))
                                (cons _L9522_ __tmp24708))))
                         (declare (not safe))
                         (cons __tmp24719 __tmp24707))))
                   _hd94789516_
                   _hd94759506_
                   _hd94729496_)
                  (_g94669485_ _g94679489_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g94669485_ _g94679489_))))
                                          (_g94669485_ _g94679489_))))
                                  (_g94669485_ _g94679489_)))))
                      (_g94659544_
                       (list (if _strict?9464_
                                 (_generate-kw-table8949_
                                  (map car _kwargs9463_))
                                 '#f)
                             _primary9461_
                             (gx#genident 'args))))))
                 (_generate-kw-table8949_
                  (lambda (_kws9435_)
                    (let _rehash9438_ ((_pht9441_
                                        (make-vector (length _kws9435_) '#f)))
                      (let _lp9444_ ((_rest9447_ _kws9435_))
                        (if (let () (declare (not safe)) (pair? _rest9447_))
                            (let* ((_key9450_ (car _rest9447_))
                                   (_rest9453_ (cdr _rest9447_))
                                   (_pos9456_
                                    (fxmodulo
                                     (keyword-hash _key9450_)
                                     (vector-length _pht9441_))))
                              (if (vector-ref _pht9441_ _pos9456_)
                                  (if (fx< (vector-length _pht9441_) '8192)
                                      (_rehash9438_
                                       (make-vector
                                        (quotient
                                         (fx* '3 (vector-length _pht9441_))
                                         '2)
                                        '#f))
                                      (error '"Unresolvable keyword collision"
                                             _kws9435_))
                                  (begin
                                    (vector-set! _pht9441_ _pos9456_ _key9450_)
                                    (_lp9444_ _rest9453_))))
                            _pht9441_))))))
          (let* ((___stx2296322964_ _stx8932_)
                 (_g89538984_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx2296322964_))))
            (let ((___kont2296622967_
                   (lambda (_L9416_ _L9418_)
                     (let ((__tmp24721 (gx#datum->syntax '#f 'lambda%))
                           (__tmp24720
                            (let ()
                              (declare (not safe))
                              (cons _L9418_ _L9416_))))
                       (declare (not safe))
                       (cons __tmp24721 __tmp24720))))
                  (___kont2296822969_
                   (lambda (_L9188_ _L9190_)
                     (let ((_g24722_ (_opt-lambda-split8938_ _L9190_)))
                       (begin
                         (let ((_g24723_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g24722_)
                                      (##vector-length _g24722_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g24723_ 3)))
                               (error "Context expects 3 values" _g24723_)))
                         (let ((_pre9203_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g24722_ 0)))
                               (_opt9205_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g24722_ 1)))
                               (_tail9206_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g24722_ 2))))
                           (let* ((_g92089216_
                                   (lambda (_g92099212_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g92099212_)))
                                  (_g92079385_
                                   (lambda (_g92099220_)
                                     ((lambda (_L9223_)
                                        (let ()
                                          (let* ((_g92369244_
                                                  (lambda (_g92379240_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g92379240_)))
                                                 (_g92359381_
                                                  (lambda (_g92379248_)
                                                    ((lambda (_L9251_)
                                                       (let ()
                                                         (let* ((_g92649281_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g92659277_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g92659277_)))
                        (_g92639377_
                         (lambda (_g92659285_)
                           (if (gx#stx-pair/null? _g92659285_)
                               (let ((_g24724_
                                      (gx#syntax-split-splice _g92659285_ '0)))
                                 (begin
                                   (let ((_g24725_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g24724_)
                                                (##vector-length _g24724_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g24725_ 2)))
                                         (error "Context expects 2 values"
                                                _g24725_)))
                                   (let ((_target92679288_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g24724_ 0)))
                                         (_tl92699291_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g24724_ 1))))
                                     (if (gx#stx-null? _tl92699291_)
                                         (letrec ((_loop92709294_
                                                   (lambda (_hd92689298_
                                                            _clause92749301_)
                                                     (if (gx#stx-pair?
                                                          _hd92689298_)
                                                         (let ((_e92719304_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd92689298_)))
                   (let ((_lp-hd92729308_
                          (let () (declare (not safe)) (##car _e92719304_)))
                         (_lp-tl92739311_
                          (let () (declare (not safe)) (##cdr _e92719304_))))
                     (_loop92709294_
                      _lp-tl92739311_
                      (let ()
                        (declare (not safe))
                        (cons _lp-hd92729308_ _clause92749301_)))))
                 (let ((_clause92759314_ (reverse _clause92749301_)))
                   ((lambda (_L9318_)
                      (let ()
                        (let* ((_g93359343_
                                (lambda (_g93369339_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g93369339_)))
                               (_g93349365_
                                (lambda (_g93369347_)
                                  ((lambda (_L9350_)
                                     (let ()
                                       (let ()
                                         (let ((__tmp24732
                                                (gx#datum->syntax
                                                 '#f
                                                 'let-values))
                                               (__tmp24726
                                                (let ((__tmp24728
                                                       (let ((__tmp24729
                                                              (let ((__tmp24731
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let () (declare (not safe)) (cons _L9223_ '())))
                            (__tmp24730
                             (let () (declare (not safe)) (cons _L9251_ '()))))
                        (declare (not safe))
                        (cons __tmp24731 __tmp24730))))
                 (declare (not safe))
                 (cons __tmp24729 '())))
              (__tmp24727 (let () (declare (not safe)) (cons _L9350_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp24728
                                                        __tmp24727))))
                                           (declare (not safe))
                                           (cons __tmp24732 __tmp24726)))))
                                   _g93369347_))))
                          (_g93349365_
                           (gx#stx-wrap-source
                            (let ((__tmp24734
                                   (gx#datum->syntax '#f 'case-lambda))
                                  (__tmp24733
                                   (foldr (lambda (_g93689371_ _g93699374_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g93689371_ _g93699374_)))
                                          '()
                                          _L9318_)))
                              (declare (not safe))
                              (cons __tmp24734 __tmp24733))
                            (gx#stx-source _stx8932_))))))
                    _clause92759314_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop92709294_
                                            _target92679288_
                                            '()))
                                         (_g92649281_ _g92659285_)))))
                               (_g92649281_ _g92659285_)))))
                   (_g92639377_
                    (_generate-opt-dispatch8944_
                     _L9223_
                     _pre9203_
                     _opt9205_
                     _tail9206_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g92379248_))))
                                            (_g92359381_
                                             (gx#stx-wrap-source
                                              (_generate-opt-primary8943_
                                               _pre9203_
                                               _opt9205_
                                               _tail9206_
                                               _L9188_)
                                              (gx#stx-source _stx8932_))))))
                                      _g92099220_))))
                             (_g92079385_ (gx#genident 'opt-lambda))))))))
                  (___kont2297022971_
                   (lambda (_L9011_ _L9013_)
                     (let* ((_g90299036_
                             (lambda (_g90309032_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g90309032_)))
                            (_g90289157_
                             (lambda (_g90309040_)
                               ((lambda ()
                                  (let ()
                                    (let ((_g24735_
                                           (_kw-lambda-split8940_ _L9013_)))
                                      (begin
                                        (let ((_g24736_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g24735_)
                                                     (##vector-length _g24735_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g24736_ 3)))
                                              (error "Context expects 3 values"
                                                     _g24736_)))
                                        (let ((_key9049_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g24735_ 0)))
                                              (_kwargs9051_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g24735_ 1)))
                                              (_args9052_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g24735_ 2))))
                                          (let* ((_g90549062_
                                                  (lambda (_g90559058_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g90559058_)))
                                                 (_g90539153_
                                                  (lambda (_g90559066_)
                                                    ((lambda (_L9069_)
                                                       (let ()
                                                         (let* ((_g90879095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g90889091_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g90889091_)))
                        (_g90869149_
                         (lambda (_g90889099_)
                           ((lambda (_L9102_)
                              (let ()
                                (let* ((_g91159123_
                                        (lambda (_g91169119_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g91169119_)))
                                       (_g91149145_
                                        (lambda (_g91169127_)
                                          ((lambda (_L9130_)
                                             (let ()
                                               (let ()
                                                 (let ((__tmp24743
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let-values))
                                                       (__tmp24737
                                                        (let ((__tmp24739
                                                               (let ((__tmp24740
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp24742
                                     (let ()
                                       (declare (not safe))
                                       (cons _L9069_ '())))
                                    (__tmp24741
                                     (let ()
                                       (declare (not safe))
                                       (cons _L9102_ '()))))
                                (declare (not safe))
                                (cons __tmp24742 __tmp24741))))
                         (declare (not safe))
                         (cons __tmp24740 '())))
                      (__tmp24738
                       (let () (declare (not safe)) (cons _L9130_ '()))))
                  (declare (not safe))
                  (cons __tmp24739 __tmp24738))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24743
                                                         __tmp24737)))))
                                           _g91169127_))))
                                  (_g91149145_
                                   (gx#stx-wrap-source
                                    (_generate-kw-dispatch8948_
                                     _L9069_
                                     _kwargs9051_
                                     (let ()
                                       (declare (not safe))
                                       (not _key9049_)))
                                    (gx#stx-source _stx8932_))))))
                            _g90889099_))))
                   (_g90869149_
                    (gx#stx-wrap-source
                     (_generate-kw-primary8947_
                      _key9049_
                      _kwargs9051_
                      _args9052_
                      _L9011_)
                     (gx#stx-source _stx8932_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g90559066_))))
                                            (_g90539153_
                                             (gx#genident
                                              'kw-lambda))))))))))))
                       (_g90289157_
                        (_check-duplicate-bindings8942_ _L9013_))))))
              (let* ((___match2300823009_
                      (lambda (_e89758991_
                               _hd89748995_
                               _tl89738998_
                               _e89789001_
                               _hd89779005_
                               _tl89769008_)
                        (let ((_L9011_ _tl89769008_) (_L9013_ _hd89779005_))
                          (if (_kw-lambda?8939_ _L9013_)
                              (___kont2297022971_ _L9011_ _L9013_)
                              (let () (declare (not safe)) (_g89538984_))))))
                     (___match2299622997_
                      (lambda (_e89679168_
                               _hd89669172_
                               _tl89659175_
                               _e89709178_
                               _hd89699182_
                               _tl89689185_)
                        (let ((_L9188_ _tl89689185_) (_L9190_ _hd89699182_))
                          (if (_opt-lambda?8937_ _L9190_)
                              (___kont2296822969_ _L9188_ _L9190_)
                              (___match2300823009_
                               _e89679168_
                               _hd89669172_
                               _tl89659175_
                               _e89709178_
                               _hd89699182_
                               _tl89689185_)))))
                     (___match2298422985_
                      (lambda (_e89599396_
                               _hd89589400_
                               _tl89579403_
                               _e89629406_
                               _hd89619410_
                               _tl89609413_)
                        (let ((_L9416_ _tl89609413_) (_L9418_ _hd89619410_))
                          (if (_simple-lambda?8935_ _L9418_)
                              (___kont2296622967_ _L9416_ _L9418_)
                              (___match2299622997_
                               _e89599396_
                               _hd89589400_
                               _tl89579403_
                               _e89629406_
                               _hd89619410_
                               _tl89609413_))))))
                (if (gx#stx-pair? ___stx2296322964_)
                    (let ((_e89599396_ (gx#syntax-e ___stx2296322964_)))
                      (let ((_tl89579403_
                             (let () (declare (not safe)) (##cdr _e89599396_)))
                            (_hd89589400_
                             (let ()
                               (declare (not safe))
                               (##car _e89599396_))))
                        (if (gx#stx-pair? _tl89579403_)
                            (let ((_e89629406_ (gx#syntax-e _tl89579403_)))
                              (let ((_tl89609413_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e89629406_)))
                                    (_hd89619410_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e89629406_))))
                                (___match2298422985_
                                 _e89599396_
                                 _hd89589400_
                                 _tl89579403_
                                 _e89629406_
                                 _hd89619410_
                                 _tl89609413_)))
                            (let () (declare (not safe)) (_g89538984_)))))
                    (let () (declare (not safe)) (_g89538984_)))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#def|
      (lambda (_$stx12348_)
        (let* ((___stx2301123012_ _$stx12348_)
               (_g1235412418_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2301123012_))))
          (let ((___kont2301423015_
                 (lambda (_L12648_ _L12650_ _L12651_ _L12652_)
                   (let ((__tmp24751 (gx#datum->syntax '#f 'def))
                         (__tmp24744
                          (let ((__tmp24750
                                 (let ()
                                   (declare (not safe))
                                   (cons _L12652_ _L12651_)))
                                (__tmp24745
                                 (let ((__tmp24746
                                        (let ((__tmp24749
                                               (gx#datum->syntax '#f 'lambda))
                                              (__tmp24747
                                               (let ((__tmp24748
                                                      (foldr (lambda (_g1267412677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1267512680_)
                       (let ()
                         (declare (not safe))
                         (cons _g1267412677_ _g1267512680_)))
                     '()
                     _L12648_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L12650_ __tmp24748))))
                                          (declare (not safe))
                                          (cons __tmp24749 __tmp24747))))
                                   (declare (not safe))
                                   (cons __tmp24746 '()))))
                            (declare (not safe))
                            (cons __tmp24750 __tmp24745))))
                     (declare (not safe))
                     (cons __tmp24751 __tmp24744))))
                (___kont2301823019_
                 (lambda (_L12540_ _L12542_ _L12543_)
                   (let ((__tmp24759 (gx#datum->syntax '#f 'define-values))
                         (__tmp24752
                          (let ((__tmp24758
                                 (let ()
                                   (declare (not safe))
                                   (cons _L12543_ '())))
                                (__tmp24753
                                 (let ((__tmp24754
                                        (let ((__tmp24757
                                               (gx#datum->syntax '#f 'lambda))
                                              (__tmp24755
                                               (let ((__tmp24756
                                                      (foldr (lambda (_g1256212565_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1256312568_)
                       (let ()
                         (declare (not safe))
                         (cons _g1256212565_ _g1256312568_)))
                     '()
                     _L12540_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L12542_ __tmp24756))))
                                          (declare (not safe))
                                          (cons __tmp24757 __tmp24755))))
                                   (declare (not safe))
                                   (cons __tmp24754 '()))))
                            (declare (not safe))
                            (cons __tmp24758 __tmp24753))))
                     (declare (not safe))
                     (cons __tmp24759 __tmp24752))))
                (___kont2302223023_
                 (lambda (_L12455_ _L12457_)
                   (let ((__tmp24763 (gx#datum->syntax '#f 'define-values))
                         (__tmp24760
                          (let ((__tmp24762
                                 (let ()
                                   (declare (not safe))
                                   (cons _L12457_ '())))
                                (__tmp24761
                                 (let ()
                                   (declare (not safe))
                                   (cons _L12455_ '()))))
                            (declare (not safe))
                            (cons __tmp24762 __tmp24761))))
                     (declare (not safe))
                     (cons __tmp24763 __tmp24760)))))
            (let* ((___match2310223103_
                    (lambda (_e1240612425_
                             _hd1240512429_
                             _tl1240412432_
                             _e1240912435_
                             _hd1240812439_
                             _tl1240712442_
                             _e1241212445_
                             _hd1241112449_
                             _tl1241012452_)
                      (let ((_L12455_ _hd1241112449_)
                            (_L12457_ _hd1240812439_))
                        (if (gx#identifier? _L12457_)
                            (___kont2302223023_ _L12455_ _L12457_)
                            (let () (declare (not safe)) (_g1235412418_))))))
                   (___match2309423095_
                    (lambda (_e1240612425_
                             _hd1240512429_
                             _tl1240412432_
                             _e1240912435_
                             _hd1240812439_
                             _tl1240712442_)
                      (if (gx#stx-pair? _tl1240712442_)
                          (let ((_e1241212445_ (gx#syntax-e _tl1240712442_)))
                            (let ((_tl1241012452_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1241212445_)))
                                  (_hd1241112449_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1241212445_))))
                              (if (gx#stx-null? _tl1241012452_)
                                  (___match2310223103_
                                   _e1240612425_
                                   _hd1240512429_
                                   _tl1240412432_
                                   _e1240912435_
                                   _hd1240812439_
                                   _tl1240712442_
                                   _e1241212445_
                                   _hd1241112449_
                                   _tl1241012452_)
                                  (let ()
                                    (declare (not safe))
                                    (_g1235412418_)))))
                          (let () (declare (not safe)) (_g1235412418_)))))
                   (___match2308223083_
                    (lambda (_e1238612480_
                             _hd1238512484_
                             _tl1238412487_
                             _e1238912490_
                             _hd1238812494_
                             _tl1238712497_
                             _e1239212500_
                             _hd1239112504_
                             _tl1239012507_
                             ___splice2302023021_
                             _target1239312510_
                             _tl1239512513_)
                      (letrec ((_loop1239612516_
                                (lambda (_hd1239412520_ _body1240012523_)
                                  (if (gx#stx-pair? _hd1239412520_)
                                      (let ((_e1239712526_
                                             (gx#syntax-e _hd1239412520_)))
                                        (let ((_lp-tl1239912533_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1239712526_)))
                                              (_lp-hd1239812530_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1239712526_))))
                                          (_loop1239612516_
                                           _lp-tl1239912533_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1239812530_
                                                   _body1240012523_)))))
                                      (let ((_body1240112536_
                                             (reverse _body1240012523_)))
                                        (let ((_L12540_ _body1240112536_)
                                              (_L12542_ _tl1239012507_)
                                              (_L12543_ _hd1239112504_))
                                          (if (gx#identifier? _L12543_)
                                              (___kont2301823019_
                                               _L12540_
                                               _L12542_
                                               _L12543_)
                                              (___match2309423095_
                                               _e1238612480_
                                               _hd1238512484_
                                               _tl1238412487_
                                               _e1238912490_
                                               _hd1238812494_
                                               _tl1238712497_))))))))
                        (_loop1239612516_ _target1239312510_ '()))))
                   (___match2305623057_
                    (lambda (_e1236212578_
                             _hd1236112582_
                             _tl1236012585_
                             _e1236512588_
                             _hd1236412592_
                             _tl1236312595_
                             _e1236812598_
                             _hd1236712602_
                             _tl1236612605_
                             _e1237112608_
                             _hd1237012612_
                             _tl1236912615_
                             ___splice2301623017_
                             _target1237212618_
                             _tl1237412621_)
                      (letrec ((_loop1237512624_
                                (lambda (_hd1237312628_ _body1237912631_)
                                  (if (gx#stx-pair? _hd1237312628_)
                                      (let ((_e1237612634_
                                             (gx#syntax-e _hd1237312628_)))
                                        (let ((_lp-tl1237812641_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1237612634_)))
                                              (_lp-hd1237712638_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1237612634_))))
                                          (_loop1237512624_
                                           _lp-tl1237812641_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1237712638_
                                                   _body1237912631_)))))
                                      (let ((_body1238012644_
                                             (reverse _body1237912631_)))
                                        (___kont2301423015_
                                         _body1238012644_
                                         _tl1236612605_
                                         _tl1236912615_
                                         _hd1237012612_))))))
                        (_loop1237512624_ _target1237212618_ '())))))
              (if (gx#stx-pair? ___stx2301123012_)
                  (let ((_e1236212578_ (gx#syntax-e ___stx2301123012_)))
                    (let ((_tl1236012585_
                           (let () (declare (not safe)) (##cdr _e1236212578_)))
                          (_hd1236112582_
                           (let ()
                             (declare (not safe))
                             (##car _e1236212578_))))
                      (if (gx#stx-pair? _tl1236012585_)
                          (let ((_e1236512588_ (gx#syntax-e _tl1236012585_)))
                            (let ((_tl1236312595_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1236512588_)))
                                  (_hd1236412592_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1236512588_))))
                              (if (gx#stx-pair? _hd1236412592_)
                                  (let ((_e1236812598_
                                         (gx#syntax-e _hd1236412592_)))
                                    (let ((_tl1236612605_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1236812598_)))
                                          (_hd1236712602_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1236812598_))))
                                      (if (gx#stx-pair? _hd1236712602_)
                                          (let ((_e1237112608_
                                                 (gx#syntax-e _hd1236712602_)))
                                            (let ((_tl1236912615_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1237112608_)))
                                                  (_hd1237012612_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1237112608_))))
                                              (if (gx#stx-pair/null?
                                                   _tl1236312595_)
                                                  (let ((___splice2301623017_
                                                         (gx#syntax-split-splice
                                                          _tl1236312595_
                                                          '0)))
                                                    (let ((_tl1237412621_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice2301623017_
                                                              '1)))
                                                          (_target1237212618_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice2301623017_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl1237412621_)
                                                          (___match2305623057_
                                                           _e1236212578_
                                                           _hd1236112582_
                                                           _tl1236012585_
                                                           _e1236512588_
                                                           _hd1236412592_
                                                           _tl1236312595_
                                                           _e1236812598_
                                                           _hd1236712602_
                                                           _tl1236612605_
                                                           _e1237112608_
                                                           _hd1237012612_
                                                           _tl1236912615_
                                                           ___splice2301623017_
                                                           _target1237212618_
                                                           _tl1237412621_)
                                                          (if (gx#stx-pair?
                                                               _tl1236312595_)
                                                              (let ((_e1241212445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1236312595_)))
                        (let ((_tl1241012452_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1241212445_)))
                              (_hd1241112449_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1241212445_))))
                          (if (gx#stx-null? _tl1241012452_)
                              (___match2310223103_
                               _e1236212578_
                               _hd1236112582_
                               _tl1236012585_
                               _e1236512588_
                               _hd1236412592_
                               _tl1236312595_
                               _e1241212445_
                               _hd1241112449_
                               _tl1241012452_)
                              (let () (declare (not safe)) (_g1235412418_)))))
                      (let () (declare (not safe)) (_g1235412418_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl1236312595_)
                                                      (let ((_e1241212445_
                                                             (gx#syntax-e
                                                              _tl1236312595_)))
                                                        (let ((_tl1241012452_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1241212445_)))
                      (_hd1241112449_
                       (let () (declare (not safe)) (##car _e1241212445_))))
                  (if (gx#stx-null? _tl1241012452_)
                      (___match2310223103_
                       _e1236212578_
                       _hd1236112582_
                       _tl1236012585_
                       _e1236512588_
                       _hd1236412592_
                       _tl1236312595_
                       _e1241212445_
                       _hd1241112449_
                       _tl1241012452_)
                      (let () (declare (not safe)) (_g1235412418_)))))
              (let () (declare (not safe)) (_g1235412418_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl1236312595_)
                                              (let ((___splice2302023021_
                                                     (gx#syntax-split-splice
                                                      _tl1236312595_
                                                      '0)))
                                                (let ((_tl1239512513_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2302023021_
                                                          '1)))
                                                      (_target1239312510_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2302023021_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1239512513_)
                                                      (___match2308223083_
                                                       _e1236212578_
                                                       _hd1236112582_
                                                       _tl1236012585_
                                                       _e1236512588_
                                                       _hd1236412592_
                                                       _tl1236312595_
                                                       _e1236812598_
                                                       _hd1236712602_
                                                       _tl1236612605_
                                                       ___splice2302023021_
                                                       _target1239312510_
                                                       _tl1239512513_)
                                                      (if (gx#stx-pair?
                                                           _tl1236312595_)
                                                          (let ((_e1241212445_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1236312595_)))
                    (let ((_tl1241012452_
                           (let () (declare (not safe)) (##cdr _e1241212445_)))
                          (_hd1241112449_
                           (let ()
                             (declare (not safe))
                             (##car _e1241212445_))))
                      (if (gx#stx-null? _tl1241012452_)
                          (___match2310223103_
                           _e1236212578_
                           _hd1236112582_
                           _tl1236012585_
                           _e1236512588_
                           _hd1236412592_
                           _tl1236312595_
                           _e1241212445_
                           _hd1241112449_
                           _tl1241012452_)
                          (let () (declare (not safe)) (_g1235412418_)))))
                  (let () (declare (not safe)) (_g1235412418_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl1236312595_)
                                                  (let ((_e1241212445_
                                                         (gx#syntax-e
                                                          _tl1236312595_)))
                                                    (let ((_tl1241012452_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1241212445_)))
                                                          (_hd1241112449_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1241212445_))))
                                                      (if (gx#stx-null?
                                                           _tl1241012452_)
                                                          (___match2310223103_
                                                           _e1236212578_
                                                           _hd1236112582_
                                                           _tl1236012585_
                                                           _e1236512588_
                                                           _hd1236412592_
                                                           _tl1236312595_
                                                           _e1241212445_
                                                           _hd1241112449_
                                                           _tl1241012452_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g1235412418_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1235412418_)))))))
                                  (if (gx#stx-pair? _tl1236312595_)
                                      (let ((_e1241212445_
                                             (gx#syntax-e _tl1236312595_)))
                                        (let ((_tl1241012452_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1241212445_)))
                                              (_hd1241112449_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1241212445_))))
                                          (if (gx#stx-null? _tl1241012452_)
                                              (___match2310223103_
                                               _e1236212578_
                                               _hd1236112582_
                                               _tl1236012585_
                                               _e1236512588_
                                               _hd1236412592_
                                               _tl1236312595_
                                               _e1241212445_
                                               _hd1241112449_
                                               _tl1241012452_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1235412418_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1235412418_))))))
                          (let () (declare (not safe)) (_g1235412418_)))))
                  (let () (declare (not safe)) (_g1235412418_))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#def*|
      (lambda (_$stx12689_)
        (let* ((_g1269312717_
                (lambda (_g1269412713_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1269412713_)))
               (_g1269212802_
                (lambda (_g1269412721_)
                  (if (gx#stx-pair? _g1269412721_)
                      (let ((_e1269912724_ (gx#syntax-e _g1269412721_)))
                        (let ((_hd1269812728_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1269912724_)))
                              (_tl1269712731_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1269912724_))))
                          (if (gx#stx-pair? _tl1269712731_)
                              (let ((_e1270212734_
                                     (gx#syntax-e _tl1269712731_)))
                                (let ((_hd1270112738_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1270212734_)))
                                      (_tl1270012741_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1270212734_))))
                                  (if (gx#stx-pair/null? _tl1270012741_)
                                      (let ((_g24764_
                                             (gx#syntax-split-splice
                                              _tl1270012741_
                                              '0)))
                                        (begin
                                          (let ((_g24765_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g24764_)
                                                       (##vector-length
                                                        _g24764_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g24765_ 2)))
                                                (error "Context expects 2 values"
                                                       _g24765_)))
                                          (let ((_target1270312744_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24764_ 0)))
                                                (_tl1270512747_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24764_ 1))))
                                            (if (gx#stx-null? _tl1270512747_)
                                                (letrec ((_loop1270612750_
                                                          (lambda (_hd1270412754_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clauses1271012757_)
                    (if (gx#stx-pair? _hd1270412754_)
                        (let ((_e1270712760_ (gx#syntax-e _hd1270412754_)))
                          (let ((_lp-hd1270812764_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1270712760_)))
                                (_lp-tl1270912767_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1270712760_))))
                            (_loop1270612750_
                             _lp-tl1270912767_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1270812764_ _clauses1271012757_)))))
                        (let ((_clauses1271112770_
                               (reverse _clauses1271012757_)))
                          ((lambda (_L12774_ _L12776_)
                             (if (gx#identifier? _L12776_)
                                 (let ((__tmp24772
                                        (gx#datum->syntax '#f 'define-values))
                                       (__tmp24766
                                        (let ((__tmp24771
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L12776_ '())))
                                              (__tmp24767
                                               (let ((__tmp24768
                                                      (let ((__tmp24770
                                                             (gx#datum->syntax
                                                              '#f
                                                              'case-lambda))
                                                            (__tmp24769
                                                             (foldr (lambda (_g1279312796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1279412799_)
                              (let ()
                                (declare (not safe))
                                (cons _g1279312796_ _g1279412799_)))
                            '()
                            _L12774_)))
                (declare (not safe))
                (cons __tmp24770 __tmp24769))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24768 '()))))
                                          (declare (not safe))
                                          (cons __tmp24771 __tmp24767))))
                                   (declare (not safe))
                                   (cons __tmp24772 __tmp24766))
                                 (_g1269312717_ _g1269412721_)))
                           _clauses1271112770_
                           _hd1270112738_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1270612750_
                                                   _target1270312744_
                                                   '()))
                                                (_g1269312717_
                                                 _g1269412721_)))))
                                      (_g1269312717_ _g1269412721_))))
                              (_g1269312717_ _g1269412721_))))
                      (_g1269312717_ _g1269412721_)))))
          (_g1269212802_ _$stx12689_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#defvalues|
      (lambda (_$stx12807_)
        (let* ((_g1281112829_
                (lambda (_g1281212825_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1281212825_)))
               (_g1281012884_
                (lambda (_g1281212833_)
                  (if (gx#stx-pair? _g1281212833_)
                      (let ((_e1281712836_ (gx#syntax-e _g1281212833_)))
                        (let ((_hd1281612840_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1281712836_)))
                              (_tl1281512843_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1281712836_))))
                          (if (gx#stx-pair? _tl1281512843_)
                              (let ((_e1282012846_
                                     (gx#syntax-e _tl1281512843_)))
                                (let ((_hd1281912850_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1282012846_)))
                                      (_tl1281812853_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1282012846_))))
                                  (if (gx#stx-pair? _tl1281812853_)
                                      (let ((_e1282312856_
                                             (gx#syntax-e _tl1281812853_)))
                                        (let ((_hd1282212860_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1282312856_)))
                                              (_tl1282112863_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1282312856_))))
                                          (if (gx#stx-null? _tl1282112863_)
                                              ((lambda (_L12866_ _L12868_)
                                                 (if (gx#identifier-list?
                                                      _L12868_)
                                                     (let ((__tmp24775
                                                            (gx#datum->syntax
                                                             '#f
                                                             'define-values))
                                                           (__tmp24773
                                                            (let ((__tmp24774
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L12866_ '()))))
                      (declare (not safe))
                      (cons _L12868_ __tmp24774))))
               (declare (not safe))
               (cons __tmp24775 __tmp24773))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1281112829_
                                                      _g1281212833_)))
                                               _hd1282212860_
                                               _hd1281912850_)
                                              (_g1281112829_ _g1281212833_))))
                                      (_g1281112829_ _g1281212833_))))
                              (_g1281112829_ _g1281212833_))))
                      (_g1281112829_ _g1281212833_)))))
          (_g1281012884_ _$stx12807_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#case|
      (lambda (_$stx12888_)
        (let* ((_g1289212916_
                (lambda (_g1289312912_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1289312912_)))
               (_g1289113001_
                (lambda (_g1289312920_)
                  (if (gx#stx-pair? _g1289312920_)
                      (let ((_e1289812923_ (gx#syntax-e _g1289312920_)))
                        (let ((_hd1289712927_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1289812923_)))
                              (_tl1289612930_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1289812923_))))
                          (if (gx#stx-pair? _tl1289612930_)
                              (let ((_e1290112933_
                                     (gx#syntax-e _tl1289612930_)))
                                (let ((_hd1290012937_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1290112933_)))
                                      (_tl1289912940_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1290112933_))))
                                  (if (gx#stx-pair/null? _tl1289912940_)
                                      (let ((_g24776_
                                             (gx#syntax-split-splice
                                              _tl1289912940_
                                              '0)))
                                        (begin
                                          (let ((_g24777_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g24776_)
                                                       (##vector-length
                                                        _g24776_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g24777_ 2)))
                                                (error "Context expects 2 values"
                                                       _g24777_)))
                                          (let ((_target1290212943_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24776_ 0)))
                                                (_tl1290412946_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24776_ 1))))
                                            (if (gx#stx-null? _tl1290412946_)
                                                (letrec ((_loop1290512949_
                                                          (lambda (_hd1290312953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause1290912956_)
                    (if (gx#stx-pair? _hd1290312953_)
                        (let ((_e1290612959_ (gx#syntax-e _hd1290312953_)))
                          (let ((_lp-hd1290712963_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1290612959_)))
                                (_lp-tl1290812966_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1290612959_))))
                            (_loop1290512949_
                             _lp-tl1290812966_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1290712963_ _clause1290912956_)))))
                        (let ((_clause1291012969_
                               (reverse _clause1290912956_)))
                          ((lambda (_L12973_ _L12975_)
                             (let ((__tmp24788 (gx#datum->syntax '#f 'let))
                                   (__tmp24778
                                    (let ((__tmp24785
                                           (let ((__tmp24787
                                                  (gx#datum->syntax '#f '$e))
                                                 (__tmp24786
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L12975_ '()))))
                                             (declare (not safe))
                                             (cons __tmp24787 __tmp24786)))
                                          (__tmp24779
                                           (let ((__tmp24780
                                                  (let ((__tmp24784
                                                         (gx#datum->syntax
                                                          '#f
                                                          '~case))
                                                        (__tmp24781
                                                         (let ((__tmp24783
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$e))
                       (__tmp24782
                        (foldr (lambda (_g1299212995_ _g1299312998_)
                                 (let ()
                                   (declare (not safe))
                                   (cons _g1299212995_ _g1299312998_)))
                               '()
                               _L12973_)))
                   (declare (not safe))
                   (cons __tmp24783 __tmp24782))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24784
                                                          __tmp24781))))
                                             (declare (not safe))
                                             (cons __tmp24780 '()))))
                                      (declare (not safe))
                                      (cons __tmp24785 __tmp24779))))
                               (declare (not safe))
                               (cons __tmp24788 __tmp24778)))
                           _clause1291012969_
                           _hd1290012937_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1290512949_
                                                   _target1290212943_
                                                   '()))
                                                (_g1289212916_
                                                 _g1289312920_)))))
                                      (_g1289212916_ _g1289312920_))))
                              (_g1289212916_ _g1289312920_))))
                      (_g1289212916_ _g1289312920_)))))
          (_g1289113001_ _$stx12888_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#~case|
      (lambda (_stx13006_)
        (letrec ((_parse-clauses13009_
                  (lambda (_e15472_ _clauses15474_)
                    (let _lp15476_ ((_rest15479_ _clauses15474_)
                                    (_datums15481_ '())
                                    (_dispatch15482_ '())
                                    (_default15483_ '#f))
                      (let* ((___stx2320123202_ _rest15479_)
                             (_g1548615498_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2320123202_))))
                        (let ((___kont2320423205_
                               (lambda (_L15530_ _L15532_)
                                 (let* ((___stx2310523106_ _L15532_)
                                        (_g1555015623_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2310523106_))))
                                   (let ((___kont2310823109_
                                          (lambda (_L15988_)
                                            (if (gx#stx-null? _L15530_)
                                                (let* ((_g1600316011_
                                                        (lambda (_g1600416007_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g1600416007_)))
                                                       (_g1600216030_
                                                        (lambda (_g1600416015_)
                                                          ((lambda (_L16018_)
                                                             (let ()
                                                               (_lp15476_
                                                                '()
                                                                _datums15481_
                                                                _dispatch15482_
                                                                (let ((__tmp24789
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L16018_ '()))))
                          (declare (not safe))
                          (cons _L15988_ __tmp24789)))))
                   _g1600416015_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1600216030_ _e15472_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _stx13006_
                                                 _L15532_))))
                                         (___kont2311023111_
                                          (lambda (_L15928_)
                                            (if (gx#stx-null? _L15530_)
                                                (_lp15476_
                                                 '()
                                                 _datums15481_
                                                 _dispatch15482_
                                                 (let ((__tmp24791
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin))
                                                       (__tmp24790
                                                        (foldr (lambda (_g1594215945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1594315948_)
                         (let ()
                           (declare (not safe))
                           (cons _g1594215945_ _g1594315948_)))
                       '()
                       _L15928_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24791
                                                         __tmp24790)))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _stx13006_
                                                 _L15532_))))
                                         (___kont2311423115_
                                          (lambda (_L15813_ _L15815_)
                                            (if (let ((__tmp24795
                                                       (foldr (lambda (_g1583315836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1583415839_)
                        (let ()
                          (declare (not safe))
                          (cons _g1583315836_ _g1583415839_)))
                      '()
                      _L15815_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (null? __tmp24795))
                                                (_lp15476_
                                                 _L15530_
                                                 _datums15481_
                                                 _dispatch15482_
                                                 _default15483_)
                                                (let* ((_g1584215850_
                                                        (lambda (_g1584315846_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g1584315846_)))
                                                       (_g1584115877_
                                                        (lambda (_g1584315854_)
                                                          ((lambda (_L15857_)
                                                             (let ()
                                                               (_lp15476_
                                                                _L15530_
                                                                (let ((__tmp24792
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (map gx#stx-e
                                    (foldr (lambda (_g1586815871_
                                                    _g1586915874_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g1586815871_
                                                     _g1586915874_)))
                                           '()
                                           _L15815_))))
                          (declare (not safe))
                          (cons __tmp24792 _datums15481_))
                        (let ((__tmp24793
                               (let ((__tmp24794
                                      (let ()
                                        (declare (not safe))
                                        (cons _L15857_ '()))))
                                 (declare (not safe))
                                 (cons _L15813_ __tmp24794))))
                          (declare (not safe))
                          (cons __tmp24793 _dispatch15482_))
                        _default15483_)))
                   _g1584315854_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1584115877_ _e15472_)))))
                                         (___kont2311823119_
                                          (lambda (_L15700_ _L15702_)
                                            (if (let ((__tmp24800
                                                       (foldr (lambda (_g1572115724_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1572215727_)
                        (let ()
                          (declare (not safe))
                          (cons _g1572115724_ _g1572215727_)))
                      '()
                      _L15702_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (null? __tmp24800))
                                                (_lp15476_
                                                 _L15530_
                                                 _datums15481_
                                                 _dispatch15482_
                                                 _default15483_)
                                                (_lp15476_
                                                 _L15530_
                                                 (let ((__tmp24796
                                                        (map gx#stx-e
                                                             (foldr (lambda (_g1572915732_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1573015735_)
                              (let ()
                                (declare (not safe))
                                (cons _g1572915732_ _g1573015735_)))
                            '()
                            _L15702_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24796
                                                         _datums15481_))
                                                 (let ((__tmp24797
                                                        (let ((__tmp24799
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp24798
                                                               (foldr (lambda (_g1573715740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1573815743_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g1573715740_ _g1573815743_)))
                              '()
                              _L15700_)))
                  (declare (not safe))
                  (cons __tmp24799 __tmp24798))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24797
                                                         _dispatch15482_))
                                                 _default15483_)))))
                                     (let* ((___match2319823199_
                                             (lambda (_e1559915630_
                                                      _hd1559815634_
                                                      _tl1559715637_
                                                      ___splice2312023121_
                                                      _target1560015640_
                                                      _tl1560215643_)
                                               (letrec ((_loop1560315646_
                                                         (lambda (_hd1560115650_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1560715653_)
                   (if (gx#stx-pair? _hd1560115650_)
                       (let ((_e1560415656_ (gx#syntax-e _hd1560115650_)))
                         (let ((_lp-tl1560615663_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1560415656_)))
                               (_lp-hd1560515660_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1560415656_))))
                           (_loop1560315646_
                            _lp-tl1560615663_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd1560515660_ _datum1560715653_)))))
                       (let ((_datum1560815666_ (reverse _datum1560715653_)))
                         (if (gx#stx-pair/null? _tl1559715637_)
                             (let ((___splice2312223123_
                                    (gx#syntax-split-splice
                                     _tl1559715637_
                                     '0)))
                               (let ((_tl1561115673_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         ___splice2312223123_
                                         '1)))
                                     (_target1560915670_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         ___splice2312223123_
                                         '0))))
                                 (if (gx#stx-null? _tl1561115673_)
                                     (letrec ((_loop1561215676_
                                               (lambda (_hd1561015680_
                                                        _body1561615683_)
                                                 (if (gx#stx-pair?
                                                      _hd1561015680_)
                                                     (let ((_e1561315686_
                                                            (gx#syntax-e
                                                             _hd1561015680_)))
                                                       (let ((_lp-tl1561515693_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e1561315686_)))
                     (_lp-hd1561415690_
                      (let () (declare (not safe)) (##car _e1561315686_))))
                 (_loop1561215676_
                  _lp-tl1561515693_
                  (let ()
                    (declare (not safe))
                    (cons _lp-hd1561415690_ _body1561615683_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_body1561715696_
                                                            (reverse _body1561615683_)))
                                                       (___kont2311823119_
                                                        _body1561715696_
                                                        _datum1560815666_))))))
                                       (_loop1561215676_
                                        _target1560915670_
                                        '()))
                                     (let ()
                                       (declare (not safe))
                                       (_g1555015623_)))))
                             (let ()
                               (declare (not safe))
                               (_g1555015623_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1560315646_
                                                  _target1560015640_
                                                  '()))))
                                            (___match2318423185_
                                             (lambda (_e1557915753_
                                                      _hd1557815757_
                                                      _tl1557715760_
                                                      ___splice2311623117_
                                                      _target1558015763_
                                                      _tl1558215766_)
                                               (letrec ((_loop1558315769_
                                                         (lambda (_hd1558115773_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1558715776_)
                   (if (gx#stx-pair? _hd1558115773_)
                       (let ((_e1558415779_ (gx#syntax-e _hd1558115773_)))
                         (let ((_lp-tl1558615786_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1558415779_)))
                               (_lp-hd1558515783_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1558415779_))))
                           (_loop1558315769_
                            _lp-tl1558615786_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd1558515783_ _datum1558715776_)))))
                       (let ((_datum1558815789_ (reverse _datum1558715776_)))
                         (if (gx#stx-pair? _tl1557715760_)
                             (let ((_e1559115793_
                                    (gx#syntax-e _tl1557715760_)))
                               (let ((_tl1558915800_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1559115793_)))
                                     (_hd1559015797_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1559115793_))))
                                 (if (gx#identifier? _hd1559015797_)
                                     (if (gx#free-identifier=?
                                          |gerbil/core/sugar$<sugar:2>[1]#_g24801_|
                                          _hd1559015797_)
                                         (if (gx#stx-pair? _tl1558915800_)
                                             (let ((_e1559415803_
                                                    (gx#syntax-e
                                                     _tl1558915800_)))
                                               (let ((_tl1559215810_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1559415803_)))
                                                     (_hd1559315807_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1559415803_))))
                                                 (if (gx#stx-null?
                                                      _tl1559215810_)
                                                     (___kont2311423115_
                                                      _hd1559315807_
                                                      _datum1558815789_)
                                                     (___match2319823199_
                                                      _e1557915753_
                                                      _hd1557815757_
                                                      _tl1557715760_
                                                      ___splice2311623117_
                                                      _target1558015763_
                                                      _tl1558215766_))))
                                             (___match2319823199_
                                              _e1557915753_
                                              _hd1557815757_
                                              _tl1557715760_
                                              ___splice2311623117_
                                              _target1558015763_
                                              _tl1558215766_))
                                         (___match2319823199_
                                          _e1557915753_
                                          _hd1557815757_
                                          _tl1557715760_
                                          ___splice2311623117_
                                          _target1558015763_
                                          _tl1558215766_))
                                     (___match2319823199_
                                      _e1557915753_
                                      _hd1557815757_
                                      _tl1557715760_
                                      ___splice2311623117_
                                      _target1558015763_
                                      _tl1558215766_))))
                             (___match2319823199_
                              _e1557915753_
                              _hd1557815757_
                              _tl1557715760_
                              ___splice2311623117_
                              _target1558015763_
                              _tl1558215766_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1558315769_
                                                  _target1558015763_
                                                  '()))))
                                            (___match2317023171_
                                             (lambda (_e1556515888_
                                                      _hd1556415892_
                                                      _tl1556315895_
                                                      ___splice2311223113_
                                                      _target1556615898_
                                                      _tl1556815901_)
                                               (letrec ((_loop1556915904_
                                                         (lambda (_hd1556715908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body1557315911_)
                   (if (gx#stx-pair? _hd1556715908_)
                       (let ((_e1557015914_ (gx#syntax-e _hd1556715908_)))
                         (let ((_lp-tl1557215921_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1557015914_)))
                               (_lp-hd1557115918_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1557015914_))))
                           (_loop1556915904_
                            _lp-tl1557215921_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd1557115918_ _body1557315911_)))))
                       (let ((_body1557415924_ (reverse _body1557315911_)))
                         (___kont2311023111_ _body1557415924_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1556915904_
                                                  _target1556615898_
                                                  '())))))
                                       (if (gx#stx-pair? ___stx2310523106_)
                                           (let ((_e1555515958_
                                                  (gx#syntax-e
                                                   ___stx2310523106_)))
                                             (let ((_tl1555315965_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e1555515958_)))
                                                   (_hd1555415962_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e1555515958_))))
                                               (if (gx#identifier?
                                                    _hd1555415962_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/sugar$<sugar:2>[1]#_g24803_|
                                                        _hd1555415962_)
                                                       (if (gx#stx-pair?
                                                            _tl1555315965_)
                                                           (let ((_e1555815968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1555315965_)))
                     (let ((_tl1555615975_
                            (let ()
                              (declare (not safe))
                              (##cdr _e1555815968_)))
                           (_hd1555715972_
                            (let ()
                              (declare (not safe))
                              (##car _e1555815968_))))
                       (if (gx#identifier? _hd1555715972_)
                           (if (gx#free-identifier=?
                                |gerbil/core/sugar$<sugar:2>[1]#_g24802_|
                                _hd1555715972_)
                               (if (gx#stx-pair? _tl1555615975_)
                                   (let ((_e1556115978_
                                          (gx#syntax-e _tl1555615975_)))
                                     (let ((_tl1555915985_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e1556115978_)))
                                           (_hd1556015982_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e1556115978_))))
                                       (if (gx#stx-null? _tl1555915985_)
                                           (___kont2310823109_ _hd1556015982_)
                                           (if (gx#stx-pair/null?
                                                _tl1555315965_)
                                               (let ((___splice2311223113_
                                                      (gx#syntax-split-splice
                                                       _tl1555315965_
                                                       '0)))
                                                 (let ((_tl1556815901_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice2311223113_
                                                           '1)))
                                                       (_target1556615898_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice2311223113_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _tl1556815901_)
                                                       (___match2317023171_
                                                        _e1555515958_
                                                        _hd1555415962_
                                                        _tl1555315965_
                                                        ___splice2311223113_
                                                        _target1556615898_
                                                        _tl1556815901_)
                                                       (if (gx#stx-pair/null?
                                                            _hd1555415962_)
                                                           (let ((___splice2311623117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _hd1555415962_ '0)))
                     (let ((_tl1558215766_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice2311623117_ '1)))
                           (_target1558015763_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice2311623117_ '0))))
                       (if (gx#stx-null? _tl1558215766_)
                           (___match2318423185_
                            _e1555515958_
                            _hd1555415962_
                            _tl1555315965_
                            ___splice2311623117_
                            _target1558015763_
                            _tl1558215766_)
                           (let () (declare (not safe)) (_g1555015623_)))))
                   (let () (declare (not safe)) (_g1555015623_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _hd1555415962_)
                                                   (let ((___splice2311623117_
                                                          (gx#syntax-split-splice
                                                           _hd1555415962_
                                                           '0)))
                                                     (let ((_tl1558215766_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice2311623117_
                                                               '1)))
                                                           (_target1558015763_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice2311623117_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _tl1558215766_)
                                                           (___match2318423185_
                                                            _e1555515958_
                                                            _hd1555415962_
                                                            _tl1555315965_
                                                            ___splice2311623117_
                                                            _target1558015763_
                                                            _tl1558215766_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_g1555015623_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1555015623_)))))))
                                   (if (gx#stx-pair/null? _tl1555315965_)
                                       (let ((___splice2311223113_
                                              (gx#syntax-split-splice
                                               _tl1555315965_
                                               '0)))
                                         (let ((_tl1556815901_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice2311223113_
                                                   '1)))
                                               (_target1556615898_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice2311223113_
                                                   '0))))
                                           (if (gx#stx-null? _tl1556815901_)
                                               (___match2317023171_
                                                _e1555515958_
                                                _hd1555415962_
                                                _tl1555315965_
                                                ___splice2311223113_
                                                _target1556615898_
                                                _tl1556815901_)
                                               (if (gx#stx-pair/null?
                                                    _hd1555415962_)
                                                   (let ((___splice2311623117_
                                                          (gx#syntax-split-splice
                                                           _hd1555415962_
                                                           '0)))
                                                     (let ((_tl1558215766_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice2311623117_
                                                               '1)))
                                                           (_target1558015763_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice2311623117_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _tl1558215766_)
                                                           (___match2318423185_
                                                            _e1555515958_
                                                            _hd1555415962_
                                                            _tl1555315965_
                                                            ___splice2311623117_
                                                            _target1558015763_
                                                            _tl1558215766_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_g1555015623_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1555015623_))))))
                                       (if (gx#stx-pair/null? _hd1555415962_)
                                           (let ((___splice2311623117_
                                                  (gx#syntax-split-splice
                                                   _hd1555415962_
                                                   '0)))
                                             (let ((_tl1558215766_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice2311623117_
                                                       '1)))
                                                   (_target1558015763_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice2311623117_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _tl1558215766_)
                                                   (___match2318423185_
                                                    _e1555515958_
                                                    _hd1555415962_
                                                    _tl1555315965_
                                                    ___splice2311623117_
                                                    _target1558015763_
                                                    _tl1558215766_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1555015623_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g1555015623_)))))
                               (if (gx#stx-pair/null? _tl1555315965_)
                                   (let ((___splice2311223113_
                                          (gx#syntax-split-splice
                                           _tl1555315965_
                                           '0)))
                                     (let ((_tl1556815901_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2311223113_
                                               '1)))
                                           (_target1556615898_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2311223113_
                                               '0))))
                                       (if (gx#stx-null? _tl1556815901_)
                                           (___match2317023171_
                                            _e1555515958_
                                            _hd1555415962_
                                            _tl1555315965_
                                            ___splice2311223113_
                                            _target1556615898_
                                            _tl1556815901_)
                                           (if (gx#stx-pair/null?
                                                _hd1555415962_)
                                               (let ((___splice2311623117_
                                                      (gx#syntax-split-splice
                                                       _hd1555415962_
                                                       '0)))
                                                 (let ((_tl1558215766_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice2311623117_
                                                           '1)))
                                                       (_target1558015763_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice2311623117_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _tl1558215766_)
                                                       (___match2318423185_
                                                        _e1555515958_
                                                        _hd1555415962_
                                                        _tl1555315965_
                                                        ___splice2311623117_
                                                        _target1558015763_
                                                        _tl1558215766_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_g1555015623_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g1555015623_))))))
                                   (if (gx#stx-pair/null? _hd1555415962_)
                                       (let ((___splice2311623117_
                                              (gx#syntax-split-splice
                                               _hd1555415962_
                                               '0)))
                                         (let ((_tl1558215766_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice2311623117_
                                                   '1)))
                                               (_target1558015763_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice2311623117_
                                                   '0))))
                                           (if (gx#stx-null? _tl1558215766_)
                                               (___match2318423185_
                                                _e1555515958_
                                                _hd1555415962_
                                                _tl1555315965_
                                                ___splice2311623117_
                                                _target1558015763_
                                                _tl1558215766_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_g1555015623_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g1555015623_)))))
                           (if (gx#stx-pair/null? _tl1555315965_)
                               (let ((___splice2311223113_
                                      (gx#syntax-split-splice
                                       _tl1555315965_
                                       '0)))
                                 (let ((_tl1556815901_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice2311223113_
                                           '1)))
                                       (_target1556615898_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice2311223113_
                                           '0))))
                                   (if (gx#stx-null? _tl1556815901_)
                                       (___match2317023171_
                                        _e1555515958_
                                        _hd1555415962_
                                        _tl1555315965_
                                        ___splice2311223113_
                                        _target1556615898_
                                        _tl1556815901_)
                                       (if (gx#stx-pair/null? _hd1555415962_)
                                           (let ((___splice2311623117_
                                                  (gx#syntax-split-splice
                                                   _hd1555415962_
                                                   '0)))
                                             (let ((_tl1558215766_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice2311623117_
                                                       '1)))
                                                   (_target1558015763_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice2311623117_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _tl1558215766_)
                                                   (___match2318423185_
                                                    _e1555515958_
                                                    _hd1555415962_
                                                    _tl1555315965_
                                                    ___splice2311623117_
                                                    _target1558015763_
                                                    _tl1558215766_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1555015623_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g1555015623_))))))
                               (if (gx#stx-pair/null? _hd1555415962_)
                                   (let ((___splice2311623117_
                                          (gx#syntax-split-splice
                                           _hd1555415962_
                                           '0)))
                                     (let ((_tl1558215766_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2311623117_
                                               '1)))
                                           (_target1558015763_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2311623117_
                                               '0))))
                                       (if (gx#stx-null? _tl1558215766_)
                                           (___match2318423185_
                                            _e1555515958_
                                            _hd1555415962_
                                            _tl1555315965_
                                            ___splice2311623117_
                                            _target1558015763_
                                            _tl1558215766_)
                                           (let ()
                                             (declare (not safe))
                                             (_g1555015623_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g1555015623_)))))))
                   (if (gx#stx-pair/null? _tl1555315965_)
                       (let ((___splice2311223113_
                              (gx#syntax-split-splice _tl1555315965_ '0)))
                         (let ((_tl1556815901_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice2311223113_ '1)))
                               (_target1556615898_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice2311223113_ '0))))
                           (if (gx#stx-null? _tl1556815901_)
                               (___match2317023171_
                                _e1555515958_
                                _hd1555415962_
                                _tl1555315965_
                                ___splice2311223113_
                                _target1556615898_
                                _tl1556815901_)
                               (if (gx#stx-pair/null? _hd1555415962_)
                                   (let ((___splice2311623117_
                                          (gx#syntax-split-splice
                                           _hd1555415962_
                                           '0)))
                                     (let ((_tl1558215766_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2311623117_
                                               '1)))
                                           (_target1558015763_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2311623117_
                                               '0))))
                                       (if (gx#stx-null? _tl1558215766_)
                                           (___match2318423185_
                                            _e1555515958_
                                            _hd1555415962_
                                            _tl1555315965_
                                            ___splice2311623117_
                                            _target1558015763_
                                            _tl1558215766_)
                                           (let ()
                                             (declare (not safe))
                                             (_g1555015623_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g1555015623_))))))
                       (if (gx#stx-pair/null? _hd1555415962_)
                           (let ((___splice2311623117_
                                  (gx#syntax-split-splice _hd1555415962_ '0)))
                             (let ((_tl1558215766_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref ___splice2311623117_ '1)))
                                   (_target1558015763_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref ___splice2311623117_ '0))))
                               (if (gx#stx-null? _tl1558215766_)
                                   (___match2318423185_
                                    _e1555515958_
                                    _hd1555415962_
                                    _tl1555315965_
                                    ___splice2311623117_
                                    _target1558015763_
                                    _tl1558215766_)
                                   (let ()
                                     (declare (not safe))
                                     (_g1555015623_)))))
                           (let () (declare (not safe)) (_g1555015623_)))))
               (if (gx#stx-pair/null? _hd1555415962_)
                   (let ((___splice2311623117_
                          (gx#syntax-split-splice _hd1555415962_ '0)))
                     (let ((_tl1558215766_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice2311623117_ '1)))
                           (_target1558015763_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice2311623117_ '0))))
                       (if (gx#stx-null? _tl1558215766_)
                           (___match2318423185_
                            _e1555515958_
                            _hd1555415962_
                            _tl1555315965_
                            ___splice2311623117_
                            _target1558015763_
                            _tl1558215766_)
                           (let () (declare (not safe)) (_g1555015623_)))))
                   (let () (declare (not safe)) (_g1555015623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _hd1555415962_)
                                                       (let ((___splice2311623117_
                                                              (gx#syntax-split-splice
                                                               _hd1555415962_
                                                               '0)))
                                                         (let ((_tl1558215766_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref ___splice2311623117_ '1)))
                       (_target1558015763_
                        (let ()
                          (declare (not safe))
                          (##vector-ref ___splice2311623117_ '0))))
                   (if (gx#stx-null? _tl1558215766_)
                       (___match2318423185_
                        _e1555515958_
                        _hd1555415962_
                        _tl1555315965_
                        ___splice2311623117_
                        _target1558015763_
                        _tl1558215766_)
                       (let () (declare (not safe)) (_g1555015623_)))))
               (let () (declare (not safe)) (_g1555015623_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g1555015623_))))))))
                              (___kont2320623207_
                               (lambda ()
                                 (_check-duplicate-datums13011_ _datums15481_)
                                 (values (reverse _datums15481_)
                                         (reverse _dispatch15482_)
                                         (let ((_$e15509_ _default15483_))
                                           (if _$e15509_
                                               _$e15509_
                                               '#!void))))))
                          (let ((_g1548515513_
                                 (lambda ()
                                   (if (gx#stx-null? ___stx2320123202_)
                                       (___kont2320623207_)
                                       (let ()
                                         (declare (not safe))
                                         (_g1548615498_))))))
                            (if (gx#stx-pair? ___stx2320123202_)
                                (let ((_e1549215520_
                                       (gx#syntax-e ___stx2320123202_)))
                                  (let ((_tl1549015527_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1549215520_)))
                                        (_hd1549115524_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1549215520_))))
                                    (___kont2320423205_
                                     _tl1549015527_
                                     _hd1549115524_)))
                                (let ()
                                  (declare (not safe))
                                  (_g1548515513_)))))))))
                 (_check-duplicate-datums13011_
                  (lambda (_datums15460_)
                    (let ((_ht15463_ (make-hash-table)))
                      (for-each
                       (lambda (_lst15466_)
                         (for-each
                          (lambda (_datum15469_)
                            (if (hash-get _ht15463_ _datum15469_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _stx13006_
                                 _datum15469_)
                                (hash-put! _ht15463_ _datum15469_ '#t)))
                          _lst15466_))
                       _datums15460_))))
                 (_count-datums13012_
                  (lambda (_datums15453_)
                    (foldl (lambda (_lst15456_ _r15458_)
                             (+ (length _lst15456_) _r15458_))
                           '0
                           _datums15453_)))
                 (_symbolic-datums?13013_
                  (lambda (_datums15447_)
                    (andmap (lambda (_lst15450_) (andmap symbol? _lst15450_))
                            _datums15447_)))
                 (_char-datums?13014_
                  (lambda (_datums15441_)
                    (andmap (lambda (_lst15444_) (andmap char? _lst15444_))
                            _datums15441_)))
                 (_fixnum-datums?13015_
                  (lambda (_datums15435_)
                    (andmap (lambda (_lst15438_) (andmap fixnum? _lst15438_))
                            _datums15435_)))
                 (_eq-datums?13016_
                  (lambda (_datums15418_)
                    (andmap (lambda (_lst15421_)
                              (andmap (lambda (_x15424_)
                                        (let ((_$e15427_
                                               (let ()
                                                 (declare (not safe))
                                                 (symbol? _x15424_))))
                                          (if _$e15427_
                                              _$e15427_
                                              (let ((_$e15431_
                                                     (keyword? _x15424_)))
                                                (if _$e15431_
                                                    _$e15431_
                                                    (let ()
                                                      (declare (not safe))
                                                      (immediate?
                                                       _x15424_)))))))
                                      _lst15421_))
                            _datums15418_)))
                 (_generate-simple-case13017_
                  (lambda (_e15182_
                           _datums15184_
                           _dispatch15185_
                           _default15186_)
                    (let* ((_g1518815196_
                            (lambda (_g1518915192_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g1518915192_)))
                           (_g1518715414_
                            (lambda (_g1518915200_)
                              ((lambda (_L15203_)
                                 (let ()
                                   (let _recur15215_ ((_datums15218_
                                                       _datums15184_)
                                                      (_dispatch15220_
                                                       _dispatch15185_))
                                     (let* ((___stx2321923220_ _datums15218_)
                                            (_g1522315244_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx2321923220_))))
                                       (let ((___kont2322223223_
                                              (lambda (_L15302_ _L15304_)
                                                (let* ((_g1532415336_
                                                        (lambda (_g1532515332_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g1532515332_)))
                                                       (_g1532315406_
                                                        (lambda (_g1532515340_)
                                                          (if (gx#stx-pair?
                                                               _g1532515340_)
                                                              (let ((_e1533015343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g1532515340_)))
                        (let ((_hd1532915347_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1533015343_)))
                              (_tl1532815350_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1533015343_))))
                          ((lambda (_L15353_ _L15355_)
                             (let* ((_g1536715375_
                                     (lambda (_g1536815371_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g1536815371_)))
                                    (_g1536615402_
                                     (lambda (_g1536815379_)
                                       ((lambda (_L15382_)
                                          (let ()
                                            (let ((__tmp24814
                                                   (gx#datum->syntax '#f 'if))
                                                  (__tmp24804
                                                   (let ((__tmp24807
                                                          (let ((__tmp24813
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'or))
                        (__tmp24808
                         (foldr (lambda (_g1539315396_ _g1539415399_)
                                  (let ((__tmp24809
                                         (let ((__tmp24812
                                                (gx#datum->syntax
                                                 '#f
                                                 '~case-test))
                                               (__tmp24810
                                                (let ((__tmp24811
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L15203_ '()))))
                                                  (declare (not safe))
                                                  (cons _g1539315396_
                                                        __tmp24811))))
                                           (declare (not safe))
                                           (cons __tmp24812 __tmp24810))))
                                    (declare (not safe))
                                    (cons __tmp24809 _g1539415399_)))
                                '()
                                _L15304_)))
                    (declare (not safe))
                    (cons __tmp24813 __tmp24808)))
                 (__tmp24805
                  (let ((__tmp24806
                         (let () (declare (not safe)) (cons _L15382_ '()))))
                    (declare (not safe))
                    (cons _L15355_ __tmp24806))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp24807
                                                           __tmp24805))))
                                              (declare (not safe))
                                              (cons __tmp24814 __tmp24804))))
                                        _g1536815379_))))
                               (_g1536615402_
                                (_recur15215_ _L15302_ _L15353_))))
                           _tl1532815350_
                           _hd1532915347_)))
                      (_g1532415336_ _g1532515340_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1532315406_
                                                   _dispatch15220_))))
                                             (___kont2322623227_
                                              (lambda () _default15186_)))
                                         (let ((___match2324223243_
                                                (lambda (_e1522915262_
                                                         _hd1522815266_
                                                         _tl1522715269_
                                                         ___splice2322423225_
                                                         _target1523015272_
                                                         _tl1523215275_)
                                                  (letrec ((_loop1523315278_
                                                            (lambda (_hd1523115282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _datum1523715285_)
                      (if (gx#stx-pair? _hd1523115282_)
                          (let ((_e1523415288_ (gx#syntax-e _hd1523115282_)))
                            (let ((_lp-tl1523615295_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1523415288_)))
                                  (_lp-hd1523515292_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1523415288_))))
                              (_loop1523315278_
                               _lp-tl1523615295_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd1523515292_ _datum1523715285_)))))
                          (let ((_datum1523815298_
                                 (reverse _datum1523715285_)))
                            (___kont2322223223_
                             _tl1522715269_
                             _datum1523815298_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1523315278_
                                                     _target1523015272_
                                                     '())))))
                                           (if (gx#stx-pair? ___stx2321923220_)
                                               (let ((_e1522915262_
                                                      (gx#syntax-e
                                                       ___stx2321923220_)))
                                                 (let ((_tl1522715269_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1522915262_)))
                                                       (_hd1522815266_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1522915262_))))
                                                   (if (gx#stx-pair/null?
                                                        _hd1522815266_)
                                                       (let ((___splice2322423225_
                                                              (gx#syntax-split-splice
                                                               _hd1522815266_
                                                               '0)))
                                                         (let ((_tl1523215275_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref ___splice2322423225_ '1)))
                       (_target1523015272_
                        (let ()
                          (declare (not safe))
                          (##vector-ref ___splice2322423225_ '0))))
                   (if (gx#stx-null? _tl1523215275_)
                       (___match2324223243_
                        _e1522915262_
                        _hd1522815266_
                        _tl1522715269_
                        ___splice2322423225_
                        _target1523015272_
                        _tl1523215275_)
                       (___kont2322623227_))))
               (___kont2322623227_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2322623227_))))))))
                               _g1518915200_))))
                      (_g1518715414_ _e15182_))))
                 (_datum-dispatch-index13018_
                  (lambda (_datums15054_)
                    (let _lp15057_ ((_rest15060_ _datums15054_)
                                    (_ix15062_ '0)
                                    (_r15063_ '()))
                      (let* ((___stx2324523246_ _rest15060_)
                             (_g1506615087_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2324523246_))))
                        (let ((___kont2324823249_
                               (lambda (_L15145_ _L15147_)
                                 (_lp15057_
                                  _L15145_
                                  (let ()
                                    (declare (not safe))
                                    (fx+ _ix15062_ '1))
                                  (foldl (lambda (_x15166_ _r15168_)
                                           (let ((__tmp24815
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _x15166_
                                                          _ix15062_))))
                                             (declare (not safe))
                                             (cons __tmp24815 _r15168_)))
                                         _r15063_
                                         (foldr (lambda (_g1516915172_
                                                         _g1517015175_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g1516915172_
                                                          _g1517015175_)))
                                                '()
                                                _L15147_)))))
                              (___kont2325223253_ (lambda () _r15063_)))
                          (let ((___match2326823269_
                                 (lambda (_e1507215105_
                                          _hd1507115109_
                                          _tl1507015112_
                                          ___splice2325023251_
                                          _target1507315115_
                                          _tl1507515118_)
                                   (letrec ((_loop1507615121_
                                             (lambda (_hd1507415125_
                                                      _datum1508015128_)
                                               (if (gx#stx-pair?
                                                    _hd1507415125_)
                                                   (let ((_e1507715131_
                                                          (gx#syntax-e
                                                           _hd1507415125_)))
                                                     (let ((_lp-tl1507915138_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e1507715131_)))
                                                           (_lp-hd1507815135_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e1507715131_))))
                                                       (_loop1507615121_
                                                        _lp-tl1507915138_
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _lp-hd1507815135_
                                                                _datum1508015128_)))))
                                                   (let ((_datum1508115141_
                                                          (reverse _datum1508015128_)))
                                                     (___kont2324823249_
                                                      _tl1507015112_
                                                      _datum1508115141_))))))
                                     (_loop1507615121_
                                      _target1507315115_
                                      '())))))
                            (if (gx#stx-pair? ___stx2324523246_)
                                (let ((_e1507215105_
                                       (gx#syntax-e ___stx2324523246_)))
                                  (let ((_tl1507015112_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1507215105_)))
                                        (_hd1507115109_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1507215105_))))
                                    (if (gx#stx-pair/null? _hd1507115109_)
                                        (let ((___splice2325023251_
                                               (gx#syntax-split-splice
                                                _hd1507115109_
                                                '0)))
                                          (let ((_tl1507515118_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice2325023251_
                                                    '1)))
                                                (_target1507315115_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice2325023251_
                                                    '0))))
                                            (if (gx#stx-null? _tl1507515118_)
                                                (___match2326823269_
                                                 _e1507215105_
                                                 _hd1507115109_
                                                 _tl1507015112_
                                                 ___splice2325023251_
                                                 _target1507315115_
                                                 _tl1507515118_)
                                                (___kont2325223253_))))
                                        (___kont2325223253_))))
                                (___kont2325223253_))))))))
                 (_duplicate-indexes?13019_
                  (lambda (_xs15035_)
                    (let ((_ht15038_ (make-hash-table-eq)))
                      (let _lp15041_ ((_rest15044_ _xs15035_))
                        (if (let () (declare (not safe)) (pair? _rest15044_))
                            (let* ((_ix15047_ (car _rest15044_))
                                   (_$e15050_ (hash-get _ht15038_ _ix15047_)))
                              (if _$e15050_
                                  _$e15050_
                                  (begin
                                    (hash-put! _ht15038_ _ix15047_ '#t)
                                    (_lp15041_ (cdr _rest15044_)))))
                            '#f)))))
                 (_generate-hash-dispatch-table13020_
                  (lambda (_indexes15004_ _hash-e15006_)
                    (let _lp15008_ ((_len15011_
                                     (* '2 (length _indexes15004_))))
                      (let* ((_hs15017_
                              (map (lambda (_x15014_)
                                     (_hash-e15006_ (car _x15014_)))
                                   _indexes15004_))
                             (_xs15023_
                              (map (lambda (_h15020_)
                                     (fxmodulo _h15020_ _len15011_))
                                   _hs15017_)))
                        (if (_duplicate-indexes?13019_ _xs15023_)
                            (if (< _len15011_ '131072)
                                (_lp15008_ (quotient (fx* _len15011_ '3) '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _stx13006_
                                 _indexes15004_))
                            (let ((_tab15028_ (make-vector _len15011_ '#f)))
                              (for-each
                               (lambda (_entry15031_ _x15033_)
                                 (vector-set!
                                  _tab15028_
                                  _x15033_
                                  _entry15031_))
                               _indexes15004_
                               _xs15023_)
                              _tab15028_))))))
                 (_generate-symbolic-dispatch13021_
                  (lambda (_e14607_
                           _datums14609_
                           _dispatch14610_
                           _default14611_)
                    (let* ((_indexes14613_
                            (_datum-dispatch-index13018_ _datums14609_))
                           (_tab14616_
                            (_generate-hash-dispatch-table13020_
                             _indexes14613_
                             symbol-hash)))
                      (if (= (length _dispatch14610_) '1)
                          (let* ((_tab14624_
                                  (vector-map
                                   (lambda (_x14621_)
                                     (if _x14621_ (car _x14621_) '#f))
                                   _tab14616_))
                                 (_g1462714665_
                                  (lambda (_g1462814661_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1462814661_)))
                                 (_g1462614796_
                                  (lambda (_g1462814669_)
                                    (if (gx#stx-pair? _g1462814669_)
                                        (let ((_e1463814672_
                                               (gx#syntax-e _g1462814669_)))
                                          (let ((_hd1463714676_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1463814672_)))
                                                (_tl1463614679_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1463814672_))))
                                            (if (gx#stx-pair? _tl1463614679_)
                                                (let ((_e1464114682_
                                                       (gx#syntax-e
                                                        _tl1463614679_)))
                                                  (let ((_hd1464014686_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1464114682_)))
                                                        (_tl1463914689_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1464114682_))))
                                                    (if (gx#stx-pair?
                                                         _tl1463914689_)
                                                        (let ((_e1464414692_
                                                               (gx#syntax-e
                                                                _tl1463914689_)))
                                                          (let ((_hd1464314696_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1464414692_)))
                        (_tl1464214699_
                         (let () (declare (not safe)) (##cdr _e1464414692_))))
                    (if (gx#stx-pair? _tl1464214699_)
                        (let ((_e1464714702_ (gx#syntax-e _tl1464214699_)))
                          (let ((_hd1464614706_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1464714702_)))
                                (_tl1464514709_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1464714702_))))
                            (if (gx#stx-pair? _hd1464614706_)
                                (let ((_e1465014712_
                                       (gx#syntax-e _hd1464614706_)))
                                  (let ((_hd1464914716_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1465014712_)))
                                        (_tl1464814719_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1465014712_))))
                                    (if (gx#stx-null? _tl1464814719_)
                                        (if (gx#stx-pair? _tl1464514709_)
                                            (let ((_e1465314722_
                                                   (gx#syntax-e
                                                    _tl1464514709_)))
                                              (let ((_hd1465214726_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1465314722_)))
                                                    (_tl1465114729_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1465314722_))))
                                                (if (gx#stx-pair?
                                                     _tl1465114729_)
                                                    (let ((_e1465614732_
                                                           (gx#syntax-e
                                                            _tl1465114729_)))
                                                      (let ((_hd1465514736_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1465614732_)))
                    (_tl1465414739_
                     (let () (declare (not safe)) (##cdr _e1465614732_))))
                (if (gx#stx-pair? _tl1465414739_)
                    (let ((_e1465914742_ (gx#syntax-e _tl1465414739_)))
                      (let ((_hd1465814746_
                             (let ()
                               (declare (not safe))
                               (##car _e1465914742_)))
                            (_tl1465714749_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1465914742_))))
                        (if (gx#stx-null? _tl1465714749_)
                            ((lambda (_L14752_
                                      _L14754_
                                      _L14755_
                                      _L14756_
                                      _L14757_
                                      _L14758_
                                      _L14759_)
                               (let ()
                                 (let ((__tmp24973 (gx#datum->syntax '#f 'let))
                                       (__tmp24909
                                        (let ((__tmp24960
                                               (let ((__tmp24967
                                                      (let ((__tmp24968
                                                             (let ((__tmp24969
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp24972 (gx#datum->syntax '#f 'lambda))
                                  (__tmp24970
                                   (let ((__tmp24971
                                          (let ()
                                            (declare (not safe))
                                            (cons _L14755_ '()))))
                                     (declare (not safe))
                                     (cons '() __tmp24971))))
                              (declare (not safe))
                              (cons __tmp24972 __tmp24970))))
                       (declare (not safe))
                       (cons __tmp24969 '()))))
                (declare (not safe))
                (cons _L14758_ __tmp24968)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp24961
                                                      (let ((__tmp24962
                                                             (let ((__tmp24963
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp24964
                                   (let ((__tmp24966
                                          (gx#datum->syntax '#f 'quote))
                                         (__tmp24965
                                          (let ()
                                            (declare (not safe))
                                            (cons _L14754_ '()))))
                                     (declare (not safe))
                                     (cons __tmp24966 __tmp24965))))
                              (declare (not safe))
                              (cons __tmp24964 '()))))
                       (declare (not safe))
                       (cons _L14757_ __tmp24963))))
                (declare (not safe))
                (cons __tmp24962 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24967 __tmp24961)))
                                              (__tmp24910
                                               (let ((__tmp24911
                                                      (let ((__tmp24959
                                                             (gx#datum->syntax
                                                              '#f
                                                              'if))
                                                            (__tmp24912
                                                             (let ((__tmp24956
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp24958 (gx#datum->syntax '#f 'symbol?))
                                  (__tmp24957
                                   (let ()
                                     (declare (not safe))
                                     (cons _L14759_ '()))))
                              (declare (not safe))
                              (cons __tmp24958 __tmp24957)))
                           (__tmp24913
                            (let ((__tmp24916
                                   (let ((__tmp24955
                                          (gx#datum->syntax '#f 'let*))
                                         (__tmp24917
                                          (let ((__tmp24930
                                                 (let ((__tmp24949
                                                        (let ((__tmp24954
                                                               (gx#datum->syntax
                                                                '#f
                                                                'h))
                                                              (__tmp24950
                                                               (let ((__tmp24951
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp24953
                                     (gx#datum->syntax '#f '##symbol-hash))
                                    (__tmp24952
                                     (let ()
                                       (declare (not safe))
                                       (cons _L14759_ '()))))
                                (declare (not safe))
                                (cons __tmp24953 __tmp24952))))
                         (declare (not safe))
                         (cons __tmp24951 '()))))
                  (declare (not safe))
                  (cons __tmp24954 __tmp24950)))
               (__tmp24931
                (let ((__tmp24941
                       (let ((__tmp24948 (gx#datum->syntax '#f 'ix))
                             (__tmp24942
                              (let ((__tmp24943
                                     (let ((__tmp24947
                                            (gx#datum->syntax '#f '##fxmodulo))
                                           (__tmp24944
                                            (let ((__tmp24946
                                                   (gx#datum->syntax '#f 'h))
                                                  (__tmp24945
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L14752_ '()))))
                                              (declare (not safe))
                                              (cons __tmp24946 __tmp24945))))
                                       (declare (not safe))
                                       (cons __tmp24947 __tmp24944))))
                                (declare (not safe))
                                (cons __tmp24943 '()))))
                         (declare (not safe))
                         (cons __tmp24948 __tmp24942)))
                      (__tmp24932
                       (let ((__tmp24933
                              (let ((__tmp24940 (gx#datum->syntax '#f 'q))
                                    (__tmp24934
                                     (let ((__tmp24935
                                            (let ((__tmp24939
                                                   (gx#datum->syntax
                                                    '#f
                                                    '##vector-ref))
                                                  (__tmp24936
                                                   (let ((__tmp24937
                                                          (let ((__tmp24938
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'ix)))
                    (declare (not safe))
                    (cons __tmp24938 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L14757_
                                                           __tmp24937))))
                                              (declare (not safe))
                                              (cons __tmp24939 __tmp24936))))
                                       (declare (not safe))
                                       (cons __tmp24935 '()))))
                                (declare (not safe))
                                (cons __tmp24940 __tmp24934))))
                         (declare (not safe))
                         (cons __tmp24933 '()))))
                  (declare (not safe))
                  (cons __tmp24941 __tmp24932))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24949
                                                         __tmp24931)))
                                                (__tmp24918
                                                 (let ((__tmp24919
                                                        (let ((__tmp24929
                                                               (gx#datum->syntax
                                                                '#f
                                                                'if))
                                                              (__tmp24920
                                                               (let ((__tmp24924
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp24928 (gx#datum->syntax '#f 'eq?))
                                    (__tmp24925
                                     (let ((__tmp24927
                                            (gx#datum->syntax '#f 'q))
                                           (__tmp24926
                                            (let ()
                                              (declare (not safe))
                                              (cons _L14759_ '()))))
                                       (declare (not safe))
                                       (cons __tmp24927 __tmp24926))))
                                (declare (not safe))
                                (cons __tmp24928 __tmp24925)))
                             (__tmp24921
                              (let ((__tmp24922
                                     (let ((__tmp24923
                                            (let ()
                                              (declare (not safe))
                                              (cons _L14758_ '()))))
                                       (declare (not safe))
                                       (cons __tmp24923 '()))))
                                (declare (not safe))
                                (cons _L14756_ __tmp24922))))
                         (declare (not safe))
                         (cons __tmp24924 __tmp24921))))
                  (declare (not safe))
                  (cons __tmp24929 __tmp24920))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24919 '()))))
                                            (declare (not safe))
                                            (cons __tmp24930 __tmp24918))))
                                     (declare (not safe))
                                     (cons __tmp24955 __tmp24917)))
                                  (__tmp24914
                                   (let ((__tmp24915
                                          (let ()
                                            (declare (not safe))
                                            (cons _L14758_ '()))))
                                     (declare (not safe))
                                     (cons __tmp24915 '()))))
                              (declare (not safe))
                              (cons __tmp24916 __tmp24914))))
                       (declare (not safe))
                       (cons __tmp24956 __tmp24913))))
                (declare (not safe))
                (cons __tmp24959 __tmp24912))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24911 '()))))
                                          (declare (not safe))
                                          (cons __tmp24960 __tmp24910))))
                                   (declare (not safe))
                                   (cons __tmp24973 __tmp24909))))
                             _hd1465814746_
                             _hd1465514736_
                             _hd1465214726_
                             _hd1464914716_
                             _hd1464314696_
                             _hd1464014686_
                             _hd1463714676_)
                            (_g1462714665_ _g1462814669_))))
                    (_g1462714665_ _g1462814669_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1462714665_
                                                     _g1462814669_))))
                                            (_g1462714665_ _g1462814669_))
                                        (_g1462714665_ _g1462814669_))))
                                (_g1462714665_ _g1462814669_))))
                        (_g1462714665_ _g1462814669_))))
                (_g1462714665_ _g1462814669_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1462714665_
                                                 _g1462814669_))))
                                        (_g1462714665_ _g1462814669_)))))
                            (_g1462614796_
                             (list _e14607_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch14610_
                                   _default14611_
                                   _tab14624_
                                   (vector-length _tab14624_))))
                          (let* ((_g1480014844_
                                  (lambda (_g1480114840_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1480114840_)))
                                 (_g1479915000_
                                  (lambda (_g1480114848_)
                                    (if (gx#stx-pair? _g1480114848_)
                                        (let ((_e1481114851_
                                               (gx#syntax-e _g1480114848_)))
                                          (let ((_hd1481014855_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1481114851_)))
                                                (_tl1480914858_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1481114851_))))
                                            (if (gx#stx-pair? _tl1480914858_)
                                                (let ((_e1481414861_
                                                       (gx#syntax-e
                                                        _tl1480914858_)))
                                                  (let ((_hd1481314865_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1481414861_)))
                                                        (_tl1481214868_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1481414861_))))
                                                    (if (gx#stx-pair?
                                                         _tl1481214868_)
                                                        (let ((_e1481714871_
                                                               (gx#syntax-e
                                                                _tl1481214868_)))
                                                          (let ((_hd1481614875_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1481714871_)))
                        (_tl1481514878_
                         (let () (declare (not safe)) (##cdr _e1481714871_))))
                    (if (gx#stx-pair? _tl1481514878_)
                        (let ((_e1482014881_ (gx#syntax-e _tl1481514878_)))
                          (let ((_hd1481914885_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1482014881_)))
                                (_tl1481814888_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1482014881_))))
                            (if (gx#stx-pair/null? _hd1481914885_)
                                (let ((_g24816_
                                       (gx#syntax-split-splice
                                        _hd1481914885_
                                        '0)))
                                  (begin
                                    (let ((_g24817_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g24816_)
                                                 (##vector-length _g24816_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g24817_ 2)))
                                          (error "Context expects 2 values"
                                                 _g24817_)))
                                    (let ((_target1482114891_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g24816_ 0)))
                                          (_tl1482314894_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g24816_ 1))))
                                      (if (gx#stx-null? _tl1482314894_)
                                          (letrec ((_loop1482414897_
                                                    (lambda (_hd1482214901_
                                                             _dispatch1482814904_)
                                                      (if (gx#stx-pair?
                                                           _hd1482214901_)
                                                          (let ((_e1482514907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1482214901_)))
                    (let ((_lp-hd1482614911_
                           (let () (declare (not safe)) (##car _e1482514907_)))
                          (_lp-tl1482714914_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1482514907_))))
                      (_loop1482414897_
                       _lp-tl1482714914_
                       (let ()
                         (declare (not safe))
                         (cons _lp-hd1482614911_ _dispatch1482814904_)))))
                  (let ((_dispatch1482914917_ (reverse _dispatch1482814904_)))
                    (if (gx#stx-pair? _tl1481814888_)
                        (let ((_e1483214921_ (gx#syntax-e _tl1481814888_)))
                          (let ((_hd1483114925_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1483214921_)))
                                (_tl1483014928_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1483214921_))))
                            (if (gx#stx-pair? _tl1483014928_)
                                (let ((_e1483514931_
                                       (gx#syntax-e _tl1483014928_)))
                                  (let ((_hd1483414935_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1483514931_)))
                                        (_tl1483314938_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1483514931_))))
                                    (if (gx#stx-pair? _tl1483314938_)
                                        (let ((_e1483814941_
                                               (gx#syntax-e _tl1483314938_)))
                                          (let ((_hd1483714945_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1483814941_)))
                                                (_tl1483614948_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1483814941_))))
                                            (if (gx#stx-null? _tl1483614948_)
                                                ((lambda (_L14951_
                                                          _L14953_
                                                          _L14954_
                                                          _L14955_
                                                          _L14956_
                                                          _L14957_
                                                          _L14958_)
                                                   (let ()
                                                     (let ((__tmp24908
                                                            (gx#datum->syntax
                                                             '#f
                                                             'let))
                                                           (__tmp24818
                                                            (let ((__tmp24895
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp24902
                                  (let ((__tmp24903
                                         (let ((__tmp24904
                                                (let ((__tmp24907
                                                       (gx#datum->syntax
                                                        '#f
                                                        'lambda))
                                                      (__tmp24905
                                                       (let ((__tmp24906
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L14954_ '()))))
                 (declare (not safe))
                 (cons '() __tmp24906))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp24907
                                                        __tmp24905))))
                                           (declare (not safe))
                                           (cons __tmp24904 '()))))
                                    (declare (not safe))
                                    (cons _L14957_ __tmp24903)))
                                 (__tmp24896
                                  (let ((__tmp24897
                                         (let ((__tmp24898
                                                (let ((__tmp24899
                                                       (let ((__tmp24901
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp24900
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L14953_ '()))))
                 (declare (not safe))
                 (cons __tmp24901 __tmp24900))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp24899 '()))))
                                           (declare (not safe))
                                           (cons _L14956_ __tmp24898))))
                                    (declare (not safe))
                                    (cons __tmp24897 '()))))
                             (declare (not safe))
                             (cons __tmp24902 __tmp24896)))
                          (__tmp24819
                           (let ((__tmp24820
                                  (let ((__tmp24894 (gx#datum->syntax '#f 'if))
                                        (__tmp24821
                                         (let ((__tmp24891
                                                (let ((__tmp24893
                                                       (gx#datum->syntax
                                                        '#f
                                                        'symbol?))
                                                      (__tmp24892
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L14958_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp24893
                                                        __tmp24892)))
                                               (__tmp24822
                                                (let ((__tmp24825
                                                       (let ((__tmp24890
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp24826
                                                              (let ((__tmp24865
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp24884
                                    (let ((__tmp24889
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp24885
                                           (let ((__tmp24886
                                                  (let ((__tmp24888
                                                         (gx#datum->syntax
                                                          '#f
                                                          '##symbol-hash))
                                                        (__tmp24887
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L14958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24888
                                                          __tmp24887))))
                                             (declare (not safe))
                                             (cons __tmp24886 '()))))
                                      (declare (not safe))
                                      (cons __tmp24889 __tmp24885)))
                                   (__tmp24866
                                    (let ((__tmp24876
                                           (let ((__tmp24883
                                                  (gx#datum->syntax '#f 'ix))
                                                 (__tmp24877
                                                  (let ((__tmp24878
                                                         (let ((__tmp24882
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fxmodulo))
                       (__tmp24879
                        (let ((__tmp24881 (gx#datum->syntax '#f 'h))
                              (__tmp24880
                               (let ()
                                 (declare (not safe))
                                 (cons _L14951_ '()))))
                          (declare (not safe))
                          (cons __tmp24881 __tmp24880))))
                   (declare (not safe))
                   (cons __tmp24882 __tmp24879))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24878 '()))))
                                             (declare (not safe))
                                             (cons __tmp24883 __tmp24877)))
                                          (__tmp24867
                                           (let ((__tmp24868
                                                  (let ((__tmp24875
                                                         (gx#datum->syntax
                                                          '#f
                                                          'q))
                                                        (__tmp24869
                                                         (let ((__tmp24870
                                                                (let ((__tmp24874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##vector-ref))
                              (__tmp24871
                               (let ((__tmp24872
                                      (let ((__tmp24873
                                             (gx#datum->syntax '#f 'ix)))
                                        (declare (not safe))
                                        (cons __tmp24873 '()))))
                                 (declare (not safe))
                                 (cons _L14956_ __tmp24872))))
                          (declare (not safe))
                          (cons __tmp24874 __tmp24871))))
                   (declare (not safe))
                   (cons __tmp24870 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24875
                                                          __tmp24869))))
                                             (declare (not safe))
                                             (cons __tmp24868 '()))))
                                      (declare (not safe))
                                      (cons __tmp24876 __tmp24867))))
                               (declare (not safe))
                               (cons __tmp24884 __tmp24866)))
                            (__tmp24827
                             (let ((__tmp24828
                                    (let ((__tmp24864
                                           (gx#datum->syntax '#f 'if))
                                          (__tmp24829
                                           (let ((__tmp24863
                                                  (gx#datum->syntax '#f 'q))
                                                 (__tmp24830
                                                  (let ((__tmp24833
                                                         (let ((__tmp24862
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if))
                       (__tmp24834
                        (let ((__tmp24854
                               (let ((__tmp24861 (gx#datum->syntax '#f 'eq?))
                                     (__tmp24855
                                      (let ((__tmp24857
                                             (let ((__tmp24860
                                                    (gx#datum->syntax
                                                     '#f
                                                     '##car))
                                                   (__tmp24858
                                                    (let ((__tmp24859
                                                           (gx#datum->syntax
                                                            '#f
                                                            'q)))
                                                      (declare (not safe))
                                                      (cons __tmp24859 '()))))
                                               (declare (not safe))
                                               (cons __tmp24860 __tmp24858)))
                                            (__tmp24856
                                             (let ()
                                               (declare (not safe))
                                               (cons _L14958_ '()))))
                                        (declare (not safe))
                                        (cons __tmp24857 __tmp24856))))
                                 (declare (not safe))
                                 (cons __tmp24861 __tmp24855)))
                              (__tmp24835
                               (let ((__tmp24838
                                      (let ((__tmp24853
                                             (gx#datum->syntax '#f 'let))
                                            (__tmp24839
                                             (let ((__tmp24846
                                                    (let ((__tmp24852
                                                           (gx#datum->syntax
                                                            '#f
                                                            'x))
                                                          (__tmp24847
                                                           (let ((__tmp24848
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp24851 (gx#datum->syntax '#f '##cdr))
                                (__tmp24849
                                 (let ((__tmp24850 (gx#datum->syntax '#f 'q)))
                                   (declare (not safe))
                                   (cons __tmp24850 '()))))
                            (declare (not safe))
                            (cons __tmp24851 __tmp24849))))
                     (declare (not safe))
                     (cons __tmp24848 '()))))
              (declare (not safe))
              (cons __tmp24852 __tmp24847)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp24840
                                                    (let ((__tmp24841
                                                           (let ((__tmp24845
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '~case-dispatch))
                         (__tmp24842
                          (let ((__tmp24844 (gx#datum->syntax '#f 'x))
                                (__tmp24843
                                 (foldr (lambda (_g1499114994_ _g1499214997_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g1499114994_
                                                  _g1499214997_)))
                                        '()
                                        _L14955_)))
                            (declare (not safe))
                            (cons __tmp24844 __tmp24843))))
                     (declare (not safe))
                     (cons __tmp24845 __tmp24842))))
              (declare (not safe))
              (cons __tmp24841 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp24846 __tmp24840))))
                                        (declare (not safe))
                                        (cons __tmp24853 __tmp24839)))
                                     (__tmp24836
                                      (let ((__tmp24837
                                             (let ()
                                               (declare (not safe))
                                               (cons _L14957_ '()))))
                                        (declare (not safe))
                                        (cons __tmp24837 '()))))
                                 (declare (not safe))
                                 (cons __tmp24838 __tmp24836))))
                          (declare (not safe))
                          (cons __tmp24854 __tmp24835))))
                   (declare (not safe))
                   (cons __tmp24862 __tmp24834)))
                (__tmp24831
                 (let ((__tmp24832
                        (let () (declare (not safe)) (cons _L14957_ '()))))
                   (declare (not safe))
                   (cons __tmp24832 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24833
                                                          __tmp24831))))
                                             (declare (not safe))
                                             (cons __tmp24863 __tmp24830))))
                                      (declare (not safe))
                                      (cons __tmp24864 __tmp24829))))
                               (declare (not safe))
                               (cons __tmp24828 '()))))
                        (declare (not safe))
                        (cons __tmp24865 __tmp24827))))
                 (declare (not safe))
                 (cons __tmp24890 __tmp24826)))
              (__tmp24823
               (let ((__tmp24824
                      (let () (declare (not safe)) (cons _L14957_ '()))))
                 (declare (not safe))
                 (cons __tmp24824 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp24825
                                                        __tmp24823))))
                                           (declare (not safe))
                                           (cons __tmp24891 __tmp24822))))
                                    (declare (not safe))
                                    (cons __tmp24894 __tmp24821))))
                             (declare (not safe))
                             (cons __tmp24820 '()))))
                      (declare (not safe))
                      (cons __tmp24895 __tmp24819))))
               (declare (not safe))
               (cons __tmp24908 __tmp24818))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1483714945_
                                                 _hd1483414935_
                                                 _hd1483114925_
                                                 _dispatch1482914917_
                                                 _hd1481614875_
                                                 _hd1481314865_
                                                 _hd1481014855_)
                                                (_g1480014844_
                                                 _g1480114848_))))
                                        (_g1480014844_ _g1480114848_))))
                                (_g1480014844_ _g1480114848_))))
                        (_g1480014844_ _g1480114848_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1482414897_
                                             _target1482114891_
                                             '()))
                                          (_g1480014844_ _g1480114848_)))))
                                (_g1480014844_ _g1480114848_))))
                        (_g1480014844_ _g1480114848_))))
                (_g1480014844_ _g1480114848_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1480014844_
                                                 _g1480114848_))))
                                        (_g1480014844_ _g1480114848_)))))
                            (_g1479915000_
                             (list _e14607_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch14610_
                                   _default14611_
                                   _tab14616_
                                   (vector-length _tab14616_))))))))
                 (_max-char13022_
                  (lambda (_datums14596_)
                    (foldl (lambda (_lst14599_ _r14601_)
                             (foldl (lambda (_char14603_ _r14605_)
                                      (max (char->integer _char14603_)
                                           _r14605_))
                                    _r14601_
                                    _lst14599_))
                           '0
                           _datums14596_)))
                 (_generate-char-dispatch-table13023_
                  (lambda (_indexes14575_)
                    (let* ((_ixs14581_
                            (map (lambda (_x14578_)
                                   (char->integer (car _x14578_)))
                                 _indexes14575_))
                           (_len14584_
                            (let ((__tmp24974 (foldl max '0 _ixs14581_)))
                              (declare (not safe))
                              (fx+ __tmp24974 '1)))
                           (_vec14587_ (make-vector _len14584_ '#f)))
                      (for-each
                       (lambda (_entry14592_ _x14594_)
                         (vector-set! _vec14587_ _x14594_ (cdr _entry14592_)))
                       _indexes14575_
                       _ixs14581_)
                      _vec14587_)))
                 (_simple-char-range?13024_
                  (lambda (_tab14551_)
                    (let ((_end14554_ (vector-length _tab14551_)))
                      (let _lp14557_ ((_i14560_ '0))
                        (let ((_ix14563_ (vector-ref _tab14551_ _i14560_)))
                          (if _ix14563_
                              (let _lp214566_ ((_i14569_
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _i14560_ '1))))
                                (if (fx< _i14569_ _end14554_)
                                    (let ((_ix*14572_
                                           (vector-ref _tab14551_ _i14569_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (eq? _ix14563_ _ix*14572_))
                                          (_lp214566_
                                           (let ()
                                             (declare (not safe))
                                             (fx+ _i14569_ '1)))
                                          '#f))
                                    '#t))
                              (_lp14557_
                               (let ()
                                 (declare (not safe))
                                 (fx+ _i14560_ '1)))))))))
                 (_char-range-start13025_
                  (lambda (_tab14542_)
                    (let _lp14545_ ((_i14548_ '0))
                      (if (vector-ref _tab14542_ _i14548_)
                          _i14548_
                          (_lp14545_
                           (let () (declare (not safe)) (fx+ _i14548_ '1)))))))
                 (_generate-char-dispatch13026_
                  (lambda (_e14165_
                           _datums14167_
                           _dispatch14168_
                           _default14169_)
                    (if (< (_max-char13022_ _datums14167_) '128)
                        (let* ((_indexes14171_
                                (_datum-dispatch-index13018_ _datums14167_))
                               (_tab14174_
                                (_generate-char-dispatch-table13023_
                                 _indexes14171_)))
                          (if (_simple-char-range?13024_ _tab14174_)
                              (let ((_start14179_
                                     (_char-range-start13025_ _tab14174_))
                                    (_end14181_ (vector-length _tab14174_)))
                                (let* ((_g1418314217_
                                        (lambda (_g1418414213_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g1418414213_)))
                                       (_g1418214334_
                                        (lambda (_g1418414221_)
                                          (if (gx#stx-pair? _g1418414221_)
                                              (let ((_e1419314224_
                                                     (gx#syntax-e
                                                      _g1418414221_)))
                                                (let ((_hd1419214228_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1419314224_)))
                                                      (_tl1419114231_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1419314224_))))
                                                  (if (gx#stx-pair?
                                                       _tl1419114231_)
                                                      (let ((_e1419614234_
                                                             (gx#syntax-e
                                                              _tl1419114231_)))
                                                        (let ((_hd1419514238_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1419614234_)))
                      (_tl1419414241_
                       (let () (declare (not safe)) (##cdr _e1419614234_))))
                  (if (gx#stx-pair? _tl1419414241_)
                      (let ((_e1419914244_ (gx#syntax-e _tl1419414241_)))
                        (let ((_hd1419814248_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1419914244_)))
                              (_tl1419714251_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1419914244_))))
                          (if (gx#stx-pair? _hd1419814248_)
                              (let ((_e1420214254_
                                     (gx#syntax-e _hd1419814248_)))
                                (let ((_hd1420114258_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1420214254_)))
                                      (_tl1420014261_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1420214254_))))
                                  (if (gx#stx-null? _tl1420014261_)
                                      (if (gx#stx-pair? _tl1419714251_)
                                          (let ((_e1420514264_
                                                 (gx#syntax-e _tl1419714251_)))
                                            (let ((_hd1420414268_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1420514264_)))
                                                  (_tl1420314271_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1420514264_))))
                                              (if (gx#stx-pair? _tl1420314271_)
                                                  (let ((_e1420814274_
                                                         (gx#syntax-e
                                                          _tl1420314271_)))
                                                    (let ((_hd1420714278_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1420814274_)))
                                                          (_tl1420614281_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1420814274_))))
                                                      (if (gx#stx-pair?
                                                           _tl1420614281_)
                                                          (let ((_e1421114284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1420614281_)))
                    (let ((_hd1421014288_
                           (let () (declare (not safe)) (##car _e1421114284_)))
                          (_tl1420914291_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1421114284_))))
                      (if (gx#stx-null? _tl1420914291_)
                          ((lambda (_L14294_
                                    _L14296_
                                    _L14297_
                                    _L14298_
                                    _L14299_
                                    _L14300_)
                             (let ()
                               (let ((__tmp25094 (gx#datum->syntax '#f 'let))
                                     (__tmp25047
                                      (let ((__tmp25088
                                             (let ((__tmp25089
                                                    (let ((__tmp25090
                                                           (let ((__tmp25093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'lambda))
                         (__tmp25091
                          (let ((__tmp25092
                                 (let ()
                                   (declare (not safe))
                                   (cons _L14297_ '()))))
                            (declare (not safe))
                            (cons '() __tmp25092))))
                     (declare (not safe))
                     (cons __tmp25093 __tmp25091))))
              (declare (not safe))
              (cons __tmp25090 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L14299_ __tmp25089)))
                                            (__tmp25048
                                             (let ((__tmp25049
                                                    (let ((__tmp25087
                                                           (gx#datum->syntax
                                                            '#f
                                                            'if))
                                                          (__tmp25050
                                                           (let ((__tmp25084
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp25086 (gx#datum->syntax '#f 'char?))
                                (__tmp25085
                                 (let ()
                                   (declare (not safe))
                                   (cons _L14300_ '()))))
                            (declare (not safe))
                            (cons __tmp25086 __tmp25085)))
                         (__tmp25051
                          (let ((__tmp25054
                                 (let ((__tmp25083 (gx#datum->syntax '#f 'let))
                                       (__tmp25055
                                        (let ((__tmp25077
                                               (let ((__tmp25082
                                                      (gx#datum->syntax
                                                       '#f
                                                       'ix))
                                                     (__tmp25078
                                                      (let ((__tmp25079
                                                             (let ((__tmp25081
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '##char->integer))
                           (__tmp25080
                            (let () (declare (not safe)) (cons _L14300_ '()))))
                       (declare (not safe))
                       (cons __tmp25081 __tmp25080))))
                (declare (not safe))
                (cons __tmp25079 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25082 __tmp25078)))
                                              (__tmp25056
                                               (let ((__tmp25057
                                                      (let ((__tmp25076
                                                             (gx#datum->syntax
                                                              '#f
                                                              'if))
                                                            (__tmp25058
                                                             (let ((__tmp25062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp25075 (gx#datum->syntax '#f 'and))
                                  (__tmp25063
                                   (let ((__tmp25070
                                          (let ((__tmp25074
                                                 (gx#datum->syntax
                                                  '#f
                                                  '##fx>=))
                                                (__tmp25071
                                                 (let ((__tmp25073
                                                        (gx#datum->syntax
                                                         '#f
                                                         'ix))
                                                       (__tmp25072
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L14296_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp25073
                                                         __tmp25072))))
                                            (declare (not safe))
                                            (cons __tmp25074 __tmp25071)))
                                         (__tmp25064
                                          (let ((__tmp25065
                                                 (let ((__tmp25069
                                                        (gx#datum->syntax
                                                         '#f
                                                         '##fx<))
                                                       (__tmp25066
                                                        (let ((__tmp25068
                                                               (gx#datum->syntax
                                                                '#f
                                                                'ix))
                                                              (__tmp25067
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L14294_ '()))))
                  (declare (not safe))
                  (cons __tmp25068 __tmp25067))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25069
                                                         __tmp25066))))
                                            (declare (not safe))
                                            (cons __tmp25065 '()))))
                                     (declare (not safe))
                                     (cons __tmp25070 __tmp25064))))
                              (declare (not safe))
                              (cons __tmp25075 __tmp25063)))
                           (__tmp25059
                            (let ((__tmp25060
                                   (let ((__tmp25061
                                          (let ()
                                            (declare (not safe))
                                            (cons _L14299_ '()))))
                                     (declare (not safe))
                                     (cons __tmp25061 '()))))
                              (declare (not safe))
                              (cons _L14298_ __tmp25060))))
                       (declare (not safe))
                       (cons __tmp25062 __tmp25059))))
                (declare (not safe))
                (cons __tmp25076 __tmp25058))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25057 '()))))
                                          (declare (not safe))
                                          (cons __tmp25077 __tmp25056))))
                                   (declare (not safe))
                                   (cons __tmp25083 __tmp25055)))
                                (__tmp25052
                                 (let ((__tmp25053
                                        (let ()
                                          (declare (not safe))
                                          (cons _L14299_ '()))))
                                   (declare (not safe))
                                   (cons __tmp25053 '()))))
                            (declare (not safe))
                            (cons __tmp25054 __tmp25052))))
                     (declare (not safe))
                     (cons __tmp25084 __tmp25051))))
              (declare (not safe))
              (cons __tmp25087 __tmp25050))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp25049 '()))))
                                        (declare (not safe))
                                        (cons __tmp25088 __tmp25048))))
                                 (declare (not safe))
                                 (cons __tmp25094 __tmp25047))))
                           _hd1421014288_
                           _hd1420714278_
                           _hd1420414268_
                           _hd1420114258_
                           _hd1419514238_
                           _hd1419214228_)
                          (_g1418314217_ _g1418414221_))))
                  (_g1418314217_ _g1418414221_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1418314217_
                                                   _g1418414221_))))
                                          (_g1418314217_ _g1418414221_))
                                      (_g1418314217_ _g1418414221_))))
                              (_g1418314217_ _g1418414221_))))
                      (_g1418314217_ _g1418414221_))))
              (_g1418314217_ _g1418414221_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1418314217_ _g1418414221_)))))
                                  (_g1418214334_
                                   (list _e14165_
                                         (gx#genident 'default)
                                         _dispatch14168_
                                         _default14169_
                                         _start14179_
                                         _end14181_))))
                              (let* ((_g1433814382_
                                      (lambda (_g1433914378_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g1433914378_)))
                                     (_g1433714538_
                                      (lambda (_g1433914386_)
                                        (if (gx#stx-pair? _g1433914386_)
                                            (let ((_e1434914389_
                                                   (gx#syntax-e
                                                    _g1433914386_)))
                                              (let ((_hd1434814393_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1434914389_)))
                                                    (_tl1434714396_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1434914389_))))
                                                (if (gx#stx-pair?
                                                     _tl1434714396_)
                                                    (let ((_e1435214399_
                                                           (gx#syntax-e
                                                            _tl1434714396_)))
                                                      (let ((_hd1435114403_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1435214399_)))
                    (_tl1435014406_
                     (let () (declare (not safe)) (##cdr _e1435214399_))))
                (if (gx#stx-pair? _tl1435014406_)
                    (let ((_e1435514409_ (gx#syntax-e _tl1435014406_)))
                      (let ((_hd1435414413_
                             (let ()
                               (declare (not safe))
                               (##car _e1435514409_)))
                            (_tl1435314416_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1435514409_))))
                        (if (gx#stx-pair? _tl1435314416_)
                            (let ((_e1435814419_ (gx#syntax-e _tl1435314416_)))
                              (let ((_hd1435714423_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1435814419_)))
                                    (_tl1435614426_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1435814419_))))
                                (if (gx#stx-pair/null? _hd1435714423_)
                                    (let ((_g24975_
                                           (gx#syntax-split-splice
                                            _hd1435714423_
                                            '0)))
                                      (begin
                                        (let ((_g24976_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g24975_)
                                                     (##vector-length _g24975_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g24976_ 2)))
                                              (error "Context expects 2 values"
                                                     _g24976_)))
                                        (let ((_target1435914429_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g24975_ 0)))
                                              (_tl1436114432_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g24975_ 1))))
                                          (if (gx#stx-null? _tl1436114432_)
                                              (letrec ((_loop1436214435_
                                                        (lambda (_hd1436014439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _dispatch1436614442_)
                  (if (gx#stx-pair? _hd1436014439_)
                      (let ((_e1436314445_ (gx#syntax-e _hd1436014439_)))
                        (let ((_lp-hd1436414449_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1436314445_)))
                              (_lp-tl1436514452_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1436314445_))))
                          (_loop1436214435_
                           _lp-tl1436514452_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd1436414449_ _dispatch1436614442_)))))
                      (let ((_dispatch1436714455_
                             (reverse _dispatch1436614442_)))
                        (if (gx#stx-pair? _tl1435614426_)
                            (let ((_e1437014459_ (gx#syntax-e _tl1435614426_)))
                              (let ((_hd1436914463_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1437014459_)))
                                    (_tl1436814466_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1437014459_))))
                                (if (gx#stx-pair? _tl1436814466_)
                                    (let ((_e1437314469_
                                           (gx#syntax-e _tl1436814466_)))
                                      (let ((_hd1437214473_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1437314469_)))
                                            (_tl1437114476_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1437314469_))))
                                        (if (gx#stx-pair? _tl1437114476_)
                                            (let ((_e1437614479_
                                                   (gx#syntax-e
                                                    _tl1437114476_)))
                                              (let ((_hd1437514483_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1437614479_)))
                                                    (_tl1437414486_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1437614479_))))
                                                (if (gx#stx-null?
                                                     _tl1437414486_)
                                                    ((lambda (_L14489_
                                                              _L14491_
                                                              _L14492_
                                                              _L14493_
                                                              _L14494_
                                                              _L14495_
                                                              _L14496_)
                                                       (let ()
                                                         (let ((__tmp25046
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let))
                       (__tmp24977
                        (let ((__tmp25033
                               (let ((__tmp25040
                                      (let ((__tmp25041
                                             (let ((__tmp25042
                                                    (let ((__tmp25045
                                                           (gx#datum->syntax
                                                            '#f
                                                            'lambda))
                                                          (__tmp25043
                                                           (let ((__tmp25044
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L14492_ '()))))
                     (declare (not safe))
                     (cons '() __tmp25044))))
              (declare (not safe))
              (cons __tmp25045 __tmp25043))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp25042 '()))))
                                        (declare (not safe))
                                        (cons _L14495_ __tmp25041)))
                                     (__tmp25034
                                      (let ((__tmp25035
                                             (let ((__tmp25036
                                                    (let ((__tmp25037
                                                           (let ((__tmp25039
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp25038
                          (let () (declare (not safe)) (cons _L14491_ '()))))
                     (declare (not safe))
                     (cons __tmp25039 __tmp25038))))
              (declare (not safe))
              (cons __tmp25037 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L14494_ __tmp25036))))
                                        (declare (not safe))
                                        (cons __tmp25035 '()))))
                                 (declare (not safe))
                                 (cons __tmp25040 __tmp25034)))
                              (__tmp24978
                               (let ((__tmp24979
                                      (let ((__tmp25032
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp24980
                                             (let ((__tmp25029
                                                    (let ((__tmp25031
                                                           (gx#datum->syntax
                                                            '#f
                                                            'char?))
                                                          (__tmp25030
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L14496_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp25031 __tmp25030)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp24981
                                                    (let ((__tmp24984
                                                           (let ((__tmp25028
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'let))
                         (__tmp24985
                          (let ((__tmp25022
                                 (let ((__tmp25027 (gx#datum->syntax '#f 'ix))
                                       (__tmp25023
                                        (let ((__tmp25024
                                               (let ((__tmp25026
                                                      (gx#datum->syntax
                                                       '#f
                                                       '##char->integer))
                                                     (__tmp25025
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L14496_ '()))))
                                                 (declare (not safe))
                                                 (cons __tmp25026
                                                       __tmp25025))))
                                          (declare (not safe))
                                          (cons __tmp25024 '()))))
                                   (declare (not safe))
                                   (cons __tmp25027 __tmp25023)))
                                (__tmp24986
                                 (let ((__tmp24987
                                        (let ((__tmp25021
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp24988
                                               (let ((__tmp25016
                                                      (let ((__tmp25020
                                                             (gx#datum->syntax
                                                              '#f
                                                              '##fx<))
                                                            (__tmp25017
                                                             (let ((__tmp25019
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'ix))
                           (__tmp25018
                            (let () (declare (not safe)) (cons _L14489_ '()))))
                       (declare (not safe))
                       (cons __tmp25019 __tmp25018))))
                (declare (not safe))
                (cons __tmp25020 __tmp25017)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp24989
                                                      (let ((__tmp24992
                                                             (let ((__tmp25015
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let))
                           (__tmp24993
                            (let ((__tmp25007
                                   (let ((__tmp25014 (gx#datum->syntax '#f 'x))
                                         (__tmp25008
                                          (let ((__tmp25009
                                                 (let ((__tmp25013
                                                        (gx#datum->syntax
                                                         '#f
                                                         '##vector-ref))
                                                       (__tmp25010
                                                        (let ((__tmp25011
                                                               (let ((__tmp25012
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'ix)))
                         (declare (not safe))
                         (cons __tmp25012 '()))))
                  (declare (not safe))
                  (cons _L14494_ __tmp25011))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25013
                                                         __tmp25010))))
                                            (declare (not safe))
                                            (cons __tmp25009 '()))))
                                     (declare (not safe))
                                     (cons __tmp25014 __tmp25008)))
                                  (__tmp24994
                                   (let ((__tmp24995
                                          (let ((__tmp25006
                                                 (gx#datum->syntax '#f 'if))
                                                (__tmp24996
                                                 (let ((__tmp25005
                                                        (gx#datum->syntax
                                                         '#f
                                                         'x))
                                                       (__tmp24997
                                                        (let ((__tmp25000
                                                               (let ((__tmp25004
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f '~case-dispatch))
                             (__tmp25001
                              (let ((__tmp25003 (gx#datum->syntax '#f 'x))
                                    (__tmp25002
                                     (foldr (lambda (_g1452914532_
                                                     _g1453014535_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g1452914532_
                                                      _g1453014535_)))
                                            '()
                                            _L14493_)))
                                (declare (not safe))
                                (cons __tmp25003 __tmp25002))))
                         (declare (not safe))
                         (cons __tmp25004 __tmp25001)))
                      (__tmp24998
                       (let ((__tmp24999
                              (let ()
                                (declare (not safe))
                                (cons _L14495_ '()))))
                         (declare (not safe))
                         (cons __tmp24999 '()))))
                  (declare (not safe))
                  (cons __tmp25000 __tmp24998))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25005
                                                         __tmp24997))))
                                            (declare (not safe))
                                            (cons __tmp25006 __tmp24996))))
                                     (declare (not safe))
                                     (cons __tmp24995 '()))))
                              (declare (not safe))
                              (cons __tmp25007 __tmp24994))))
                       (declare (not safe))
                       (cons __tmp25015 __tmp24993)))
                    (__tmp24990
                     (let ((__tmp24991
                            (let () (declare (not safe)) (cons _L14495_ '()))))
                       (declare (not safe))
                       (cons __tmp24991 '()))))
                (declare (not safe))
                (cons __tmp24992 __tmp24990))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25016
                                                       __tmp24989))))
                                          (declare (not safe))
                                          (cons __tmp25021 __tmp24988))))
                                   (declare (not safe))
                                   (cons __tmp24987 '()))))
                            (declare (not safe))
                            (cons __tmp25022 __tmp24986))))
                     (declare (not safe))
                     (cons __tmp25028 __tmp24985)))
                  (__tmp24982
                   (let ((__tmp24983
                          (let () (declare (not safe)) (cons _L14495_ '()))))
                     (declare (not safe))
                     (cons __tmp24983 '()))))
              (declare (not safe))
              (cons __tmp24984 __tmp24982))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp25029 __tmp24981))))
                                        (declare (not safe))
                                        (cons __tmp25032 __tmp24980))))
                                 (declare (not safe))
                                 (cons __tmp24979 '()))))
                          (declare (not safe))
                          (cons __tmp25033 __tmp24978))))
                   (declare (not safe))
                   (cons __tmp25046 __tmp24977))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1437514483_
                                                     _hd1437214473_
                                                     _hd1436914463_
                                                     _dispatch1436714455_
                                                     _hd1435414413_
                                                     _hd1435114403_
                                                     _hd1434814393_)
                                                    (_g1433814382_
                                                     _g1433914386_))))
                                            (_g1433814382_ _g1433914386_))))
                                    (_g1433814382_ _g1433914386_))))
                            (_g1433814382_ _g1433914386_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1436214435_
                                                 _target1435914429_
                                                 '()))
                                              (_g1433814382_ _g1433914386_)))))
                                    (_g1433814382_ _g1433914386_))))
                            (_g1433814382_ _g1433914386_))))
                    (_g1433814382_ _g1433914386_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1433814382_
                                                     _g1433914386_))))
                                            (_g1433814382_ _g1433914386_)))))
                                (_g1433714538_
                                 (list _e14165_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _dispatch14168_
                                       _default14169_
                                       _tab14174_
                                       (vector-length _tab14174_))))))
                        (_generate-char-dispatch/hash13027_
                         _e14165_
                         _datums14167_
                         _dispatch14168_
                         _default14169_))))
                 (_generate-char-dispatch/hash13027_
                  (lambda (_e13943_
                           _datums13945_
                           _dispatch13946_
                           _default13947_)
                    (let* ((_indexes13949_
                            (_datum-dispatch-index13018_ _datums13945_))
                           (_tab13952_
                            (_generate-hash-dispatch-table13020_
                             _indexes13949_
                             char->integer)))
                      (let* ((_g1395714001_
                              (lambda (_g1395813997_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g1395813997_)))
                             (_g1395614161_
                              (lambda (_g1395814005_)
                                (if (gx#stx-pair? _g1395814005_)
                                    (let ((_e1396814008_
                                           (gx#syntax-e _g1395814005_)))
                                      (let ((_hd1396714012_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1396814008_)))
                                            (_tl1396614015_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1396814008_))))
                                        (if (gx#stx-pair? _tl1396614015_)
                                            (let ((_e1397114018_
                                                   (gx#syntax-e
                                                    _tl1396614015_)))
                                              (let ((_hd1397014022_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1397114018_)))
                                                    (_tl1396914025_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1397114018_))))
                                                (if (gx#stx-pair?
                                                     _tl1396914025_)
                                                    (let ((_e1397414028_
                                                           (gx#syntax-e
                                                            _tl1396914025_)))
                                                      (let ((_hd1397314032_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1397414028_)))
                    (_tl1397214035_
                     (let () (declare (not safe)) (##cdr _e1397414028_))))
                (if (gx#stx-pair? _tl1397214035_)
                    (let ((_e1397714038_ (gx#syntax-e _tl1397214035_)))
                      (let ((_hd1397614042_
                             (let ()
                               (declare (not safe))
                               (##car _e1397714038_)))
                            (_tl1397514045_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1397714038_))))
                        (if (gx#stx-pair/null? _hd1397614042_)
                            (let ((_g25095_
                                   (gx#syntax-split-splice _hd1397614042_ '0)))
                              (begin
                                (let ((_g25096_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g25095_)
                                             (##vector-length _g25095_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g25096_ 2)))
                                      (error "Context expects 2 values"
                                             _g25096_)))
                                (let ((_target1397814048_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g25095_ 0)))
                                      (_tl1398014051_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g25095_ 1))))
                                  (if (gx#stx-null? _tl1398014051_)
                                      (letrec ((_loop1398114054_
                                                (lambda (_hd1397914058_
                                                         _dispatch1398514061_)
                                                  (if (gx#stx-pair?
                                                       _hd1397914058_)
                                                      (let ((_e1398214064_
                                                             (gx#syntax-e
                                                              _hd1397914058_)))
                                                        (let ((_lp-hd1398314068_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1398214064_)))
                      (_lp-tl1398414071_
                       (let () (declare (not safe)) (##cdr _e1398214064_))))
                  (_loop1398114054_
                   _lp-tl1398414071_
                   (let ()
                     (declare (not safe))
                     (cons _lp-hd1398314068_ _dispatch1398514061_)))))
              (let ((_dispatch1398614074_ (reverse _dispatch1398514061_)))
                (if (gx#stx-pair? _tl1397514045_)
                    (let ((_e1398914078_ (gx#syntax-e _tl1397514045_)))
                      (let ((_hd1398814082_
                             (let ()
                               (declare (not safe))
                               (##car _e1398914078_)))
                            (_tl1398714085_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1398914078_))))
                        (if (gx#stx-pair? _tl1398714085_)
                            (let ((_e1399214088_ (gx#syntax-e _tl1398714085_)))
                              (let ((_hd1399114092_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1399214088_)))
                                    (_tl1399014095_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1399214088_))))
                                (if (gx#stx-pair? _tl1399014095_)
                                    (let ((_e1399514098_
                                           (gx#syntax-e _tl1399014095_)))
                                      (let ((_hd1399414102_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1399514098_)))
                                            (_tl1399314105_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1399514098_))))
                                        (if (gx#stx-null? _tl1399314105_)
                                            ((lambda (_L14108_
                                                      _L14110_
                                                      _L14111_
                                                      _L14112_
                                                      _L14113_
                                                      _L14114_
                                                      _L14115_)
                                               (let ()
                                                 (let ((__tmp25187
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let))
                                                       (__tmp25097
                                                        (let ((__tmp25174
                                                               (let ((__tmp25181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp25182
                                     (let ((__tmp25183
                                            (let ((__tmp25186
                                                   (gx#datum->syntax
                                                    '#f
                                                    'lambda))
                                                  (__tmp25184
                                                   (let ((__tmp25185
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L14111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '() __tmp25185))))
                                              (declare (not safe))
                                              (cons __tmp25186 __tmp25184))))
                                       (declare (not safe))
                                       (cons __tmp25183 '()))))
                                (declare (not safe))
                                (cons _L14114_ __tmp25182)))
                             (__tmp25175
                              (let ((__tmp25176
                                     (let ((__tmp25177
                                            (let ((__tmp25178
                                                   (let ((__tmp25180
                                                          (gx#datum->syntax
                                                           '#f
                                                           'quote))
                                                         (__tmp25179
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L14110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25180
                                                           __tmp25179))))
                                              (declare (not safe))
                                              (cons __tmp25178 '()))))
                                       (declare (not safe))
                                       (cons _L14113_ __tmp25177))))
                                (declare (not safe))
                                (cons __tmp25176 '()))))
                         (declare (not safe))
                         (cons __tmp25181 __tmp25175)))
                      (__tmp25098
                       (let ((__tmp25099
                              (let ((__tmp25173 (gx#datum->syntax '#f 'if))
                                    (__tmp25100
                                     (let ((__tmp25170
                                            (let ((__tmp25172
                                                   (gx#datum->syntax
                                                    '#f
                                                    'char?))
                                                  (__tmp25171
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L14115_ '()))))
                                              (declare (not safe))
                                              (cons __tmp25172 __tmp25171)))
                                           (__tmp25101
                                            (let ((__tmp25104
                                                   (let ((__tmp25169
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let*))
                                                         (__tmp25105
                                                          (let ((__tmp25144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp25163
                                (let ((__tmp25168 (gx#datum->syntax '#f 'h))
                                      (__tmp25164
                                       (let ((__tmp25165
                                              (let ((__tmp25167
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##char->integer))
                                                    (__tmp25166
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L14115_ '()))))
                                                (declare (not safe))
                                                (cons __tmp25167 __tmp25166))))
                                         (declare (not safe))
                                         (cons __tmp25165 '()))))
                                  (declare (not safe))
                                  (cons __tmp25168 __tmp25164)))
                               (__tmp25145
                                (let ((__tmp25155
                                       (let ((__tmp25162
                                              (gx#datum->syntax '#f 'ix))
                                             (__tmp25156
                                              (let ((__tmp25157
                                                     (let ((__tmp25161
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##fxmodulo))
                                                           (__tmp25158
                                                            (let ((__tmp25160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp25159
                           (let () (declare (not safe)) (cons _L14108_ '()))))
                      (declare (not safe))
                      (cons __tmp25160 __tmp25159))))
               (declare (not safe))
               (cons __tmp25161 __tmp25158))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25157 '()))))
                                         (declare (not safe))
                                         (cons __tmp25162 __tmp25156)))
                                      (__tmp25146
                                       (let ((__tmp25147
                                              (let ((__tmp25154
                                                     (gx#datum->syntax '#f 'q))
                                                    (__tmp25148
                                                     (let ((__tmp25149
                                                            (let ((__tmp25153
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##vector-ref))
                          (__tmp25150
                           (let ((__tmp25151
                                  (let ((__tmp25152
                                         (gx#datum->syntax '#f 'ix)))
                                    (declare (not safe))
                                    (cons __tmp25152 '()))))
                             (declare (not safe))
                             (cons _L14113_ __tmp25151))))
                      (declare (not safe))
                      (cons __tmp25153 __tmp25150))))
               (declare (not safe))
               (cons __tmp25149 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25154 __tmp25148))))
                                         (declare (not safe))
                                         (cons __tmp25147 '()))))
                                  (declare (not safe))
                                  (cons __tmp25155 __tmp25146))))
                           (declare (not safe))
                           (cons __tmp25163 __tmp25145)))
                        (__tmp25106
                         (let ((__tmp25107
                                (let ((__tmp25143 (gx#datum->syntax '#f 'if))
                                      (__tmp25108
                                       (let ((__tmp25142
                                              (gx#datum->syntax '#f 'q))
                                             (__tmp25109
                                              (let ((__tmp25112
                                                     (let ((__tmp25141
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp25113
                                                            (let ((__tmp25133
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp25140 (gx#datum->syntax '#f 'eq?))
                                 (__tmp25134
                                  (let ((__tmp25136
                                         (let ((__tmp25139
                                                (gx#datum->syntax '#f '##car))
                                               (__tmp25137
                                                (let ((__tmp25138
                                                       (gx#datum->syntax
                                                        '#f
                                                        'q)))
                                                  (declare (not safe))
                                                  (cons __tmp25138 '()))))
                                           (declare (not safe))
                                           (cons __tmp25139 __tmp25137)))
                                        (__tmp25135
                                         (let ()
                                           (declare (not safe))
                                           (cons _L14115_ '()))))
                                    (declare (not safe))
                                    (cons __tmp25136 __tmp25135))))
                             (declare (not safe))
                             (cons __tmp25140 __tmp25134)))
                          (__tmp25114
                           (let ((__tmp25117
                                  (let ((__tmp25132
                                         (gx#datum->syntax '#f 'let))
                                        (__tmp25118
                                         (let ((__tmp25125
                                                (let ((__tmp25131
                                                       (gx#datum->syntax
                                                        '#f
                                                        'x))
                                                      (__tmp25126
                                                       (let ((__tmp25127
                                                              (let ((__tmp25130
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '##cdr))
                            (__tmp25128
                             (let ((__tmp25129 (gx#datum->syntax '#f 'q)))
                               (declare (not safe))
                               (cons __tmp25129 '()))))
                        (declare (not safe))
                        (cons __tmp25130 __tmp25128))))
                 (declare (not safe))
                 (cons __tmp25127 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25131
                                                        __tmp25126)))
                                               (__tmp25119
                                                (let ((__tmp25120
                                                       (let ((__tmp25124
                                                              (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch))
                                                             (__tmp25121
                                                              (let ((__tmp25123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'x))
                            (__tmp25122
                             (foldr (lambda (_g1415214155_ _g1415314158_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g1415214155_ _g1415314158_)))
                                    '()
                                    _L14112_)))
                        (declare (not safe))
                        (cons __tmp25123 __tmp25122))))
                 (declare (not safe))
                 (cons __tmp25124 __tmp25121))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25120 '()))))
                                           (declare (not safe))
                                           (cons __tmp25125 __tmp25119))))
                                    (declare (not safe))
                                    (cons __tmp25132 __tmp25118)))
                                 (__tmp25115
                                  (let ((__tmp25116
                                         (let ()
                                           (declare (not safe))
                                           (cons _L14114_ '()))))
                                    (declare (not safe))
                                    (cons __tmp25116 '()))))
                             (declare (not safe))
                             (cons __tmp25117 __tmp25115))))
                      (declare (not safe))
                      (cons __tmp25133 __tmp25114))))
               (declare (not safe))
               (cons __tmp25141 __tmp25113)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp25110
                                                     (let ((__tmp25111
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L14114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp25111 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25112 __tmp25110))))
                                         (declare (not safe))
                                         (cons __tmp25142 __tmp25109))))
                                  (declare (not safe))
                                  (cons __tmp25143 __tmp25108))))
                           (declare (not safe))
                           (cons __tmp25107 '()))))
                    (declare (not safe))
                    (cons __tmp25144 __tmp25106))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25169
                                                           __tmp25105)))
                                                  (__tmp25102
                                                   (let ((__tmp25103
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L14114_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25103 '()))))
                                              (declare (not safe))
                                              (cons __tmp25104 __tmp25102))))
                                       (declare (not safe))
                                       (cons __tmp25170 __tmp25101))))
                                (declare (not safe))
                                (cons __tmp25173 __tmp25100))))
                         (declare (not safe))
                         (cons __tmp25099 '()))))
                  (declare (not safe))
                  (cons __tmp25174 __tmp25098))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25187
                                                         __tmp25097))))
                                             _hd1399414102_
                                             _hd1399114092_
                                             _hd1398814082_
                                             _dispatch1398614074_
                                             _hd1397314032_
                                             _hd1397014022_
                                             _hd1396714012_)
                                            (_g1395714001_ _g1395814005_))))
                                    (_g1395714001_ _g1395814005_))))
                            (_g1395714001_ _g1395814005_))))
                    (_g1395714001_ _g1395814005_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1398114054_
                                         _target1397814048_
                                         '()))
                                      (_g1395714001_ _g1395814005_)))))
                            (_g1395714001_ _g1395814005_))))
                    (_g1395714001_ _g1395814005_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1395714001_
                                                     _g1395814005_))))
                                            (_g1395714001_ _g1395814005_))))
                                    (_g1395714001_ _g1395814005_)))))
                        (_g1395614161_
                         (list _e13943_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch13946_
                               _default13947_
                               _tab13952_
                               (vector-length _tab13952_)))))))
                 (_min-fixnum13028_
                  (lambda (_datums13936_)
                    (foldl (lambda (_lst13939_ _r13941_)
                             (foldl min _r13941_ _lst13939_))
                           ##max-fixnum
                           _datums13936_)))
                 (_max-fixnum13029_
                  (lambda (_datums13929_)
                    (foldl (lambda (_lst13932_ _r13934_)
                             (foldl max _r13934_ _lst13932_))
                           ##min-fixnum
                           _datums13929_)))
                 (_generate-fixnum-dispatch-table13030_
                  (lambda (_indexes13911_)
                    (let* ((_ixs13914_ (map car _indexes13911_))
                           (_len13917_
                            (let ((__tmp25188 (foldl max '0 _ixs13914_)))
                              (declare (not safe))
                              (fx+ __tmp25188 '1)))
                           (_vec13920_ (make-vector _len13917_ '#f)))
                      (for-each
                       (lambda (_entry13925_ _x13927_)
                         (vector-set! _vec13920_ _x13927_ (cdr _entry13925_)))
                       _indexes13911_
                       _ixs13914_)
                      _vec13920_)))
                 (_generate-fixnum-dispatch13031_
                  (lambda (_e13645_
                           _datums13647_
                           _dispatch13648_
                           _default13649_)
                    (if (and (>= (_min-fixnum13028_ _datums13647_) '0)
                             (< (_max-fixnum13029_ _datums13647_) '1024))
                        (let* ((_indexes13651_
                                (_datum-dispatch-index13018_ _datums13647_))
                               (_tab13654_
                                (_generate-fixnum-dispatch-table13030_
                                 _indexes13651_))
                               (_dense?13657_
                                (andmap values (vector->list _tab13654_))))
                          (let* ((_g1366213706_
                                  (lambda (_g1366313702_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1366313702_)))
                                 (_g1366113907_
                                  (lambda (_g1366313710_)
                                    (if (gx#stx-pair? _g1366313710_)
                                        (let ((_e1367313713_
                                               (gx#syntax-e _g1366313710_)))
                                          (let ((_hd1367213717_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1367313713_)))
                                                (_tl1367113720_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1367313713_))))
                                            (if (gx#stx-pair? _tl1367113720_)
                                                (let ((_e1367613723_
                                                       (gx#syntax-e
                                                        _tl1367113720_)))
                                                  (let ((_hd1367513727_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1367613723_)))
                                                        (_tl1367413730_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1367613723_))))
                                                    (if (gx#stx-pair?
                                                         _tl1367413730_)
                                                        (let ((_e1367913733_
                                                               (gx#syntax-e
                                                                _tl1367413730_)))
                                                          (let ((_hd1367813737_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1367913733_)))
                        (_tl1367713740_
                         (let () (declare (not safe)) (##cdr _e1367913733_))))
                    (if (gx#stx-pair? _tl1367713740_)
                        (let ((_e1368213743_ (gx#syntax-e _tl1367713740_)))
                          (let ((_hd1368113747_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1368213743_)))
                                (_tl1368013750_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1368213743_))))
                            (if (gx#stx-pair/null? _hd1368113747_)
                                (let ((_g25189_
                                       (gx#syntax-split-splice
                                        _hd1368113747_
                                        '0)))
                                  (begin
                                    (let ((_g25190_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g25189_)
                                                 (##vector-length _g25189_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g25190_ 2)))
                                          (error "Context expects 2 values"
                                                 _g25190_)))
                                    (let ((_target1368313753_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g25189_ 0)))
                                          (_tl1368513756_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g25189_ 1))))
                                      (if (gx#stx-null? _tl1368513756_)
                                          (letrec ((_loop1368613759_
                                                    (lambda (_hd1368413763_
                                                             _dispatch1369013766_)
                                                      (if (gx#stx-pair?
                                                           _hd1368413763_)
                                                          (let ((_e1368713769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1368413763_)))
                    (let ((_lp-hd1368813773_
                           (let () (declare (not safe)) (##car _e1368713769_)))
                          (_lp-tl1368913776_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1368713769_))))
                      (_loop1368613759_
                       _lp-tl1368913776_
                       (let ()
                         (declare (not safe))
                         (cons _lp-hd1368813773_ _dispatch1369013766_)))))
                  (let ((_dispatch1369113779_ (reverse _dispatch1369013766_)))
                    (if (gx#stx-pair? _tl1368013750_)
                        (let ((_e1369413783_ (gx#syntax-e _tl1368013750_)))
                          (let ((_hd1369313787_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1369413783_)))
                                (_tl1369213790_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1369413783_))))
                            (if (gx#stx-pair? _tl1369213790_)
                                (let ((_e1369713793_
                                       (gx#syntax-e _tl1369213790_)))
                                  (let ((_hd1369613797_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1369713793_)))
                                        (_tl1369513800_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1369713793_))))
                                    (if (gx#stx-pair? _tl1369513800_)
                                        (let ((_e1370013803_
                                               (gx#syntax-e _tl1369513800_)))
                                          (let ((_hd1369913807_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1370013803_)))
                                                (_tl1369813810_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1370013803_))))
                                            (if (gx#stx-null? _tl1369813810_)
                                                ((lambda (_L13813_
                                                          _L13815_
                                                          _L13816_
                                                          _L13817_
                                                          _L13818_
                                                          _L13819_
                                                          _L13820_)
                                                   (let ()
                                                     (let* ((_g1385913867_
                                                             (lambda (_g1386013863_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _g1386013863_)))
                                                            (_g1385813887_
                                                             (lambda (_g1386013871_)
                                                               ((lambda (_L13874_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((__tmp25244 (gx#datum->syntax '#f 'let))
                                  (__tmp25191
                                   (let ((__tmp25231
                                          (let ((__tmp25238
                                                 (let ((__tmp25239
                                                        (let ((__tmp25240
                                                               (let ((__tmp25243
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'lambda))
                             (__tmp25241
                              (let ((__tmp25242
                                     (let ()
                                       (declare (not safe))
                                       (cons _L13816_ '()))))
                                (declare (not safe))
                                (cons '() __tmp25242))))
                         (declare (not safe))
                         (cons __tmp25243 __tmp25241))))
                  (declare (not safe))
                  (cons __tmp25240 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L13819_ __tmp25239)))
                                                (__tmp25232
                                                 (let ((__tmp25233
                                                        (let ((__tmp25234
                                                               (let ((__tmp25235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp25237 (gx#datum->syntax '#f 'quote))
                                    (__tmp25236
                                     (let ()
                                       (declare (not safe))
                                       (cons _L13815_ '()))))
                                (declare (not safe))
                                (cons __tmp25237 __tmp25236))))
                         (declare (not safe))
                         (cons __tmp25235 '()))))
                  (declare (not safe))
                  (cons _L13818_ __tmp25234))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25233 '()))))
                                            (declare (not safe))
                                            (cons __tmp25238 __tmp25232)))
                                         (__tmp25192
                                          (let ((__tmp25193
                                                 (let ((__tmp25230
                                                        (gx#datum->syntax
                                                         '#f
                                                         'if))
                                                       (__tmp25194
                                                        (let ((__tmp25227
                                                               (let ((__tmp25229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fixnum?))
                             (__tmp25228
                              (let ()
                                (declare (not safe))
                                (cons _L13820_ '()))))
                         (declare (not safe))
                         (cons __tmp25229 __tmp25228)))
                      (__tmp25195
                       (let ((__tmp25198
                              (let ((__tmp25226 (gx#datum->syntax '#f 'if))
                                    (__tmp25199
                                     (let ((__tmp25214
                                            (let ((__tmp25225
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp25215
                                                   (let ((__tmp25221
                                                          (let ((__tmp25224
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '##fx>=))
                        (__tmp25222
                         (let ((__tmp25223
                                (let () (declare (not safe)) (cons '0 '()))))
                           (declare (not safe))
                           (cons _L13820_ __tmp25223))))
                    (declare (not safe))
                    (cons __tmp25224 __tmp25222)))
                 (__tmp25216
                  (let ((__tmp25217
                         (let ((__tmp25220 (gx#datum->syntax '#f '##fx<))
                               (__tmp25218
                                (let ((__tmp25219
                                       (let ()
                                         (declare (not safe))
                                         (cons _L13813_ '()))))
                                  (declare (not safe))
                                  (cons _L13820_ __tmp25219))))
                           (declare (not safe))
                           (cons __tmp25220 __tmp25218))))
                    (declare (not safe))
                    (cons __tmp25217 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25221
                                                           __tmp25216))))
                                              (declare (not safe))
                                              (cons __tmp25225 __tmp25215)))
                                           (__tmp25200
                                            (let ((__tmp25203
                                                   (let ((__tmp25213
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp25204
                                                          (let ((__tmp25206
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp25212 (gx#datum->syntax '#f 'x))
                               (__tmp25207
                                (let ((__tmp25208
                                       (let ((__tmp25211
                                              (gx#datum->syntax
                                               '#f
                                               '##vector-ref))
                                             (__tmp25209
                                              (let ((__tmp25210
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L13820_ '()))))
                                                (declare (not safe))
                                                (cons _L13818_ __tmp25210))))
                                         (declare (not safe))
                                         (cons __tmp25211 __tmp25209))))
                                  (declare (not safe))
                                  (cons __tmp25208 '()))))
                           (declare (not safe))
                           (cons __tmp25212 __tmp25207)))
                        (__tmp25205
                         (let () (declare (not safe)) (cons _L13874_ '()))))
                    (declare (not safe))
                    (cons __tmp25206 __tmp25205))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25213
                                                           __tmp25204)))
                                                  (__tmp25201
                                                   (let ((__tmp25202
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L13819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25202 '()))))
                                              (declare (not safe))
                                              (cons __tmp25203 __tmp25201))))
                                       (declare (not safe))
                                       (cons __tmp25214 __tmp25200))))
                                (declare (not safe))
                                (cons __tmp25226 __tmp25199)))
                             (__tmp25196
                              (let ((__tmp25197
                                     (let ()
                                       (declare (not safe))
                                       (cons _L13819_ '()))))
                                (declare (not safe))
                                (cons __tmp25197 '()))))
                         (declare (not safe))
                         (cons __tmp25198 __tmp25196))))
                  (declare (not safe))
                  (cons __tmp25227 __tmp25195))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25230
                                                         __tmp25194))))
                                            (declare (not safe))
                                            (cons __tmp25193 '()))))
                                     (declare (not safe))
                                     (cons __tmp25231 __tmp25192))))
                              (declare (not safe))
                              (cons __tmp25244 __tmp25191))))
                        _g1386013871_))))
               (_g1385813887_
                (if _dense?13657_
                    (let ((__tmp25259 (gx#datum->syntax '#f '~case-dispatch))
                          (__tmp25256
                           (let ((__tmp25258 (gx#datum->syntax '#f 'x))
                                 (__tmp25257
                                  (foldr (lambda (_g1389013893_ _g1389113896_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g1389013893_
                                                   _g1389113896_)))
                                         '()
                                         _L13817_)))
                             (declare (not safe))
                             (cons __tmp25258 __tmp25257))))
                      (declare (not safe))
                      (cons __tmp25259 __tmp25256))
                    (let ((__tmp25255 (gx#datum->syntax '#f 'if))
                          (__tmp25245
                           (let ((__tmp25254 (gx#datum->syntax '#f 'x))
                                 (__tmp25246
                                  (let ((__tmp25249
                                         (let ((__tmp25253
                                                (gx#datum->syntax
                                                 '#f
                                                 '~case-dispatch))
                                               (__tmp25250
                                                (let ((__tmp25252
                                                       (gx#datum->syntax
                                                        '#f
                                                        'x))
                                                      (__tmp25251
                                                       (foldr (lambda (_g1389813901_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1389913904_)
                        (let ()
                          (declare (not safe))
                          (cons _g1389813901_ _g1389913904_)))
                      '()
                      _L13817_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25252
                                                        __tmp25251))))
                                           (declare (not safe))
                                           (cons __tmp25253 __tmp25250)))
                                        (__tmp25247
                                         (let ((__tmp25248
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L13819_ '()))))
                                           (declare (not safe))
                                           (cons __tmp25248 '()))))
                                    (declare (not safe))
                                    (cons __tmp25249 __tmp25247))))
                             (declare (not safe))
                             (cons __tmp25254 __tmp25246))))
                      (declare (not safe))
                      (cons __tmp25255 __tmp25245)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1369913807_
                                                 _hd1369613797_
                                                 _hd1369313787_
                                                 _dispatch1369113779_
                                                 _hd1367813737_
                                                 _hd1367513727_
                                                 _hd1367213717_)
                                                (_g1366213706_
                                                 _g1366313710_))))
                                        (_g1366213706_ _g1366313710_))))
                                (_g1366213706_ _g1366313710_))))
                        (_g1366213706_ _g1366313710_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1368613759_
                                             _target1368313753_
                                             '()))
                                          (_g1366213706_ _g1366313710_)))))
                                (_g1366213706_ _g1366313710_))))
                        (_g1366213706_ _g1366313710_))))
                (_g1366213706_ _g1366313710_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1366213706_
                                                 _g1366313710_))))
                                        (_g1366213706_ _g1366313710_)))))
                            (_g1366113907_
                             (list _e13645_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch13648_
                                   _default13649_
                                   _tab13654_
                                   (vector-length _tab13654_)))))
                        (_generate-fixnum-dispatch/hash13032_
                         _e13645_
                         _datums13647_
                         _dispatch13648_
                         _default13649_))))
                 (_generate-fixnum-dispatch/hash13032_
                  (lambda (_e13423_
                           _datums13425_
                           _dispatch13426_
                           _default13427_)
                    (let* ((_indexes13429_
                            (_datum-dispatch-index13018_ _datums13425_))
                           (_tab13432_
                            (_generate-hash-dispatch-table13020_
                             _indexes13429_
                             values)))
                      (let* ((_g1343713481_
                              (lambda (_g1343813477_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g1343813477_)))
                             (_g1343613641_
                              (lambda (_g1343813485_)
                                (if (gx#stx-pair? _g1343813485_)
                                    (let ((_e1344813488_
                                           (gx#syntax-e _g1343813485_)))
                                      (let ((_hd1344713492_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1344813488_)))
                                            (_tl1344613495_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1344813488_))))
                                        (if (gx#stx-pair? _tl1344613495_)
                                            (let ((_e1345113498_
                                                   (gx#syntax-e
                                                    _tl1344613495_)))
                                              (let ((_hd1345013502_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1345113498_)))
                                                    (_tl1344913505_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1345113498_))))
                                                (if (gx#stx-pair?
                                                     _tl1344913505_)
                                                    (let ((_e1345413508_
                                                           (gx#syntax-e
                                                            _tl1344913505_)))
                                                      (let ((_hd1345313512_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1345413508_)))
                    (_tl1345213515_
                     (let () (declare (not safe)) (##cdr _e1345413508_))))
                (if (gx#stx-pair? _tl1345213515_)
                    (let ((_e1345713518_ (gx#syntax-e _tl1345213515_)))
                      (let ((_hd1345613522_
                             (let ()
                               (declare (not safe))
                               (##car _e1345713518_)))
                            (_tl1345513525_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1345713518_))))
                        (if (gx#stx-pair/null? _hd1345613522_)
                            (let ((_g25336_
                                   (gx#syntax-split-splice _hd1345613522_ '0)))
                              (begin
                                (let ((_g25337_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g25336_)
                                             (##vector-length _g25336_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g25337_ 2)))
                                      (error "Context expects 2 values"
                                             _g25337_)))
                                (let ((_target1345813528_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g25336_ 0)))
                                      (_tl1346013531_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g25336_ 1))))
                                  (if (gx#stx-null? _tl1346013531_)
                                      (letrec ((_loop1346113534_
                                                (lambda (_hd1345913538_
                                                         _dispatch1346513541_)
                                                  (if (gx#stx-pair?
                                                       _hd1345913538_)
                                                      (let ((_e1346213544_
                                                             (gx#syntax-e
                                                              _hd1345913538_)))
                                                        (let ((_lp-hd1346313548_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1346213544_)))
                      (_lp-tl1346413551_
                       (let () (declare (not safe)) (##cdr _e1346213544_))))
                  (_loop1346113534_
                   _lp-tl1346413551_
                   (let ()
                     (declare (not safe))
                     (cons _lp-hd1346313548_ _dispatch1346513541_)))))
              (let ((_dispatch1346613554_ (reverse _dispatch1346513541_)))
                (if (gx#stx-pair? _tl1345513525_)
                    (let ((_e1346913558_ (gx#syntax-e _tl1345513525_)))
                      (let ((_hd1346813562_
                             (let ()
                               (declare (not safe))
                               (##car _e1346913558_)))
                            (_tl1346713565_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1346913558_))))
                        (if (gx#stx-pair? _tl1346713565_)
                            (let ((_e1347213568_ (gx#syntax-e _tl1346713565_)))
                              (let ((_hd1347113572_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1347213568_)))
                                    (_tl1347013575_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1347213568_))))
                                (if (gx#stx-pair? _tl1347013575_)
                                    (let ((_e1347513578_
                                           (gx#syntax-e _tl1347013575_)))
                                      (let ((_hd1347413582_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1347513578_)))
                                            (_tl1347313585_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1347513578_))))
                                        (if (gx#stx-null? _tl1347313585_)
                                            ((lambda (_L13588_
                                                      _L13590_
                                                      _L13591_
                                                      _L13592_
                                                      _L13593_
                                                      _L13594_
                                                      _L13595_)
                                               (let ()
                                                 (let ((__tmp25420
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let))
                                                       (__tmp25338
                                                        (let ((__tmp25407
                                                               (let ((__tmp25414
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp25415
                                     (let ((__tmp25416
                                            (let ((__tmp25419
                                                   (gx#datum->syntax
                                                    '#f
                                                    'lambda))
                                                  (__tmp25417
                                                   (let ((__tmp25418
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L13591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '() __tmp25418))))
                                              (declare (not safe))
                                              (cons __tmp25419 __tmp25417))))
                                       (declare (not safe))
                                       (cons __tmp25416 '()))))
                                (declare (not safe))
                                (cons _L13594_ __tmp25415)))
                             (__tmp25408
                              (let ((__tmp25409
                                     (let ((__tmp25410
                                            (let ((__tmp25411
                                                   (let ((__tmp25413
                                                          (gx#datum->syntax
                                                           '#f
                                                           'quote))
                                                         (__tmp25412
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L13590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25413
                                                           __tmp25412))))
                                              (declare (not safe))
                                              (cons __tmp25411 '()))))
                                       (declare (not safe))
                                       (cons _L13593_ __tmp25410))))
                                (declare (not safe))
                                (cons __tmp25409 '()))))
                         (declare (not safe))
                         (cons __tmp25414 __tmp25408)))
                      (__tmp25339
                       (let ((__tmp25340
                              (let ((__tmp25406 (gx#datum->syntax '#f 'if))
                                    (__tmp25341
                                     (let ((__tmp25403
                                            (let ((__tmp25405
                                                   (gx#datum->syntax
                                                    '#f
                                                    'fixnum?))
                                                  (__tmp25404
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L13595_ '()))))
                                              (declare (not safe))
                                              (cons __tmp25405 __tmp25404)))
                                           (__tmp25342
                                            (let ((__tmp25345
                                                   (let ((__tmp25402
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let*))
                                                         (__tmp25346
                                                          (let ((__tmp25385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp25395
                                (let ((__tmp25401 (gx#datum->syntax '#f 'ix))
                                      (__tmp25396
                                       (let ((__tmp25397
                                              (let ((__tmp25400
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##fxmodulo))
                                                    (__tmp25398
                                                     (let ((__tmp25399
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L13588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L13595_ __tmp25399))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25400 __tmp25398))))
                                         (declare (not safe))
                                         (cons __tmp25397 '()))))
                                  (declare (not safe))
                                  (cons __tmp25401 __tmp25396)))
                               (__tmp25386
                                (let ((__tmp25387
                                       (let ((__tmp25394
                                              (gx#datum->syntax '#f 'q))
                                             (__tmp25388
                                              (let ((__tmp25389
                                                     (let ((__tmp25393
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##vector-ref))
                                                           (__tmp25390
                                                            (let ((__tmp25391
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp25392 (gx#datum->syntax '#f 'ix)))
                             (declare (not safe))
                             (cons __tmp25392 '()))))
                      (declare (not safe))
                      (cons _L13593_ __tmp25391))))
               (declare (not safe))
               (cons __tmp25393 __tmp25390))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25389 '()))))
                                         (declare (not safe))
                                         (cons __tmp25394 __tmp25388))))
                                  (declare (not safe))
                                  (cons __tmp25387 '()))))
                           (declare (not safe))
                           (cons __tmp25395 __tmp25386)))
                        (__tmp25347
                         (let ((__tmp25348
                                (let ((__tmp25384 (gx#datum->syntax '#f 'if))
                                      (__tmp25349
                                       (let ((__tmp25383
                                              (gx#datum->syntax '#f 'q))
                                             (__tmp25350
                                              (let ((__tmp25353
                                                     (let ((__tmp25382
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp25354
                                                            (let ((__tmp25374
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp25381 (gx#datum->syntax '#f 'eq?))
                                 (__tmp25375
                                  (let ((__tmp25377
                                         (let ((__tmp25380
                                                (gx#datum->syntax '#f '##car))
                                               (__tmp25378
                                                (let ((__tmp25379
                                                       (gx#datum->syntax
                                                        '#f
                                                        'q)))
                                                  (declare (not safe))
                                                  (cons __tmp25379 '()))))
                                           (declare (not safe))
                                           (cons __tmp25380 __tmp25378)))
                                        (__tmp25376
                                         (let ()
                                           (declare (not safe))
                                           (cons _L13595_ '()))))
                                    (declare (not safe))
                                    (cons __tmp25377 __tmp25376))))
                             (declare (not safe))
                             (cons __tmp25381 __tmp25375)))
                          (__tmp25355
                           (let ((__tmp25358
                                  (let ((__tmp25373
                                         (gx#datum->syntax '#f 'let))
                                        (__tmp25359
                                         (let ((__tmp25366
                                                (let ((__tmp25372
                                                       (gx#datum->syntax
                                                        '#f
                                                        'x))
                                                      (__tmp25367
                                                       (let ((__tmp25368
                                                              (let ((__tmp25371
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '##cdr))
                            (__tmp25369
                             (let ((__tmp25370 (gx#datum->syntax '#f 'q)))
                               (declare (not safe))
                               (cons __tmp25370 '()))))
                        (declare (not safe))
                        (cons __tmp25371 __tmp25369))))
                 (declare (not safe))
                 (cons __tmp25368 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25372
                                                        __tmp25367)))
                                               (__tmp25360
                                                (let ((__tmp25361
                                                       (let ((__tmp25365
                                                              (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch))
                                                             (__tmp25362
                                                              (let ((__tmp25364
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'x))
                            (__tmp25363
                             (foldr (lambda (_g1363213635_ _g1363313638_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g1363213635_ _g1363313638_)))
                                    '()
                                    _L13592_)))
                        (declare (not safe))
                        (cons __tmp25364 __tmp25363))))
                 (declare (not safe))
                 (cons __tmp25365 __tmp25362))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25361 '()))))
                                           (declare (not safe))
                                           (cons __tmp25366 __tmp25360))))
                                    (declare (not safe))
                                    (cons __tmp25373 __tmp25359)))
                                 (__tmp25356
                                  (let ((__tmp25357
                                         (let ()
                                           (declare (not safe))
                                           (cons _L13594_ '()))))
                                    (declare (not safe))
                                    (cons __tmp25357 '()))))
                             (declare (not safe))
                             (cons __tmp25358 __tmp25356))))
                      (declare (not safe))
                      (cons __tmp25374 __tmp25355))))
               (declare (not safe))
               (cons __tmp25382 __tmp25354)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp25351
                                                     (let ((__tmp25352
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L13594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp25352 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25353 __tmp25351))))
                                         (declare (not safe))
                                         (cons __tmp25383 __tmp25350))))
                                  (declare (not safe))
                                  (cons __tmp25384 __tmp25349))))
                           (declare (not safe))
                           (cons __tmp25348 '()))))
                    (declare (not safe))
                    (cons __tmp25385 __tmp25347))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25402
                                                           __tmp25346)))
                                                  (__tmp25343
                                                   (let ((__tmp25344
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L13594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25344 '()))))
                                              (declare (not safe))
                                              (cons __tmp25345 __tmp25343))))
                                       (declare (not safe))
                                       (cons __tmp25403 __tmp25342))))
                                (declare (not safe))
                                (cons __tmp25406 __tmp25341))))
                         (declare (not safe))
                         (cons __tmp25340 '()))))
                  (declare (not safe))
                  (cons __tmp25407 __tmp25339))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25420
                                                         __tmp25338))))
                                             _hd1347413582_
                                             _hd1347113572_
                                             _hd1346813562_
                                             _dispatch1346613554_
                                             _hd1345313512_
                                             _hd1345013502_
                                             _hd1344713492_)
                                            (_g1343713481_ _g1343813485_))))
                                    (_g1343713481_ _g1343813485_))))
                            (_g1343713481_ _g1343813485_))))
                    (_g1343713481_ _g1343813485_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1346113534_
                                         _target1345813528_
                                         '()))
                                      (_g1343713481_ _g1343813485_)))))
                            (_g1343713481_ _g1343813485_))))
                    (_g1343713481_ _g1343813485_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1343713481_
                                                     _g1343813485_))))
                                            (_g1343713481_ _g1343813485_))))
                                    (_g1343713481_ _g1343813485_)))))
                        (_g1343613641_
                         (list _e13423_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch13426_
                               _default13427_
                               _tab13432_
                               (vector-length _tab13432_)))))))
                 (_generate-generic-dispatch13033_
                  (lambda (_e13159_
                           _datums13161_
                           _dispatch13162_
                           _default13163_)
                    (let ((_g25421_
                           (if (_eq-datums?13016_ _datums13161_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_hash-e13165_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g25421_ 0)))
                              (_hashf13167_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g25421_ 1)))
                              (_eqf13168_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g25421_ 2))))
                          (let* ((_indexes13170_
                                  (_datum-dispatch-index13018_ _datums13161_))
                                 (_tab13173_
                                  (_generate-hash-dispatch-table13020_
                                   _indexes13170_
                                   _hash-e13165_)))
                            (let* ((_g1317813230_
                                    (lambda (_g1317913226_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g1317913226_)))
                                   (_g1317713419_
                                    (lambda (_g1317913234_)
                                      (if (gx#stx-pair? _g1317913234_)
                                          (let ((_e1319113237_
                                                 (gx#syntax-e _g1317913234_)))
                                            (let ((_hd1319013241_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1319113237_)))
                                                  (_tl1318913244_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1319113237_))))
                                              (if (gx#stx-pair? _tl1318913244_)
                                                  (let ((_e1319413247_
                                                         (gx#syntax-e
                                                          _tl1318913244_)))
                                                    (let ((_hd1319313251_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1319413247_)))
                                                          (_tl1319213254_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1319413247_))))
                                                      (if (gx#stx-pair?
                                                           _tl1319213254_)
                                                          (let ((_e1319713257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1319213254_)))
                    (let ((_hd1319613261_
                           (let () (declare (not safe)) (##car _e1319713257_)))
                          (_tl1319513264_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1319713257_))))
                      (if (gx#stx-pair? _tl1319513264_)
                          (let ((_e1320013267_ (gx#syntax-e _tl1319513264_)))
                            (let ((_hd1319913271_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1320013267_)))
                                  (_tl1319813274_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1320013267_))))
                              (if (gx#stx-pair/null? _hd1319913271_)
                                  (let ((_g25422_
                                         (gx#syntax-split-splice
                                          _hd1319913271_
                                          '0)))
                                    (begin
                                      (let ((_g25423_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g25422_)
                                                   (##vector-length _g25422_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g25423_ 2)))
                                            (error "Context expects 2 values"
                                                   _g25423_)))
                                      (let ((_target1320113277_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g25422_ 0)))
                                            (_tl1320313280_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g25422_ 1))))
                                        (if (gx#stx-null? _tl1320313280_)
                                            (letrec ((_loop1320413283_
                                                      (lambda (_hd1320213287_
                                                               _dispatch1320813290_)
                                                        (if (gx#stx-pair?
                                                             _hd1320213287_)
                                                            (let ((_e1320513293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1320213287_)))
                      (let ((_lp-hd1320613297_
                             (let ()
                               (declare (not safe))
                               (##car _e1320513293_)))
                            (_lp-tl1320713300_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1320513293_))))
                        (_loop1320413283_
                         _lp-tl1320713300_
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd1320613297_ _dispatch1320813290_)))))
                    (let ((_dispatch1320913303_
                           (reverse _dispatch1320813290_)))
                      (if (gx#stx-pair? _tl1319813274_)
                          (let ((_e1321213307_ (gx#syntax-e _tl1319813274_)))
                            (let ((_hd1321113311_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1321213307_)))
                                  (_tl1321013314_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1321213307_))))
                              (if (gx#stx-pair? _tl1321013314_)
                                  (let ((_e1321513317_
                                         (gx#syntax-e _tl1321013314_)))
                                    (let ((_hd1321413321_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1321513317_)))
                                          (_tl1321313324_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1321513317_))))
                                      (if (gx#stx-pair? _tl1321313324_)
                                          (let ((_e1321813327_
                                                 (gx#syntax-e _tl1321313324_)))
                                            (let ((_hd1321713331_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1321813327_)))
                                                  (_tl1321613334_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1321813327_))))
                                              (if (gx#stx-pair? _tl1321613334_)
                                                  (let ((_e1322113337_
                                                         (gx#syntax-e
                                                          _tl1321613334_)))
                                                    (let ((_hd1322013341_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1322113337_)))
                                                          (_tl1321913344_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1322113337_))))
                                                      (if (gx#stx-pair?
                                                           _tl1321913344_)
                                                          (let ((_e1322413347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1321913344_)))
                    (let ((_hd1322313351_
                           (let () (declare (not safe)) (##car _e1322413347_)))
                          (_tl1322213354_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1322413347_))))
                      (if (gx#stx-null? _tl1322213354_)
                          ((lambda (_L13357_
                                    _L13359_
                                    _L13360_
                                    _L13361_
                                    _L13362_
                                    _L13363_
                                    _L13364_
                                    _L13365_
                                    _L13366_)
                             (let ()
                               (let ((__tmp25503 (gx#datum->syntax '#f 'let))
                                     (__tmp25424
                                      (let ((__tmp25490
                                             (let ((__tmp25497
                                                    (let ((__tmp25498
                                                           (let ((__tmp25499
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp25502 (gx#datum->syntax '#f 'lambda))
                                (__tmp25500
                                 (let ((__tmp25501
                                        (let ()
                                          (declare (not safe))
                                          (cons _L13362_ '()))))
                                   (declare (not safe))
                                   (cons '() __tmp25501))))
                            (declare (not safe))
                            (cons __tmp25502 __tmp25500))))
                     (declare (not safe))
                     (cons __tmp25499 '()))))
              (declare (not safe))
              (cons _L13365_ __tmp25498)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp25491
                                                    (let ((__tmp25492
                                                           (let ((__tmp25493
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp25494
                                 (let ((__tmp25496
                                        (gx#datum->syntax '#f 'quote))
                                       (__tmp25495
                                        (let ()
                                          (declare (not safe))
                                          (cons _L13361_ '()))))
                                   (declare (not safe))
                                   (cons __tmp25496 __tmp25495))))
                            (declare (not safe))
                            (cons __tmp25494 '()))))
                     (declare (not safe))
                     (cons _L13364_ __tmp25493))))
              (declare (not safe))
              (cons __tmp25492 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp25497 __tmp25491)))
                                            (__tmp25425
                                             (let ((__tmp25426
                                                    (let ((__tmp25489
                                                           (gx#datum->syntax
                                                            '#f
                                                            'let*))
                                                          (__tmp25427
                                                           (let ((__tmp25465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp25484
                                 (let ((__tmp25488 (gx#datum->syntax '#f 'h))
                                       (__tmp25485
                                        (let ((__tmp25486
                                               (let ((__tmp25487
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L13366_ '()))))
                                                 (declare (not safe))
                                                 (cons _L13359_ __tmp25487))))
                                          (declare (not safe))
                                          (cons __tmp25486 '()))))
                                   (declare (not safe))
                                   (cons __tmp25488 __tmp25485)))
                                (__tmp25466
                                 (let ((__tmp25476
                                        (let ((__tmp25483
                                               (gx#datum->syntax '#f 'ix))
                                              (__tmp25477
                                               (let ((__tmp25478
                                                      (let ((__tmp25482
                                                             (gx#datum->syntax
                                                              '#f
                                                              '##fxmodulo))
                                                            (__tmp25479
                                                             (let ((__tmp25481
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'h))
                           (__tmp25480
                            (let () (declare (not safe)) (cons _L13360_ '()))))
                       (declare (not safe))
                       (cons __tmp25481 __tmp25480))))
                (declare (not safe))
                (cons __tmp25482 __tmp25479))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25478 '()))))
                                          (declare (not safe))
                                          (cons __tmp25483 __tmp25477)))
                                       (__tmp25467
                                        (let ((__tmp25468
                                               (let ((__tmp25475
                                                      (gx#datum->syntax
                                                       '#f
                                                       'q))
                                                     (__tmp25469
                                                      (let ((__tmp25470
                                                             (let ((__tmp25474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '##vector-ref))
                           (__tmp25471
                            (let ((__tmp25472
                                   (let ((__tmp25473
                                          (gx#datum->syntax '#f 'ix)))
                                     (declare (not safe))
                                     (cons __tmp25473 '()))))
                              (declare (not safe))
                              (cons _L13364_ __tmp25472))))
                       (declare (not safe))
                       (cons __tmp25474 __tmp25471))))
                (declare (not safe))
                (cons __tmp25470 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25475
                                                       __tmp25469))))
                                          (declare (not safe))
                                          (cons __tmp25468 '()))))
                                   (declare (not safe))
                                   (cons __tmp25476 __tmp25467))))
                            (declare (not safe))
                            (cons __tmp25484 __tmp25466)))
                         (__tmp25428
                          (let ((__tmp25429
                                 (let ((__tmp25464 (gx#datum->syntax '#f 'if))
                                       (__tmp25430
                                        (let ((__tmp25463
                                               (gx#datum->syntax '#f 'q))
                                              (__tmp25431
                                               (let ((__tmp25434
                                                      (let ((__tmp25462
                                                             (gx#datum->syntax
                                                              '#f
                                                              'if))
                                                            (__tmp25435
                                                             (let ((__tmp25455
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp25456
                                   (let ((__tmp25458
                                          (let ((__tmp25461
                                                 (gx#datum->syntax '#f '##car))
                                                (__tmp25459
                                                 (let ((__tmp25460
                                                        (gx#datum->syntax
                                                         '#f
                                                         'q)))
                                                   (declare (not safe))
                                                   (cons __tmp25460 '()))))
                                            (declare (not safe))
                                            (cons __tmp25461 __tmp25459)))
                                         (__tmp25457
                                          (let ()
                                            (declare (not safe))
                                            (cons _L13366_ '()))))
                                     (declare (not safe))
                                     (cons __tmp25458 __tmp25457))))
                              (declare (not safe))
                              (cons _L13357_ __tmp25456)))
                           (__tmp25436
                            (let ((__tmp25439
                                   (let ((__tmp25454
                                          (gx#datum->syntax '#f 'let))
                                         (__tmp25440
                                          (let ((__tmp25447
                                                 (let ((__tmp25453
                                                        (gx#datum->syntax
                                                         '#f
                                                         'x))
                                                       (__tmp25448
                                                        (let ((__tmp25449
                                                               (let ((__tmp25452
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f '##cdr))
                             (__tmp25450
                              (let ((__tmp25451 (gx#datum->syntax '#f 'q)))
                                (declare (not safe))
                                (cons __tmp25451 '()))))
                         (declare (not safe))
                         (cons __tmp25452 __tmp25450))))
                  (declare (not safe))
                  (cons __tmp25449 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25453
                                                         __tmp25448)))
                                                (__tmp25441
                                                 (let ((__tmp25442
                                                        (let ((__tmp25446
                                                               (gx#datum->syntax
                                                                '#f
                                                                '~case-dispatch))
                                                              (__tmp25443
                                                               (let ((__tmp25445
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'x))
                             (__tmp25444
                              (foldr (lambda (_g1341013413_ _g1341113416_)
                                       (let ()
                                         (declare (not safe))
                                         (cons _g1341013413_ _g1341113416_)))
                                     '()
                                     _L13363_)))
                         (declare (not safe))
                         (cons __tmp25445 __tmp25444))))
                  (declare (not safe))
                  (cons __tmp25446 __tmp25443))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25442 '()))))
                                            (declare (not safe))
                                            (cons __tmp25447 __tmp25441))))
                                     (declare (not safe))
                                     (cons __tmp25454 __tmp25440)))
                                  (__tmp25437
                                   (let ((__tmp25438
                                          (let ()
                                            (declare (not safe))
                                            (cons _L13365_ '()))))
                                     (declare (not safe))
                                     (cons __tmp25438 '()))))
                              (declare (not safe))
                              (cons __tmp25439 __tmp25437))))
                       (declare (not safe))
                       (cons __tmp25455 __tmp25436))))
                (declare (not safe))
                (cons __tmp25462 __tmp25435)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp25432
                                                      (let ((__tmp25433
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L13365_ '()))))
                (declare (not safe))
                (cons __tmp25433 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25434
                                                       __tmp25432))))
                                          (declare (not safe))
                                          (cons __tmp25463 __tmp25431))))
                                   (declare (not safe))
                                   (cons __tmp25464 __tmp25430))))
                            (declare (not safe))
                            (cons __tmp25429 '()))))
                     (declare (not safe))
                     (cons __tmp25465 __tmp25428))))
              (declare (not safe))
              (cons __tmp25489 __tmp25427))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp25426 '()))))
                                        (declare (not safe))
                                        (cons __tmp25490 __tmp25425))))
                                 (declare (not safe))
                                 (cons __tmp25503 __tmp25424))))
                           _hd1322313351_
                           _hd1322013341_
                           _hd1321713331_
                           _hd1321413321_
                           _hd1321113311_
                           _dispatch1320913303_
                           _hd1319613261_
                           _hd1319313251_
                           _hd1319013241_)
                          (_g1317813230_ _g1317913234_))))
                  (_g1317813230_ _g1317913234_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1317813230_
                                                   _g1317913234_))))
                                          (_g1317813230_ _g1317913234_))))
                                  (_g1317813230_ _g1317913234_))))
                          (_g1317813230_ _g1317913234_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1320413283_
                                               _target1320113277_
                                               '()))
                                            (_g1317813230_ _g1317913234_)))))
                                  (_g1317813230_ _g1317913234_))))
                          (_g1317813230_ _g1317913234_))))
                  (_g1317813230_ _g1317913234_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1317813230_
                                                   _g1317913234_))))
                                          (_g1317813230_ _g1317913234_)))))
                              (_g1317713419_
                               (list _e13159_
                                     (gx#genident 'default)
                                     (gx#genident 'table)
                                     _dispatch13162_
                                     _default13163_
                                     _tab13173_
                                     (vector-length _tab13173_)
                                     _hashf13167_
                                     _eqf13168_))))))))))
          (let* ((_g1303513059_
                  (lambda (_g1303613055_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1303613055_)))
                 (_g1303413155_
                  (lambda (_g1303613063_)
                    (if (gx#stx-pair? _g1303613063_)
                        (let ((_e1304113066_ (gx#syntax-e _g1303613063_)))
                          (let ((_hd1304013070_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1304113066_)))
                                (_tl1303913073_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1304113066_))))
                            (if (gx#stx-pair? _tl1303913073_)
                                (let ((_e1304413076_
                                       (gx#syntax-e _tl1303913073_)))
                                  (let ((_hd1304313080_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1304413076_)))
                                        (_tl1304213083_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1304413076_))))
                                    (if (gx#stx-pair/null? _tl1304213083_)
                                        (let ((_g25504_
                                               (gx#syntax-split-splice
                                                _tl1304213083_
                                                '0)))
                                          (begin
                                            (let ((_g25505_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g25504_)
                                                         (##vector-length
                                                          _g25504_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g25505_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g25505_)))
                                            (let ((_target1304513086_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g25504_
                                                      0)))
                                                  (_tl1304713089_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g25504_
                                                      1))))
                                              (if (gx#stx-null? _tl1304713089_)
                                                  (letrec ((_loop1304813092_
                                                            (lambda (_hd1304613096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause1305213099_)
                      (if (gx#stx-pair? _hd1304613096_)
                          (let ((_e1304913102_ (gx#syntax-e _hd1304613096_)))
                            (let ((_lp-hd1305013106_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1304913102_)))
                                  (_lp-tl1305113109_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1304913102_))))
                              (_loop1304813092_
                               _lp-tl1305113109_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd1305013106_
                                       _clause1305213099_)))))
                          (let ((_clause1305313112_
                                 (reverse _clause1305213099_)))
                            ((lambda (_L13116_ _L13118_)
                               (let ((_g25506_
                                      (_parse-clauses13009_
                                       _L13118_
                                       (foldr (lambda (_g1313613139_
                                                       _g1313713142_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g1313613139_
                                                        _g1313713142_)))
                                              '()
                                              _L13116_))))
                                 (begin
                                   (let ((_g25507_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g25506_)
                                                (##vector-length _g25506_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g25507_ 3)))
                                         (error "Context expects 3 values"
                                                _g25507_)))
                                   (let ((_datums13145_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g25506_ 0)))
                                         (_dispatch13147_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g25506_ 1)))
                                         (_default13148_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g25506_ 2))))
                                     (let ((_datum-count13150_
                                            (_count-datums13012_
                                             _datums13145_)))
                                       (if (< _datum-count13150_ '6)
                                           (_generate-simple-case13017_
                                            _L13118_
                                            _datums13145_
                                            _dispatch13147_
                                            _default13148_)
                                           (if (_char-datums?13014_
                                                _datums13145_)
                                               (_generate-char-dispatch13026_
                                                _L13118_
                                                _datums13145_
                                                _dispatch13147_
                                                _default13148_)
                                               (if (_fixnum-datums?13015_
                                                    _datums13145_)
                                                   (_generate-fixnum-dispatch13031_
                                                    _L13118_
                                                    _datums13145_
                                                    _dispatch13147_
                                                    _default13148_)
                                                   (if (< _datum-count13150_
                                                          '12)
                                                       (_generate-simple-case13017_
                                                        _L13118_
                                                        _datums13145_
                                                        _dispatch13147_
                                                        _default13148_)
                                                       (if (_symbolic-datums?13013_
                                                            _datums13145_)
                                                           (_generate-symbolic-dispatch13021_
                                                            _L13118_
                                                            _datums13145_
                                                            _dispatch13147_
                                                            _default13148_)
                                                           (_generate-generic-dispatch13033_
                                                            _L13118_
                                                            _datums13145_
                                                            _dispatch13147_
                                                            _default13148_)))))))))))
                             _clause1305313112_
                             _hd1304313080_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1304813092_
                                                     _target1304513086_
                                                     '()))
                                                  (_g1303513059_
                                                   _g1303613063_)))))
                                        (_g1303513059_ _g1303613063_))))
                                (_g1303513059_ _g1303613063_))))
                        (_g1303513059_ _g1303613063_)))))
            (_g1303413155_ _stx13006_)))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#~case-test|
      (lambda (_stx16057_)
        (let* ((_g1606016078_
                (lambda (_g1606116074_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1606116074_)))
               (_g1605916144_
                (lambda (_g1606116082_)
                  (if (gx#stx-pair? _g1606116082_)
                      (let ((_e1606616085_ (gx#syntax-e _g1606116082_)))
                        (let ((_hd1606516089_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1606616085_)))
                              (_tl1606416092_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1606616085_))))
                          (if (gx#stx-pair? _tl1606416092_)
                              (let ((_e1606916095_
                                     (gx#syntax-e _tl1606416092_)))
                                (let ((_hd1606816099_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1606916095_)))
                                      (_tl1606716102_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1606916095_))))
                                  (if (gx#stx-pair? _tl1606716102_)
                                      (let ((_e1607216105_
                                             (gx#syntax-e _tl1606716102_)))
                                        (let ((_hd1607116109_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1607216105_)))
                                              (_tl1607016112_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1607216105_))))
                                          (if (gx#stx-null? _tl1607016112_)
                                              ((lambda (_L16115_ _L16117_)
                                                 (let ((_datum-e16133_
                                                        (gx#stx-e _L16117_)))
                                                   (if (or (let ()
                                                             (declare
                                                               (not safe))
                                                             (symbol? _datum-e16133_))
                                                           (keyword?
                                                            _datum-e16133_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (immediate?
                                                              _datum-e16133_)))
                                                       (let ((__tmp25525
                                                              (gx#datum->syntax
                                                               '#f
                                                               'eq?))
                                                             (__tmp25520
                                                              (let ((__tmp25522
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp25524 (gx#datum->syntax '#f 'quote))
                                   (__tmp25523
                                    (let ()
                                      (declare (not safe))
                                      (cons _L16117_ '()))))
                               (declare (not safe))
                               (cons __tmp25524 __tmp25523)))
                            (__tmp25521
                             (let ()
                               (declare (not safe))
                               (cons _L16115_ '()))))
                        (declare (not safe))
                        (cons __tmp25522 __tmp25521))))
                 (declare (not safe))
                 (cons __tmp25525 __tmp25520))
               (if (let () (declare (not safe)) (number? _datum-e16133_))
                   (let ((__tmp25519 (gx#datum->syntax '#f 'eqv?))
                         (__tmp25514
                          (let ((__tmp25516
                                 (let ((__tmp25518
                                        (gx#datum->syntax '#f 'quote))
                                       (__tmp25517
                                        (let ()
                                          (declare (not safe))
                                          (cons _L16117_ '()))))
                                   (declare (not safe))
                                   (cons __tmp25518 __tmp25517)))
                                (__tmp25515
                                 (let ()
                                   (declare (not safe))
                                   (cons _L16115_ '()))))
                            (declare (not safe))
                            (cons __tmp25516 __tmp25515))))
                     (declare (not safe))
                     (cons __tmp25519 __tmp25514))
                   (let ((__tmp25513 (gx#datum->syntax '#f 'equal?))
                         (__tmp25508
                          (let ((__tmp25510
                                 (let ((__tmp25512
                                        (gx#datum->syntax '#f 'quote))
                                       (__tmp25511
                                        (let ()
                                          (declare (not safe))
                                          (cons _L16117_ '()))))
                                   (declare (not safe))
                                   (cons __tmp25512 __tmp25511)))
                                (__tmp25509
                                 (let ()
                                   (declare (not safe))
                                   (cons _L16115_ '()))))
                            (declare (not safe))
                            (cons __tmp25510 __tmp25509))))
                     (declare (not safe))
                     (cons __tmp25513 __tmp25508))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd1607116109_
                                               _hd1606816099_)
                                              (_g1606016078_ _g1606116082_))))
                                      (_g1606016078_ _g1606116082_))))
                              (_g1606016078_ _g1606116082_))))
                      (_g1606016078_ _g1606116082_)))))
          (_g1605916144_ _stx16057_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#~case-dispatch|
      (lambda (_$stx16148_)
        (let* ((_g1615216176_
                (lambda (_g1615316172_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1615316172_)))
               (_g1615116261_
                (lambda (_g1615316180_)
                  (if (gx#stx-pair? _g1615316180_)
                      (let ((_e1615816183_ (gx#syntax-e _g1615316180_)))
                        (let ((_hd1615716187_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1615816183_)))
                              (_tl1615616190_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1615816183_))))
                          (if (gx#stx-pair? _tl1615616190_)
                              (let ((_e1616116193_
                                     (gx#syntax-e _tl1615616190_)))
                                (let ((_hd1616016197_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1616116193_)))
                                      (_tl1615916200_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1616116193_))))
                                  (if (gx#stx-pair/null? _tl1615916200_)
                                      (let ((_g25526_
                                             (gx#syntax-split-splice
                                              _tl1615916200_
                                              '0)))
                                        (begin
                                          (let ((_g25527_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g25526_)
                                                       (##vector-length
                                                        _g25526_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g25527_ 2)))
                                                (error "Context expects 2 values"
                                                       _g25527_)))
                                          (let ((_target1616216203_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25526_ 0)))
                                                (_tl1616416206_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25526_ 1))))
                                            (if (gx#stx-null? _tl1616416206_)
                                                (letrec ((_loop1616516209_
                                                          (lambda (_hd1616316213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _K1616916216_)
                    (if (gx#stx-pair? _hd1616316213_)
                        (let ((_e1616616219_ (gx#syntax-e _hd1616316213_)))
                          (let ((_lp-hd1616716223_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1616616219_)))
                                (_lp-tl1616816226_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1616616219_))))
                            (_loop1616516209_
                             _lp-tl1616816226_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1616716223_ _K1616916216_)))))
                        (let ((_K1617016229_ (reverse _K1616916216_)))
                          ((lambda (_L16233_ _L16235_)
                             (let ((__tmp25531
                                    (gx#datum->syntax '#f '~case-dispatch*))
                                   (__tmp25528
                                    (let ((__tmp25529
                                           (let ((__tmp25530
                                                  (foldr (lambda (_g1625216255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1625316258_)
                   (let ()
                     (declare (not safe))
                     (cons _g1625216255_ _g1625316258_)))
                 '()
                 _L16233_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (cons _L16235_ __tmp25530))))
                                      (declare (not safe))
                                      (cons '0 __tmp25529))))
                               (declare (not safe))
                               (cons __tmp25531 __tmp25528)))
                           _K1617016229_
                           _hd1616016197_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1616516209_
                                                   _target1616216203_
                                                   '()))
                                                (_g1615216176_
                                                 _g1615316180_)))))
                                      (_g1615216176_ _g1615316180_))))
                              (_g1615216176_ _g1615316180_))))
                      (_g1615216176_ _g1615316180_)))))
          (_g1615116261_ _$stx16148_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#~case-dispatch*|
      (lambda (_stx16266_)
        (let* ((___stx2327123272_ _stx16266_)
               (_g1627316369_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2327123272_))))
          (let ((___kont2327423275_
                 (lambda (_L16846_ _L16848_)
                   (let ((__tmp25533 (gx#datum->syntax '#f 'quote))
                         (__tmp25532
                          (let () (declare (not safe)) (cons '#!void '()))))
                     (declare (not safe))
                     (cons __tmp25533 __tmp25532))))
                (___kont2327623277_
                 (lambda (_L16788_ _L16790_ _L16791_) _L16788_))
                (___kont2327823279_
                 (lambda (_L16685_ _L16687_ _L16688_ _L16689_)
                   (let* ((_g1671016718_
                           (lambda (_g1671116714_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g1671116714_)))
                          (_g1670916737_
                           (lambda (_g1671116722_)
                             ((lambda (_L16725_)
                                (let ()
                                  (let ((__tmp25541 (gx#datum->syntax '#f 'if))
                                        (__tmp25534
                                         (let ((__tmp25537
                                                (let ((__tmp25540
                                                       (gx#datum->syntax
                                                        '#f
                                                        '##fx=))
                                                      (__tmp25538
                                                       (let ((__tmp25539
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L16725_ '()))))
                 (declare (not safe))
                 (cons _L16688_ __tmp25539))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25540
                                                        __tmp25538)))
                                               (__tmp25535
                                                (let ((__tmp25536
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L16685_ '()))))
                                                  (declare (not safe))
                                                  (cons _L16687_ __tmp25536))))
                                           (declare (not safe))
                                           (cons __tmp25537 __tmp25535))))
                                    (declare (not safe))
                                    (cons __tmp25541 __tmp25534))))
                              _g1671116722_))))
                     (_g1670916737_ (gx#stx-e _L16689_)))))
                (___kont2328023281_
                 (lambda (_L16535_ _L16537_ _L16538_ _L16539_ _L16540_)
                   (let* ((_g1656416579_
                           (lambda (_g1656516575_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g1656516575_)))
                          (_g1656316624_
                           (lambda (_g1656516583_)
                             (if (gx#stx-pair? _g1656516583_)
                                 (let ((_e1657016586_
                                        (gx#syntax-e _g1656516583_)))
                                   (let ((_hd1656916590_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e1657016586_)))
                                         (_tl1656816593_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e1657016586_))))
                                     (if (gx#stx-pair? _tl1656816593_)
                                         (let ((_e1657316596_
                                                (gx#syntax-e _tl1656816593_)))
                                           (let ((_hd1657216600_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1657316596_)))
                                                 (_tl1657116603_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1657316596_))))
                                             (if (gx#stx-null? _tl1657116603_)
                                                 ((lambda (_L16606_ _L16608_)
                                                    (let ()
                                                      (let ((__tmp25558
                                                             (gx#datum->syntax
                                                              '#f
                                                              'if))
                                                            (__tmp25542
                                                             (let ((__tmp25554
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp25557 (gx#datum->syntax '#f '##fx=))
                                  (__tmp25555
                                   (let ((__tmp25556
                                          (let ()
                                            (declare (not safe))
                                            (cons _L16608_ '()))))
                                     (declare (not safe))
                                     (cons _L16539_ __tmp25556))))
                              (declare (not safe))
                              (cons __tmp25557 __tmp25555)))
                           (__tmp25543
                            (let ((__tmp25544
                                   (let ((__tmp25545
                                          (let ((__tmp25553
                                                 (gx#datum->syntax '#f 'if))
                                                (__tmp25546
                                                 (let ((__tmp25549
                                                        (let ((__tmp25552
                                                               (gx#datum->syntax
                                                                '#f
                                                                '##fx=))
                                                              (__tmp25550
                                                               (let ((__tmp25551
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _L16606_ '()))))
                         (declare (not safe))
                         (cons _L16539_ __tmp25551))))
                  (declare (not safe))
                  (cons __tmp25552 __tmp25550)))
               (__tmp25547
                (let ((__tmp25548
                       (let () (declare (not safe)) (cons _L16535_ '()))))
                  (declare (not safe))
                  (cons _L16537_ __tmp25548))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25549
                                                         __tmp25547))))
                                            (declare (not safe))
                                            (cons __tmp25553 __tmp25546))))
                                     (declare (not safe))
                                     (cons __tmp25545 '()))))
                              (declare (not safe))
                              (cons _L16538_ __tmp25544))))
                       (declare (not safe))
                       (cons __tmp25554 __tmp25543))))
                (declare (not safe))
                (cons __tmp25558 __tmp25542))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1657216600_
                                                  _hd1656916590_)
                                                 (_g1656416579_
                                                  _g1656516583_))))
                                         (_g1656416579_ _g1656516583_))))
                                 (_g1656416579_ _g1656516583_)))))
                     (_g1656316624_
                      (list (gx#stx-e _L16540_)
                            (let ((__tmp25559 (gx#stx-e _L16540_)))
                              (declare (not safe))
                              (fx+ __tmp25559 '1)))))))
                (___kont2328223283_
                 (lambda (_L16436_ _L16438_ _L16439_)
                   (let ((__tmp25563
                          (gx#datum->syntax '#f '~case-dispatch-bsearch))
                         (__tmp25560
                          (let ((__tmp25561
                                 (let ((__tmp25562
                                        (foldr (lambda (_g1645916462_
                                                        _g1646016465_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g1645916462_
                                                         _g1646016465_)))
                                               '()
                                               _L16436_)))
                                   (declare (not safe))
                                   (cons _L16438_ __tmp25562))))
                            (declare (not safe))
                            (cons _L16439_ __tmp25561))))
                     (declare (not safe))
                     (cons __tmp25563 __tmp25560)))))
            (let ((___match2342823429_
                   (lambda (_e1634816376_
                            _hd1634716380_
                            _tl1634616383_
                            _e1635116386_
                            _hd1635016390_
                            _tl1634916393_
                            _e1635416396_
                            _hd1635316400_
                            _tl1635216403_
                            ___splice2328423285_
                            _target1635516406_
                            _tl1635716409_)
                     (letrec ((_loop1635816412_
                               (lambda (_hd1635616416_ _K1636216419_)
                                 (if (gx#stx-pair? _hd1635616416_)
                                     (let ((_e1635916422_
                                            (gx#syntax-e _hd1635616416_)))
                                       (let ((_lp-tl1636116429_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e1635916422_)))
                                             (_lp-hd1636016426_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e1635916422_))))
                                         (_loop1635816412_
                                          _lp-tl1636116429_
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd1636016426_
                                                  _K1636216419_)))))
                                     (let ((_K1636316432_
                                            (reverse _K1636216419_)))
                                       (___kont2328223283_
                                        _K1636316432_
                                        _hd1635316400_
                                        _hd1635016390_))))))
                       (_loop1635816412_ _target1635516406_ '())))))
              (if (gx#stx-pair? ___stx2327123272_)
                  (let ((_e1627916816_ (gx#syntax-e ___stx2327123272_)))
                    (let ((_tl1627716823_
                           (let () (declare (not safe)) (##cdr _e1627916816_)))
                          (_hd1627816820_
                           (let ()
                             (declare (not safe))
                             (##car _e1627916816_))))
                      (if (gx#stx-pair? _tl1627716823_)
                          (let ((_e1628216826_ (gx#syntax-e _tl1627716823_)))
                            (let ((_tl1628016833_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1628216826_)))
                                  (_hd1628116830_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1628216826_))))
                              (if (gx#stx-pair? _tl1628016833_)
                                  (let ((_e1628516836_
                                         (gx#syntax-e _tl1628016833_)))
                                    (let ((_tl1628316843_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1628516836_)))
                                          (_hd1628416840_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1628516836_))))
                                      (if (gx#stx-null? _tl1628316843_)
                                          (___kont2327423275_
                                           _hd1628416840_
                                           _hd1628116830_)
                                          (if (gx#stx-pair? _tl1628316843_)
                                              (let ((_e1630016778_
                                                     (gx#syntax-e
                                                      _tl1628316843_)))
                                                (let ((_tl1629816785_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1630016778_)))
                                                      (_hd1629916782_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1630016778_))))
                                                  (if (gx#stx-null?
                                                       _tl1629816785_)
                                                      (___kont2327623277_
                                                       _hd1629916782_
                                                       _hd1628416840_
                                                       _hd1628116830_)
                                                      (if (gx#stx-pair?
                                                           _tl1629816785_)
                                                          (let ((_e1631916675_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1629816785_)))
                    (let ((_tl1631716682_
                           (let () (declare (not safe)) (##cdr _e1631916675_)))
                          (_hd1631816679_
                           (let ()
                             (declare (not safe))
                             (##car _e1631916675_))))
                      (if (gx#stx-null? _tl1631716682_)
                          (___kont2327823279_
                           _hd1631816679_
                           _hd1629916782_
                           _hd1628416840_
                           _hd1628116830_)
                          (if (gx#stx-pair? _tl1631716682_)
                              (let ((_e1634216525_
                                     (gx#syntax-e _tl1631716682_)))
                                (let ((_tl1634016532_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1634216525_)))
                                      (_hd1634116529_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1634216525_))))
                                  (if (gx#stx-null? _tl1634016532_)
                                      (___kont2328023281_
                                       _hd1634116529_
                                       _hd1631816679_
                                       _hd1629916782_
                                       _hd1628416840_
                                       _hd1628116830_)
                                      (if (gx#stx-pair/null? _tl1628316843_)
                                          (let ((___splice2328423285_
                                                 (gx#syntax-split-splice
                                                  _tl1628316843_
                                                  '0)))
                                            (let ((_tl1635716409_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2328423285_
                                                      '1)))
                                                  (_target1635516406_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2328423285_
                                                      '0))))
                                              (if (gx#stx-null? _tl1635716409_)
                                                  (___match2342823429_
                                                   _e1627916816_
                                                   _hd1627816820_
                                                   _tl1627716823_
                                                   _e1628216826_
                                                   _hd1628116830_
                                                   _tl1628016833_
                                                   _e1628516836_
                                                   _hd1628416840_
                                                   _tl1628316843_
                                                   ___splice2328423285_
                                                   _target1635516406_
                                                   _tl1635716409_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1627316369_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1627316369_))))))
                              (if (gx#stx-pair/null? _tl1628316843_)
                                  (let ((___splice2328423285_
                                         (gx#syntax-split-splice
                                          _tl1628316843_
                                          '0)))
                                    (let ((_tl1635716409_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2328423285_
                                              '1)))
                                          (_target1635516406_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2328423285_
                                              '0))))
                                      (if (gx#stx-null? _tl1635716409_)
                                          (___match2342823429_
                                           _e1627916816_
                                           _hd1627816820_
                                           _tl1627716823_
                                           _e1628216826_
                                           _hd1628116830_
                                           _tl1628016833_
                                           _e1628516836_
                                           _hd1628416840_
                                           _tl1628316843_
                                           ___splice2328423285_
                                           _target1635516406_
                                           _tl1635716409_)
                                          (let ()
                                            (declare (not safe))
                                            (_g1627316369_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1627316369_)))))))
                  (if (gx#stx-pair/null? _tl1628316843_)
                      (let ((___splice2328423285_
                             (gx#syntax-split-splice _tl1628316843_ '0)))
                        (let ((_tl1635716409_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice2328423285_ '1)))
                              (_target1635516406_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice2328423285_ '0))))
                          (if (gx#stx-null? _tl1635716409_)
                              (___match2342823429_
                               _e1627916816_
                               _hd1627816820_
                               _tl1627716823_
                               _e1628216826_
                               _hd1628116830_
                               _tl1628016833_
                               _e1628516836_
                               _hd1628416840_
                               _tl1628316843_
                               ___splice2328423285_
                               _target1635516406_
                               _tl1635716409_)
                              (let () (declare (not safe)) (_g1627316369_)))))
                      (let () (declare (not safe)) (_g1627316369_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl1628316843_)
                                                  (let ((___splice2328423285_
                                                         (gx#syntax-split-splice
                                                          _tl1628316843_
                                                          '0)))
                                                    (let ((_tl1635716409_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice2328423285_
                                                              '1)))
                                                          (_target1635516406_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice2328423285_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl1635716409_)
                                                          (___match2342823429_
                                                           _e1627916816_
                                                           _hd1627816820_
                                                           _tl1627716823_
                                                           _e1628216826_
                                                           _hd1628116830_
                                                           _tl1628016833_
                                                           _e1628516836_
                                                           _hd1628416840_
                                                           _tl1628316843_
                                                           ___splice2328423285_
                                                           _target1635516406_
                                                           _tl1635716409_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g1627316369_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1627316369_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1627316369_)))))
                          (let () (declare (not safe)) (_g1627316369_)))))
                  (let () (declare (not safe)) (_g1627316369_))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#~case-dispatch-bsearch|
      (lambda (_stx16868_)
        (letrec ((_split16871_
                  (lambda (_lst17232_ _mid17234_)
                    (let _lp17236_ ((_i17239_ '0)
                                    (_rest17241_ _lst17232_)
                                    (_left17242_ '()))
                      (if (fx< _i17239_ _mid17234_)
                          (_lp17236_
                           (let () (declare (not safe)) (fx+ _i17239_ '1))
                           (cdr _rest17241_)
                           (let ((__tmp25564 (car _rest17241_)))
                             (declare (not safe))
                             (cons __tmp25564 _left17242_)))
                          (values (reverse _left17242_) _rest17241_))))))
          (let* ((_g1687416902_
                  (lambda (_g1687516898_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1687516898_)))
                 (_g1687317228_
                  (lambda (_g1687516906_)
                    (if (gx#stx-pair? _g1687516906_)
                        (let ((_e1688116909_ (gx#syntax-e _g1687516906_)))
                          (let ((_hd1688016913_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1688116909_)))
                                (_tl1687916916_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1688116909_))))
                            (if (gx#stx-pair? _tl1687916916_)
                                (let ((_e1688416919_
                                       (gx#syntax-e _tl1687916916_)))
                                  (let ((_hd1688316923_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1688416919_)))
                                        (_tl1688216926_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1688416919_))))
                                    (if (gx#stx-pair? _tl1688216926_)
                                        (let ((_e1688716929_
                                               (gx#syntax-e _tl1688216926_)))
                                          (let ((_hd1688616933_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1688716929_)))
                                                (_tl1688516936_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1688716929_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1688516936_)
                                                (let ((_g25565_
                                                       (gx#syntax-split-splice
                                                        _tl1688516936_
                                                        '0)))
                                                  (begin
                                                    (let ((_g25566_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g25565_)
                         (##vector-length _g25565_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g25566_ 2)))
                  (error "Context expects 2 values" _g25566_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1688816939_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g25565_
                                                              0)))
                                                          (_tl1689016942_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g25565_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1689016942_)
                                                          (letrec ((_loop1689116945_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1688916949_ _K1689516952_)
                              (if (gx#stx-pair? _hd1688916949_)
                                  (let ((_e1689216955_
                                         (gx#syntax-e _hd1688916949_)))
                                    (let ((_lp-hd1689316959_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1689216955_)))
                                          (_lp-tl1689416962_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1689216955_))))
                                      (_loop1689116945_
                                       _lp-tl1689416962_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1689316959_
                                               _K1689516952_)))))
                                  (let ((_K1689616965_
                                         (reverse _K1689516952_)))
                                    ((lambda (_L16969_ _L16971_ _L16972_)
                                       (let* ((_len17002_
                                               (length (foldr (lambda (_g1699316996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1699416999_)
                        (let ()
                          (declare (not safe))
                          (cons _g1699316996_ _g1699416999_)))
                      '()
                      _L16969_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_mid17005_
                                               (quotient _len17002_ '2))
                                              (_g25567_
                                               (_split16871_
                                                (foldr (lambda (_g1700717010_
                                                                _g1700817013_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g1700717010_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1700817013_)))
               '()
               _L16969_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _mid17005_)))
                                         (begin
                                           (let ((_g25568_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g25567_)
                                                        (##vector-length
                                                         _g25567_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g25568_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g25568_)))
                                           (let ((_left17016_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g25567_ 0)))
                                                 (_right17018_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g25567_
                                                     1))))
                                             (let ()
                                               (let* ((_g1702217063_
                                                       (lambda (_g1702317059_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g1702317059_)))
                                                      (_g1702117224_
                                                       (lambda (_g1702317067_)
                                                         (if (gx#stx-pair?
                                                              _g1702317067_)
                                                             (let ((_e1703017070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1702317067_)))
                       (let ((_hd1702917074_
                              (let ()
                                (declare (not safe))
                                (##car _e1703017070_)))
                             (_tl1702817077_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1703017070_))))
                         (if (gx#stx-pair? _tl1702817077_)
                             (let ((_e1703317080_
                                    (gx#syntax-e _tl1702817077_)))
                               (let ((_hd1703217084_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1703317080_)))
                                     (_tl1703117087_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1703317080_))))
                                 (if (gx#stx-pair/null? _hd1703217084_)
                                     (let ((_g25569_
                                            (gx#syntax-split-splice
                                             _hd1703217084_
                                             '0)))
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
                                         (let ((_target1703417090_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g25569_ 0)))
                                               (_tl1703617093_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g25569_ 1))))
                                           (if (gx#stx-null? _tl1703617093_)
                                               (letrec ((_loop1703717096_
                                                         (lambda (_hd1703517100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K-left1704117103_)
                   (if (gx#stx-pair? _hd1703517100_)
                       (let ((_e1703817106_ (gx#syntax-e _hd1703517100_)))
                         (let ((_lp-hd1703917110_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1703817106_)))
                               (_lp-tl1704017113_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1703817106_))))
                           (_loop1703717096_
                            _lp-tl1704017113_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd1703917110_ _K-left1704117103_)))))
                       (let ((_K-left1704217116_ (reverse _K-left1704117103_)))
                         (if (gx#stx-pair? _tl1703117087_)
                             (let ((_e1704517120_
                                    (gx#syntax-e _tl1703117087_)))
                               (let ((_hd1704417124_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1704517120_)))
                                     (_tl1704317127_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1704517120_))))
                                 (if (gx#stx-pair/null? _hd1704417124_)
                                     (let ((_g25571_
                                            (gx#syntax-split-splice
                                             _hd1704417124_
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
                                         (let ((_target1704617130_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g25571_ 0)))
                                               (_tl1704817133_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g25571_ 1))))
                                           (if (gx#stx-null? _tl1704817133_)
                                               (letrec ((_loop1704917136_
                                                         (lambda (_hd1704717140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K-right1705317143_)
                   (if (gx#stx-pair? _hd1704717140_)
                       (let ((_e1705017146_ (gx#syntax-e _hd1704717140_)))
                         (let ((_lp-hd1705117150_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1705017146_)))
                               (_lp-tl1705217153_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1705017146_))))
                           (_loop1704917136_
                            _lp-tl1705217153_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd1705117150_ _K-right1705317143_)))))
                       (let ((_K-right1705417156_
                              (reverse _K-right1705317143_)))
                         (if (gx#stx-pair? _tl1704317127_)
                             (let ((_e1705717160_
                                    (gx#syntax-e _tl1704317127_)))
                               (let ((_hd1705617164_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1705717160_)))
                                     (_tl1705517167_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1705717160_))))
                                 (if (gx#stx-null? _tl1705517167_)
                                     ((lambda (_L17170_
                                               _L17172_
                                               _L17173_
                                               _L17174_)
                                        (let ()
                                          (let ((__tmp25590
                                                 (gx#datum->syntax '#f 'if))
                                                (__tmp25573
                                                 (let ((__tmp25586
                                                        (let ((__tmp25589
                                                               (gx#datum->syntax
                                                                '#f
                                                                '##fx<))
                                                              (__tmp25587
                                                               (let ((__tmp25588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _L17170_ '()))))
                         (declare (not safe))
                         (cons _L16971_ __tmp25588))))
                  (declare (not safe))
                  (cons __tmp25589 __tmp25587)))
               (__tmp25574
                (let ((__tmp25581
                       (let ((__tmp25585
                              (gx#datum->syntax '#f '~case-dispatch*))
                             (__tmp25582
                              (let ((__tmp25583
                                     (let ((__tmp25584
                                            (foldr (lambda (_g1720917212_
                                                            _g1721017215_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1720917212_
                                                             _g1721017215_)))
                                                   '()
                                                   _L17173_)))
                                       (declare (not safe))
                                       (cons _L16971_ __tmp25584))))
                                (declare (not safe))
                                (cons _L16972_ __tmp25583))))
                         (declare (not safe))
                         (cons __tmp25585 __tmp25582)))
                      (__tmp25575
                       (let ((__tmp25576
                              (let ((__tmp25580
                                     (gx#datum->syntax '#f '~case-dispatch*))
                                    (__tmp25577
                                     (let ((__tmp25578
                                            (let ((__tmp25579
                                                   (foldr (lambda (_g1720717218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1720817221_)
                    (let ()
                      (declare (not safe))
                      (cons _g1720717218_ _g1720817221_)))
                  '()
                  _L17172_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (cons _L16971_ __tmp25579))))
                                       (declare (not safe))
                                       (cons _L17170_ __tmp25578))))
                                (declare (not safe))
                                (cons __tmp25580 __tmp25577))))
                         (declare (not safe))
                         (cons __tmp25576 '()))))
                  (declare (not safe))
                  (cons __tmp25581 __tmp25575))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25586
                                                         __tmp25574))))
                                            (declare (not safe))
                                            (cons __tmp25590 __tmp25573))))
                                      _hd1705617164_
                                      _K-right1705417156_
                                      _K-left1704217116_
                                      _hd1702917074_)
                                     (_g1702217063_ _g1702317067_))))
                             (_g1702217063_ _g1702317067_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1704917136_
                                                  _target1704617130_
                                                  '()))
                                               (_g1702217063_
                                                _g1702317067_)))))
                                     (_g1702217063_ _g1702317067_))))
                             (_g1702217063_ _g1702317067_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1703717096_
                                                  _target1703417090_
                                                  '()))
                                               (_g1702217063_
                                                _g1702317067_)))))
                                     (_g1702217063_ _g1702317067_))))
                             (_g1702217063_ _g1702317067_))))
                     (_g1702217063_ _g1702317067_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1702117224_
                                                  (list _mid17005_
                                                        _left17016_
                                                        _right17018_
                                                        (fx+ _mid17005_
                                                             (gx#stx-e
                                                              _L16972_))))))))))
                                     _K1689616965_
                                     _hd1688616933_
                                     _hd1688316923_))))))
                    (_loop1689116945_ _target1688816939_ '()))
                  (_g1687416902_ _g1687516906_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1687416902_
                                                 _g1687516906_))))
                                        (_g1687416902_ _g1687516906_))))
                                (_g1687416902_ _g1687516906_))))
                        (_g1687416902_ _g1687516906_)))))
            (_g1687317228_ _stx16868_)))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#do|
      (lambda (_$stx17248_)
        (let* ((_g1725217323_
                (lambda (_g1725317319_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1725317319_)))
               (_g1725117612_
                (lambda (_g1725317327_)
                  (if (gx#stx-pair? _g1725317327_)
                      (let ((_e1726217330_ (gx#syntax-e _g1725317327_)))
                        (let ((_hd1726117334_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1726217330_)))
                              (_tl1726017337_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1726217330_))))
                          (if (gx#stx-pair? _tl1726017337_)
                              (let ((_e1726517340_
                                     (gx#syntax-e _tl1726017337_)))
                                (let ((_hd1726417344_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1726517340_)))
                                      (_tl1726317347_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1726517340_))))
                                  (if (gx#stx-pair/null? _hd1726417344_)
                                      (let ((_g25591_
                                             (gx#syntax-split-splice
                                              _hd1726417344_
                                              '0)))
                                        (begin
                                          (let ((_g25592_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g25591_)
                                                       (##vector-length
                                                        _g25591_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g25592_ 2)))
                                                (error "Context expects 2 values"
                                                       _g25592_)))
                                          (let ((_target1726617350_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25591_ 0)))
                                                (_tl1726817353_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25591_ 1))))
                                            (if (gx#stx-null? _tl1726817353_)
                                                (letrec ((_loop1726917356_
                                                          (lambda (_hd1726717360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _step1727317363_
                           _init1727417365_
                           _var1727517367_)
                    (if (gx#stx-pair? _hd1726717360_)
                        (let ((_e1727017370_ (gx#syntax-e _hd1726717360_)))
                          (let ((_lp-hd1727117374_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1727017370_)))
                                (_lp-tl1727217377_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1727017370_))))
                            (if (gx#stx-pair? _lp-hd1727117374_)
                                (let ((_e1728117380_
                                       (gx#syntax-e _lp-hd1727117374_)))
                                  (let ((_hd1728017384_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1728117380_)))
                                        (_tl1727917387_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1728117380_))))
                                    (if (gx#stx-pair? _tl1727917387_)
                                        (let ((_e1728417390_
                                               (gx#syntax-e _tl1727917387_)))
                                          (let ((_hd1728317394_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1728417390_)))
                                                (_tl1728217397_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1728417390_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1728217397_)
                                                (let ((_g25624_
                                                       (gx#syntax-split-splice
                                                        _tl1728217397_
                                                        '0)))
                                                  (begin
                                                    (let ((_g25625_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g25624_)
                         (##vector-length _g25624_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g25625_ 2)))
                  (error "Context expects 2 values" _g25625_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1728517400_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g25624_
                                                              0)))
                                                          (_tl1728717403_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g25624_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1728717403_)
                                                          (letrec ((_loop1728817406_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1728617410_ _step1729217413_)
                              (if (gx#stx-pair? _hd1728617410_)
                                  (let ((_e1728917416_
                                         (gx#syntax-e _hd1728617410_)))
                                    (let ((_lp-hd1729017420_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1728917416_)))
                                          (_lp-tl1729117423_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1728917416_))))
                                      (_loop1728817406_
                                       _lp-tl1729117423_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1729017420_
                                               _step1729217413_)))))
                                  (let ((_step1729317426_
                                         (reverse _step1729217413_)))
                                    (_loop1726917356_
                                     _lp-tl1727217377_
                                     (let ()
                                       (declare (not safe))
                                       (cons _step1729317426_
                                             _step1727317363_))
                                     (let ()
                                       (declare (not safe))
                                       (cons _hd1728317394_ _init1727417365_))
                                     (let ()
                                       (declare (not safe))
                                       (cons _hd1728017384_
                                             _var1727517367_))))))))
                    (_loop1728817406_ _target1728517400_ '()))
                  (_g1725217323_ _g1725317327_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1725217323_
                                                 _g1725317327_))))
                                        (_g1725217323_ _g1725317327_))))
                                (_g1725217323_ _g1725317327_))))
                        (let ((_step1727617430_ (reverse _step1727317363_))
                              (_init1727717433_ (reverse _init1727417365_))
                              (_var1727817435_ (reverse _var1727517367_)))
                          (if (gx#stx-pair? _tl1726317347_)
                              (let ((_e1729617438_
                                     (gx#syntax-e _tl1726317347_)))
                                (let ((_hd1729517442_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1729617438_)))
                                      (_tl1729417445_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1729617438_))))
                                  (if (gx#stx-pair? _hd1729517442_)
                                      (let ((_e1729917448_
                                             (gx#syntax-e _hd1729517442_)))
                                        (let ((_hd1729817452_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1729917448_)))
                                              (_tl1729717455_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1729917448_))))
                                          (if (gx#stx-pair/null?
                                               _tl1729717455_)
                                              (let ((_g25593_
                                                     (gx#syntax-split-splice
                                                      _tl1729717455_
                                                      '0)))
                                                (begin
                                                  (let ((_g25594_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g25593_)
                                                               (##vector-length
                                                                _g25593_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g25594_ 2)))
                (error "Context expects 2 values" _g25594_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1730017458_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g25593_
                                                            0)))
                                                        (_tl1730217461_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g25593_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl1730217461_)
                                                        (letrec ((_loop1730317464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1730117468_ _fini1730717471_)
                            (if (gx#stx-pair? _hd1730117468_)
                                (let ((_e1730417474_
                                       (gx#syntax-e _hd1730117468_)))
                                  (let ((_lp-hd1730517478_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1730417474_)))
                                        (_lp-tl1730617481_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1730417474_))))
                                    (_loop1730317464_
                                     _lp-tl1730617481_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd1730517478_
                                             _fini1730717471_)))))
                                (let ((_fini1730817484_
                                       (reverse _fini1730717471_)))
                                  (if (gx#stx-pair/null? _tl1729417445_)
                                      (let ((_g25595_
                                             (gx#syntax-split-splice
                                              _tl1729417445_
                                              '0)))
                                        (begin
                                          (let ((_g25596_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g25595_)
                                                       (##vector-length
                                                        _g25595_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g25596_ 2)))
                                                (error "Context expects 2 values"
                                                       _g25596_)))
                                          (let ((_target1730917488_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25595_ 0)))
                                                (_tl1731117491_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25595_ 1))))
                                            (if (gx#stx-null? _tl1731117491_)
                                                (letrec ((_loop1731217494_
                                                          (lambda (_hd1731017498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body1731617501_)
                    (if (gx#stx-pair? _hd1731017498_)
                        (let ((_e1731317504_ (gx#syntax-e _hd1731017498_)))
                          (let ((_lp-hd1731417508_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1731317504_)))
                                (_lp-tl1731517511_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1731317504_))))
                            (_loop1731217494_
                             _lp-tl1731517511_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1731417508_ _body1731617501_)))))
                        (let ((_body1731717514_ (reverse _body1731617501_)))
                          ((lambda (_L17518_
                                    _L17520_
                                    _L17521_
                                    _L17522_
                                    _L17523_
                                    _L17524_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_g1755717560_ _g1755817563_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g1755717560_
                                                   _g1755817563_)))
                                         '()
                                         _L17524_))
                                 (let ((__tmp25623 (gx#datum->syntax '#f 'let))
                                       (__tmp25597
                                        (let ((__tmp25622
                                               (gx#datum->syntax '#f '$loop))
                                              (__tmp25598
                                               (let ((__tmp25619
                                                      (begin
                                                        (gx#syntax-check-splice-targets
                                                         _L17523_
                                                         _L17524_)
                                                        (foldr (lambda (_g1757417578_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1757517581_
                                _g1757617583_)
                         (let ((__tmp25620
                                (let ((__tmp25621
                                       (let ()
                                         (declare (not safe))
                                         (cons _g1757417578_ '()))))
                                  (declare (not safe))
                                  (cons _g1757517581_ __tmp25621))))
                           (declare (not safe))
                           (cons __tmp25620 _g1757617583_)))
                       '()
                       _L17523_
                       _L17524_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp25599
                                                      (let ((__tmp25600
                                                             (let ((__tmp25618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'if))
                           (__tmp25601
                            (let ((__tmp25602
                                   (let ((__tmp25614
                                          (let ((__tmp25617
                                                 (gx#datum->syntax '#f 'begin))
                                                (__tmp25615
                                                 (let ((__tmp25616
                                                        (foldr (lambda (_g1757217586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1757317589_)
                         (let ()
                           (declare (not safe))
                           (cons _g1757217586_ _g1757317589_)))
                       '()
                       _L17520_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '#!void __tmp25616))))
                                            (declare (not safe))
                                            (cons __tmp25617 __tmp25615)))
                                         (__tmp25603
                                          (let ((__tmp25604
                                                 (let ((__tmp25613
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin))
                                                       (__tmp25605
                                                        (foldr (lambda (_g1756517592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1756617595_)
                         (let ()
                           (declare (not safe))
                           (cons _g1756517592_ _g1756617595_)))
                       (let ((__tmp25606
                              (let ((__tmp25612 (gx#datum->syntax '#f '$loop))
                                    (__tmp25607
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _L17522_
                                        _L17524_)
                                       (foldr (lambda (_g1756717598_
                                                       _g1756817601_
                                                       _g1756917603_)
                                                (let ((__tmp25608
                                                       (let ((__tmp25611
                                                              (gx#datum->syntax
                                                               '#f
                                                               'begin))
                                                             (__tmp25609
                                                              (let ((__tmp25610
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr (lambda (_g1757017606_ _g1757117609_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g1757017606_ _g1757117609_)))
                                    '()
                                    _g1756717598_)))
                        (declare (not safe))
                        (cons _g1756817601_ __tmp25610))))
                 (declare (not safe))
                 (cons __tmp25611 __tmp25609))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25608
                                                        _g1756917603_)))
                                              '()
                                              _L17522_
                                              _L17524_))))
                                (declare (not safe))
                                (cons __tmp25612 __tmp25607))))
                         (declare (not safe))
                         (cons __tmp25606 '()))
                       _L17518_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25613
                                                         __tmp25605))))
                                            (declare (not safe))
                                            (cons __tmp25604 '()))))
                                     (declare (not safe))
                                     (cons __tmp25614 __tmp25603))))
                              (declare (not safe))
                              (cons _L17521_ __tmp25602))))
                       (declare (not safe))
                       (cons __tmp25618 __tmp25601))))
                (declare (not safe))
                (cons __tmp25600 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25619
                                                       __tmp25599))))
                                          (declare (not safe))
                                          (cons __tmp25622 __tmp25598))))
                                   (declare (not safe))
                                   (cons __tmp25623 __tmp25597))
                                 (_g1725217323_ _g1725317327_)))
                           _body1731717514_
                           _fini1730817484_
                           _hd1729817452_
                           _step1727617430_
                           _init1727717433_
                           _var1727817435_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1731217494_
                                                   _target1730917488_
                                                   '()))
                                                (_g1725217323_
                                                 _g1725317327_)))))
                                      (_g1725217323_ _g1725317327_)))))))
                  (_loop1730317464_ _target1730017458_ '()))
                (_g1725217323_ _g1725317327_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1725217323_ _g1725317327_))))
                                      (_g1725217323_ _g1725317327_))))
                              (_g1725217323_ _g1725317327_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1726917356_
                                                   _target1726617350_
                                                   '()
                                                   '()
                                                   '()))
                                                (_g1725217323_
                                                 _g1725317327_)))))
                                      (_g1725217323_ _g1725317327_))))
                              (_g1725217323_ _g1725317327_))))
                      (_g1725217323_ _g1725317327_)))))
          (_g1725117612_ _$stx17248_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#do-while|
      (lambda (_$stx17620_)
        (let* ((_g1762417647_
                (lambda (_g1762517643_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1762517643_)))
               (_g1762317718_
                (lambda (_g1762517651_)
                  (if (gx#stx-pair? _g1762517651_)
                      (let ((_e1763217654_ (gx#syntax-e _g1762517651_)))
                        (let ((_hd1763117658_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1763217654_)))
                              (_tl1763017661_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1763217654_))))
                          (if (gx#stx-pair? _tl1763017661_)
                              (let ((_e1763517664_
                                     (gx#syntax-e _tl1763017661_)))
                                (let ((_hd1763417668_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1763517664_)))
                                      (_tl1763317671_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1763517664_))))
                                  (if (gx#stx-pair? _tl1763317671_)
                                      (let ((_e1763817674_
                                             (gx#syntax-e _tl1763317671_)))
                                        (let ((_hd1763717678_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1763817674_)))
                                              (_tl1763617681_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1763817674_))))
                                          (if (gx#stx-pair? _hd1763717678_)
                                              (let ((_e1764117684_
                                                     (gx#syntax-e
                                                      _hd1763717678_)))
                                                (let ((_hd1764017688_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1764117684_)))
                                                      (_tl1763917691_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1764117684_))))
                                                  ((lambda (_L17694_
                                                            _L17696_
                                                            _L17697_
                                                            _L17698_)
                                                     (let ((__tmp25632
                                                            (gx#datum->syntax
                                                             '#f
                                                             'do))
                                                           (__tmp25626
                                                            (let ((__tmp25627
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp25628
                                  (let ((__tmp25629
                                         (let ((__tmp25631
                                                (gx#datum->syntax '#f 'not))
                                               (__tmp25630
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L17697_ '()))))
                                           (declare (not safe))
                                           (cons __tmp25631 __tmp25630))))
                                    (declare (not safe))
                                    (cons __tmp25629 _L17696_))))
                             (declare (not safe))
                             (cons __tmp25628 _L17694_))))
                      (declare (not safe))
                      (cons _L17698_ __tmp25627))))
               (declare (not safe))
               (cons __tmp25632 __tmp25626)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl1763617681_
                                                   _tl1763917691_
                                                   _hd1764017688_
                                                   _hd1763417668_)))
                                              (_g1762417647_ _g1762517651_))))
                                      (_g1762417647_ _g1762517651_))))
                              (_g1762417647_ _g1762517651_))))
                      (_g1762417647_ _g1762517651_)))))
          (_g1762317718_ _$stx17620_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#begin0|
      (lambda (_$stx17722_)
        (let* ((___stx2343123432_ _$stx17722_)
               (_g1772717758_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2343123432_))))
          (let ((___kont2343423435_ (lambda (_L17870_) _L17870_))
                (___kont2343623437_
                 (lambda (_L17815_ _L17817_)
                   (let ((__tmp25646 (gx#datum->syntax '#f 'let))
                         (__tmp25633
                          (let ((__tmp25643
                                 (let ((__tmp25645 (gx#datum->syntax '#f '$r))
                                       (__tmp25644
                                        (let ()
                                          (declare (not safe))
                                          (cons _L17817_ '()))))
                                   (declare (not safe))
                                   (cons __tmp25645 __tmp25644)))
                                (__tmp25634
                                 (let ((__tmp25637
                                        (let ((__tmp25642
                                               (gx#datum->syntax
                                                '#f
                                                '%#expression))
                                              (__tmp25638
                                               (let ((__tmp25639
                                                      (let ((__tmp25641
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp25640
                                                             (foldr (lambda (_g1783417837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1783517840_)
                              (let ()
                                (declare (not safe))
                                (cons _g1783417837_ _g1783517840_)))
                            '()
                            _L17815_)))
                (declare (not safe))
                (cons __tmp25641 __tmp25640))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25639 '()))))
                                          (declare (not safe))
                                          (cons __tmp25642 __tmp25638)))
                                       (__tmp25635
                                        (let ((__tmp25636
                                               (gx#datum->syntax '#f '$r)))
                                          (declare (not safe))
                                          (cons __tmp25636 '()))))
                                   (declare (not safe))
                                   (cons __tmp25637 __tmp25635))))
                            (declare (not safe))
                            (cons __tmp25643 __tmp25634))))
                     (declare (not safe))
                     (cons __tmp25646 __tmp25633)))))
            (let ((___match2347423475_
                   (lambda (_e1774017765_
                            _hd1773917769_
                            _tl1773817772_
                            _e1774317775_
                            _hd1774217779_
                            _tl1774117782_
                            ___splice2343823439_
                            _target1774417785_
                            _tl1774617788_)
                     (letrec ((_loop1774717791_
                               (lambda (_hd1774517795_ _rest1775117798_)
                                 (if (gx#stx-pair? _hd1774517795_)
                                     (let ((_e1774817801_
                                            (gx#syntax-e _hd1774517795_)))
                                       (let ((_lp-tl1775017808_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e1774817801_)))
                                             (_lp-hd1774917805_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e1774817801_))))
                                         (_loop1774717791_
                                          _lp-tl1775017808_
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd1774917805_
                                                  _rest1775117798_)))))
                                     (let ((_rest1775217811_
                                            (reverse _rest1775117798_)))
                                       (___kont2343623437_
                                        _rest1775217811_
                                        _hd1774217779_))))))
                       (_loop1774717791_ _target1774417785_ '())))))
              (if (gx#stx-pair? ___stx2343123432_)
                  (let ((_e1773217850_ (gx#syntax-e ___stx2343123432_)))
                    (let ((_tl1773017857_
                           (let () (declare (not safe)) (##cdr _e1773217850_)))
                          (_hd1773117854_
                           (let ()
                             (declare (not safe))
                             (##car _e1773217850_))))
                      (if (gx#stx-pair? _tl1773017857_)
                          (let ((_e1773517860_ (gx#syntax-e _tl1773017857_)))
                            (let ((_tl1773317867_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1773517860_)))
                                  (_hd1773417864_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1773517860_))))
                              (if (gx#stx-null? _tl1773317867_)
                                  (___kont2343423435_ _hd1773417864_)
                                  (if (gx#stx-pair/null? _tl1773317867_)
                                      (let ((___splice2343823439_
                                             (gx#syntax-split-splice
                                              _tl1773317867_
                                              '0)))
                                        (let ((_tl1774617788_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2343823439_
                                                  '1)))
                                              (_target1774417785_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2343823439_
                                                  '0))))
                                          (if (gx#stx-null? _tl1774617788_)
                                              (___match2347423475_
                                               _e1773217850_
                                               _hd1773117854_
                                               _tl1773017857_
                                               _e1773517860_
                                               _hd1773417864_
                                               _tl1773317867_
                                               ___splice2343823439_
                                               _target1774417785_
                                               _tl1774617788_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1772717758_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1772717758_))))))
                          (let () (declare (not safe)) (_g1772717758_)))))
                  (let () (declare (not safe)) (_g1772717758_))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#rec|
      (lambda (_$stx17888_)
        (let* ((___stx2347723478_ _$stx17888_)
               (_g1789417947_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2347723478_))))
          (let ((___kont2348023481_
                 (lambda (_L18149_ _L18151_)
                   (let ((__tmp25652 (gx#datum->syntax '#f 'letrec))
                         (__tmp25647
                          (let ((__tmp25649
                                 (let ((__tmp25650
                                        (let ((__tmp25651
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L18149_ '()))))
                                          (declare (not safe))
                                          (cons _L18151_ __tmp25651))))
                                   (declare (not safe))
                                   (cons __tmp25650 '())))
                                (__tmp25648
                                 (let ()
                                   (declare (not safe))
                                   (cons _L18151_ '()))))
                            (declare (not safe))
                            (cons __tmp25649 __tmp25648))))
                     (declare (not safe))
                     (cons __tmp25652 __tmp25647))))
                (___kont2348223483_
                 (lambda (_L18093_ _L18095_)
                   (let ((__tmp25660 (gx#datum->syntax '#f 'letrec-values))
                         (__tmp25653
                          (let ((__tmp25657
                                 (let ((__tmp25658
                                        (let ((__tmp25659
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L18093_ '()))))
                                          (declare (not safe))
                                          (cons _L18095_ __tmp25659))))
                                   (declare (not safe))
                                   (cons __tmp25658 '())))
                                (__tmp25654
                                 (let ((__tmp25655
                                        (let ((__tmp25656
                                               (gx#datum->syntax '#f 'values)))
                                          (declare (not safe))
                                          (cons __tmp25656 _L18095_))))
                                   (declare (not safe))
                                   (cons __tmp25655 '()))))
                            (declare (not safe))
                            (cons __tmp25657 __tmp25654))))
                     (declare (not safe))
                     (cons __tmp25660 __tmp25653))))
                (___kont2348423485_
                 (lambda (_L18014_ _L18016_ _L18017_)
                   (let ((__tmp25670 (gx#datum->syntax '#f 'letrec))
                         (__tmp25661
                          (let ((__tmp25663
                                 (let ((__tmp25664
                                        (let ((__tmp25665
                                               (let ((__tmp25666
                                                      (let ((__tmp25669
                                                             (gx#datum->syntax
                                                              '#f
                                                              'lambda))
                                                            (__tmp25667
                                                             (let ((__tmp25668
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr (lambda (_g1803718040_ _g1803818043_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g1803718040_ _g1803818043_)))
                                   '()
                                   _L18014_)))
                       (declare (not safe))
                       (cons _L18016_ __tmp25668))))
                (declare (not safe))
                (cons __tmp25669 __tmp25667))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25666 '()))))
                                          (declare (not safe))
                                          (cons _L18017_ __tmp25665))))
                                   (declare (not safe))
                                   (cons __tmp25664 '())))
                                (__tmp25662
                                 (let ()
                                   (declare (not safe))
                                   (cons _L18017_ '()))))
                            (declare (not safe))
                            (cons __tmp25663 __tmp25662))))
                     (declare (not safe))
                     (cons __tmp25670 __tmp25661)))))
            (let* ((___match2356423565_
                    (lambda (_e1792617954_
                             _hd1792517958_
                             _tl1792417961_
                             _e1792917964_
                             _hd1792817968_
                             _tl1792717971_
                             _e1793217974_
                             _hd1793117978_
                             _tl1793017981_
                             ___splice2348623487_
                             _target1793317984_
                             _tl1793517987_)
                      (letrec ((_loop1793617990_
                                (lambda (_hd1793417994_ _body1794017997_)
                                  (if (gx#stx-pair? _hd1793417994_)
                                      (let ((_e1793718000_
                                             (gx#syntax-e _hd1793417994_)))
                                        (let ((_lp-tl1793918007_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1793718000_)))
                                              (_lp-hd1793818004_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1793718000_))))
                                          (_loop1793617990_
                                           _lp-tl1793918007_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1793818004_
                                                   _body1794017997_)))))
                                      (let ((_body1794118010_
                                             (reverse _body1794017997_)))
                                        (let ((_L18014_ _body1794118010_)
                                              (_L18016_ _tl1793017981_)
                                              (_L18017_ _hd1793117978_))
                                          (if (gx#identifier? _L18017_)
                                              (___kont2348423485_
                                               _L18014_
                                               _L18016_
                                               _L18017_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1789417947_)))))))))
                        (_loop1793617990_ _target1793317984_ '()))))
                   (___match2353823539_
                    (lambda (_e1791118053_
                             _hd1791018057_
                             _tl1790918060_
                             _e1791418063_
                             _hd1791318067_
                             _tl1791218070_
                             _e1791718073_
                             _hd1791618077_
                             _tl1791518080_
                             _e1792018083_
                             _hd1791918087_
                             _tl1791818090_)
                      (let ((_L18093_ _hd1791918087_)
                            (_L18095_ _tl1791518080_))
                        (if (gx#identifier-list? _L18095_)
                            (___kont2348223483_ _L18093_ _L18095_)
                            (if (gx#stx-pair/null? _tl1791218070_)
                                (let ((___splice2348623487_
                                       (gx#syntax-split-splice
                                        _tl1791218070_
                                        '0)))
                                  (let ((_tl1793517987_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice2348623487_
                                            '1)))
                                        (_target1793317984_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice2348623487_
                                            '0))))
                                    (if (gx#stx-null? _tl1793517987_)
                                        (___match2356423565_
                                         _e1791118053_
                                         _hd1791018057_
                                         _tl1790918060_
                                         _e1791418063_
                                         _hd1791318067_
                                         _tl1791218070_
                                         _e1791718073_
                                         _hd1791618077_
                                         _tl1791518080_
                                         ___splice2348623487_
                                         _target1793317984_
                                         _tl1793517987_)
                                        (let ()
                                          (declare (not safe))
                                          (_g1789417947_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1789417947_)))))))
                   (___match2350823509_
                    (lambda (_e1790018119_
                             _hd1789918123_
                             _tl1789818126_
                             _e1790318129_
                             _hd1790218133_
                             _tl1790118136_
                             _e1790618139_
                             _hd1790518143_
                             _tl1790418146_)
                      (let ((_L18149_ _hd1790518143_)
                            (_L18151_ _hd1790218133_))
                        (if (gx#identifier? _L18151_)
                            (___kont2348023481_ _L18149_ _L18151_)
                            (if (gx#stx-pair? _hd1790218133_)
                                (let ((_e1791718073_
                                       (gx#syntax-e _hd1790218133_)))
                                  (let ((_tl1791518080_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1791718073_)))
                                        (_hd1791618077_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1791718073_))))
                                    (if (gx#identifier? _hd1791618077_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core/sugar$<sugar:2>[1]#_g25671_|
                                             _hd1791618077_)
                                            (___match2353823539_
                                             _e1790018119_
                                             _hd1789918123_
                                             _tl1789818126_
                                             _e1790318129_
                                             _hd1790218133_
                                             _tl1790118136_
                                             _e1791718073_
                                             _hd1791618077_
                                             _tl1791518080_
                                             _e1790618139_
                                             _hd1790518143_
                                             _tl1790418146_)
                                            (if (gx#stx-pair/null?
                                                 _tl1790118136_)
                                                (let ((___splice2348623487_
                                                       (gx#syntax-split-splice
                                                        _tl1790118136_
                                                        '0)))
                                                  (let ((_tl1793517987_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice2348623487_
                                                            '1)))
                                                        (_target1793317984_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice2348623487_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl1793517987_)
                                                        (___match2356423565_
                                                         _e1790018119_
                                                         _hd1789918123_
                                                         _tl1789818126_
                                                         _e1790318129_
                                                         _hd1790218133_
                                                         _tl1790118136_
                                                         _e1791718073_
                                                         _hd1791618077_
                                                         _tl1791518080_
                                                         ___splice2348623487_
                                                         _target1793317984_
                                                         _tl1793517987_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g1789417947_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1789417947_))))
                                        (if (gx#stx-pair/null? _tl1790118136_)
                                            (let ((___splice2348623487_
                                                   (gx#syntax-split-splice
                                                    _tl1790118136_
                                                    '0)))
                                              (let ((_tl1793517987_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2348623487_
                                                        '1)))
                                                    (_target1793317984_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2348623487_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl1793517987_)
                                                    (___match2356423565_
                                                     _e1790018119_
                                                     _hd1789918123_
                                                     _tl1789818126_
                                                     _e1790318129_
                                                     _hd1790218133_
                                                     _tl1790118136_
                                                     _e1791718073_
                                                     _hd1791618077_
                                                     _tl1791518080_
                                                     ___splice2348623487_
                                                     _target1793317984_
                                                     _tl1793517987_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g1789417947_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g1789417947_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g1789417947_))))))))
              (if (gx#stx-pair? ___stx2347723478_)
                  (let ((_e1790018119_ (gx#syntax-e ___stx2347723478_)))
                    (let ((_tl1789818126_
                           (let () (declare (not safe)) (##cdr _e1790018119_)))
                          (_hd1789918123_
                           (let ()
                             (declare (not safe))
                             (##car _e1790018119_))))
                      (if (gx#stx-pair? _tl1789818126_)
                          (let ((_e1790318129_ (gx#syntax-e _tl1789818126_)))
                            (let ((_tl1790118136_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1790318129_)))
                                  (_hd1790218133_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1790318129_))))
                              (if (gx#stx-pair? _tl1790118136_)
                                  (let ((_e1790618139_
                                         (gx#syntax-e _tl1790118136_)))
                                    (let ((_tl1790418146_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1790618139_)))
                                          (_hd1790518143_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1790618139_))))
                                      (if (gx#stx-null? _tl1790418146_)
                                          (___match2350823509_
                                           _e1790018119_
                                           _hd1789918123_
                                           _tl1789818126_
                                           _e1790318129_
                                           _hd1790218133_
                                           _tl1790118136_
                                           _e1790618139_
                                           _hd1790518143_
                                           _tl1790418146_)
                                          (if (gx#stx-pair? _hd1790218133_)
                                              (let ((_e1791718073_
                                                     (gx#syntax-e
                                                      _hd1790218133_)))
                                                (let ((_tl1791518080_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1791718073_)))
                                                      (_hd1791618077_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1791718073_))))
                                                  (if (gx#stx-pair/null?
                                                       _tl1790118136_)
                                                      (let ((___splice2348623487_
                                                             (gx#syntax-split-splice
                                                              _tl1790118136_
                                                              '0)))
                                                        (let ((_tl1793517987_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice2348623487_ '1)))
                      (_target1793317984_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice2348623487_ '0))))
                  (if (gx#stx-null? _tl1793517987_)
                      (___match2356423565_
                       _e1790018119_
                       _hd1789918123_
                       _tl1789818126_
                       _e1790318129_
                       _hd1790218133_
                       _tl1790118136_
                       _e1791718073_
                       _hd1791618077_
                       _tl1791518080_
                       ___splice2348623487_
                       _target1793317984_
                       _tl1793517987_)
                      (let () (declare (not safe)) (_g1789417947_)))))
              (let () (declare (not safe)) (_g1789417947_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1789417947_))))))
                                  (if (gx#stx-pair? _hd1790218133_)
                                      (let ((_e1791718073_
                                             (gx#syntax-e _hd1790218133_)))
                                        (let ((_tl1791518080_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1791718073_)))
                                              (_hd1791618077_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1791718073_))))
                                          (if (gx#stx-pair/null?
                                               _tl1790118136_)
                                              (let ((___splice2348623487_
                                                     (gx#syntax-split-splice
                                                      _tl1790118136_
                                                      '0)))
                                                (let ((_tl1793517987_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2348623487_
                                                          '1)))
                                                      (_target1793317984_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2348623487_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1793517987_)
                                                      (___match2356423565_
                                                       _e1790018119_
                                                       _hd1789918123_
                                                       _tl1789818126_
                                                       _e1790318129_
                                                       _hd1790218133_
                                                       _tl1790118136_
                                                       _e1791718073_
                                                       _hd1791618077_
                                                       _tl1791518080_
                                                       ___splice2348623487_
                                                       _target1793317984_
                                                       _tl1793517987_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g1789417947_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g1789417947_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1789417947_))))))
                          (let () (declare (not safe)) (_g1789417947_)))))
                  (let () (declare (not safe)) (_g1789417947_))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#alet|
      (lambda (_stx18171_)
        (letrec ((_let-bind?18174_
                  (lambda (_x19097_)
                    (let* ((___stx2356723568_ _x19097_)
                           (_g1910219121_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2356723568_))))
                      (let ((___kont2357023571_
                             (lambda (_L19189_ _L19191_)
                               (_let-head?18177_ _L19191_)))
                            (___kont2357223573_ (lambda (_L19149_) '#t))
                            (___kont2357423575_ (lambda () '#f)))
                        (if (gx#stx-pair? ___stx2356723568_)
                            (let ((_e1910819169_
                                   (gx#syntax-e ___stx2356723568_)))
                              (let ((_tl1910619176_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1910819169_)))
                                    (_hd1910719173_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1910819169_))))
                                (if (gx#stx-pair? _tl1910619176_)
                                    (let ((_e1911119179_
                                           (gx#syntax-e _tl1910619176_)))
                                      (let ((_tl1910919186_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1911119179_)))
                                            (_hd1911019183_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1911119179_))))
                                        (if (gx#stx-null? _tl1910919186_)
                                            (___kont2357023571_
                                             _hd1911019183_
                                             _hd1910719173_)
                                            (___kont2357423575_))))
                                    (if (gx#stx-null? _tl1910619176_)
                                        (___kont2357223573_ _hd1910719173_)
                                        (___kont2357423575_)))))
                            (___kont2357423575_))))))
                 (_let-bind18176_
                  (lambda (_x18999_)
                    (let* ((___stx2360123602_ _x18999_)
                           (_g1900319022_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2360123602_))))
                      (let ((___kont2360423605_
                             (lambda (_L19078_ _L19080_) _x18999_))
                            (___kont2360623607_
                             (lambda (_L19039_)
                               (let ((__tmp25673 (gx#datum->syntax '#f '_))
                                     (__tmp25672
                                      (let ()
                                        (declare (not safe))
                                        (cons _L19039_ '()))))
                                 (declare (not safe))
                                 (cons __tmp25673 __tmp25672)))))
                        (if (gx#stx-pair? ___stx2360123602_)
                            (let ((_e1900919058_
                                   (gx#syntax-e ___stx2360123602_)))
                              (let ((_tl1900719065_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1900919058_)))
                                    (_hd1900819062_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1900919058_))))
                                (if (gx#stx-pair? _tl1900719065_)
                                    (let ((_e1901219068_
                                           (gx#syntax-e _tl1900719065_)))
                                      (let ((_tl1901019075_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1901219068_)))
                                            (_hd1901119072_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1901219068_))))
                                        (if (gx#stx-null? _tl1901019075_)
                                            (___kont2360423605_
                                             _hd1901119072_
                                             _hd1900819062_)
                                            (let ()
                                              (declare (not safe))
                                              (_g1900319022_)))))
                                    (if (gx#stx-null? _tl1900719065_)
                                        (___kont2360623607_ _hd1900819062_)
                                        (let ()
                                          (declare (not safe))
                                          (_g1900319022_))))))
                            (let () (declare (not safe)) (_g1900319022_)))))))
                 (_let-head?18177_
                  (lambda (_x18939_)
                    (let* ((___stx2363323634_ _x18939_)
                           (_g1894318954_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2363323634_))))
                      (let ((___kont2363623637_
                             (lambda (_L18982_)
                               (gx#stx-andmap gx#identifier? _L18982_)))
                            (___kont2363823639_
                             (lambda () (gx#identifier? _x18939_))))
                        (if (gx#stx-pair? ___stx2363323634_)
                            (let ((_e1894818972_
                                   (gx#syntax-e ___stx2363323634_)))
                              (let ((_tl1894618979_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1894818972_)))
                                    (_hd1894718976_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1894818972_))))
                                (if (gx#identifier? _hd1894718976_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar$<sugar:2>[1]#_g25674_|
                                         _hd1894718976_)
                                        (___kont2363623637_ _tl1894618979_)
                                        (___kont2363823639_))
                                    (___kont2363823639_))))
                            (___kont2363823639_))))))
                 (_let-head18178_
                  (lambda (_x18879_)
                    (let* ((___stx2365323654_ _x18879_)
                           (_g1888318894_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2365323654_))))
                      (let ((___kont2365623657_ (lambda (_L18922_) _L18922_))
                            (___kont2365823659_ (lambda () (list _x18879_))))
                        (if (gx#stx-pair? ___stx2365323654_)
                            (let ((_e1888818912_
                                   (gx#syntax-e ___stx2365323654_)))
                              (let ((_tl1888618919_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1888818912_)))
                                    (_hd1888718916_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1888818912_))))
                                (if (gx#identifier? _hd1888718916_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar$<sugar:2>[1]#_g25675_|
                                         _hd1888718916_)
                                        (___kont2365623657_ _tl1888618919_)
                                        (___kont2365823659_))
                                    (___kont2365823659_))))
                            (___kont2365823659_)))))))
          (let* ((___stx2367323674_ _stx18171_)
                 (_g1818218254_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx2367323674_))))
            (let ((___kont2367623677_
                   (lambda (_L18852_ _L18854_ _L18855_ _L18856_)
                     (let ((__tmp25676
                            (let ((__tmp25677
                                   (let ((__tmp25678
                                          (let ((__tmp25679
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L18854_ '()))))
                                            (declare (not safe))
                                            (cons _L18855_ __tmp25679))))
                                     (declare (not safe))
                                     (cons __tmp25678 '()))))
                              (declare (not safe))
                              (cons __tmp25677 _L18852_))))
                       (declare (not safe))
                       (cons _L18856_ __tmp25676))))
                  (___kont2367823679_
                   (lambda (_L18774_ _L18776_)
                     (let ((__tmp25686 (gx#datum->syntax '#f 'and))
                           (__tmp25680
                            (let ((__tmp25681
                                   (let ((__tmp25682
                                          (let ((__tmp25685
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp25683
                                                 (let ((__tmp25684
                                                        (foldr (lambda (_g1879618799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1879718802_)
                         (let ()
                           (declare (not safe))
                           (cons _g1879618799_ _g1879718802_)))
                       '()
                       _L18774_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp25684))))
                                            (declare (not safe))
                                            (cons __tmp25685 __tmp25683))))
                                     (declare (not safe))
                                     (cons __tmp25682 '()))))
                              (declare (not safe))
                              (cons _L18776_ __tmp25681))))
                       (declare (not safe))
                       (cons __tmp25686 __tmp25680))))
                  (___kont2368223683_
                   (lambda (_L18341_ _L18343_)
                     (let* ((_g1837418400_
                             (lambda (_g1837518396_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g1837518396_)))
                            (_g1837318685_
                             (lambda (_g1837518404_)
                               (if (gx#stx-pair/null? _g1837518404_)
                                   (let ((_g25687_
                                          (gx#syntax-split-splice
                                           _g1837518404_
                                           '0)))
                                     (begin
                                       (let ((_g25688_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g25687_)
                                                    (##vector-length _g25687_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g25688_ 2)))
                                             (error "Context expects 2 values"
                                                    _g25688_)))
                                       (let ((_target1837818407_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g25687_ 0)))
                                             (_tl1838018410_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g25687_ 1))))
                                         (if (gx#stx-null? _tl1838018410_)
                                             (letrec ((_loop1838118413_
                                                       (lambda (_hd1837918417_
                                                                _e1838518420_
                                                                _hd1838618422_)
                                                         (if (gx#stx-pair?
                                                              _hd1837918417_)
                                                             (let ((_e1838218425_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd1837918417_)))
                       (let ((_lp-hd1838318429_
                              (let ()
                                (declare (not safe))
                                (##car _e1838218425_)))
                             (_lp-tl1838418432_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1838218425_))))
                         (if (gx#stx-pair? _lp-hd1838318429_)
                             (let ((_e1839118435_
                                    (gx#syntax-e _lp-hd1838318429_)))
                               (let ((_hd1839018439_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1839118435_)))
                                     (_tl1838918442_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1839118435_))))
                                 (if (gx#stx-pair? _tl1838918442_)
                                     (let ((_e1839418445_
                                            (gx#syntax-e _tl1838918442_)))
                                       (let ((_hd1839318449_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e1839418445_)))
                                             (_tl1839218452_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e1839418445_))))
                                         (if (gx#stx-null? _tl1839218452_)
                                             (_loop1838118413_
                                              _lp-tl1838418432_
                                              (let ()
                                                (declare (not safe))
                                                (cons _hd1839318449_
                                                      _e1838518420_))
                                              (let ()
                                                (declare (not safe))
                                                (cons _hd1839018439_
                                                      _hd1838618422_)))
                                             (_g1837418400_ _g1837518404_))))
                                     (_g1837418400_ _g1837518404_))))
                             (_g1837418400_ _g1837518404_))))
                     (let ((_e1838718455_ (reverse _e1838518420_))
                           (_hd1838818458_ (reverse _hd1838618422_)))
                       ((lambda (_L18461_ _L18463_)
                          (let ()
                            (let* ((_g1847918496_
                                    (lambda (_g1848018492_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g1848018492_)))
                                   (_g1847818673_
                                    (lambda (_g1848018500_)
                                      (if (gx#stx-pair/null? _g1848018500_)
                                          (let ((_g25689_
                                                 (gx#syntax-split-splice
                                                  _g1848018500_
                                                  '0)))
                                            (begin
                                              (let ((_g25690_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g25689_)
                                                           (##vector-length
                                                            _g25689_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g25690_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g25690_)))
                                              (let ((_target1848218503_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g25689_
                                                        0)))
                                                    (_tl1848418506_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g25689_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _tl1848418506_)
                                                    (letrec ((_loop1848518509_
                                                              (lambda (_hd1848318513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _$e1848918516_)
                        (if (gx#stx-pair? _hd1848318513_)
                            (let ((_e1848618519_ (gx#syntax-e _hd1848318513_)))
                              (let ((_lp-hd1848718523_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1848618519_)))
                                    (_lp-tl1848818526_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1848618519_))))
                                (_loop1848518509_
                                 _lp-tl1848818526_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd1848718523_ _$e1848918516_)))))
                            (let ((_$e1849018529_ (reverse _$e1848918516_)))
                              ((lambda (_L18533_)
                                 (let ()
                                   (let* ((_g1855018567_
                                           (lambda (_g1855118563_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g1855118563_)))
                                          (_g1854918661_
                                           (lambda (_g1855118571_)
                                             (if (gx#stx-pair/null?
                                                  _g1855118571_)
                                                 (let ((_g25691_
                                                        (gx#syntax-split-splice
                                                         _g1855118571_
                                                         '0)))
                                                   (begin
                                                     (let ((_g25692_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g25691_)
                          (##vector-length _g25691_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g25692_ 2)))
                   (error "Context expects 2 values" _g25692_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1855318574_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g25691_
                                                               0)))
                                                           (_tl1855518577_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g25691_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl1855518577_)
                                                           (letrec ((_loop1855618580_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1855418584_ _hd-bind1856018587_)
                               (if (gx#stx-pair? _hd1855418584_)
                                   (let ((_e1855718590_
                                          (gx#syntax-e _hd1855418584_)))
                                     (let ((_lp-hd1855818594_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e1855718590_)))
                                           (_lp-tl1855918597_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e1855718590_))))
                                       (_loop1855618580_
                                        _lp-tl1855918597_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd1855818594_
                                                _hd-bind1856018587_)))))
                                   (let ((_hd-bind1856118600_
                                          (reverse _hd-bind1856018587_)))
                                     ((lambda (_L18604_)
                                        (let ()
                                          (let ()
                                            (let ((__tmp25709
                                                   (gx#datum->syntax
                                                    '#f
                                                    'let-values))
                                                  (__tmp25693
                                                   (let ((__tmp25705
                                                          (begin
                                                            (gx#syntax-check-splice-targets
                                                             _L18461_
                                                             _L18533_)
                                                            (foldr (lambda (_g1862918633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1863018636_
                                    _g1863118638_)
                             (let ((__tmp25706
                                    (let ((__tmp25708
                                           (let ()
                                             (declare (not safe))
                                             (cons _g1863018636_ '())))
                                          (__tmp25707
                                           (let ()
                                             (declare (not safe))
                                             (cons _g1862918633_ '()))))
                                      (declare (not safe))
                                      (cons __tmp25708 __tmp25707))))
                               (declare (not safe))
                               (cons __tmp25706 _g1863118638_)))
                           '()
                           _L18461_
                           _L18533_)))
                 (__tmp25694
                  (let ((__tmp25695
                         (let ((__tmp25704 (gx#datum->syntax '#f 'and))
                               (__tmp25696
                                (foldr (lambda (_g1862218641_ _g1862318644_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g1862218641_ _g1862318644_)))
                                       (let ((__tmp25697
                                              (let ((__tmp25703
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let-values))
                                                    (__tmp25698
                                                     (let ((__tmp25700
                                                            (begin
                                                              (gx#syntax-check-splice-targets
                                                               _L18533_
                                                               _L18604_)
                                                              (foldr (lambda (_g1862618647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1862718650_
                                      _g1862818652_)
                               (let ((__tmp25701
                                      (let ((__tmp25702
                                             (let ()
                                               (declare (not safe))
                                               (cons _g1862618647_ '()))))
                                        (declare (not safe))
                                        (cons _g1862718650_ __tmp25702))))
                                 (declare (not safe))
                                 (cons __tmp25701 _g1862818652_)))
                             '()
                             _L18533_
                             _L18604_)))
                   (__tmp25699
                    (foldr (lambda (_g1862418655_ _g1862518658_)
                             (let ()
                               (declare (not safe))
                               (cons _g1862418655_ _g1862518658_)))
                           '()
                           _L18341_)))
               (declare (not safe))
               (cons __tmp25700 __tmp25699))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25703 __tmp25698))))
                                         (declare (not safe))
                                         (cons __tmp25697 '()))
                                       _L18533_)))
                           (declare (not safe))
                           (cons __tmp25704 __tmp25696))))
                    (declare (not safe))
                    (cons __tmp25695 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25705
                                                           __tmp25694))))
                                              (declare (not safe))
                                              (cons __tmp25709 __tmp25693)))))
                                      _hd-bind1856118600_))))))
                     (_loop1855618580_ _target1855318574_ '()))
                   (_g1855018567_ _g1855118571_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1855018567_
                                                  _g1855118571_)))))
                                     (_g1854918661_
                                      (gx#stx-map
                                       _let-head18178_
                                       (foldr (lambda (_g1866418667_
                                                       _g1866518670_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g1866418667_
                                                        _g1866518670_)))
                                              '()
                                              _L18463_))))))
                               _$e1849018529_))))))
              (_loop1848518509_ _target1848218503_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1847918496_
                                                     _g1848018500_)))))
                                          (_g1847918496_ _g1848018500_)))))
                              (_g1847818673_
                               (gx#gentemps
                                (foldr (lambda (_g1867618679_ _g1867718682_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g1867618679_ _g1867718682_)))
                                       '()
                                       _L18463_))))))
                        _e1838718455_
                        _hd1838818458_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop1838118413_
                                                _target1837818407_
                                                '()
                                                '()))
                                             (_g1837418400_ _g1837518404_)))))
                                   (_g1837418400_ _g1837518404_)))))
                       (_g1837318685_
                        (gx#stx-map
                         _let-bind18176_
                         (foldr (lambda (_g1868818691_ _g1868918694_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g1868818691_ _g1868918694_)))
                                '()
                                _L18343_)))))))
              (let* ((___match2377023771_
                      (lambda (_e1822718261_
                               _hd1822618265_
                               _tl1822518268_
                               _e1823018271_
                               _hd1822918275_
                               _tl1822818278_
                               ___splice2368423685_
                               _target1823118281_
                               _tl1823318284_)
                        (letrec ((_loop1823418287_
                                  (lambda (_hd1823218291_ _bind1823818294_)
                                    (if (gx#stx-pair? _hd1823218291_)
                                        (let ((_e1823518297_
                                               (gx#syntax-e _hd1823218291_)))
                                          (let ((_lp-tl1823718304_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1823518297_)))
                                                (_lp-hd1823618301_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1823518297_))))
                                            (_loop1823418287_
                                             _lp-tl1823718304_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd1823618301_
                                                     _bind1823818294_)))))
                                        (let ((_bind1823918307_
                                               (reverse _bind1823818294_)))
                                          (if (gx#stx-pair/null?
                                               _tl1822818278_)
                                              (let ((___splice2368623687_
                                                     (gx#syntax-split-splice
                                                      _tl1822818278_
                                                      '0)))
                                                (let ((_tl1824218314_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2368623687_
                                                          '1)))
                                                      (_target1824018311_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2368623687_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1824218314_)
                                                      (letrec ((_loop1824318317_
                                                                (lambda (_hd1824118321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body1824718324_)
                          (if (gx#stx-pair? _hd1824118321_)
                              (let ((_e1824418327_
                                     (gx#syntax-e _hd1824118321_)))
                                (let ((_lp-tl1824618334_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1824418327_)))
                                      (_lp-hd1824518331_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1824418327_))))
                                  (_loop1824318317_
                                   _lp-tl1824618334_
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd1824518331_
                                           _body1824718324_)))))
                              (let ((_body1824818337_
                                     (reverse _body1824718324_)))
                                (let ((_L18341_ _body1824818337_)
                                      (_L18343_ _bind1823918307_))
                                  (if (gx#stx-andmap
                                       _let-bind?18174_
                                       (foldr (lambda (_g1836518368_
                                                       _g1836618371_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g1836518368_
                                                        _g1836618371_)))
                                              '()
                                              _L18343_))
                                      (___kont2368223683_ _L18341_ _L18343_)
                                      (let ()
                                        (declare (not safe))
                                        (_g1818218254_)))))))))
                (_loop1824318317_ _target1824018311_ '()))
              (let () (declare (not safe)) (_g1818218254_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1818218254_))))))))
                          (_loop1823418287_ _target1823118281_ '()))))
                     (___match2375023751_
                      (lambda (_e1820418704_
                               _hd1820318708_
                               _tl1820218711_
                               _e1820718714_
                               _hd1820618718_
                               _tl1820518721_
                               _e1821018724_
                               _hd1820918728_
                               _tl1820818731_
                               _e1821318734_
                               _hd1821218738_
                               _tl1821118741_
                               ___splice2368023681_
                               _target1821418744_
                               _tl1821618747_)
                        (letrec ((_loop1821718750_
                                  (lambda (_hd1821518754_ _body1822118757_)
                                    (if (gx#stx-pair? _hd1821518754_)
                                        (let ((_e1821818760_
                                               (gx#syntax-e _hd1821518754_)))
                                          (let ((_lp-tl1822018767_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1821818760_)))
                                                (_lp-hd1821918764_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1821818760_))))
                                            (_loop1821718750_
                                             _lp-tl1822018767_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd1821918764_
                                                     _body1822118757_)))))
                                        (let ((_body1822218770_
                                               (reverse _body1822118757_)))
                                          (___kont2367823679_
                                           _body1822218770_
                                           _hd1821218738_))))))
                          (_loop1821718750_ _target1821418744_ '()))))
                     (___match2371423715_
                      (lambda (_e1819018812_
                               _hd1818918816_
                               _tl1818818819_
                               _e1819318822_
                               _hd1819218826_
                               _tl1819118829_
                               _e1819618832_
                               _hd1819518836_
                               _tl1819418839_
                               _e1819918842_
                               _hd1819818846_
                               _tl1819718849_)
                        (let ((_L18852_ _tl1819118829_)
                              (_L18854_ _hd1819818846_)
                              (_L18855_ _hd1819518836_)
                              (_L18856_ _hd1818918816_))
                          (if (_let-head?18177_ _L18855_)
                              (___kont2367623677_
                               _L18852_
                               _L18854_
                               _L18855_
                               _L18856_)
                              (if (gx#stx-pair? _hd1819518836_)
                                  (let ((_e1821318734_
                                         (gx#syntax-e _hd1819518836_)))
                                    (let ((_tl1821118741_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1821318734_)))
                                          (_hd1821218738_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1821318734_))))
                                      (if (gx#stx-pair/null? _hd1819218826_)
                                          (let ((___splice2368423685_
                                                 (gx#syntax-split-splice
                                                  _hd1819218826_
                                                  '0)))
                                            (let ((_tl1823318284_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2368423685_
                                                      '1)))
                                                  (_target1823118281_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2368423685_
                                                      '0))))
                                              (if (gx#stx-null? _tl1823318284_)
                                                  (___match2377023771_
                                                   _e1819018812_
                                                   _hd1818918816_
                                                   _tl1818818819_
                                                   _e1819318822_
                                                   _hd1819218826_
                                                   _tl1819118829_
                                                   ___splice2368423685_
                                                   _target1823118281_
                                                   _tl1823318284_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1818218254_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1818218254_)))))
                                  (if (gx#stx-pair/null? _hd1819218826_)
                                      (let ((___splice2368423685_
                                             (gx#syntax-split-splice
                                              _hd1819218826_
                                              '0)))
                                        (let ((_tl1823318284_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2368423685_
                                                  '1)))
                                              (_target1823118281_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2368423685_
                                                  '0))))
                                          (if (gx#stx-null? _tl1823318284_)
                                              (___match2377023771_
                                               _e1819018812_
                                               _hd1818918816_
                                               _tl1818818819_
                                               _e1819318822_
                                               _hd1819218826_
                                               _tl1819118829_
                                               ___splice2368423685_
                                               _target1823118281_
                                               _tl1823318284_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1818218254_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1818218254_)))))))))
                (if (gx#stx-pair? ___stx2367323674_)
                    (let ((_e1819018812_ (gx#syntax-e ___stx2367323674_)))
                      (let ((_tl1818818819_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1819018812_)))
                            (_hd1818918816_
                             (let ()
                               (declare (not safe))
                               (##car _e1819018812_))))
                        (if (gx#stx-pair? _tl1818818819_)
                            (let ((_e1819318822_ (gx#syntax-e _tl1818818819_)))
                              (let ((_tl1819118829_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1819318822_)))
                                    (_hd1819218826_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1819318822_))))
                                (if (gx#stx-pair? _hd1819218826_)
                                    (let ((_e1819618832_
                                           (gx#syntax-e _hd1819218826_)))
                                      (let ((_tl1819418839_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1819618832_)))
                                            (_hd1819518836_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1819618832_))))
                                        (if (gx#stx-pair? _tl1819418839_)
                                            (let ((_e1819918842_
                                                   (gx#syntax-e
                                                    _tl1819418839_)))
                                              (let ((_tl1819718849_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1819918842_)))
                                                    (_hd1819818846_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1819918842_))))
                                                (if (gx#stx-null?
                                                     _tl1819718849_)
                                                    (___match2371423715_
                                                     _e1819018812_
                                                     _hd1818918816_
                                                     _tl1818818819_
                                                     _e1819318822_
                                                     _hd1819218826_
                                                     _tl1819118829_
                                                     _e1819618832_
                                                     _hd1819518836_
                                                     _tl1819418839_
                                                     _e1819918842_
                                                     _hd1819818846_
                                                     _tl1819718849_)
                                                    (if (gx#stx-pair?
                                                         _hd1819518836_)
                                                        (let ((_e1821318734_
                                                               (gx#syntax-e
                                                                _hd1819518836_)))
                                                          (let ((_tl1821118741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e1821318734_)))
                        (_hd1821218738_
                         (let () (declare (not safe)) (##car _e1821318734_))))
                    (if (gx#stx-pair/null? _hd1819218826_)
                        (let ((___splice2368423685_
                               (gx#syntax-split-splice _hd1819218826_ '0)))
                          (let ((_tl1823318284_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2368423685_ '1)))
                                (_target1823118281_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2368423685_ '0))))
                            (if (gx#stx-null? _tl1823318284_)
                                (___match2377023771_
                                 _e1819018812_
                                 _hd1818918816_
                                 _tl1818818819_
                                 _e1819318822_
                                 _hd1819218826_
                                 _tl1819118829_
                                 ___splice2368423685_
                                 _target1823118281_
                                 _tl1823318284_)
                                (let ()
                                  (declare (not safe))
                                  (_g1818218254_)))))
                        (let () (declare (not safe)) (_g1818218254_)))))
                (if (gx#stx-pair/null? _hd1819218826_)
                    (let ((___splice2368423685_
                           (gx#syntax-split-splice _hd1819218826_ '0)))
                      (let ((_tl1823318284_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice2368423685_ '1)))
                            (_target1823118281_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice2368423685_ '0))))
                        (if (gx#stx-null? _tl1823318284_)
                            (___match2377023771_
                             _e1819018812_
                             _hd1818918816_
                             _tl1818818819_
                             _e1819318822_
                             _hd1819218826_
                             _tl1819118829_
                             ___splice2368423685_
                             _target1823118281_
                             _tl1823318284_)
                            (let () (declare (not safe)) (_g1818218254_)))))
                    (let () (declare (not safe)) (_g1818218254_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _hd1819518836_)
                                                (let ((_e1821318734_
                                                       (gx#syntax-e
                                                        _hd1819518836_)))
                                                  (let ((_tl1821118741_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1821318734_)))
                                                        (_hd1821218738_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1821318734_))))
                                                    (if (gx#stx-null?
                                                         _tl1821118741_)
                                                        (if (gx#stx-null?
                                                             _tl1819418839_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1819118829_)
                        (let ((___splice2368023681_
                               (gx#syntax-split-splice _tl1819118829_ '0)))
                          (let ((_tl1821618747_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2368023681_ '1)))
                                (_target1821418744_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2368023681_ '0))))
                            (if (gx#stx-null? _tl1821618747_)
                                (___match2375023751_
                                 _e1819018812_
                                 _hd1818918816_
                                 _tl1818818819_
                                 _e1819318822_
                                 _hd1819218826_
                                 _tl1819118829_
                                 _e1819618832_
                                 _hd1819518836_
                                 _tl1819418839_
                                 _e1821318734_
                                 _hd1821218738_
                                 _tl1821118741_
                                 ___splice2368023681_
                                 _target1821418744_
                                 _tl1821618747_)
                                (if (gx#stx-pair/null? _hd1819218826_)
                                    (let ((___splice2368423685_
                                           (gx#syntax-split-splice
                                            _hd1819218826_
                                            '0)))
                                      (let ((_tl1823318284_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice2368423685_
                                                '1)))
                                            (_target1823118281_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice2368423685_
                                                '0))))
                                        (if (gx#stx-null? _tl1823318284_)
                                            (___match2377023771_
                                             _e1819018812_
                                             _hd1818918816_
                                             _tl1818818819_
                                             _e1819318822_
                                             _hd1819218826_
                                             _tl1819118829_
                                             ___splice2368423685_
                                             _target1823118281_
                                             _tl1823318284_)
                                            (let ()
                                              (declare (not safe))
                                              (_g1818218254_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g1818218254_))))))
                        (if (gx#stx-pair/null? _hd1819218826_)
                            (let ((___splice2368423685_
                                   (gx#syntax-split-splice _hd1819218826_ '0)))
                              (let ((_tl1823318284_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice2368423685_ '1)))
                                    (_target1823118281_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice2368423685_
                                        '0))))
                                (if (gx#stx-null? _tl1823318284_)
                                    (___match2377023771_
                                     _e1819018812_
                                     _hd1818918816_
                                     _tl1818818819_
                                     _e1819318822_
                                     _hd1819218826_
                                     _tl1819118829_
                                     ___splice2368423685_
                                     _target1823118281_
                                     _tl1823318284_)
                                    (let ()
                                      (declare (not safe))
                                      (_g1818218254_)))))
                            (let () (declare (not safe)) (_g1818218254_))))
                    (if (gx#stx-pair/null? _hd1819218826_)
                        (let ((___splice2368423685_
                               (gx#syntax-split-splice _hd1819218826_ '0)))
                          (let ((_tl1823318284_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2368423685_ '1)))
                                (_target1823118281_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2368423685_ '0))))
                            (if (gx#stx-null? _tl1823318284_)
                                (___match2377023771_
                                 _e1819018812_
                                 _hd1818918816_
                                 _tl1818818819_
                                 _e1819318822_
                                 _hd1819218826_
                                 _tl1819118829_
                                 ___splice2368423685_
                                 _target1823118281_
                                 _tl1823318284_)
                                (let ()
                                  (declare (not safe))
                                  (_g1818218254_)))))
                        (let () (declare (not safe)) (_g1818218254_))))
                (if (gx#stx-pair/null? _hd1819218826_)
                    (let ((___splice2368423685_
                           (gx#syntax-split-splice _hd1819218826_ '0)))
                      (let ((_tl1823318284_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice2368423685_ '1)))
                            (_target1823118281_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice2368423685_ '0))))
                        (if (gx#stx-null? _tl1823318284_)
                            (___match2377023771_
                             _e1819018812_
                             _hd1818918816_
                             _tl1818818819_
                             _e1819318822_
                             _hd1819218826_
                             _tl1819118829_
                             ___splice2368423685_
                             _target1823118281_
                             _tl1823318284_)
                            (let () (declare (not safe)) (_g1818218254_)))))
                    (let () (declare (not safe)) (_g1818218254_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _hd1819218826_)
                                                    (let ((___splice2368423685_
                                                           (gx#syntax-split-splice
                                                            _hd1819218826_
                                                            '0)))
                                                      (let ((_tl1823318284_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice2368423685_ '1)))
                    (_target1823118281_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice2368423685_ '0))))
                (if (gx#stx-null? _tl1823318284_)
                    (___match2377023771_
                     _e1819018812_
                     _hd1818918816_
                     _tl1818818819_
                     _e1819318822_
                     _hd1819218826_
                     _tl1819118829_
                     ___splice2368423685_
                     _target1823118281_
                     _tl1823318284_)
                    (let () (declare (not safe)) (_g1818218254_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g1818218254_)))))))
                                    (if (gx#stx-pair/null? _hd1819218826_)
                                        (let ((___splice2368423685_
                                               (gx#syntax-split-splice
                                                _hd1819218826_
                                                '0)))
                                          (let ((_tl1823318284_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice2368423685_
                                                    '1)))
                                                (_target1823118281_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice2368423685_
                                                    '0))))
                                            (if (gx#stx-null? _tl1823318284_)
                                                (___match2377023771_
                                                 _e1819018812_
                                                 _hd1818918816_
                                                 _tl1818818819_
                                                 _e1819318822_
                                                 _hd1819218826_
                                                 _tl1819118829_
                                                 ___splice2368423685_
                                                 _target1823118281_
                                                 _tl1823318284_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1818218254_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1818218254_))))))
                            (let () (declare (not safe)) (_g1818218254_)))))
                    (let () (declare (not safe)) (_g1818218254_)))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#alet*|
      (lambda (_$stx19214_)
        (let* ((___stx2377323774_ _$stx19214_)
               (_g1922019271_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2377323774_))))
          (let ((___kont2377623777_ (lambda () '#t))
                (___kont2377823779_
                 (lambda (_L19429_)
                   (let ((__tmp25712 (gx#datum->syntax '#f 'let))
                         (__tmp25710
                          (let ((__tmp25711
                                 (foldr (lambda (_g1944519448_ _g1944619451_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g1944519448_
                                                  _g1944619451_)))
                                        '()
                                        _L19429_)))
                            (declare (not safe))
                            (cons '() __tmp25711))))
                     (declare (not safe))
                     (cons __tmp25712 __tmp25710))))
                (___kont2378223783_
                 (lambda (_L19338_ _L19340_ _L19341_ _L19342_)
                   (let ((__tmp25719 (gx#datum->syntax '#f 'alet))
                         (__tmp25713
                          (let ((__tmp25718
                                 (let ()
                                   (declare (not safe))
                                   (cons _L19341_ '())))
                                (__tmp25714
                                 (let ((__tmp25715
                                        (let ((__tmp25716
                                               (let ((__tmp25717
                                                      (foldr (lambda (_g1936319366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1936419369_)
                       (let ()
                         (declare (not safe))
                         (cons _g1936319366_ _g1936419369_)))
                     '()
                     _L19338_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L19340_ __tmp25717))))
                                          (declare (not safe))
                                          (cons _L19342_ __tmp25716))))
                                   (declare (not safe))
                                   (cons __tmp25715 '()))))
                            (declare (not safe))
                            (cons __tmp25718 __tmp25714))))
                     (declare (not safe))
                     (cons __tmp25719 __tmp25713)))))
            (let* ((___match2385023851_
                    (lambda (_e1925019278_
                             _hd1924919282_
                             _tl1924819285_
                             _e1925319288_
                             _hd1925219292_
                             _tl1925119295_
                             _e1925619298_
                             _hd1925519302_
                             _tl1925419305_
                             ___splice2378423785_
                             _target1925719308_
                             _tl1925919311_)
                      (letrec ((_loop1926019314_
                                (lambda (_hd1925819318_ _body1926419321_)
                                  (if (gx#stx-pair? _hd1925819318_)
                                      (let ((_e1926119324_
                                             (gx#syntax-e _hd1925819318_)))
                                        (let ((_lp-tl1926319331_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1926119324_)))
                                              (_lp-hd1926219328_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1926119324_))))
                                          (_loop1926019314_
                                           _lp-tl1926319331_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1926219328_
                                                   _body1926419321_)))))
                                      (let ((_body1926519334_
                                             (reverse _body1926419321_)))
                                        (___kont2378223783_
                                         _body1926519334_
                                         _tl1925419305_
                                         _hd1925519302_
                                         _hd1924919282_))))))
                        (_loop1926019314_ _target1925719308_ '()))))
                   (___match2382423825_
                    (lambda (_e1923119379_
                             _hd1923019383_
                             _tl1922919386_
                             _e1923419389_
                             _hd1923319393_
                             _tl1923219396_
                             ___splice2378023781_
                             _target1923519399_
                             _tl1923719402_)
                      (letrec ((_loop1923819405_
                                (lambda (_hd1923619409_ _body1924219412_)
                                  (if (gx#stx-pair? _hd1923619409_)
                                      (let ((_e1923919415_
                                             (gx#syntax-e _hd1923619409_)))
                                        (let ((_lp-tl1924119422_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1923919415_)))
                                              (_lp-hd1924019419_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1923919415_))))
                                          (_loop1923819405_
                                           _lp-tl1924119422_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1924019419_
                                                   _body1924219412_)))))
                                      (let ((_body1924319425_
                                             (reverse _body1924219412_)))
                                        (___kont2377823779_
                                         _body1924319425_))))))
                        (_loop1923819405_ _target1923519399_ '())))))
              (if (gx#stx-pair? ___stx2377323774_)
                  (let ((_e1922419461_ (gx#syntax-e ___stx2377323774_)))
                    (let ((_tl1922219468_
                           (let () (declare (not safe)) (##cdr _e1922419461_)))
                          (_hd1922319465_
                           (let ()
                             (declare (not safe))
                             (##car _e1922419461_))))
                      (if (gx#stx-pair? _tl1922219468_)
                          (let ((_e1922719471_ (gx#syntax-e _tl1922219468_)))
                            (let ((_tl1922519478_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1922719471_)))
                                  (_hd1922619475_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1922719471_))))
                              (if (gx#stx-null? _hd1922619475_)
                                  (if (gx#stx-null? _tl1922519478_)
                                      (___kont2377623777_)
                                      (if (gx#stx-pair/null? _tl1922519478_)
                                          (let ((___splice2378023781_
                                                 (gx#syntax-split-splice
                                                  _tl1922519478_
                                                  '0)))
                                            (let ((_tl1923719402_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2378023781_
                                                      '1)))
                                                  (_target1923519399_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2378023781_
                                                      '0))))
                                              (if (gx#stx-null? _tl1923719402_)
                                                  (___match2382423825_
                                                   _e1922419461_
                                                   _hd1922319465_
                                                   _tl1922219468_
                                                   _e1922719471_
                                                   _hd1922619475_
                                                   _tl1922519478_
                                                   ___splice2378023781_
                                                   _target1923519399_
                                                   _tl1923719402_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1922019271_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1922019271_))))
                                  (if (gx#stx-pair? _hd1922619475_)
                                      (let ((_e1925619298_
                                             (gx#syntax-e _hd1922619475_)))
                                        (let ((_tl1925419305_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1925619298_)))
                                              (_hd1925519302_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1925619298_))))
                                          (if (gx#stx-pair/null?
                                               _tl1922519478_)
                                              (let ((___splice2378423785_
                                                     (gx#syntax-split-splice
                                                      _tl1922519478_
                                                      '0)))
                                                (let ((_tl1925919311_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2378423785_
                                                          '1)))
                                                      (_target1925719308_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2378423785_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1925919311_)
                                                      (___match2385023851_
                                                       _e1922419461_
                                                       _hd1922319465_
                                                       _tl1922219468_
                                                       _e1922719471_
                                                       _hd1922619475_
                                                       _tl1922519478_
                                                       _e1925619298_
                                                       _hd1925519302_
                                                       _tl1925419305_
                                                       ___splice2378423785_
                                                       _target1925719308_
                                                       _tl1925919311_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g1922019271_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g1922019271_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1922019271_))))))
                          (let () (declare (not safe)) (_g1922019271_)))))
                  (let () (declare (not safe)) (_g1922019271_))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#@list|
      (lambda (_$stx19491_)
        (let* ((___stx2385323854_ _$stx19491_)
               (_g1950219580_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2385323854_))))
          (let ((___kont2385623857_
                 (lambda ()
                   (let ((__tmp25721 (gx#datum->syntax '#f 'quote))
                         (__tmp25720
                          (let () (declare (not safe)) (cons '() '()))))
                     (declare (not safe))
                     (cons __tmp25721 __tmp25720))))
                (___kont2385823859_
                 (lambda (_L19911_)
                   (let ((__tmp25723 (gx#datum->syntax '#f 'quote))
                         (__tmp25722
                          (let () (declare (not safe)) (cons _L19911_ '()))))
                     (declare (not safe))
                     (cons __tmp25723 __tmp25722))))
                (___kont2386023861_
                 (lambda (_L19859_)
                   (let ((__tmp25725 (gx#datum->syntax '#f 'quasiquote))
                         (__tmp25724
                          (let () (declare (not safe)) (cons _L19859_ '()))))
                     (declare (not safe))
                     (cons __tmp25725 __tmp25724))))
                (___kont2386223863_ (lambda (_L19806_) _L19806_))
                (___kont2386423865_ (lambda (_L19748_ _L19750_) _L19750_))
                (___kont2386623867_
                 (lambda (_L19690_ _L19692_ _L19693_ _L19694_)
                   (let ((__tmp25731 (gx#datum->syntax '#f 'foldr))
                         (__tmp25726
                          (let ((__tmp25730 (gx#datum->syntax '#f 'cons))
                                (__tmp25727
                                 (let ((__tmp25729
                                        (let ()
                                          (declare (not safe))
                                          (cons _L19694_ _L19690_)))
                                       (__tmp25728
                                        (let ()
                                          (declare (not safe))
                                          (cons _L19693_ '()))))
                                   (declare (not safe))
                                   (cons __tmp25729 __tmp25728))))
                            (declare (not safe))
                            (cons __tmp25730 __tmp25727))))
                     (declare (not safe))
                     (cons __tmp25731 __tmp25726))))
                (___kont2386823869_
                 (lambda (_L19636_ _L19638_ _L19639_)
                   (let ((__tmp25735 (gx#datum->syntax '#f 'cons))
                         (__tmp25732
                          (let ((__tmp25733
                                 (let ((__tmp25734
                                        (let ()
                                          (declare (not safe))
                                          (cons _L19639_ _L19636_))))
                                   (declare (not safe))
                                   (cons __tmp25734 '()))))
                            (declare (not safe))
                            (cons _L19638_ __tmp25733))))
                     (declare (not safe))
                     (cons __tmp25735 __tmp25732))))
                (___kont2387023871_ (lambda (_L19597_) _L19597_)))
            (let* ((___match2399223993_
                    (lambda (_e1955519660_
                             _hd1955419664_
                             _tl1955319667_
                             _e1955819670_
                             _hd1955719674_
                             _tl1955619677_
                             _e1956119680_
                             _hd1956019684_
                             _tl1955919687_)
                      (let ((_L19690_ _tl1955919687_)
                            (_L19692_ _hd1956019684_)
                            (_L19693_ _hd1955719674_)
                            (_L19694_ _hd1955419664_))
                        (if (gx#ellipsis? _L19692_)
                            (___kont2386623867_
                             _L19690_
                             _L19692_
                             _L19693_
                             _L19694_)
                            (___kont2386823869_
                             _tl1955619677_
                             _hd1955719674_
                             _hd1955419664_)))))
                   (___match2397423975_
                    (lambda (_e1954219718_
                             _hd1954119722_
                             _tl1954019725_
                             _e1954519728_
                             _hd1954419732_
                             _tl1954319735_
                             _e1954819738_
                             _hd1954719742_
                             _tl1954619745_)
                      (let ((_L19748_ _hd1954719742_)
                            (_L19750_ _hd1954419732_))
                        (if (gx#ellipsis? _L19748_)
                            (___kont2386423865_ _L19748_ _L19750_)
                            (___match2399223993_
                             _e1954219718_
                             _hd1954119722_
                             _tl1954019725_
                             _e1954519728_
                             _hd1954419732_
                             _tl1954319735_
                             _e1954819738_
                             _hd1954719742_
                             _tl1954619745_))))))
              (if (gx#stx-pair? ___stx2385323854_)
                  (let ((_e1950619933_ (gx#syntax-e ___stx2385323854_)))
                    (let ((_tl1950419940_
                           (let () (declare (not safe)) (##cdr _e1950619933_)))
                          (_hd1950519937_
                           (let ()
                             (declare (not safe))
                             (##car _e1950619933_))))
                      (if (gx#stx-null? _tl1950419940_)
                          (___kont2385623857_)
                          (if (gx#stx-pair? _tl1950419940_)
                              (let ((_e1951319891_
                                     (gx#syntax-e _tl1950419940_)))
                                (let ((_tl1951119898_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1951319891_)))
                                      (_hd1951219895_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1951319891_))))
                                  (if (gx#identifier? _hd1951219895_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar$<sugar:2>[1]#_g25737_|
                                           _hd1951219895_)
                                          (if (gx#stx-pair? _tl1951119898_)
                                              (let ((_e1951619901_
                                                     (gx#syntax-e
                                                      _tl1951119898_)))
                                                (let ((_tl1951419908_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1951619901_)))
                                                      (_hd1951519905_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1951619901_))))
                                                  (if (gx#stx-null?
                                                       _tl1951419908_)
                                                      (___kont2385823859_
                                                       _hd1951519905_)
                                                      (___match2399223993_
                                                       _e1950619933_
                                                       _hd1950519937_
                                                       _tl1950419940_
                                                       _e1951319891_
                                                       _hd1951219895_
                                                       _tl1951119898_
                                                       _e1951619901_
                                                       _hd1951519905_
                                                       _tl1951419908_))))
                                              (___kont2386823869_
                                               _tl1951119898_
                                               _hd1951219895_
                                               _hd1950519937_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar$<sugar:2>[1]#_g25736_|
                                               _hd1951219895_)
                                              (if (gx#stx-pair? _tl1951119898_)
                                                  (let ((_e1952619849_
                                                         (gx#syntax-e
                                                          _tl1951119898_)))
                                                    (let ((_tl1952419856_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1952619849_)))
                                                          (_hd1952519853_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1952619849_))))
                                                      (if (gx#stx-null?
                                                           _tl1952419856_)
                                                          (___kont2386023861_
                                                           _hd1952519853_)
                                                          (___match2399223993_
                                                           _e1950619933_
                                                           _hd1950519937_
                                                           _tl1950419940_
                                                           _e1951319891_
                                                           _hd1951219895_
                                                           _tl1951119898_
                                                           _e1952619849_
                                                           _hd1952519853_
                                                           _tl1952419856_))))
                                                  (___kont2386823869_
                                                   _tl1951119898_
                                                   _hd1951219895_
                                                   _hd1950519937_))
                                              (if (gx#stx-pair? _tl1951119898_)
                                                  (let ((_e1954819738_
                                                         (gx#syntax-e
                                                          _tl1951119898_)))
                                                    (let ((_tl1954619745_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1954819738_)))
                                                          (_hd1954719742_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1954819738_))))
                                                      (if (gx#stx-null?
                                                           _tl1954619745_)
                                                          (___match2397423975_
                                                           _e1950619933_
                                                           _hd1950519937_
                                                           _tl1950419940_
                                                           _e1951319891_
                                                           _hd1951219895_
                                                           _tl1951119898_
                                                           _e1954819738_
                                                           _hd1954719742_
                                                           _tl1954619745_)
                                                          (___match2399223993_
                                                           _e1950619933_
                                                           _hd1950519937_
                                                           _tl1950419940_
                                                           _e1951319891_
                                                           _hd1951219895_
                                                           _tl1951119898_
                                                           _e1954819738_
                                                           _hd1954719742_
                                                           _tl1954619745_))))
                                                  (___kont2386823869_
                                                   _tl1951119898_
                                                   _hd1951219895_
                                                   _hd1950519937_))))
                                      (if (gx#stx-datum? _hd1951219895_)
                                          (let ((_e1953419792_
                                                 (gx#stx-e _hd1951219895_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e1953419792_ '::))
                                                (if (gx#stx-pair?
                                                     _tl1951119898_)
                                                    (let ((_e1953719796_
                                                           (gx#syntax-e
                                                            _tl1951119898_)))
                                                      (let ((_tl1953519803_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e1953719796_)))
                    (_hd1953619800_
                     (let () (declare (not safe)) (##car _e1953719796_))))
                (if (gx#stx-null? _tl1953519803_)
                    (___kont2386223863_ _hd1953619800_)
                    (___match2399223993_
                     _e1950619933_
                     _hd1950519937_
                     _tl1950419940_
                     _e1951319891_
                     _hd1951219895_
                     _tl1951119898_
                     _e1953719796_
                     _hd1953619800_
                     _tl1953519803_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2386823869_
                                                     _tl1951119898_
                                                     _hd1951219895_
                                                     _hd1950519937_))
                                                (if (gx#stx-pair?
                                                     _tl1951119898_)
                                                    (let ((_e1954819738_
                                                           (gx#syntax-e
                                                            _tl1951119898_)))
                                                      (let ((_tl1954619745_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e1954819738_)))
                    (_hd1954719742_
                     (let () (declare (not safe)) (##car _e1954819738_))))
                (if (gx#stx-null? _tl1954619745_)
                    (___match2397423975_
                     _e1950619933_
                     _hd1950519937_
                     _tl1950419940_
                     _e1951319891_
                     _hd1951219895_
                     _tl1951119898_
                     _e1954819738_
                     _hd1954719742_
                     _tl1954619745_)
                    (___match2399223993_
                     _e1950619933_
                     _hd1950519937_
                     _tl1950419940_
                     _e1951319891_
                     _hd1951219895_
                     _tl1951119898_
                     _e1954819738_
                     _hd1954719742_
                     _tl1954619745_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2386823869_
                                                     _tl1951119898_
                                                     _hd1951219895_
                                                     _hd1950519937_))))
                                          (if (gx#stx-pair? _tl1951119898_)
                                              (let ((_e1954819738_
                                                     (gx#syntax-e
                                                      _tl1951119898_)))
                                                (let ((_tl1954619745_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1954819738_)))
                                                      (_hd1954719742_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1954819738_))))
                                                  (if (gx#stx-null?
                                                       _tl1954619745_)
                                                      (___match2397423975_
                                                       _e1950619933_
                                                       _hd1950519937_
                                                       _tl1950419940_
                                                       _e1951319891_
                                                       _hd1951219895_
                                                       _tl1951119898_
                                                       _e1954819738_
                                                       _hd1954719742_
                                                       _tl1954619745_)
                                                      (___match2399223993_
                                                       _e1950619933_
                                                       _hd1950519937_
                                                       _tl1950419940_
                                                       _e1951319891_
                                                       _hd1951219895_
                                                       _tl1951119898_
                                                       _e1954819738_
                                                       _hd1954719742_
                                                       _tl1954619745_))))
                                              (___kont2386823869_
                                               _tl1951119898_
                                               _hd1951219895_
                                               _hd1950519937_))))))
                              (___kont2387023871_ _tl1950419940_)))))
                  (let () (declare (not safe)) (_g1950219580_))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#quasiquote|
      (lambda (_stx19951_)
        (letrec ((_simple-quote?19954_
                  (lambda (_e20646_)
                    (let* ((___stx2401324014_ _e20646_)
                           (_g2065420691_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2401324014_))))
                      (let ((___kont2401624017_ (lambda () '#f))
                            (___kont2401824019_ (lambda () '#f))
                            (___kont2402024021_
                             (lambda (_L20805_ _L20807_)
                               (if (_simple-quote?19954_ _L20807_)
                                   (_simple-quote?19954_ _L20805_)
                                   '#f)))
                            (___kont2402224023_
                             (lambda (_L20766_)
                               (_simple-quote?19954_
                                (foldr (lambda (_g2077920782_ _g2078020785_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g2077920782_ _g2078020785_)))
                                       '()
                                       _L20766_))))
                            (___kont2402624027_
                             (lambda (_L20713_)
                               (_simple-quote?19954_ _L20713_)))
                            (___kont2402824029_ (lambda () '#t)))
                        (let* ((_g2065220725_
                                (lambda ()
                                  (if (gx#stx-box? ___stx2401324014_)
                                      (let ((_e2068520709_
                                             (unbox (gx#syntax-e
                                                     ___stx2401324014_))))
                                        (___kont2402624027_ _e2068520709_))
                                      (___kont2402824029_))))
                               (___match2408424085_
                                (lambda (_e2067420732_
                                         ___splice2402424025_
                                         _target2067520736_
                                         _tl2067720739_)
                                  (letrec ((_loop2067820742_
                                            (lambda (_hd2067620746_
                                                     _e2068220749_)
                                              (if (gx#stx-pair? _hd2067620746_)
                                                  (let ((_e2067920752_
                                                         (gx#syntax-e
                                                          _hd2067620746_)))
                                                    (let ((_lp-tl2068120759_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2067920752_)))
                                                          (_lp-hd2068020756_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2067920752_))))
                                                      (_loop2067820742_
                                                       _lp-tl2068120759_
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _lp-hd2068020756_
                                                               _e2068220749_)))))
                                                  (let ((_e2068320762_
                                                         (reverse _e2068220749_)))
                                                    (___kont2402224023_
                                                     _e2068320762_))))))
                                    (_loop2067820742_
                                     _target2067520736_
                                     '()))))
                               (_g2065120788_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx2401324014_)
                                      (let ((_e2067420732_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx2401324014_))))
                                        (if (gx#stx-pair/null? _e2067420732_)
                                            (let ((___splice2402424025_
                                                   (gx#syntax-split-splice
                                                    _e2067420732_
                                                    '0)))
                                              (let ((_tl2067720739_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2402424025_
                                                        '1)))
                                                    (_target2067520736_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2402424025_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl2067720739_)
                                                    (___match2408424085_
                                                     _e2067420732_
                                                     ___splice2402424025_
                                                     _target2067520736_
                                                     _tl2067720739_)
                                                    (___kont2402824029_))))
                                            (___kont2402824029_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g2065220725_))))))
                          (if (gx#stx-pair? ___stx2401324014_)
                              (let ((_e2065820856_
                                     (gx#syntax-e ___stx2401324014_)))
                                (let ((_tl2065620863_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2065820856_)))
                                      (_hd2065720860_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2065820856_))))
                                  (if (gx#identifier? _hd2065720860_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar$<sugar:2>[1]#_g25739_|
                                           _hd2065720860_)
                                          (if (gx#stx-pair? _tl2065620863_)
                                              (let ((_e2066120866_
                                                     (gx#syntax-e
                                                      _tl2065620863_)))
                                                (let ((_tl2065920873_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2066120866_)))
                                                      (_hd2066020870_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2066120866_))))
                                                  (if (gx#stx-null?
                                                       _tl2065920873_)
                                                      (___kont2401624017_)
                                                      (___kont2402024021_
                                                       _tl2065620863_
                                                       _hd2065720860_))))
                                              (___kont2402024021_
                                               _tl2065620863_
                                               _hd2065720860_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar$<sugar:2>[1]#_g25738_|
                                               _hd2065720860_)
                                              (if (gx#stx-pair? _tl2065620863_)
                                                  (let ((_e2066720835_
                                                         (gx#syntax-e
                                                          _tl2065620863_)))
                                                    (let ((_tl2066520842_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2066720835_)))
                                                          (_hd2066620839_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2066720835_))))
                                                      (if (gx#stx-null?
                                                           _tl2066520842_)
                                                          (___kont2401824019_)
                                                          (___kont2402024021_
                                                           _tl2065620863_
                                                           _hd2065720860_))))
                                                  (___kont2402024021_
                                                   _tl2065620863_
                                                   _hd2065720860_))
                                              (___kont2402024021_
                                               _tl2065620863_
                                               _hd2065720860_)))
                                      (___kont2402024021_
                                       _tl2065620863_
                                       _hd2065720860_))))
                              (let ()
                                (declare (not safe))
                                (_g2065120788_))))))))
                 (_generate19956_
                  (lambda (_e20018_ _d20020_)
                    (let* ((___stx2409124092_ _e20018_)
                           (_g2002920087_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2409124092_))))
                      (let ((___kont2409424095_
                             (lambda (_L20598_)
                               (let* ((_g2061120619_
                                       (lambda (_g2061220615_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2061220615_)))
                                      (_g2061020638_
                                       (lambda (_g2061220623_)
                                         ((lambda (_L20626_)
                                            (let ()
                                              (let ((__tmp25746
                                                     (gx#datum->syntax
                                                      '#f
                                                      'list))
                                                    (__tmp25740
                                                     (let ((__tmp25742
                                                            (let ((__tmp25745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'quote))
                          (__tmp25743
                           (let ((__tmp25744
                                  (gx#datum->syntax '#f 'quasiquote)))
                             (declare (not safe))
                             (cons __tmp25744 '()))))
                      (declare (not safe))
                      (cons __tmp25745 __tmp25743)))
                   (__tmp25741
                    (let () (declare (not safe)) (cons _L20626_ '()))))
               (declare (not safe))
               (cons __tmp25742 __tmp25741))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25746 __tmp25740))))
                                          _g2061220623_))))
                                 (_g2061020638_
                                  (_generate19956_
                                   _L20598_
                                   (let ()
                                     (declare (not safe))
                                     (fx+ _d20020_ '1)))))))
                            (___kont2409624097_
                             (lambda (_L20527_)
                               (if (let ()
                                     (declare (not safe))
                                     (fxzero? _d20020_))
                                   _L20527_
                                   (let* ((_g2054020548_
                                           (lambda (_g2054120544_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2054120544_)))
                                          (_g2053920567_
                                           (lambda (_g2054120552_)
                                             ((lambda (_L20555_)
                                                (let ()
                                                  (let ((__tmp25753
                                                         (gx#datum->syntax
                                                          '#f
                                                          'list))
                                                        (__tmp25747
                                                         (let ((__tmp25749
                                                                (let ((__tmp25752
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'quote))
                              (__tmp25750
                               (let ((__tmp25751
                                      (gx#datum->syntax '#f 'unquote)))
                                 (declare (not safe))
                                 (cons __tmp25751 '()))))
                          (declare (not safe))
                          (cons __tmp25752 __tmp25750)))
                       (__tmp25748
                        (let () (declare (not safe)) (cons _L20555_ '()))))
                   (declare (not safe))
                   (cons __tmp25749 __tmp25748))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp25753
                                                          __tmp25747))))
                                              _g2054120552_))))
                                     (_g2053920567_
                                      (_generate19956_
                                       _L20527_
                                       (let ()
                                         (declare (not safe))
                                         (fx- _d20020_ '1))))))))
                            (___kont2409824099_
                             (lambda (_L20456_)
                               (if (let ()
                                     (declare (not safe))
                                     (fxzero? _d20020_))
                                   (let ((__tmp25768
                                          (gx#datum->syntax '#f 'foldr))
                                         (__tmp25761
                                          (let ((__tmp25767
                                                 (gx#datum->syntax '#f 'cons))
                                                (__tmp25762
                                                 (let ((__tmp25764
                                                        (let ((__tmp25766
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp25765
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '() '()))))
                  (declare (not safe))
                  (cons __tmp25766 __tmp25765)))
               (__tmp25763 (let () (declare (not safe)) (cons _L20456_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25764
                                                         __tmp25763))))
                                            (declare (not safe))
                                            (cons __tmp25767 __tmp25762))))
                                     (declare (not safe))
                                     (cons __tmp25768 __tmp25761))
                                   (let* ((_g2046920477_
                                           (lambda (_g2047020473_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2047020473_)))
                                          (_g2046820496_
                                           (lambda (_g2047020481_)
                                             ((lambda (_L20484_)
                                                (let ()
                                                  (let ((__tmp25760
                                                         (gx#datum->syntax
                                                          '#f
                                                          'list))
                                                        (__tmp25754
                                                         (let ((__tmp25756
                                                                (let ((__tmp25759
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'quote))
                              (__tmp25757
                               (let ((__tmp25758
                                      (gx#datum->syntax
                                       '#f
                                       'unquote-splicing)))
                                 (declare (not safe))
                                 (cons __tmp25758 '()))))
                          (declare (not safe))
                          (cons __tmp25759 __tmp25757)))
                       (__tmp25755
                        (let () (declare (not safe)) (cons _L20484_ '()))))
                   (declare (not safe))
                   (cons __tmp25756 __tmp25755))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp25760
                                                          __tmp25754))))
                                              _g2047020481_))))
                                     (_g2046820496_
                                      (_generate19956_
                                       _L20456_
                                       (let ()
                                         (declare (not safe))
                                         (fx- _d20020_ '1))))))))
                            (___kont2410024101_
                             (lambda (_L20381_ _L20383_)
                               (let* ((_g2039820406_
                                       (lambda (_g2039920402_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2039920402_)))
                                      (_g2039720425_
                                       (lambda (_g2039920410_)
                                         ((lambda (_L20413_)
                                            (let ()
                                              (let ((__tmp25773
                                                     (gx#datum->syntax
                                                      '#f
                                                      'foldr))
                                                    (__tmp25769
                                                     (let ((__tmp25772
                                                            (gx#datum->syntax
                                                             '#f
                                                             'cons))
                                                           (__tmp25770
                                                            (let ((__tmp25771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L20383_ '()))))
                      (declare (not safe))
                      (cons _L20413_ __tmp25771))))
               (declare (not safe))
               (cons __tmp25772 __tmp25770))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25773 __tmp25769))))
                                          _g2039920410_))))
                                 (_g2039720425_
                                  (_generate19956_ _L20381_ _d20020_)))))
                            (___kont2410224103_
                             (lambda (_L20267_ _L20269_)
                               (let* ((_g2028020295_
                                       (lambda (_g2028120291_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2028120291_)))
                                      (_g2027920340_
                                       (lambda (_g2028120299_)
                                         (if (gx#stx-pair? _g2028120299_)
                                             (let ((_e2028620302_
                                                    (gx#syntax-e
                                                     _g2028120299_)))
                                               (let ((_hd2028520306_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2028620302_)))
                                                     (_tl2028420309_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2028620302_))))
                                                 (if (gx#stx-pair?
                                                      _tl2028420309_)
                                                     (let ((_e2028920312_
                                                            (gx#syntax-e
                                                             _tl2028420309_)))
                                                       (let ((_hd2028820316_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2028920312_)))
                     (_tl2028720319_
                      (let () (declare (not safe)) (##cdr _e2028920312_))))
                 (if (gx#stx-null? _tl2028720319_)
                     ((lambda (_L20322_ _L20324_)
                        (let ()
                          (let ((__tmp25776 (gx#datum->syntax '#f 'cons))
                                (__tmp25774
                                 (let ((__tmp25775
                                        (let ()
                                          (declare (not safe))
                                          (cons _L20322_ '()))))
                                   (declare (not safe))
                                   (cons _L20324_ __tmp25775))))
                            (declare (not safe))
                            (cons __tmp25776 __tmp25774))))
                      _hd2028820316_
                      _hd2028520306_)
                     (_g2028020295_ _g2028120299_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2028020295_
                                                      _g2028120299_))))
                                             (_g2028020295_ _g2028120299_)))))
                                 (_g2027920340_
                                  (list (_generate19956_ _L20269_ _d20020_)
                                        (_generate19956_
                                         _L20267_
                                         _d20020_))))))
                            (___kont2410424105_
                             (lambda (_L20197_)
                               (let* ((_g2021120219_
                                       (lambda (_g2021220215_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2021220215_)))
                                      (_g2021020238_
                                       (lambda (_g2021220223_)
                                         ((lambda (_L20226_)
                                            (let ()
                                              (let ((__tmp25778
                                                     (gx#datum->syntax
                                                      '#f
                                                      'list->vector))
                                                    (__tmp25777
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L20226_ '()))))
                                                (declare (not safe))
                                                (cons __tmp25778 __tmp25777))))
                                          _g2021220223_))))
                                 (_g2021020238_
                                  (_generate19956_
                                   (foldr (lambda (_g2024120244_ _g2024220247_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g2024120244_
                                                    _g2024220247_)))
                                          '()
                                          _L20197_)
                                   _d20020_)))))
                            (___kont2410824109_
                             (lambda (_L20115_)
                               (let* ((_g2012520133_
                                       (lambda (_g2012620129_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2012620129_)))
                                      (_g2012420152_
                                       (lambda (_g2012620137_)
                                         ((lambda (_L20140_)
                                            (let ()
                                              (let ((__tmp25780
                                                     (gx#datum->syntax
                                                      '#f
                                                      'box))
                                                    (__tmp25779
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L20140_ '()))))
                                                (declare (not safe))
                                                (cons __tmp25780 __tmp25779))))
                                          _g2012620137_))))
                                 (_g2012420152_
                                  (_generate19956_ _L20115_ _d20020_)))))
                            (___kont2411024111_
                             (lambda (_L20094_)
                               (let ((__tmp25782 (gx#datum->syntax '#f 'quote))
                                     (__tmp25781
                                      (let ()
                                        (declare (not safe))
                                        (cons _L20094_ '()))))
                                 (declare (not safe))
                                 (cons __tmp25782 __tmp25781)))))
                        (let* ((_g2002720156_
                                (lambda ()
                                  (if (gx#stx-box? ___stx2409124092_)
                                      (let ((_e2008020111_
                                             (unbox (gx#syntax-e
                                                     ___stx2409124092_))))
                                        (___kont2410824109_ _e2008020111_))
                                      (___kont2411024111_ ___stx2409124092_))))
                               (___match2421024211_
                                (lambda (_e2006920163_
                                         ___splice2410624107_
                                         _target2007020167_
                                         _tl2007220170_)
                                  (letrec ((_loop2007320173_
                                            (lambda (_hd2007120177_
                                                     _e2007720180_)
                                              (if (gx#stx-pair? _hd2007120177_)
                                                  (let ((_e2007420183_
                                                         (gx#syntax-e
                                                          _hd2007120177_)))
                                                    (let ((_lp-tl2007620190_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2007420183_)))
                                                          (_lp-hd2007520187_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2007420183_))))
                                                      (_loop2007320173_
                                                       _lp-tl2007620190_
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _lp-hd2007520187_
                                                               _e2007720180_)))))
                                                  (let ((_e2007820193_
                                                         (reverse _e2007720180_)))
                                                    (___kont2410424105_
                                                     _e2007820193_))))))
                                    (_loop2007320173_
                                     _target2007020167_
                                     '()))))
                               (_g2002620250_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx2409124092_)
                                      (let ((_e2006920163_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx2409124092_))))
                                        (if (gx#stx-pair/null? _e2006920163_)
                                            (let ((___splice2410624107_
                                                   (gx#syntax-split-splice
                                                    _e2006920163_
                                                    '0)))
                                              (let ((_tl2007220170_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2410624107_
                                                        '1)))
                                                    (_target2007020167_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2410624107_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl2007220170_)
                                                    (___match2421024211_
                                                     _e2006920163_
                                                     ___splice2410624107_
                                                     _target2007020167_
                                                     _tl2007220170_)
                                                    (___kont2411024111_
                                                     ___stx2409124092_))))
                                            (___kont2411024111_
                                             ___stx2409124092_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g2002720156_))))))
                          (if (gx#stx-pair? ___stx2409124092_)
                              (let ((_e2003420578_
                                     (gx#syntax-e ___stx2409124092_)))
                                (let ((_tl2003220585_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2003420578_)))
                                      (_hd2003320582_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2003420578_))))
                                  (if (gx#identifier? _hd2003320582_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar$<sugar:2>[1]#_g25786_|
                                           _hd2003320582_)
                                          (if (gx#stx-pair? _tl2003220585_)
                                              (let ((_e2003720588_
                                                     (gx#syntax-e
                                                      _tl2003220585_)))
                                                (let ((_tl2003520595_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2003720588_)))
                                                      (_hd2003620592_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2003720588_))))
                                                  (if (gx#stx-null?
                                                       _tl2003520595_)
                                                      (___kont2409424095_
                                                       _hd2003620592_)
                                                      (___kont2410224103_
                                                       _tl2003220585_
                                                       _hd2003320582_))))
                                              (___kont2410224103_
                                               _tl2003220585_
                                               _hd2003320582_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar$<sugar:2>[1]#_g25785_|
                                               _hd2003320582_)
                                              (if (gx#stx-pair? _tl2003220585_)
                                                  (let ((_e2004420517_
                                                         (gx#syntax-e
                                                          _tl2003220585_)))
                                                    (let ((_tl2004220524_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2004420517_)))
                                                          (_hd2004320521_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2004420517_))))
                                                      (if (gx#stx-null?
                                                           _tl2004220524_)
                                                          (___kont2409624097_
                                                           _hd2004320521_)
                                                          (___kont2410224103_
                                                           _tl2003220585_
                                                           _hd2003320582_))))
                                                  (___kont2410224103_
                                                   _tl2003220585_
                                                   _hd2003320582_))
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar$<sugar:2>[1]#_g25784_|
                                                   _hd2003320582_)
                                                  (if (gx#stx-pair?
                                                       _tl2003220585_)
                                                      (let ((_e2005120446_
                                                             (gx#syntax-e
                                                              _tl2003220585_)))
                                                        (let ((_tl2004920453_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2005120446_)))
                      (_hd2005020450_
                       (let () (declare (not safe)) (##car _e2005120446_))))
                  (if (gx#stx-null? _tl2004920453_)
                      (___kont2409824099_ _hd2005020450_)
                      (___kont2410224103_ _tl2003220585_ _hd2003320582_))))
              (___kont2410224103_ _tl2003220585_ _hd2003320582_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2410224103_
                                                   _tl2003220585_
                                                   _hd2003320582_))))
                                      (if (gx#stx-pair? _hd2003320582_)
                                          (let ((_e2005920361_
                                                 (gx#syntax-e _hd2003320582_)))
                                            (let ((_tl2005720368_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2005920361_)))
                                                  (_hd2005820365_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2005920361_))))
                                              (if (gx#identifier?
                                                   _hd2005820365_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar$<sugar:2>[1]#_g25783_|
                                                       _hd2005820365_)
                                                      (if (gx#stx-pair?
                                                           _tl2005720368_)
                                                          (let ((_e2006220371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2005720368_)))
                    (let ((_tl2006020378_
                           (let () (declare (not safe)) (##cdr _e2006220371_)))
                          (_hd2006120375_
                           (let ()
                             (declare (not safe))
                             (##car _e2006220371_))))
                      (if (gx#stx-null? _tl2006020378_)
                          (if (let () (declare (not safe)) (fxzero? _d20020_))
                              (let ((_L20381_ _tl2003220585_)
                                    (_L20383_ _hd2006120375_))
                                (___kont2410024101_ _L20381_ _L20383_))
                              (___kont2410224103_
                               _tl2003220585_
                               _hd2003320582_))
                          (___kont2410224103_ _tl2003220585_ _hd2003320582_))))
                  (___kont2410224103_ _tl2003220585_ _hd2003320582_))
              (___kont2410224103_ _tl2003220585_ _hd2003320582_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2410224103_
                                                   _tl2003220585_
                                                   _hd2003320582_))))
                                          (___kont2410224103_
                                           _tl2003220585_
                                           _hd2003320582_)))))
                              (let ()
                                (declare (not safe))
                                (_g2002620250_)))))))))
          (let* ((_g1995819972_
                  (lambda (_g1995919968_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1995919968_)))
                 (_g1995720014_
                  (lambda (_g1995919976_)
                    (if (gx#stx-pair? _g1995919976_)
                        (let ((_e1996319979_ (gx#syntax-e _g1995919976_)))
                          (let ((_hd1996219983_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1996319979_)))
                                (_tl1996119986_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1996319979_))))
                            (if (gx#stx-pair? _tl1996119986_)
                                (let ((_e1996619989_
                                       (gx#syntax-e _tl1996119986_)))
                                  (let ((_hd1996519993_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1996619989_)))
                                        (_tl1996419996_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1996619989_))))
                                    (if (gx#stx-null? _tl1996419996_)
                                        ((lambda (_L19999_)
                                           (if (_simple-quote?19954_ _L19999_)
                                               (let ((__tmp25788
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp25787
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L19999_ '()))))
                                                 (declare (not safe))
                                                 (cons __tmp25788 __tmp25787))
                                               (_generate19956_ _L19999_ '0)))
                                         _hd1996519993_)
                                        (_g1995819972_ _g1995919976_))))
                                (_g1995819972_ _g1995919976_))))
                        (_g1995819972_ _g1995919976_)))))
            (_g1995720014_ _stx19951_)))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#delay|
      (lambda (_$stx20886_)
        (let* ((___stx2421724218_ _$stx20886_)
               (_g2089120912_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2421724218_))))
          (let ((___kont2422024221_
                 (lambda (_L20980_)
                   (let ((__tmp25790 (gx#datum->syntax '#f 'quote))
                         (__tmp25789
                          (let () (declare (not safe)) (cons _L20980_ '()))))
                     (declare (not safe))
                     (cons __tmp25790 __tmp25789))))
                (___kont2422224223_
                 (lambda (_L20939_)
                   (let ((__tmp25796 (gx#datum->syntax '#f 'make-promise))
                         (__tmp25791
                          (let ((__tmp25792
                                 (let ((__tmp25795
                                        (gx#datum->syntax '#f 'lambda%))
                                       (__tmp25793
                                        (let ((__tmp25794
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L20939_ '()))))
                                          (declare (not safe))
                                          (cons '() __tmp25794))))
                                   (declare (not safe))
                                   (cons __tmp25795 __tmp25793))))
                            (declare (not safe))
                            (cons __tmp25792 '()))))
                     (declare (not safe))
                     (cons __tmp25796 __tmp25791)))))
            (let ((___match2423824239_
                   (lambda (_e2089620960_
                            _hd2089520964_
                            _tl2089420967_
                            _e2089920970_
                            _hd2089820974_
                            _tl2089720977_)
                     (let ((_L20980_ _hd2089820974_))
                       (if (gx#stx-datum? _L20980_)
                           (___kont2422024221_ _L20980_)
                           (___kont2422224223_ _hd2089820974_))))))
              (if (gx#stx-pair? ___stx2421724218_)
                  (let ((_e2089620960_ (gx#syntax-e ___stx2421724218_)))
                    (let ((_tl2089420967_
                           (let () (declare (not safe)) (##cdr _e2089620960_)))
                          (_hd2089520964_
                           (let ()
                             (declare (not safe))
                             (##car _e2089620960_))))
                      (if (gx#stx-pair? _tl2089420967_)
                          (let ((_e2089920970_ (gx#syntax-e _tl2089420967_)))
                            (let ((_tl2089720977_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2089920970_)))
                                  (_hd2089820974_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2089920970_))))
                              (if (gx#stx-null? _tl2089720977_)
                                  (___match2423824239_
                                   _e2089620960_
                                   _hd2089520964_
                                   _tl2089420967_
                                   _e2089920970_
                                   _hd2089820974_
                                   _tl2089720977_)
                                  (let ()
                                    (declare (not safe))
                                    (_g2089120912_)))))
                          (let () (declare (not safe)) (_g2089120912_)))))
                  (let () (declare (not safe)) (_g2089120912_))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#cut|
      (lambda (_stx20997_)
        (letrec ((_generate21000_
                  (lambda (_rest21119_)
                    (let _lp21122_ ((_rest21125_ _rest21119_)
                                    (_hd21127_ '())
                                    (_body21128_ '()))
                      (let* ((___stx2427524276_ _rest21125_)
                             (_g2113121143_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2427524276_))))
                        (let ((___kont2427824279_
                               (lambda (_L21171_ _L21173_)
                                 (let* ((___stx2425524256_ _L21173_)
                                        (_g2119021197_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2425524256_))))
                                   (let ((___kont2425824259_
                                          (lambda ()
                                            (let ((_arg21233_ (gx#genident)))
                                              (_lp21122_
                                               _L21171_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _arg21233_ _hd21127_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _arg21233_
                                                       _body21128_))))))
                                         (___kont2426024261_
                                          (lambda ()
                                            (if (gx#stx-null? _L21171_)
                                                (let ((_tail21219_
                                                       (gx#genident)))
                                                  (values (foldl cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tail21219_
                         _hd21127_)
                  (foldl cons (list _tail21219_) _body21128_)
                  '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; cut ellipsis <...> not in tail position"
                                                 _stx20997_
                                                 _L21173_))))
                                         (___kont2426224263_
                                          (lambda ()
                                            (_lp21122_
                                             _L21171_
                                             _hd21127_
                                             (let ()
                                               (declare (not safe))
                                               (cons _L21173_ _body21128_))))))
                                     (if (gx#identifier? ___stx2425524256_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core/sugar$<sugar:2>[1]#_g25798_|
                                              ___stx2425524256_)
                                             (___kont2425824259_)
                                             (if (gx#free-identifier=?
                                                  |gerbil/core/sugar$<sugar:2>[1]#_g25797_|
                                                  ___stx2425524256_)
                                                 (___kont2426024261_)
                                                 (___kont2426224263_)))
                                         (___kont2426224263_))))))
                              (___kont2428024281_
                               (lambda ()
                                 (values (reverse _hd21127_)
                                         (reverse _body21128_)
                                         '#f))))
                          (if (gx#stx-pair? ___stx2427524276_)
                              (let ((_e2113721161_
                                     (gx#syntax-e ___stx2427524276_)))
                                (let ((_tl2113521168_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2113721161_)))
                                      (_hd2113621165_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2113721161_))))
                                  (___kont2427824279_
                                   _tl2113521168_
                                   _hd2113621165_)))
                              (___kont2428024281_))))))))
          (let* ((_g2100321014_
                  (lambda (_g2100421010_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2100421010_)))
                 (_g2100221115_
                  (lambda (_g2100421018_)
                    (if (gx#stx-pair? _g2100421018_)
                        (let ((_e2100821021_ (gx#syntax-e _g2100421018_)))
                          (let ((_hd2100721025_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2100821021_)))
                                (_tl2100621028_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2100821021_))))
                            ((lambda (_L21031_)
                               (if (and (gx#stx-list? _L21031_)
                                        (let ((__tmp25809
                                               (gx#stx-null? _L21031_)))
                                          (declare (not safe))
                                          (not __tmp25809)))
                                   (let ((_g25799_ (_generate21000_ _L21031_)))
                                     (begin
                                       (let ((_g25800_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g25799_)
                                                    (##vector-length _g25799_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g25800_ 3)))
                                             (error "Context expects 3 values"
                                                    _g25800_)))
                                       (let ((_hd21044_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g25799_ 0)))
                                             (_body21046_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g25799_ 1)))
                                             (_tail?21047_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g25799_ 2))))
                                         (let* ((_g2104921057_
                                                 (lambda (_g2105021053_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g2105021053_)))
                                                (_g2104821111_
                                                 (lambda (_g2105021061_)
                                                   ((lambda (_L21064_)
                                                      (let ()
                                                        (let* ((_g2107721085_
                                                                (lambda (_g2107821081_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g2107821081_)))
                       (_g2107621107_
                        (lambda (_g2107821089_)
                          ((lambda (_L21092_)
                             (let ()
                               (let ()
                                 (if _tail?21047_
                                     (let ((__tmp25808
                                            (gx#datum->syntax '#f 'lambda%))
                                           (__tmp25804
                                            (let ((__tmp25805
                                                   (let ((__tmp25806
                                                          (let ((__tmp25807
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'apply)))
                    (declare (not safe))
                    (cons __tmp25807 _L21092_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25806 '()))))
                                              (declare (not safe))
                                              (cons _L21064_ __tmp25805))))
                                       (declare (not safe))
                                       (cons __tmp25808 __tmp25804))
                                     (let ((__tmp25803
                                            (gx#datum->syntax '#f 'lambda%))
                                           (__tmp25801
                                            (let ((__tmp25802
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L21092_ '()))))
                                              (declare (not safe))
                                              (cons _L21064_ __tmp25802))))
                                       (declare (not safe))
                                       (cons __tmp25803 __tmp25801))))))
                           _g2107821089_))))
                  (_g2107621107_ _body21046_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2105021061_))))
                                           (_g2104821111_ _hd21044_)))))
                                   (_g2100321014_ _g2100421018_)))
                             _tl2100621028_)))
                        (_g2100321014_ _g2100421018_)))))
            (_g2100221115_ _stx20997_)))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#<>|
      (lambda (_$stx21245_)
        (let ((_g2124821255_
               (lambda (_g2124921251_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g2124921251_))))
          (_g2124821255_ _$stx21245_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#<...>|
      (lambda (_$stx21259_)
        (let ((_g2126221269_
               (lambda (_g2126321265_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g2126321265_))))
          (_g2126221269_ _$stx21259_))))))
