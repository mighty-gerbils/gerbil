(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar$<sugar:2>[1]#_g24802_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g24803_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g24804_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25596_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25599_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25600_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25661_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25662_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
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
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25740_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25784_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
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
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25787_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25798_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25799_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar$<sugar:2>[:0:]#lambda|
      (lambda (_stx8933_)
        (letrec ((_simple-lambda?8936_
                  (lambda (_hd12333_)
                    (gx#stx-andmap gx#identifier? _hd12333_)))
                 (_opt-lambda?8938_
                  (lambda (_hd12185_)
                    (let _lp12188_ ((_rest12191_ _hd12185_) (_opt?12193_ '#f))
                      (let* ((___stx2269622697_ _rest12191_)
                             (_g1219612208_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2269622697_))))
                        (let ((___kont2269922700_
                               (lambda (_L12240_ _L12242_)
                                 (let* ((___stx2267222673_ _L12242_)
                                        (_g1225812272_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2267222673_))))
                                   (let ((___kont2267522676_
                                          (lambda (_L12310_)
                                            (_lp12188_ _L12240_ '#t)))
                                         (___kont2267722678_
                                          (lambda ()
                                            (if (gx#identifier? _L12242_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (not _opt?12193_))
                                                    (_lp12188_ _L12240_ '#f)
                                                    '#f)
                                                '#f))))
                                     (let ((___match2269322694_
                                            (lambda (_e1226112290_
                                                     _hd1226212294_
                                                     _tl1226312297_
                                                     _e1226412300_
                                                     _hd1226512304_
                                                     _tl1226612307_)
                                              (let ((_L12310_ _hd1226212294_))
                                                (if (gx#identifier? _L12310_)
                                                    (___kont2267522676_
                                                     _L12310_)
                                                    (___kont2267722678_))))))
                                       (if (gx#stx-pair? ___stx2267222673_)
                                           (let ((_e1226112290_
                                                  (gx#syntax-e
                                                   ___stx2267222673_)))
                                             (let ((_tl1226312297_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e1226112290_)))
                                                   (_hd1226212294_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e1226112290_))))
                                               (if (gx#stx-pair?
                                                    _tl1226312297_)
                                                   (let ((_e1226412300_
                                                          (gx#syntax-e
                                                           _tl1226312297_)))
                                                     (let ((_tl1226612307_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e1226412300_)))
                                                           (_hd1226512304_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e1226412300_))))
                                                       (if (gx#stx-null?
                                                            _tl1226612307_)
                                                           (___match2269322694_
                                                            _e1226112290_
                                                            _hd1226212294_
                                                            _tl1226312297_
                                                            _e1226412300_
                                                            _hd1226512304_
                                                            _tl1226612307_)
                                                           (___kont2267722678_))))
                                                   (___kont2267722678_))))
                                           (___kont2267722678_)))))))
                              (___kont2270122702_
                               (lambda ()
                                 (if _opt?12193_
                                     (let ((_$e12219_
                                            (gx#stx-null? _rest12191_)))
                                       (if _$e12219_
                                           _$e12219_
                                           (gx#identifier? _rest12191_)))
                                     '#f))))
                          (if (gx#stx-pair? ___stx2269622697_)
                              (let ((_e1220012230_
                                     (gx#syntax-e ___stx2269622697_)))
                                (let ((_tl1220212237_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1220012230_)))
                                      (_hd1220112234_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1220012230_))))
                                  (___kont2269922700_
                                   _tl1220212237_
                                   _hd1220112234_)))
                              (___kont2270122702_)))))))
                 (_opt-lambda-split8939_
                  (lambda (_hd12037_)
                    (let _lp12040_ ((_rest12043_ _hd12037_)
                                    (_pre12045_ '())
                                    (_opt12046_ '()))
                      (let* ((___stx2273622737_ _rest12043_)
                             (_g1204912061_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2273622737_))))
                        (let ((___kont2273922740_
                               (lambda (_L12089_ _L12091_)
                                 (let* ((___stx2271222713_ _L12091_)
                                        (_g1210712122_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2271222713_))))
                                   (let ((___kont2271522716_
                                          (lambda (_L12160_ _L12162_)
                                            (_lp12040_
                                             _L12089_
                                             _pre12045_
                                             (let ((__tmp24612
                                                    (let ((__tmp24613
                                                           (_generate-bind8942_
                                                            _L12162_)))
                                                      (declare (not safe))
                                                      (cons __tmp24613
                                                            _L12160_))))
                                               (declare (not safe))
                                               (cons __tmp24612 _opt12046_)))))
                                         (___kont2271722718_
                                          (lambda ()
                                            (_lp12040_
                                             _L12089_
                                             (let ((__tmp24614
                                                    (_generate-bind8942_
                                                     _L12091_)))
                                               (declare (not safe))
                                               (cons __tmp24614 _pre12045_))
                                             _opt12046_))))
                                     (if (gx#stx-pair? ___stx2271222713_)
                                         (let ((_e1211112140_
                                                (gx#syntax-e
                                                 ___stx2271222713_)))
                                           (let ((_tl1211312147_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1211112140_)))
                                                 (_hd1211212144_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1211112140_))))
                                             (if (gx#stx-pair? _tl1211312147_)
                                                 (let ((_e1211412150_
                                                        (gx#syntax-e
                                                         _tl1211312147_)))
                                                   (let ((_tl1211612157_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1211412150_)))
                                                         (_hd1211512154_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1211412150_))))
                                                     (if (gx#stx-null?
                                                          _tl1211612157_)
                                                         (___kont2271522716_
                                                          _hd1211512154_
                                                          _hd1211212144_)
                                                         (___kont2271722718_))))
                                                 (___kont2271722718_))))
                                         (___kont2271722718_))))))
                              (___kont2274122742_
                               (lambda ()
                                 (values (reverse _pre12045_)
                                         (reverse _opt12046_)
                                         (if (gx#identifier? _rest12043_)
                                             (_generate-bind8942_ _rest12043_)
                                             _rest12043_)))))
                          (if (gx#stx-pair? ___stx2273622737_)
                              (let ((_e1205312079_
                                     (gx#syntax-e ___stx2273622737_)))
                                (let ((_tl1205512086_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1205312079_)))
                                      (_hd1205412083_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1205312079_))))
                                  (___kont2273922740_
                                   _tl1205512086_
                                   _hd1205412083_)))
                              (___kont2274122742_)))))))
                 (_kw-lambda?8940_
                  (lambda (_hd11705_)
                    (let _lp11708_ ((_rest11711_ _hd11705_)
                                    (_opt?11713_ '#f)
                                    (_key?11714_ '#f))
                      (let* ((___stx2280022801_ _rest11711_)
                             (_g1171911749_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2280022801_))))
                        (let ((___kont2280322804_
                               (lambda (_L11944_ _L11946_ _L11947_)
                                 (let* ((___stx2277622777_ _L11946_)
                                        (_g1196211976_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2277622777_))))
                                   (let ((___kont2277922780_
                                          (lambda (_L12014_)
                                            (if (gx#identifier? _L12014_)
                                                (_lp11708_
                                                 _L11944_
                                                 _opt?11713_
                                                 '#t)
                                                '#f)))
                                         (___kont2278122782_
                                          (lambda ()
                                            (if (gx#identifier? _L11946_)
                                                (_lp11708_
                                                 _L11944_
                                                 _opt?11713_
                                                 '#t)
                                                '#f))))
                                     (if (gx#stx-pair? ___stx2277622777_)
                                         (let ((_e1196511994_
                                                (gx#syntax-e
                                                 ___stx2277622777_)))
                                           (let ((_tl1196712001_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1196511994_)))
                                                 (_hd1196611998_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1196511994_))))
                                             (if (gx#stx-pair? _tl1196712001_)
                                                 (let ((_e1196812004_
                                                        (gx#syntax-e
                                                         _tl1196712001_)))
                                                   (let ((_tl1197012011_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1196812004_)))
                                                         (_hd1196912008_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1196812004_))))
                                                     (if (gx#stx-null?
                                                          _tl1197012011_)
                                                         (___kont2277922780_
                                                          _hd1196611998_)
                                                         (___kont2278122782_))))
                                                 (___kont2278122782_))))
                                         (___kont2278122782_))))))
                              (___kont2280522806_
                               (lambda (_L11901_ _L11903_)
                                 (if (gx#identifier? _L11903_)
                                     (_lp11708_ _L11901_ _opt?11713_ '#t)
                                     '#f)))
                              (___kont2280722808_
                               (lambda (_L11781_ _L11783_)
                                 (let* ((___stx2275222753_ _L11783_)
                                        (_g1179911813_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2275222753_))))
                                   (let ((___kont2275522756_
                                          (lambda (_L11851_)
                                            (if (gx#identifier? _L11851_)
                                                (_lp11708_
                                                 _L11781_
                                                 '#t
                                                 _key?11714_)
                                                '#f)))
                                         (___kont2275722758_
                                          (lambda ()
                                            (if (gx#identifier? _L11783_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (not _opt?11713_))
                                                    (_lp11708_
                                                     _L11781_
                                                     '#f
                                                     _key?11714_)
                                                    '#f)
                                                '#f))))
                                     (if (gx#stx-pair? ___stx2275222753_)
                                         (let ((_e1180211831_
                                                (gx#syntax-e
                                                 ___stx2275222753_)))
                                           (let ((_tl1180411838_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1180211831_)))
                                                 (_hd1180311835_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1180211831_))))
                                             (if (gx#stx-pair? _tl1180411838_)
                                                 (let ((_e1180511841_
                                                        (gx#syntax-e
                                                         _tl1180411838_)))
                                                   (let ((_tl1180711848_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1180511841_)))
                                                         (_hd1180611845_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1180511841_))))
                                                     (if (gx#stx-null?
                                                          _tl1180711848_)
                                                         (___kont2275522756_
                                                          _hd1180311835_)
                                                         (___kont2275722758_))))
                                                 (___kont2275722758_))))
                                         (___kont2275722758_))))))
                              (___kont2280922810_
                               (lambda ()
                                 (if _key?11714_
                                     (let ((_$e11760_
                                            (gx#stx-null? _rest11711_)))
                                       (if _$e11760_
                                           _$e11760_
                                           (gx#identifier? _rest11711_)))
                                     '#f))))
                          (let ((___match2282322824_
                                 (lambda (_e1172411924_
                                          _hd1172511928_
                                          _tl1172611931_
                                          _e1172711934_
                                          _hd1172811938_
                                          _tl1172911941_)
                                   (let ((_L11944_ _tl1172911941_)
                                         (_L11946_ _hd1172811938_)
                                         (_L11947_ _hd1172511928_))
                                     (if (gx#stx-keyword? _L11947_)
                                         (___kont2280322804_
                                          _L11944_
                                          _L11946_
                                          _L11947_)
                                         (if (gx#stx-datum? _hd1172511928_)
                                             (let ((_e1173511887_
                                                    (gx#stx-e _hd1172511928_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (equal? _e1173511887_
                                                             '#!key))
                                                   (___kont2280522806_
                                                    _tl1172911941_
                                                    _hd1172811938_)
                                                   (___kont2280722808_
                                                    _tl1172611931_
                                                    _hd1172511928_)))
                                             (___kont2280722808_
                                              _tl1172611931_
                                              _hd1172511928_)))))))
                            (if (gx#stx-pair? ___stx2280022801_)
                                (let ((_e1172411924_
                                       (gx#syntax-e ___stx2280022801_)))
                                  (let ((_tl1172611931_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1172411924_)))
                                        (_hd1172511928_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1172411924_))))
                                    (if (gx#stx-pair? _tl1172611931_)
                                        (let ((_e1172711934_
                                               (gx#syntax-e _tl1172611931_)))
                                          (let ((_tl1172911941_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1172711934_)))
                                                (_hd1172811938_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1172711934_))))
                                            (___match2282322824_
                                             _e1172411924_
                                             _hd1172511928_
                                             _tl1172611931_
                                             _e1172711934_
                                             _hd1172811938_
                                             _tl1172911941_)))
                                        (if (gx#stx-datum? _hd1172511928_)
                                            (let ((_e1173511887_
                                                   (gx#stx-e _hd1172511928_)))
                                              (___kont2280722808_
                                               _tl1172611931_
                                               _hd1172511928_))
                                            (___kont2280722808_
                                             _tl1172611931_
                                             _hd1172511928_)))))
                                (___kont2280922810_))))))))
                 (_kw-lambda-split8941_
                  (lambda (_hd11438_)
                    (let _lp11441_ ((_rest11444_ _hd11438_)
                                    (_kwvar11446_ '#f)
                                    (_kwargs11447_ '())
                                    (_args11448_ '()))
                      (let* ((___stx2287422875_ _rest11444_)
                             (_g1145311483_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2287422875_))))
                        (let ((___kont2287722878_
                               (lambda (_L11602_ _L11604_ _L11605_)
                                 (let ((_key11619_ (gx#stx-e _L11605_)))
                                   (if (find (lambda (_kwarg11622_)
                                               (let ((__tmp24615
                                                      (car _kwarg11622_)))
                                                 (declare (not safe))
                                                 (eq? _key11619_ __tmp24615)))
                                             _kwargs11447_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"bad syntax; duplicate keyword argument"
                                        _stx8933_
                                        _hd11438_
                                        _key11619_)
                                       (let* ((___stx2285022851_ _L11604_)
                                              (_g1162611641_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  ___stx2285022851_))))
                                         (let ((___kont2285322854_
                                                (lambda (_L11679_ _L11681_)
                                                  (_lp11441_
                                                   _L11602_
                                                   _kwvar11446_
                                                   (let ((__tmp24616
                                                          (list _key11619_
                                                                (_generate-bind8942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11681_)
                        _L11679_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp24616
                                                           _kwargs11447_))
                                                   _args11448_)))
                                               (___kont2285522856_
                                                (lambda ()
                                                  (_lp11441_
                                                   _L11602_
                                                   _kwvar11446_
                                                   (let ((__tmp24617
                                                          (list _key11619_
                                                                (_generate-bind8942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11604_)
                        (let ((__tmp24620 (gx#datum->syntax '#f 'error))
                              (__tmp24618
                               (let ((__tmp24619
                                      (let ()
                                        (declare (not safe))
                                        (cons _L11605_ '()))))
                                 (declare (not safe))
                                 (cons '"Missing required keyword argument"
                                       __tmp24619))))
                          (declare (not safe))
                          (cons __tmp24620 __tmp24618)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp24617
                                                           _kwargs11447_))
                                                   _args11448_))))
                                           (if (gx#stx-pair? ___stx2285022851_)
                                               (let ((_e1163011659_
                                                      (gx#syntax-e
                                                       ___stx2285022851_)))
                                                 (let ((_tl1163211666_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1163011659_)))
                                                       (_hd1163111663_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1163011659_))))
                                                   (if (gx#stx-pair?
                                                        _tl1163211666_)
                                                       (let ((_e1163311669_
                                                              (gx#syntax-e
                                                               _tl1163211666_)))
                                                         (let ((_tl1163511676_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e1163311669_)))
                       (_hd1163411673_
                        (let () (declare (not safe)) (##car _e1163311669_))))
                   (if (gx#stx-null? _tl1163511676_)
                       (___kont2285322854_ _hd1163411673_ _hd1163111663_)
                       (___kont2285522856_))))
               (___kont2285522856_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2285522856_))))))))
                              (___kont2287922880_
                               (lambda (_L11559_ _L11561_)
                                 (if _kwvar11446_
                                     (gx#raise-syntax-error
                                      '#f
                                      '"bad syntax; duplicate #!key argument"
                                      _stx8933_
                                      _hd11438_
                                      _L11561_)
                                     (_lp11441_
                                      _L11559_
                                      (_generate-bind8942_ _L11561_)
                                      _kwargs11447_
                                      _args11448_))))
                              (___kont2288122882_
                               (lambda (_L11511_ _L11513_)
                                 (_lp11441_
                                  _L11511_
                                  _kwvar11446_
                                  _kwargs11447_
                                  (let ()
                                    (declare (not safe))
                                    (cons _L11513_ _args11448_)))))
                              (___kont2288322884_
                               (lambda ()
                                 (values _kwvar11446_
                                         (reverse _kwargs11447_)
                                         (foldl cons
                                                _rest11444_
                                                _args11448_)))))
                          (let ((___match2289722898_
                                 (lambda (_e1145811582_
                                          _hd1145911586_
                                          _tl1146011589_
                                          _e1146111592_
                                          _hd1146211596_
                                          _tl1146311599_)
                                   (let ((_L11602_ _tl1146311599_)
                                         (_L11604_ _hd1146211596_)
                                         (_L11605_ _hd1145911586_))
                                     (if (gx#stx-keyword? _L11605_)
                                         (___kont2287722878_
                                          _L11602_
                                          _L11604_
                                          _L11605_)
                                         (if (gx#stx-datum? _hd1145911586_)
                                             (let ((_e1146911545_
                                                    (gx#stx-e _hd1145911586_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (equal? _e1146911545_
                                                             '#!key))
                                                   (___kont2287922880_
                                                    _tl1146311599_
                                                    _hd1146211596_)
                                                   (___kont2288122882_
                                                    _tl1146011589_
                                                    _hd1145911586_)))
                                             (___kont2288122882_
                                              _tl1146011589_
                                              _hd1145911586_)))))))
                            (if (gx#stx-pair? ___stx2287422875_)
                                (let ((_e1145811582_
                                       (gx#syntax-e ___stx2287422875_)))
                                  (let ((_tl1146011589_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1145811582_)))
                                        (_hd1145911586_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1145811582_))))
                                    (if (gx#stx-pair? _tl1146011589_)
                                        (let ((_e1146111592_
                                               (gx#syntax-e _tl1146011589_)))
                                          (let ((_tl1146311599_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1146111592_)))
                                                (_hd1146211596_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1146111592_))))
                                            (___match2289722898_
                                             _e1145811582_
                                             _hd1145911586_
                                             _tl1146011589_
                                             _e1146111592_
                                             _hd1146211596_
                                             _tl1146311599_)))
                                        (if (gx#stx-datum? _hd1145911586_)
                                            (let ((_e1146911545_
                                                   (gx#stx-e _hd1145911586_)))
                                              (___kont2288122882_
                                               _tl1146011589_
                                               _hd1145911586_))
                                            (___kont2288122882_
                                             _tl1146011589_
                                             _hd1145911586_)))))
                                (___kont2288322884_))))))))
                 (_generate-bind8942_
                  (lambda (_e11435_)
                    (if (gx#underscore? _e11435_)
                        (gx#genident _e11435_)
                        _e11435_)))
                 (_check-duplicate-bindings8943_
                  (lambda (_hd11132_)
                    (letrec ((_cons-id11135_
                              (lambda (_id11431_ _ids11433_)
                                (if (gx#underscore? _id11431_)
                                    _ids11433_
                                    (let ()
                                      (declare (not safe))
                                      (cons _id11431_ _ids11433_))))))
                      (let _lp11138_ ((_rest11141_ _hd11132_) (_ids11143_ '()))
                        (let* ((___stx2294822949_ _rest11141_)
                               (_g1114611158_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx2294822949_))))
                          (let ((___kont2295122952_
                                 (lambda (_L11186_ _L11188_)
                                   (if (gx#identifier? _L11188_)
                                       (_lp11138_
                                        _L11186_
                                        (_cons-id11135_ _L11188_ _ids11143_))
                                       (if (gx#stx-pair? _L11188_)
                                           (let* ((_g1120411218_
                                                   (lambda (_g1120511214_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g1120511214_)))
                                                  (_g1120311259_
                                                   (lambda (_g1120511222_)
                                                     (if (gx#stx-pair?
                                                          _g1120511222_)
                                                         (let ((_e1120711225_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1120511222_)))
                   (let ((_hd1120811229_
                          (let () (declare (not safe)) (##car _e1120711225_)))
                         (_tl1120911232_
                          (let () (declare (not safe)) (##cdr _e1120711225_))))
                     (if (gx#stx-pair? _tl1120911232_)
                         (let ((_e1121011235_ (gx#syntax-e _tl1120911232_)))
                           (let ((_hd1121111239_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e1121011235_)))
                                 (_tl1121211242_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e1121011235_))))
                             (if (gx#stx-null? _tl1121211242_)
                                 ((lambda (_L11245_)
                                    (_lp11138_
                                     _L11186_
                                     (_cons-id11135_ _L11245_ _ids11143_)))
                                  _hd1120811229_)
                                 (_g1120411218_ _g1120511222_))))
                         (_g1120411218_ _g1120511222_))))
                 (_g1120411218_ _g1120511222_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1120311259_ _L11188_))
                                           (if (gx#stx-keyword? _L11188_)
                                               (let* ((_g1126311275_
                                                       (lambda (_g1126411271_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g1126411271_)))
                                                      (_g1126211377_
                                                       (lambda (_g1126411279_)
                                                         (if (gx#stx-pair?
                                                              _g1126411279_)
                                                             (let ((_e1126711282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1126411279_)))
                       (let ((_hd1126811286_
                              (let ()
                                (declare (not safe))
                                (##car _e1126711282_)))
                             (_tl1126911289_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1126711282_))))
                         ((lambda (_L11292_ _L11294_)
                            (let* ((___stx2292422925_ _L11294_)
                                   (_g1130611320_
                                    (lambda ()
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       ___stx2292422925_))))
                              (let ((___kont2292722928_
                                     (lambda (_L11358_)
                                       (_lp11138_
                                        _L11292_
                                        (_cons-id11135_ _L11358_ _ids11143_))))
                                    (___kont2292922930_
                                     (lambda ()
                                       (_lp11138_
                                        _L11292_
                                        (_cons-id11135_
                                         _L11294_
                                         _ids11143_)))))
                                (if (gx#stx-pair? ___stx2292422925_)
                                    (let ((_e1130911338_
                                           (gx#syntax-e ___stx2292422925_)))
                                      (let ((_tl1131111345_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1130911338_)))
                                            (_hd1131011342_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1130911338_))))
                                        (if (gx#stx-pair? _tl1131111345_)
                                            (let ((_e1131211348_
                                                   (gx#syntax-e
                                                    _tl1131111345_)))
                                              (let ((_tl1131411355_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1131211348_)))
                                                    (_hd1131311352_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1131211348_))))
                                                (if (gx#stx-null?
                                                     _tl1131411355_)
                                                    (___kont2292722928_
                                                     _hd1131011342_)
                                                    (___kont2292922930_))))
                                            (___kont2292922930_))))
                                    (___kont2292922930_)))))
                          _tl1126911289_
                          _hd1126811286_)))
                     (_g1126311275_ _g1126411279_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1126211377_ _L11186_))
                                               (if (let ((__tmp24621
                                                          (gx#stx-e _L11188_)))
                                                     (declare (not safe))
                                                     (eq? __tmp24621 '#!key))
                                                   (let* ((_g1138111393_
                                                           (lambda (_g1138211389_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g1138211389_)))
                                                          (_g1138011423_
                                                           (lambda (_g1138211397_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1138211397_)
                         (let ((_e1138511400_ (gx#syntax-e _g1138211397_)))
                           (let ((_hd1138611404_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e1138511400_)))
                                 (_tl1138711407_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e1138511400_))))
                             ((lambda (_L11410_ _L11412_)
                                (_lp11138_
                                 _L11410_
                                 (_cons-id11135_ _L11412_ _ids11143_)))
                              _tl1138711407_
                              _hd1138611404_)))
                         (_g1138111393_ _g1138211397_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1138011423_ _L11186_))
                                                   (error '"BUG: check-duplicate-bindings"
                                                          _stx8933_
                                                          _rest11141_)))))))
                                (___kont2295322954_
                                 (lambda ()
                                   (gx#check-duplicate-identifiers
                                    (if (gx#stx-null? _rest11141_)
                                        _ids11143_
                                        (_cons-id11135_
                                         _rest11141_
                                         _ids11143_))
                                    _stx8933_))))
                            (if (gx#stx-pair? ___stx2294822949_)
                                (let ((_e1115011176_
                                       (gx#syntax-e ___stx2294822949_)))
                                  (let ((_tl1115211183_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1115011176_)))
                                        (_hd1115111180_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1115011176_))))
                                    (___kont2295122952_
                                     _tl1115211183_
                                     _hd1115111180_)))
                                (___kont2295322954_))))))))
                 (_generate-opt-primary8944_
                  (lambda (_pre10924_ _opt10926_ _tail10927_ _body10928_)
                    (let* ((_g1093010971_
                            (lambda (_g1093110967_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g1093110967_)))
                           (_g1092911128_
                            (lambda (_g1093110975_)
                              (if (gx#stx-pair? _g1093110975_)
                                  (let ((_e1093610978_
                                         (gx#syntax-e _g1093110975_)))
                                    (let ((_hd1093710982_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1093610978_)))
                                          (_tl1093810985_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1093610978_))))
                                      (if (gx#stx-pair/null? _hd1093710982_)
                                          (let ((_g24622_
                                                 (gx#syntax-split-splice
                                                  _hd1093710982_
                                                  '0)))
                                            (begin
                                              (let ((_g24623_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g24622_)
                                                           (##vector-length
                                                            _g24622_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g24623_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g24623_)))
                                              (let ((_target1093910988_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g24622_
                                                        0)))
                                                    (_tl1094110991_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g24622_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _tl1094110991_)
                                                    (letrec ((_loop1094210994_
                                                              (lambda (_hd1094010998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _pre1094611001_)
                        (if (gx#stx-pair? _hd1094010998_)
                            (let ((_e1094311004_ (gx#syntax-e _hd1094010998_)))
                              (let ((_lp-hd1094411008_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1094311004_)))
                                    (_lp-tl1094511011_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1094311004_))))
                                (_loop1094210994_
                                 _lp-tl1094511011_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd1094411008_ _pre1094611001_)))))
                            (let ((_pre1094711014_ (reverse _pre1094611001_)))
                              (if (gx#stx-pair? _tl1093810985_)
                                  (let ((_e1094811018_
                                         (gx#syntax-e _tl1093810985_)))
                                    (let ((_hd1094911022_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1094811018_)))
                                          (_tl1095011025_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1094811018_))))
                                      (if (gx#stx-pair/null? _hd1094911022_)
                                          (let ((_g24624_
                                                 (gx#syntax-split-splice
                                                  _hd1094911022_
                                                  '0)))
                                            (begin
                                              (let ((_g24625_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g24624_)
                                                           (##vector-length
                                                            _g24624_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g24625_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g24625_)))
                                              (let ((_target1095111028_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g24624_
                                                        0)))
                                                    (_tl1095311031_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g24624_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _tl1095311031_)
                                                    (letrec ((_loop1095411034_
                                                              (lambda (_hd1095211038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _opt1095811041_)
                        (if (gx#stx-pair? _hd1095211038_)
                            (let ((_e1095511044_ (gx#syntax-e _hd1095211038_)))
                              (let ((_lp-hd1095611048_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1095511044_)))
                                    (_lp-tl1095711051_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1095511044_))))
                                (_loop1095411034_
                                 _lp-tl1095711051_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd1095611048_ _opt1095811041_)))))
                            (let ((_opt1095911054_ (reverse _opt1095811041_)))
                              (if (gx#stx-pair? _tl1095011025_)
                                  (let ((_e1096011058_
                                         (gx#syntax-e _tl1095011025_)))
                                    (let ((_hd1096111062_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1096011058_)))
                                          (_tl1096211065_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1096011058_))))
                                      (if (gx#stx-pair? _tl1096211065_)
                                          (let ((_e1096311068_
                                                 (gx#syntax-e _tl1096211065_)))
                                            (let ((_hd1096411072_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1096311068_)))
                                                  (_tl1096511075_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1096311068_))))
                                              (if (gx#stx-null? _tl1096511075_)
                                                  ((lambda (_L11078_
                                                            _L11080_
                                                            _L11081_
                                                            _L11082_)
                                                     (let ()
                                                       (let ((__tmp24628
                                                              (gx#datum->syntax
                                                               '#f
                                                               'lambda%))
                                                             (__tmp24626
                                                              (let ((__tmp24627
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr (lambda (_g1111111116_ _g1111211119_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g1111111116_ _g1111211119_)))
                                    (foldr (lambda (_g1111311122_
                                                    _g1111411125_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g1111311122_
                                                     _g1111411125_)))
                                           _L11080_
                                           _L11081_)
                                    _L11082_)))
                        (declare (not safe))
                        (cons __tmp24627 _L11078_))))
                 (declare (not safe))
                 (cons __tmp24628 __tmp24626))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd1096411072_
                                                   _hd1096111062_
                                                   _opt1095911054_
                                                   _pre1094711014_)
                                                  (_g1093010971_
                                                   _g1093110975_))))
                                          (_g1093010971_ _g1093110975_))))
                                  (_g1093010971_ _g1093110975_)))))))
              (_loop1095411034_ _target1095111028_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1093010971_
                                                     _g1093110975_)))))
                                          (_g1093010971_ _g1093110975_))))
                                  (_g1093010971_ _g1093110975_)))))))
              (_loop1094210994_ _target1093910988_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1093010971_
                                                     _g1093110975_)))))
                                          (_g1093010971_ _g1093110975_))))
                                  (_g1093010971_ _g1093110975_)))))
                      (_g1092911128_
                       (list _pre10924_
                             (map car _opt10926_)
                             _tail10927_
                             _body10928_)))))
                 (_generate-opt-dispatch8945_
                  (lambda (_primary10918_ _pre10920_ _opt10921_ _tail10922_)
                    (let ((__tmp24630
                           (list _pre10920_
                                 (_generate-opt-clause8947_
                                  _primary10918_
                                  _pre10920_
                                  _opt10921_)))
                          (__tmp24629
                           (_generate-opt-dispatch*8946_
                            _primary10918_
                            _pre10920_
                            _opt10921_
                            _tail10922_)))
                      (declare (not safe))
                      (cons __tmp24630 __tmp24629))))
                 (_generate-opt-dispatch*8946_
                  (lambda (_primary10475_ _pre10477_ _opt10478_ _tail10479_)
                    (let _recur10481_ ((_opt-rest10484_ _opt10478_)
                                       (_right10486_ '()))
                      (if (let () (declare (not safe)) (pair? _opt-rest10484_))
                          (let* ((_hd10488_ (caar _opt-rest10484_))
                                 (_rest10491_ (cdr _opt-rest10484_))
                                 (_right*10494_
                                  (let ()
                                    (declare (not safe))
                                    (cons _hd10488_ _right10486_)))
                                 (_g1049710514_
                                  (lambda (_g1049810510_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1049810510_)))
                                 (_g1049610697_
                                  (lambda (_g1049810518_)
                                    (if (gx#stx-pair/null? _g1049810518_)
                                        (let ((_g24631_
                                               (gx#syntax-split-splice
                                                _g1049810518_
                                                '0)))
                                          (begin
                                            (let ((_g24632_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g24631_)
                                                         (##vector-length
                                                          _g24631_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g24632_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g24632_)))
                                            (let ((_target1050010521_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g24631_
                                                      0)))
                                                  (_tl1050210524_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g24631_
                                                      1))))
                                              (if (gx#stx-null? _tl1050210524_)
                                                  (letrec ((_loop1050310527_
                                                            (lambda (_hd1050110531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-bind1050710534_)
                      (if (gx#stx-pair? _hd1050110531_)
                          (let ((_e1050410537_ (gx#syntax-e _hd1050110531_)))
                            (let ((_lp-hd1050510541_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1050410537_)))
                                  (_lp-tl1050610544_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1050410537_))))
                              (_loop1050310527_
                               _lp-tl1050610544_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd1050510541_
                                       _pre-bind1050710534_)))))
                          (let ((_pre-bind1050810547_
                                 (reverse _pre-bind1050710534_)))
                            ((lambda (_L10551_)
                               (let ()
                                 (let* ((_g1057210589_
                                         (lambda (_g1057310585_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g1057310585_)))
                                        (_g1057110693_
                                         (lambda (_g1057310593_)
                                           (if (gx#stx-pair/null?
                                                _g1057310593_)
                                               (let ((_g24633_
                                                      (gx#syntax-split-splice
                                                       _g1057310593_
                                                       '0)))
                                                 (begin
                                                   (let ((_g24634_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g24633_)
                        (##vector-length _g24633_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g24634_ 2)))
                 (error "Context expects 2 values" _g24634_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target1057510596_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g24633_
                                                             0)))
                                                         (_tl1057710599_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g24633_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl1057710599_)
                                                         (letrec ((_loop1057810602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd1057610606_ _opt-bind1058210609_)
                             (if (gx#stx-pair? _hd1057610606_)
                                 (let ((_e1057910612_
                                        (gx#syntax-e _hd1057610606_)))
                                   (let ((_lp-hd1058010616_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e1057910612_)))
                                         (_lp-tl1058110619_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e1057910612_))))
                                     (_loop1057810602_
                                      _lp-tl1058110619_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd1058010616_
                                              _opt-bind1058210609_)))))
                                 (let ((_opt-bind1058310622_
                                        (reverse _opt-bind1058210609_)))
                                   ((lambda (_L10626_)
                                      (let ()
                                        (let* ((_g1064310651_
                                                (lambda (_g1064410647_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g1064410647_)))
                                               (_g1064210689_
                                                (lambda (_g1064410655_)
                                                  ((lambda (_L10658_)
                                                     (let ()
                                                       (let ()
                                                         (let ((__tmp24636
                                                                (list (foldr (lambda (_g1067210677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              _g1067310680_)
                                       (let ()
                                         (declare (not safe))
                                         (cons _g1067210677_ _g1067310680_)))
                                     (foldr (lambda (_g1067410683_
                                                     _g1067510686_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g1067410683_
                                                      _g1067510686_)))
                                            (let ()
                                              (declare (not safe))
                                              (cons _L10658_ '()))
                                            _L10626_)
                                     _L10551_)
                              (_generate-opt-clause8947_
                               _primary10475_
                               (foldr cons (reverse _right*10494_) _pre10477_)
                               _rest10491_)))
                       (__tmp24635 (_recur10481_ _rest10491_ _right*10494_)))
                   (declare (not safe))
                   (cons __tmp24636 __tmp24635)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1064410655_))))
                                          (_g1064210689_ _hd10488_))))
                                    _opt-bind1058310622_))))))
                   (_loop1057810602_ _target1057510596_ '()))
                 (_g1057210589_ _g1057310593_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1057210589_
                                                _g1057310593_)))))
                                   (_g1057110693_ (reverse _right10486_)))))
                             _pre-bind1050810547_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1050310527_
                                                     _target1050010521_
                                                     '()))
                                                  (_g1049710514_
                                                   _g1049810518_)))))
                                        (_g1049710514_ _g1049810518_)))))
                            (_g1049610697_ _pre10477_))
                          (if (gx#stx-null? _tail10479_)
                              '()
                              (let* ((_g1070110742_
                                      (lambda (_g1070210738_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g1070210738_)))
                                     (_g1070010914_
                                      (lambda (_g1070210746_)
                                        (if (gx#stx-pair? _g1070210746_)
                                            (let ((_e1070710749_
                                                   (gx#syntax-e
                                                    _g1070210746_)))
                                              (let ((_hd1070810753_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1070710749_)))
                                                    (_tl1070910756_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1070710749_))))
                                                (if (gx#stx-pair/null?
                                                     _hd1070810753_)
                                                    (let ((_g24637_
                                                           (gx#syntax-split-splice
                                                            _hd1070810753_
                                                            '0)))
                                                      (begin
                                                        (let ((_g24638_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g24637_)
                             (##vector-length _g24637_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g24638_ 2)))
                      (error "Context expects 2 values" _g24638_)))
                (let ((_target1071010759_
                       (let () (declare (not safe)) (##vector-ref _g24637_ 0)))
                      (_tl1071210762_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g24637_ 1))))
                  (if (gx#stx-null? _tl1071210762_)
                      (letrec ((_loop1071310765_
                                (lambda (_hd1071110769_ _pre1071710772_)
                                  (if (gx#stx-pair? _hd1071110769_)
                                      (let ((_e1071410775_
                                             (gx#syntax-e _hd1071110769_)))
                                        (let ((_lp-hd1071510779_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1071410775_)))
                                              (_lp-tl1071610782_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1071410775_))))
                                          (_loop1071310765_
                                           _lp-tl1071610782_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1071510779_
                                                   _pre1071710772_)))))
                                      (let ((_pre1071810785_
                                             (reverse _pre1071710772_)))
                                        (if (gx#stx-pair? _tl1070910756_)
                                            (let ((_e1071910789_
                                                   (gx#syntax-e
                                                    _tl1070910756_)))
                                              (let ((_hd1072010793_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1071910789_)))
                                                    (_tl1072110796_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1071910789_))))
                                                (if (gx#stx-pair/null?
                                                     _hd1072010793_)
                                                    (let ((_g24639_
                                                           (gx#syntax-split-splice
                                                            _hd1072010793_
                                                            '0)))
                                                      (begin
                                                        (let ((_g24640_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g24639_)
                             (##vector-length _g24639_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g24640_ 2)))
                      (error "Context expects 2 values" _g24640_)))
                (let ((_target1072210799_
                       (let () (declare (not safe)) (##vector-ref _g24639_ 0)))
                      (_tl1072410802_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g24639_ 1))))
                  (if (gx#stx-null? _tl1072410802_)
                      (letrec ((_loop1072510805_
                                (lambda (_hd1072310809_ _opt1072910812_)
                                  (if (gx#stx-pair? _hd1072310809_)
                                      (let ((_e1072610815_
                                             (gx#syntax-e _hd1072310809_)))
                                        (let ((_lp-hd1072710819_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1072610815_)))
                                              (_lp-tl1072810822_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1072610815_))))
                                          (_loop1072510805_
                                           _lp-tl1072810822_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1072710819_
                                                   _opt1072910812_)))))
                                      (let ((_opt1073010825_
                                             (reverse _opt1072910812_)))
                                        (if (gx#stx-pair? _tl1072110796_)
                                            (let ((_e1073110829_
                                                   (gx#syntax-e
                                                    _tl1072110796_)))
                                              (let ((_hd1073210833_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1073110829_)))
                                                    (_tl1073310836_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1073110829_))))
                                                (if (gx#stx-pair?
                                                     _tl1073310836_)
                                                    (let ((_e1073410839_
                                                           (gx#syntax-e
                                                            _tl1073310836_)))
                                                      (let ((_hd1073510843_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1073410839_)))
                    (_tl1073610846_
                     (let () (declare (not safe)) (##cdr _e1073410839_))))
                (if (gx#stx-null? _tl1073610846_)
                    ((lambda (_L10849_ _L10851_ _L10852_ _L10853_)
                       (let ()
                         (list (list (foldr (lambda (_g1088110886_
                                                     _g1088210889_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g1088110886_
                                                      _g1088210889_)))
                                            (foldr (lambda (_g1088310892_
                                                            _g1088410895_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1088310892_
                                                             _g1088410895_)))
                                                   _L10851_
                                                   _L10852_)
                                            _L10853_)
                                     (gx#stx-wrap-source
                                      (let ((__tmp24643
                                             (gx#datum->syntax '#f 'apply))
                                            (__tmp24641
                                             (let ((__tmp24642
                                                    (foldr (lambda (_g1089710902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1089810905_)
                     (let ()
                       (declare (not safe))
                       (cons _g1089710902_ _g1089810905_)))
                   (foldr (lambda (_g1089910908_ _g1090010911_)
                            (let ()
                              (declare (not safe))
                              (cons _g1089910908_ _g1090010911_)))
                          (let () (declare (not safe)) (cons _L10851_ '()))
                          _L10852_)
                   _L10853_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L10849_ __tmp24642))))
                                        (declare (not safe))
                                        (cons __tmp24643 __tmp24641))
                                      (gx#stx-source _stx8933_))))))
                     _hd1073510843_
                     _hd1073210833_
                     _opt1073010825_
                     _pre1071810785_)
                    (_g1070110742_ _g1070210746_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1070110742_
                                                     _g1070210746_))))
                                            (_g1070110742_ _g1070210746_)))))))
                        (_loop1072510805_ _target1072210799_ '()))
                      (_g1070110742_ _g1070210746_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1070110742_
                                                     _g1070210746_))))
                                            (_g1070110742_ _g1070210746_)))))))
                        (_loop1071310765_ _target1071010759_ '()))
                      (_g1070110742_ _g1070210746_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1070110742_
                                                     _g1070210746_))))
                                            (_g1070110742_ _g1070210746_)))))
                                (_g1070010914_
                                 (list _pre10477_
                                       (reverse _right10486_)
                                       _tail10479_
                                       _primary10475_))))))))
                 (_generate-opt-clause8947_
                  (lambda (_primary10173_ _pre10175_ _opt10176_)
                    (let _recur10178_ ((_opt-rest10181_ _opt10176_)
                                       (_right10183_ '()))
                      (if (let () (declare (not safe)) (pair? _opt-rest10181_))
                          (let* ((_hd10185_ (car _opt-rest10181_))
                                 (_rest10188_ (cdr _opt-rest10181_))
                                 (_g1019110199_
                                  (lambda (_g1019210195_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1019210195_)))
                                 (_g1019010288_
                                  (lambda (_g1019210203_)
                                    ((lambda (_L10206_)
                                       (let ()
                                         (let* ((_g1022210230_
                                                 (lambda (_g1022310226_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g1022310226_)))
                                                (_g1022110284_
                                                 (lambda (_g1022310234_)
                                                   ((lambda (_L10237_)
                                                      (let ()
                                                        (let* ((_g1025010258_
                                                                (lambda (_g1025110254_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g1025110254_)))
                       (_g1024910280_
                        (lambda (_g1025110262_)
                          ((lambda (_L10265_)
                             (let ()
                               (let ()
                                 (let ((__tmp24650
                                        (gx#datum->syntax '#f 'let-values))
                                       (__tmp24644
                                        (let ((__tmp24646
                                               (let ((__tmp24647
                                                      (let ((__tmp24649
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L10206_ '())))
                    (__tmp24648
                     (let () (declare (not safe)) (cons _L10237_ '()))))
                (declare (not safe))
                (cons __tmp24649 __tmp24648))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24647 '())))
                                              (__tmp24645
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L10265_ '()))))
                                          (declare (not safe))
                                          (cons __tmp24646 __tmp24645))))
                                   (declare (not safe))
                                   (cons __tmp24650 __tmp24644)))))
                           _g1025110262_))))
                  (_g1024910280_
                   (_recur10178_
                    _rest10188_
                    (let ()
                      (declare (not safe))
                      (cons _L10206_ _right10183_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1022310234_))))
                                           (_g1022110284_ (cdr _hd10185_)))))
                                     _g1019210203_))))
                            (_g1019010288_ (car _hd10185_)))
                          (let* ((_g1029210329_
                                  (lambda (_g1029310325_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1029310325_)))
                                 (_g1029110471_
                                  (lambda (_g1029310333_)
                                    (if (gx#stx-pair? _g1029310333_)
                                        (let ((_e1029710336_
                                               (gx#syntax-e _g1029310333_)))
                                          (let ((_hd1029810340_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1029710336_)))
                                                (_tl1029910343_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1029710336_))))
                                            (if (gx#stx-pair/null?
                                                 _hd1029810340_)
                                                (let ((_g24651_
                                                       (gx#syntax-split-splice
                                                        _hd1029810340_
                                                        '0)))
                                                  (begin
                                                    (let ((_g24652_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g24651_)
                         (##vector-length _g24651_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g24652_ 2)))
                  (error "Context expects 2 values" _g24652_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1030010346_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g24651_
                                                              0)))
                                                          (_tl1030210349_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g24651_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1030210349_)
                                                          (letrec ((_loop1030310352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1030110356_ _pre1030710359_)
                              (if (gx#stx-pair? _hd1030110356_)
                                  (let ((_e1030410362_
                                         (gx#syntax-e _hd1030110356_)))
                                    (let ((_lp-hd1030510366_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1030410362_)))
                                          (_lp-tl1030610369_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1030410362_))))
                                      (_loop1030310352_
                                       _lp-tl1030610369_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1030510366_
                                               _pre1030710359_)))))
                                  (let ((_pre1030810372_
                                         (reverse _pre1030710359_)))
                                    (if (gx#stx-pair? _tl1029910343_)
                                        (let ((_e1030910376_
                                               (gx#syntax-e _tl1029910343_)))
                                          (let ((_hd1031010380_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1030910376_)))
                                                (_tl1031110383_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1030910376_))))
                                            (if (gx#stx-pair/null?
                                                 _hd1031010380_)
                                                (let ((_g24653_
                                                       (gx#syntax-split-splice
                                                        _hd1031010380_
                                                        '0)))
                                                  (begin
                                                    (let ((_g24654_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g24653_)
                         (##vector-length _g24653_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g24654_ 2)))
                  (error "Context expects 2 values" _g24654_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1031210386_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g24653_
                                                              0)))
                                                          (_tl1031410389_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g24653_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1031410389_)
                                                          (letrec ((_loop1031510392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1031310396_ _opt1031910399_)
                              (if (gx#stx-pair? _hd1031310396_)
                                  (let ((_e1031610402_
                                         (gx#syntax-e _hd1031310396_)))
                                    (let ((_lp-hd1031710406_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1031610402_)))
                                          (_lp-tl1031810409_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1031610402_))))
                                      (_loop1031510392_
                                       _lp-tl1031810409_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1031710406_
                                               _opt1031910399_)))))
                                  (let ((_opt1032010412_
                                         (reverse _opt1031910399_)))
                                    (if (gx#stx-pair? _tl1031110383_)
                                        (let ((_e1032110416_
                                               (gx#syntax-e _tl1031110383_)))
                                          (let ((_hd1032210420_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1032110416_)))
                                                (_tl1032310423_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1032110416_))))
                                            (if (gx#stx-null? _tl1032310423_)
                                                ((lambda (_L10426_
                                                          _L10428_
                                                          _L10429_)
                                                   (let ()
                                                     (gx#stx-wrap-source
                                                      (let ((__tmp24655
                                                             (foldr (lambda (_g1045410459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1045510462_)
                              (let ()
                                (declare (not safe))
                                (cons _g1045410459_ _g1045510462_)))
                            (foldr (lambda (_g1045610465_ _g1045710468_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g1045610465_ _g1045710468_)))
                                   '()
                                   _L10428_)
                            _L10429_)))
                (declare (not safe))
                (cons _L10426_ __tmp24655))
              (gx#stx-source _stx8933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1032210420_
                                                 _opt1032010412_
                                                 _pre1030810372_)
                                                (_g1029210329_
                                                 _g1029310333_))))
                                        (_g1029210329_ _g1029310333_)))))))
                    (_loop1031510392_ _target1031210386_ '()))
                  (_g1029210329_ _g1029310333_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1029210329_
                                                 _g1029310333_))))
                                        (_g1029210329_ _g1029310333_)))))))
                    (_loop1030310352_ _target1030010346_ '()))
                  (_g1029210329_ _g1029310333_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1029210329_
                                                 _g1029310333_))))
                                        (_g1029210329_ _g1029310333_)))))
                            (_g1029110471_
                             (list _pre10175_
                                   (reverse _right10183_)
                                   _primary10173_)))))))
                 (_generate-kw-primary8948_
                  (lambda (_key9549_ _kwargs9551_ _args9552_ _body9553_)
                    (letrec ((_make-body9555_
                              (lambda (_kwargs10042_ _kwvals10044_)
                                (if (let ()
                                      (declare (not safe))
                                      (pair? _kwargs10042_))
                                    (let* ((_kwarg10046_ (car _kwargs10042_))
                                           (_var10049_ (cadr _kwarg10046_))
                                           (_default10052_
                                            (caddr _kwarg10046_))
                                           (_kwval10055_ (car _kwvals10044_))
                                           (_rest-kwargs10058_
                                            (cdr _kwargs10042_))
                                           (_rest-kwvals10061_
                                            (cdr _kwvals10044_)))
                                      (let* ((_g1006610089_
                                              (lambda (_g1006710085_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _g1006710085_)))
                                             (_g1006510169_
                                              (lambda (_g1006710093_)
                                                (if (gx#stx-pair?
                                                     _g1006710093_)
                                                    (let ((_e1007210096_
                                                           (gx#syntax-e
                                                            _g1006710093_)))
                                                      (let ((_hd1007310100_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1007210096_)))
                    (_tl1007410103_
                     (let () (declare (not safe)) (##cdr _e1007210096_))))
                (if (gx#stx-pair? _tl1007410103_)
                    (let ((_e1007510106_ (gx#syntax-e _tl1007410103_)))
                      (let ((_hd1007610110_
                             (let ()
                               (declare (not safe))
                               (##car _e1007510106_)))
                            (_tl1007710113_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1007510106_))))
                        (if (gx#stx-pair? _tl1007710113_)
                            (let ((_e1007810116_ (gx#syntax-e _tl1007710113_)))
                              (let ((_hd1007910120_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1007810116_)))
                                    (_tl1008010123_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1007810116_))))
                                (if (gx#stx-pair? _tl1008010123_)
                                    (let ((_e1008110126_
                                           (gx#syntax-e _tl1008010123_)))
                                      (let ((_hd1008210130_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1008110126_)))
                                            (_tl1008310133_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1008110126_))))
                                        (if (gx#stx-null? _tl1008310133_)
                                            ((lambda (_L10136_
                                                      _L10138_
                                                      _L10139_
                                                      _L10140_)
                                               (let ()
                                                 (let ((__tmp24672
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let-values))
                                                       (__tmp24656
                                                        (let ((__tmp24658
                                                               (let ((__tmp24659
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp24671
                                     (let ()
                                       (declare (not safe))
                                       (cons _L10140_ '())))
                                    (__tmp24660
                                     (let ((__tmp24661
                                            (let ((__tmp24670
                                                   (gx#datum->syntax '#f 'if))
                                                  (__tmp24662
                                                   (let ((__tmp24665
                                                          (let ((__tmp24669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'eq?))
                        (__tmp24666
                         (let ((__tmp24667
                                (let ((__tmp24668
                                       (gx#datum->syntax '#f 'absent-value)))
                                  (declare (not safe))
                                  (cons __tmp24668 '()))))
                           (declare (not safe))
                           (cons _L10139_ __tmp24667))))
                    (declare (not safe))
                    (cons __tmp24669 __tmp24666)))
                 (__tmp24663
                  (let ((__tmp24664
                         (let () (declare (not safe)) (cons _L10139_ '()))))
                    (declare (not safe))
                    (cons _L10138_ __tmp24664))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp24665
                                                           __tmp24663))))
                                              (declare (not safe))
                                              (cons __tmp24670 __tmp24662))))
                                       (declare (not safe))
                                       (cons __tmp24661 '()))))
                                (declare (not safe))
                                (cons __tmp24671 __tmp24660))))
                         (declare (not safe))
                         (cons __tmp24659 '())))
                      (__tmp24657
                       (let () (declare (not safe)) (cons _L10136_ '()))))
                  (declare (not safe))
                  (cons __tmp24658 __tmp24657))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24672
                                                         __tmp24656))))
                                             _hd1008210130_
                                             _hd1007910120_
                                             _hd1007610110_
                                             _hd1007310100_)
                                            (_g1006610089_ _g1006710093_))))
                                    (_g1006610089_ _g1006710093_))))
                            (_g1006610089_ _g1006710093_))))
                    (_g1006610089_ _g1006710093_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1006610089_
                                                     _g1006710093_)))))
                                        (_g1006510169_
                                         (list _var10049_
                                               _kwval10055_
                                               _default10052_
                                               (_make-body9555_
                                                _rest-kwargs10058_
                                                _rest-kwvals10061_)))))
                                    (let ()
                                      (declare (not safe))
                                      (cons 'begin _body9553_)))))
                             (_make-main9557_
                              (lambda ()
                                (let* ((_g98509858_
                                        (lambda (_g98519854_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g98519854_)))
                                       (_g984910034_
                                        (lambda (_g98519862_)
                                          ((lambda (_L9865_)
                                             (let ()
                                               (let* ((_g98779894_
                                                       (lambda (_g98789890_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g98789890_)))
                                                      (_g987610030_
                                                       (lambda (_g98789898_)
                                                         (if (gx#stx-pair/null?
                                                              _g98789898_)
                                                             (let ((_g24673_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g98789898_ '0)))
                       (begin
                         (let ((_g24674_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g24673_)
                                      (##vector-length _g24673_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g24674_ 2)))
                               (error "Context expects 2 values" _g24674_)))
                         (let ((_target98809901_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g24673_ 0)))
                               (_tl98829904_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g24673_ 1))))
                           (if (gx#stx-null? _tl98829904_)
                               (letrec ((_loop98839907_
                                         (lambda (_hd98819911_ _kwval98879914_)
                                           (if (gx#stx-pair? _hd98819911_)
                                               (let ((_e98849917_
                                                      (gx#syntax-e
                                                       _hd98819911_)))
                                                 (let ((_lp-hd98859921_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e98849917_)))
                                                       (_lp-tl98869924_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e98849917_))))
                                                   (_loop98839907_
                                                    _lp-tl98869924_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd98859921_
                                                            _kwval98879914_)))))
                                               (let ((_kwval98889927_
                                                      (reverse _kwval98879914_)))
                                                 ((lambda (_L9931_)
                                                    (let ()
                                                      (let* ((_g99489956_
                                                              (lambda (_g99499952_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g99499952_)))
                     (_g994710026_
                      (lambda (_g99499960_)
                        ((lambda (_L9963_)
                           (let ()
                             (let* ((_g99769984_
                                     (lambda (_g99779980_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g99779980_)))
                                    (_g997510014_
                                     (lambda (_g99779988_)
                                       ((lambda (_L9991_)
                                          (let ()
                                            (let ()
                                              (gx#stx-wrap-source
                                               (let ((__tmp24679
                                                      (gx#datum->syntax
                                                       '#f
                                                       'lambda))
                                                     (__tmp24675
                                                      (let ((__tmp24677
                                                             (let ((__tmp24678
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr (lambda (_g1000510008_ _g1000610011_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g1000510008_ _g1000610011_)))
                                   _L9963_
                                   _L9931_)))
                       (declare (not safe))
                       (cons _L9865_ __tmp24678)))
                    (__tmp24676
                     (let () (declare (not safe)) (cons _L9991_ '()))))
                (declare (not safe))
                (cons __tmp24677 __tmp24676))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24679 __tmp24675))
                                               (gx#stx-source _stx8933_)))))
                                        _g99779988_))))
                               (_g997510014_
                                (_make-body9555_
                                 _kwargs9551_
                                 (foldr (lambda (_g1001710020_ _g1001810023_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g1001710020_
                                                  _g1001810023_)))
                                        '()
                                        _L9931_))))))
                         _g99499960_))))
                (_g994710026_ _args9552_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _kwval98889927_))))))
                                 (_loop98839907_ _target98809901_ '()))
                               (_g98779894_ _g98789898_)))))
                     (_g98779894_ _g98789898_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g987610030_
                                                  (gx#gentemps
                                                   (map cadr _kwargs9551_))))))
                                           _g98519862_))))
                                  (_g984910034_
                                   (let ((_$e10038_ _key9549_))
                                     (if _$e10038_ _$e10038_ '_))))))
                             (_make-dispatch9558_
                              (lambda (_main9658_)
                                (let* ((_g96619669_
                                        (lambda (_g96629665_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g96629665_)))
                                       (_g96609840_
                                        (lambda (_g96629673_)
                                          ((lambda (_L9676_)
                                             (let ()
                                               (let* ((_g96889705_
                                                       (lambda (_g96899701_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g96899701_)))
                                                      (_g96879801_
                                                       (lambda (_g96899709_)
                                                         (if (gx#stx-pair/null?
                                                              _g96899709_)
                                                             (let ((_g24680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g96899709_ '0)))
                       (begin
                         (let ((_g24681_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g24680_)
                                      (##vector-length _g24680_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g24681_ 2)))
                               (error "Context expects 2 values" _g24681_)))
                         (let ((_target96919712_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g24680_ 0)))
                               (_tl96939715_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g24680_ 1))))
                           (if (gx#stx-null? _tl96939715_)
                               (letrec ((_loop96949718_
                                         (lambda (_hd96929722_
                                                  _get-kw96989725_)
                                           (if (gx#stx-pair? _hd96929722_)
                                               (let ((_e96959728_
                                                      (gx#syntax-e
                                                       _hd96929722_)))
                                                 (let ((_lp-hd96969732_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e96959728_)))
                                                       (_lp-tl96979735_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e96959728_))))
                                                   (_loop96949718_
                                                    _lp-tl96979735_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd96969732_
                                                            _get-kw96989725_)))))
                                               (let ((_get-kw96999738_
                                                      (reverse _get-kw96989725_)))
                                                 ((lambda (_L9742_)
                                                    (let ()
                                                      (let* ((_g97599767_
                                                              (lambda (_g97609763_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g97609763_)))
                     (_g97589797_
                      (lambda (_g97609771_)
                        ((lambda (_L9774_)
                           (let ()
                             (let ()
                               (gx#stx-wrap-source
                                (let ((__tmp24692
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp24682
                                       (let ((__tmp24690
                                              (let ((__tmp24691
                                                     (gx#datum->syntax
                                                      '#f
                                                      'args)))
                                                (declare (not safe))
                                                (cons _L9676_ __tmp24691)))
                                             (__tmp24683
                                              (let ((__tmp24684
                                                     (let ((__tmp24689
                                                            (gx#datum->syntax
                                                             '#f
                                                             'apply))
                                                           (__tmp24685
                                                            (let ((__tmp24686
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp24687
                                  (foldr (lambda (_g97889791_ _g97899794_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g97889791_ _g97899794_)))
                                         (let ((__tmp24688
                                                (gx#datum->syntax '#f 'args)))
                                           (declare (not safe))
                                           (cons __tmp24688 '()))
                                         _L9742_)))
                             (declare (not safe))
                             (cons _L9676_ __tmp24687))))
                      (declare (not safe))
                      (cons _L9774_ __tmp24686))))
               (declare (not safe))
               (cons __tmp24689 __tmp24685))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp24684 '()))))
                                         (declare (not safe))
                                         (cons __tmp24690 __tmp24683))))
                                  (declare (not safe))
                                  (cons __tmp24692 __tmp24682))
                                (gx#stx-source _stx8933_)))))
                         _g97609771_))))
                (_g97589797_ _main9658_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _get-kw96999738_))))))
                                 (_loop96949718_ _target96919712_ '()))
                               (_g96889705_ _g96899709_)))))
                     (_g96889705_ _g96899709_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g96879801_
                                                  (map (lambda (_kwarg9805_)
                                                         (let* ((_g98089816_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g98099812_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g98099812_)))
                        (_g98079836_
                         (lambda (_g98099820_)
                           ((lambda (_L9823_)
                              (let ()
                                (let ((__tmp24700
                                       (gx#datum->syntax
                                        '#f
                                        'symbolic-table-ref))
                                      (__tmp24693
                                       (let ((__tmp24694
                                              (let ((__tmp24697
                                                     (let ((__tmp24699
                                                            (gx#datum->syntax
                                                             '#f
                                                             'quote))
                                                           (__tmp24698
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L9823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp24699 __tmp24698)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp24695
                                                     (let ((__tmp24696
                                                            (gx#datum->syntax
                                                             '#f
                                                             'absent-value)))
                                                       (declare (not safe))
                                                       (cons __tmp24696 '()))))
                                                (declare (not safe))
                                                (cons __tmp24697 __tmp24695))))
                                         (declare (not safe))
                                         (cons _L9676_ __tmp24694))))
                                  (declare (not safe))
                                  (cons __tmp24700 __tmp24693))))
                            _g98099820_))))
                   (_g98079836_ (car _kwarg9805_))))
               _kwargs9551_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g96629673_))))
                                  (_g96609840_
                                   (let ((_$e9844_ _key9549_))
                                     (if _$e9844_
                                         _$e9844_
                                         (gx#genident 'keys))))))))
                      (let* ((_g95609568_
                              (lambda (_g95619564_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g95619564_)))
                             (_g95599654_
                              (lambda (_g95619572_)
                                ((lambda (_L9575_)
                                   (let ()
                                     (let* ((_g95889596_
                                             (lambda (_g95899592_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g95899592_)))
                                            (_g95879650_
                                             (lambda (_g95899600_)
                                               ((lambda (_L9603_)
                                                  (let ()
                                                    (let* ((_g96169624_
                                                            (lambda (_g96179620_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g96179620_)))
                                                           (_g96159646_
                                                            (lambda (_g96179628_)
                                                              ((lambda (_L9631_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ()
                             (let ((__tmp24707
                                    (gx#datum->syntax '#f 'let-values))
                                   (__tmp24701
                                    (let ((__tmp24703
                                           (let ((__tmp24704
                                                  (let ((__tmp24706
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L9575_ '())))
                                                        (__tmp24705
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L9631_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24706
                                                          __tmp24705))))
                                             (declare (not safe))
                                             (cons __tmp24704 '())))
                                          (__tmp24702
                                           (let ()
                                             (declare (not safe))
                                             (cons _L9603_ '()))))
                                      (declare (not safe))
                                      (cons __tmp24703 __tmp24702))))
                               (declare (not safe))
                               (cons __tmp24707 __tmp24701)))))
                       _g96179628_))))
              (_g96159646_ (_make-main9557_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g95899600_))))
                                       (_g95879650_
                                        (_make-dispatch9558_ _L9575_)))))
                                 _g95619572_))))
                        (_g95599654_ (gx#genident 'kw-lambda-main))))))
                 (_generate-kw-dispatch8949_
                  (lambda (_primary9462_ _kwargs9464_ _strict?9465_)
                    (let* ((_g94679486_
                            (lambda (_g94689482_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g94689482_)))
                           (_g94669545_
                            (lambda (_g94689490_)
                              (if (gx#stx-pair? _g94689490_)
                                  (let ((_e94729493_
                                         (gx#syntax-e _g94689490_)))
                                    (let ((_hd94739497_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e94729493_)))
                                          (_tl94749500_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e94729493_))))
                                      (if (gx#stx-pair? _tl94749500_)
                                          (let ((_e94759503_
                                                 (gx#syntax-e _tl94749500_)))
                                            (let ((_hd94769507_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e94759503_)))
                                                  (_tl94779510_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e94759503_))))
                                              (if (gx#stx-pair? _tl94779510_)
                                                  (let ((_e94789513_
                                                         (gx#syntax-e
                                                          _tl94779510_)))
                                                    (let ((_hd94799517_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e94789513_)))
                                                          (_tl94809520_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e94789513_))))
                                                      (if (gx#stx-null?
                                                           _tl94809520_)
                                                          ((lambda (_L9523_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L9525_
                            _L9526_)
                     (let ()
                       (let ((__tmp24720 (gx#datum->syntax '#f 'lambda%))
                             (__tmp24708
                              (let ((__tmp24709
                                     (let ((__tmp24710
                                            (let ((__tmp24719
                                                   (gx#datum->syntax
                                                    '#f
                                                    'apply))
                                                  (__tmp24711
                                                   (let ((__tmp24718
                                                          (gx#datum->syntax
                                                           '#f
                                                           'keyword-dispatch))
                                                         (__tmp24712
                                                          (let ((__tmp24715
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp24717 (gx#datum->syntax '#f 'quote))
                               (__tmp24716
                                (let ()
                                  (declare (not safe))
                                  (cons _L9526_ '()))))
                           (declare (not safe))
                           (cons __tmp24717 __tmp24716)))
                        (__tmp24713
                         (let ((__tmp24714
                                (let ()
                                  (declare (not safe))
                                  (cons _L9523_ '()))))
                           (declare (not safe))
                           (cons _L9525_ __tmp24714))))
                    (declare (not safe))
                    (cons __tmp24715 __tmp24713))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp24718
                                                           __tmp24712))))
                                              (declare (not safe))
                                              (cons __tmp24719 __tmp24711))))
                                       (declare (not safe))
                                       (cons __tmp24710 '()))))
                                (declare (not safe))
                                (cons _L9523_ __tmp24709))))
                         (declare (not safe))
                         (cons __tmp24720 __tmp24708))))
                   _hd94799517_
                   _hd94769507_
                   _hd94739497_)
                  (_g94679486_ _g94689490_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g94679486_ _g94689490_))))
                                          (_g94679486_ _g94689490_))))
                                  (_g94679486_ _g94689490_)))))
                      (_g94669545_
                       (list (if _strict?9465_
                                 (_generate-kw-table8950_
                                  (map car _kwargs9464_))
                                 '#f)
                             _primary9462_
                             (gx#genident 'args))))))
                 (_generate-kw-table8950_
                  (lambda (_kws9436_)
                    (let _rehash9439_ ((_pht9442_
                                        (make-vector (length _kws9436_) '#f)))
                      (let _lp9445_ ((_rest9448_ _kws9436_))
                        (if (let () (declare (not safe)) (pair? _rest9448_))
                            (let* ((_key9451_ (car _rest9448_))
                                   (_rest9454_ (cdr _rest9448_))
                                   (_pos9457_
                                    (fxmodulo
                                     (keyword-hash _key9451_)
                                     (vector-length _pht9442_))))
                              (if (vector-ref _pht9442_ _pos9457_)
                                  (if (fx< (vector-length _pht9442_) '8192)
                                      (_rehash9439_
                                       (make-vector
                                        (quotient
                                         (fx* '3 (vector-length _pht9442_))
                                         '2)
                                        '#f))
                                      (error '"Unresolvable keyword collision"
                                             _kws9436_))
                                  (begin
                                    (vector-set! _pht9442_ _pos9457_ _key9451_)
                                    (_lp9445_ _rest9454_))))
                            _pht9442_))))))
          (let* ((___stx2296422965_ _stx8933_)
                 (_g89548985_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx2296422965_))))
            (let ((___kont2296722968_
                   (lambda (_L9417_ _L9419_)
                     (let ((__tmp24722 (gx#datum->syntax '#f 'lambda%))
                           (__tmp24721
                            (let ()
                              (declare (not safe))
                              (cons _L9419_ _L9417_))))
                       (declare (not safe))
                       (cons __tmp24722 __tmp24721))))
                  (___kont2296922970_
                   (lambda (_L9189_ _L9191_)
                     (let ((_g24723_ (_opt-lambda-split8939_ _L9191_)))
                       (begin
                         (let ((_g24724_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g24723_)
                                      (##vector-length _g24723_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g24724_ 3)))
                               (error "Context expects 3 values" _g24724_)))
                         (let ((_pre9204_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g24723_ 0)))
                               (_opt9206_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g24723_ 1)))
                               (_tail9207_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g24723_ 2))))
                           (let* ((_g92099217_
                                   (lambda (_g92109213_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g92109213_)))
                                  (_g92089386_
                                   (lambda (_g92109221_)
                                     ((lambda (_L9224_)
                                        (let ()
                                          (let* ((_g92379245_
                                                  (lambda (_g92389241_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g92389241_)))
                                                 (_g92369382_
                                                  (lambda (_g92389249_)
                                                    ((lambda (_L9252_)
                                                       (let ()
                                                         (let* ((_g92659282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g92669278_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g92669278_)))
                        (_g92649378_
                         (lambda (_g92669286_)
                           (if (gx#stx-pair/null? _g92669286_)
                               (let ((_g24725_
                                      (gx#syntax-split-splice _g92669286_ '0)))
                                 (begin
                                   (let ((_g24726_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g24725_)
                                                (##vector-length _g24725_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g24726_ 2)))
                                         (error "Context expects 2 values"
                                                _g24726_)))
                                   (let ((_target92689289_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g24725_ 0)))
                                         (_tl92709292_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g24725_ 1))))
                                     (if (gx#stx-null? _tl92709292_)
                                         (letrec ((_loop92719295_
                                                   (lambda (_hd92699299_
                                                            _clause92759302_)
                                                     (if (gx#stx-pair?
                                                          _hd92699299_)
                                                         (let ((_e92729305_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd92699299_)))
                   (let ((_lp-hd92739309_
                          (let () (declare (not safe)) (##car _e92729305_)))
                         (_lp-tl92749312_
                          (let () (declare (not safe)) (##cdr _e92729305_))))
                     (_loop92719295_
                      _lp-tl92749312_
                      (let ()
                        (declare (not safe))
                        (cons _lp-hd92739309_ _clause92759302_)))))
                 (let ((_clause92769315_ (reverse _clause92759302_)))
                   ((lambda (_L9319_)
                      (let ()
                        (let* ((_g93369344_
                                (lambda (_g93379340_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g93379340_)))
                               (_g93359366_
                                (lambda (_g93379348_)
                                  ((lambda (_L9351_)
                                     (let ()
                                       (let ()
                                         (let ((__tmp24733
                                                (gx#datum->syntax
                                                 '#f
                                                 'let-values))
                                               (__tmp24727
                                                (let ((__tmp24729
                                                       (let ((__tmp24730
                                                              (let ((__tmp24732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let () (declare (not safe)) (cons _L9224_ '())))
                            (__tmp24731
                             (let () (declare (not safe)) (cons _L9252_ '()))))
                        (declare (not safe))
                        (cons __tmp24732 __tmp24731))))
                 (declare (not safe))
                 (cons __tmp24730 '())))
              (__tmp24728 (let () (declare (not safe)) (cons _L9351_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp24729
                                                        __tmp24728))))
                                           (declare (not safe))
                                           (cons __tmp24733 __tmp24727)))))
                                   _g93379348_))))
                          (_g93359366_
                           (gx#stx-wrap-source
                            (let ((__tmp24735
                                   (gx#datum->syntax '#f 'case-lambda))
                                  (__tmp24734
                                   (foldr (lambda (_g93699372_ _g93709375_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g93699372_ _g93709375_)))
                                          '()
                                          _L9319_)))
                              (declare (not safe))
                              (cons __tmp24735 __tmp24734))
                            (gx#stx-source _stx8933_))))))
                    _clause92769315_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop92719295_
                                            _target92689289_
                                            '()))
                                         (_g92659282_ _g92669286_)))))
                               (_g92659282_ _g92669286_)))))
                   (_g92649378_
                    (_generate-opt-dispatch8945_
                     _L9224_
                     _pre9204_
                     _opt9206_
                     _tail9207_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g92389249_))))
                                            (_g92369382_
                                             (gx#stx-wrap-source
                                              (_generate-opt-primary8944_
                                               _pre9204_
                                               _opt9206_
                                               _tail9207_
                                               _L9189_)
                                              (gx#stx-source _stx8933_))))))
                                      _g92109221_))))
                             (_g92089386_ (gx#genident 'opt-lambda))))))))
                  (___kont2297122972_
                   (lambda (_L9012_ _L9014_)
                     (let* ((_g90309037_
                             (lambda (_g90319033_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g90319033_)))
                            (_g90299158_
                             (lambda (_g90319041_)
                               ((lambda ()
                                  (let ()
                                    (let ((_g24736_
                                           (_kw-lambda-split8941_ _L9014_)))
                                      (begin
                                        (let ((_g24737_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g24736_)
                                                     (##vector-length _g24736_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g24737_ 3)))
                                              (error "Context expects 3 values"
                                                     _g24737_)))
                                        (let ((_key9050_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g24736_ 0)))
                                              (_kwargs9052_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g24736_ 1)))
                                              (_args9053_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g24736_ 2))))
                                          (let* ((_g90559063_
                                                  (lambda (_g90569059_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g90569059_)))
                                                 (_g90549154_
                                                  (lambda (_g90569067_)
                                                    ((lambda (_L9070_)
                                                       (let ()
                                                         (let* ((_g90889096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g90899092_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g90899092_)))
                        (_g90879150_
                         (lambda (_g90899100_)
                           ((lambda (_L9103_)
                              (let ()
                                (let* ((_g91169124_
                                        (lambda (_g91179120_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g91179120_)))
                                       (_g91159146_
                                        (lambda (_g91179128_)
                                          ((lambda (_L9131_)
                                             (let ()
                                               (let ()
                                                 (let ((__tmp24744
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let-values))
                                                       (__tmp24738
                                                        (let ((__tmp24740
                                                               (let ((__tmp24741
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp24743
                                     (let ()
                                       (declare (not safe))
                                       (cons _L9070_ '())))
                                    (__tmp24742
                                     (let ()
                                       (declare (not safe))
                                       (cons _L9103_ '()))))
                                (declare (not safe))
                                (cons __tmp24743 __tmp24742))))
                         (declare (not safe))
                         (cons __tmp24741 '())))
                      (__tmp24739
                       (let () (declare (not safe)) (cons _L9131_ '()))))
                  (declare (not safe))
                  (cons __tmp24740 __tmp24739))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24744
                                                         __tmp24738)))))
                                           _g91179128_))))
                                  (_g91159146_
                                   (gx#stx-wrap-source
                                    (_generate-kw-dispatch8949_
                                     _L9070_
                                     _kwargs9052_
                                     (let ()
                                       (declare (not safe))
                                       (not _key9050_)))
                                    (gx#stx-source _stx8933_))))))
                            _g90899100_))))
                   (_g90879150_
                    (gx#stx-wrap-source
                     (_generate-kw-primary8948_
                      _key9050_
                      _kwargs9052_
                      _args9053_
                      _L9012_)
                     (gx#stx-source _stx8933_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g90569067_))))
                                            (_g90549154_
                                             (gx#genident
                                              'kw-lambda))))))))))))
                       (_g90299158_
                        (_check-duplicate-bindings8943_ _L9014_))))))
              (let* ((___match2300923010_
                      (lambda (_e89748992_
                               _hd89758996_
                               _tl89768999_
                               _e89779002_
                               _hd89789006_
                               _tl89799009_)
                        (let ((_L9012_ _tl89799009_) (_L9014_ _hd89789006_))
                          (if (_kw-lambda?8940_ _L9014_)
                              (___kont2297122972_ _L9012_ _L9014_)
                              (let () (declare (not safe)) (_g89548985_))))))
                     (___match2299722998_
                      (lambda (_e89669169_
                               _hd89679173_
                               _tl89689176_
                               _e89699179_
                               _hd89709183_
                               _tl89719186_)
                        (let ((_L9189_ _tl89719186_) (_L9191_ _hd89709183_))
                          (if (_opt-lambda?8938_ _L9191_)
                              (___kont2296922970_ _L9189_ _L9191_)
                              (___match2300923010_
                               _e89669169_
                               _hd89679173_
                               _tl89689176_
                               _e89699179_
                               _hd89709183_
                               _tl89719186_)))))
                     (___match2298522986_
                      (lambda (_e89589397_
                               _hd89599401_
                               _tl89609404_
                               _e89619407_
                               _hd89629411_
                               _tl89639414_)
                        (let ((_L9417_ _tl89639414_) (_L9419_ _hd89629411_))
                          (if (_simple-lambda?8936_ _L9419_)
                              (___kont2296722968_ _L9417_ _L9419_)
                              (___match2299722998_
                               _e89589397_
                               _hd89599401_
                               _tl89609404_
                               _e89619407_
                               _hd89629411_
                               _tl89639414_))))))
                (if (gx#stx-pair? ___stx2296422965_)
                    (let ((_e89589397_ (gx#syntax-e ___stx2296422965_)))
                      (let ((_tl89609404_
                             (let () (declare (not safe)) (##cdr _e89589397_)))
                            (_hd89599401_
                             (let ()
                               (declare (not safe))
                               (##car _e89589397_))))
                        (if (gx#stx-pair? _tl89609404_)
                            (let ((_e89619407_ (gx#syntax-e _tl89609404_)))
                              (let ((_tl89639414_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e89619407_)))
                                    (_hd89629411_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e89619407_))))
                                (___match2298522986_
                                 _e89589397_
                                 _hd89599401_
                                 _tl89609404_
                                 _e89619407_
                                 _hd89629411_
                                 _tl89639414_)))
                            (let () (declare (not safe)) (_g89548985_)))))
                    (let () (declare (not safe)) (_g89548985_)))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#def|
      (lambda (_$stx12349_)
        (let* ((___stx2301223013_ _$stx12349_)
               (_g1235512419_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2301223013_))))
          (let ((___kont2301523016_
                 (lambda (_L12649_ _L12651_ _L12652_ _L12653_)
                   (let ((__tmp24752 (gx#datum->syntax '#f 'def))
                         (__tmp24745
                          (let ((__tmp24751
                                 (let ()
                                   (declare (not safe))
                                   (cons _L12653_ _L12652_)))
                                (__tmp24746
                                 (let ((__tmp24747
                                        (let ((__tmp24750
                                               (gx#datum->syntax '#f 'lambda))
                                              (__tmp24748
                                               (let ((__tmp24749
                                                      (foldr (lambda (_g1267512678_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1267612681_)
                       (let ()
                         (declare (not safe))
                         (cons _g1267512678_ _g1267612681_)))
                     '()
                     _L12649_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L12651_ __tmp24749))))
                                          (declare (not safe))
                                          (cons __tmp24750 __tmp24748))))
                                   (declare (not safe))
                                   (cons __tmp24747 '()))))
                            (declare (not safe))
                            (cons __tmp24751 __tmp24746))))
                     (declare (not safe))
                     (cons __tmp24752 __tmp24745))))
                (___kont2301923020_
                 (lambda (_L12541_ _L12543_ _L12544_)
                   (let ((__tmp24760 (gx#datum->syntax '#f 'define-values))
                         (__tmp24753
                          (let ((__tmp24759
                                 (let ()
                                   (declare (not safe))
                                   (cons _L12544_ '())))
                                (__tmp24754
                                 (let ((__tmp24755
                                        (let ((__tmp24758
                                               (gx#datum->syntax '#f 'lambda))
                                              (__tmp24756
                                               (let ((__tmp24757
                                                      (foldr (lambda (_g1256312566_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1256412569_)
                       (let ()
                         (declare (not safe))
                         (cons _g1256312566_ _g1256412569_)))
                     '()
                     _L12541_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L12543_ __tmp24757))))
                                          (declare (not safe))
                                          (cons __tmp24758 __tmp24756))))
                                   (declare (not safe))
                                   (cons __tmp24755 '()))))
                            (declare (not safe))
                            (cons __tmp24759 __tmp24754))))
                     (declare (not safe))
                     (cons __tmp24760 __tmp24753))))
                (___kont2302323024_
                 (lambda (_L12456_ _L12458_)
                   (let ((__tmp24764 (gx#datum->syntax '#f 'define-values))
                         (__tmp24761
                          (let ((__tmp24763
                                 (let ()
                                   (declare (not safe))
                                   (cons _L12458_ '())))
                                (__tmp24762
                                 (let ()
                                   (declare (not safe))
                                   (cons _L12456_ '()))))
                            (declare (not safe))
                            (cons __tmp24763 __tmp24762))))
                     (declare (not safe))
                     (cons __tmp24764 __tmp24761)))))
            (let* ((___match2310323104_
                    (lambda (_e1240512426_
                             _hd1240612430_
                             _tl1240712433_
                             _e1240812436_
                             _hd1240912440_
                             _tl1241012443_
                             _e1241112446_
                             _hd1241212450_
                             _tl1241312453_)
                      (let ((_L12456_ _hd1241212450_)
                            (_L12458_ _hd1240912440_))
                        (if (gx#identifier? _L12458_)
                            (___kont2302323024_ _L12456_ _L12458_)
                            (let () (declare (not safe)) (_g1235512419_))))))
                   (___match2309523096_
                    (lambda (_e1240512426_
                             _hd1240612430_
                             _tl1240712433_
                             _e1240812436_
                             _hd1240912440_
                             _tl1241012443_)
                      (if (gx#stx-pair? _tl1241012443_)
                          (let ((_e1241112446_ (gx#syntax-e _tl1241012443_)))
                            (let ((_tl1241312453_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1241112446_)))
                                  (_hd1241212450_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1241112446_))))
                              (if (gx#stx-null? _tl1241312453_)
                                  (___match2310323104_
                                   _e1240512426_
                                   _hd1240612430_
                                   _tl1240712433_
                                   _e1240812436_
                                   _hd1240912440_
                                   _tl1241012443_
                                   _e1241112446_
                                   _hd1241212450_
                                   _tl1241312453_)
                                  (let ()
                                    (declare (not safe))
                                    (_g1235512419_)))))
                          (let () (declare (not safe)) (_g1235512419_)))))
                   (___match2308323084_
                    (lambda (_e1238512481_
                             _hd1238612485_
                             _tl1238712488_
                             _e1238812491_
                             _hd1238912495_
                             _tl1239012498_
                             _e1239112501_
                             _hd1239212505_
                             _tl1239312508_
                             ___splice2302123022_
                             _target1239412511_
                             _tl1239612514_)
                      (letrec ((_loop1239712517_
                                (lambda (_hd1239512521_ _body1240112524_)
                                  (if (gx#stx-pair? _hd1239512521_)
                                      (let ((_e1239812527_
                                             (gx#syntax-e _hd1239512521_)))
                                        (let ((_lp-tl1240012534_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1239812527_)))
                                              (_lp-hd1239912531_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1239812527_))))
                                          (_loop1239712517_
                                           _lp-tl1240012534_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1239912531_
                                                   _body1240112524_)))))
                                      (let ((_body1240212537_
                                             (reverse _body1240112524_)))
                                        (let ((_L12541_ _body1240212537_)
                                              (_L12543_ _tl1239312508_)
                                              (_L12544_ _hd1239212505_))
                                          (if (gx#identifier? _L12544_)
                                              (___kont2301923020_
                                               _L12541_
                                               _L12543_
                                               _L12544_)
                                              (___match2309523096_
                                               _e1238512481_
                                               _hd1238612485_
                                               _tl1238712488_
                                               _e1238812491_
                                               _hd1238912495_
                                               _tl1239012498_))))))))
                        (_loop1239712517_ _target1239412511_ '()))))
                   (___match2305723058_
                    (lambda (_e1236112579_
                             _hd1236212583_
                             _tl1236312586_
                             _e1236412589_
                             _hd1236512593_
                             _tl1236612596_
                             _e1236712599_
                             _hd1236812603_
                             _tl1236912606_
                             _e1237012609_
                             _hd1237112613_
                             _tl1237212616_
                             ___splice2301723018_
                             _target1237312619_
                             _tl1237512622_)
                      (letrec ((_loop1237612625_
                                (lambda (_hd1237412629_ _body1238012632_)
                                  (if (gx#stx-pair? _hd1237412629_)
                                      (let ((_e1237712635_
                                             (gx#syntax-e _hd1237412629_)))
                                        (let ((_lp-tl1237912642_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1237712635_)))
                                              (_lp-hd1237812639_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1237712635_))))
                                          (_loop1237612625_
                                           _lp-tl1237912642_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1237812639_
                                                   _body1238012632_)))))
                                      (let ((_body1238112645_
                                             (reverse _body1238012632_)))
                                        (___kont2301523016_
                                         _body1238112645_
                                         _tl1236912606_
                                         _tl1237212616_
                                         _hd1237112613_))))))
                        (_loop1237612625_ _target1237312619_ '())))))
              (if (gx#stx-pair? ___stx2301223013_)
                  (let ((_e1236112579_ (gx#syntax-e ___stx2301223013_)))
                    (let ((_tl1236312586_
                           (let () (declare (not safe)) (##cdr _e1236112579_)))
                          (_hd1236212583_
                           (let ()
                             (declare (not safe))
                             (##car _e1236112579_))))
                      (if (gx#stx-pair? _tl1236312586_)
                          (let ((_e1236412589_ (gx#syntax-e _tl1236312586_)))
                            (let ((_tl1236612596_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1236412589_)))
                                  (_hd1236512593_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1236412589_))))
                              (if (gx#stx-pair? _hd1236512593_)
                                  (let ((_e1236712599_
                                         (gx#syntax-e _hd1236512593_)))
                                    (let ((_tl1236912606_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1236712599_)))
                                          (_hd1236812603_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1236712599_))))
                                      (if (gx#stx-pair? _hd1236812603_)
                                          (let ((_e1237012609_
                                                 (gx#syntax-e _hd1236812603_)))
                                            (let ((_tl1237212616_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1237012609_)))
                                                  (_hd1237112613_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1237012609_))))
                                              (if (gx#stx-pair/null?
                                                   _tl1236612596_)
                                                  (let ((___splice2301723018_
                                                         (gx#syntax-split-splice
                                                          _tl1236612596_
                                                          '0)))
                                                    (let ((_tl1237512622_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice2301723018_
                                                              '1)))
                                                          (_target1237312619_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice2301723018_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl1237512622_)
                                                          (___match2305723058_
                                                           _e1236112579_
                                                           _hd1236212583_
                                                           _tl1236312586_
                                                           _e1236412589_
                                                           _hd1236512593_
                                                           _tl1236612596_
                                                           _e1236712599_
                                                           _hd1236812603_
                                                           _tl1236912606_
                                                           _e1237012609_
                                                           _hd1237112613_
                                                           _tl1237212616_
                                                           ___splice2301723018_
                                                           _target1237312619_
                                                           _tl1237512622_)
                                                          (if (gx#stx-pair?
                                                               _tl1236612596_)
                                                              (let ((_e1241112446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1236612596_)))
                        (let ((_tl1241312453_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1241112446_)))
                              (_hd1241212450_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1241112446_))))
                          (if (gx#stx-null? _tl1241312453_)
                              (___match2310323104_
                               _e1236112579_
                               _hd1236212583_
                               _tl1236312586_
                               _e1236412589_
                               _hd1236512593_
                               _tl1236612596_
                               _e1241112446_
                               _hd1241212450_
                               _tl1241312453_)
                              (let () (declare (not safe)) (_g1235512419_)))))
                      (let () (declare (not safe)) (_g1235512419_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl1236612596_)
                                                      (let ((_e1241112446_
                                                             (gx#syntax-e
                                                              _tl1236612596_)))
                                                        (let ((_tl1241312453_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1241112446_)))
                      (_hd1241212450_
                       (let () (declare (not safe)) (##car _e1241112446_))))
                  (if (gx#stx-null? _tl1241312453_)
                      (___match2310323104_
                       _e1236112579_
                       _hd1236212583_
                       _tl1236312586_
                       _e1236412589_
                       _hd1236512593_
                       _tl1236612596_
                       _e1241112446_
                       _hd1241212450_
                       _tl1241312453_)
                      (let () (declare (not safe)) (_g1235512419_)))))
              (let () (declare (not safe)) (_g1235512419_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl1236612596_)
                                              (let ((___splice2302123022_
                                                     (gx#syntax-split-splice
                                                      _tl1236612596_
                                                      '0)))
                                                (let ((_tl1239612514_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2302123022_
                                                          '1)))
                                                      (_target1239412511_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2302123022_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1239612514_)
                                                      (___match2308323084_
                                                       _e1236112579_
                                                       _hd1236212583_
                                                       _tl1236312586_
                                                       _e1236412589_
                                                       _hd1236512593_
                                                       _tl1236612596_
                                                       _e1236712599_
                                                       _hd1236812603_
                                                       _tl1236912606_
                                                       ___splice2302123022_
                                                       _target1239412511_
                                                       _tl1239612514_)
                                                      (if (gx#stx-pair?
                                                           _tl1236612596_)
                                                          (let ((_e1241112446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1236612596_)))
                    (let ((_tl1241312453_
                           (let () (declare (not safe)) (##cdr _e1241112446_)))
                          (_hd1241212450_
                           (let ()
                             (declare (not safe))
                             (##car _e1241112446_))))
                      (if (gx#stx-null? _tl1241312453_)
                          (___match2310323104_
                           _e1236112579_
                           _hd1236212583_
                           _tl1236312586_
                           _e1236412589_
                           _hd1236512593_
                           _tl1236612596_
                           _e1241112446_
                           _hd1241212450_
                           _tl1241312453_)
                          (let () (declare (not safe)) (_g1235512419_)))))
                  (let () (declare (not safe)) (_g1235512419_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl1236612596_)
                                                  (let ((_e1241112446_
                                                         (gx#syntax-e
                                                          _tl1236612596_)))
                                                    (let ((_tl1241312453_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1241112446_)))
                                                          (_hd1241212450_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1241112446_))))
                                                      (if (gx#stx-null?
                                                           _tl1241312453_)
                                                          (___match2310323104_
                                                           _e1236112579_
                                                           _hd1236212583_
                                                           _tl1236312586_
                                                           _e1236412589_
                                                           _hd1236512593_
                                                           _tl1236612596_
                                                           _e1241112446_
                                                           _hd1241212450_
                                                           _tl1241312453_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g1235512419_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1235512419_)))))))
                                  (if (gx#stx-pair? _tl1236612596_)
                                      (let ((_e1241112446_
                                             (gx#syntax-e _tl1236612596_)))
                                        (let ((_tl1241312453_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1241112446_)))
                                              (_hd1241212450_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1241112446_))))
                                          (if (gx#stx-null? _tl1241312453_)
                                              (___match2310323104_
                                               _e1236112579_
                                               _hd1236212583_
                                               _tl1236312586_
                                               _e1236412589_
                                               _hd1236512593_
                                               _tl1236612596_
                                               _e1241112446_
                                               _hd1241212450_
                                               _tl1241312453_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1235512419_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1235512419_))))))
                          (let () (declare (not safe)) (_g1235512419_)))))
                  (let () (declare (not safe)) (_g1235512419_))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#def*|
      (lambda (_$stx12690_)
        (let* ((_g1269412718_
                (lambda (_g1269512714_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1269512714_)))
               (_g1269312803_
                (lambda (_g1269512722_)
                  (if (gx#stx-pair? _g1269512722_)
                      (let ((_e1269812725_ (gx#syntax-e _g1269512722_)))
                        (let ((_hd1269912729_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1269812725_)))
                              (_tl1270012732_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1269812725_))))
                          (if (gx#stx-pair? _tl1270012732_)
                              (let ((_e1270112735_
                                     (gx#syntax-e _tl1270012732_)))
                                (let ((_hd1270212739_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1270112735_)))
                                      (_tl1270312742_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1270112735_))))
                                  (if (gx#stx-pair/null? _tl1270312742_)
                                      (let ((_g24765_
                                             (gx#syntax-split-splice
                                              _tl1270312742_
                                              '0)))
                                        (begin
                                          (let ((_g24766_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g24765_)
                                                       (##vector-length
                                                        _g24765_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g24766_ 2)))
                                                (error "Context expects 2 values"
                                                       _g24766_)))
                                          (let ((_target1270412745_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24765_ 0)))
                                                (_tl1270612748_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24765_ 1))))
                                            (if (gx#stx-null? _tl1270612748_)
                                                (letrec ((_loop1270712751_
                                                          (lambda (_hd1270512755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clauses1271112758_)
                    (if (gx#stx-pair? _hd1270512755_)
                        (let ((_e1270812761_ (gx#syntax-e _hd1270512755_)))
                          (let ((_lp-hd1270912765_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1270812761_)))
                                (_lp-tl1271012768_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1270812761_))))
                            (_loop1270712751_
                             _lp-tl1271012768_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1270912765_ _clauses1271112758_)))))
                        (let ((_clauses1271212771_
                               (reverse _clauses1271112758_)))
                          ((lambda (_L12775_ _L12777_)
                             (if (gx#identifier? _L12777_)
                                 (let ((__tmp24773
                                        (gx#datum->syntax '#f 'define-values))
                                       (__tmp24767
                                        (let ((__tmp24772
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L12777_ '())))
                                              (__tmp24768
                                               (let ((__tmp24769
                                                      (let ((__tmp24771
                                                             (gx#datum->syntax
                                                              '#f
                                                              'case-lambda))
                                                            (__tmp24770
                                                             (foldr (lambda (_g1279412797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1279512800_)
                              (let ()
                                (declare (not safe))
                                (cons _g1279412797_ _g1279512800_)))
                            '()
                            _L12775_)))
                (declare (not safe))
                (cons __tmp24771 __tmp24770))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24769 '()))))
                                          (declare (not safe))
                                          (cons __tmp24772 __tmp24768))))
                                   (declare (not safe))
                                   (cons __tmp24773 __tmp24767))
                                 (_g1269412718_ _g1269512722_)))
                           _clauses1271212771_
                           _hd1270212739_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1270712751_
                                                   _target1270412745_
                                                   '()))
                                                (_g1269412718_
                                                 _g1269512722_)))))
                                      (_g1269412718_ _g1269512722_))))
                              (_g1269412718_ _g1269512722_))))
                      (_g1269412718_ _g1269512722_)))))
          (_g1269312803_ _$stx12690_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#defvalues|
      (lambda (_$stx12808_)
        (let* ((_g1281212830_
                (lambda (_g1281312826_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1281312826_)))
               (_g1281112885_
                (lambda (_g1281312834_)
                  (if (gx#stx-pair? _g1281312834_)
                      (let ((_e1281612837_ (gx#syntax-e _g1281312834_)))
                        (let ((_hd1281712841_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1281612837_)))
                              (_tl1281812844_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1281612837_))))
                          (if (gx#stx-pair? _tl1281812844_)
                              (let ((_e1281912847_
                                     (gx#syntax-e _tl1281812844_)))
                                (let ((_hd1282012851_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1281912847_)))
                                      (_tl1282112854_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1281912847_))))
                                  (if (gx#stx-pair? _tl1282112854_)
                                      (let ((_e1282212857_
                                             (gx#syntax-e _tl1282112854_)))
                                        (let ((_hd1282312861_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1282212857_)))
                                              (_tl1282412864_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1282212857_))))
                                          (if (gx#stx-null? _tl1282412864_)
                                              ((lambda (_L12867_ _L12869_)
                                                 (if (gx#identifier-list?
                                                      _L12869_)
                                                     (let ((__tmp24776
                                                            (gx#datum->syntax
                                                             '#f
                                                             'define-values))
                                                           (__tmp24774
                                                            (let ((__tmp24775
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L12867_ '()))))
                      (declare (not safe))
                      (cons _L12869_ __tmp24775))))
               (declare (not safe))
               (cons __tmp24776 __tmp24774))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1281212830_
                                                      _g1281312834_)))
                                               _hd1282312861_
                                               _hd1282012851_)
                                              (_g1281212830_ _g1281312834_))))
                                      (_g1281212830_ _g1281312834_))))
                              (_g1281212830_ _g1281312834_))))
                      (_g1281212830_ _g1281312834_)))))
          (_g1281112885_ _$stx12808_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#case|
      (lambda (_$stx12889_)
        (let* ((_g1289312917_
                (lambda (_g1289412913_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1289412913_)))
               (_g1289213002_
                (lambda (_g1289412921_)
                  (if (gx#stx-pair? _g1289412921_)
                      (let ((_e1289712924_ (gx#syntax-e _g1289412921_)))
                        (let ((_hd1289812928_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1289712924_)))
                              (_tl1289912931_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1289712924_))))
                          (if (gx#stx-pair? _tl1289912931_)
                              (let ((_e1290012934_
                                     (gx#syntax-e _tl1289912931_)))
                                (let ((_hd1290112938_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1290012934_)))
                                      (_tl1290212941_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1290012934_))))
                                  (if (gx#stx-pair/null? _tl1290212941_)
                                      (let ((_g24777_
                                             (gx#syntax-split-splice
                                              _tl1290212941_
                                              '0)))
                                        (begin
                                          (let ((_g24778_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g24777_)
                                                       (##vector-length
                                                        _g24777_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g24778_ 2)))
                                                (error "Context expects 2 values"
                                                       _g24778_)))
                                          (let ((_target1290312944_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24777_ 0)))
                                                (_tl1290512947_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24777_ 1))))
                                            (if (gx#stx-null? _tl1290512947_)
                                                (letrec ((_loop1290612950_
                                                          (lambda (_hd1290412954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause1291012957_)
                    (if (gx#stx-pair? _hd1290412954_)
                        (let ((_e1290712960_ (gx#syntax-e _hd1290412954_)))
                          (let ((_lp-hd1290812964_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1290712960_)))
                                (_lp-tl1290912967_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1290712960_))))
                            (_loop1290612950_
                             _lp-tl1290912967_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1290812964_ _clause1291012957_)))))
                        (let ((_clause1291112970_
                               (reverse _clause1291012957_)))
                          ((lambda (_L12974_ _L12976_)
                             (let ((__tmp24789 (gx#datum->syntax '#f 'let))
                                   (__tmp24779
                                    (let ((__tmp24786
                                           (let ((__tmp24788
                                                  (gx#datum->syntax '#f '$e))
                                                 (__tmp24787
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L12976_ '()))))
                                             (declare (not safe))
                                             (cons __tmp24788 __tmp24787)))
                                          (__tmp24780
                                           (let ((__tmp24781
                                                  (let ((__tmp24785
                                                         (gx#datum->syntax
                                                          '#f
                                                          '~case))
                                                        (__tmp24782
                                                         (let ((__tmp24784
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$e))
                       (__tmp24783
                        (foldr (lambda (_g1299312996_ _g1299412999_)
                                 (let ()
                                   (declare (not safe))
                                   (cons _g1299312996_ _g1299412999_)))
                               '()
                               _L12974_)))
                   (declare (not safe))
                   (cons __tmp24784 __tmp24783))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24785
                                                          __tmp24782))))
                                             (declare (not safe))
                                             (cons __tmp24781 '()))))
                                      (declare (not safe))
                                      (cons __tmp24786 __tmp24780))))
                               (declare (not safe))
                               (cons __tmp24789 __tmp24779)))
                           _clause1291112970_
                           _hd1290112938_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1290612950_
                                                   _target1290312944_
                                                   '()))
                                                (_g1289312917_
                                                 _g1289412921_)))))
                                      (_g1289312917_ _g1289412921_))))
                              (_g1289312917_ _g1289412921_))))
                      (_g1289312917_ _g1289412921_)))))
          (_g1289213002_ _$stx12889_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#~case|
      (lambda (_stx13007_)
        (letrec ((_parse-clauses13010_
                  (lambda (_e15473_ _clauses15475_)
                    (let _lp15477_ ((_rest15480_ _clauses15475_)
                                    (_datums15482_ '())
                                    (_dispatch15483_ '())
                                    (_default15484_ '#f))
                      (let* ((___stx2320223203_ _rest15480_)
                             (_g1548715499_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2320223203_))))
                        (let ((___kont2320523206_
                               (lambda (_L15531_ _L15533_)
                                 (let* ((___stx2310623107_ _L15533_)
                                        (_g1555115624_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2310623107_))))
                                   (let ((___kont2310923110_
                                          (lambda (_L15989_)
                                            (if (gx#stx-null? _L15531_)
                                                (let* ((_g1600416012_
                                                        (lambda (_g1600516008_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g1600516008_)))
                                                       (_g1600316031_
                                                        (lambda (_g1600516016_)
                                                          ((lambda (_L16019_)
                                                             (let ()
                                                               (_lp15477_
                                                                '()
                                                                _datums15482_
                                                                _dispatch15483_
                                                                (let ((__tmp24790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L16019_ '()))))
                          (declare (not safe))
                          (cons _L15989_ __tmp24790)))))
                   _g1600516016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1600316031_ _e15473_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _stx13007_
                                                 _L15533_))))
                                         (___kont2311123112_
                                          (lambda (_L15929_)
                                            (if (gx#stx-null? _L15531_)
                                                (_lp15477_
                                                 '()
                                                 _datums15482_
                                                 _dispatch15483_
                                                 (let ((__tmp24792
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin))
                                                       (__tmp24791
                                                        (foldr (lambda (_g1594315946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1594415949_)
                         (let ()
                           (declare (not safe))
                           (cons _g1594315946_ _g1594415949_)))
                       '()
                       _L15929_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24792
                                                         __tmp24791)))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _stx13007_
                                                 _L15533_))))
                                         (___kont2311523116_
                                          (lambda (_L15814_ _L15816_)
                                            (if (let ((__tmp24793
                                                       (foldr (lambda (_g1583415837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1583515840_)
                        (let ()
                          (declare (not safe))
                          (cons _g1583415837_ _g1583515840_)))
                      '()
                      _L15816_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (null? __tmp24793))
                                                (_lp15477_
                                                 _L15531_
                                                 _datums15482_
                                                 _dispatch15483_
                                                 _default15484_)
                                                (let* ((_g1584315851_
                                                        (lambda (_g1584415847_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g1584415847_)))
                                                       (_g1584215878_
                                                        (lambda (_g1584415855_)
                                                          ((lambda (_L15858_)
                                                             (let ()
                                                               (_lp15477_
                                                                _L15531_
                                                                (let ((__tmp24794
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (map gx#stx-e
                                    (foldr (lambda (_g1586915872_
                                                    _g1587015875_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g1586915872_
                                                     _g1587015875_)))
                                           '()
                                           _L15816_))))
                          (declare (not safe))
                          (cons __tmp24794 _datums15482_))
                        (let ((__tmp24795
                               (let ((__tmp24796
                                      (let ()
                                        (declare (not safe))
                                        (cons _L15858_ '()))))
                                 (declare (not safe))
                                 (cons _L15814_ __tmp24796))))
                          (declare (not safe))
                          (cons __tmp24795 _dispatch15483_))
                        _default15484_)))
                   _g1584415855_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1584215878_ _e15473_)))))
                                         (___kont2311923120_
                                          (lambda (_L15701_ _L15703_)
                                            (if (let ((__tmp24797
                                                       (foldr (lambda (_g1572215725_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1572315728_)
                        (let ()
                          (declare (not safe))
                          (cons _g1572215725_ _g1572315728_)))
                      '()
                      _L15703_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (null? __tmp24797))
                                                (_lp15477_
                                                 _L15531_
                                                 _datums15482_
                                                 _dispatch15483_
                                                 _default15484_)
                                                (_lp15477_
                                                 _L15531_
                                                 (let ((__tmp24798
                                                        (map gx#stx-e
                                                             (foldr (lambda (_g1573015733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1573115736_)
                              (let ()
                                (declare (not safe))
                                (cons _g1573015733_ _g1573115736_)))
                            '()
                            _L15703_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24798
                                                         _datums15482_))
                                                 (let ((__tmp24799
                                                        (let ((__tmp24801
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp24800
                                                               (foldr (lambda (_g1573815741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1573915744_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g1573815741_ _g1573915744_)))
                              '()
                              _L15701_)))
                  (declare (not safe))
                  (cons __tmp24801 __tmp24800))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24799
                                                         _dispatch15483_))
                                                 _default15484_)))))
                                     (let* ((___match2319923200_
                                             (lambda (_e1559815631_
                                                      _hd1559915635_
                                                      _tl1560015638_
                                                      ___splice2312123122_
                                                      _target1560115641_
                                                      _tl1560315644_)
                                               (letrec ((_loop1560415647_
                                                         (lambda (_hd1560215651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1560815654_)
                   (if (gx#stx-pair? _hd1560215651_)
                       (let ((_e1560515657_ (gx#syntax-e _hd1560215651_)))
                         (let ((_lp-tl1560715664_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1560515657_)))
                               (_lp-hd1560615661_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1560515657_))))
                           (_loop1560415647_
                            _lp-tl1560715664_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd1560615661_ _datum1560815654_)))))
                       (let ((_datum1560915667_ (reverse _datum1560815654_)))
                         (if (gx#stx-pair/null? _tl1560015638_)
                             (let ((___splice2312323124_
                                    (gx#syntax-split-splice
                                     _tl1560015638_
                                     '0)))
                               (let ((_tl1561215674_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         ___splice2312323124_
                                         '1)))
                                     (_target1561015671_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         ___splice2312323124_
                                         '0))))
                                 (if (gx#stx-null? _tl1561215674_)
                                     (letrec ((_loop1561315677_
                                               (lambda (_hd1561115681_
                                                        _body1561715684_)
                                                 (if (gx#stx-pair?
                                                      _hd1561115681_)
                                                     (let ((_e1561415687_
                                                            (gx#syntax-e
                                                             _hd1561115681_)))
                                                       (let ((_lp-tl1561615694_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e1561415687_)))
                     (_lp-hd1561515691_
                      (let () (declare (not safe)) (##car _e1561415687_))))
                 (_loop1561315677_
                  _lp-tl1561615694_
                  (let ()
                    (declare (not safe))
                    (cons _lp-hd1561515691_ _body1561715684_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_body1561815697_
                                                            (reverse _body1561715684_)))
                                                       (___kont2311923120_
                                                        _body1561815697_
                                                        _datum1560915667_))))))
                                       (_loop1561315677_
                                        _target1561015671_
                                        '()))
                                     (let ()
                                       (declare (not safe))
                                       (_g1555115624_)))))
                             (let ()
                               (declare (not safe))
                               (_g1555115624_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1560415647_
                                                  _target1560115641_
                                                  '()))))
                                            (___match2318523186_
                                             (lambda (_e1557815754_
                                                      _hd1557915758_
                                                      _tl1558015761_
                                                      ___splice2311723118_
                                                      _target1558115764_
                                                      _tl1558315767_)
                                               (letrec ((_loop1558415770_
                                                         (lambda (_hd1558215774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1558815777_)
                   (if (gx#stx-pair? _hd1558215774_)
                       (let ((_e1558515780_ (gx#syntax-e _hd1558215774_)))
                         (let ((_lp-tl1558715787_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1558515780_)))
                               (_lp-hd1558615784_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1558515780_))))
                           (_loop1558415770_
                            _lp-tl1558715787_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd1558615784_ _datum1558815777_)))))
                       (let ((_datum1558915790_ (reverse _datum1558815777_)))
                         (if (gx#stx-pair? _tl1558015761_)
                             (let ((_e1559015794_
                                    (gx#syntax-e _tl1558015761_)))
                               (let ((_tl1559215801_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1559015794_)))
                                     (_hd1559115798_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1559015794_))))
                                 (if (gx#identifier? _hd1559115798_)
                                     (if (gx#free-identifier=?
                                          |gerbil/core/sugar$<sugar:2>[1]#_g24802_|
                                          _hd1559115798_)
                                         (if (gx#stx-pair? _tl1559215801_)
                                             (let ((_e1559315804_
                                                    (gx#syntax-e
                                                     _tl1559215801_)))
                                               (let ((_tl1559515811_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1559315804_)))
                                                     (_hd1559415808_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1559315804_))))
                                                 (if (gx#stx-null?
                                                      _tl1559515811_)
                                                     (___kont2311523116_
                                                      _hd1559415808_
                                                      _datum1558915790_)
                                                     (___match2319923200_
                                                      _e1557815754_
                                                      _hd1557915758_
                                                      _tl1558015761_
                                                      ___splice2311723118_
                                                      _target1558115764_
                                                      _tl1558315767_))))
                                             (___match2319923200_
                                              _e1557815754_
                                              _hd1557915758_
                                              _tl1558015761_
                                              ___splice2311723118_
                                              _target1558115764_
                                              _tl1558315767_))
                                         (___match2319923200_
                                          _e1557815754_
                                          _hd1557915758_
                                          _tl1558015761_
                                          ___splice2311723118_
                                          _target1558115764_
                                          _tl1558315767_))
                                     (___match2319923200_
                                      _e1557815754_
                                      _hd1557915758_
                                      _tl1558015761_
                                      ___splice2311723118_
                                      _target1558115764_
                                      _tl1558315767_))))
                             (___match2319923200_
                              _e1557815754_
                              _hd1557915758_
                              _tl1558015761_
                              ___splice2311723118_
                              _target1558115764_
                              _tl1558315767_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1558415770_
                                                  _target1558115764_
                                                  '()))))
                                            (___match2317123172_
                                             (lambda (_e1556415889_
                                                      _hd1556515893_
                                                      _tl1556615896_
                                                      ___splice2311323114_
                                                      _target1556715899_
                                                      _tl1556915902_)
                                               (letrec ((_loop1557015905_
                                                         (lambda (_hd1556815909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body1557415912_)
                   (if (gx#stx-pair? _hd1556815909_)
                       (let ((_e1557115915_ (gx#syntax-e _hd1556815909_)))
                         (let ((_lp-tl1557315922_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1557115915_)))
                               (_lp-hd1557215919_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1557115915_))))
                           (_loop1557015905_
                            _lp-tl1557315922_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd1557215919_ _body1557415912_)))))
                       (let ((_body1557515925_ (reverse _body1557415912_)))
                         (___kont2311123112_ _body1557515925_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1557015905_
                                                  _target1556715899_
                                                  '())))))
                                       (if (gx#stx-pair? ___stx2310623107_)
                                           (let ((_e1555415959_
                                                  (gx#syntax-e
                                                   ___stx2310623107_)))
                                             (let ((_tl1555615966_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e1555415959_)))
                                                   (_hd1555515963_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e1555415959_))))
                                               (if (gx#identifier?
                                                    _hd1555515963_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/sugar$<sugar:2>[1]#_g24803_|
                                                        _hd1555515963_)
                                                       (if (gx#stx-pair?
                                                            _tl1555615966_)
                                                           (let ((_e1555715969_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1555615966_)))
                     (let ((_tl1555915976_
                            (let ()
                              (declare (not safe))
                              (##cdr _e1555715969_)))
                           (_hd1555815973_
                            (let ()
                              (declare (not safe))
                              (##car _e1555715969_))))
                       (if (gx#identifier? _hd1555815973_)
                           (if (gx#free-identifier=?
                                |gerbil/core/sugar$<sugar:2>[1]#_g24804_|
                                _hd1555815973_)
                               (if (gx#stx-pair? _tl1555915976_)
                                   (let ((_e1556015979_
                                          (gx#syntax-e _tl1555915976_)))
                                     (let ((_tl1556215986_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e1556015979_)))
                                           (_hd1556115983_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e1556015979_))))
                                       (if (gx#stx-null? _tl1556215986_)
                                           (___kont2310923110_ _hd1556115983_)
                                           (if (gx#stx-pair/null?
                                                _tl1555615966_)
                                               (let ((___splice2311323114_
                                                      (gx#syntax-split-splice
                                                       _tl1555615966_
                                                       '0)))
                                                 (let ((_tl1556915902_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice2311323114_
                                                           '1)))
                                                       (_target1556715899_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice2311323114_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _tl1556915902_)
                                                       (___match2317123172_
                                                        _e1555415959_
                                                        _hd1555515963_
                                                        _tl1555615966_
                                                        ___splice2311323114_
                                                        _target1556715899_
                                                        _tl1556915902_)
                                                       (if (gx#stx-pair/null?
                                                            _hd1555515963_)
                                                           (let ((___splice2311723118_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _hd1555515963_ '0)))
                     (let ((_tl1558315767_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice2311723118_ '1)))
                           (_target1558115764_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice2311723118_ '0))))
                       (if (gx#stx-null? _tl1558315767_)
                           (___match2318523186_
                            _e1555415959_
                            _hd1555515963_
                            _tl1555615966_
                            ___splice2311723118_
                            _target1558115764_
                            _tl1558315767_)
                           (let () (declare (not safe)) (_g1555115624_)))))
                   (let () (declare (not safe)) (_g1555115624_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _hd1555515963_)
                                                   (let ((___splice2311723118_
                                                          (gx#syntax-split-splice
                                                           _hd1555515963_
                                                           '0)))
                                                     (let ((_tl1558315767_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice2311723118_
                                                               '1)))
                                                           (_target1558115764_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice2311723118_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _tl1558315767_)
                                                           (___match2318523186_
                                                            _e1555415959_
                                                            _hd1555515963_
                                                            _tl1555615966_
                                                            ___splice2311723118_
                                                            _target1558115764_
                                                            _tl1558315767_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_g1555115624_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1555115624_)))))))
                                   (if (gx#stx-pair/null? _tl1555615966_)
                                       (let ((___splice2311323114_
                                              (gx#syntax-split-splice
                                               _tl1555615966_
                                               '0)))
                                         (let ((_tl1556915902_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice2311323114_
                                                   '1)))
                                               (_target1556715899_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice2311323114_
                                                   '0))))
                                           (if (gx#stx-null? _tl1556915902_)
                                               (___match2317123172_
                                                _e1555415959_
                                                _hd1555515963_
                                                _tl1555615966_
                                                ___splice2311323114_
                                                _target1556715899_
                                                _tl1556915902_)
                                               (if (gx#stx-pair/null?
                                                    _hd1555515963_)
                                                   (let ((___splice2311723118_
                                                          (gx#syntax-split-splice
                                                           _hd1555515963_
                                                           '0)))
                                                     (let ((_tl1558315767_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice2311723118_
                                                               '1)))
                                                           (_target1558115764_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice2311723118_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _tl1558315767_)
                                                           (___match2318523186_
                                                            _e1555415959_
                                                            _hd1555515963_
                                                            _tl1555615966_
                                                            ___splice2311723118_
                                                            _target1558115764_
                                                            _tl1558315767_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_g1555115624_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1555115624_))))))
                                       (if (gx#stx-pair/null? _hd1555515963_)
                                           (let ((___splice2311723118_
                                                  (gx#syntax-split-splice
                                                   _hd1555515963_
                                                   '0)))
                                             (let ((_tl1558315767_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice2311723118_
                                                       '1)))
                                                   (_target1558115764_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice2311723118_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _tl1558315767_)
                                                   (___match2318523186_
                                                    _e1555415959_
                                                    _hd1555515963_
                                                    _tl1555615966_
                                                    ___splice2311723118_
                                                    _target1558115764_
                                                    _tl1558315767_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1555115624_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g1555115624_)))))
                               (if (gx#stx-pair/null? _tl1555615966_)
                                   (let ((___splice2311323114_
                                          (gx#syntax-split-splice
                                           _tl1555615966_
                                           '0)))
                                     (let ((_tl1556915902_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2311323114_
                                               '1)))
                                           (_target1556715899_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2311323114_
                                               '0))))
                                       (if (gx#stx-null? _tl1556915902_)
                                           (___match2317123172_
                                            _e1555415959_
                                            _hd1555515963_
                                            _tl1555615966_
                                            ___splice2311323114_
                                            _target1556715899_
                                            _tl1556915902_)
                                           (if (gx#stx-pair/null?
                                                _hd1555515963_)
                                               (let ((___splice2311723118_
                                                      (gx#syntax-split-splice
                                                       _hd1555515963_
                                                       '0)))
                                                 (let ((_tl1558315767_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice2311723118_
                                                           '1)))
                                                       (_target1558115764_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice2311723118_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _tl1558315767_)
                                                       (___match2318523186_
                                                        _e1555415959_
                                                        _hd1555515963_
                                                        _tl1555615966_
                                                        ___splice2311723118_
                                                        _target1558115764_
                                                        _tl1558315767_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_g1555115624_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g1555115624_))))))
                                   (if (gx#stx-pair/null? _hd1555515963_)
                                       (let ((___splice2311723118_
                                              (gx#syntax-split-splice
                                               _hd1555515963_
                                               '0)))
                                         (let ((_tl1558315767_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice2311723118_
                                                   '1)))
                                               (_target1558115764_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice2311723118_
                                                   '0))))
                                           (if (gx#stx-null? _tl1558315767_)
                                               (___match2318523186_
                                                _e1555415959_
                                                _hd1555515963_
                                                _tl1555615966_
                                                ___splice2311723118_
                                                _target1558115764_
                                                _tl1558315767_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_g1555115624_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g1555115624_)))))
                           (if (gx#stx-pair/null? _tl1555615966_)
                               (let ((___splice2311323114_
                                      (gx#syntax-split-splice
                                       _tl1555615966_
                                       '0)))
                                 (let ((_tl1556915902_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice2311323114_
                                           '1)))
                                       (_target1556715899_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice2311323114_
                                           '0))))
                                   (if (gx#stx-null? _tl1556915902_)
                                       (___match2317123172_
                                        _e1555415959_
                                        _hd1555515963_
                                        _tl1555615966_
                                        ___splice2311323114_
                                        _target1556715899_
                                        _tl1556915902_)
                                       (if (gx#stx-pair/null? _hd1555515963_)
                                           (let ((___splice2311723118_
                                                  (gx#syntax-split-splice
                                                   _hd1555515963_
                                                   '0)))
                                             (let ((_tl1558315767_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice2311723118_
                                                       '1)))
                                                   (_target1558115764_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice2311723118_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _tl1558315767_)
                                                   (___match2318523186_
                                                    _e1555415959_
                                                    _hd1555515963_
                                                    _tl1555615966_
                                                    ___splice2311723118_
                                                    _target1558115764_
                                                    _tl1558315767_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1555115624_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g1555115624_))))))
                               (if (gx#stx-pair/null? _hd1555515963_)
                                   (let ((___splice2311723118_
                                          (gx#syntax-split-splice
                                           _hd1555515963_
                                           '0)))
                                     (let ((_tl1558315767_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2311723118_
                                               '1)))
                                           (_target1558115764_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2311723118_
                                               '0))))
                                       (if (gx#stx-null? _tl1558315767_)
                                           (___match2318523186_
                                            _e1555415959_
                                            _hd1555515963_
                                            _tl1555615966_
                                            ___splice2311723118_
                                            _target1558115764_
                                            _tl1558315767_)
                                           (let ()
                                             (declare (not safe))
                                             (_g1555115624_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g1555115624_)))))))
                   (if (gx#stx-pair/null? _tl1555615966_)
                       (let ((___splice2311323114_
                              (gx#syntax-split-splice _tl1555615966_ '0)))
                         (let ((_tl1556915902_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice2311323114_ '1)))
                               (_target1556715899_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice2311323114_ '0))))
                           (if (gx#stx-null? _tl1556915902_)
                               (___match2317123172_
                                _e1555415959_
                                _hd1555515963_
                                _tl1555615966_
                                ___splice2311323114_
                                _target1556715899_
                                _tl1556915902_)
                               (if (gx#stx-pair/null? _hd1555515963_)
                                   (let ((___splice2311723118_
                                          (gx#syntax-split-splice
                                           _hd1555515963_
                                           '0)))
                                     (let ((_tl1558315767_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2311723118_
                                               '1)))
                                           (_target1558115764_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2311723118_
                                               '0))))
                                       (if (gx#stx-null? _tl1558315767_)
                                           (___match2318523186_
                                            _e1555415959_
                                            _hd1555515963_
                                            _tl1555615966_
                                            ___splice2311723118_
                                            _target1558115764_
                                            _tl1558315767_)
                                           (let ()
                                             (declare (not safe))
                                             (_g1555115624_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g1555115624_))))))
                       (if (gx#stx-pair/null? _hd1555515963_)
                           (let ((___splice2311723118_
                                  (gx#syntax-split-splice _hd1555515963_ '0)))
                             (let ((_tl1558315767_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref ___splice2311723118_ '1)))
                                   (_target1558115764_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref ___splice2311723118_ '0))))
                               (if (gx#stx-null? _tl1558315767_)
                                   (___match2318523186_
                                    _e1555415959_
                                    _hd1555515963_
                                    _tl1555615966_
                                    ___splice2311723118_
                                    _target1558115764_
                                    _tl1558315767_)
                                   (let ()
                                     (declare (not safe))
                                     (_g1555115624_)))))
                           (let () (declare (not safe)) (_g1555115624_)))))
               (if (gx#stx-pair/null? _hd1555515963_)
                   (let ((___splice2311723118_
                          (gx#syntax-split-splice _hd1555515963_ '0)))
                     (let ((_tl1558315767_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice2311723118_ '1)))
                           (_target1558115764_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice2311723118_ '0))))
                       (if (gx#stx-null? _tl1558315767_)
                           (___match2318523186_
                            _e1555415959_
                            _hd1555515963_
                            _tl1555615966_
                            ___splice2311723118_
                            _target1558115764_
                            _tl1558315767_)
                           (let () (declare (not safe)) (_g1555115624_)))))
                   (let () (declare (not safe)) (_g1555115624_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _hd1555515963_)
                                                       (let ((___splice2311723118_
                                                              (gx#syntax-split-splice
                                                               _hd1555515963_
                                                               '0)))
                                                         (let ((_tl1558315767_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref ___splice2311723118_ '1)))
                       (_target1558115764_
                        (let ()
                          (declare (not safe))
                          (##vector-ref ___splice2311723118_ '0))))
                   (if (gx#stx-null? _tl1558315767_)
                       (___match2318523186_
                        _e1555415959_
                        _hd1555515963_
                        _tl1555615966_
                        ___splice2311723118_
                        _target1558115764_
                        _tl1558315767_)
                       (let () (declare (not safe)) (_g1555115624_)))))
               (let () (declare (not safe)) (_g1555115624_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g1555115624_))))))))
                              (___kont2320723208_
                               (lambda ()
                                 (_check-duplicate-datums13012_ _datums15482_)
                                 (values (reverse _datums15482_)
                                         (reverse _dispatch15483_)
                                         (let ((_$e15510_ _default15484_))
                                           (if _$e15510_
                                               _$e15510_
                                               '#!void))))))
                          (let ((_g1548615514_
                                 (lambda ()
                                   (if (gx#stx-null? ___stx2320223203_)
                                       (___kont2320723208_)
                                       (let ()
                                         (declare (not safe))
                                         (_g1548715499_))))))
                            (if (gx#stx-pair? ___stx2320223203_)
                                (let ((_e1549115521_
                                       (gx#syntax-e ___stx2320223203_)))
                                  (let ((_tl1549315528_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1549115521_)))
                                        (_hd1549215525_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1549115521_))))
                                    (___kont2320523206_
                                     _tl1549315528_
                                     _hd1549215525_)))
                                (let ()
                                  (declare (not safe))
                                  (_g1548615514_)))))))))
                 (_check-duplicate-datums13012_
                  (lambda (_datums15461_)
                    (let ((_ht15464_ (make-hash-table)))
                      (for-each
                       (lambda (_lst15467_)
                         (for-each
                          (lambda (_datum15470_)
                            (if (hash-get _ht15464_ _datum15470_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _stx13007_
                                 _datum15470_)
                                (hash-put! _ht15464_ _datum15470_ '#t)))
                          _lst15467_))
                       _datums15461_))))
                 (_count-datums13013_
                  (lambda (_datums15454_)
                    (foldl (lambda (_lst15457_ _r15459_)
                             (+ (length _lst15457_) _r15459_))
                           '0
                           _datums15454_)))
                 (_symbolic-datums?13014_
                  (lambda (_datums15448_)
                    (andmap (lambda (_lst15451_) (andmap symbol? _lst15451_))
                            _datums15448_)))
                 (_char-datums?13015_
                  (lambda (_datums15442_)
                    (andmap (lambda (_lst15445_) (andmap char? _lst15445_))
                            _datums15442_)))
                 (_fixnum-datums?13016_
                  (lambda (_datums15436_)
                    (andmap (lambda (_lst15439_) (andmap fixnum? _lst15439_))
                            _datums15436_)))
                 (_eq-datums?13017_
                  (lambda (_datums15419_)
                    (andmap (lambda (_lst15422_)
                              (andmap (lambda (_x15425_)
                                        (let ((_$e15428_
                                               (let ()
                                                 (declare (not safe))
                                                 (symbol? _x15425_))))
                                          (if _$e15428_
                                              _$e15428_
                                              (let ((_$e15432_
                                                     (keyword? _x15425_)))
                                                (if _$e15432_
                                                    _$e15432_
                                                    (let ()
                                                      (declare (not safe))
                                                      (immediate?
                                                       _x15425_)))))))
                                      _lst15422_))
                            _datums15419_)))
                 (_generate-simple-case13018_
                  (lambda (_e15183_
                           _datums15185_
                           _dispatch15186_
                           _default15187_)
                    (let* ((_g1518915197_
                            (lambda (_g1519015193_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g1519015193_)))
                           (_g1518815415_
                            (lambda (_g1519015201_)
                              ((lambda (_L15204_)
                                 (let ()
                                   (let _recur15216_ ((_datums15219_
                                                       _datums15185_)
                                                      (_dispatch15221_
                                                       _dispatch15186_))
                                     (let* ((___stx2322023221_ _datums15219_)
                                            (_g1522415245_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx2322023221_))))
                                       (let ((___kont2322323224_
                                              (lambda (_L15303_ _L15305_)
                                                (let* ((_g1532515337_
                                                        (lambda (_g1532615333_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g1532615333_)))
                                                       (_g1532415407_
                                                        (lambda (_g1532615341_)
                                                          (if (gx#stx-pair?
                                                               _g1532615341_)
                                                              (let ((_e1532915344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g1532615341_)))
                        (let ((_hd1533015348_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1532915344_)))
                              (_tl1533115351_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1532915344_))))
                          ((lambda (_L15354_ _L15356_)
                             (let* ((_g1536815376_
                                     (lambda (_g1536915372_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g1536915372_)))
                                    (_g1536715403_
                                     (lambda (_g1536915380_)
                                       ((lambda (_L15383_)
                                          (let ()
                                            (let ((__tmp24815
                                                   (gx#datum->syntax '#f 'if))
                                                  (__tmp24805
                                                   (let ((__tmp24808
                                                          (let ((__tmp24814
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'or))
                        (__tmp24809
                         (foldr (lambda (_g1539415397_ _g1539515400_)
                                  (let ((__tmp24810
                                         (let ((__tmp24813
                                                (gx#datum->syntax
                                                 '#f
                                                 '~case-test))
                                               (__tmp24811
                                                (let ((__tmp24812
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L15204_ '()))))
                                                  (declare (not safe))
                                                  (cons _g1539415397_
                                                        __tmp24812))))
                                           (declare (not safe))
                                           (cons __tmp24813 __tmp24811))))
                                    (declare (not safe))
                                    (cons __tmp24810 _g1539515400_)))
                                '()
                                _L15305_)))
                    (declare (not safe))
                    (cons __tmp24814 __tmp24809)))
                 (__tmp24806
                  (let ((__tmp24807
                         (let () (declare (not safe)) (cons _L15383_ '()))))
                    (declare (not safe))
                    (cons _L15356_ __tmp24807))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp24808
                                                           __tmp24806))))
                                              (declare (not safe))
                                              (cons __tmp24815 __tmp24805))))
                                        _g1536915380_))))
                               (_g1536715403_
                                (_recur15216_ _L15303_ _L15354_))))
                           _tl1533115351_
                           _hd1533015348_)))
                      (_g1532515337_ _g1532615341_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1532415407_
                                                   _dispatch15221_))))
                                             (___kont2322723228_
                                              (lambda () _default15187_)))
                                         (let ((___match2324323244_
                                                (lambda (_e1522815263_
                                                         _hd1522915267_
                                                         _tl1523015270_
                                                         ___splice2322523226_
                                                         _target1523115273_
                                                         _tl1523315276_)
                                                  (letrec ((_loop1523415279_
                                                            (lambda (_hd1523215283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _datum1523815286_)
                      (if (gx#stx-pair? _hd1523215283_)
                          (let ((_e1523515289_ (gx#syntax-e _hd1523215283_)))
                            (let ((_lp-tl1523715296_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1523515289_)))
                                  (_lp-hd1523615293_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1523515289_))))
                              (_loop1523415279_
                               _lp-tl1523715296_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd1523615293_ _datum1523815286_)))))
                          (let ((_datum1523915299_
                                 (reverse _datum1523815286_)))
                            (___kont2322323224_
                             _tl1523015270_
                             _datum1523915299_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1523415279_
                                                     _target1523115273_
                                                     '())))))
                                           (if (gx#stx-pair? ___stx2322023221_)
                                               (let ((_e1522815263_
                                                      (gx#syntax-e
                                                       ___stx2322023221_)))
                                                 (let ((_tl1523015270_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1522815263_)))
                                                       (_hd1522915267_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1522815263_))))
                                                   (if (gx#stx-pair/null?
                                                        _hd1522915267_)
                                                       (let ((___splice2322523226_
                                                              (gx#syntax-split-splice
                                                               _hd1522915267_
                                                               '0)))
                                                         (let ((_tl1523315276_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref ___splice2322523226_ '1)))
                       (_target1523115273_
                        (let ()
                          (declare (not safe))
                          (##vector-ref ___splice2322523226_ '0))))
                   (if (gx#stx-null? _tl1523315276_)
                       (___match2324323244_
                        _e1522815263_
                        _hd1522915267_
                        _tl1523015270_
                        ___splice2322523226_
                        _target1523115273_
                        _tl1523315276_)
                       (___kont2322723228_))))
               (___kont2322723228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2322723228_))))))))
                               _g1519015201_))))
                      (_g1518815415_ _e15183_))))
                 (_datum-dispatch-index13019_
                  (lambda (_datums15055_)
                    (let _lp15058_ ((_rest15061_ _datums15055_)
                                    (_ix15063_ '0)
                                    (_r15064_ '()))
                      (let* ((___stx2324623247_ _rest15061_)
                             (_g1506715088_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2324623247_))))
                        (let ((___kont2324923250_
                               (lambda (_L15146_ _L15148_)
                                 (_lp15058_
                                  _L15146_
                                  (let ()
                                    (declare (not safe))
                                    (fx+ _ix15063_ '1))
                                  (foldl (lambda (_x15167_ _r15169_)
                                           (let ((__tmp24816
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _x15167_
                                                          _ix15063_))))
                                             (declare (not safe))
                                             (cons __tmp24816 _r15169_)))
                                         _r15064_
                                         (foldr (lambda (_g1517015173_
                                                         _g1517115176_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g1517015173_
                                                          _g1517115176_)))
                                                '()
                                                _L15148_)))))
                              (___kont2325323254_ (lambda () _r15064_)))
                          (let ((___match2326923270_
                                 (lambda (_e1507115106_
                                          _hd1507215110_
                                          _tl1507315113_
                                          ___splice2325123252_
                                          _target1507415116_
                                          _tl1507615119_)
                                   (letrec ((_loop1507715122_
                                             (lambda (_hd1507515126_
                                                      _datum1508115129_)
                                               (if (gx#stx-pair?
                                                    _hd1507515126_)
                                                   (let ((_e1507815132_
                                                          (gx#syntax-e
                                                           _hd1507515126_)))
                                                     (let ((_lp-tl1508015139_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e1507815132_)))
                                                           (_lp-hd1507915136_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e1507815132_))))
                                                       (_loop1507715122_
                                                        _lp-tl1508015139_
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _lp-hd1507915136_
                                                                _datum1508115129_)))))
                                                   (let ((_datum1508215142_
                                                          (reverse _datum1508115129_)))
                                                     (___kont2324923250_
                                                      _tl1507315113_
                                                      _datum1508215142_))))))
                                     (_loop1507715122_
                                      _target1507415116_
                                      '())))))
                            (if (gx#stx-pair? ___stx2324623247_)
                                (let ((_e1507115106_
                                       (gx#syntax-e ___stx2324623247_)))
                                  (let ((_tl1507315113_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1507115106_)))
                                        (_hd1507215110_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1507115106_))))
                                    (if (gx#stx-pair/null? _hd1507215110_)
                                        (let ((___splice2325123252_
                                               (gx#syntax-split-splice
                                                _hd1507215110_
                                                '0)))
                                          (let ((_tl1507615119_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice2325123252_
                                                    '1)))
                                                (_target1507415116_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice2325123252_
                                                    '0))))
                                            (if (gx#stx-null? _tl1507615119_)
                                                (___match2326923270_
                                                 _e1507115106_
                                                 _hd1507215110_
                                                 _tl1507315113_
                                                 ___splice2325123252_
                                                 _target1507415116_
                                                 _tl1507615119_)
                                                (___kont2325323254_))))
                                        (___kont2325323254_))))
                                (___kont2325323254_))))))))
                 (_duplicate-indexes?13020_
                  (lambda (_xs15036_)
                    (let ((_ht15039_ (make-hash-table-eq)))
                      (let _lp15042_ ((_rest15045_ _xs15036_))
                        (if (let () (declare (not safe)) (pair? _rest15045_))
                            (let* ((_ix15048_ (car _rest15045_))
                                   (_$e15051_ (hash-get _ht15039_ _ix15048_)))
                              (if _$e15051_
                                  _$e15051_
                                  (begin
                                    (hash-put! _ht15039_ _ix15048_ '#t)
                                    (_lp15042_ (cdr _rest15045_)))))
                            '#f)))))
                 (_generate-hash-dispatch-table13021_
                  (lambda (_indexes15005_ _hash-e15007_)
                    (let _lp15009_ ((_len15012_
                                     (* '2 (length _indexes15005_))))
                      (let* ((_hs15018_
                              (map (lambda (_x15015_)
                                     (_hash-e15007_ (car _x15015_)))
                                   _indexes15005_))
                             (_xs15024_
                              (map (lambda (_h15021_)
                                     (fxmodulo _h15021_ _len15012_))
                                   _hs15018_)))
                        (if (_duplicate-indexes?13020_ _xs15024_)
                            (if (< _len15012_ '131072)
                                (_lp15009_ (quotient (fx* _len15012_ '3) '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _stx13007_
                                 _indexes15005_))
                            (let ((_tab15029_ (make-vector _len15012_ '#f)))
                              (for-each
                               (lambda (_entry15032_ _x15034_)
                                 (vector-set!
                                  _tab15029_
                                  _x15034_
                                  _entry15032_))
                               _indexes15005_
                               _xs15024_)
                              _tab15029_))))))
                 (_generate-symbolic-dispatch13022_
                  (lambda (_e14608_
                           _datums14610_
                           _dispatch14611_
                           _default14612_)
                    (let* ((_indexes14614_
                            (_datum-dispatch-index13019_ _datums14610_))
                           (_tab14617_
                            (_generate-hash-dispatch-table13021_
                             _indexes14614_
                             symbol-hash)))
                      (if (= (length _dispatch14611_) '1)
                          (let* ((_tab14625_
                                  (vector-map
                                   (lambda (_x14622_)
                                     (if _x14622_ (car _x14622_) '#f))
                                   _tab14617_))
                                 (_g1462814666_
                                  (lambda (_g1462914662_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1462914662_)))
                                 (_g1462714797_
                                  (lambda (_g1462914670_)
                                    (if (gx#stx-pair? _g1462914670_)
                                        (let ((_e1463714673_
                                               (gx#syntax-e _g1462914670_)))
                                          (let ((_hd1463814677_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1463714673_)))
                                                (_tl1463914680_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1463714673_))))
                                            (if (gx#stx-pair? _tl1463914680_)
                                                (let ((_e1464014683_
                                                       (gx#syntax-e
                                                        _tl1463914680_)))
                                                  (let ((_hd1464114687_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1464014683_)))
                                                        (_tl1464214690_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1464014683_))))
                                                    (if (gx#stx-pair?
                                                         _tl1464214690_)
                                                        (let ((_e1464314693_
                                                               (gx#syntax-e
                                                                _tl1464214690_)))
                                                          (let ((_hd1464414697_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1464314693_)))
                        (_tl1464514700_
                         (let () (declare (not safe)) (##cdr _e1464314693_))))
                    (if (gx#stx-pair? _tl1464514700_)
                        (let ((_e1464614703_ (gx#syntax-e _tl1464514700_)))
                          (let ((_hd1464714707_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1464614703_)))
                                (_tl1464814710_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1464614703_))))
                            (if (gx#stx-pair? _hd1464714707_)
                                (let ((_e1464914713_
                                       (gx#syntax-e _hd1464714707_)))
                                  (let ((_hd1465014717_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1464914713_)))
                                        (_tl1465114720_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1464914713_))))
                                    (if (gx#stx-null? _tl1465114720_)
                                        (if (gx#stx-pair? _tl1464814710_)
                                            (let ((_e1465214723_
                                                   (gx#syntax-e
                                                    _tl1464814710_)))
                                              (let ((_hd1465314727_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1465214723_)))
                                                    (_tl1465414730_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1465214723_))))
                                                (if (gx#stx-pair?
                                                     _tl1465414730_)
                                                    (let ((_e1465514733_
                                                           (gx#syntax-e
                                                            _tl1465414730_)))
                                                      (let ((_hd1465614737_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1465514733_)))
                    (_tl1465714740_
                     (let () (declare (not safe)) (##cdr _e1465514733_))))
                (if (gx#stx-pair? _tl1465714740_)
                    (let ((_e1465814743_ (gx#syntax-e _tl1465714740_)))
                      (let ((_hd1465914747_
                             (let ()
                               (declare (not safe))
                               (##car _e1465814743_)))
                            (_tl1466014750_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1465814743_))))
                        (if (gx#stx-null? _tl1466014750_)
                            ((lambda (_L14753_
                                      _L14755_
                                      _L14756_
                                      _L14757_
                                      _L14758_
                                      _L14759_
                                      _L14760_)
                               (let ()
                                 (let ((__tmp24881 (gx#datum->syntax '#f 'let))
                                       (__tmp24817
                                        (let ((__tmp24868
                                               (let ((__tmp24875
                                                      (let ((__tmp24876
                                                             (let ((__tmp24877
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp24880 (gx#datum->syntax '#f 'lambda))
                                  (__tmp24878
                                   (let ((__tmp24879
                                          (let ()
                                            (declare (not safe))
                                            (cons _L14756_ '()))))
                                     (declare (not safe))
                                     (cons '() __tmp24879))))
                              (declare (not safe))
                              (cons __tmp24880 __tmp24878))))
                       (declare (not safe))
                       (cons __tmp24877 '()))))
                (declare (not safe))
                (cons _L14759_ __tmp24876)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp24869
                                                      (let ((__tmp24870
                                                             (let ((__tmp24871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp24872
                                   (let ((__tmp24874
                                          (gx#datum->syntax '#f 'quote))
                                         (__tmp24873
                                          (let ()
                                            (declare (not safe))
                                            (cons _L14755_ '()))))
                                     (declare (not safe))
                                     (cons __tmp24874 __tmp24873))))
                              (declare (not safe))
                              (cons __tmp24872 '()))))
                       (declare (not safe))
                       (cons _L14758_ __tmp24871))))
                (declare (not safe))
                (cons __tmp24870 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24875 __tmp24869)))
                                              (__tmp24818
                                               (let ((__tmp24819
                                                      (let ((__tmp24867
                                                             (gx#datum->syntax
                                                              '#f
                                                              'if))
                                                            (__tmp24820
                                                             (let ((__tmp24864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp24866 (gx#datum->syntax '#f 'symbol?))
                                  (__tmp24865
                                   (let ()
                                     (declare (not safe))
                                     (cons _L14760_ '()))))
                              (declare (not safe))
                              (cons __tmp24866 __tmp24865)))
                           (__tmp24821
                            (let ((__tmp24824
                                   (let ((__tmp24863
                                          (gx#datum->syntax '#f 'let*))
                                         (__tmp24825
                                          (let ((__tmp24838
                                                 (let ((__tmp24857
                                                        (let ((__tmp24862
                                                               (gx#datum->syntax
                                                                '#f
                                                                'h))
                                                              (__tmp24858
                                                               (let ((__tmp24859
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp24861
                                     (gx#datum->syntax '#f '##symbol-hash))
                                    (__tmp24860
                                     (let ()
                                       (declare (not safe))
                                       (cons _L14760_ '()))))
                                (declare (not safe))
                                (cons __tmp24861 __tmp24860))))
                         (declare (not safe))
                         (cons __tmp24859 '()))))
                  (declare (not safe))
                  (cons __tmp24862 __tmp24858)))
               (__tmp24839
                (let ((__tmp24849
                       (let ((__tmp24856 (gx#datum->syntax '#f 'ix))
                             (__tmp24850
                              (let ((__tmp24851
                                     (let ((__tmp24855
                                            (gx#datum->syntax '#f '##fxmodulo))
                                           (__tmp24852
                                            (let ((__tmp24854
                                                   (gx#datum->syntax '#f 'h))
                                                  (__tmp24853
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L14753_ '()))))
                                              (declare (not safe))
                                              (cons __tmp24854 __tmp24853))))
                                       (declare (not safe))
                                       (cons __tmp24855 __tmp24852))))
                                (declare (not safe))
                                (cons __tmp24851 '()))))
                         (declare (not safe))
                         (cons __tmp24856 __tmp24850)))
                      (__tmp24840
                       (let ((__tmp24841
                              (let ((__tmp24848 (gx#datum->syntax '#f 'q))
                                    (__tmp24842
                                     (let ((__tmp24843
                                            (let ((__tmp24847
                                                   (gx#datum->syntax
                                                    '#f
                                                    '##vector-ref))
                                                  (__tmp24844
                                                   (let ((__tmp24845
                                                          (let ((__tmp24846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'ix)))
                    (declare (not safe))
                    (cons __tmp24846 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L14758_
                                                           __tmp24845))))
                                              (declare (not safe))
                                              (cons __tmp24847 __tmp24844))))
                                       (declare (not safe))
                                       (cons __tmp24843 '()))))
                                (declare (not safe))
                                (cons __tmp24848 __tmp24842))))
                         (declare (not safe))
                         (cons __tmp24841 '()))))
                  (declare (not safe))
                  (cons __tmp24849 __tmp24840))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24857
                                                         __tmp24839)))
                                                (__tmp24826
                                                 (let ((__tmp24827
                                                        (let ((__tmp24837
                                                               (gx#datum->syntax
                                                                '#f
                                                                'if))
                                                              (__tmp24828
                                                               (let ((__tmp24832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp24836 (gx#datum->syntax '#f 'eq?))
                                    (__tmp24833
                                     (let ((__tmp24835
                                            (gx#datum->syntax '#f 'q))
                                           (__tmp24834
                                            (let ()
                                              (declare (not safe))
                                              (cons _L14760_ '()))))
                                       (declare (not safe))
                                       (cons __tmp24835 __tmp24834))))
                                (declare (not safe))
                                (cons __tmp24836 __tmp24833)))
                             (__tmp24829
                              (let ((__tmp24830
                                     (let ((__tmp24831
                                            (let ()
                                              (declare (not safe))
                                              (cons _L14759_ '()))))
                                       (declare (not safe))
                                       (cons __tmp24831 '()))))
                                (declare (not safe))
                                (cons _L14757_ __tmp24830))))
                         (declare (not safe))
                         (cons __tmp24832 __tmp24829))))
                  (declare (not safe))
                  (cons __tmp24837 __tmp24828))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24827 '()))))
                                            (declare (not safe))
                                            (cons __tmp24838 __tmp24826))))
                                     (declare (not safe))
                                     (cons __tmp24863 __tmp24825)))
                                  (__tmp24822
                                   (let ((__tmp24823
                                          (let ()
                                            (declare (not safe))
                                            (cons _L14759_ '()))))
                                     (declare (not safe))
                                     (cons __tmp24823 '()))))
                              (declare (not safe))
                              (cons __tmp24824 __tmp24822))))
                       (declare (not safe))
                       (cons __tmp24864 __tmp24821))))
                (declare (not safe))
                (cons __tmp24867 __tmp24820))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24819 '()))))
                                          (declare (not safe))
                                          (cons __tmp24868 __tmp24818))))
                                   (declare (not safe))
                                   (cons __tmp24881 __tmp24817))))
                             _hd1465914747_
                             _hd1465614737_
                             _hd1465314727_
                             _hd1465014717_
                             _hd1464414697_
                             _hd1464114687_
                             _hd1463814677_)
                            (_g1462814666_ _g1462914670_))))
                    (_g1462814666_ _g1462914670_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1462814666_
                                                     _g1462914670_))))
                                            (_g1462814666_ _g1462914670_))
                                        (_g1462814666_ _g1462914670_))))
                                (_g1462814666_ _g1462914670_))))
                        (_g1462814666_ _g1462914670_))))
                (_g1462814666_ _g1462914670_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1462814666_
                                                 _g1462914670_))))
                                        (_g1462814666_ _g1462914670_)))))
                            (_g1462714797_
                             (list _e14608_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch14611_
                                   _default14612_
                                   _tab14625_
                                   (vector-length _tab14625_))))
                          (let* ((_g1480114845_
                                  (lambda (_g1480214841_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1480214841_)))
                                 (_g1480015001_
                                  (lambda (_g1480214849_)
                                    (if (gx#stx-pair? _g1480214849_)
                                        (let ((_e1481014852_
                                               (gx#syntax-e _g1480214849_)))
                                          (let ((_hd1481114856_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1481014852_)))
                                                (_tl1481214859_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1481014852_))))
                                            (if (gx#stx-pair? _tl1481214859_)
                                                (let ((_e1481314862_
                                                       (gx#syntax-e
                                                        _tl1481214859_)))
                                                  (let ((_hd1481414866_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1481314862_)))
                                                        (_tl1481514869_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1481314862_))))
                                                    (if (gx#stx-pair?
                                                         _tl1481514869_)
                                                        (let ((_e1481614872_
                                                               (gx#syntax-e
                                                                _tl1481514869_)))
                                                          (let ((_hd1481714876_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1481614872_)))
                        (_tl1481814879_
                         (let () (declare (not safe)) (##cdr _e1481614872_))))
                    (if (gx#stx-pair? _tl1481814879_)
                        (let ((_e1481914882_ (gx#syntax-e _tl1481814879_)))
                          (let ((_hd1482014886_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1481914882_)))
                                (_tl1482114889_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1481914882_))))
                            (if (gx#stx-pair/null? _hd1482014886_)
                                (let ((_g24882_
                                       (gx#syntax-split-splice
                                        _hd1482014886_
                                        '0)))
                                  (begin
                                    (let ((_g24883_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g24882_)
                                                 (##vector-length _g24882_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g24883_ 2)))
                                          (error "Context expects 2 values"
                                                 _g24883_)))
                                    (let ((_target1482214892_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g24882_ 0)))
                                          (_tl1482414895_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g24882_ 1))))
                                      (if (gx#stx-null? _tl1482414895_)
                                          (letrec ((_loop1482514898_
                                                    (lambda (_hd1482314902_
                                                             _dispatch1482914905_)
                                                      (if (gx#stx-pair?
                                                           _hd1482314902_)
                                                          (let ((_e1482614908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1482314902_)))
                    (let ((_lp-hd1482714912_
                           (let () (declare (not safe)) (##car _e1482614908_)))
                          (_lp-tl1482814915_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1482614908_))))
                      (_loop1482514898_
                       _lp-tl1482814915_
                       (let ()
                         (declare (not safe))
                         (cons _lp-hd1482714912_ _dispatch1482914905_)))))
                  (let ((_dispatch1483014918_ (reverse _dispatch1482914905_)))
                    (if (gx#stx-pair? _tl1482114889_)
                        (let ((_e1483114922_ (gx#syntax-e _tl1482114889_)))
                          (let ((_hd1483214926_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1483114922_)))
                                (_tl1483314929_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1483114922_))))
                            (if (gx#stx-pair? _tl1483314929_)
                                (let ((_e1483414932_
                                       (gx#syntax-e _tl1483314929_)))
                                  (let ((_hd1483514936_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1483414932_)))
                                        (_tl1483614939_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1483414932_))))
                                    (if (gx#stx-pair? _tl1483614939_)
                                        (let ((_e1483714942_
                                               (gx#syntax-e _tl1483614939_)))
                                          (let ((_hd1483814946_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1483714942_)))
                                                (_tl1483914949_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1483714942_))))
                                            (if (gx#stx-null? _tl1483914949_)
                                                ((lambda (_L14952_
                                                          _L14954_
                                                          _L14955_
                                                          _L14956_
                                                          _L14957_
                                                          _L14958_
                                                          _L14959_)
                                                   (let ()
                                                     (let ((__tmp24974
                                                            (gx#datum->syntax
                                                             '#f
                                                             'let))
                                                           (__tmp24884
                                                            (let ((__tmp24961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp24968
                                  (let ((__tmp24969
                                         (let ((__tmp24970
                                                (let ((__tmp24973
                                                       (gx#datum->syntax
                                                        '#f
                                                        'lambda))
                                                      (__tmp24971
                                                       (let ((__tmp24972
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L14955_ '()))))
                 (declare (not safe))
                 (cons '() __tmp24972))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp24973
                                                        __tmp24971))))
                                           (declare (not safe))
                                           (cons __tmp24970 '()))))
                                    (declare (not safe))
                                    (cons _L14958_ __tmp24969)))
                                 (__tmp24962
                                  (let ((__tmp24963
                                         (let ((__tmp24964
                                                (let ((__tmp24965
                                                       (let ((__tmp24967
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp24966
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L14954_ '()))))
                 (declare (not safe))
                 (cons __tmp24967 __tmp24966))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp24965 '()))))
                                           (declare (not safe))
                                           (cons _L14957_ __tmp24964))))
                                    (declare (not safe))
                                    (cons __tmp24963 '()))))
                             (declare (not safe))
                             (cons __tmp24968 __tmp24962)))
                          (__tmp24885
                           (let ((__tmp24886
                                  (let ((__tmp24960 (gx#datum->syntax '#f 'if))
                                        (__tmp24887
                                         (let ((__tmp24957
                                                (let ((__tmp24959
                                                       (gx#datum->syntax
                                                        '#f
                                                        'symbol?))
                                                      (__tmp24958
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L14959_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp24959
                                                        __tmp24958)))
                                               (__tmp24888
                                                (let ((__tmp24891
                                                       (let ((__tmp24956
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp24892
                                                              (let ((__tmp24931
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp24950
                                    (let ((__tmp24955
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp24951
                                           (let ((__tmp24952
                                                  (let ((__tmp24954
                                                         (gx#datum->syntax
                                                          '#f
                                                          '##symbol-hash))
                                                        (__tmp24953
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L14959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24954
                                                          __tmp24953))))
                                             (declare (not safe))
                                             (cons __tmp24952 '()))))
                                      (declare (not safe))
                                      (cons __tmp24955 __tmp24951)))
                                   (__tmp24932
                                    (let ((__tmp24942
                                           (let ((__tmp24949
                                                  (gx#datum->syntax '#f 'ix))
                                                 (__tmp24943
                                                  (let ((__tmp24944
                                                         (let ((__tmp24948
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fxmodulo))
                       (__tmp24945
                        (let ((__tmp24947 (gx#datum->syntax '#f 'h))
                              (__tmp24946
                               (let ()
                                 (declare (not safe))
                                 (cons _L14952_ '()))))
                          (declare (not safe))
                          (cons __tmp24947 __tmp24946))))
                   (declare (not safe))
                   (cons __tmp24948 __tmp24945))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24944 '()))))
                                             (declare (not safe))
                                             (cons __tmp24949 __tmp24943)))
                                          (__tmp24933
                                           (let ((__tmp24934
                                                  (let ((__tmp24941
                                                         (gx#datum->syntax
                                                          '#f
                                                          'q))
                                                        (__tmp24935
                                                         (let ((__tmp24936
                                                                (let ((__tmp24940
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##vector-ref))
                              (__tmp24937
                               (let ((__tmp24938
                                      (let ((__tmp24939
                                             (gx#datum->syntax '#f 'ix)))
                                        (declare (not safe))
                                        (cons __tmp24939 '()))))
                                 (declare (not safe))
                                 (cons _L14957_ __tmp24938))))
                          (declare (not safe))
                          (cons __tmp24940 __tmp24937))))
                   (declare (not safe))
                   (cons __tmp24936 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24941
                                                          __tmp24935))))
                                             (declare (not safe))
                                             (cons __tmp24934 '()))))
                                      (declare (not safe))
                                      (cons __tmp24942 __tmp24933))))
                               (declare (not safe))
                               (cons __tmp24950 __tmp24932)))
                            (__tmp24893
                             (let ((__tmp24894
                                    (let ((__tmp24930
                                           (gx#datum->syntax '#f 'if))
                                          (__tmp24895
                                           (let ((__tmp24929
                                                  (gx#datum->syntax '#f 'q))
                                                 (__tmp24896
                                                  (let ((__tmp24899
                                                         (let ((__tmp24928
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if))
                       (__tmp24900
                        (let ((__tmp24920
                               (let ((__tmp24927 (gx#datum->syntax '#f 'eq?))
                                     (__tmp24921
                                      (let ((__tmp24923
                                             (let ((__tmp24926
                                                    (gx#datum->syntax
                                                     '#f
                                                     '##car))
                                                   (__tmp24924
                                                    (let ((__tmp24925
                                                           (gx#datum->syntax
                                                            '#f
                                                            'q)))
                                                      (declare (not safe))
                                                      (cons __tmp24925 '()))))
                                               (declare (not safe))
                                               (cons __tmp24926 __tmp24924)))
                                            (__tmp24922
                                             (let ()
                                               (declare (not safe))
                                               (cons _L14959_ '()))))
                                        (declare (not safe))
                                        (cons __tmp24923 __tmp24922))))
                                 (declare (not safe))
                                 (cons __tmp24927 __tmp24921)))
                              (__tmp24901
                               (let ((__tmp24904
                                      (let ((__tmp24919
                                             (gx#datum->syntax '#f 'let))
                                            (__tmp24905
                                             (let ((__tmp24912
                                                    (let ((__tmp24918
                                                           (gx#datum->syntax
                                                            '#f
                                                            'x))
                                                          (__tmp24913
                                                           (let ((__tmp24914
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp24917 (gx#datum->syntax '#f '##cdr))
                                (__tmp24915
                                 (let ((__tmp24916 (gx#datum->syntax '#f 'q)))
                                   (declare (not safe))
                                   (cons __tmp24916 '()))))
                            (declare (not safe))
                            (cons __tmp24917 __tmp24915))))
                     (declare (not safe))
                     (cons __tmp24914 '()))))
              (declare (not safe))
              (cons __tmp24918 __tmp24913)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp24906
                                                    (let ((__tmp24907
                                                           (let ((__tmp24911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '~case-dispatch))
                         (__tmp24908
                          (let ((__tmp24910 (gx#datum->syntax '#f 'x))
                                (__tmp24909
                                 (foldr (lambda (_g1499214995_ _g1499314998_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g1499214995_
                                                  _g1499314998_)))
                                        '()
                                        _L14956_)))
                            (declare (not safe))
                            (cons __tmp24910 __tmp24909))))
                     (declare (not safe))
                     (cons __tmp24911 __tmp24908))))
              (declare (not safe))
              (cons __tmp24907 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp24912 __tmp24906))))
                                        (declare (not safe))
                                        (cons __tmp24919 __tmp24905)))
                                     (__tmp24902
                                      (let ((__tmp24903
                                             (let ()
                                               (declare (not safe))
                                               (cons _L14958_ '()))))
                                        (declare (not safe))
                                        (cons __tmp24903 '()))))
                                 (declare (not safe))
                                 (cons __tmp24904 __tmp24902))))
                          (declare (not safe))
                          (cons __tmp24920 __tmp24901))))
                   (declare (not safe))
                   (cons __tmp24928 __tmp24900)))
                (__tmp24897
                 (let ((__tmp24898
                        (let () (declare (not safe)) (cons _L14958_ '()))))
                   (declare (not safe))
                   (cons __tmp24898 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24899
                                                          __tmp24897))))
                                             (declare (not safe))
                                             (cons __tmp24929 __tmp24896))))
                                      (declare (not safe))
                                      (cons __tmp24930 __tmp24895))))
                               (declare (not safe))
                               (cons __tmp24894 '()))))
                        (declare (not safe))
                        (cons __tmp24931 __tmp24893))))
                 (declare (not safe))
                 (cons __tmp24956 __tmp24892)))
              (__tmp24889
               (let ((__tmp24890
                      (let () (declare (not safe)) (cons _L14958_ '()))))
                 (declare (not safe))
                 (cons __tmp24890 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp24891
                                                        __tmp24889))))
                                           (declare (not safe))
                                           (cons __tmp24957 __tmp24888))))
                                    (declare (not safe))
                                    (cons __tmp24960 __tmp24887))))
                             (declare (not safe))
                             (cons __tmp24886 '()))))
                      (declare (not safe))
                      (cons __tmp24961 __tmp24885))))
               (declare (not safe))
               (cons __tmp24974 __tmp24884))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1483814946_
                                                 _hd1483514936_
                                                 _hd1483214926_
                                                 _dispatch1483014918_
                                                 _hd1481714876_
                                                 _hd1481414866_
                                                 _hd1481114856_)
                                                (_g1480114845_
                                                 _g1480214849_))))
                                        (_g1480114845_ _g1480214849_))))
                                (_g1480114845_ _g1480214849_))))
                        (_g1480114845_ _g1480214849_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1482514898_
                                             _target1482214892_
                                             '()))
                                          (_g1480114845_ _g1480214849_)))))
                                (_g1480114845_ _g1480214849_))))
                        (_g1480114845_ _g1480214849_))))
                (_g1480114845_ _g1480214849_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1480114845_
                                                 _g1480214849_))))
                                        (_g1480114845_ _g1480214849_)))))
                            (_g1480015001_
                             (list _e14608_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch14611_
                                   _default14612_
                                   _tab14617_
                                   (vector-length _tab14617_))))))))
                 (_max-char13023_
                  (lambda (_datums14597_)
                    (foldl (lambda (_lst14600_ _r14602_)
                             (foldl (lambda (_char14604_ _r14606_)
                                      (max (char->integer _char14604_)
                                           _r14606_))
                                    _r14602_
                                    _lst14600_))
                           '0
                           _datums14597_)))
                 (_generate-char-dispatch-table13024_
                  (lambda (_indexes14576_)
                    (let* ((_ixs14582_
                            (map (lambda (_x14579_)
                                   (char->integer (car _x14579_)))
                                 _indexes14576_))
                           (_len14585_
                            (let ((__tmp24975 (foldl max '0 _ixs14582_)))
                              (declare (not safe))
                              (fx+ __tmp24975 '1)))
                           (_vec14588_ (make-vector _len14585_ '#f)))
                      (for-each
                       (lambda (_entry14593_ _x14595_)
                         (vector-set! _vec14588_ _x14595_ (cdr _entry14593_)))
                       _indexes14576_
                       _ixs14582_)
                      _vec14588_)))
                 (_simple-char-range?13025_
                  (lambda (_tab14552_)
                    (let ((_end14555_ (vector-length _tab14552_)))
                      (let _lp14558_ ((_i14561_ '0))
                        (let ((_ix14564_ (vector-ref _tab14552_ _i14561_)))
                          (if _ix14564_
                              (let _lp214567_ ((_i14570_
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _i14561_ '1))))
                                (if (fx< _i14570_ _end14555_)
                                    (let ((_ix*14573_
                                           (vector-ref _tab14552_ _i14570_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (eq? _ix14564_ _ix*14573_))
                                          (_lp214567_
                                           (let ()
                                             (declare (not safe))
                                             (fx+ _i14570_ '1)))
                                          '#f))
                                    '#t))
                              (_lp14558_
                               (let ()
                                 (declare (not safe))
                                 (fx+ _i14561_ '1)))))))))
                 (_char-range-start13026_
                  (lambda (_tab14543_)
                    (let _lp14546_ ((_i14549_ '0))
                      (if (vector-ref _tab14543_ _i14549_)
                          _i14549_
                          (_lp14546_
                           (let () (declare (not safe)) (fx+ _i14549_ '1)))))))
                 (_generate-char-dispatch13027_
                  (lambda (_e14166_
                           _datums14168_
                           _dispatch14169_
                           _default14170_)
                    (if (< (_max-char13023_ _datums14168_) '128)
                        (let* ((_indexes14172_
                                (_datum-dispatch-index13019_ _datums14168_))
                               (_tab14175_
                                (_generate-char-dispatch-table13024_
                                 _indexes14172_)))
                          (if (_simple-char-range?13025_ _tab14175_)
                              (let ((_start14180_
                                     (_char-range-start13026_ _tab14175_))
                                    (_end14182_ (vector-length _tab14175_)))
                                (let* ((_g1418414218_
                                        (lambda (_g1418514214_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g1418514214_)))
                                       (_g1418314335_
                                        (lambda (_g1418514222_)
                                          (if (gx#stx-pair? _g1418514222_)
                                              (let ((_e1419214225_
                                                     (gx#syntax-e
                                                      _g1418514222_)))
                                                (let ((_hd1419314229_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1419214225_)))
                                                      (_tl1419414232_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1419214225_))))
                                                  (if (gx#stx-pair?
                                                       _tl1419414232_)
                                                      (let ((_e1419514235_
                                                             (gx#syntax-e
                                                              _tl1419414232_)))
                                                        (let ((_hd1419614239_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1419514235_)))
                      (_tl1419714242_
                       (let () (declare (not safe)) (##cdr _e1419514235_))))
                  (if (gx#stx-pair? _tl1419714242_)
                      (let ((_e1419814245_ (gx#syntax-e _tl1419714242_)))
                        (let ((_hd1419914249_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1419814245_)))
                              (_tl1420014252_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1419814245_))))
                          (if (gx#stx-pair? _hd1419914249_)
                              (let ((_e1420114255_
                                     (gx#syntax-e _hd1419914249_)))
                                (let ((_hd1420214259_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1420114255_)))
                                      (_tl1420314262_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1420114255_))))
                                  (if (gx#stx-null? _tl1420314262_)
                                      (if (gx#stx-pair? _tl1420014252_)
                                          (let ((_e1420414265_
                                                 (gx#syntax-e _tl1420014252_)))
                                            (let ((_hd1420514269_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1420414265_)))
                                                  (_tl1420614272_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1420414265_))))
                                              (if (gx#stx-pair? _tl1420614272_)
                                                  (let ((_e1420714275_
                                                         (gx#syntax-e
                                                          _tl1420614272_)))
                                                    (let ((_hd1420814279_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1420714275_)))
                                                          (_tl1420914282_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1420714275_))))
                                                      (if (gx#stx-pair?
                                                           _tl1420914282_)
                                                          (let ((_e1421014285_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1420914282_)))
                    (let ((_hd1421114289_
                           (let () (declare (not safe)) (##car _e1421014285_)))
                          (_tl1421214292_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1421014285_))))
                      (if (gx#stx-null? _tl1421214292_)
                          ((lambda (_L14295_
                                    _L14297_
                                    _L14298_
                                    _L14299_
                                    _L14300_
                                    _L14301_)
                             (let ()
                               (let ((__tmp25023 (gx#datum->syntax '#f 'let))
                                     (__tmp24976
                                      (let ((__tmp25017
                                             (let ((__tmp25018
                                                    (let ((__tmp25019
                                                           (let ((__tmp25022
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'lambda))
                         (__tmp25020
                          (let ((__tmp25021
                                 (let ()
                                   (declare (not safe))
                                   (cons _L14298_ '()))))
                            (declare (not safe))
                            (cons '() __tmp25021))))
                     (declare (not safe))
                     (cons __tmp25022 __tmp25020))))
              (declare (not safe))
              (cons __tmp25019 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L14300_ __tmp25018)))
                                            (__tmp24977
                                             (let ((__tmp24978
                                                    (let ((__tmp25016
                                                           (gx#datum->syntax
                                                            '#f
                                                            'if))
                                                          (__tmp24979
                                                           (let ((__tmp25013
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp25015 (gx#datum->syntax '#f 'char?))
                                (__tmp25014
                                 (let ()
                                   (declare (not safe))
                                   (cons _L14301_ '()))))
                            (declare (not safe))
                            (cons __tmp25015 __tmp25014)))
                         (__tmp24980
                          (let ((__tmp24983
                                 (let ((__tmp25012 (gx#datum->syntax '#f 'let))
                                       (__tmp24984
                                        (let ((__tmp25006
                                               (let ((__tmp25011
                                                      (gx#datum->syntax
                                                       '#f
                                                       'ix))
                                                     (__tmp25007
                                                      (let ((__tmp25008
                                                             (let ((__tmp25010
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '##char->integer))
                           (__tmp25009
                            (let () (declare (not safe)) (cons _L14301_ '()))))
                       (declare (not safe))
                       (cons __tmp25010 __tmp25009))))
                (declare (not safe))
                (cons __tmp25008 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25011 __tmp25007)))
                                              (__tmp24985
                                               (let ((__tmp24986
                                                      (let ((__tmp25005
                                                             (gx#datum->syntax
                                                              '#f
                                                              'if))
                                                            (__tmp24987
                                                             (let ((__tmp24991
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp25004 (gx#datum->syntax '#f 'and))
                                  (__tmp24992
                                   (let ((__tmp24999
                                          (let ((__tmp25003
                                                 (gx#datum->syntax
                                                  '#f
                                                  '##fx>=))
                                                (__tmp25000
                                                 (let ((__tmp25002
                                                        (gx#datum->syntax
                                                         '#f
                                                         'ix))
                                                       (__tmp25001
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L14297_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp25002
                                                         __tmp25001))))
                                            (declare (not safe))
                                            (cons __tmp25003 __tmp25000)))
                                         (__tmp24993
                                          (let ((__tmp24994
                                                 (let ((__tmp24998
                                                        (gx#datum->syntax
                                                         '#f
                                                         '##fx<))
                                                       (__tmp24995
                                                        (let ((__tmp24997
                                                               (gx#datum->syntax
                                                                '#f
                                                                'ix))
                                                              (__tmp24996
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L14295_ '()))))
                  (declare (not safe))
                  (cons __tmp24997 __tmp24996))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24998
                                                         __tmp24995))))
                                            (declare (not safe))
                                            (cons __tmp24994 '()))))
                                     (declare (not safe))
                                     (cons __tmp24999 __tmp24993))))
                              (declare (not safe))
                              (cons __tmp25004 __tmp24992)))
                           (__tmp24988
                            (let ((__tmp24989
                                   (let ((__tmp24990
                                          (let ()
                                            (declare (not safe))
                                            (cons _L14300_ '()))))
                                     (declare (not safe))
                                     (cons __tmp24990 '()))))
                              (declare (not safe))
                              (cons _L14299_ __tmp24989))))
                       (declare (not safe))
                       (cons __tmp24991 __tmp24988))))
                (declare (not safe))
                (cons __tmp25005 __tmp24987))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24986 '()))))
                                          (declare (not safe))
                                          (cons __tmp25006 __tmp24985))))
                                   (declare (not safe))
                                   (cons __tmp25012 __tmp24984)))
                                (__tmp24981
                                 (let ((__tmp24982
                                        (let ()
                                          (declare (not safe))
                                          (cons _L14300_ '()))))
                                   (declare (not safe))
                                   (cons __tmp24982 '()))))
                            (declare (not safe))
                            (cons __tmp24983 __tmp24981))))
                     (declare (not safe))
                     (cons __tmp25013 __tmp24980))))
              (declare (not safe))
              (cons __tmp25016 __tmp24979))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp24978 '()))))
                                        (declare (not safe))
                                        (cons __tmp25017 __tmp24977))))
                                 (declare (not safe))
                                 (cons __tmp25023 __tmp24976))))
                           _hd1421114289_
                           _hd1420814279_
                           _hd1420514269_
                           _hd1420214259_
                           _hd1419614239_
                           _hd1419314229_)
                          (_g1418414218_ _g1418514222_))))
                  (_g1418414218_ _g1418514222_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1418414218_
                                                   _g1418514222_))))
                                          (_g1418414218_ _g1418514222_))
                                      (_g1418414218_ _g1418514222_))))
                              (_g1418414218_ _g1418514222_))))
                      (_g1418414218_ _g1418514222_))))
              (_g1418414218_ _g1418514222_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1418414218_ _g1418514222_)))))
                                  (_g1418314335_
                                   (list _e14166_
                                         (gx#genident 'default)
                                         _dispatch14169_
                                         _default14170_
                                         _start14180_
                                         _end14182_))))
                              (let* ((_g1433914383_
                                      (lambda (_g1434014379_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g1434014379_)))
                                     (_g1433814539_
                                      (lambda (_g1434014387_)
                                        (if (gx#stx-pair? _g1434014387_)
                                            (let ((_e1434814390_
                                                   (gx#syntax-e
                                                    _g1434014387_)))
                                              (let ((_hd1434914394_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1434814390_)))
                                                    (_tl1435014397_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1434814390_))))
                                                (if (gx#stx-pair?
                                                     _tl1435014397_)
                                                    (let ((_e1435114400_
                                                           (gx#syntax-e
                                                            _tl1435014397_)))
                                                      (let ((_hd1435214404_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1435114400_)))
                    (_tl1435314407_
                     (let () (declare (not safe)) (##cdr _e1435114400_))))
                (if (gx#stx-pair? _tl1435314407_)
                    (let ((_e1435414410_ (gx#syntax-e _tl1435314407_)))
                      (let ((_hd1435514414_
                             (let ()
                               (declare (not safe))
                               (##car _e1435414410_)))
                            (_tl1435614417_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1435414410_))))
                        (if (gx#stx-pair? _tl1435614417_)
                            (let ((_e1435714420_ (gx#syntax-e _tl1435614417_)))
                              (let ((_hd1435814424_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1435714420_)))
                                    (_tl1435914427_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1435714420_))))
                                (if (gx#stx-pair/null? _hd1435814424_)
                                    (let ((_g25024_
                                           (gx#syntax-split-splice
                                            _hd1435814424_
                                            '0)))
                                      (begin
                                        (let ((_g25025_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g25024_)
                                                     (##vector-length _g25024_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g25025_ 2)))
                                              (error "Context expects 2 values"
                                                     _g25025_)))
                                        (let ((_target1436014430_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g25024_ 0)))
                                              (_tl1436214433_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g25024_ 1))))
                                          (if (gx#stx-null? _tl1436214433_)
                                              (letrec ((_loop1436314436_
                                                        (lambda (_hd1436114440_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _dispatch1436714443_)
                  (if (gx#stx-pair? _hd1436114440_)
                      (let ((_e1436414446_ (gx#syntax-e _hd1436114440_)))
                        (let ((_lp-hd1436514450_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1436414446_)))
                              (_lp-tl1436614453_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1436414446_))))
                          (_loop1436314436_
                           _lp-tl1436614453_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd1436514450_ _dispatch1436714443_)))))
                      (let ((_dispatch1436814456_
                             (reverse _dispatch1436714443_)))
                        (if (gx#stx-pair? _tl1435914427_)
                            (let ((_e1436914460_ (gx#syntax-e _tl1435914427_)))
                              (let ((_hd1437014464_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1436914460_)))
                                    (_tl1437114467_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1436914460_))))
                                (if (gx#stx-pair? _tl1437114467_)
                                    (let ((_e1437214470_
                                           (gx#syntax-e _tl1437114467_)))
                                      (let ((_hd1437314474_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1437214470_)))
                                            (_tl1437414477_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1437214470_))))
                                        (if (gx#stx-pair? _tl1437414477_)
                                            (let ((_e1437514480_
                                                   (gx#syntax-e
                                                    _tl1437414477_)))
                                              (let ((_hd1437614484_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1437514480_)))
                                                    (_tl1437714487_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1437514480_))))
                                                (if (gx#stx-null?
                                                     _tl1437714487_)
                                                    ((lambda (_L14490_
                                                              _L14492_
                                                              _L14493_
                                                              _L14494_
                                                              _L14495_
                                                              _L14496_
                                                              _L14497_)
                                                       (let ()
                                                         (let ((__tmp25095
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let))
                       (__tmp25026
                        (let ((__tmp25082
                               (let ((__tmp25089
                                      (let ((__tmp25090
                                             (let ((__tmp25091
                                                    (let ((__tmp25094
                                                           (gx#datum->syntax
                                                            '#f
                                                            'lambda))
                                                          (__tmp25092
                                                           (let ((__tmp25093
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L14493_ '()))))
                     (declare (not safe))
                     (cons '() __tmp25093))))
              (declare (not safe))
              (cons __tmp25094 __tmp25092))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp25091 '()))))
                                        (declare (not safe))
                                        (cons _L14496_ __tmp25090)))
                                     (__tmp25083
                                      (let ((__tmp25084
                                             (let ((__tmp25085
                                                    (let ((__tmp25086
                                                           (let ((__tmp25088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp25087
                          (let () (declare (not safe)) (cons _L14492_ '()))))
                     (declare (not safe))
                     (cons __tmp25088 __tmp25087))))
              (declare (not safe))
              (cons __tmp25086 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L14495_ __tmp25085))))
                                        (declare (not safe))
                                        (cons __tmp25084 '()))))
                                 (declare (not safe))
                                 (cons __tmp25089 __tmp25083)))
                              (__tmp25027
                               (let ((__tmp25028
                                      (let ((__tmp25081
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp25029
                                             (let ((__tmp25078
                                                    (let ((__tmp25080
                                                           (gx#datum->syntax
                                                            '#f
                                                            'char?))
                                                          (__tmp25079
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L14497_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp25080 __tmp25079)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp25030
                                                    (let ((__tmp25033
                                                           (let ((__tmp25077
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'let))
                         (__tmp25034
                          (let ((__tmp25071
                                 (let ((__tmp25076 (gx#datum->syntax '#f 'ix))
                                       (__tmp25072
                                        (let ((__tmp25073
                                               (let ((__tmp25075
                                                      (gx#datum->syntax
                                                       '#f
                                                       '##char->integer))
                                                     (__tmp25074
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L14497_ '()))))
                                                 (declare (not safe))
                                                 (cons __tmp25075
                                                       __tmp25074))))
                                          (declare (not safe))
                                          (cons __tmp25073 '()))))
                                   (declare (not safe))
                                   (cons __tmp25076 __tmp25072)))
                                (__tmp25035
                                 (let ((__tmp25036
                                        (let ((__tmp25070
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp25037
                                               (let ((__tmp25065
                                                      (let ((__tmp25069
                                                             (gx#datum->syntax
                                                              '#f
                                                              '##fx<))
                                                            (__tmp25066
                                                             (let ((__tmp25068
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'ix))
                           (__tmp25067
                            (let () (declare (not safe)) (cons _L14490_ '()))))
                       (declare (not safe))
                       (cons __tmp25068 __tmp25067))))
                (declare (not safe))
                (cons __tmp25069 __tmp25066)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp25038
                                                      (let ((__tmp25041
                                                             (let ((__tmp25064
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let))
                           (__tmp25042
                            (let ((__tmp25056
                                   (let ((__tmp25063 (gx#datum->syntax '#f 'x))
                                         (__tmp25057
                                          (let ((__tmp25058
                                                 (let ((__tmp25062
                                                        (gx#datum->syntax
                                                         '#f
                                                         '##vector-ref))
                                                       (__tmp25059
                                                        (let ((__tmp25060
                                                               (let ((__tmp25061
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'ix)))
                         (declare (not safe))
                         (cons __tmp25061 '()))))
                  (declare (not safe))
                  (cons _L14495_ __tmp25060))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25062
                                                         __tmp25059))))
                                            (declare (not safe))
                                            (cons __tmp25058 '()))))
                                     (declare (not safe))
                                     (cons __tmp25063 __tmp25057)))
                                  (__tmp25043
                                   (let ((__tmp25044
                                          (let ((__tmp25055
                                                 (gx#datum->syntax '#f 'if))
                                                (__tmp25045
                                                 (let ((__tmp25054
                                                        (gx#datum->syntax
                                                         '#f
                                                         'x))
                                                       (__tmp25046
                                                        (let ((__tmp25049
                                                               (let ((__tmp25053
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f '~case-dispatch))
                             (__tmp25050
                              (let ((__tmp25052 (gx#datum->syntax '#f 'x))
                                    (__tmp25051
                                     (foldr (lambda (_g1453014533_
                                                     _g1453114536_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g1453014533_
                                                      _g1453114536_)))
                                            '()
                                            _L14494_)))
                                (declare (not safe))
                                (cons __tmp25052 __tmp25051))))
                         (declare (not safe))
                         (cons __tmp25053 __tmp25050)))
                      (__tmp25047
                       (let ((__tmp25048
                              (let ()
                                (declare (not safe))
                                (cons _L14496_ '()))))
                         (declare (not safe))
                         (cons __tmp25048 '()))))
                  (declare (not safe))
                  (cons __tmp25049 __tmp25047))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25054
                                                         __tmp25046))))
                                            (declare (not safe))
                                            (cons __tmp25055 __tmp25045))))
                                     (declare (not safe))
                                     (cons __tmp25044 '()))))
                              (declare (not safe))
                              (cons __tmp25056 __tmp25043))))
                       (declare (not safe))
                       (cons __tmp25064 __tmp25042)))
                    (__tmp25039
                     (let ((__tmp25040
                            (let () (declare (not safe)) (cons _L14496_ '()))))
                       (declare (not safe))
                       (cons __tmp25040 '()))))
                (declare (not safe))
                (cons __tmp25041 __tmp25039))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25065
                                                       __tmp25038))))
                                          (declare (not safe))
                                          (cons __tmp25070 __tmp25037))))
                                   (declare (not safe))
                                   (cons __tmp25036 '()))))
                            (declare (not safe))
                            (cons __tmp25071 __tmp25035))))
                     (declare (not safe))
                     (cons __tmp25077 __tmp25034)))
                  (__tmp25031
                   (let ((__tmp25032
                          (let () (declare (not safe)) (cons _L14496_ '()))))
                     (declare (not safe))
                     (cons __tmp25032 '()))))
              (declare (not safe))
              (cons __tmp25033 __tmp25031))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp25078 __tmp25030))))
                                        (declare (not safe))
                                        (cons __tmp25081 __tmp25029))))
                                 (declare (not safe))
                                 (cons __tmp25028 '()))))
                          (declare (not safe))
                          (cons __tmp25082 __tmp25027))))
                   (declare (not safe))
                   (cons __tmp25095 __tmp25026))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1437614484_
                                                     _hd1437314474_
                                                     _hd1437014464_
                                                     _dispatch1436814456_
                                                     _hd1435514414_
                                                     _hd1435214404_
                                                     _hd1434914394_)
                                                    (_g1433914383_
                                                     _g1434014387_))))
                                            (_g1433914383_ _g1434014387_))))
                                    (_g1433914383_ _g1434014387_))))
                            (_g1433914383_ _g1434014387_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1436314436_
                                                 _target1436014430_
                                                 '()))
                                              (_g1433914383_ _g1434014387_)))))
                                    (_g1433914383_ _g1434014387_))))
                            (_g1433914383_ _g1434014387_))))
                    (_g1433914383_ _g1434014387_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1433914383_
                                                     _g1434014387_))))
                                            (_g1433914383_ _g1434014387_)))))
                                (_g1433814539_
                                 (list _e14166_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _dispatch14169_
                                       _default14170_
                                       _tab14175_
                                       (vector-length _tab14175_))))))
                        (_generate-char-dispatch/hash13028_
                         _e14166_
                         _datums14168_
                         _dispatch14169_
                         _default14170_))))
                 (_generate-char-dispatch/hash13028_
                  (lambda (_e13944_
                           _datums13946_
                           _dispatch13947_
                           _default13948_)
                    (let* ((_indexes13950_
                            (_datum-dispatch-index13019_ _datums13946_))
                           (_tab13953_
                            (_generate-hash-dispatch-table13021_
                             _indexes13950_
                             char->integer)))
                      (let* ((_g1395814002_
                              (lambda (_g1395913998_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g1395913998_)))
                             (_g1395714162_
                              (lambda (_g1395914006_)
                                (if (gx#stx-pair? _g1395914006_)
                                    (let ((_e1396714009_
                                           (gx#syntax-e _g1395914006_)))
                                      (let ((_hd1396814013_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1396714009_)))
                                            (_tl1396914016_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1396714009_))))
                                        (if (gx#stx-pair? _tl1396914016_)
                                            (let ((_e1397014019_
                                                   (gx#syntax-e
                                                    _tl1396914016_)))
                                              (let ((_hd1397114023_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1397014019_)))
                                                    (_tl1397214026_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1397014019_))))
                                                (if (gx#stx-pair?
                                                     _tl1397214026_)
                                                    (let ((_e1397314029_
                                                           (gx#syntax-e
                                                            _tl1397214026_)))
                                                      (let ((_hd1397414033_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1397314029_)))
                    (_tl1397514036_
                     (let () (declare (not safe)) (##cdr _e1397314029_))))
                (if (gx#stx-pair? _tl1397514036_)
                    (let ((_e1397614039_ (gx#syntax-e _tl1397514036_)))
                      (let ((_hd1397714043_
                             (let ()
                               (declare (not safe))
                               (##car _e1397614039_)))
                            (_tl1397814046_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1397614039_))))
                        (if (gx#stx-pair/null? _hd1397714043_)
                            (let ((_g25096_
                                   (gx#syntax-split-splice _hd1397714043_ '0)))
                              (begin
                                (let ((_g25097_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g25096_)
                                             (##vector-length _g25096_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g25097_ 2)))
                                      (error "Context expects 2 values"
                                             _g25097_)))
                                (let ((_target1397914049_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g25096_ 0)))
                                      (_tl1398114052_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g25096_ 1))))
                                  (if (gx#stx-null? _tl1398114052_)
                                      (letrec ((_loop1398214055_
                                                (lambda (_hd1398014059_
                                                         _dispatch1398614062_)
                                                  (if (gx#stx-pair?
                                                       _hd1398014059_)
                                                      (let ((_e1398314065_
                                                             (gx#syntax-e
                                                              _hd1398014059_)))
                                                        (let ((_lp-hd1398414069_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1398314065_)))
                      (_lp-tl1398514072_
                       (let () (declare (not safe)) (##cdr _e1398314065_))))
                  (_loop1398214055_
                   _lp-tl1398514072_
                   (let ()
                     (declare (not safe))
                     (cons _lp-hd1398414069_ _dispatch1398614062_)))))
              (let ((_dispatch1398714075_ (reverse _dispatch1398614062_)))
                (if (gx#stx-pair? _tl1397814046_)
                    (let ((_e1398814079_ (gx#syntax-e _tl1397814046_)))
                      (let ((_hd1398914083_
                             (let ()
                               (declare (not safe))
                               (##car _e1398814079_)))
                            (_tl1399014086_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1398814079_))))
                        (if (gx#stx-pair? _tl1399014086_)
                            (let ((_e1399114089_ (gx#syntax-e _tl1399014086_)))
                              (let ((_hd1399214093_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1399114089_)))
                                    (_tl1399314096_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1399114089_))))
                                (if (gx#stx-pair? _tl1399314096_)
                                    (let ((_e1399414099_
                                           (gx#syntax-e _tl1399314096_)))
                                      (let ((_hd1399514103_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1399414099_)))
                                            (_tl1399614106_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1399414099_))))
                                        (if (gx#stx-null? _tl1399614106_)
                                            ((lambda (_L14109_
                                                      _L14111_
                                                      _L14112_
                                                      _L14113_
                                                      _L14114_
                                                      _L14115_
                                                      _L14116_)
                                               (let ()
                                                 (let ((__tmp25188
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let))
                                                       (__tmp25098
                                                        (let ((__tmp25175
                                                               (let ((__tmp25182
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp25183
                                     (let ((__tmp25184
                                            (let ((__tmp25187
                                                   (gx#datum->syntax
                                                    '#f
                                                    'lambda))
                                                  (__tmp25185
                                                   (let ((__tmp25186
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L14112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '() __tmp25186))))
                                              (declare (not safe))
                                              (cons __tmp25187 __tmp25185))))
                                       (declare (not safe))
                                       (cons __tmp25184 '()))))
                                (declare (not safe))
                                (cons _L14115_ __tmp25183)))
                             (__tmp25176
                              (let ((__tmp25177
                                     (let ((__tmp25178
                                            (let ((__tmp25179
                                                   (let ((__tmp25181
                                                          (gx#datum->syntax
                                                           '#f
                                                           'quote))
                                                         (__tmp25180
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L14111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25181
                                                           __tmp25180))))
                                              (declare (not safe))
                                              (cons __tmp25179 '()))))
                                       (declare (not safe))
                                       (cons _L14114_ __tmp25178))))
                                (declare (not safe))
                                (cons __tmp25177 '()))))
                         (declare (not safe))
                         (cons __tmp25182 __tmp25176)))
                      (__tmp25099
                       (let ((__tmp25100
                              (let ((__tmp25174 (gx#datum->syntax '#f 'if))
                                    (__tmp25101
                                     (let ((__tmp25171
                                            (let ((__tmp25173
                                                   (gx#datum->syntax
                                                    '#f
                                                    'char?))
                                                  (__tmp25172
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L14116_ '()))))
                                              (declare (not safe))
                                              (cons __tmp25173 __tmp25172)))
                                           (__tmp25102
                                            (let ((__tmp25105
                                                   (let ((__tmp25170
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let*))
                                                         (__tmp25106
                                                          (let ((__tmp25145
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp25164
                                (let ((__tmp25169 (gx#datum->syntax '#f 'h))
                                      (__tmp25165
                                       (let ((__tmp25166
                                              (let ((__tmp25168
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##char->integer))
                                                    (__tmp25167
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L14116_ '()))))
                                                (declare (not safe))
                                                (cons __tmp25168 __tmp25167))))
                                         (declare (not safe))
                                         (cons __tmp25166 '()))))
                                  (declare (not safe))
                                  (cons __tmp25169 __tmp25165)))
                               (__tmp25146
                                (let ((__tmp25156
                                       (let ((__tmp25163
                                              (gx#datum->syntax '#f 'ix))
                                             (__tmp25157
                                              (let ((__tmp25158
                                                     (let ((__tmp25162
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##fxmodulo))
                                                           (__tmp25159
                                                            (let ((__tmp25161
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp25160
                           (let () (declare (not safe)) (cons _L14109_ '()))))
                      (declare (not safe))
                      (cons __tmp25161 __tmp25160))))
               (declare (not safe))
               (cons __tmp25162 __tmp25159))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25158 '()))))
                                         (declare (not safe))
                                         (cons __tmp25163 __tmp25157)))
                                      (__tmp25147
                                       (let ((__tmp25148
                                              (let ((__tmp25155
                                                     (gx#datum->syntax '#f 'q))
                                                    (__tmp25149
                                                     (let ((__tmp25150
                                                            (let ((__tmp25154
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##vector-ref))
                          (__tmp25151
                           (let ((__tmp25152
                                  (let ((__tmp25153
                                         (gx#datum->syntax '#f 'ix)))
                                    (declare (not safe))
                                    (cons __tmp25153 '()))))
                             (declare (not safe))
                             (cons _L14114_ __tmp25152))))
                      (declare (not safe))
                      (cons __tmp25154 __tmp25151))))
               (declare (not safe))
               (cons __tmp25150 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25155 __tmp25149))))
                                         (declare (not safe))
                                         (cons __tmp25148 '()))))
                                  (declare (not safe))
                                  (cons __tmp25156 __tmp25147))))
                           (declare (not safe))
                           (cons __tmp25164 __tmp25146)))
                        (__tmp25107
                         (let ((__tmp25108
                                (let ((__tmp25144 (gx#datum->syntax '#f 'if))
                                      (__tmp25109
                                       (let ((__tmp25143
                                              (gx#datum->syntax '#f 'q))
                                             (__tmp25110
                                              (let ((__tmp25113
                                                     (let ((__tmp25142
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp25114
                                                            (let ((__tmp25134
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp25141 (gx#datum->syntax '#f 'eq?))
                                 (__tmp25135
                                  (let ((__tmp25137
                                         (let ((__tmp25140
                                                (gx#datum->syntax '#f '##car))
                                               (__tmp25138
                                                (let ((__tmp25139
                                                       (gx#datum->syntax
                                                        '#f
                                                        'q)))
                                                  (declare (not safe))
                                                  (cons __tmp25139 '()))))
                                           (declare (not safe))
                                           (cons __tmp25140 __tmp25138)))
                                        (__tmp25136
                                         (let ()
                                           (declare (not safe))
                                           (cons _L14116_ '()))))
                                    (declare (not safe))
                                    (cons __tmp25137 __tmp25136))))
                             (declare (not safe))
                             (cons __tmp25141 __tmp25135)))
                          (__tmp25115
                           (let ((__tmp25118
                                  (let ((__tmp25133
                                         (gx#datum->syntax '#f 'let))
                                        (__tmp25119
                                         (let ((__tmp25126
                                                (let ((__tmp25132
                                                       (gx#datum->syntax
                                                        '#f
                                                        'x))
                                                      (__tmp25127
                                                       (let ((__tmp25128
                                                              (let ((__tmp25131
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '##cdr))
                            (__tmp25129
                             (let ((__tmp25130 (gx#datum->syntax '#f 'q)))
                               (declare (not safe))
                               (cons __tmp25130 '()))))
                        (declare (not safe))
                        (cons __tmp25131 __tmp25129))))
                 (declare (not safe))
                 (cons __tmp25128 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25132
                                                        __tmp25127)))
                                               (__tmp25120
                                                (let ((__tmp25121
                                                       (let ((__tmp25125
                                                              (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch))
                                                             (__tmp25122
                                                              (let ((__tmp25124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'x))
                            (__tmp25123
                             (foldr (lambda (_g1415314156_ _g1415414159_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g1415314156_ _g1415414159_)))
                                    '()
                                    _L14113_)))
                        (declare (not safe))
                        (cons __tmp25124 __tmp25123))))
                 (declare (not safe))
                 (cons __tmp25125 __tmp25122))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25121 '()))))
                                           (declare (not safe))
                                           (cons __tmp25126 __tmp25120))))
                                    (declare (not safe))
                                    (cons __tmp25133 __tmp25119)))
                                 (__tmp25116
                                  (let ((__tmp25117
                                         (let ()
                                           (declare (not safe))
                                           (cons _L14115_ '()))))
                                    (declare (not safe))
                                    (cons __tmp25117 '()))))
                             (declare (not safe))
                             (cons __tmp25118 __tmp25116))))
                      (declare (not safe))
                      (cons __tmp25134 __tmp25115))))
               (declare (not safe))
               (cons __tmp25142 __tmp25114)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp25111
                                                     (let ((__tmp25112
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L14115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp25112 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25113 __tmp25111))))
                                         (declare (not safe))
                                         (cons __tmp25143 __tmp25110))))
                                  (declare (not safe))
                                  (cons __tmp25144 __tmp25109))))
                           (declare (not safe))
                           (cons __tmp25108 '()))))
                    (declare (not safe))
                    (cons __tmp25145 __tmp25107))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25170
                                                           __tmp25106)))
                                                  (__tmp25103
                                                   (let ((__tmp25104
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L14115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25104 '()))))
                                              (declare (not safe))
                                              (cons __tmp25105 __tmp25103))))
                                       (declare (not safe))
                                       (cons __tmp25171 __tmp25102))))
                                (declare (not safe))
                                (cons __tmp25174 __tmp25101))))
                         (declare (not safe))
                         (cons __tmp25100 '()))))
                  (declare (not safe))
                  (cons __tmp25175 __tmp25099))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25188
                                                         __tmp25098))))
                                             _hd1399514103_
                                             _hd1399214093_
                                             _hd1398914083_
                                             _dispatch1398714075_
                                             _hd1397414033_
                                             _hd1397114023_
                                             _hd1396814013_)
                                            (_g1395814002_ _g1395914006_))))
                                    (_g1395814002_ _g1395914006_))))
                            (_g1395814002_ _g1395914006_))))
                    (_g1395814002_ _g1395914006_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1398214055_
                                         _target1397914049_
                                         '()))
                                      (_g1395814002_ _g1395914006_)))))
                            (_g1395814002_ _g1395914006_))))
                    (_g1395814002_ _g1395914006_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1395814002_
                                                     _g1395914006_))))
                                            (_g1395814002_ _g1395914006_))))
                                    (_g1395814002_ _g1395914006_)))))
                        (_g1395714162_
                         (list _e13944_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch13947_
                               _default13948_
                               _tab13953_
                               (vector-length _tab13953_)))))))
                 (_min-fixnum13029_
                  (lambda (_datums13937_)
                    (foldl (lambda (_lst13940_ _r13942_)
                             (foldl min _r13942_ _lst13940_))
                           ##max-fixnum
                           _datums13937_)))
                 (_max-fixnum13030_
                  (lambda (_datums13930_)
                    (foldl (lambda (_lst13933_ _r13935_)
                             (foldl max _r13935_ _lst13933_))
                           ##min-fixnum
                           _datums13930_)))
                 (_generate-fixnum-dispatch-table13031_
                  (lambda (_indexes13912_)
                    (let* ((_ixs13915_ (map car _indexes13912_))
                           (_len13918_
                            (let ((__tmp25189 (foldl max '0 _ixs13915_)))
                              (declare (not safe))
                              (fx+ __tmp25189 '1)))
                           (_vec13921_ (make-vector _len13918_ '#f)))
                      (for-each
                       (lambda (_entry13926_ _x13928_)
                         (vector-set! _vec13921_ _x13928_ (cdr _entry13926_)))
                       _indexes13912_
                       _ixs13915_)
                      _vec13921_)))
                 (_generate-fixnum-dispatch13032_
                  (lambda (_e13646_
                           _datums13648_
                           _dispatch13649_
                           _default13650_)
                    (if (and (>= (_min-fixnum13029_ _datums13648_) '0)
                             (< (_max-fixnum13030_ _datums13648_) '1024))
                        (let* ((_indexes13652_
                                (_datum-dispatch-index13019_ _datums13648_))
                               (_tab13655_
                                (_generate-fixnum-dispatch-table13031_
                                 _indexes13652_))
                               (_dense?13658_
                                (andmap values (vector->list _tab13655_))))
                          (let* ((_g1366313707_
                                  (lambda (_g1366413703_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1366413703_)))
                                 (_g1366213908_
                                  (lambda (_g1366413711_)
                                    (if (gx#stx-pair? _g1366413711_)
                                        (let ((_e1367213714_
                                               (gx#syntax-e _g1366413711_)))
                                          (let ((_hd1367313718_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1367213714_)))
                                                (_tl1367413721_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1367213714_))))
                                            (if (gx#stx-pair? _tl1367413721_)
                                                (let ((_e1367513724_
                                                       (gx#syntax-e
                                                        _tl1367413721_)))
                                                  (let ((_hd1367613728_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1367513724_)))
                                                        (_tl1367713731_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1367513724_))))
                                                    (if (gx#stx-pair?
                                                         _tl1367713731_)
                                                        (let ((_e1367813734_
                                                               (gx#syntax-e
                                                                _tl1367713731_)))
                                                          (let ((_hd1367913738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1367813734_)))
                        (_tl1368013741_
                         (let () (declare (not safe)) (##cdr _e1367813734_))))
                    (if (gx#stx-pair? _tl1368013741_)
                        (let ((_e1368113744_ (gx#syntax-e _tl1368013741_)))
                          (let ((_hd1368213748_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1368113744_)))
                                (_tl1368313751_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1368113744_))))
                            (if (gx#stx-pair/null? _hd1368213748_)
                                (let ((_g25190_
                                       (gx#syntax-split-splice
                                        _hd1368213748_
                                        '0)))
                                  (begin
                                    (let ((_g25191_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g25190_)
                                                 (##vector-length _g25190_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g25191_ 2)))
                                          (error "Context expects 2 values"
                                                 _g25191_)))
                                    (let ((_target1368413754_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g25190_ 0)))
                                          (_tl1368613757_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g25190_ 1))))
                                      (if (gx#stx-null? _tl1368613757_)
                                          (letrec ((_loop1368713760_
                                                    (lambda (_hd1368513764_
                                                             _dispatch1369113767_)
                                                      (if (gx#stx-pair?
                                                           _hd1368513764_)
                                                          (let ((_e1368813770_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1368513764_)))
                    (let ((_lp-hd1368913774_
                           (let () (declare (not safe)) (##car _e1368813770_)))
                          (_lp-tl1369013777_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1368813770_))))
                      (_loop1368713760_
                       _lp-tl1369013777_
                       (let ()
                         (declare (not safe))
                         (cons _lp-hd1368913774_ _dispatch1369113767_)))))
                  (let ((_dispatch1369213780_ (reverse _dispatch1369113767_)))
                    (if (gx#stx-pair? _tl1368313751_)
                        (let ((_e1369313784_ (gx#syntax-e _tl1368313751_)))
                          (let ((_hd1369413788_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1369313784_)))
                                (_tl1369513791_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1369313784_))))
                            (if (gx#stx-pair? _tl1369513791_)
                                (let ((_e1369613794_
                                       (gx#syntax-e _tl1369513791_)))
                                  (let ((_hd1369713798_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1369613794_)))
                                        (_tl1369813801_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1369613794_))))
                                    (if (gx#stx-pair? _tl1369813801_)
                                        (let ((_e1369913804_
                                               (gx#syntax-e _tl1369813801_)))
                                          (let ((_hd1370013808_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1369913804_)))
                                                (_tl1370113811_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1369913804_))))
                                            (if (gx#stx-null? _tl1370113811_)
                                                ((lambda (_L13814_
                                                          _L13816_
                                                          _L13817_
                                                          _L13818_
                                                          _L13819_
                                                          _L13820_
                                                          _L13821_)
                                                   (let ()
                                                     (let* ((_g1386013868_
                                                             (lambda (_g1386113864_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _g1386113864_)))
                                                            (_g1385913888_
                                                             (lambda (_g1386113872_)
                                                               ((lambda (_L13875_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((__tmp25245 (gx#datum->syntax '#f 'let))
                                  (__tmp25192
                                   (let ((__tmp25232
                                          (let ((__tmp25239
                                                 (let ((__tmp25240
                                                        (let ((__tmp25241
                                                               (let ((__tmp25244
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'lambda))
                             (__tmp25242
                              (let ((__tmp25243
                                     (let ()
                                       (declare (not safe))
                                       (cons _L13817_ '()))))
                                (declare (not safe))
                                (cons '() __tmp25243))))
                         (declare (not safe))
                         (cons __tmp25244 __tmp25242))))
                  (declare (not safe))
                  (cons __tmp25241 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L13820_ __tmp25240)))
                                                (__tmp25233
                                                 (let ((__tmp25234
                                                        (let ((__tmp25235
                                                               (let ((__tmp25236
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp25238 (gx#datum->syntax '#f 'quote))
                                    (__tmp25237
                                     (let ()
                                       (declare (not safe))
                                       (cons _L13816_ '()))))
                                (declare (not safe))
                                (cons __tmp25238 __tmp25237))))
                         (declare (not safe))
                         (cons __tmp25236 '()))))
                  (declare (not safe))
                  (cons _L13819_ __tmp25235))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25234 '()))))
                                            (declare (not safe))
                                            (cons __tmp25239 __tmp25233)))
                                         (__tmp25193
                                          (let ((__tmp25194
                                                 (let ((__tmp25231
                                                        (gx#datum->syntax
                                                         '#f
                                                         'if))
                                                       (__tmp25195
                                                        (let ((__tmp25228
                                                               (let ((__tmp25230
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fixnum?))
                             (__tmp25229
                              (let ()
                                (declare (not safe))
                                (cons _L13821_ '()))))
                         (declare (not safe))
                         (cons __tmp25230 __tmp25229)))
                      (__tmp25196
                       (let ((__tmp25199
                              (let ((__tmp25227 (gx#datum->syntax '#f 'if))
                                    (__tmp25200
                                     (let ((__tmp25215
                                            (let ((__tmp25226
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp25216
                                                   (let ((__tmp25222
                                                          (let ((__tmp25225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '##fx>=))
                        (__tmp25223
                         (let ((__tmp25224
                                (let () (declare (not safe)) (cons '0 '()))))
                           (declare (not safe))
                           (cons _L13821_ __tmp25224))))
                    (declare (not safe))
                    (cons __tmp25225 __tmp25223)))
                 (__tmp25217
                  (let ((__tmp25218
                         (let ((__tmp25221 (gx#datum->syntax '#f '##fx<))
                               (__tmp25219
                                (let ((__tmp25220
                                       (let ()
                                         (declare (not safe))
                                         (cons _L13814_ '()))))
                                  (declare (not safe))
                                  (cons _L13821_ __tmp25220))))
                           (declare (not safe))
                           (cons __tmp25221 __tmp25219))))
                    (declare (not safe))
                    (cons __tmp25218 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25222
                                                           __tmp25217))))
                                              (declare (not safe))
                                              (cons __tmp25226 __tmp25216)))
                                           (__tmp25201
                                            (let ((__tmp25204
                                                   (let ((__tmp25214
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp25205
                                                          (let ((__tmp25207
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp25213 (gx#datum->syntax '#f 'x))
                               (__tmp25208
                                (let ((__tmp25209
                                       (let ((__tmp25212
                                              (gx#datum->syntax
                                               '#f
                                               '##vector-ref))
                                             (__tmp25210
                                              (let ((__tmp25211
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L13821_ '()))))
                                                (declare (not safe))
                                                (cons _L13819_ __tmp25211))))
                                         (declare (not safe))
                                         (cons __tmp25212 __tmp25210))))
                                  (declare (not safe))
                                  (cons __tmp25209 '()))))
                           (declare (not safe))
                           (cons __tmp25213 __tmp25208)))
                        (__tmp25206
                         (let () (declare (not safe)) (cons _L13875_ '()))))
                    (declare (not safe))
                    (cons __tmp25207 __tmp25206))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25214
                                                           __tmp25205)))
                                                  (__tmp25202
                                                   (let ((__tmp25203
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L13820_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25203 '()))))
                                              (declare (not safe))
                                              (cons __tmp25204 __tmp25202))))
                                       (declare (not safe))
                                       (cons __tmp25215 __tmp25201))))
                                (declare (not safe))
                                (cons __tmp25227 __tmp25200)))
                             (__tmp25197
                              (let ((__tmp25198
                                     (let ()
                                       (declare (not safe))
                                       (cons _L13820_ '()))))
                                (declare (not safe))
                                (cons __tmp25198 '()))))
                         (declare (not safe))
                         (cons __tmp25199 __tmp25197))))
                  (declare (not safe))
                  (cons __tmp25228 __tmp25196))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25231
                                                         __tmp25195))))
                                            (declare (not safe))
                                            (cons __tmp25194 '()))))
                                     (declare (not safe))
                                     (cons __tmp25232 __tmp25193))))
                              (declare (not safe))
                              (cons __tmp25245 __tmp25192))))
                        _g1386113872_))))
               (_g1385913888_
                (if _dense?13658_
                    (let ((__tmp25249 (gx#datum->syntax '#f '~case-dispatch))
                          (__tmp25246
                           (let ((__tmp25248 (gx#datum->syntax '#f 'x))
                                 (__tmp25247
                                  (foldr (lambda (_g1389113894_ _g1389213897_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g1389113894_
                                                   _g1389213897_)))
                                         '()
                                         _L13818_)))
                             (declare (not safe))
                             (cons __tmp25248 __tmp25247))))
                      (declare (not safe))
                      (cons __tmp25249 __tmp25246))
                    (let ((__tmp25260 (gx#datum->syntax '#f 'if))
                          (__tmp25250
                           (let ((__tmp25259 (gx#datum->syntax '#f 'x))
                                 (__tmp25251
                                  (let ((__tmp25254
                                         (let ((__tmp25258
                                                (gx#datum->syntax
                                                 '#f
                                                 '~case-dispatch))
                                               (__tmp25255
                                                (let ((__tmp25257
                                                       (gx#datum->syntax
                                                        '#f
                                                        'x))
                                                      (__tmp25256
                                                       (foldr (lambda (_g1389913902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1390013905_)
                        (let ()
                          (declare (not safe))
                          (cons _g1389913902_ _g1390013905_)))
                      '()
                      _L13818_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25257
                                                        __tmp25256))))
                                           (declare (not safe))
                                           (cons __tmp25258 __tmp25255)))
                                        (__tmp25252
                                         (let ((__tmp25253
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L13820_ '()))))
                                           (declare (not safe))
                                           (cons __tmp25253 '()))))
                                    (declare (not safe))
                                    (cons __tmp25254 __tmp25252))))
                             (declare (not safe))
                             (cons __tmp25259 __tmp25251))))
                      (declare (not safe))
                      (cons __tmp25260 __tmp25250)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1370013808_
                                                 _hd1369713798_
                                                 _hd1369413788_
                                                 _dispatch1369213780_
                                                 _hd1367913738_
                                                 _hd1367613728_
                                                 _hd1367313718_)
                                                (_g1366313707_
                                                 _g1366413711_))))
                                        (_g1366313707_ _g1366413711_))))
                                (_g1366313707_ _g1366413711_))))
                        (_g1366313707_ _g1366413711_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1368713760_
                                             _target1368413754_
                                             '()))
                                          (_g1366313707_ _g1366413711_)))))
                                (_g1366313707_ _g1366413711_))))
                        (_g1366313707_ _g1366413711_))))
                (_g1366313707_ _g1366413711_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1366313707_
                                                 _g1366413711_))))
                                        (_g1366313707_ _g1366413711_)))))
                            (_g1366213908_
                             (list _e13646_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch13649_
                                   _default13650_
                                   _tab13655_
                                   (vector-length _tab13655_)))))
                        (_generate-fixnum-dispatch/hash13033_
                         _e13646_
                         _datums13648_
                         _dispatch13649_
                         _default13650_))))
                 (_generate-fixnum-dispatch/hash13033_
                  (lambda (_e13424_
                           _datums13426_
                           _dispatch13427_
                           _default13428_)
                    (let* ((_indexes13430_
                            (_datum-dispatch-index13019_ _datums13426_))
                           (_tab13433_
                            (_generate-hash-dispatch-table13021_
                             _indexes13430_
                             values)))
                      (let* ((_g1343813482_
                              (lambda (_g1343913478_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g1343913478_)))
                             (_g1343713642_
                              (lambda (_g1343913486_)
                                (if (gx#stx-pair? _g1343913486_)
                                    (let ((_e1344713489_
                                           (gx#syntax-e _g1343913486_)))
                                      (let ((_hd1344813493_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1344713489_)))
                                            (_tl1344913496_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1344713489_))))
                                        (if (gx#stx-pair? _tl1344913496_)
                                            (let ((_e1345013499_
                                                   (gx#syntax-e
                                                    _tl1344913496_)))
                                              (let ((_hd1345113503_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1345013499_)))
                                                    (_tl1345213506_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1345013499_))))
                                                (if (gx#stx-pair?
                                                     _tl1345213506_)
                                                    (let ((_e1345313509_
                                                           (gx#syntax-e
                                                            _tl1345213506_)))
                                                      (let ((_hd1345413513_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1345313509_)))
                    (_tl1345513516_
                     (let () (declare (not safe)) (##cdr _e1345313509_))))
                (if (gx#stx-pair? _tl1345513516_)
                    (let ((_e1345613519_ (gx#syntax-e _tl1345513516_)))
                      (let ((_hd1345713523_
                             (let ()
                               (declare (not safe))
                               (##car _e1345613519_)))
                            (_tl1345813526_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1345613519_))))
                        (if (gx#stx-pair/null? _hd1345713523_)
                            (let ((_g25261_
                                   (gx#syntax-split-splice _hd1345713523_ '0)))
                              (begin
                                (let ((_g25262_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g25261_)
                                             (##vector-length _g25261_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g25262_ 2)))
                                      (error "Context expects 2 values"
                                             _g25262_)))
                                (let ((_target1345913529_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g25261_ 0)))
                                      (_tl1346113532_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g25261_ 1))))
                                  (if (gx#stx-null? _tl1346113532_)
                                      (letrec ((_loop1346213535_
                                                (lambda (_hd1346013539_
                                                         _dispatch1346613542_)
                                                  (if (gx#stx-pair?
                                                       _hd1346013539_)
                                                      (let ((_e1346313545_
                                                             (gx#syntax-e
                                                              _hd1346013539_)))
                                                        (let ((_lp-hd1346413549_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1346313545_)))
                      (_lp-tl1346513552_
                       (let () (declare (not safe)) (##cdr _e1346313545_))))
                  (_loop1346213535_
                   _lp-tl1346513552_
                   (let ()
                     (declare (not safe))
                     (cons _lp-hd1346413549_ _dispatch1346613542_)))))
              (let ((_dispatch1346713555_ (reverse _dispatch1346613542_)))
                (if (gx#stx-pair? _tl1345813526_)
                    (let ((_e1346813559_ (gx#syntax-e _tl1345813526_)))
                      (let ((_hd1346913563_
                             (let ()
                               (declare (not safe))
                               (##car _e1346813559_)))
                            (_tl1347013566_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1346813559_))))
                        (if (gx#stx-pair? _tl1347013566_)
                            (let ((_e1347113569_ (gx#syntax-e _tl1347013566_)))
                              (let ((_hd1347213573_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1347113569_)))
                                    (_tl1347313576_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1347113569_))))
                                (if (gx#stx-pair? _tl1347313576_)
                                    (let ((_e1347413579_
                                           (gx#syntax-e _tl1347313576_)))
                                      (let ((_hd1347513583_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1347413579_)))
                                            (_tl1347613586_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1347413579_))))
                                        (if (gx#stx-null? _tl1347613586_)
                                            ((lambda (_L13589_
                                                      _L13591_
                                                      _L13592_
                                                      _L13593_
                                                      _L13594_
                                                      _L13595_
                                                      _L13596_)
                                               (let ()
                                                 (let ((__tmp25345
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let))
                                                       (__tmp25263
                                                        (let ((__tmp25332
                                                               (let ((__tmp25339
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp25340
                                     (let ((__tmp25341
                                            (let ((__tmp25344
                                                   (gx#datum->syntax
                                                    '#f
                                                    'lambda))
                                                  (__tmp25342
                                                   (let ((__tmp25343
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L13592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '() __tmp25343))))
                                              (declare (not safe))
                                              (cons __tmp25344 __tmp25342))))
                                       (declare (not safe))
                                       (cons __tmp25341 '()))))
                                (declare (not safe))
                                (cons _L13595_ __tmp25340)))
                             (__tmp25333
                              (let ((__tmp25334
                                     (let ((__tmp25335
                                            (let ((__tmp25336
                                                   (let ((__tmp25338
                                                          (gx#datum->syntax
                                                           '#f
                                                           'quote))
                                                         (__tmp25337
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L13591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25338
                                                           __tmp25337))))
                                              (declare (not safe))
                                              (cons __tmp25336 '()))))
                                       (declare (not safe))
                                       (cons _L13594_ __tmp25335))))
                                (declare (not safe))
                                (cons __tmp25334 '()))))
                         (declare (not safe))
                         (cons __tmp25339 __tmp25333)))
                      (__tmp25264
                       (let ((__tmp25265
                              (let ((__tmp25331 (gx#datum->syntax '#f 'if))
                                    (__tmp25266
                                     (let ((__tmp25328
                                            (let ((__tmp25330
                                                   (gx#datum->syntax
                                                    '#f
                                                    'fixnum?))
                                                  (__tmp25329
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L13596_ '()))))
                                              (declare (not safe))
                                              (cons __tmp25330 __tmp25329)))
                                           (__tmp25267
                                            (let ((__tmp25270
                                                   (let ((__tmp25327
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let*))
                                                         (__tmp25271
                                                          (let ((__tmp25310
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp25320
                                (let ((__tmp25326 (gx#datum->syntax '#f 'ix))
                                      (__tmp25321
                                       (let ((__tmp25322
                                              (let ((__tmp25325
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##fxmodulo))
                                                    (__tmp25323
                                                     (let ((__tmp25324
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L13589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L13596_ __tmp25324))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25325 __tmp25323))))
                                         (declare (not safe))
                                         (cons __tmp25322 '()))))
                                  (declare (not safe))
                                  (cons __tmp25326 __tmp25321)))
                               (__tmp25311
                                (let ((__tmp25312
                                       (let ((__tmp25319
                                              (gx#datum->syntax '#f 'q))
                                             (__tmp25313
                                              (let ((__tmp25314
                                                     (let ((__tmp25318
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##vector-ref))
                                                           (__tmp25315
                                                            (let ((__tmp25316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp25317 (gx#datum->syntax '#f 'ix)))
                             (declare (not safe))
                             (cons __tmp25317 '()))))
                      (declare (not safe))
                      (cons _L13594_ __tmp25316))))
               (declare (not safe))
               (cons __tmp25318 __tmp25315))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25314 '()))))
                                         (declare (not safe))
                                         (cons __tmp25319 __tmp25313))))
                                  (declare (not safe))
                                  (cons __tmp25312 '()))))
                           (declare (not safe))
                           (cons __tmp25320 __tmp25311)))
                        (__tmp25272
                         (let ((__tmp25273
                                (let ((__tmp25309 (gx#datum->syntax '#f 'if))
                                      (__tmp25274
                                       (let ((__tmp25308
                                              (gx#datum->syntax '#f 'q))
                                             (__tmp25275
                                              (let ((__tmp25278
                                                     (let ((__tmp25307
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp25279
                                                            (let ((__tmp25299
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp25306 (gx#datum->syntax '#f 'eq?))
                                 (__tmp25300
                                  (let ((__tmp25302
                                         (let ((__tmp25305
                                                (gx#datum->syntax '#f '##car))
                                               (__tmp25303
                                                (let ((__tmp25304
                                                       (gx#datum->syntax
                                                        '#f
                                                        'q)))
                                                  (declare (not safe))
                                                  (cons __tmp25304 '()))))
                                           (declare (not safe))
                                           (cons __tmp25305 __tmp25303)))
                                        (__tmp25301
                                         (let ()
                                           (declare (not safe))
                                           (cons _L13596_ '()))))
                                    (declare (not safe))
                                    (cons __tmp25302 __tmp25301))))
                             (declare (not safe))
                             (cons __tmp25306 __tmp25300)))
                          (__tmp25280
                           (let ((__tmp25283
                                  (let ((__tmp25298
                                         (gx#datum->syntax '#f 'let))
                                        (__tmp25284
                                         (let ((__tmp25291
                                                (let ((__tmp25297
                                                       (gx#datum->syntax
                                                        '#f
                                                        'x))
                                                      (__tmp25292
                                                       (let ((__tmp25293
                                                              (let ((__tmp25296
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '##cdr))
                            (__tmp25294
                             (let ((__tmp25295 (gx#datum->syntax '#f 'q)))
                               (declare (not safe))
                               (cons __tmp25295 '()))))
                        (declare (not safe))
                        (cons __tmp25296 __tmp25294))))
                 (declare (not safe))
                 (cons __tmp25293 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25297
                                                        __tmp25292)))
                                               (__tmp25285
                                                (let ((__tmp25286
                                                       (let ((__tmp25290
                                                              (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch))
                                                             (__tmp25287
                                                              (let ((__tmp25289
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'x))
                            (__tmp25288
                             (foldr (lambda (_g1363313636_ _g1363413639_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g1363313636_ _g1363413639_)))
                                    '()
                                    _L13593_)))
                        (declare (not safe))
                        (cons __tmp25289 __tmp25288))))
                 (declare (not safe))
                 (cons __tmp25290 __tmp25287))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25286 '()))))
                                           (declare (not safe))
                                           (cons __tmp25291 __tmp25285))))
                                    (declare (not safe))
                                    (cons __tmp25298 __tmp25284)))
                                 (__tmp25281
                                  (let ((__tmp25282
                                         (let ()
                                           (declare (not safe))
                                           (cons _L13595_ '()))))
                                    (declare (not safe))
                                    (cons __tmp25282 '()))))
                             (declare (not safe))
                             (cons __tmp25283 __tmp25281))))
                      (declare (not safe))
                      (cons __tmp25299 __tmp25280))))
               (declare (not safe))
               (cons __tmp25307 __tmp25279)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp25276
                                                     (let ((__tmp25277
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L13595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp25277 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25278 __tmp25276))))
                                         (declare (not safe))
                                         (cons __tmp25308 __tmp25275))))
                                  (declare (not safe))
                                  (cons __tmp25309 __tmp25274))))
                           (declare (not safe))
                           (cons __tmp25273 '()))))
                    (declare (not safe))
                    (cons __tmp25310 __tmp25272))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25327
                                                           __tmp25271)))
                                                  (__tmp25268
                                                   (let ((__tmp25269
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L13595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25269 '()))))
                                              (declare (not safe))
                                              (cons __tmp25270 __tmp25268))))
                                       (declare (not safe))
                                       (cons __tmp25328 __tmp25267))))
                                (declare (not safe))
                                (cons __tmp25331 __tmp25266))))
                         (declare (not safe))
                         (cons __tmp25265 '()))))
                  (declare (not safe))
                  (cons __tmp25332 __tmp25264))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25345
                                                         __tmp25263))))
                                             _hd1347513583_
                                             _hd1347213573_
                                             _hd1346913563_
                                             _dispatch1346713555_
                                             _hd1345413513_
                                             _hd1345113503_
                                             _hd1344813493_)
                                            (_g1343813482_ _g1343913486_))))
                                    (_g1343813482_ _g1343913486_))))
                            (_g1343813482_ _g1343913486_))))
                    (_g1343813482_ _g1343913486_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1346213535_
                                         _target1345913529_
                                         '()))
                                      (_g1343813482_ _g1343913486_)))))
                            (_g1343813482_ _g1343913486_))))
                    (_g1343813482_ _g1343913486_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1343813482_
                                                     _g1343913486_))))
                                            (_g1343813482_ _g1343913486_))))
                                    (_g1343813482_ _g1343913486_)))))
                        (_g1343713642_
                         (list _e13424_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch13427_
                               _default13428_
                               _tab13433_
                               (vector-length _tab13433_)))))))
                 (_generate-generic-dispatch13034_
                  (lambda (_e13160_
                           _datums13162_
                           _dispatch13163_
                           _default13164_)
                    (let ((_g25346_
                           (if (_eq-datums?13017_ _datums13162_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_hash-e13166_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g25346_ 0)))
                              (_hashf13168_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g25346_ 1)))
                              (_eqf13169_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g25346_ 2))))
                          (let* ((_indexes13171_
                                  (_datum-dispatch-index13019_ _datums13162_))
                                 (_tab13174_
                                  (_generate-hash-dispatch-table13021_
                                   _indexes13171_
                                   _hash-e13166_)))
                            (let* ((_g1317913231_
                                    (lambda (_g1318013227_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g1318013227_)))
                                   (_g1317813420_
                                    (lambda (_g1318013235_)
                                      (if (gx#stx-pair? _g1318013235_)
                                          (let ((_e1319013238_
                                                 (gx#syntax-e _g1318013235_)))
                                            (let ((_hd1319113242_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1319013238_)))
                                                  (_tl1319213245_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1319013238_))))
                                              (if (gx#stx-pair? _tl1319213245_)
                                                  (let ((_e1319313248_
                                                         (gx#syntax-e
                                                          _tl1319213245_)))
                                                    (let ((_hd1319413252_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1319313248_)))
                                                          (_tl1319513255_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1319313248_))))
                                                      (if (gx#stx-pair?
                                                           _tl1319513255_)
                                                          (let ((_e1319613258_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1319513255_)))
                    (let ((_hd1319713262_
                           (let () (declare (not safe)) (##car _e1319613258_)))
                          (_tl1319813265_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1319613258_))))
                      (if (gx#stx-pair? _tl1319813265_)
                          (let ((_e1319913268_ (gx#syntax-e _tl1319813265_)))
                            (let ((_hd1320013272_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1319913268_)))
                                  (_tl1320113275_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1319913268_))))
                              (if (gx#stx-pair/null? _hd1320013272_)
                                  (let ((_g25347_
                                         (gx#syntax-split-splice
                                          _hd1320013272_
                                          '0)))
                                    (begin
                                      (let ((_g25348_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g25347_)
                                                   (##vector-length _g25347_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g25348_ 2)))
                                            (error "Context expects 2 values"
                                                   _g25348_)))
                                      (let ((_target1320213278_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g25347_ 0)))
                                            (_tl1320413281_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g25347_ 1))))
                                        (if (gx#stx-null? _tl1320413281_)
                                            (letrec ((_loop1320513284_
                                                      (lambda (_hd1320313288_
                                                               _dispatch1320913291_)
                                                        (if (gx#stx-pair?
                                                             _hd1320313288_)
                                                            (let ((_e1320613294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1320313288_)))
                      (let ((_lp-hd1320713298_
                             (let ()
                               (declare (not safe))
                               (##car _e1320613294_)))
                            (_lp-tl1320813301_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1320613294_))))
                        (_loop1320513284_
                         _lp-tl1320813301_
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd1320713298_ _dispatch1320913291_)))))
                    (let ((_dispatch1321013304_
                           (reverse _dispatch1320913291_)))
                      (if (gx#stx-pair? _tl1320113275_)
                          (let ((_e1321113308_ (gx#syntax-e _tl1320113275_)))
                            (let ((_hd1321213312_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1321113308_)))
                                  (_tl1321313315_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1321113308_))))
                              (if (gx#stx-pair? _tl1321313315_)
                                  (let ((_e1321413318_
                                         (gx#syntax-e _tl1321313315_)))
                                    (let ((_hd1321513322_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1321413318_)))
                                          (_tl1321613325_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1321413318_))))
                                      (if (gx#stx-pair? _tl1321613325_)
                                          (let ((_e1321713328_
                                                 (gx#syntax-e _tl1321613325_)))
                                            (let ((_hd1321813332_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1321713328_)))
                                                  (_tl1321913335_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1321713328_))))
                                              (if (gx#stx-pair? _tl1321913335_)
                                                  (let ((_e1322013338_
                                                         (gx#syntax-e
                                                          _tl1321913335_)))
                                                    (let ((_hd1322113342_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1322013338_)))
                                                          (_tl1322213345_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1322013338_))))
                                                      (if (gx#stx-pair?
                                                           _tl1322213345_)
                                                          (let ((_e1322313348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1322213345_)))
                    (let ((_hd1322413352_
                           (let () (declare (not safe)) (##car _e1322313348_)))
                          (_tl1322513355_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1322313348_))))
                      (if (gx#stx-null? _tl1322513355_)
                          ((lambda (_L13358_
                                    _L13360_
                                    _L13361_
                                    _L13362_
                                    _L13363_
                                    _L13364_
                                    _L13365_
                                    _L13366_
                                    _L13367_)
                             (let ()
                               (let ((__tmp25428 (gx#datum->syntax '#f 'let))
                                     (__tmp25349
                                      (let ((__tmp25415
                                             (let ((__tmp25422
                                                    (let ((__tmp25423
                                                           (let ((__tmp25424
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp25427 (gx#datum->syntax '#f 'lambda))
                                (__tmp25425
                                 (let ((__tmp25426
                                        (let ()
                                          (declare (not safe))
                                          (cons _L13363_ '()))))
                                   (declare (not safe))
                                   (cons '() __tmp25426))))
                            (declare (not safe))
                            (cons __tmp25427 __tmp25425))))
                     (declare (not safe))
                     (cons __tmp25424 '()))))
              (declare (not safe))
              (cons _L13366_ __tmp25423)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp25416
                                                    (let ((__tmp25417
                                                           (let ((__tmp25418
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp25419
                                 (let ((__tmp25421
                                        (gx#datum->syntax '#f 'quote))
                                       (__tmp25420
                                        (let ()
                                          (declare (not safe))
                                          (cons _L13362_ '()))))
                                   (declare (not safe))
                                   (cons __tmp25421 __tmp25420))))
                            (declare (not safe))
                            (cons __tmp25419 '()))))
                     (declare (not safe))
                     (cons _L13365_ __tmp25418))))
              (declare (not safe))
              (cons __tmp25417 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp25422 __tmp25416)))
                                            (__tmp25350
                                             (let ((__tmp25351
                                                    (let ((__tmp25414
                                                           (gx#datum->syntax
                                                            '#f
                                                            'let*))
                                                          (__tmp25352
                                                           (let ((__tmp25390
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp25409
                                 (let ((__tmp25413 (gx#datum->syntax '#f 'h))
                                       (__tmp25410
                                        (let ((__tmp25411
                                               (let ((__tmp25412
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L13367_ '()))))
                                                 (declare (not safe))
                                                 (cons _L13360_ __tmp25412))))
                                          (declare (not safe))
                                          (cons __tmp25411 '()))))
                                   (declare (not safe))
                                   (cons __tmp25413 __tmp25410)))
                                (__tmp25391
                                 (let ((__tmp25401
                                        (let ((__tmp25408
                                               (gx#datum->syntax '#f 'ix))
                                              (__tmp25402
                                               (let ((__tmp25403
                                                      (let ((__tmp25407
                                                             (gx#datum->syntax
                                                              '#f
                                                              '##fxmodulo))
                                                            (__tmp25404
                                                             (let ((__tmp25406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'h))
                           (__tmp25405
                            (let () (declare (not safe)) (cons _L13361_ '()))))
                       (declare (not safe))
                       (cons __tmp25406 __tmp25405))))
                (declare (not safe))
                (cons __tmp25407 __tmp25404))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25403 '()))))
                                          (declare (not safe))
                                          (cons __tmp25408 __tmp25402)))
                                       (__tmp25392
                                        (let ((__tmp25393
                                               (let ((__tmp25400
                                                      (gx#datum->syntax
                                                       '#f
                                                       'q))
                                                     (__tmp25394
                                                      (let ((__tmp25395
                                                             (let ((__tmp25399
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '##vector-ref))
                           (__tmp25396
                            (let ((__tmp25397
                                   (let ((__tmp25398
                                          (gx#datum->syntax '#f 'ix)))
                                     (declare (not safe))
                                     (cons __tmp25398 '()))))
                              (declare (not safe))
                              (cons _L13365_ __tmp25397))))
                       (declare (not safe))
                       (cons __tmp25399 __tmp25396))))
                (declare (not safe))
                (cons __tmp25395 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25400
                                                       __tmp25394))))
                                          (declare (not safe))
                                          (cons __tmp25393 '()))))
                                   (declare (not safe))
                                   (cons __tmp25401 __tmp25392))))
                            (declare (not safe))
                            (cons __tmp25409 __tmp25391)))
                         (__tmp25353
                          (let ((__tmp25354
                                 (let ((__tmp25389 (gx#datum->syntax '#f 'if))
                                       (__tmp25355
                                        (let ((__tmp25388
                                               (gx#datum->syntax '#f 'q))
                                              (__tmp25356
                                               (let ((__tmp25359
                                                      (let ((__tmp25387
                                                             (gx#datum->syntax
                                                              '#f
                                                              'if))
                                                            (__tmp25360
                                                             (let ((__tmp25380
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp25381
                                   (let ((__tmp25383
                                          (let ((__tmp25386
                                                 (gx#datum->syntax '#f '##car))
                                                (__tmp25384
                                                 (let ((__tmp25385
                                                        (gx#datum->syntax
                                                         '#f
                                                         'q)))
                                                   (declare (not safe))
                                                   (cons __tmp25385 '()))))
                                            (declare (not safe))
                                            (cons __tmp25386 __tmp25384)))
                                         (__tmp25382
                                          (let ()
                                            (declare (not safe))
                                            (cons _L13367_ '()))))
                                     (declare (not safe))
                                     (cons __tmp25383 __tmp25382))))
                              (declare (not safe))
                              (cons _L13358_ __tmp25381)))
                           (__tmp25361
                            (let ((__tmp25364
                                   (let ((__tmp25379
                                          (gx#datum->syntax '#f 'let))
                                         (__tmp25365
                                          (let ((__tmp25372
                                                 (let ((__tmp25378
                                                        (gx#datum->syntax
                                                         '#f
                                                         'x))
                                                       (__tmp25373
                                                        (let ((__tmp25374
                                                               (let ((__tmp25377
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f '##cdr))
                             (__tmp25375
                              (let ((__tmp25376 (gx#datum->syntax '#f 'q)))
                                (declare (not safe))
                                (cons __tmp25376 '()))))
                         (declare (not safe))
                         (cons __tmp25377 __tmp25375))))
                  (declare (not safe))
                  (cons __tmp25374 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25378
                                                         __tmp25373)))
                                                (__tmp25366
                                                 (let ((__tmp25367
                                                        (let ((__tmp25371
                                                               (gx#datum->syntax
                                                                '#f
                                                                '~case-dispatch))
                                                              (__tmp25368
                                                               (let ((__tmp25370
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'x))
                             (__tmp25369
                              (foldr (lambda (_g1341113414_ _g1341213417_)
                                       (let ()
                                         (declare (not safe))
                                         (cons _g1341113414_ _g1341213417_)))
                                     '()
                                     _L13364_)))
                         (declare (not safe))
                         (cons __tmp25370 __tmp25369))))
                  (declare (not safe))
                  (cons __tmp25371 __tmp25368))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25367 '()))))
                                            (declare (not safe))
                                            (cons __tmp25372 __tmp25366))))
                                     (declare (not safe))
                                     (cons __tmp25379 __tmp25365)))
                                  (__tmp25362
                                   (let ((__tmp25363
                                          (let ()
                                            (declare (not safe))
                                            (cons _L13366_ '()))))
                                     (declare (not safe))
                                     (cons __tmp25363 '()))))
                              (declare (not safe))
                              (cons __tmp25364 __tmp25362))))
                       (declare (not safe))
                       (cons __tmp25380 __tmp25361))))
                (declare (not safe))
                (cons __tmp25387 __tmp25360)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp25357
                                                      (let ((__tmp25358
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L13366_ '()))))
                (declare (not safe))
                (cons __tmp25358 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25359
                                                       __tmp25357))))
                                          (declare (not safe))
                                          (cons __tmp25388 __tmp25356))))
                                   (declare (not safe))
                                   (cons __tmp25389 __tmp25355))))
                            (declare (not safe))
                            (cons __tmp25354 '()))))
                     (declare (not safe))
                     (cons __tmp25390 __tmp25353))))
              (declare (not safe))
              (cons __tmp25414 __tmp25352))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp25351 '()))))
                                        (declare (not safe))
                                        (cons __tmp25415 __tmp25350))))
                                 (declare (not safe))
                                 (cons __tmp25428 __tmp25349))))
                           _hd1322413352_
                           _hd1322113342_
                           _hd1321813332_
                           _hd1321513322_
                           _hd1321213312_
                           _dispatch1321013304_
                           _hd1319713262_
                           _hd1319413252_
                           _hd1319113242_)
                          (_g1317913231_ _g1318013235_))))
                  (_g1317913231_ _g1318013235_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1317913231_
                                                   _g1318013235_))))
                                          (_g1317913231_ _g1318013235_))))
                                  (_g1317913231_ _g1318013235_))))
                          (_g1317913231_ _g1318013235_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1320513284_
                                               _target1320213278_
                                               '()))
                                            (_g1317913231_ _g1318013235_)))))
                                  (_g1317913231_ _g1318013235_))))
                          (_g1317913231_ _g1318013235_))))
                  (_g1317913231_ _g1318013235_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1317913231_
                                                   _g1318013235_))))
                                          (_g1317913231_ _g1318013235_)))))
                              (_g1317813420_
                               (list _e13160_
                                     (gx#genident 'default)
                                     (gx#genident 'table)
                                     _dispatch13163_
                                     _default13164_
                                     _tab13174_
                                     (vector-length _tab13174_)
                                     _hashf13168_
                                     _eqf13169_))))))))))
          (let* ((_g1303613060_
                  (lambda (_g1303713056_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1303713056_)))
                 (_g1303513156_
                  (lambda (_g1303713064_)
                    (if (gx#stx-pair? _g1303713064_)
                        (let ((_e1304013067_ (gx#syntax-e _g1303713064_)))
                          (let ((_hd1304113071_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1304013067_)))
                                (_tl1304213074_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1304013067_))))
                            (if (gx#stx-pair? _tl1304213074_)
                                (let ((_e1304313077_
                                       (gx#syntax-e _tl1304213074_)))
                                  (let ((_hd1304413081_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1304313077_)))
                                        (_tl1304513084_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1304313077_))))
                                    (if (gx#stx-pair/null? _tl1304513084_)
                                        (let ((_g25429_
                                               (gx#syntax-split-splice
                                                _tl1304513084_
                                                '0)))
                                          (begin
                                            (let ((_g25430_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g25429_)
                                                         (##vector-length
                                                          _g25429_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g25430_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g25430_)))
                                            (let ((_target1304613087_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g25429_
                                                      0)))
                                                  (_tl1304813090_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g25429_
                                                      1))))
                                              (if (gx#stx-null? _tl1304813090_)
                                                  (letrec ((_loop1304913093_
                                                            (lambda (_hd1304713097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause1305313100_)
                      (if (gx#stx-pair? _hd1304713097_)
                          (let ((_e1305013103_ (gx#syntax-e _hd1304713097_)))
                            (let ((_lp-hd1305113107_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1305013103_)))
                                  (_lp-tl1305213110_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1305013103_))))
                              (_loop1304913093_
                               _lp-tl1305213110_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd1305113107_
                                       _clause1305313100_)))))
                          (let ((_clause1305413113_
                                 (reverse _clause1305313100_)))
                            ((lambda (_L13117_ _L13119_)
                               (let ((_g25431_
                                      (_parse-clauses13010_
                                       _L13119_
                                       (foldr (lambda (_g1313713140_
                                                       _g1313813143_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g1313713140_
                                                        _g1313813143_)))
                                              '()
                                              _L13117_))))
                                 (begin
                                   (let ((_g25432_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g25431_)
                                                (##vector-length _g25431_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g25432_ 3)))
                                         (error "Context expects 3 values"
                                                _g25432_)))
                                   (let ((_datums13146_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g25431_ 0)))
                                         (_dispatch13148_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g25431_ 1)))
                                         (_default13149_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g25431_ 2))))
                                     (let ((_datum-count13151_
                                            (_count-datums13013_
                                             _datums13146_)))
                                       (if (< _datum-count13151_ '6)
                                           (_generate-simple-case13018_
                                            _L13119_
                                            _datums13146_
                                            _dispatch13148_
                                            _default13149_)
                                           (if (_char-datums?13015_
                                                _datums13146_)
                                               (_generate-char-dispatch13027_
                                                _L13119_
                                                _datums13146_
                                                _dispatch13148_
                                                _default13149_)
                                               (if (_fixnum-datums?13016_
                                                    _datums13146_)
                                                   (_generate-fixnum-dispatch13032_
                                                    _L13119_
                                                    _datums13146_
                                                    _dispatch13148_
                                                    _default13149_)
                                                   (if (< _datum-count13151_
                                                          '12)
                                                       (_generate-simple-case13018_
                                                        _L13119_
                                                        _datums13146_
                                                        _dispatch13148_
                                                        _default13149_)
                                                       (if (_symbolic-datums?13014_
                                                            _datums13146_)
                                                           (_generate-symbolic-dispatch13022_
                                                            _L13119_
                                                            _datums13146_
                                                            _dispatch13148_
                                                            _default13149_)
                                                           (_generate-generic-dispatch13034_
                                                            _L13119_
                                                            _datums13146_
                                                            _dispatch13148_
                                                            _default13149_)))))))))))
                             _clause1305413113_
                             _hd1304413081_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1304913093_
                                                     _target1304613087_
                                                     '()))
                                                  (_g1303613060_
                                                   _g1303713064_)))))
                                        (_g1303613060_ _g1303713064_))))
                                (_g1303613060_ _g1303713064_))))
                        (_g1303613060_ _g1303713064_)))))
            (_g1303513156_ _stx13007_)))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#~case-test|
      (lambda (_stx16058_)
        (let* ((_g1606116079_
                (lambda (_g1606216075_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1606216075_)))
               (_g1606016145_
                (lambda (_g1606216083_)
                  (if (gx#stx-pair? _g1606216083_)
                      (let ((_e1606516086_ (gx#syntax-e _g1606216083_)))
                        (let ((_hd1606616090_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1606516086_)))
                              (_tl1606716093_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1606516086_))))
                          (if (gx#stx-pair? _tl1606716093_)
                              (let ((_e1606816096_
                                     (gx#syntax-e _tl1606716093_)))
                                (let ((_hd1606916100_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1606816096_)))
                                      (_tl1607016103_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1606816096_))))
                                  (if (gx#stx-pair? _tl1607016103_)
                                      (let ((_e1607116106_
                                             (gx#syntax-e _tl1607016103_)))
                                        (let ((_hd1607216110_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1607116106_)))
                                              (_tl1607316113_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1607116106_))))
                                          (if (gx#stx-null? _tl1607316113_)
                                              ((lambda (_L16116_ _L16118_)
                                                 (let ((_datum-e16134_
                                                        (gx#stx-e _L16118_)))
                                                   (if (or (let ()
                                                             (declare
                                                               (not safe))
                                                             (symbol? _datum-e16134_))
                                                           (keyword?
                                                            _datum-e16134_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (immediate?
                                                              _datum-e16134_)))
                                                       (let ((__tmp25438
                                                              (gx#datum->syntax
                                                               '#f
                                                               'eq?))
                                                             (__tmp25433
                                                              (let ((__tmp25435
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp25437 (gx#datum->syntax '#f 'quote))
                                   (__tmp25436
                                    (let ()
                                      (declare (not safe))
                                      (cons _L16118_ '()))))
                               (declare (not safe))
                               (cons __tmp25437 __tmp25436)))
                            (__tmp25434
                             (let ()
                               (declare (not safe))
                               (cons _L16116_ '()))))
                        (declare (not safe))
                        (cons __tmp25435 __tmp25434))))
                 (declare (not safe))
                 (cons __tmp25438 __tmp25433))
               (if (let () (declare (not safe)) (number? _datum-e16134_))
                   (let ((__tmp25444 (gx#datum->syntax '#f 'eqv?))
                         (__tmp25439
                          (let ((__tmp25441
                                 (let ((__tmp25443
                                        (gx#datum->syntax '#f 'quote))
                                       (__tmp25442
                                        (let ()
                                          (declare (not safe))
                                          (cons _L16118_ '()))))
                                   (declare (not safe))
                                   (cons __tmp25443 __tmp25442)))
                                (__tmp25440
                                 (let ()
                                   (declare (not safe))
                                   (cons _L16116_ '()))))
                            (declare (not safe))
                            (cons __tmp25441 __tmp25440))))
                     (declare (not safe))
                     (cons __tmp25444 __tmp25439))
                   (let ((__tmp25450 (gx#datum->syntax '#f 'equal?))
                         (__tmp25445
                          (let ((__tmp25447
                                 (let ((__tmp25449
                                        (gx#datum->syntax '#f 'quote))
                                       (__tmp25448
                                        (let ()
                                          (declare (not safe))
                                          (cons _L16118_ '()))))
                                   (declare (not safe))
                                   (cons __tmp25449 __tmp25448)))
                                (__tmp25446
                                 (let ()
                                   (declare (not safe))
                                   (cons _L16116_ '()))))
                            (declare (not safe))
                            (cons __tmp25447 __tmp25446))))
                     (declare (not safe))
                     (cons __tmp25450 __tmp25445))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd1607216110_
                                               _hd1606916100_)
                                              (_g1606116079_ _g1606216083_))))
                                      (_g1606116079_ _g1606216083_))))
                              (_g1606116079_ _g1606216083_))))
                      (_g1606116079_ _g1606216083_)))))
          (_g1606016145_ _stx16058_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#~case-dispatch|
      (lambda (_$stx16149_)
        (let* ((_g1615316177_
                (lambda (_g1615416173_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1615416173_)))
               (_g1615216262_
                (lambda (_g1615416181_)
                  (if (gx#stx-pair? _g1615416181_)
                      (let ((_e1615716184_ (gx#syntax-e _g1615416181_)))
                        (let ((_hd1615816188_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1615716184_)))
                              (_tl1615916191_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1615716184_))))
                          (if (gx#stx-pair? _tl1615916191_)
                              (let ((_e1616016194_
                                     (gx#syntax-e _tl1615916191_)))
                                (let ((_hd1616116198_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1616016194_)))
                                      (_tl1616216201_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1616016194_))))
                                  (if (gx#stx-pair/null? _tl1616216201_)
                                      (let ((_g25451_
                                             (gx#syntax-split-splice
                                              _tl1616216201_
                                              '0)))
                                        (begin
                                          (let ((_g25452_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g25451_)
                                                       (##vector-length
                                                        _g25451_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g25452_ 2)))
                                                (error "Context expects 2 values"
                                                       _g25452_)))
                                          (let ((_target1616316204_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25451_ 0)))
                                                (_tl1616516207_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25451_ 1))))
                                            (if (gx#stx-null? _tl1616516207_)
                                                (letrec ((_loop1616616210_
                                                          (lambda (_hd1616416214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _K1617016217_)
                    (if (gx#stx-pair? _hd1616416214_)
                        (let ((_e1616716220_ (gx#syntax-e _hd1616416214_)))
                          (let ((_lp-hd1616816224_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1616716220_)))
                                (_lp-tl1616916227_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1616716220_))))
                            (_loop1616616210_
                             _lp-tl1616916227_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1616816224_ _K1617016217_)))))
                        (let ((_K1617116230_ (reverse _K1617016217_)))
                          ((lambda (_L16234_ _L16236_)
                             (let ((__tmp25456
                                    (gx#datum->syntax '#f '~case-dispatch*))
                                   (__tmp25453
                                    (let ((__tmp25454
                                           (let ((__tmp25455
                                                  (foldr (lambda (_g1625316256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1625416259_)
                   (let ()
                     (declare (not safe))
                     (cons _g1625316256_ _g1625416259_)))
                 '()
                 _L16234_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (cons _L16236_ __tmp25455))))
                                      (declare (not safe))
                                      (cons '0 __tmp25454))))
                               (declare (not safe))
                               (cons __tmp25456 __tmp25453)))
                           _K1617116230_
                           _hd1616116198_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1616616210_
                                                   _target1616316204_
                                                   '()))
                                                (_g1615316177_
                                                 _g1615416181_)))))
                                      (_g1615316177_ _g1615416181_))))
                              (_g1615316177_ _g1615416181_))))
                      (_g1615316177_ _g1615416181_)))))
          (_g1615216262_ _$stx16149_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#~case-dispatch*|
      (lambda (_stx16267_)
        (let* ((___stx2327223273_ _stx16267_)
               (_g1627416370_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2327223273_))))
          (let ((___kont2327523276_
                 (lambda (_L16847_ _L16849_)
                   (let ((__tmp25458 (gx#datum->syntax '#f 'quote))
                         (__tmp25457
                          (let () (declare (not safe)) (cons '#!void '()))))
                     (declare (not safe))
                     (cons __tmp25458 __tmp25457))))
                (___kont2327723278_
                 (lambda (_L16789_ _L16791_ _L16792_) _L16789_))
                (___kont2327923280_
                 (lambda (_L16686_ _L16688_ _L16689_ _L16690_)
                   (let* ((_g1671116719_
                           (lambda (_g1671216715_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g1671216715_)))
                          (_g1671016738_
                           (lambda (_g1671216723_)
                             ((lambda (_L16726_)
                                (let ()
                                  (let ((__tmp25466 (gx#datum->syntax '#f 'if))
                                        (__tmp25459
                                         (let ((__tmp25462
                                                (let ((__tmp25465
                                                       (gx#datum->syntax
                                                        '#f
                                                        '##fx=))
                                                      (__tmp25463
                                                       (let ((__tmp25464
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L16726_ '()))))
                 (declare (not safe))
                 (cons _L16689_ __tmp25464))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25465
                                                        __tmp25463)))
                                               (__tmp25460
                                                (let ((__tmp25461
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L16686_ '()))))
                                                  (declare (not safe))
                                                  (cons _L16688_ __tmp25461))))
                                           (declare (not safe))
                                           (cons __tmp25462 __tmp25460))))
                                    (declare (not safe))
                                    (cons __tmp25466 __tmp25459))))
                              _g1671216723_))))
                     (_g1671016738_ (gx#stx-e _L16690_)))))
                (___kont2328123282_
                 (lambda (_L16536_ _L16538_ _L16539_ _L16540_ _L16541_)
                   (let* ((_g1656516580_
                           (lambda (_g1656616576_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g1656616576_)))
                          (_g1656416625_
                           (lambda (_g1656616584_)
                             (if (gx#stx-pair? _g1656616584_)
                                 (let ((_e1656916587_
                                        (gx#syntax-e _g1656616584_)))
                                   (let ((_hd1657016591_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e1656916587_)))
                                         (_tl1657116594_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e1656916587_))))
                                     (if (gx#stx-pair? _tl1657116594_)
                                         (let ((_e1657216597_
                                                (gx#syntax-e _tl1657116594_)))
                                           (let ((_hd1657316601_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1657216597_)))
                                                 (_tl1657416604_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1657216597_))))
                                             (if (gx#stx-null? _tl1657416604_)
                                                 ((lambda (_L16607_ _L16609_)
                                                    (let ()
                                                      (let ((__tmp25483
                                                             (gx#datum->syntax
                                                              '#f
                                                              'if))
                                                            (__tmp25467
                                                             (let ((__tmp25479
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp25482 (gx#datum->syntax '#f '##fx=))
                                  (__tmp25480
                                   (let ((__tmp25481
                                          (let ()
                                            (declare (not safe))
                                            (cons _L16609_ '()))))
                                     (declare (not safe))
                                     (cons _L16540_ __tmp25481))))
                              (declare (not safe))
                              (cons __tmp25482 __tmp25480)))
                           (__tmp25468
                            (let ((__tmp25469
                                   (let ((__tmp25470
                                          (let ((__tmp25478
                                                 (gx#datum->syntax '#f 'if))
                                                (__tmp25471
                                                 (let ((__tmp25474
                                                        (let ((__tmp25477
                                                               (gx#datum->syntax
                                                                '#f
                                                                '##fx=))
                                                              (__tmp25475
                                                               (let ((__tmp25476
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _L16607_ '()))))
                         (declare (not safe))
                         (cons _L16540_ __tmp25476))))
                  (declare (not safe))
                  (cons __tmp25477 __tmp25475)))
               (__tmp25472
                (let ((__tmp25473
                       (let () (declare (not safe)) (cons _L16536_ '()))))
                  (declare (not safe))
                  (cons _L16538_ __tmp25473))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25474
                                                         __tmp25472))))
                                            (declare (not safe))
                                            (cons __tmp25478 __tmp25471))))
                                     (declare (not safe))
                                     (cons __tmp25470 '()))))
                              (declare (not safe))
                              (cons _L16539_ __tmp25469))))
                       (declare (not safe))
                       (cons __tmp25479 __tmp25468))))
                (declare (not safe))
                (cons __tmp25483 __tmp25467))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1657316601_
                                                  _hd1657016591_)
                                                 (_g1656516580_
                                                  _g1656616584_))))
                                         (_g1656516580_ _g1656616584_))))
                                 (_g1656516580_ _g1656616584_)))))
                     (_g1656416625_
                      (list (gx#stx-e _L16541_)
                            (let ((__tmp25484 (gx#stx-e _L16541_)))
                              (declare (not safe))
                              (fx+ __tmp25484 '1)))))))
                (___kont2328323284_
                 (lambda (_L16437_ _L16439_ _L16440_)
                   (let ((__tmp25488
                          (gx#datum->syntax '#f '~case-dispatch-bsearch))
                         (__tmp25485
                          (let ((__tmp25486
                                 (let ((__tmp25487
                                        (foldr (lambda (_g1646016463_
                                                        _g1646116466_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g1646016463_
                                                         _g1646116466_)))
                                               '()
                                               _L16437_)))
                                   (declare (not safe))
                                   (cons _L16439_ __tmp25487))))
                            (declare (not safe))
                            (cons _L16440_ __tmp25486))))
                     (declare (not safe))
                     (cons __tmp25488 __tmp25485)))))
            (let ((___match2342923430_
                   (lambda (_e1634716377_
                            _hd1634816381_
                            _tl1634916384_
                            _e1635016387_
                            _hd1635116391_
                            _tl1635216394_
                            _e1635316397_
                            _hd1635416401_
                            _tl1635516404_
                            ___splice2328523286_
                            _target1635616407_
                            _tl1635816410_)
                     (letrec ((_loop1635916413_
                               (lambda (_hd1635716417_ _K1636316420_)
                                 (if (gx#stx-pair? _hd1635716417_)
                                     (let ((_e1636016423_
                                            (gx#syntax-e _hd1635716417_)))
                                       (let ((_lp-tl1636216430_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e1636016423_)))
                                             (_lp-hd1636116427_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e1636016423_))))
                                         (_loop1635916413_
                                          _lp-tl1636216430_
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd1636116427_
                                                  _K1636316420_)))))
                                     (let ((_K1636416433_
                                            (reverse _K1636316420_)))
                                       (___kont2328323284_
                                        _K1636416433_
                                        _hd1635416401_
                                        _hd1635116391_))))))
                       (_loop1635916413_ _target1635616407_ '())))))
              (if (gx#stx-pair? ___stx2327223273_)
                  (let ((_e1627816817_ (gx#syntax-e ___stx2327223273_)))
                    (let ((_tl1628016824_
                           (let () (declare (not safe)) (##cdr _e1627816817_)))
                          (_hd1627916821_
                           (let ()
                             (declare (not safe))
                             (##car _e1627816817_))))
                      (if (gx#stx-pair? _tl1628016824_)
                          (let ((_e1628116827_ (gx#syntax-e _tl1628016824_)))
                            (let ((_tl1628316834_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1628116827_)))
                                  (_hd1628216831_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1628116827_))))
                              (if (gx#stx-pair? _tl1628316834_)
                                  (let ((_e1628416837_
                                         (gx#syntax-e _tl1628316834_)))
                                    (let ((_tl1628616844_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1628416837_)))
                                          (_hd1628516841_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1628416837_))))
                                      (if (gx#stx-null? _tl1628616844_)
                                          (___kont2327523276_
                                           _hd1628516841_
                                           _hd1628216831_)
                                          (if (gx#stx-pair? _tl1628616844_)
                                              (let ((_e1629916779_
                                                     (gx#syntax-e
                                                      _tl1628616844_)))
                                                (let ((_tl1630116786_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1629916779_)))
                                                      (_hd1630016783_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1629916779_))))
                                                  (if (gx#stx-null?
                                                       _tl1630116786_)
                                                      (___kont2327723278_
                                                       _hd1630016783_
                                                       _hd1628516841_
                                                       _hd1628216831_)
                                                      (if (gx#stx-pair?
                                                           _tl1630116786_)
                                                          (let ((_e1631816676_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1630116786_)))
                    (let ((_tl1632016683_
                           (let () (declare (not safe)) (##cdr _e1631816676_)))
                          (_hd1631916680_
                           (let ()
                             (declare (not safe))
                             (##car _e1631816676_))))
                      (if (gx#stx-null? _tl1632016683_)
                          (___kont2327923280_
                           _hd1631916680_
                           _hd1630016783_
                           _hd1628516841_
                           _hd1628216831_)
                          (if (gx#stx-pair? _tl1632016683_)
                              (let ((_e1634116526_
                                     (gx#syntax-e _tl1632016683_)))
                                (let ((_tl1634316533_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1634116526_)))
                                      (_hd1634216530_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1634116526_))))
                                  (if (gx#stx-null? _tl1634316533_)
                                      (___kont2328123282_
                                       _hd1634216530_
                                       _hd1631916680_
                                       _hd1630016783_
                                       _hd1628516841_
                                       _hd1628216831_)
                                      (if (gx#stx-pair/null? _tl1628616844_)
                                          (let ((___splice2328523286_
                                                 (gx#syntax-split-splice
                                                  _tl1628616844_
                                                  '0)))
                                            (let ((_tl1635816410_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2328523286_
                                                      '1)))
                                                  (_target1635616407_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2328523286_
                                                      '0))))
                                              (if (gx#stx-null? _tl1635816410_)
                                                  (___match2342923430_
                                                   _e1627816817_
                                                   _hd1627916821_
                                                   _tl1628016824_
                                                   _e1628116827_
                                                   _hd1628216831_
                                                   _tl1628316834_
                                                   _e1628416837_
                                                   _hd1628516841_
                                                   _tl1628616844_
                                                   ___splice2328523286_
                                                   _target1635616407_
                                                   _tl1635816410_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1627416370_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1627416370_))))))
                              (if (gx#stx-pair/null? _tl1628616844_)
                                  (let ((___splice2328523286_
                                         (gx#syntax-split-splice
                                          _tl1628616844_
                                          '0)))
                                    (let ((_tl1635816410_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2328523286_
                                              '1)))
                                          (_target1635616407_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2328523286_
                                              '0))))
                                      (if (gx#stx-null? _tl1635816410_)
                                          (___match2342923430_
                                           _e1627816817_
                                           _hd1627916821_
                                           _tl1628016824_
                                           _e1628116827_
                                           _hd1628216831_
                                           _tl1628316834_
                                           _e1628416837_
                                           _hd1628516841_
                                           _tl1628616844_
                                           ___splice2328523286_
                                           _target1635616407_
                                           _tl1635816410_)
                                          (let ()
                                            (declare (not safe))
                                            (_g1627416370_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1627416370_)))))))
                  (if (gx#stx-pair/null? _tl1628616844_)
                      (let ((___splice2328523286_
                             (gx#syntax-split-splice _tl1628616844_ '0)))
                        (let ((_tl1635816410_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice2328523286_ '1)))
                              (_target1635616407_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice2328523286_ '0))))
                          (if (gx#stx-null? _tl1635816410_)
                              (___match2342923430_
                               _e1627816817_
                               _hd1627916821_
                               _tl1628016824_
                               _e1628116827_
                               _hd1628216831_
                               _tl1628316834_
                               _e1628416837_
                               _hd1628516841_
                               _tl1628616844_
                               ___splice2328523286_
                               _target1635616407_
                               _tl1635816410_)
                              (let () (declare (not safe)) (_g1627416370_)))))
                      (let () (declare (not safe)) (_g1627416370_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl1628616844_)
                                                  (let ((___splice2328523286_
                                                         (gx#syntax-split-splice
                                                          _tl1628616844_
                                                          '0)))
                                                    (let ((_tl1635816410_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice2328523286_
                                                              '1)))
                                                          (_target1635616407_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice2328523286_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl1635816410_)
                                                          (___match2342923430_
                                                           _e1627816817_
                                                           _hd1627916821_
                                                           _tl1628016824_
                                                           _e1628116827_
                                                           _hd1628216831_
                                                           _tl1628316834_
                                                           _e1628416837_
                                                           _hd1628516841_
                                                           _tl1628616844_
                                                           ___splice2328523286_
                                                           _target1635616407_
                                                           _tl1635816410_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g1627416370_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1627416370_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1627416370_)))))
                          (let () (declare (not safe)) (_g1627416370_)))))
                  (let () (declare (not safe)) (_g1627416370_))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#~case-dispatch-bsearch|
      (lambda (_stx16869_)
        (letrec ((_split16872_
                  (lambda (_lst17233_ _mid17235_)
                    (let _lp17237_ ((_i17240_ '0)
                                    (_rest17242_ _lst17233_)
                                    (_left17243_ '()))
                      (if (fx< _i17240_ _mid17235_)
                          (_lp17237_
                           (let () (declare (not safe)) (fx+ _i17240_ '1))
                           (cdr _rest17242_)
                           (let ((__tmp25489 (car _rest17242_)))
                             (declare (not safe))
                             (cons __tmp25489 _left17243_)))
                          (values (reverse _left17243_) _rest17242_))))))
          (let* ((_g1687516903_
                  (lambda (_g1687616899_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1687616899_)))
                 (_g1687417229_
                  (lambda (_g1687616907_)
                    (if (gx#stx-pair? _g1687616907_)
                        (let ((_e1688016910_ (gx#syntax-e _g1687616907_)))
                          (let ((_hd1688116914_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1688016910_)))
                                (_tl1688216917_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1688016910_))))
                            (if (gx#stx-pair? _tl1688216917_)
                                (let ((_e1688316920_
                                       (gx#syntax-e _tl1688216917_)))
                                  (let ((_hd1688416924_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1688316920_)))
                                        (_tl1688516927_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1688316920_))))
                                    (if (gx#stx-pair? _tl1688516927_)
                                        (let ((_e1688616930_
                                               (gx#syntax-e _tl1688516927_)))
                                          (let ((_hd1688716934_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1688616930_)))
                                                (_tl1688816937_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1688616930_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1688816937_)
                                                (let ((_g25490_
                                                       (gx#syntax-split-splice
                                                        _tl1688816937_
                                                        '0)))
                                                  (begin
                                                    (let ((_g25491_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g25490_)
                         (##vector-length _g25490_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g25491_ 2)))
                  (error "Context expects 2 values" _g25491_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1688916940_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g25490_
                                                              0)))
                                                          (_tl1689116943_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g25490_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1689116943_)
                                                          (letrec ((_loop1689216946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1689016950_ _K1689616953_)
                              (if (gx#stx-pair? _hd1689016950_)
                                  (let ((_e1689316956_
                                         (gx#syntax-e _hd1689016950_)))
                                    (let ((_lp-hd1689416960_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1689316956_)))
                                          (_lp-tl1689516963_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1689316956_))))
                                      (_loop1689216946_
                                       _lp-tl1689516963_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1689416960_
                                               _K1689616953_)))))
                                  (let ((_K1689716966_
                                         (reverse _K1689616953_)))
                                    ((lambda (_L16970_ _L16972_ _L16973_)
                                       (let* ((_len17003_
                                               (length (foldr (lambda (_g1699416997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1699517000_)
                        (let ()
                          (declare (not safe))
                          (cons _g1699416997_ _g1699517000_)))
                      '()
                      _L16970_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_mid17006_
                                               (quotient _len17003_ '2))
                                              (_g25492_
                                               (_split16872_
                                                (foldr (lambda (_g1700817011_
                                                                _g1700917014_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g1700817011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1700917014_)))
               '()
               _L16970_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _mid17006_)))
                                         (begin
                                           (let ((_g25493_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g25492_)
                                                        (##vector-length
                                                         _g25492_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g25493_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g25493_)))
                                           (let ((_left17017_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g25492_ 0)))
                                                 (_right17019_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g25492_
                                                     1))))
                                             (let ()
                                               (let* ((_g1702317064_
                                                       (lambda (_g1702417060_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g1702417060_)))
                                                      (_g1702217225_
                                                       (lambda (_g1702417068_)
                                                         (if (gx#stx-pair?
                                                              _g1702417068_)
                                                             (let ((_e1702917071_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1702417068_)))
                       (let ((_hd1703017075_
                              (let ()
                                (declare (not safe))
                                (##car _e1702917071_)))
                             (_tl1703117078_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1702917071_))))
                         (if (gx#stx-pair? _tl1703117078_)
                             (let ((_e1703217081_
                                    (gx#syntax-e _tl1703117078_)))
                               (let ((_hd1703317085_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1703217081_)))
                                     (_tl1703417088_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1703217081_))))
                                 (if (gx#stx-pair/null? _hd1703317085_)
                                     (let ((_g25494_
                                            (gx#syntax-split-splice
                                             _hd1703317085_
                                             '0)))
                                       (begin
                                         (let ((_g25495_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g25494_)
                                                      (##vector-length
                                                       _g25494_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g25495_ 2)))
                                               (error "Context expects 2 values"
                                                      _g25495_)))
                                         (let ((_target1703517091_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g25494_ 0)))
                                               (_tl1703717094_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g25494_ 1))))
                                           (if (gx#stx-null? _tl1703717094_)
                                               (letrec ((_loop1703817097_
                                                         (lambda (_hd1703617101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K-left1704217104_)
                   (if (gx#stx-pair? _hd1703617101_)
                       (let ((_e1703917107_ (gx#syntax-e _hd1703617101_)))
                         (let ((_lp-hd1704017111_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1703917107_)))
                               (_lp-tl1704117114_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1703917107_))))
                           (_loop1703817097_
                            _lp-tl1704117114_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd1704017111_ _K-left1704217104_)))))
                       (let ((_K-left1704317117_ (reverse _K-left1704217104_)))
                         (if (gx#stx-pair? _tl1703417088_)
                             (let ((_e1704417121_
                                    (gx#syntax-e _tl1703417088_)))
                               (let ((_hd1704517125_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1704417121_)))
                                     (_tl1704617128_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1704417121_))))
                                 (if (gx#stx-pair/null? _hd1704517125_)
                                     (let ((_g25496_
                                            (gx#syntax-split-splice
                                             _hd1704517125_
                                             '0)))
                                       (begin
                                         (let ((_g25497_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g25496_)
                                                      (##vector-length
                                                       _g25496_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g25497_ 2)))
                                               (error "Context expects 2 values"
                                                      _g25497_)))
                                         (let ((_target1704717131_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g25496_ 0)))
                                               (_tl1704917134_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g25496_ 1))))
                                           (if (gx#stx-null? _tl1704917134_)
                                               (letrec ((_loop1705017137_
                                                         (lambda (_hd1704817141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K-right1705417144_)
                   (if (gx#stx-pair? _hd1704817141_)
                       (let ((_e1705117147_ (gx#syntax-e _hd1704817141_)))
                         (let ((_lp-hd1705217151_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1705117147_)))
                               (_lp-tl1705317154_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1705117147_))))
                           (_loop1705017137_
                            _lp-tl1705317154_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd1705217151_ _K-right1705417144_)))))
                       (let ((_K-right1705517157_
                              (reverse _K-right1705417144_)))
                         (if (gx#stx-pair? _tl1704617128_)
                             (let ((_e1705617161_
                                    (gx#syntax-e _tl1704617128_)))
                               (let ((_hd1705717165_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1705617161_)))
                                     (_tl1705817168_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1705617161_))))
                                 (if (gx#stx-null? _tl1705817168_)
                                     ((lambda (_L17171_
                                               _L17173_
                                               _L17174_
                                               _L17175_)
                                        (let ()
                                          (let ((__tmp25515
                                                 (gx#datum->syntax '#f 'if))
                                                (__tmp25498
                                                 (let ((__tmp25511
                                                        (let ((__tmp25514
                                                               (gx#datum->syntax
                                                                '#f
                                                                '##fx<))
                                                              (__tmp25512
                                                               (let ((__tmp25513
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _L17171_ '()))))
                         (declare (not safe))
                         (cons _L16972_ __tmp25513))))
                  (declare (not safe))
                  (cons __tmp25514 __tmp25512)))
               (__tmp25499
                (let ((__tmp25506
                       (let ((__tmp25510
                              (gx#datum->syntax '#f '~case-dispatch*))
                             (__tmp25507
                              (let ((__tmp25508
                                     (let ((__tmp25509
                                            (foldr (lambda (_g1720817213_
                                                            _g1720917216_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1720817213_
                                                             _g1720917216_)))
                                                   '()
                                                   _L17174_)))
                                       (declare (not safe))
                                       (cons _L16972_ __tmp25509))))
                                (declare (not safe))
                                (cons _L16973_ __tmp25508))))
                         (declare (not safe))
                         (cons __tmp25510 __tmp25507)))
                      (__tmp25500
                       (let ((__tmp25501
                              (let ((__tmp25505
                                     (gx#datum->syntax '#f '~case-dispatch*))
                                    (__tmp25502
                                     (let ((__tmp25503
                                            (let ((__tmp25504
                                                   (foldr (lambda (_g1721017219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1721117222_)
                    (let ()
                      (declare (not safe))
                      (cons _g1721017219_ _g1721117222_)))
                  '()
                  _L17173_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (cons _L16972_ __tmp25504))))
                                       (declare (not safe))
                                       (cons _L17171_ __tmp25503))))
                                (declare (not safe))
                                (cons __tmp25505 __tmp25502))))
                         (declare (not safe))
                         (cons __tmp25501 '()))))
                  (declare (not safe))
                  (cons __tmp25506 __tmp25500))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25511
                                                         __tmp25499))))
                                            (declare (not safe))
                                            (cons __tmp25515 __tmp25498))))
                                      _hd1705717165_
                                      _K-right1705517157_
                                      _K-left1704317117_
                                      _hd1703017075_)
                                     (_g1702317064_ _g1702417068_))))
                             (_g1702317064_ _g1702417068_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1705017137_
                                                  _target1704717131_
                                                  '()))
                                               (_g1702317064_
                                                _g1702417068_)))))
                                     (_g1702317064_ _g1702417068_))))
                             (_g1702317064_ _g1702417068_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1703817097_
                                                  _target1703517091_
                                                  '()))
                                               (_g1702317064_
                                                _g1702417068_)))))
                                     (_g1702317064_ _g1702417068_))))
                             (_g1702317064_ _g1702417068_))))
                     (_g1702317064_ _g1702417068_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1702217225_
                                                  (list _mid17006_
                                                        _left17017_
                                                        _right17019_
                                                        (fx+ _mid17006_
                                                             (gx#stx-e
                                                              _L16973_))))))))))
                                     _K1689716966_
                                     _hd1688716934_
                                     _hd1688416924_))))))
                    (_loop1689216946_ _target1688916940_ '()))
                  (_g1687516903_ _g1687616907_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1687516903_
                                                 _g1687616907_))))
                                        (_g1687516903_ _g1687616907_))))
                                (_g1687516903_ _g1687616907_))))
                        (_g1687516903_ _g1687616907_)))))
            (_g1687417229_ _stx16869_)))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#do|
      (lambda (_$stx17249_)
        (let* ((_g1725317324_
                (lambda (_g1725417320_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1725417320_)))
               (_g1725217613_
                (lambda (_g1725417328_)
                  (if (gx#stx-pair? _g1725417328_)
                      (let ((_e1726117331_ (gx#syntax-e _g1725417328_)))
                        (let ((_hd1726217335_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1726117331_)))
                              (_tl1726317338_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1726117331_))))
                          (if (gx#stx-pair? _tl1726317338_)
                              (let ((_e1726417341_
                                     (gx#syntax-e _tl1726317338_)))
                                (let ((_hd1726517345_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1726417341_)))
                                      (_tl1726617348_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1726417341_))))
                                  (if (gx#stx-pair/null? _hd1726517345_)
                                      (let ((_g25516_
                                             (gx#syntax-split-splice
                                              _hd1726517345_
                                              '0)))
                                        (begin
                                          (let ((_g25517_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g25516_)
                                                       (##vector-length
                                                        _g25516_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g25517_ 2)))
                                                (error "Context expects 2 values"
                                                       _g25517_)))
                                          (let ((_target1726717351_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25516_ 0)))
                                                (_tl1726917354_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25516_ 1))))
                                            (if (gx#stx-null? _tl1726917354_)
                                                (letrec ((_loop1727017357_
                                                          (lambda (_hd1726817361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _step1727417364_
                           _init1727517366_
                           _var1727617368_)
                    (if (gx#stx-pair? _hd1726817361_)
                        (let ((_e1727117371_ (gx#syntax-e _hd1726817361_)))
                          (let ((_lp-hd1727217375_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1727117371_)))
                                (_lp-tl1727317378_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1727117371_))))
                            (if (gx#stx-pair? _lp-hd1727217375_)
                                (let ((_e1728017381_
                                       (gx#syntax-e _lp-hd1727217375_)))
                                  (let ((_hd1728117385_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1728017381_)))
                                        (_tl1728217388_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1728017381_))))
                                    (if (gx#stx-pair? _tl1728217388_)
                                        (let ((_e1728317391_
                                               (gx#syntax-e _tl1728217388_)))
                                          (let ((_hd1728417395_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1728317391_)))
                                                (_tl1728517398_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1728317391_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1728517398_)
                                                (let ((_g25518_
                                                       (gx#syntax-split-splice
                                                        _tl1728517398_
                                                        '0)))
                                                  (begin
                                                    (let ((_g25519_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g25518_)
                         (##vector-length _g25518_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g25519_ 2)))
                  (error "Context expects 2 values" _g25519_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1728617401_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g25518_
                                                              0)))
                                                          (_tl1728817404_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g25518_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1728817404_)
                                                          (letrec ((_loop1728917407_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1728717411_ _step1729317414_)
                              (if (gx#stx-pair? _hd1728717411_)
                                  (let ((_e1729017417_
                                         (gx#syntax-e _hd1728717411_)))
                                    (let ((_lp-hd1729117421_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1729017417_)))
                                          (_lp-tl1729217424_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1729017417_))))
                                      (_loop1728917407_
                                       _lp-tl1729217424_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1729117421_
                                               _step1729317414_)))))
                                  (let ((_step1729417427_
                                         (reverse _step1729317414_)))
                                    (_loop1727017357_
                                     _lp-tl1727317378_
                                     (let ()
                                       (declare (not safe))
                                       (cons _step1729417427_
                                             _step1727417364_))
                                     (let ()
                                       (declare (not safe))
                                       (cons _hd1728417395_ _init1727517366_))
                                     (let ()
                                       (declare (not safe))
                                       (cons _hd1728117385_
                                             _var1727617368_))))))))
                    (_loop1728917407_ _target1728617401_ '()))
                  (_g1725317324_ _g1725417328_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1725317324_
                                                 _g1725417328_))))
                                        (_g1725317324_ _g1725417328_))))
                                (_g1725317324_ _g1725417328_))))
                        (let ((_step1727717431_ (reverse _step1727417364_))
                              (_init1727817434_ (reverse _init1727517366_))
                              (_var1727917436_ (reverse _var1727617368_)))
                          (if (gx#stx-pair? _tl1726617348_)
                              (let ((_e1729517439_
                                     (gx#syntax-e _tl1726617348_)))
                                (let ((_hd1729617443_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1729517439_)))
                                      (_tl1729717446_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1729517439_))))
                                  (if (gx#stx-pair? _hd1729617443_)
                                      (let ((_e1729817449_
                                             (gx#syntax-e _hd1729617443_)))
                                        (let ((_hd1729917453_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1729817449_)))
                                              (_tl1730017456_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1729817449_))))
                                          (if (gx#stx-pair/null?
                                               _tl1730017456_)
                                              (let ((_g25520_
                                                     (gx#syntax-split-splice
                                                      _tl1730017456_
                                                      '0)))
                                                (begin
                                                  (let ((_g25521_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g25520_)
                                                               (##vector-length
                                                                _g25520_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g25521_ 2)))
                (error "Context expects 2 values" _g25521_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1730117459_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g25520_
                                                            0)))
                                                        (_tl1730317462_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g25520_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl1730317462_)
                                                        (letrec ((_loop1730417465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1730217469_ _fini1730817472_)
                            (if (gx#stx-pair? _hd1730217469_)
                                (let ((_e1730517475_
                                       (gx#syntax-e _hd1730217469_)))
                                  (let ((_lp-hd1730617479_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1730517475_)))
                                        (_lp-tl1730717482_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1730517475_))))
                                    (_loop1730417465_
                                     _lp-tl1730717482_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd1730617479_
                                             _fini1730817472_)))))
                                (let ((_fini1730917485_
                                       (reverse _fini1730817472_)))
                                  (if (gx#stx-pair/null? _tl1729717446_)
                                      (let ((_g25522_
                                             (gx#syntax-split-splice
                                              _tl1729717446_
                                              '0)))
                                        (begin
                                          (let ((_g25523_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g25522_)
                                                       (##vector-length
                                                        _g25522_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g25523_ 2)))
                                                (error "Context expects 2 values"
                                                       _g25523_)))
                                          (let ((_target1731017489_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25522_ 0)))
                                                (_tl1731217492_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25522_ 1))))
                                            (if (gx#stx-null? _tl1731217492_)
                                                (letrec ((_loop1731317495_
                                                          (lambda (_hd1731117499_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body1731717502_)
                    (if (gx#stx-pair? _hd1731117499_)
                        (let ((_e1731417505_ (gx#syntax-e _hd1731117499_)))
                          (let ((_lp-hd1731517509_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1731417505_)))
                                (_lp-tl1731617512_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1731417505_))))
                            (_loop1731317495_
                             _lp-tl1731617512_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1731517509_ _body1731717502_)))))
                        (let ((_body1731817515_ (reverse _body1731717502_)))
                          ((lambda (_L17519_
                                    _L17521_
                                    _L17522_
                                    _L17523_
                                    _L17524_
                                    _L17525_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_g1755817561_ _g1755917564_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g1755817561_
                                                   _g1755917564_)))
                                         '()
                                         _L17525_))
                                 (let ((__tmp25550 (gx#datum->syntax '#f 'let))
                                       (__tmp25524
                                        (let ((__tmp25549
                                               (gx#datum->syntax '#f '$loop))
                                              (__tmp25525
                                               (let ((__tmp25546
                                                      (begin
                                                        (gx#syntax-check-splice-targets
                                                         _L17524_
                                                         _L17525_)
                                                        (foldr (lambda (_g1756617579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1756717582_
                                _g1756817584_)
                         (let ((__tmp25547
                                (let ((__tmp25548
                                       (let ()
                                         (declare (not safe))
                                         (cons _g1756617579_ '()))))
                                  (declare (not safe))
                                  (cons _g1756717582_ __tmp25548))))
                           (declare (not safe))
                           (cons __tmp25547 _g1756817584_)))
                       '()
                       _L17524_
                       _L17525_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp25526
                                                      (let ((__tmp25527
                                                             (let ((__tmp25545
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'if))
                           (__tmp25528
                            (let ((__tmp25529
                                   (let ((__tmp25541
                                          (let ((__tmp25544
                                                 (gx#datum->syntax '#f 'begin))
                                                (__tmp25542
                                                 (let ((__tmp25543
                                                        (foldr (lambda (_g1756917587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1757017590_)
                         (let ()
                           (declare (not safe))
                           (cons _g1756917587_ _g1757017590_)))
                       '()
                       _L17521_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '#!void __tmp25543))))
                                            (declare (not safe))
                                            (cons __tmp25544 __tmp25542)))
                                         (__tmp25530
                                          (let ((__tmp25531
                                                 (let ((__tmp25540
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin))
                                                       (__tmp25532
                                                        (foldr (lambda (_g1757117593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1757217596_)
                         (let ()
                           (declare (not safe))
                           (cons _g1757117593_ _g1757217596_)))
                       (let ((__tmp25533
                              (let ((__tmp25539 (gx#datum->syntax '#f '$loop))
                                    (__tmp25534
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _L17523_
                                        _L17525_)
                                       (foldr (lambda (_g1757317599_
                                                       _g1757417602_
                                                       _g1757517604_)
                                                (let ((__tmp25535
                                                       (let ((__tmp25538
                                                              (gx#datum->syntax
                                                               '#f
                                                               'begin))
                                                             (__tmp25536
                                                              (let ((__tmp25537
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr (lambda (_g1757617607_ _g1757717610_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g1757617607_ _g1757717610_)))
                                    '()
                                    _g1757317599_)))
                        (declare (not safe))
                        (cons _g1757417602_ __tmp25537))))
                 (declare (not safe))
                 (cons __tmp25538 __tmp25536))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25535
                                                        _g1757517604_)))
                                              '()
                                              _L17523_
                                              _L17525_))))
                                (declare (not safe))
                                (cons __tmp25539 __tmp25534))))
                         (declare (not safe))
                         (cons __tmp25533 '()))
                       _L17519_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25540
                                                         __tmp25532))))
                                            (declare (not safe))
                                            (cons __tmp25531 '()))))
                                     (declare (not safe))
                                     (cons __tmp25541 __tmp25530))))
                              (declare (not safe))
                              (cons _L17522_ __tmp25529))))
                       (declare (not safe))
                       (cons __tmp25545 __tmp25528))))
                (declare (not safe))
                (cons __tmp25527 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25546
                                                       __tmp25526))))
                                          (declare (not safe))
                                          (cons __tmp25549 __tmp25525))))
                                   (declare (not safe))
                                   (cons __tmp25550 __tmp25524))
                                 (_g1725317324_ _g1725417328_)))
                           _body1731817515_
                           _fini1730917485_
                           _hd1729917453_
                           _step1727717431_
                           _init1727817434_
                           _var1727917436_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1731317495_
                                                   _target1731017489_
                                                   '()))
                                                (_g1725317324_
                                                 _g1725417328_)))))
                                      (_g1725317324_ _g1725417328_)))))))
                  (_loop1730417465_ _target1730117459_ '()))
                (_g1725317324_ _g1725417328_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1725317324_ _g1725417328_))))
                                      (_g1725317324_ _g1725417328_))))
                              (_g1725317324_ _g1725417328_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1727017357_
                                                   _target1726717351_
                                                   '()
                                                   '()
                                                   '()))
                                                (_g1725317324_
                                                 _g1725417328_)))))
                                      (_g1725317324_ _g1725417328_))))
                              (_g1725317324_ _g1725417328_))))
                      (_g1725317324_ _g1725417328_)))))
          (_g1725217613_ _$stx17249_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#do-while|
      (lambda (_$stx17621_)
        (let* ((_g1762517648_
                (lambda (_g1762617644_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1762617644_)))
               (_g1762417719_
                (lambda (_g1762617652_)
                  (if (gx#stx-pair? _g1762617652_)
                      (let ((_e1763117655_ (gx#syntax-e _g1762617652_)))
                        (let ((_hd1763217659_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1763117655_)))
                              (_tl1763317662_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1763117655_))))
                          (if (gx#stx-pair? _tl1763317662_)
                              (let ((_e1763417665_
                                     (gx#syntax-e _tl1763317662_)))
                                (let ((_hd1763517669_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1763417665_)))
                                      (_tl1763617672_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1763417665_))))
                                  (if (gx#stx-pair? _tl1763617672_)
                                      (let ((_e1763717675_
                                             (gx#syntax-e _tl1763617672_)))
                                        (let ((_hd1763817679_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1763717675_)))
                                              (_tl1763917682_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1763717675_))))
                                          (if (gx#stx-pair? _hd1763817679_)
                                              (let ((_e1764017685_
                                                     (gx#syntax-e
                                                      _hd1763817679_)))
                                                (let ((_hd1764117689_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1764017685_)))
                                                      (_tl1764217692_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1764017685_))))
                                                  ((lambda (_L17695_
                                                            _L17697_
                                                            _L17698_
                                                            _L17699_)
                                                     (let ((__tmp25557
                                                            (gx#datum->syntax
                                                             '#f
                                                             'do))
                                                           (__tmp25551
                                                            (let ((__tmp25552
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp25553
                                  (let ((__tmp25554
                                         (let ((__tmp25556
                                                (gx#datum->syntax '#f 'not))
                                               (__tmp25555
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L17698_ '()))))
                                           (declare (not safe))
                                           (cons __tmp25556 __tmp25555))))
                                    (declare (not safe))
                                    (cons __tmp25554 _L17697_))))
                             (declare (not safe))
                             (cons __tmp25553 _L17695_))))
                      (declare (not safe))
                      (cons _L17699_ __tmp25552))))
               (declare (not safe))
               (cons __tmp25557 __tmp25551)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl1763917682_
                                                   _tl1764217692_
                                                   _hd1764117689_
                                                   _hd1763517669_)))
                                              (_g1762517648_ _g1762617652_))))
                                      (_g1762517648_ _g1762617652_))))
                              (_g1762517648_ _g1762617652_))))
                      (_g1762517648_ _g1762617652_)))))
          (_g1762417719_ _$stx17621_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#begin0|
      (lambda (_$stx17723_)
        (let* ((___stx2343223433_ _$stx17723_)
               (_g1772817759_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2343223433_))))
          (let ((___kont2343523436_ (lambda (_L17871_) _L17871_))
                (___kont2343723438_
                 (lambda (_L17816_ _L17818_)
                   (let ((__tmp25571 (gx#datum->syntax '#f 'let))
                         (__tmp25558
                          (let ((__tmp25568
                                 (let ((__tmp25570 (gx#datum->syntax '#f '$r))
                                       (__tmp25569
                                        (let ()
                                          (declare (not safe))
                                          (cons _L17818_ '()))))
                                   (declare (not safe))
                                   (cons __tmp25570 __tmp25569)))
                                (__tmp25559
                                 (let ((__tmp25562
                                        (let ((__tmp25567
                                               (gx#datum->syntax
                                                '#f
                                                '%#expression))
                                              (__tmp25563
                                               (let ((__tmp25564
                                                      (let ((__tmp25566
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp25565
                                                             (foldr (lambda (_g1783517838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1783617841_)
                              (let ()
                                (declare (not safe))
                                (cons _g1783517838_ _g1783617841_)))
                            '()
                            _L17816_)))
                (declare (not safe))
                (cons __tmp25566 __tmp25565))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25564 '()))))
                                          (declare (not safe))
                                          (cons __tmp25567 __tmp25563)))
                                       (__tmp25560
                                        (let ((__tmp25561
                                               (gx#datum->syntax '#f '$r)))
                                          (declare (not safe))
                                          (cons __tmp25561 '()))))
                                   (declare (not safe))
                                   (cons __tmp25562 __tmp25560))))
                            (declare (not safe))
                            (cons __tmp25568 __tmp25559))))
                     (declare (not safe))
                     (cons __tmp25571 __tmp25558)))))
            (let ((___match2347523476_
                   (lambda (_e1773917766_
                            _hd1774017770_
                            _tl1774117773_
                            _e1774217776_
                            _hd1774317780_
                            _tl1774417783_
                            ___splice2343923440_
                            _target1774517786_
                            _tl1774717789_)
                     (letrec ((_loop1774817792_
                               (lambda (_hd1774617796_ _rest1775217799_)
                                 (if (gx#stx-pair? _hd1774617796_)
                                     (let ((_e1774917802_
                                            (gx#syntax-e _hd1774617796_)))
                                       (let ((_lp-tl1775117809_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e1774917802_)))
                                             (_lp-hd1775017806_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e1774917802_))))
                                         (_loop1774817792_
                                          _lp-tl1775117809_
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd1775017806_
                                                  _rest1775217799_)))))
                                     (let ((_rest1775317812_
                                            (reverse _rest1775217799_)))
                                       (___kont2343723438_
                                        _rest1775317812_
                                        _hd1774317780_))))))
                       (_loop1774817792_ _target1774517786_ '())))))
              (if (gx#stx-pair? ___stx2343223433_)
                  (let ((_e1773117851_ (gx#syntax-e ___stx2343223433_)))
                    (let ((_tl1773317858_
                           (let () (declare (not safe)) (##cdr _e1773117851_)))
                          (_hd1773217855_
                           (let ()
                             (declare (not safe))
                             (##car _e1773117851_))))
                      (if (gx#stx-pair? _tl1773317858_)
                          (let ((_e1773417861_ (gx#syntax-e _tl1773317858_)))
                            (let ((_tl1773617868_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1773417861_)))
                                  (_hd1773517865_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1773417861_))))
                              (if (gx#stx-null? _tl1773617868_)
                                  (___kont2343523436_ _hd1773517865_)
                                  (if (gx#stx-pair/null? _tl1773617868_)
                                      (let ((___splice2343923440_
                                             (gx#syntax-split-splice
                                              _tl1773617868_
                                              '0)))
                                        (let ((_tl1774717789_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2343923440_
                                                  '1)))
                                              (_target1774517786_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2343923440_
                                                  '0))))
                                          (if (gx#stx-null? _tl1774717789_)
                                              (___match2347523476_
                                               _e1773117851_
                                               _hd1773217855_
                                               _tl1773317858_
                                               _e1773417861_
                                               _hd1773517865_
                                               _tl1773617868_
                                               ___splice2343923440_
                                               _target1774517786_
                                               _tl1774717789_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1772817759_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1772817759_))))))
                          (let () (declare (not safe)) (_g1772817759_)))))
                  (let () (declare (not safe)) (_g1772817759_))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#rec|
      (lambda (_$stx17889_)
        (let* ((___stx2347823479_ _$stx17889_)
               (_g1789517948_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2347823479_))))
          (let ((___kont2348123482_
                 (lambda (_L18150_ _L18152_)
                   (let ((__tmp25577 (gx#datum->syntax '#f 'letrec))
                         (__tmp25572
                          (let ((__tmp25574
                                 (let ((__tmp25575
                                        (let ((__tmp25576
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L18150_ '()))))
                                          (declare (not safe))
                                          (cons _L18152_ __tmp25576))))
                                   (declare (not safe))
                                   (cons __tmp25575 '())))
                                (__tmp25573
                                 (let ()
                                   (declare (not safe))
                                   (cons _L18152_ '()))))
                            (declare (not safe))
                            (cons __tmp25574 __tmp25573))))
                     (declare (not safe))
                     (cons __tmp25577 __tmp25572))))
                (___kont2348323484_
                 (lambda (_L18094_ _L18096_)
                   (let ((__tmp25585 (gx#datum->syntax '#f 'letrec-values))
                         (__tmp25578
                          (let ((__tmp25582
                                 (let ((__tmp25583
                                        (let ((__tmp25584
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L18094_ '()))))
                                          (declare (not safe))
                                          (cons _L18096_ __tmp25584))))
                                   (declare (not safe))
                                   (cons __tmp25583 '())))
                                (__tmp25579
                                 (let ((__tmp25580
                                        (let ((__tmp25581
                                               (gx#datum->syntax '#f 'values)))
                                          (declare (not safe))
                                          (cons __tmp25581 _L18096_))))
                                   (declare (not safe))
                                   (cons __tmp25580 '()))))
                            (declare (not safe))
                            (cons __tmp25582 __tmp25579))))
                     (declare (not safe))
                     (cons __tmp25585 __tmp25578))))
                (___kont2348523486_
                 (lambda (_L18015_ _L18017_ _L18018_)
                   (let ((__tmp25595 (gx#datum->syntax '#f 'letrec))
                         (__tmp25586
                          (let ((__tmp25588
                                 (let ((__tmp25589
                                        (let ((__tmp25590
                                               (let ((__tmp25591
                                                      (let ((__tmp25594
                                                             (gx#datum->syntax
                                                              '#f
                                                              'lambda))
                                                            (__tmp25592
                                                             (let ((__tmp25593
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr (lambda (_g1803818041_ _g1803918044_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g1803818041_ _g1803918044_)))
                                   '()
                                   _L18015_)))
                       (declare (not safe))
                       (cons _L18017_ __tmp25593))))
                (declare (not safe))
                (cons __tmp25594 __tmp25592))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25591 '()))))
                                          (declare (not safe))
                                          (cons _L18018_ __tmp25590))))
                                   (declare (not safe))
                                   (cons __tmp25589 '())))
                                (__tmp25587
                                 (let ()
                                   (declare (not safe))
                                   (cons _L18018_ '()))))
                            (declare (not safe))
                            (cons __tmp25588 __tmp25587))))
                     (declare (not safe))
                     (cons __tmp25595 __tmp25586)))))
            (let* ((___match2356523566_
                    (lambda (_e1792517955_
                             _hd1792617959_
                             _tl1792717962_
                             _e1792817965_
                             _hd1792917969_
                             _tl1793017972_
                             _e1793117975_
                             _hd1793217979_
                             _tl1793317982_
                             ___splice2348723488_
                             _target1793417985_
                             _tl1793617988_)
                      (letrec ((_loop1793717991_
                                (lambda (_hd1793517995_ _body1794117998_)
                                  (if (gx#stx-pair? _hd1793517995_)
                                      (let ((_e1793818001_
                                             (gx#syntax-e _hd1793517995_)))
                                        (let ((_lp-tl1794018008_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1793818001_)))
                                              (_lp-hd1793918005_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1793818001_))))
                                          (_loop1793717991_
                                           _lp-tl1794018008_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1793918005_
                                                   _body1794117998_)))))
                                      (let ((_body1794218011_
                                             (reverse _body1794117998_)))
                                        (let ((_L18015_ _body1794218011_)
                                              (_L18017_ _tl1793317982_)
                                              (_L18018_ _hd1793217979_))
                                          (if (gx#identifier? _L18018_)
                                              (___kont2348523486_
                                               _L18015_
                                               _L18017_
                                               _L18018_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1789517948_)))))))))
                        (_loop1793717991_ _target1793417985_ '()))))
                   (___match2353923540_
                    (lambda (_e1791018054_
                             _hd1791118058_
                             _tl1791218061_
                             _e1791318064_
                             _hd1791418068_
                             _tl1791518071_
                             _e1791618074_
                             _hd1791718078_
                             _tl1791818081_
                             _e1791918084_
                             _hd1792018088_
                             _tl1792118091_)
                      (let ((_L18094_ _hd1792018088_)
                            (_L18096_ _tl1791818081_))
                        (if (gx#identifier-list? _L18096_)
                            (___kont2348323484_ _L18094_ _L18096_)
                            (if (gx#stx-pair/null? _tl1791518071_)
                                (let ((___splice2348723488_
                                       (gx#syntax-split-splice
                                        _tl1791518071_
                                        '0)))
                                  (let ((_tl1793617988_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice2348723488_
                                            '1)))
                                        (_target1793417985_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice2348723488_
                                            '0))))
                                    (if (gx#stx-null? _tl1793617988_)
                                        (___match2356523566_
                                         _e1791018054_
                                         _hd1791118058_
                                         _tl1791218061_
                                         _e1791318064_
                                         _hd1791418068_
                                         _tl1791518071_
                                         _e1791618074_
                                         _hd1791718078_
                                         _tl1791818081_
                                         ___splice2348723488_
                                         _target1793417985_
                                         _tl1793617988_)
                                        (let ()
                                          (declare (not safe))
                                          (_g1789517948_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1789517948_)))))))
                   (___match2350923510_
                    (lambda (_e1789918120_
                             _hd1790018124_
                             _tl1790118127_
                             _e1790218130_
                             _hd1790318134_
                             _tl1790418137_
                             _e1790518140_
                             _hd1790618144_
                             _tl1790718147_)
                      (let ((_L18150_ _hd1790618144_)
                            (_L18152_ _hd1790318134_))
                        (if (gx#identifier? _L18152_)
                            (___kont2348123482_ _L18150_ _L18152_)
                            (if (gx#stx-pair? _hd1790318134_)
                                (let ((_e1791618074_
                                       (gx#syntax-e _hd1790318134_)))
                                  (let ((_tl1791818081_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1791618074_)))
                                        (_hd1791718078_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1791618074_))))
                                    (if (gx#identifier? _hd1791718078_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core/sugar$<sugar:2>[1]#_g25596_|
                                             _hd1791718078_)
                                            (___match2353923540_
                                             _e1789918120_
                                             _hd1790018124_
                                             _tl1790118127_
                                             _e1790218130_
                                             _hd1790318134_
                                             _tl1790418137_
                                             _e1791618074_
                                             _hd1791718078_
                                             _tl1791818081_
                                             _e1790518140_
                                             _hd1790618144_
                                             _tl1790718147_)
                                            (if (gx#stx-pair/null?
                                                 _tl1790418137_)
                                                (let ((___splice2348723488_
                                                       (gx#syntax-split-splice
                                                        _tl1790418137_
                                                        '0)))
                                                  (let ((_tl1793617988_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice2348723488_
                                                            '1)))
                                                        (_target1793417985_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice2348723488_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl1793617988_)
                                                        (___match2356523566_
                                                         _e1789918120_
                                                         _hd1790018124_
                                                         _tl1790118127_
                                                         _e1790218130_
                                                         _hd1790318134_
                                                         _tl1790418137_
                                                         _e1791618074_
                                                         _hd1791718078_
                                                         _tl1791818081_
                                                         ___splice2348723488_
                                                         _target1793417985_
                                                         _tl1793617988_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g1789517948_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1789517948_))))
                                        (if (gx#stx-pair/null? _tl1790418137_)
                                            (let ((___splice2348723488_
                                                   (gx#syntax-split-splice
                                                    _tl1790418137_
                                                    '0)))
                                              (let ((_tl1793617988_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2348723488_
                                                        '1)))
                                                    (_target1793417985_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2348723488_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl1793617988_)
                                                    (___match2356523566_
                                                     _e1789918120_
                                                     _hd1790018124_
                                                     _tl1790118127_
                                                     _e1790218130_
                                                     _hd1790318134_
                                                     _tl1790418137_
                                                     _e1791618074_
                                                     _hd1791718078_
                                                     _tl1791818081_
                                                     ___splice2348723488_
                                                     _target1793417985_
                                                     _tl1793617988_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g1789517948_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g1789517948_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g1789517948_))))))))
              (if (gx#stx-pair? ___stx2347823479_)
                  (let ((_e1789918120_ (gx#syntax-e ___stx2347823479_)))
                    (let ((_tl1790118127_
                           (let () (declare (not safe)) (##cdr _e1789918120_)))
                          (_hd1790018124_
                           (let ()
                             (declare (not safe))
                             (##car _e1789918120_))))
                      (if (gx#stx-pair? _tl1790118127_)
                          (let ((_e1790218130_ (gx#syntax-e _tl1790118127_)))
                            (let ((_tl1790418137_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1790218130_)))
                                  (_hd1790318134_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1790218130_))))
                              (if (gx#stx-pair? _tl1790418137_)
                                  (let ((_e1790518140_
                                         (gx#syntax-e _tl1790418137_)))
                                    (let ((_tl1790718147_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1790518140_)))
                                          (_hd1790618144_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1790518140_))))
                                      (if (gx#stx-null? _tl1790718147_)
                                          (___match2350923510_
                                           _e1789918120_
                                           _hd1790018124_
                                           _tl1790118127_
                                           _e1790218130_
                                           _hd1790318134_
                                           _tl1790418137_
                                           _e1790518140_
                                           _hd1790618144_
                                           _tl1790718147_)
                                          (if (gx#stx-pair? _hd1790318134_)
                                              (let ((_e1791618074_
                                                     (gx#syntax-e
                                                      _hd1790318134_)))
                                                (let ((_tl1791818081_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1791618074_)))
                                                      (_hd1791718078_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1791618074_))))
                                                  (if (gx#stx-pair/null?
                                                       _tl1790418137_)
                                                      (let ((___splice2348723488_
                                                             (gx#syntax-split-splice
                                                              _tl1790418137_
                                                              '0)))
                                                        (let ((_tl1793617988_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice2348723488_ '1)))
                      (_target1793417985_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice2348723488_ '0))))
                  (if (gx#stx-null? _tl1793617988_)
                      (___match2356523566_
                       _e1789918120_
                       _hd1790018124_
                       _tl1790118127_
                       _e1790218130_
                       _hd1790318134_
                       _tl1790418137_
                       _e1791618074_
                       _hd1791718078_
                       _tl1791818081_
                       ___splice2348723488_
                       _target1793417985_
                       _tl1793617988_)
                      (let () (declare (not safe)) (_g1789517948_)))))
              (let () (declare (not safe)) (_g1789517948_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1789517948_))))))
                                  (if (gx#stx-pair? _hd1790318134_)
                                      (let ((_e1791618074_
                                             (gx#syntax-e _hd1790318134_)))
                                        (let ((_tl1791818081_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1791618074_)))
                                              (_hd1791718078_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1791618074_))))
                                          (if (gx#stx-pair/null?
                                               _tl1790418137_)
                                              (let ((___splice2348723488_
                                                     (gx#syntax-split-splice
                                                      _tl1790418137_
                                                      '0)))
                                                (let ((_tl1793617988_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2348723488_
                                                          '1)))
                                                      (_target1793417985_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2348723488_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1793617988_)
                                                      (___match2356523566_
                                                       _e1789918120_
                                                       _hd1790018124_
                                                       _tl1790118127_
                                                       _e1790218130_
                                                       _hd1790318134_
                                                       _tl1790418137_
                                                       _e1791618074_
                                                       _hd1791718078_
                                                       _tl1791818081_
                                                       ___splice2348723488_
                                                       _target1793417985_
                                                       _tl1793617988_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g1789517948_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g1789517948_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1789517948_))))))
                          (let () (declare (not safe)) (_g1789517948_)))))
                  (let () (declare (not safe)) (_g1789517948_))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#alet|
      (lambda (_stx18172_)
        (letrec ((_let-bind?18175_
                  (lambda (_x19098_)
                    (let* ((___stx2356823569_ _x19098_)
                           (_g1910319122_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2356823569_))))
                      (let ((___kont2357123572_
                             (lambda (_L19190_ _L19192_)
                               (_let-head?18178_ _L19192_)))
                            (___kont2357323574_ (lambda (_L19150_) '#t))
                            (___kont2357523576_ (lambda () '#f)))
                        (if (gx#stx-pair? ___stx2356823569_)
                            (let ((_e1910719170_
                                   (gx#syntax-e ___stx2356823569_)))
                              (let ((_tl1910919177_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1910719170_)))
                                    (_hd1910819174_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1910719170_))))
                                (if (gx#stx-pair? _tl1910919177_)
                                    (let ((_e1911019180_
                                           (gx#syntax-e _tl1910919177_)))
                                      (let ((_tl1911219187_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1911019180_)))
                                            (_hd1911119184_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1911019180_))))
                                        (if (gx#stx-null? _tl1911219187_)
                                            (___kont2357123572_
                                             _hd1911119184_
                                             _hd1910819174_)
                                            (___kont2357523576_))))
                                    (if (gx#stx-null? _tl1910919177_)
                                        (___kont2357323574_ _hd1910819174_)
                                        (___kont2357523576_)))))
                            (___kont2357523576_))))))
                 (_let-bind18177_
                  (lambda (_x19000_)
                    (let* ((___stx2360223603_ _x19000_)
                           (_g1900419023_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2360223603_))))
                      (let ((___kont2360523606_
                             (lambda (_L19079_ _L19081_) _x19000_))
                            (___kont2360723608_
                             (lambda (_L19040_)
                               (let ((__tmp25598 (gx#datum->syntax '#f '_))
                                     (__tmp25597
                                      (let ()
                                        (declare (not safe))
                                        (cons _L19040_ '()))))
                                 (declare (not safe))
                                 (cons __tmp25598 __tmp25597)))))
                        (if (gx#stx-pair? ___stx2360223603_)
                            (let ((_e1900819059_
                                   (gx#syntax-e ___stx2360223603_)))
                              (let ((_tl1901019066_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1900819059_)))
                                    (_hd1900919063_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1900819059_))))
                                (if (gx#stx-pair? _tl1901019066_)
                                    (let ((_e1901119069_
                                           (gx#syntax-e _tl1901019066_)))
                                      (let ((_tl1901319076_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1901119069_)))
                                            (_hd1901219073_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1901119069_))))
                                        (if (gx#stx-null? _tl1901319076_)
                                            (___kont2360523606_
                                             _hd1901219073_
                                             _hd1900919063_)
                                            (let ()
                                              (declare (not safe))
                                              (_g1900419023_)))))
                                    (if (gx#stx-null? _tl1901019066_)
                                        (___kont2360723608_ _hd1900919063_)
                                        (let ()
                                          (declare (not safe))
                                          (_g1900419023_))))))
                            (let () (declare (not safe)) (_g1900419023_)))))))
                 (_let-head?18178_
                  (lambda (_x18940_)
                    (let* ((___stx2363423635_ _x18940_)
                           (_g1894418955_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2363423635_))))
                      (let ((___kont2363723638_
                             (lambda (_L18983_)
                               (gx#stx-andmap gx#identifier? _L18983_)))
                            (___kont2363923640_
                             (lambda () (gx#identifier? _x18940_))))
                        (if (gx#stx-pair? ___stx2363423635_)
                            (let ((_e1894718973_
                                   (gx#syntax-e ___stx2363423635_)))
                              (let ((_tl1894918980_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1894718973_)))
                                    (_hd1894818977_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1894718973_))))
                                (if (gx#identifier? _hd1894818977_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar$<sugar:2>[1]#_g25599_|
                                         _hd1894818977_)
                                        (___kont2363723638_ _tl1894918980_)
                                        (___kont2363923640_))
                                    (___kont2363923640_))))
                            (___kont2363923640_))))))
                 (_let-head18179_
                  (lambda (_x18880_)
                    (let* ((___stx2365423655_ _x18880_)
                           (_g1888418895_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2365423655_))))
                      (let ((___kont2365723658_ (lambda (_L18923_) _L18923_))
                            (___kont2365923660_ (lambda () (list _x18880_))))
                        (if (gx#stx-pair? ___stx2365423655_)
                            (let ((_e1888718913_
                                   (gx#syntax-e ___stx2365423655_)))
                              (let ((_tl1888918920_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1888718913_)))
                                    (_hd1888818917_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1888718913_))))
                                (if (gx#identifier? _hd1888818917_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar$<sugar:2>[1]#_g25600_|
                                         _hd1888818917_)
                                        (___kont2365723658_ _tl1888918920_)
                                        (___kont2365923660_))
                                    (___kont2365923660_))))
                            (___kont2365923660_)))))))
          (let* ((___stx2367423675_ _stx18172_)
                 (_g1818318255_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx2367423675_))))
            (let ((___kont2367723678_
                   (lambda (_L18853_ _L18855_ _L18856_ _L18857_)
                     (let ((__tmp25601
                            (let ((__tmp25602
                                   (let ((__tmp25603
                                          (let ((__tmp25604
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L18855_ '()))))
                                            (declare (not safe))
                                            (cons _L18856_ __tmp25604))))
                                     (declare (not safe))
                                     (cons __tmp25603 '()))))
                              (declare (not safe))
                              (cons __tmp25602 _L18853_))))
                       (declare (not safe))
                       (cons _L18857_ __tmp25601))))
                  (___kont2367923680_
                   (lambda (_L18775_ _L18777_)
                     (let ((__tmp25611 (gx#datum->syntax '#f 'and))
                           (__tmp25605
                            (let ((__tmp25606
                                   (let ((__tmp25607
                                          (let ((__tmp25610
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp25608
                                                 (let ((__tmp25609
                                                        (foldr (lambda (_g1879718800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1879818803_)
                         (let ()
                           (declare (not safe))
                           (cons _g1879718800_ _g1879818803_)))
                       '()
                       _L18775_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp25609))))
                                            (declare (not safe))
                                            (cons __tmp25610 __tmp25608))))
                                     (declare (not safe))
                                     (cons __tmp25607 '()))))
                              (declare (not safe))
                              (cons _L18777_ __tmp25606))))
                       (declare (not safe))
                       (cons __tmp25611 __tmp25605))))
                  (___kont2368323684_
                   (lambda (_L18342_ _L18344_)
                     (let* ((_g1837518401_
                             (lambda (_g1837618397_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g1837618397_)))
                            (_g1837418686_
                             (lambda (_g1837618405_)
                               (if (gx#stx-pair/null? _g1837618405_)
                                   (let ((_g25612_
                                          (gx#syntax-split-splice
                                           _g1837618405_
                                           '0)))
                                     (begin
                                       (let ((_g25613_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g25612_)
                                                    (##vector-length _g25612_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g25613_ 2)))
                                             (error "Context expects 2 values"
                                                    _g25613_)))
                                       (let ((_target1837918408_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g25612_ 0)))
                                             (_tl1838118411_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g25612_ 1))))
                                         (if (gx#stx-null? _tl1838118411_)
                                             (letrec ((_loop1838218414_
                                                       (lambda (_hd1838018418_
                                                                _e1838618421_
                                                                _hd1838718423_)
                                                         (if (gx#stx-pair?
                                                              _hd1838018418_)
                                                             (let ((_e1838318426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd1838018418_)))
                       (let ((_lp-hd1838418430_
                              (let ()
                                (declare (not safe))
                                (##car _e1838318426_)))
                             (_lp-tl1838518433_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1838318426_))))
                         (if (gx#stx-pair? _lp-hd1838418430_)
                             (let ((_e1839018436_
                                    (gx#syntax-e _lp-hd1838418430_)))
                               (let ((_hd1839118440_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1839018436_)))
                                     (_tl1839218443_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1839018436_))))
                                 (if (gx#stx-pair? _tl1839218443_)
                                     (let ((_e1839318446_
                                            (gx#syntax-e _tl1839218443_)))
                                       (let ((_hd1839418450_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e1839318446_)))
                                             (_tl1839518453_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e1839318446_))))
                                         (if (gx#stx-null? _tl1839518453_)
                                             (_loop1838218414_
                                              _lp-tl1838518433_
                                              (let ()
                                                (declare (not safe))
                                                (cons _hd1839418450_
                                                      _e1838618421_))
                                              (let ()
                                                (declare (not safe))
                                                (cons _hd1839118440_
                                                      _hd1838718423_)))
                                             (_g1837518401_ _g1837618405_))))
                                     (_g1837518401_ _g1837618405_))))
                             (_g1837518401_ _g1837618405_))))
                     (let ((_e1838818456_ (reverse _e1838618421_))
                           (_hd1838918459_ (reverse _hd1838718423_)))
                       ((lambda (_L18462_ _L18464_)
                          (let ()
                            (let* ((_g1848018497_
                                    (lambda (_g1848118493_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g1848118493_)))
                                   (_g1847918674_
                                    (lambda (_g1848118501_)
                                      (if (gx#stx-pair/null? _g1848118501_)
                                          (let ((_g25614_
                                                 (gx#syntax-split-splice
                                                  _g1848118501_
                                                  '0)))
                                            (begin
                                              (let ((_g25615_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g25614_)
                                                           (##vector-length
                                                            _g25614_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g25615_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g25615_)))
                                              (let ((_target1848318504_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g25614_
                                                        0)))
                                                    (_tl1848518507_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g25614_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _tl1848518507_)
                                                    (letrec ((_loop1848618510_
                                                              (lambda (_hd1848418514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _$e1849018517_)
                        (if (gx#stx-pair? _hd1848418514_)
                            (let ((_e1848718520_ (gx#syntax-e _hd1848418514_)))
                              (let ((_lp-hd1848818524_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1848718520_)))
                                    (_lp-tl1848918527_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1848718520_))))
                                (_loop1848618510_
                                 _lp-tl1848918527_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd1848818524_ _$e1849018517_)))))
                            (let ((_$e1849118530_ (reverse _$e1849018517_)))
                              ((lambda (_L18534_)
                                 (let ()
                                   (let* ((_g1855118568_
                                           (lambda (_g1855218564_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g1855218564_)))
                                          (_g1855018662_
                                           (lambda (_g1855218572_)
                                             (if (gx#stx-pair/null?
                                                  _g1855218572_)
                                                 (let ((_g25616_
                                                        (gx#syntax-split-splice
                                                         _g1855218572_
                                                         '0)))
                                                   (begin
                                                     (let ((_g25617_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g25616_)
                          (##vector-length _g25616_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g25617_ 2)))
                   (error "Context expects 2 values" _g25617_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1855418575_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g25616_
                                                               0)))
                                                           (_tl1855618578_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g25616_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl1855618578_)
                                                           (letrec ((_loop1855718581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1855518585_ _hd-bind1856118588_)
                               (if (gx#stx-pair? _hd1855518585_)
                                   (let ((_e1855818591_
                                          (gx#syntax-e _hd1855518585_)))
                                     (let ((_lp-hd1855918595_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e1855818591_)))
                                           (_lp-tl1856018598_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e1855818591_))))
                                       (_loop1855718581_
                                        _lp-tl1856018598_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd1855918595_
                                                _hd-bind1856118588_)))))
                                   (let ((_hd-bind1856218601_
                                          (reverse _hd-bind1856118588_)))
                                     ((lambda (_L18605_)
                                        (let ()
                                          (let ()
                                            (let ((__tmp25634
                                                   (gx#datum->syntax
                                                    '#f
                                                    'let-values))
                                                  (__tmp25618
                                                   (let ((__tmp25630
                                                          (begin
                                                            (gx#syntax-check-splice-targets
                                                             _L18462_
                                                             _L18534_)
                                                            (foldr (lambda (_g1862318634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1862418637_
                                    _g1862518639_)
                             (let ((__tmp25631
                                    (let ((__tmp25633
                                           (let ()
                                             (declare (not safe))
                                             (cons _g1862418637_ '())))
                                          (__tmp25632
                                           (let ()
                                             (declare (not safe))
                                             (cons _g1862318634_ '()))))
                                      (declare (not safe))
                                      (cons __tmp25633 __tmp25632))))
                               (declare (not safe))
                               (cons __tmp25631 _g1862518639_)))
                           '()
                           _L18462_
                           _L18534_)))
                 (__tmp25619
                  (let ((__tmp25620
                         (let ((__tmp25629 (gx#datum->syntax '#f 'and))
                               (__tmp25621
                                (foldr (lambda (_g1862618642_ _g1862718645_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g1862618642_ _g1862718645_)))
                                       (let ((__tmp25622
                                              (let ((__tmp25628
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let-values))
                                                    (__tmp25623
                                                     (let ((__tmp25625
                                                            (begin
                                                              (gx#syntax-check-splice-targets
                                                               _L18534_
                                                               _L18605_)
                                                              (foldr (lambda (_g1862818648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1862918651_
                                      _g1863018653_)
                               (let ((__tmp25626
                                      (let ((__tmp25627
                                             (let ()
                                               (declare (not safe))
                                               (cons _g1862818648_ '()))))
                                        (declare (not safe))
                                        (cons _g1862918651_ __tmp25627))))
                                 (declare (not safe))
                                 (cons __tmp25626 _g1863018653_)))
                             '()
                             _L18534_
                             _L18605_)))
                   (__tmp25624
                    (foldr (lambda (_g1863118656_ _g1863218659_)
                             (let ()
                               (declare (not safe))
                               (cons _g1863118656_ _g1863218659_)))
                           '()
                           _L18342_)))
               (declare (not safe))
               (cons __tmp25625 __tmp25624))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25628 __tmp25623))))
                                         (declare (not safe))
                                         (cons __tmp25622 '()))
                                       _L18534_)))
                           (declare (not safe))
                           (cons __tmp25629 __tmp25621))))
                    (declare (not safe))
                    (cons __tmp25620 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25630
                                                           __tmp25619))))
                                              (declare (not safe))
                                              (cons __tmp25634 __tmp25618)))))
                                      _hd-bind1856218601_))))))
                     (_loop1855718581_ _target1855418575_ '()))
                   (_g1855118568_ _g1855218572_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1855118568_
                                                  _g1855218572_)))))
                                     (_g1855018662_
                                      (gx#stx-map
                                       _let-head18179_
                                       (foldr (lambda (_g1866518668_
                                                       _g1866618671_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g1866518668_
                                                        _g1866618671_)))
                                              '()
                                              _L18464_))))))
                               _$e1849118530_))))))
              (_loop1848618510_ _target1848318504_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1848018497_
                                                     _g1848118501_)))))
                                          (_g1848018497_ _g1848118501_)))))
                              (_g1847918674_
                               (gx#gentemps
                                (foldr (lambda (_g1867718680_ _g1867818683_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g1867718680_ _g1867818683_)))
                                       '()
                                       _L18464_))))))
                        _e1838818456_
                        _hd1838918459_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop1838218414_
                                                _target1837918408_
                                                '()
                                                '()))
                                             (_g1837518401_ _g1837618405_)))))
                                   (_g1837518401_ _g1837618405_)))))
                       (_g1837418686_
                        (gx#stx-map
                         _let-bind18177_
                         (foldr (lambda (_g1868918692_ _g1869018695_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g1868918692_ _g1869018695_)))
                                '()
                                _L18344_)))))))
              (let* ((___match2377123772_
                      (lambda (_e1822618262_
                               _hd1822718266_
                               _tl1822818269_
                               _e1822918272_
                               _hd1823018276_
                               _tl1823118279_
                               ___splice2368523686_
                               _target1823218282_
                               _tl1823418285_)
                        (letrec ((_loop1823518288_
                                  (lambda (_hd1823318292_ _bind1823918295_)
                                    (if (gx#stx-pair? _hd1823318292_)
                                        (let ((_e1823618298_
                                               (gx#syntax-e _hd1823318292_)))
                                          (let ((_lp-tl1823818305_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1823618298_)))
                                                (_lp-hd1823718302_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1823618298_))))
                                            (_loop1823518288_
                                             _lp-tl1823818305_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd1823718302_
                                                     _bind1823918295_)))))
                                        (let ((_bind1824018308_
                                               (reverse _bind1823918295_)))
                                          (if (gx#stx-pair/null?
                                               _tl1823118279_)
                                              (let ((___splice2368723688_
                                                     (gx#syntax-split-splice
                                                      _tl1823118279_
                                                      '0)))
                                                (let ((_tl1824318315_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2368723688_
                                                          '1)))
                                                      (_target1824118312_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2368723688_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1824318315_)
                                                      (letrec ((_loop1824418318_
                                                                (lambda (_hd1824218322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body1824818325_)
                          (if (gx#stx-pair? _hd1824218322_)
                              (let ((_e1824518328_
                                     (gx#syntax-e _hd1824218322_)))
                                (let ((_lp-tl1824718335_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1824518328_)))
                                      (_lp-hd1824618332_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1824518328_))))
                                  (_loop1824418318_
                                   _lp-tl1824718335_
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd1824618332_
                                           _body1824818325_)))))
                              (let ((_body1824918338_
                                     (reverse _body1824818325_)))
                                (let ((_L18342_ _body1824918338_)
                                      (_L18344_ _bind1824018308_))
                                  (if (gx#stx-andmap
                                       _let-bind?18175_
                                       (foldr (lambda (_g1836618369_
                                                       _g1836718372_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g1836618369_
                                                        _g1836718372_)))
                                              '()
                                              _L18344_))
                                      (___kont2368323684_ _L18342_ _L18344_)
                                      (let ()
                                        (declare (not safe))
                                        (_g1818318255_)))))))))
                (_loop1824418318_ _target1824118312_ '()))
              (let () (declare (not safe)) (_g1818318255_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1818318255_))))))))
                          (_loop1823518288_ _target1823218282_ '()))))
                     (___match2375123752_
                      (lambda (_e1820318705_
                               _hd1820418709_
                               _tl1820518712_
                               _e1820618715_
                               _hd1820718719_
                               _tl1820818722_
                               _e1820918725_
                               _hd1821018729_
                               _tl1821118732_
                               _e1821218735_
                               _hd1821318739_
                               _tl1821418742_
                               ___splice2368123682_
                               _target1821518745_
                               _tl1821718748_)
                        (letrec ((_loop1821818751_
                                  (lambda (_hd1821618755_ _body1822218758_)
                                    (if (gx#stx-pair? _hd1821618755_)
                                        (let ((_e1821918761_
                                               (gx#syntax-e _hd1821618755_)))
                                          (let ((_lp-tl1822118768_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1821918761_)))
                                                (_lp-hd1822018765_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1821918761_))))
                                            (_loop1821818751_
                                             _lp-tl1822118768_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd1822018765_
                                                     _body1822218758_)))))
                                        (let ((_body1822318771_
                                               (reverse _body1822218758_)))
                                          (___kont2367923680_
                                           _body1822318771_
                                           _hd1821318739_))))))
                          (_loop1821818751_ _target1821518745_ '()))))
                     (___match2371523716_
                      (lambda (_e1818918813_
                               _hd1819018817_
                               _tl1819118820_
                               _e1819218823_
                               _hd1819318827_
                               _tl1819418830_
                               _e1819518833_
                               _hd1819618837_
                               _tl1819718840_
                               _e1819818843_
                               _hd1819918847_
                               _tl1820018850_)
                        (let ((_L18853_ _tl1819418830_)
                              (_L18855_ _hd1819918847_)
                              (_L18856_ _hd1819618837_)
                              (_L18857_ _hd1819018817_))
                          (if (_let-head?18178_ _L18856_)
                              (___kont2367723678_
                               _L18853_
                               _L18855_
                               _L18856_
                               _L18857_)
                              (if (gx#stx-pair? _hd1819618837_)
                                  (let ((_e1821218735_
                                         (gx#syntax-e _hd1819618837_)))
                                    (let ((_tl1821418742_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1821218735_)))
                                          (_hd1821318739_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1821218735_))))
                                      (if (gx#stx-pair/null? _hd1819318827_)
                                          (let ((___splice2368523686_
                                                 (gx#syntax-split-splice
                                                  _hd1819318827_
                                                  '0)))
                                            (let ((_tl1823418285_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2368523686_
                                                      '1)))
                                                  (_target1823218282_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2368523686_
                                                      '0))))
                                              (if (gx#stx-null? _tl1823418285_)
                                                  (___match2377123772_
                                                   _e1818918813_
                                                   _hd1819018817_
                                                   _tl1819118820_
                                                   _e1819218823_
                                                   _hd1819318827_
                                                   _tl1819418830_
                                                   ___splice2368523686_
                                                   _target1823218282_
                                                   _tl1823418285_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1818318255_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1818318255_)))))
                                  (if (gx#stx-pair/null? _hd1819318827_)
                                      (let ((___splice2368523686_
                                             (gx#syntax-split-splice
                                              _hd1819318827_
                                              '0)))
                                        (let ((_tl1823418285_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2368523686_
                                                  '1)))
                                              (_target1823218282_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2368523686_
                                                  '0))))
                                          (if (gx#stx-null? _tl1823418285_)
                                              (___match2377123772_
                                               _e1818918813_
                                               _hd1819018817_
                                               _tl1819118820_
                                               _e1819218823_
                                               _hd1819318827_
                                               _tl1819418830_
                                               ___splice2368523686_
                                               _target1823218282_
                                               _tl1823418285_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1818318255_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1818318255_)))))))))
                (if (gx#stx-pair? ___stx2367423675_)
                    (let ((_e1818918813_ (gx#syntax-e ___stx2367423675_)))
                      (let ((_tl1819118820_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1818918813_)))
                            (_hd1819018817_
                             (let ()
                               (declare (not safe))
                               (##car _e1818918813_))))
                        (if (gx#stx-pair? _tl1819118820_)
                            (let ((_e1819218823_ (gx#syntax-e _tl1819118820_)))
                              (let ((_tl1819418830_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1819218823_)))
                                    (_hd1819318827_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1819218823_))))
                                (if (gx#stx-pair? _hd1819318827_)
                                    (let ((_e1819518833_
                                           (gx#syntax-e _hd1819318827_)))
                                      (let ((_tl1819718840_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1819518833_)))
                                            (_hd1819618837_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1819518833_))))
                                        (if (gx#stx-pair? _tl1819718840_)
                                            (let ((_e1819818843_
                                                   (gx#syntax-e
                                                    _tl1819718840_)))
                                              (let ((_tl1820018850_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1819818843_)))
                                                    (_hd1819918847_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1819818843_))))
                                                (if (gx#stx-null?
                                                     _tl1820018850_)
                                                    (___match2371523716_
                                                     _e1818918813_
                                                     _hd1819018817_
                                                     _tl1819118820_
                                                     _e1819218823_
                                                     _hd1819318827_
                                                     _tl1819418830_
                                                     _e1819518833_
                                                     _hd1819618837_
                                                     _tl1819718840_
                                                     _e1819818843_
                                                     _hd1819918847_
                                                     _tl1820018850_)
                                                    (if (gx#stx-pair?
                                                         _hd1819618837_)
                                                        (let ((_e1821218735_
                                                               (gx#syntax-e
                                                                _hd1819618837_)))
                                                          (let ((_tl1821418742_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e1821218735_)))
                        (_hd1821318739_
                         (let () (declare (not safe)) (##car _e1821218735_))))
                    (if (gx#stx-pair/null? _hd1819318827_)
                        (let ((___splice2368523686_
                               (gx#syntax-split-splice _hd1819318827_ '0)))
                          (let ((_tl1823418285_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2368523686_ '1)))
                                (_target1823218282_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2368523686_ '0))))
                            (if (gx#stx-null? _tl1823418285_)
                                (___match2377123772_
                                 _e1818918813_
                                 _hd1819018817_
                                 _tl1819118820_
                                 _e1819218823_
                                 _hd1819318827_
                                 _tl1819418830_
                                 ___splice2368523686_
                                 _target1823218282_
                                 _tl1823418285_)
                                (let ()
                                  (declare (not safe))
                                  (_g1818318255_)))))
                        (let () (declare (not safe)) (_g1818318255_)))))
                (if (gx#stx-pair/null? _hd1819318827_)
                    (let ((___splice2368523686_
                           (gx#syntax-split-splice _hd1819318827_ '0)))
                      (let ((_tl1823418285_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice2368523686_ '1)))
                            (_target1823218282_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice2368523686_ '0))))
                        (if (gx#stx-null? _tl1823418285_)
                            (___match2377123772_
                             _e1818918813_
                             _hd1819018817_
                             _tl1819118820_
                             _e1819218823_
                             _hd1819318827_
                             _tl1819418830_
                             ___splice2368523686_
                             _target1823218282_
                             _tl1823418285_)
                            (let () (declare (not safe)) (_g1818318255_)))))
                    (let () (declare (not safe)) (_g1818318255_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _hd1819618837_)
                                                (let ((_e1821218735_
                                                       (gx#syntax-e
                                                        _hd1819618837_)))
                                                  (let ((_tl1821418742_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1821218735_)))
                                                        (_hd1821318739_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1821218735_))))
                                                    (if (gx#stx-null?
                                                         _tl1821418742_)
                                                        (if (gx#stx-null?
                                                             _tl1819718840_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1819418830_)
                        (let ((___splice2368123682_
                               (gx#syntax-split-splice _tl1819418830_ '0)))
                          (let ((_tl1821718748_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2368123682_ '1)))
                                (_target1821518745_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2368123682_ '0))))
                            (if (gx#stx-null? _tl1821718748_)
                                (___match2375123752_
                                 _e1818918813_
                                 _hd1819018817_
                                 _tl1819118820_
                                 _e1819218823_
                                 _hd1819318827_
                                 _tl1819418830_
                                 _e1819518833_
                                 _hd1819618837_
                                 _tl1819718840_
                                 _e1821218735_
                                 _hd1821318739_
                                 _tl1821418742_
                                 ___splice2368123682_
                                 _target1821518745_
                                 _tl1821718748_)
                                (if (gx#stx-pair/null? _hd1819318827_)
                                    (let ((___splice2368523686_
                                           (gx#syntax-split-splice
                                            _hd1819318827_
                                            '0)))
                                      (let ((_tl1823418285_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice2368523686_
                                                '1)))
                                            (_target1823218282_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice2368523686_
                                                '0))))
                                        (if (gx#stx-null? _tl1823418285_)
                                            (___match2377123772_
                                             _e1818918813_
                                             _hd1819018817_
                                             _tl1819118820_
                                             _e1819218823_
                                             _hd1819318827_
                                             _tl1819418830_
                                             ___splice2368523686_
                                             _target1823218282_
                                             _tl1823418285_)
                                            (let ()
                                              (declare (not safe))
                                              (_g1818318255_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g1818318255_))))))
                        (if (gx#stx-pair/null? _hd1819318827_)
                            (let ((___splice2368523686_
                                   (gx#syntax-split-splice _hd1819318827_ '0)))
                              (let ((_tl1823418285_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice2368523686_ '1)))
                                    (_target1823218282_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice2368523686_
                                        '0))))
                                (if (gx#stx-null? _tl1823418285_)
                                    (___match2377123772_
                                     _e1818918813_
                                     _hd1819018817_
                                     _tl1819118820_
                                     _e1819218823_
                                     _hd1819318827_
                                     _tl1819418830_
                                     ___splice2368523686_
                                     _target1823218282_
                                     _tl1823418285_)
                                    (let ()
                                      (declare (not safe))
                                      (_g1818318255_)))))
                            (let () (declare (not safe)) (_g1818318255_))))
                    (if (gx#stx-pair/null? _hd1819318827_)
                        (let ((___splice2368523686_
                               (gx#syntax-split-splice _hd1819318827_ '0)))
                          (let ((_tl1823418285_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2368523686_ '1)))
                                (_target1823218282_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2368523686_ '0))))
                            (if (gx#stx-null? _tl1823418285_)
                                (___match2377123772_
                                 _e1818918813_
                                 _hd1819018817_
                                 _tl1819118820_
                                 _e1819218823_
                                 _hd1819318827_
                                 _tl1819418830_
                                 ___splice2368523686_
                                 _target1823218282_
                                 _tl1823418285_)
                                (let ()
                                  (declare (not safe))
                                  (_g1818318255_)))))
                        (let () (declare (not safe)) (_g1818318255_))))
                (if (gx#stx-pair/null? _hd1819318827_)
                    (let ((___splice2368523686_
                           (gx#syntax-split-splice _hd1819318827_ '0)))
                      (let ((_tl1823418285_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice2368523686_ '1)))
                            (_target1823218282_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice2368523686_ '0))))
                        (if (gx#stx-null? _tl1823418285_)
                            (___match2377123772_
                             _e1818918813_
                             _hd1819018817_
                             _tl1819118820_
                             _e1819218823_
                             _hd1819318827_
                             _tl1819418830_
                             ___splice2368523686_
                             _target1823218282_
                             _tl1823418285_)
                            (let () (declare (not safe)) (_g1818318255_)))))
                    (let () (declare (not safe)) (_g1818318255_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _hd1819318827_)
                                                    (let ((___splice2368523686_
                                                           (gx#syntax-split-splice
                                                            _hd1819318827_
                                                            '0)))
                                                      (let ((_tl1823418285_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice2368523686_ '1)))
                    (_target1823218282_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice2368523686_ '0))))
                (if (gx#stx-null? _tl1823418285_)
                    (___match2377123772_
                     _e1818918813_
                     _hd1819018817_
                     _tl1819118820_
                     _e1819218823_
                     _hd1819318827_
                     _tl1819418830_
                     ___splice2368523686_
                     _target1823218282_
                     _tl1823418285_)
                    (let () (declare (not safe)) (_g1818318255_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g1818318255_)))))))
                                    (if (gx#stx-pair/null? _hd1819318827_)
                                        (let ((___splice2368523686_
                                               (gx#syntax-split-splice
                                                _hd1819318827_
                                                '0)))
                                          (let ((_tl1823418285_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice2368523686_
                                                    '1)))
                                                (_target1823218282_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice2368523686_
                                                    '0))))
                                            (if (gx#stx-null? _tl1823418285_)
                                                (___match2377123772_
                                                 _e1818918813_
                                                 _hd1819018817_
                                                 _tl1819118820_
                                                 _e1819218823_
                                                 _hd1819318827_
                                                 _tl1819418830_
                                                 ___splice2368523686_
                                                 _target1823218282_
                                                 _tl1823418285_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1818318255_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1818318255_))))))
                            (let () (declare (not safe)) (_g1818318255_)))))
                    (let () (declare (not safe)) (_g1818318255_)))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#alet*|
      (lambda (_$stx19215_)
        (let* ((___stx2377423775_ _$stx19215_)
               (_g1922119272_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2377423775_))))
          (let ((___kont2377723778_ (lambda () '#t))
                (___kont2377923780_
                 (lambda (_L19430_)
                   (let ((__tmp25637 (gx#datum->syntax '#f 'let))
                         (__tmp25635
                          (let ((__tmp25636
                                 (foldr (lambda (_g1944619449_ _g1944719452_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g1944619449_
                                                  _g1944719452_)))
                                        '()
                                        _L19430_)))
                            (declare (not safe))
                            (cons '() __tmp25636))))
                     (declare (not safe))
                     (cons __tmp25637 __tmp25635))))
                (___kont2378323784_
                 (lambda (_L19339_ _L19341_ _L19342_ _L19343_)
                   (let ((__tmp25644 (gx#datum->syntax '#f 'alet))
                         (__tmp25638
                          (let ((__tmp25643
                                 (let ()
                                   (declare (not safe))
                                   (cons _L19342_ '())))
                                (__tmp25639
                                 (let ((__tmp25640
                                        (let ((__tmp25641
                                               (let ((__tmp25642
                                                      (foldr (lambda (_g1936419367_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1936519370_)
                       (let ()
                         (declare (not safe))
                         (cons _g1936419367_ _g1936519370_)))
                     '()
                     _L19339_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L19341_ __tmp25642))))
                                          (declare (not safe))
                                          (cons _L19343_ __tmp25641))))
                                   (declare (not safe))
                                   (cons __tmp25640 '()))))
                            (declare (not safe))
                            (cons __tmp25643 __tmp25639))))
                     (declare (not safe))
                     (cons __tmp25644 __tmp25638)))))
            (let* ((___match2385123852_
                    (lambda (_e1924919279_
                             _hd1925019283_
                             _tl1925119286_
                             _e1925219289_
                             _hd1925319293_
                             _tl1925419296_
                             _e1925519299_
                             _hd1925619303_
                             _tl1925719306_
                             ___splice2378523786_
                             _target1925819309_
                             _tl1926019312_)
                      (letrec ((_loop1926119315_
                                (lambda (_hd1925919319_ _body1926519322_)
                                  (if (gx#stx-pair? _hd1925919319_)
                                      (let ((_e1926219325_
                                             (gx#syntax-e _hd1925919319_)))
                                        (let ((_lp-tl1926419332_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1926219325_)))
                                              (_lp-hd1926319329_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1926219325_))))
                                          (_loop1926119315_
                                           _lp-tl1926419332_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1926319329_
                                                   _body1926519322_)))))
                                      (let ((_body1926619335_
                                             (reverse _body1926519322_)))
                                        (___kont2378323784_
                                         _body1926619335_
                                         _tl1925719306_
                                         _hd1925619303_
                                         _hd1925019283_))))))
                        (_loop1926119315_ _target1925819309_ '()))))
                   (___match2382523826_
                    (lambda (_e1923019380_
                             _hd1923119384_
                             _tl1923219387_
                             _e1923319390_
                             _hd1923419394_
                             _tl1923519397_
                             ___splice2378123782_
                             _target1923619400_
                             _tl1923819403_)
                      (letrec ((_loop1923919406_
                                (lambda (_hd1923719410_ _body1924319413_)
                                  (if (gx#stx-pair? _hd1923719410_)
                                      (let ((_e1924019416_
                                             (gx#syntax-e _hd1923719410_)))
                                        (let ((_lp-tl1924219423_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1924019416_)))
                                              (_lp-hd1924119420_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1924019416_))))
                                          (_loop1923919406_
                                           _lp-tl1924219423_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1924119420_
                                                   _body1924319413_)))))
                                      (let ((_body1924419426_
                                             (reverse _body1924319413_)))
                                        (___kont2377923780_
                                         _body1924419426_))))))
                        (_loop1923919406_ _target1923619400_ '())))))
              (if (gx#stx-pair? ___stx2377423775_)
                  (let ((_e1922319462_ (gx#syntax-e ___stx2377423775_)))
                    (let ((_tl1922519469_
                           (let () (declare (not safe)) (##cdr _e1922319462_)))
                          (_hd1922419466_
                           (let ()
                             (declare (not safe))
                             (##car _e1922319462_))))
                      (if (gx#stx-pair? _tl1922519469_)
                          (let ((_e1922619472_ (gx#syntax-e _tl1922519469_)))
                            (let ((_tl1922819479_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1922619472_)))
                                  (_hd1922719476_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1922619472_))))
                              (if (gx#stx-null? _hd1922719476_)
                                  (if (gx#stx-null? _tl1922819479_)
                                      (___kont2377723778_)
                                      (if (gx#stx-pair/null? _tl1922819479_)
                                          (let ((___splice2378123782_
                                                 (gx#syntax-split-splice
                                                  _tl1922819479_
                                                  '0)))
                                            (let ((_tl1923819403_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2378123782_
                                                      '1)))
                                                  (_target1923619400_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2378123782_
                                                      '0))))
                                              (if (gx#stx-null? _tl1923819403_)
                                                  (___match2382523826_
                                                   _e1922319462_
                                                   _hd1922419466_
                                                   _tl1922519469_
                                                   _e1922619472_
                                                   _hd1922719476_
                                                   _tl1922819479_
                                                   ___splice2378123782_
                                                   _target1923619400_
                                                   _tl1923819403_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1922119272_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1922119272_))))
                                  (if (gx#stx-pair? _hd1922719476_)
                                      (let ((_e1925519299_
                                             (gx#syntax-e _hd1922719476_)))
                                        (let ((_tl1925719306_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1925519299_)))
                                              (_hd1925619303_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1925519299_))))
                                          (if (gx#stx-pair/null?
                                               _tl1922819479_)
                                              (let ((___splice2378523786_
                                                     (gx#syntax-split-splice
                                                      _tl1922819479_
                                                      '0)))
                                                (let ((_tl1926019312_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2378523786_
                                                          '1)))
                                                      (_target1925819309_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2378523786_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1926019312_)
                                                      (___match2385123852_
                                                       _e1922319462_
                                                       _hd1922419466_
                                                       _tl1922519469_
                                                       _e1922619472_
                                                       _hd1922719476_
                                                       _tl1922819479_
                                                       _e1925519299_
                                                       _hd1925619303_
                                                       _tl1925719306_
                                                       ___splice2378523786_
                                                       _target1925819309_
                                                       _tl1926019312_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g1922119272_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g1922119272_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1922119272_))))))
                          (let () (declare (not safe)) (_g1922119272_)))))
                  (let () (declare (not safe)) (_g1922119272_))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#@list|
      (lambda (_$stx19492_)
        (let* ((___stx2385423855_ _$stx19492_)
               (_g1950319581_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2385423855_))))
          (let ((___kont2385723858_
                 (lambda ()
                   (let ((__tmp25646 (gx#datum->syntax '#f 'quote))
                         (__tmp25645
                          (let () (declare (not safe)) (cons '() '()))))
                     (declare (not safe))
                     (cons __tmp25646 __tmp25645))))
                (___kont2385923860_
                 (lambda (_L19912_)
                   (let ((__tmp25648 (gx#datum->syntax '#f 'quote))
                         (__tmp25647
                          (let () (declare (not safe)) (cons _L19912_ '()))))
                     (declare (not safe))
                     (cons __tmp25648 __tmp25647))))
                (___kont2386123862_
                 (lambda (_L19860_)
                   (let ((__tmp25650 (gx#datum->syntax '#f 'quasiquote))
                         (__tmp25649
                          (let () (declare (not safe)) (cons _L19860_ '()))))
                     (declare (not safe))
                     (cons __tmp25650 __tmp25649))))
                (___kont2386323864_ (lambda (_L19807_) _L19807_))
                (___kont2386523866_ (lambda (_L19749_ _L19751_) _L19751_))
                (___kont2386723868_
                 (lambda (_L19691_ _L19693_ _L19694_ _L19695_)
                   (let ((__tmp25656 (gx#datum->syntax '#f 'foldr))
                         (__tmp25651
                          (let ((__tmp25655 (gx#datum->syntax '#f 'cons))
                                (__tmp25652
                                 (let ((__tmp25654
                                        (let ()
                                          (declare (not safe))
                                          (cons _L19695_ _L19691_)))
                                       (__tmp25653
                                        (let ()
                                          (declare (not safe))
                                          (cons _L19694_ '()))))
                                   (declare (not safe))
                                   (cons __tmp25654 __tmp25653))))
                            (declare (not safe))
                            (cons __tmp25655 __tmp25652))))
                     (declare (not safe))
                     (cons __tmp25656 __tmp25651))))
                (___kont2386923870_
                 (lambda (_L19637_ _L19639_ _L19640_)
                   (let ((__tmp25660 (gx#datum->syntax '#f 'cons))
                         (__tmp25657
                          (let ((__tmp25658
                                 (let ((__tmp25659
                                        (let ()
                                          (declare (not safe))
                                          (cons _L19640_ _L19637_))))
                                   (declare (not safe))
                                   (cons __tmp25659 '()))))
                            (declare (not safe))
                            (cons _L19639_ __tmp25658))))
                     (declare (not safe))
                     (cons __tmp25660 __tmp25657))))
                (___kont2387123872_ (lambda (_L19598_) _L19598_)))
            (let* ((___match2399323994_
                    (lambda (_e1955419661_
                             _hd1955519665_
                             _tl1955619668_
                             _e1955719671_
                             _hd1955819675_
                             _tl1955919678_
                             _e1956019681_
                             _hd1956119685_
                             _tl1956219688_)
                      (let ((_L19691_ _tl1956219688_)
                            (_L19693_ _hd1956119685_)
                            (_L19694_ _hd1955819675_)
                            (_L19695_ _hd1955519665_))
                        (if (gx#ellipsis? _L19693_)
                            (___kont2386723868_
                             _L19691_
                             _L19693_
                             _L19694_
                             _L19695_)
                            (___kont2386923870_
                             _tl1955919678_
                             _hd1955819675_
                             _hd1955519665_)))))
                   (___match2397523976_
                    (lambda (_e1954119719_
                             _hd1954219723_
                             _tl1954319726_
                             _e1954419729_
                             _hd1954519733_
                             _tl1954619736_
                             _e1954719739_
                             _hd1954819743_
                             _tl1954919746_)
                      (let ((_L19749_ _hd1954819743_)
                            (_L19751_ _hd1954519733_))
                        (if (gx#ellipsis? _L19749_)
                            (___kont2386523866_ _L19749_ _L19751_)
                            (___match2399323994_
                             _e1954119719_
                             _hd1954219723_
                             _tl1954319726_
                             _e1954419729_
                             _hd1954519733_
                             _tl1954619736_
                             _e1954719739_
                             _hd1954819743_
                             _tl1954919746_))))))
              (if (gx#stx-pair? ___stx2385423855_)
                  (let ((_e1950519934_ (gx#syntax-e ___stx2385423855_)))
                    (let ((_tl1950719941_
                           (let () (declare (not safe)) (##cdr _e1950519934_)))
                          (_hd1950619938_
                           (let ()
                             (declare (not safe))
                             (##car _e1950519934_))))
                      (if (gx#stx-null? _tl1950719941_)
                          (___kont2385723858_)
                          (if (gx#stx-pair? _tl1950719941_)
                              (let ((_e1951219892_
                                     (gx#syntax-e _tl1950719941_)))
                                (let ((_tl1951419899_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1951219892_)))
                                      (_hd1951319896_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1951219892_))))
                                  (if (gx#identifier? _hd1951319896_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar$<sugar:2>[1]#_g25661_|
                                           _hd1951319896_)
                                          (if (gx#stx-pair? _tl1951419899_)
                                              (let ((_e1951519902_
                                                     (gx#syntax-e
                                                      _tl1951419899_)))
                                                (let ((_tl1951719909_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1951519902_)))
                                                      (_hd1951619906_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1951519902_))))
                                                  (if (gx#stx-null?
                                                       _tl1951719909_)
                                                      (___kont2385923860_
                                                       _hd1951619906_)
                                                      (___match2399323994_
                                                       _e1950519934_
                                                       _hd1950619938_
                                                       _tl1950719941_
                                                       _e1951219892_
                                                       _hd1951319896_
                                                       _tl1951419899_
                                                       _e1951519902_
                                                       _hd1951619906_
                                                       _tl1951719909_))))
                                              (___kont2386923870_
                                               _tl1951419899_
                                               _hd1951319896_
                                               _hd1950619938_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar$<sugar:2>[1]#_g25662_|
                                               _hd1951319896_)
                                              (if (gx#stx-pair? _tl1951419899_)
                                                  (let ((_e1952519850_
                                                         (gx#syntax-e
                                                          _tl1951419899_)))
                                                    (let ((_tl1952719857_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1952519850_)))
                                                          (_hd1952619854_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1952519850_))))
                                                      (if (gx#stx-null?
                                                           _tl1952719857_)
                                                          (___kont2386123862_
                                                           _hd1952619854_)
                                                          (___match2399323994_
                                                           _e1950519934_
                                                           _hd1950619938_
                                                           _tl1950719941_
                                                           _e1951219892_
                                                           _hd1951319896_
                                                           _tl1951419899_
                                                           _e1952519850_
                                                           _hd1952619854_
                                                           _tl1952719857_))))
                                                  (___kont2386923870_
                                                   _tl1951419899_
                                                   _hd1951319896_
                                                   _hd1950619938_))
                                              (if (gx#stx-pair? _tl1951419899_)
                                                  (let ((_e1954719739_
                                                         (gx#syntax-e
                                                          _tl1951419899_)))
                                                    (let ((_tl1954919746_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1954719739_)))
                                                          (_hd1954819743_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1954719739_))))
                                                      (if (gx#stx-null?
                                                           _tl1954919746_)
                                                          (___match2397523976_
                                                           _e1950519934_
                                                           _hd1950619938_
                                                           _tl1950719941_
                                                           _e1951219892_
                                                           _hd1951319896_
                                                           _tl1951419899_
                                                           _e1954719739_
                                                           _hd1954819743_
                                                           _tl1954919746_)
                                                          (___match2399323994_
                                                           _e1950519934_
                                                           _hd1950619938_
                                                           _tl1950719941_
                                                           _e1951219892_
                                                           _hd1951319896_
                                                           _tl1951419899_
                                                           _e1954719739_
                                                           _hd1954819743_
                                                           _tl1954919746_))))
                                                  (___kont2386923870_
                                                   _tl1951419899_
                                                   _hd1951319896_
                                                   _hd1950619938_))))
                                      (if (gx#stx-datum? _hd1951319896_)
                                          (let ((_e1953519793_
                                                 (gx#stx-e _hd1951319896_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e1953519793_ '::))
                                                (if (gx#stx-pair?
                                                     _tl1951419899_)
                                                    (let ((_e1953619797_
                                                           (gx#syntax-e
                                                            _tl1951419899_)))
                                                      (let ((_tl1953819804_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e1953619797_)))
                    (_hd1953719801_
                     (let () (declare (not safe)) (##car _e1953619797_))))
                (if (gx#stx-null? _tl1953819804_)
                    (___kont2386323864_ _hd1953719801_)
                    (___match2399323994_
                     _e1950519934_
                     _hd1950619938_
                     _tl1950719941_
                     _e1951219892_
                     _hd1951319896_
                     _tl1951419899_
                     _e1953619797_
                     _hd1953719801_
                     _tl1953819804_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2386923870_
                                                     _tl1951419899_
                                                     _hd1951319896_
                                                     _hd1950619938_))
                                                (if (gx#stx-pair?
                                                     _tl1951419899_)
                                                    (let ((_e1954719739_
                                                           (gx#syntax-e
                                                            _tl1951419899_)))
                                                      (let ((_tl1954919746_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e1954719739_)))
                    (_hd1954819743_
                     (let () (declare (not safe)) (##car _e1954719739_))))
                (if (gx#stx-null? _tl1954919746_)
                    (___match2397523976_
                     _e1950519934_
                     _hd1950619938_
                     _tl1950719941_
                     _e1951219892_
                     _hd1951319896_
                     _tl1951419899_
                     _e1954719739_
                     _hd1954819743_
                     _tl1954919746_)
                    (___match2399323994_
                     _e1950519934_
                     _hd1950619938_
                     _tl1950719941_
                     _e1951219892_
                     _hd1951319896_
                     _tl1951419899_
                     _e1954719739_
                     _hd1954819743_
                     _tl1954919746_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2386923870_
                                                     _tl1951419899_
                                                     _hd1951319896_
                                                     _hd1950619938_))))
                                          (if (gx#stx-pair? _tl1951419899_)
                                              (let ((_e1954719739_
                                                     (gx#syntax-e
                                                      _tl1951419899_)))
                                                (let ((_tl1954919746_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1954719739_)))
                                                      (_hd1954819743_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1954719739_))))
                                                  (if (gx#stx-null?
                                                       _tl1954919746_)
                                                      (___match2397523976_
                                                       _e1950519934_
                                                       _hd1950619938_
                                                       _tl1950719941_
                                                       _e1951219892_
                                                       _hd1951319896_
                                                       _tl1951419899_
                                                       _e1954719739_
                                                       _hd1954819743_
                                                       _tl1954919746_)
                                                      (___match2399323994_
                                                       _e1950519934_
                                                       _hd1950619938_
                                                       _tl1950719941_
                                                       _e1951219892_
                                                       _hd1951319896_
                                                       _tl1951419899_
                                                       _e1954719739_
                                                       _hd1954819743_
                                                       _tl1954919746_))))
                                              (___kont2386923870_
                                               _tl1951419899_
                                               _hd1951319896_
                                               _hd1950619938_))))))
                              (___kont2387123872_ _tl1950719941_)))))
                  (let () (declare (not safe)) (_g1950319581_))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#quasiquote|
      (lambda (_stx19952_)
        (letrec ((_simple-quote?19955_
                  (lambda (_e20647_)
                    (let* ((___stx2401424015_ _e20647_)
                           (_g2065520692_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2401424015_))))
                      (let ((___kont2401724018_ (lambda () '#f))
                            (___kont2401924020_ (lambda () '#f))
                            (___kont2402124022_
                             (lambda (_L20806_ _L20808_)
                               (if (_simple-quote?19955_ _L20808_)
                                   (_simple-quote?19955_ _L20806_)
                                   '#f)))
                            (___kont2402324024_
                             (lambda (_L20767_)
                               (_simple-quote?19955_
                                (foldr (lambda (_g2078020783_ _g2078120786_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g2078020783_ _g2078120786_)))
                                       '()
                                       _L20767_))))
                            (___kont2402724028_
                             (lambda (_L20714_)
                               (_simple-quote?19955_ _L20714_)))
                            (___kont2402924030_ (lambda () '#t)))
                        (let* ((_g2065320726_
                                (lambda ()
                                  (if (gx#stx-box? ___stx2401424015_)
                                      (let ((_e2068620710_
                                             (unbox (gx#syntax-e
                                                     ___stx2401424015_))))
                                        (___kont2402724028_ _e2068620710_))
                                      (___kont2402924030_))))
                               (___match2408524086_
                                (lambda (_e2067520733_
                                         ___splice2402524026_
                                         _target2067620737_
                                         _tl2067820740_)
                                  (letrec ((_loop2067920743_
                                            (lambda (_hd2067720747_
                                                     _e2068320750_)
                                              (if (gx#stx-pair? _hd2067720747_)
                                                  (let ((_e2068020753_
                                                         (gx#syntax-e
                                                          _hd2067720747_)))
                                                    (let ((_lp-tl2068220760_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2068020753_)))
                                                          (_lp-hd2068120757_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2068020753_))))
                                                      (_loop2067920743_
                                                       _lp-tl2068220760_
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _lp-hd2068120757_
                                                               _e2068320750_)))))
                                                  (let ((_e2068420763_
                                                         (reverse _e2068320750_)))
                                                    (___kont2402324024_
                                                     _e2068420763_))))))
                                    (_loop2067920743_
                                     _target2067620737_
                                     '()))))
                               (_g2065220789_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx2401424015_)
                                      (let ((_e2067520733_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx2401424015_))))
                                        (if (gx#stx-pair/null? _e2067520733_)
                                            (let ((___splice2402524026_
                                                   (gx#syntax-split-splice
                                                    _e2067520733_
                                                    '0)))
                                              (let ((_tl2067820740_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2402524026_
                                                        '1)))
                                                    (_target2067620737_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2402524026_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl2067820740_)
                                                    (___match2408524086_
                                                     _e2067520733_
                                                     ___splice2402524026_
                                                     _target2067620737_
                                                     _tl2067820740_)
                                                    (___kont2402924030_))))
                                            (___kont2402924030_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g2065320726_))))))
                          (if (gx#stx-pair? ___stx2401424015_)
                              (let ((_e2065720857_
                                     (gx#syntax-e ___stx2401424015_)))
                                (let ((_tl2065920864_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2065720857_)))
                                      (_hd2065820861_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2065720857_))))
                                  (if (gx#identifier? _hd2065820861_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar$<sugar:2>[1]#_g25739_|
                                           _hd2065820861_)
                                          (if (gx#stx-pair? _tl2065920864_)
                                              (let ((_e2066020867_
                                                     (gx#syntax-e
                                                      _tl2065920864_)))
                                                (let ((_tl2066220874_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2066020867_)))
                                                      (_hd2066120871_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2066020867_))))
                                                  (if (gx#stx-null?
                                                       _tl2066220874_)
                                                      (___kont2401724018_)
                                                      (___kont2402124022_
                                                       _tl2065920864_
                                                       _hd2065820861_))))
                                              (___kont2402124022_
                                               _tl2065920864_
                                               _hd2065820861_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar$<sugar:2>[1]#_g25740_|
                                               _hd2065820861_)
                                              (if (gx#stx-pair? _tl2065920864_)
                                                  (let ((_e2066620836_
                                                         (gx#syntax-e
                                                          _tl2065920864_)))
                                                    (let ((_tl2066820843_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2066620836_)))
                                                          (_hd2066720840_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2066620836_))))
                                                      (if (gx#stx-null?
                                                           _tl2066820843_)
                                                          (___kont2401924020_)
                                                          (___kont2402124022_
                                                           _tl2065920864_
                                                           _hd2065820861_))))
                                                  (___kont2402124022_
                                                   _tl2065920864_
                                                   _hd2065820861_))
                                              (___kont2402124022_
                                               _tl2065920864_
                                               _hd2065820861_)))
                                      (___kont2402124022_
                                       _tl2065920864_
                                       _hd2065820861_))))
                              (let ()
                                (declare (not safe))
                                (_g2065220789_))))))))
                 (_generate19957_
                  (lambda (_e20019_ _d20021_)
                    (let* ((___stx2409224093_ _e20019_)
                           (_g2003020088_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2409224093_))))
                      (let ((___kont2409524096_
                             (lambda (_L20599_)
                               (let* ((_g2061220620_
                                       (lambda (_g2061320616_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2061320616_)))
                                      (_g2061120639_
                                       (lambda (_g2061320624_)
                                         ((lambda (_L20627_)
                                            (let ()
                                              (let ((__tmp25747
                                                     (gx#datum->syntax
                                                      '#f
                                                      'list))
                                                    (__tmp25741
                                                     (let ((__tmp25743
                                                            (let ((__tmp25746
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'quote))
                          (__tmp25744
                           (let ((__tmp25745
                                  (gx#datum->syntax '#f 'quasiquote)))
                             (declare (not safe))
                             (cons __tmp25745 '()))))
                      (declare (not safe))
                      (cons __tmp25746 __tmp25744)))
                   (__tmp25742
                    (let () (declare (not safe)) (cons _L20627_ '()))))
               (declare (not safe))
               (cons __tmp25743 __tmp25742))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25747 __tmp25741))))
                                          _g2061320624_))))
                                 (_g2061120639_
                                  (_generate19957_
                                   _L20599_
                                   (let ()
                                     (declare (not safe))
                                     (fx+ _d20021_ '1)))))))
                            (___kont2409724098_
                             (lambda (_L20528_)
                               (if (let ()
                                     (declare (not safe))
                                     (fxzero? _d20021_))
                                   _L20528_
                                   (let* ((_g2054120549_
                                           (lambda (_g2054220545_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2054220545_)))
                                          (_g2054020568_
                                           (lambda (_g2054220553_)
                                             ((lambda (_L20556_)
                                                (let ()
                                                  (let ((__tmp25754
                                                         (gx#datum->syntax
                                                          '#f
                                                          'list))
                                                        (__tmp25748
                                                         (let ((__tmp25750
                                                                (let ((__tmp25753
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'quote))
                              (__tmp25751
                               (let ((__tmp25752
                                      (gx#datum->syntax '#f 'unquote)))
                                 (declare (not safe))
                                 (cons __tmp25752 '()))))
                          (declare (not safe))
                          (cons __tmp25753 __tmp25751)))
                       (__tmp25749
                        (let () (declare (not safe)) (cons _L20556_ '()))))
                   (declare (not safe))
                   (cons __tmp25750 __tmp25749))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp25754
                                                          __tmp25748))))
                                              _g2054220553_))))
                                     (_g2054020568_
                                      (_generate19957_
                                       _L20528_
                                       (let ()
                                         (declare (not safe))
                                         (fx- _d20021_ '1))))))))
                            (___kont2409924100_
                             (lambda (_L20457_)
                               (if (let ()
                                     (declare (not safe))
                                     (fxzero? _d20021_))
                                   (let ((__tmp25762
                                          (gx#datum->syntax '#f 'foldr))
                                         (__tmp25755
                                          (let ((__tmp25761
                                                 (gx#datum->syntax '#f 'cons))
                                                (__tmp25756
                                                 (let ((__tmp25758
                                                        (let ((__tmp25760
                                                               (gx#datum->syntax
                                                                '#f
                                                                'quote))
                                                              (__tmp25759
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons '() '()))))
                  (declare (not safe))
                  (cons __tmp25760 __tmp25759)))
               (__tmp25757 (let () (declare (not safe)) (cons _L20457_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25758
                                                         __tmp25757))))
                                            (declare (not safe))
                                            (cons __tmp25761 __tmp25756))))
                                     (declare (not safe))
                                     (cons __tmp25762 __tmp25755))
                                   (let* ((_g2047020478_
                                           (lambda (_g2047120474_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2047120474_)))
                                          (_g2046920497_
                                           (lambda (_g2047120482_)
                                             ((lambda (_L20485_)
                                                (let ()
                                                  (let ((__tmp25769
                                                         (gx#datum->syntax
                                                          '#f
                                                          'list))
                                                        (__tmp25763
                                                         (let ((__tmp25765
                                                                (let ((__tmp25768
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'quote))
                              (__tmp25766
                               (let ((__tmp25767
                                      (gx#datum->syntax
                                       '#f
                                       'unquote-splicing)))
                                 (declare (not safe))
                                 (cons __tmp25767 '()))))
                          (declare (not safe))
                          (cons __tmp25768 __tmp25766)))
                       (__tmp25764
                        (let () (declare (not safe)) (cons _L20485_ '()))))
                   (declare (not safe))
                   (cons __tmp25765 __tmp25764))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp25769
                                                          __tmp25763))))
                                              _g2047120482_))))
                                     (_g2046920497_
                                      (_generate19957_
                                       _L20457_
                                       (let ()
                                         (declare (not safe))
                                         (fx- _d20021_ '1))))))))
                            (___kont2410124102_
                             (lambda (_L20382_ _L20384_)
                               (let* ((_g2039920407_
                                       (lambda (_g2040020403_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2040020403_)))
                                      (_g2039820426_
                                       (lambda (_g2040020411_)
                                         ((lambda (_L20414_)
                                            (let ()
                                              (let ((__tmp25774
                                                     (gx#datum->syntax
                                                      '#f
                                                      'foldr))
                                                    (__tmp25770
                                                     (let ((__tmp25773
                                                            (gx#datum->syntax
                                                             '#f
                                                             'cons))
                                                           (__tmp25771
                                                            (let ((__tmp25772
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L20384_ '()))))
                      (declare (not safe))
                      (cons _L20414_ __tmp25772))))
               (declare (not safe))
               (cons __tmp25773 __tmp25771))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25774 __tmp25770))))
                                          _g2040020411_))))
                                 (_g2039820426_
                                  (_generate19957_ _L20382_ _d20021_)))))
                            (___kont2410324104_
                             (lambda (_L20268_ _L20270_)
                               (let* ((_g2028120296_
                                       (lambda (_g2028220292_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2028220292_)))
                                      (_g2028020341_
                                       (lambda (_g2028220300_)
                                         (if (gx#stx-pair? _g2028220300_)
                                             (let ((_e2028520303_
                                                    (gx#syntax-e
                                                     _g2028220300_)))
                                               (let ((_hd2028620307_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2028520303_)))
                                                     (_tl2028720310_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2028520303_))))
                                                 (if (gx#stx-pair?
                                                      _tl2028720310_)
                                                     (let ((_e2028820313_
                                                            (gx#syntax-e
                                                             _tl2028720310_)))
                                                       (let ((_hd2028920317_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2028820313_)))
                     (_tl2029020320_
                      (let () (declare (not safe)) (##cdr _e2028820313_))))
                 (if (gx#stx-null? _tl2029020320_)
                     ((lambda (_L20323_ _L20325_)
                        (let ()
                          (let ((__tmp25777 (gx#datum->syntax '#f 'cons))
                                (__tmp25775
                                 (let ((__tmp25776
                                        (let ()
                                          (declare (not safe))
                                          (cons _L20323_ '()))))
                                   (declare (not safe))
                                   (cons _L20325_ __tmp25776))))
                            (declare (not safe))
                            (cons __tmp25777 __tmp25775))))
                      _hd2028920317_
                      _hd2028620307_)
                     (_g2028120296_ _g2028220300_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2028120296_
                                                      _g2028220300_))))
                                             (_g2028120296_ _g2028220300_)))))
                                 (_g2028020341_
                                  (list (_generate19957_ _L20270_ _d20021_)
                                        (_generate19957_
                                         _L20268_
                                         _d20021_))))))
                            (___kont2410524106_
                             (lambda (_L20198_)
                               (let* ((_g2021220220_
                                       (lambda (_g2021320216_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2021320216_)))
                                      (_g2021120239_
                                       (lambda (_g2021320224_)
                                         ((lambda (_L20227_)
                                            (let ()
                                              (let ((__tmp25779
                                                     (gx#datum->syntax
                                                      '#f
                                                      'list->vector))
                                                    (__tmp25778
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L20227_ '()))))
                                                (declare (not safe))
                                                (cons __tmp25779 __tmp25778))))
                                          _g2021320224_))))
                                 (_g2021120239_
                                  (_generate19957_
                                   (foldr (lambda (_g2024220245_ _g2024320248_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g2024220245_
                                                    _g2024320248_)))
                                          '()
                                          _L20198_)
                                   _d20021_)))))
                            (___kont2410924110_
                             (lambda (_L20116_)
                               (let* ((_g2012620134_
                                       (lambda (_g2012720130_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2012720130_)))
                                      (_g2012520153_
                                       (lambda (_g2012720138_)
                                         ((lambda (_L20141_)
                                            (let ()
                                              (let ((__tmp25781
                                                     (gx#datum->syntax
                                                      '#f
                                                      'box))
                                                    (__tmp25780
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L20141_ '()))))
                                                (declare (not safe))
                                                (cons __tmp25781 __tmp25780))))
                                          _g2012720138_))))
                                 (_g2012520153_
                                  (_generate19957_ _L20116_ _d20021_)))))
                            (___kont2411124112_
                             (lambda (_L20095_)
                               (let ((__tmp25783 (gx#datum->syntax '#f 'quote))
                                     (__tmp25782
                                      (let ()
                                        (declare (not safe))
                                        (cons _L20095_ '()))))
                                 (declare (not safe))
                                 (cons __tmp25783 __tmp25782)))))
                        (let* ((_g2002820157_
                                (lambda ()
                                  (if (gx#stx-box? ___stx2409224093_)
                                      (let ((_e2008120112_
                                             (unbox (gx#syntax-e
                                                     ___stx2409224093_))))
                                        (___kont2410924110_ _e2008120112_))
                                      (___kont2411124112_ ___stx2409224093_))))
                               (___match2421124212_
                                (lambda (_e2007020164_
                                         ___splice2410724108_
                                         _target2007120168_
                                         _tl2007320171_)
                                  (letrec ((_loop2007420174_
                                            (lambda (_hd2007220178_
                                                     _e2007820181_)
                                              (if (gx#stx-pair? _hd2007220178_)
                                                  (let ((_e2007520184_
                                                         (gx#syntax-e
                                                          _hd2007220178_)))
                                                    (let ((_lp-tl2007720191_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2007520184_)))
                                                          (_lp-hd2007620188_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2007520184_))))
                                                      (_loop2007420174_
                                                       _lp-tl2007720191_
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _lp-hd2007620188_
                                                               _e2007820181_)))))
                                                  (let ((_e2007920194_
                                                         (reverse _e2007820181_)))
                                                    (___kont2410524106_
                                                     _e2007920194_))))))
                                    (_loop2007420174_
                                     _target2007120168_
                                     '()))))
                               (_g2002720251_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx2409224093_)
                                      (let ((_e2007020164_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx2409224093_))))
                                        (if (gx#stx-pair/null? _e2007020164_)
                                            (let ((___splice2410724108_
                                                   (gx#syntax-split-splice
                                                    _e2007020164_
                                                    '0)))
                                              (let ((_tl2007320171_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2410724108_
                                                        '1)))
                                                    (_target2007120168_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2410724108_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl2007320171_)
                                                    (___match2421124212_
                                                     _e2007020164_
                                                     ___splice2410724108_
                                                     _target2007120168_
                                                     _tl2007320171_)
                                                    (___kont2411124112_
                                                     ___stx2409224093_))))
                                            (___kont2411124112_
                                             ___stx2409224093_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g2002820157_))))))
                          (if (gx#stx-pair? ___stx2409224093_)
                              (let ((_e2003320579_
                                     (gx#syntax-e ___stx2409224093_)))
                                (let ((_tl2003520586_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2003320579_)))
                                      (_hd2003420583_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2003320579_))))
                                  (if (gx#identifier? _hd2003420583_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar$<sugar:2>[1]#_g25784_|
                                           _hd2003420583_)
                                          (if (gx#stx-pair? _tl2003520586_)
                                              (let ((_e2003620589_
                                                     (gx#syntax-e
                                                      _tl2003520586_)))
                                                (let ((_tl2003820596_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2003620589_)))
                                                      (_hd2003720593_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2003620589_))))
                                                  (if (gx#stx-null?
                                                       _tl2003820596_)
                                                      (___kont2409524096_
                                                       _hd2003720593_)
                                                      (___kont2410324104_
                                                       _tl2003520586_
                                                       _hd2003420583_))))
                                              (___kont2410324104_
                                               _tl2003520586_
                                               _hd2003420583_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar$<sugar:2>[1]#_g25785_|
                                               _hd2003420583_)
                                              (if (gx#stx-pair? _tl2003520586_)
                                                  (let ((_e2004320518_
                                                         (gx#syntax-e
                                                          _tl2003520586_)))
                                                    (let ((_tl2004520525_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2004320518_)))
                                                          (_hd2004420522_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2004320518_))))
                                                      (if (gx#stx-null?
                                                           _tl2004520525_)
                                                          (___kont2409724098_
                                                           _hd2004420522_)
                                                          (___kont2410324104_
                                                           _tl2003520586_
                                                           _hd2003420583_))))
                                                  (___kont2410324104_
                                                   _tl2003520586_
                                                   _hd2003420583_))
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar$<sugar:2>[1]#_g25786_|
                                                   _hd2003420583_)
                                                  (if (gx#stx-pair?
                                                       _tl2003520586_)
                                                      (let ((_e2005020447_
                                                             (gx#syntax-e
                                                              _tl2003520586_)))
                                                        (let ((_tl2005220454_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2005020447_)))
                      (_hd2005120451_
                       (let () (declare (not safe)) (##car _e2005020447_))))
                  (if (gx#stx-null? _tl2005220454_)
                      (___kont2409924100_ _hd2005120451_)
                      (___kont2410324104_ _tl2003520586_ _hd2003420583_))))
              (___kont2410324104_ _tl2003520586_ _hd2003420583_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2410324104_
                                                   _tl2003520586_
                                                   _hd2003420583_))))
                                      (if (gx#stx-pair? _hd2003420583_)
                                          (let ((_e2005820362_
                                                 (gx#syntax-e _hd2003420583_)))
                                            (let ((_tl2006020369_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2005820362_)))
                                                  (_hd2005920366_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2005820362_))))
                                              (if (gx#identifier?
                                                   _hd2005920366_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar$<sugar:2>[1]#_g25787_|
                                                       _hd2005920366_)
                                                      (if (gx#stx-pair?
                                                           _tl2006020369_)
                                                          (let ((_e2006120372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2006020369_)))
                    (let ((_tl2006320379_
                           (let () (declare (not safe)) (##cdr _e2006120372_)))
                          (_hd2006220376_
                           (let ()
                             (declare (not safe))
                             (##car _e2006120372_))))
                      (if (gx#stx-null? _tl2006320379_)
                          (if (let () (declare (not safe)) (fxzero? _d20021_))
                              (let ((_L20382_ _tl2003520586_)
                                    (_L20384_ _hd2006220376_))
                                (___kont2410124102_ _L20382_ _L20384_))
                              (___kont2410324104_
                               _tl2003520586_
                               _hd2003420583_))
                          (___kont2410324104_ _tl2003520586_ _hd2003420583_))))
                  (___kont2410324104_ _tl2003520586_ _hd2003420583_))
              (___kont2410324104_ _tl2003520586_ _hd2003420583_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2410324104_
                                                   _tl2003520586_
                                                   _hd2003420583_))))
                                          (___kont2410324104_
                                           _tl2003520586_
                                           _hd2003420583_)))))
                              (let ()
                                (declare (not safe))
                                (_g2002720251_)))))))))
          (let* ((_g1995919973_
                  (lambda (_g1996019969_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1996019969_)))
                 (_g1995820015_
                  (lambda (_g1996019977_)
                    (if (gx#stx-pair? _g1996019977_)
                        (let ((_e1996219980_ (gx#syntax-e _g1996019977_)))
                          (let ((_hd1996319984_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1996219980_)))
                                (_tl1996419987_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1996219980_))))
                            (if (gx#stx-pair? _tl1996419987_)
                                (let ((_e1996519990_
                                       (gx#syntax-e _tl1996419987_)))
                                  (let ((_hd1996619994_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1996519990_)))
                                        (_tl1996719997_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1996519990_))))
                                    (if (gx#stx-null? _tl1996719997_)
                                        ((lambda (_L20000_)
                                           (if (_simple-quote?19955_ _L20000_)
                                               (let ((__tmp25789
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp25788
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L20000_ '()))))
                                                 (declare (not safe))
                                                 (cons __tmp25789 __tmp25788))
                                               (_generate19957_ _L20000_ '0)))
                                         _hd1996619994_)
                                        (_g1995919973_ _g1996019977_))))
                                (_g1995919973_ _g1996019977_))))
                        (_g1995919973_ _g1996019977_)))))
            (_g1995820015_ _stx19952_)))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#delay|
      (lambda (_$stx20887_)
        (let* ((___stx2421824219_ _$stx20887_)
               (_g2089220913_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2421824219_))))
          (let ((___kont2422124222_
                 (lambda (_L20981_)
                   (let ((__tmp25791 (gx#datum->syntax '#f 'quote))
                         (__tmp25790
                          (let () (declare (not safe)) (cons _L20981_ '()))))
                     (declare (not safe))
                     (cons __tmp25791 __tmp25790))))
                (___kont2422324224_
                 (lambda (_L20940_)
                   (let ((__tmp25797 (gx#datum->syntax '#f 'make-promise))
                         (__tmp25792
                          (let ((__tmp25793
                                 (let ((__tmp25796
                                        (gx#datum->syntax '#f 'lambda%))
                                       (__tmp25794
                                        (let ((__tmp25795
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L20940_ '()))))
                                          (declare (not safe))
                                          (cons '() __tmp25795))))
                                   (declare (not safe))
                                   (cons __tmp25796 __tmp25794))))
                            (declare (not safe))
                            (cons __tmp25793 '()))))
                     (declare (not safe))
                     (cons __tmp25797 __tmp25792)))))
            (let ((___match2423924240_
                   (lambda (_e2089520961_
                            _hd2089620965_
                            _tl2089720968_
                            _e2089820971_
                            _hd2089920975_
                            _tl2090020978_)
                     (let ((_L20981_ _hd2089920975_))
                       (if (gx#stx-datum? _L20981_)
                           (___kont2422124222_ _L20981_)
                           (___kont2422324224_ _hd2089920975_))))))
              (if (gx#stx-pair? ___stx2421824219_)
                  (let ((_e2089520961_ (gx#syntax-e ___stx2421824219_)))
                    (let ((_tl2089720968_
                           (let () (declare (not safe)) (##cdr _e2089520961_)))
                          (_hd2089620965_
                           (let ()
                             (declare (not safe))
                             (##car _e2089520961_))))
                      (if (gx#stx-pair? _tl2089720968_)
                          (let ((_e2089820971_ (gx#syntax-e _tl2089720968_)))
                            (let ((_tl2090020978_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2089820971_)))
                                  (_hd2089920975_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2089820971_))))
                              (if (gx#stx-null? _tl2090020978_)
                                  (___match2423924240_
                                   _e2089520961_
                                   _hd2089620965_
                                   _tl2089720968_
                                   _e2089820971_
                                   _hd2089920975_
                                   _tl2090020978_)
                                  (let ()
                                    (declare (not safe))
                                    (_g2089220913_)))))
                          (let () (declare (not safe)) (_g2089220913_)))))
                  (let () (declare (not safe)) (_g2089220913_))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#cut|
      (lambda (_stx20998_)
        (letrec ((_generate21001_
                  (lambda (_rest21120_)
                    (let _lp21123_ ((_rest21126_ _rest21120_)
                                    (_hd21128_ '())
                                    (_body21129_ '()))
                      (let* ((___stx2427624277_ _rest21126_)
                             (_g2113221144_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2427624277_))))
                        (let ((___kont2427924280_
                               (lambda (_L21172_ _L21174_)
                                 (let* ((___stx2425624257_ _L21174_)
                                        (_g2119121198_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2425624257_))))
                                   (let ((___kont2425924260_
                                          (lambda ()
                                            (let ((_arg21234_ (gx#genident)))
                                              (_lp21123_
                                               _L21172_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _arg21234_ _hd21128_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _arg21234_
                                                       _body21129_))))))
                                         (___kont2426124262_
                                          (lambda ()
                                            (if (gx#stx-null? _L21172_)
                                                (let ((_tail21220_
                                                       (gx#genident)))
                                                  (values (foldl cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tail21220_
                         _hd21128_)
                  (foldl cons (list _tail21220_) _body21129_)
                  '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; cut ellipsis <...> not in tail position"
                                                 _stx20998_
                                                 _L21174_))))
                                         (___kont2426324264_
                                          (lambda ()
                                            (_lp21123_
                                             _L21172_
                                             _hd21128_
                                             (let ()
                                               (declare (not safe))
                                               (cons _L21174_ _body21129_))))))
                                     (if (gx#identifier? ___stx2425624257_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core/sugar$<sugar:2>[1]#_g25798_|
                                              ___stx2425624257_)
                                             (___kont2425924260_)
                                             (if (gx#free-identifier=?
                                                  |gerbil/core/sugar$<sugar:2>[1]#_g25799_|
                                                  ___stx2425624257_)
                                                 (___kont2426124262_)
                                                 (___kont2426324264_)))
                                         (___kont2426324264_))))))
                              (___kont2428124282_
                               (lambda ()
                                 (values (reverse _hd21128_)
                                         (reverse _body21129_)
                                         '#f))))
                          (if (gx#stx-pair? ___stx2427624277_)
                              (let ((_e2113621162_
                                     (gx#syntax-e ___stx2427624277_)))
                                (let ((_tl2113821169_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2113621162_)))
                                      (_hd2113721166_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2113621162_))))
                                  (___kont2427924280_
                                   _tl2113821169_
                                   _hd2113721166_)))
                              (___kont2428124282_))))))))
          (let* ((_g2100421015_
                  (lambda (_g2100521011_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2100521011_)))
                 (_g2100321116_
                  (lambda (_g2100521019_)
                    (if (gx#stx-pair? _g2100521019_)
                        (let ((_e2100721022_ (gx#syntax-e _g2100521019_)))
                          (let ((_hd2100821026_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2100721022_)))
                                (_tl2100921029_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2100721022_))))
                            ((lambda (_L21032_)
                               (if (and (gx#stx-list? _L21032_)
                                        (let ((__tmp25800
                                               (gx#stx-null? _L21032_)))
                                          (declare (not safe))
                                          (not __tmp25800)))
                                   (let ((_g25801_ (_generate21001_ _L21032_)))
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
                                       (let ((_hd21045_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g25801_ 0)))
                                             (_body21047_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g25801_ 1)))
                                             (_tail?21048_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g25801_ 2))))
                                         (let* ((_g2105021058_
                                                 (lambda (_g2105121054_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g2105121054_)))
                                                (_g2104921112_
                                                 (lambda (_g2105121062_)
                                                   ((lambda (_L21065_)
                                                      (let ()
                                                        (let* ((_g2107821086_
                                                                (lambda (_g2107921082_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g2107921082_)))
                       (_g2107721108_
                        (lambda (_g2107921090_)
                          ((lambda (_L21093_)
                             (let ()
                               (let ()
                                 (if _tail?21048_
                                     (let ((__tmp25807
                                            (gx#datum->syntax '#f 'lambda%))
                                           (__tmp25803
                                            (let ((__tmp25804
                                                   (let ((__tmp25805
                                                          (let ((__tmp25806
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'apply)))
                    (declare (not safe))
                    (cons __tmp25806 _L21093_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25805 '()))))
                                              (declare (not safe))
                                              (cons _L21065_ __tmp25804))))
                                       (declare (not safe))
                                       (cons __tmp25807 __tmp25803))
                                     (let ((__tmp25810
                                            (gx#datum->syntax '#f 'lambda%))
                                           (__tmp25808
                                            (let ((__tmp25809
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L21093_ '()))))
                                              (declare (not safe))
                                              (cons _L21065_ __tmp25809))))
                                       (declare (not safe))
                                       (cons __tmp25810 __tmp25808))))))
                           _g2107921090_))))
                  (_g2107721108_ _body21047_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2105121062_))))
                                           (_g2104921112_ _hd21045_)))))
                                   (_g2100421015_ _g2100521019_)))
                             _tl2100921029_)))
                        (_g2100421015_ _g2100521019_)))))
            (_g2100321116_ _stx20998_)))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#<>|
      (lambda (_$stx21246_)
        (let ((_g2124921256_
               (lambda (_g2125021252_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g2125021252_))))
          (_g2124921256_ _$stx21246_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#<...>|
      (lambda (_$stx21260_)
        (let ((_g2126321270_
               (lambda (_g2126421266_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g2126421266_))))
          (_g2126321270_ _$stx21260_))))))
