(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/sugar$<sugar:2>[1]#_g24810_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g24811_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g24812_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25680_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25683_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25684_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25745_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25746_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25747_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25748_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25792_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25793_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25794_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25795_|
    (##structure
     gx#syntax-quote::t
     'unquote-splicing
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25806_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/sugar$<sugar:2>[1]#_g25807_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/sugar$<sugar:2>[:0:]#lambda|
      (lambda (_stx8941_)
        (letrec ((_simple-lambda?8944_
                  (lambda (_hd12341_)
                    (gx#stx-andmap gx#identifier? _hd12341_)))
                 (_opt-lambda?8946_
                  (lambda (_hd12193_)
                    (let _lp12196_ ((_rest12199_ _hd12193_) (_opt?12201_ '#f))
                      (let* ((___stx2270422705_ _rest12199_)
                             (_g1220412216_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2270422705_))))
                        (let ((___kont2270722708_
                               (lambda (_L12248_ _L12250_)
                                 (let* ((___stx2268022681_ _L12250_)
                                        (_g1226612280_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2268022681_))))
                                   (let ((___kont2268322684_
                                          (lambda (_L12318_)
                                            (_lp12196_ _L12248_ '#t)))
                                         (___kont2268522686_
                                          (lambda ()
                                            (if (gx#identifier? _L12250_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (not _opt?12201_))
                                                    (_lp12196_ _L12248_ '#f)
                                                    '#f)
                                                '#f))))
                                     (let ((___match2270122702_
                                            (lambda (_e1226912298_
                                                     _hd1227012302_
                                                     _tl1227112305_
                                                     _e1227212308_
                                                     _hd1227312312_
                                                     _tl1227412315_)
                                              (let ((_L12318_ _hd1227012302_))
                                                (if (gx#identifier? _L12318_)
                                                    (___kont2268322684_
                                                     _L12318_)
                                                    (___kont2268522686_))))))
                                       (if (gx#stx-pair? ___stx2268022681_)
                                           (let ((_e1226912298_
                                                  (gx#syntax-e
                                                   ___stx2268022681_)))
                                             (let ((_tl1227112305_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e1226912298_)))
                                                   (_hd1227012302_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e1226912298_))))
                                               (if (gx#stx-pair?
                                                    _tl1227112305_)
                                                   (let ((_e1227212308_
                                                          (gx#syntax-e
                                                           _tl1227112305_)))
                                                     (let ((_tl1227412315_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e1227212308_)))
                                                           (_hd1227312312_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e1227212308_))))
                                                       (if (gx#stx-null?
                                                            _tl1227412315_)
                                                           (___match2270122702_
                                                            _e1226912298_
                                                            _hd1227012302_
                                                            _tl1227112305_
                                                            _e1227212308_
                                                            _hd1227312312_
                                                            _tl1227412315_)
                                                           (___kont2268522686_))))
                                                   (___kont2268522686_))))
                                           (___kont2268522686_)))))))
                              (___kont2270922710_
                               (lambda ()
                                 (if _opt?12201_
                                     (let ((_$e12227_
                                            (gx#stx-null? _rest12199_)))
                                       (if _$e12227_
                                           _$e12227_
                                           (gx#identifier? _rest12199_)))
                                     '#f))))
                          (if (gx#stx-pair? ___stx2270422705_)
                              (let ((_e1220812238_
                                     (gx#syntax-e ___stx2270422705_)))
                                (let ((_tl1221012245_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1220812238_)))
                                      (_hd1220912242_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1220812238_))))
                                  (___kont2270722708_
                                   _tl1221012245_
                                   _hd1220912242_)))
                              (___kont2270922710_)))))))
                 (_opt-lambda-split8947_
                  (lambda (_hd12045_)
                    (let _lp12048_ ((_rest12051_ _hd12045_)
                                    (_pre12053_ '())
                                    (_opt12054_ '()))
                      (let* ((___stx2274422745_ _rest12051_)
                             (_g1205712069_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2274422745_))))
                        (let ((___kont2274722748_
                               (lambda (_L12097_ _L12099_)
                                 (let* ((___stx2272022721_ _L12099_)
                                        (_g1211512130_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2272022721_))))
                                   (let ((___kont2272322724_
                                          (lambda (_L12168_ _L12170_)
                                            (_lp12048_
                                             _L12097_
                                             _pre12053_
                                             (let ((__tmp24620
                                                    (let ((__tmp24621
                                                           (_generate-bind8950_
                                                            _L12170_)))
                                                      (declare (not safe))
                                                      (cons __tmp24621
                                                            _L12168_))))
                                               (declare (not safe))
                                               (cons __tmp24620 _opt12054_)))))
                                         (___kont2272522726_
                                          (lambda ()
                                            (_lp12048_
                                             _L12097_
                                             (let ((__tmp24622
                                                    (_generate-bind8950_
                                                     _L12099_)))
                                               (declare (not safe))
                                               (cons __tmp24622 _pre12053_))
                                             _opt12054_))))
                                     (if (gx#stx-pair? ___stx2272022721_)
                                         (let ((_e1211912148_
                                                (gx#syntax-e
                                                 ___stx2272022721_)))
                                           (let ((_tl1212112155_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1211912148_)))
                                                 (_hd1212012152_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1211912148_))))
                                             (if (gx#stx-pair? _tl1212112155_)
                                                 (let ((_e1212212158_
                                                        (gx#syntax-e
                                                         _tl1212112155_)))
                                                   (let ((_tl1212412165_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1212212158_)))
                                                         (_hd1212312162_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1212212158_))))
                                                     (if (gx#stx-null?
                                                          _tl1212412165_)
                                                         (___kont2272322724_
                                                          _hd1212312162_
                                                          _hd1212012152_)
                                                         (___kont2272522726_))))
                                                 (___kont2272522726_))))
                                         (___kont2272522726_))))))
                              (___kont2274922750_
                               (lambda ()
                                 (values (reverse _pre12053_)
                                         (reverse _opt12054_)
                                         (if (gx#identifier? _rest12051_)
                                             (_generate-bind8950_ _rest12051_)
                                             _rest12051_)))))
                          (if (gx#stx-pair? ___stx2274422745_)
                              (let ((_e1206112087_
                                     (gx#syntax-e ___stx2274422745_)))
                                (let ((_tl1206312094_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1206112087_)))
                                      (_hd1206212091_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1206112087_))))
                                  (___kont2274722748_
                                   _tl1206312094_
                                   _hd1206212091_)))
                              (___kont2274922750_)))))))
                 (_kw-lambda?8948_
                  (lambda (_hd11713_)
                    (let _lp11716_ ((_rest11719_ _hd11713_)
                                    (_opt?11721_ '#f)
                                    (_key?11722_ '#f))
                      (let* ((___stx2280822809_ _rest11719_)
                             (_g1172711757_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2280822809_))))
                        (let ((___kont2281122812_
                               (lambda (_L11952_ _L11954_ _L11955_)
                                 (let* ((___stx2278422785_ _L11954_)
                                        (_g1197011984_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2278422785_))))
                                   (let ((___kont2278722788_
                                          (lambda (_L12022_)
                                            (if (gx#identifier? _L12022_)
                                                (_lp11716_
                                                 _L11952_
                                                 _opt?11721_
                                                 '#t)
                                                '#f)))
                                         (___kont2278922790_
                                          (lambda ()
                                            (if (gx#identifier? _L11954_)
                                                (_lp11716_
                                                 _L11952_
                                                 _opt?11721_
                                                 '#t)
                                                '#f))))
                                     (if (gx#stx-pair? ___stx2278422785_)
                                         (let ((_e1197312002_
                                                (gx#syntax-e
                                                 ___stx2278422785_)))
                                           (let ((_tl1197512009_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1197312002_)))
                                                 (_hd1197412006_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1197312002_))))
                                             (if (gx#stx-pair? _tl1197512009_)
                                                 (let ((_e1197612012_
                                                        (gx#syntax-e
                                                         _tl1197512009_)))
                                                   (let ((_tl1197812019_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1197612012_)))
                                                         (_hd1197712016_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1197612012_))))
                                                     (if (gx#stx-null?
                                                          _tl1197812019_)
                                                         (___kont2278722788_
                                                          _hd1197412006_)
                                                         (___kont2278922790_))))
                                                 (___kont2278922790_))))
                                         (___kont2278922790_))))))
                              (___kont2281322814_
                               (lambda (_L11909_ _L11911_)
                                 (if (gx#identifier? _L11911_)
                                     (_lp11716_ _L11909_ _opt?11721_ '#t)
                                     '#f)))
                              (___kont2281522816_
                               (lambda (_L11789_ _L11791_)
                                 (let* ((___stx2276022761_ _L11791_)
                                        (_g1180711821_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2276022761_))))
                                   (let ((___kont2276322764_
                                          (lambda (_L11859_)
                                            (if (gx#identifier? _L11859_)
                                                (_lp11716_
                                                 _L11789_
                                                 '#t
                                                 _key?11722_)
                                                '#f)))
                                         (___kont2276522766_
                                          (lambda ()
                                            (if (gx#identifier? _L11791_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (not _opt?11721_))
                                                    (_lp11716_
                                                     _L11789_
                                                     '#f
                                                     _key?11722_)
                                                    '#f)
                                                '#f))))
                                     (if (gx#stx-pair? ___stx2276022761_)
                                         (let ((_e1181011839_
                                                (gx#syntax-e
                                                 ___stx2276022761_)))
                                           (let ((_tl1181211846_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1181011839_)))
                                                 (_hd1181111843_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1181011839_))))
                                             (if (gx#stx-pair? _tl1181211846_)
                                                 (let ((_e1181311849_
                                                        (gx#syntax-e
                                                         _tl1181211846_)))
                                                   (let ((_tl1181511856_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1181311849_)))
                                                         (_hd1181411853_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1181311849_))))
                                                     (if (gx#stx-null?
                                                          _tl1181511856_)
                                                         (___kont2276322764_
                                                          _hd1181111843_)
                                                         (___kont2276522766_))))
                                                 (___kont2276522766_))))
                                         (___kont2276522766_))))))
                              (___kont2281722818_
                               (lambda ()
                                 (if _key?11722_
                                     (let ((_$e11768_
                                            (gx#stx-null? _rest11719_)))
                                       (if _$e11768_
                                           _$e11768_
                                           (gx#identifier? _rest11719_)))
                                     '#f))))
                          (let ((___match2283122832_
                                 (lambda (_e1173211932_
                                          _hd1173311936_
                                          _tl1173411939_
                                          _e1173511942_
                                          _hd1173611946_
                                          _tl1173711949_)
                                   (let ((_L11952_ _tl1173711949_)
                                         (_L11954_ _hd1173611946_)
                                         (_L11955_ _hd1173311936_))
                                     (if (gx#stx-keyword? _L11955_)
                                         (___kont2281122812_
                                          _L11952_
                                          _L11954_
                                          _L11955_)
                                         (if (gx#stx-datum? _hd1173311936_)
                                             (let ((_e1174311895_
                                                    (gx#stx-e _hd1173311936_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (equal? _e1174311895_
                                                             '#!key))
                                                   (___kont2281322814_
                                                    _tl1173711949_
                                                    _hd1173611946_)
                                                   (___kont2281522816_
                                                    _tl1173411939_
                                                    _hd1173311936_)))
                                             (___kont2281522816_
                                              _tl1173411939_
                                              _hd1173311936_)))))))
                            (if (gx#stx-pair? ___stx2280822809_)
                                (let ((_e1173211932_
                                       (gx#syntax-e ___stx2280822809_)))
                                  (let ((_tl1173411939_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1173211932_)))
                                        (_hd1173311936_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1173211932_))))
                                    (if (gx#stx-pair? _tl1173411939_)
                                        (let ((_e1173511942_
                                               (gx#syntax-e _tl1173411939_)))
                                          (let ((_tl1173711949_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1173511942_)))
                                                (_hd1173611946_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1173511942_))))
                                            (___match2283122832_
                                             _e1173211932_
                                             _hd1173311936_
                                             _tl1173411939_
                                             _e1173511942_
                                             _hd1173611946_
                                             _tl1173711949_)))
                                        (if (gx#stx-datum? _hd1173311936_)
                                            (let ((_e1174311895_
                                                   (gx#stx-e _hd1173311936_)))
                                              (___kont2281522816_
                                               _tl1173411939_
                                               _hd1173311936_))
                                            (___kont2281522816_
                                             _tl1173411939_
                                             _hd1173311936_)))))
                                (___kont2281722818_))))))))
                 (_kw-lambda-split8949_
                  (lambda (_hd11446_)
                    (let _lp11449_ ((_rest11452_ _hd11446_)
                                    (_kwvar11454_ '#f)
                                    (_kwargs11455_ '())
                                    (_args11456_ '()))
                      (let* ((___stx2288222883_ _rest11452_)
                             (_g1146111491_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2288222883_))))
                        (let ((___kont2288522886_
                               (lambda (_L11610_ _L11612_ _L11613_)
                                 (let ((_key11627_ (gx#stx-e _L11613_)))
                                   (if (find (lambda (_kwarg11630_)
                                               (let ((__tmp24623
                                                      (car _kwarg11630_)))
                                                 (declare (not safe))
                                                 (eq? _key11627_ __tmp24623)))
                                             _kwargs11455_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"bad syntax; duplicate keyword argument"
                                        _stx8941_
                                        _hd11446_
                                        _key11627_)
                                       (let* ((___stx2285822859_ _L11612_)
                                              (_g1163411649_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  ___stx2285822859_))))
                                         (let ((___kont2286122862_
                                                (lambda (_L11687_ _L11689_)
                                                  (_lp11449_
                                                   _L11610_
                                                   _kwvar11454_
                                                   (let ((__tmp24624
                                                          (list _key11627_
                                                                (_generate-bind8950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11689_)
                        _L11687_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp24624
                                                           _kwargs11455_))
                                                   _args11456_)))
                                               (___kont2286322864_
                                                (lambda ()
                                                  (_lp11449_
                                                   _L11610_
                                                   _kwvar11454_
                                                   (let ((__tmp24625
                                                          (list _key11627_
                                                                (_generate-bind8950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L11612_)
                        (let ((__tmp24628 (gx#datum->syntax '#f 'error))
                              (__tmp24626
                               (let ((__tmp24627
                                      (let ()
                                        (declare (not safe))
                                        (cons _L11613_ '()))))
                                 (declare (not safe))
                                 (cons '"Missing required keyword argument"
                                       __tmp24627))))
                          (declare (not safe))
                          (cons __tmp24628 __tmp24626)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp24625
                                                           _kwargs11455_))
                                                   _args11456_))))
                                           (if (gx#stx-pair? ___stx2285822859_)
                                               (let ((_e1163811667_
                                                      (gx#syntax-e
                                                       ___stx2285822859_)))
                                                 (let ((_tl1164011674_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1163811667_)))
                                                       (_hd1163911671_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1163811667_))))
                                                   (if (gx#stx-pair?
                                                        _tl1164011674_)
                                                       (let ((_e1164111677_
                                                              (gx#syntax-e
                                                               _tl1164011674_)))
                                                         (let ((_tl1164311684_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _e1164111677_)))
                       (_hd1164211681_
                        (let () (declare (not safe)) (##car _e1164111677_))))
                   (if (gx#stx-null? _tl1164311684_)
                       (___kont2286122862_ _hd1164211681_ _hd1163911671_)
                       (___kont2286322864_))))
               (___kont2286322864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2286322864_))))))))
                              (___kont2288722888_
                               (lambda (_L11567_ _L11569_)
                                 (if _kwvar11454_
                                     (gx#raise-syntax-error
                                      '#f
                                      '"bad syntax; duplicate #!key argument"
                                      _stx8941_
                                      _hd11446_
                                      _L11569_)
                                     (_lp11449_
                                      _L11567_
                                      (_generate-bind8950_ _L11569_)
                                      _kwargs11455_
                                      _args11456_))))
                              (___kont2288922890_
                               (lambda (_L11519_ _L11521_)
                                 (_lp11449_
                                  _L11519_
                                  _kwvar11454_
                                  _kwargs11455_
                                  (let ()
                                    (declare (not safe))
                                    (cons _L11521_ _args11456_)))))
                              (___kont2289122892_
                               (lambda ()
                                 (values _kwvar11454_
                                         (reverse _kwargs11455_)
                                         (foldl cons
                                                _rest11452_
                                                _args11456_)))))
                          (let ((___match2290522906_
                                 (lambda (_e1146611590_
                                          _hd1146711594_
                                          _tl1146811597_
                                          _e1146911600_
                                          _hd1147011604_
                                          _tl1147111607_)
                                   (let ((_L11610_ _tl1147111607_)
                                         (_L11612_ _hd1147011604_)
                                         (_L11613_ _hd1146711594_))
                                     (if (gx#stx-keyword? _L11613_)
                                         (___kont2288522886_
                                          _L11610_
                                          _L11612_
                                          _L11613_)
                                         (if (gx#stx-datum? _hd1146711594_)
                                             (let ((_e1147711553_
                                                    (gx#stx-e _hd1146711594_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (equal? _e1147711553_
                                                             '#!key))
                                                   (___kont2288722888_
                                                    _tl1147111607_
                                                    _hd1147011604_)
                                                   (___kont2288922890_
                                                    _tl1146811597_
                                                    _hd1146711594_)))
                                             (___kont2288922890_
                                              _tl1146811597_
                                              _hd1146711594_)))))))
                            (if (gx#stx-pair? ___stx2288222883_)
                                (let ((_e1146611590_
                                       (gx#syntax-e ___stx2288222883_)))
                                  (let ((_tl1146811597_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1146611590_)))
                                        (_hd1146711594_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1146611590_))))
                                    (if (gx#stx-pair? _tl1146811597_)
                                        (let ((_e1146911600_
                                               (gx#syntax-e _tl1146811597_)))
                                          (let ((_tl1147111607_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1146911600_)))
                                                (_hd1147011604_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1146911600_))))
                                            (___match2290522906_
                                             _e1146611590_
                                             _hd1146711594_
                                             _tl1146811597_
                                             _e1146911600_
                                             _hd1147011604_
                                             _tl1147111607_)))
                                        (if (gx#stx-datum? _hd1146711594_)
                                            (let ((_e1147711553_
                                                   (gx#stx-e _hd1146711594_)))
                                              (___kont2288922890_
                                               _tl1146811597_
                                               _hd1146711594_))
                                            (___kont2288922890_
                                             _tl1146811597_
                                             _hd1146711594_)))))
                                (___kont2289122892_))))))))
                 (_generate-bind8950_
                  (lambda (_e11443_)
                    (if (gx#underscore? _e11443_)
                        (gx#genident _e11443_)
                        _e11443_)))
                 (_check-duplicate-bindings8951_
                  (lambda (_hd11140_)
                    (letrec ((_cons-id11143_
                              (lambda (_id11439_ _ids11441_)
                                (if (gx#underscore? _id11439_)
                                    _ids11441_
                                    (let ()
                                      (declare (not safe))
                                      (cons _id11439_ _ids11441_))))))
                      (let _lp11146_ ((_rest11149_ _hd11140_) (_ids11151_ '()))
                        (let* ((___stx2295622957_ _rest11149_)
                               (_g1115411166_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx2295622957_))))
                          (let ((___kont2295922960_
                                 (lambda (_L11194_ _L11196_)
                                   (if (gx#identifier? _L11196_)
                                       (_lp11146_
                                        _L11194_
                                        (_cons-id11143_ _L11196_ _ids11151_))
                                       (if (gx#stx-pair? _L11196_)
                                           (let* ((_g1121211226_
                                                   (lambda (_g1121311222_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g1121311222_)))
                                                  (_g1121111267_
                                                   (lambda (_g1121311230_)
                                                     (if (gx#stx-pair?
                                                          _g1121311230_)
                                                         (let ((_e1121511233_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1121311230_)))
                   (let ((_hd1121611237_
                          (let () (declare (not safe)) (##car _e1121511233_)))
                         (_tl1121711240_
                          (let () (declare (not safe)) (##cdr _e1121511233_))))
                     (if (gx#stx-pair? _tl1121711240_)
                         (let ((_e1121811243_ (gx#syntax-e _tl1121711240_)))
                           (let ((_hd1121911247_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e1121811243_)))
                                 (_tl1122011250_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e1121811243_))))
                             (if (gx#stx-null? _tl1122011250_)
                                 ((lambda (_L11253_)
                                    (_lp11146_
                                     _L11194_
                                     (_cons-id11143_ _L11253_ _ids11151_)))
                                  _hd1121611237_)
                                 (_g1121211226_ _g1121311230_))))
                         (_g1121211226_ _g1121311230_))))
                 (_g1121211226_ _g1121311230_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1121111267_ _L11196_))
                                           (if (gx#stx-keyword? _L11196_)
                                               (let* ((_g1127111283_
                                                       (lambda (_g1127211279_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g1127211279_)))
                                                      (_g1127011385_
                                                       (lambda (_g1127211287_)
                                                         (if (gx#stx-pair?
                                                              _g1127211287_)
                                                             (let ((_e1127511290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1127211287_)))
                       (let ((_hd1127611294_
                              (let ()
                                (declare (not safe))
                                (##car _e1127511290_)))
                             (_tl1127711297_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1127511290_))))
                         ((lambda (_L11300_ _L11302_)
                            (let* ((___stx2293222933_ _L11302_)
                                   (_g1131411328_
                                    (lambda ()
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       ___stx2293222933_))))
                              (let ((___kont2293522936_
                                     (lambda (_L11366_)
                                       (_lp11146_
                                        _L11300_
                                        (_cons-id11143_ _L11366_ _ids11151_))))
                                    (___kont2293722938_
                                     (lambda ()
                                       (_lp11146_
                                        _L11300_
                                        (_cons-id11143_
                                         _L11302_
                                         _ids11151_)))))
                                (if (gx#stx-pair? ___stx2293222933_)
                                    (let ((_e1131711346_
                                           (gx#syntax-e ___stx2293222933_)))
                                      (let ((_tl1131911353_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1131711346_)))
                                            (_hd1131811350_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1131711346_))))
                                        (if (gx#stx-pair? _tl1131911353_)
                                            (let ((_e1132011356_
                                                   (gx#syntax-e
                                                    _tl1131911353_)))
                                              (let ((_tl1132211363_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1132011356_)))
                                                    (_hd1132111360_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1132011356_))))
                                                (if (gx#stx-null?
                                                     _tl1132211363_)
                                                    (___kont2293522936_
                                                     _hd1131811350_)
                                                    (___kont2293722938_))))
                                            (___kont2293722938_))))
                                    (___kont2293722938_)))))
                          _tl1127711297_
                          _hd1127611294_)))
                     (_g1127111283_ _g1127211287_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1127011385_ _L11194_))
                                               (if (let ((__tmp24629
                                                          (gx#stx-e _L11196_)))
                                                     (declare (not safe))
                                                     (eq? __tmp24629 '#!key))
                                                   (let* ((_g1138911401_
                                                           (lambda (_g1139011397_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g1139011397_)))
                                                          (_g1138811431_
                                                           (lambda (_g1139011405_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1139011405_)
                         (let ((_e1139311408_ (gx#syntax-e _g1139011405_)))
                           (let ((_hd1139411412_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e1139311408_)))
                                 (_tl1139511415_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e1139311408_))))
                             ((lambda (_L11418_ _L11420_)
                                (_lp11146_
                                 _L11418_
                                 (_cons-id11143_ _L11420_ _ids11151_)))
                              _tl1139511415_
                              _hd1139411412_)))
                         (_g1138911401_ _g1139011405_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1138811431_ _L11194_))
                                                   (error '"BUG: check-duplicate-bindings"
                                                          _stx8941_
                                                          _rest11149_)))))))
                                (___kont2296122962_
                                 (lambda ()
                                   (gx#check-duplicate-identifiers
                                    (if (gx#stx-null? _rest11149_)
                                        _ids11151_
                                        (_cons-id11143_
                                         _rest11149_
                                         _ids11151_))
                                    _stx8941_))))
                            (if (gx#stx-pair? ___stx2295622957_)
                                (let ((_e1115811184_
                                       (gx#syntax-e ___stx2295622957_)))
                                  (let ((_tl1116011191_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1115811184_)))
                                        (_hd1115911188_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1115811184_))))
                                    (___kont2295922960_
                                     _tl1116011191_
                                     _hd1115911188_)))
                                (___kont2296122962_))))))))
                 (_generate-opt-primary8952_
                  (lambda (_pre10932_ _opt10934_ _tail10935_ _body10936_)
                    (let* ((_g1093810979_
                            (lambda (_g1093910975_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g1093910975_)))
                           (_g1093711136_
                            (lambda (_g1093910983_)
                              (if (gx#stx-pair? _g1093910983_)
                                  (let ((_e1094410986_
                                         (gx#syntax-e _g1093910983_)))
                                    (let ((_hd1094510990_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1094410986_)))
                                          (_tl1094610993_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1094410986_))))
                                      (if (gx#stx-pair/null? _hd1094510990_)
                                          (let ((_g24630_
                                                 (gx#syntax-split-splice
                                                  _hd1094510990_
                                                  '0)))
                                            (begin
                                              (let ((_g24631_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g24630_)
                                                           (##vector-length
                                                            _g24630_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g24631_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g24631_)))
                                              (let ((_target1094710996_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g24630_
                                                        0)))
                                                    (_tl1094910999_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g24630_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _tl1094910999_)
                                                    (letrec ((_loop1095011002_
                                                              (lambda (_hd1094811006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _pre1095411009_)
                        (if (gx#stx-pair? _hd1094811006_)
                            (let ((_e1095111012_ (gx#syntax-e _hd1094811006_)))
                              (let ((_lp-hd1095211016_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1095111012_)))
                                    (_lp-tl1095311019_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1095111012_))))
                                (_loop1095011002_
                                 _lp-tl1095311019_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd1095211016_ _pre1095411009_)))))
                            (let ((_pre1095511022_ (reverse _pre1095411009_)))
                              (if (gx#stx-pair? _tl1094610993_)
                                  (let ((_e1095611026_
                                         (gx#syntax-e _tl1094610993_)))
                                    (let ((_hd1095711030_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1095611026_)))
                                          (_tl1095811033_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1095611026_))))
                                      (if (gx#stx-pair/null? _hd1095711030_)
                                          (let ((_g24632_
                                                 (gx#syntax-split-splice
                                                  _hd1095711030_
                                                  '0)))
                                            (begin
                                              (let ((_g24633_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g24632_)
                                                           (##vector-length
                                                            _g24632_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g24633_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g24633_)))
                                              (let ((_target1095911036_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g24632_
                                                        0)))
                                                    (_tl1096111039_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g24632_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _tl1096111039_)
                                                    (letrec ((_loop1096211042_
                                                              (lambda (_hd1096011046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _opt1096611049_)
                        (if (gx#stx-pair? _hd1096011046_)
                            (let ((_e1096311052_ (gx#syntax-e _hd1096011046_)))
                              (let ((_lp-hd1096411056_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1096311052_)))
                                    (_lp-tl1096511059_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1096311052_))))
                                (_loop1096211042_
                                 _lp-tl1096511059_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd1096411056_ _opt1096611049_)))))
                            (let ((_opt1096711062_ (reverse _opt1096611049_)))
                              (if (gx#stx-pair? _tl1095811033_)
                                  (let ((_e1096811066_
                                         (gx#syntax-e _tl1095811033_)))
                                    (let ((_hd1096911070_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1096811066_)))
                                          (_tl1097011073_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1096811066_))))
                                      (if (gx#stx-pair? _tl1097011073_)
                                          (let ((_e1097111076_
                                                 (gx#syntax-e _tl1097011073_)))
                                            (let ((_hd1097211080_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1097111076_)))
                                                  (_tl1097311083_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1097111076_))))
                                              (if (gx#stx-null? _tl1097311083_)
                                                  ((lambda (_L11086_
                                                            _L11088_
                                                            _L11089_
                                                            _L11090_)
                                                     (let ()
                                                       (let ((__tmp24636
                                                              (gx#datum->syntax
                                                               '#f
                                                               'lambda%))
                                                             (__tmp24634
                                                              (let ((__tmp24635
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr (lambda (_g1111911124_ _g1112011127_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g1111911124_ _g1112011127_)))
                                    (foldr (lambda (_g1112111130_
                                                    _g1112211133_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g1112111130_
                                                     _g1112211133_)))
                                           _L11088_
                                           _L11089_)
                                    _L11090_)))
                        (declare (not safe))
                        (cons __tmp24635 _L11086_))))
                 (declare (not safe))
                 (cons __tmp24636 __tmp24634))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _hd1097211080_
                                                   _hd1096911070_
                                                   _opt1096711062_
                                                   _pre1095511022_)
                                                  (_g1093810979_
                                                   _g1093910983_))))
                                          (_g1093810979_ _g1093910983_))))
                                  (_g1093810979_ _g1093910983_)))))))
              (_loop1096211042_ _target1095911036_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1093810979_
                                                     _g1093910983_)))))
                                          (_g1093810979_ _g1093910983_))))
                                  (_g1093810979_ _g1093910983_)))))))
              (_loop1095011002_ _target1094710996_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1093810979_
                                                     _g1093910983_)))))
                                          (_g1093810979_ _g1093910983_))))
                                  (_g1093810979_ _g1093910983_)))))
                      (_g1093711136_
                       (list _pre10932_
                             (map car _opt10934_)
                             _tail10935_
                             _body10936_)))))
                 (_generate-opt-dispatch8953_
                  (lambda (_primary10926_ _pre10928_ _opt10929_ _tail10930_)
                    (let ((__tmp24638
                           (list _pre10928_
                                 (_generate-opt-clause8955_
                                  _primary10926_
                                  _pre10928_
                                  _opt10929_)))
                          (__tmp24637
                           (_generate-opt-dispatch*8954_
                            _primary10926_
                            _pre10928_
                            _opt10929_
                            _tail10930_)))
                      (declare (not safe))
                      (cons __tmp24638 __tmp24637))))
                 (_generate-opt-dispatch*8954_
                  (lambda (_primary10483_ _pre10485_ _opt10486_ _tail10487_)
                    (let _recur10489_ ((_opt-rest10492_ _opt10486_)
                                       (_right10494_ '()))
                      (if (let () (declare (not safe)) (pair? _opt-rest10492_))
                          (let* ((_hd10496_ (caar _opt-rest10492_))
                                 (_rest10499_ (cdr _opt-rest10492_))
                                 (_right*10502_
                                  (let ()
                                    (declare (not safe))
                                    (cons _hd10496_ _right10494_)))
                                 (_g1050510522_
                                  (lambda (_g1050610518_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1050610518_)))
                                 (_g1050410705_
                                  (lambda (_g1050610526_)
                                    (if (gx#stx-pair/null? _g1050610526_)
                                        (let ((_g24639_
                                               (gx#syntax-split-splice
                                                _g1050610526_
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
                                            (let ((_target1050810529_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g24639_
                                                      0)))
                                                  (_tl1051010532_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g24639_
                                                      1))))
                                              (if (gx#stx-null? _tl1051010532_)
                                                  (letrec ((_loop1051110535_
                                                            (lambda (_hd1050910539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _pre-bind1051510542_)
                      (if (gx#stx-pair? _hd1050910539_)
                          (let ((_e1051210545_ (gx#syntax-e _hd1050910539_)))
                            (let ((_lp-hd1051310549_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1051210545_)))
                                  (_lp-tl1051410552_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1051210545_))))
                              (_loop1051110535_
                               _lp-tl1051410552_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd1051310549_
                                       _pre-bind1051510542_)))))
                          (let ((_pre-bind1051610555_
                                 (reverse _pre-bind1051510542_)))
                            ((lambda (_L10559_)
                               (let ()
                                 (let* ((_g1058010597_
                                         (lambda (_g1058110593_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g1058110593_)))
                                        (_g1057910701_
                                         (lambda (_g1058110601_)
                                           (if (gx#stx-pair/null?
                                                _g1058110601_)
                                               (let ((_g24641_
                                                      (gx#syntax-split-splice
                                                       _g1058110601_
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
                                                   (let ((_target1058310604_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g24641_
                                                             0)))
                                                         (_tl1058510607_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g24641_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl1058510607_)
                                                         (letrec ((_loop1058610610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd1058410614_ _opt-bind1059010617_)
                             (if (gx#stx-pair? _hd1058410614_)
                                 (let ((_e1058710620_
                                        (gx#syntax-e _hd1058410614_)))
                                   (let ((_lp-hd1058810624_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e1058710620_)))
                                         (_lp-tl1058910627_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e1058710620_))))
                                     (_loop1058610610_
                                      _lp-tl1058910627_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd1058810624_
                                              _opt-bind1059010617_)))))
                                 (let ((_opt-bind1059110630_
                                        (reverse _opt-bind1059010617_)))
                                   ((lambda (_L10634_)
                                      (let ()
                                        (let* ((_g1065110659_
                                                (lambda (_g1065210655_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _g1065210655_)))
                                               (_g1065010697_
                                                (lambda (_g1065210663_)
                                                  ((lambda (_L10666_)
                                                     (let ()
                                                       (let ()
                                                         (let ((__tmp24644
                                                                (list (foldr (lambda (_g1068010685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                              _g1068110688_)
                                       (let ()
                                         (declare (not safe))
                                         (cons _g1068010685_ _g1068110688_)))
                                     (foldr (lambda (_g1068210691_
                                                     _g1068310694_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g1068210691_
                                                      _g1068310694_)))
                                            (let ()
                                              (declare (not safe))
                                              (cons _L10666_ '()))
                                            _L10634_)
                                     _L10559_)
                              (_generate-opt-clause8955_
                               _primary10483_
                               (foldr cons (reverse _right*10502_) _pre10485_)
                               _rest10499_)))
                       (__tmp24643 (_recur10489_ _rest10499_ _right*10502_)))
                   (declare (not safe))
                   (cons __tmp24644 __tmp24643)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1065210663_))))
                                          (_g1065010697_ _hd10496_))))
                                    _opt-bind1059110630_))))))
                   (_loop1058610610_ _target1058310604_ '()))
                 (_g1058010597_ _g1058110601_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1058010597_
                                                _g1058110601_)))))
                                   (_g1057910701_ (reverse _right10494_)))))
                             _pre-bind1051610555_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1051110535_
                                                     _target1050810529_
                                                     '()))
                                                  (_g1050510522_
                                                   _g1050610526_)))))
                                        (_g1050510522_ _g1050610526_)))))
                            (_g1050410705_ _pre10485_))
                          (if (gx#stx-null? _tail10487_)
                              '()
                              (let* ((_g1070910750_
                                      (lambda (_g1071010746_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g1071010746_)))
                                     (_g1070810922_
                                      (lambda (_g1071010754_)
                                        (if (gx#stx-pair? _g1071010754_)
                                            (let ((_e1071510757_
                                                   (gx#syntax-e
                                                    _g1071010754_)))
                                              (let ((_hd1071610761_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1071510757_)))
                                                    (_tl1071710764_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1071510757_))))
                                                (if (gx#stx-pair/null?
                                                     _hd1071610761_)
                                                    (let ((_g24645_
                                                           (gx#syntax-split-splice
                                                            _hd1071610761_
                                                            '0)))
                                                      (begin
                                                        (let ((_g24646_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g24645_)
                             (##vector-length _g24645_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g24646_ 2)))
                      (error "Context expects 2 values" _g24646_)))
                (let ((_target1071810767_
                       (let () (declare (not safe)) (##vector-ref _g24645_ 0)))
                      (_tl1072010770_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g24645_ 1))))
                  (if (gx#stx-null? _tl1072010770_)
                      (letrec ((_loop1072110773_
                                (lambda (_hd1071910777_ _pre1072510780_)
                                  (if (gx#stx-pair? _hd1071910777_)
                                      (let ((_e1072210783_
                                             (gx#syntax-e _hd1071910777_)))
                                        (let ((_lp-hd1072310787_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1072210783_)))
                                              (_lp-tl1072410790_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1072210783_))))
                                          (_loop1072110773_
                                           _lp-tl1072410790_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1072310787_
                                                   _pre1072510780_)))))
                                      (let ((_pre1072610793_
                                             (reverse _pre1072510780_)))
                                        (if (gx#stx-pair? _tl1071710764_)
                                            (let ((_e1072710797_
                                                   (gx#syntax-e
                                                    _tl1071710764_)))
                                              (let ((_hd1072810801_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1072710797_)))
                                                    (_tl1072910804_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1072710797_))))
                                                (if (gx#stx-pair/null?
                                                     _hd1072810801_)
                                                    (let ((_g24647_
                                                           (gx#syntax-split-splice
                                                            _hd1072810801_
                                                            '0)))
                                                      (begin
                                                        (let ((_g24648_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g24647_)
                             (##vector-length _g24647_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g24648_ 2)))
                      (error "Context expects 2 values" _g24648_)))
                (let ((_target1073010807_
                       (let () (declare (not safe)) (##vector-ref _g24647_ 0)))
                      (_tl1073210810_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _g24647_ 1))))
                  (if (gx#stx-null? _tl1073210810_)
                      (letrec ((_loop1073310813_
                                (lambda (_hd1073110817_ _opt1073710820_)
                                  (if (gx#stx-pair? _hd1073110817_)
                                      (let ((_e1073410823_
                                             (gx#syntax-e _hd1073110817_)))
                                        (let ((_lp-hd1073510827_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1073410823_)))
                                              (_lp-tl1073610830_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1073410823_))))
                                          (_loop1073310813_
                                           _lp-tl1073610830_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1073510827_
                                                   _opt1073710820_)))))
                                      (let ((_opt1073810833_
                                             (reverse _opt1073710820_)))
                                        (if (gx#stx-pair? _tl1072910804_)
                                            (let ((_e1073910837_
                                                   (gx#syntax-e
                                                    _tl1072910804_)))
                                              (let ((_hd1074010841_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1073910837_)))
                                                    (_tl1074110844_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1073910837_))))
                                                (if (gx#stx-pair?
                                                     _tl1074110844_)
                                                    (let ((_e1074210847_
                                                           (gx#syntax-e
                                                            _tl1074110844_)))
                                                      (let ((_hd1074310851_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1074210847_)))
                    (_tl1074410854_
                     (let () (declare (not safe)) (##cdr _e1074210847_))))
                (if (gx#stx-null? _tl1074410854_)
                    ((lambda (_L10857_ _L10859_ _L10860_ _L10861_)
                       (let ()
                         (list (list (foldr (lambda (_g1088910894_
                                                     _g1089010897_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g1088910894_
                                                      _g1089010897_)))
                                            (foldr (lambda (_g1089110900_
                                                            _g1089210903_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1089110900_
                                                             _g1089210903_)))
                                                   _L10859_
                                                   _L10860_)
                                            _L10861_)
                                     (gx#stx-wrap-source
                                      (let ((__tmp24651
                                             (gx#datum->syntax '#f 'apply))
                                            (__tmp24649
                                             (let ((__tmp24650
                                                    (foldr (lambda (_g1090510910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1090610913_)
                     (let ()
                       (declare (not safe))
                       (cons _g1090510910_ _g1090610913_)))
                   (foldr (lambda (_g1090710916_ _g1090810919_)
                            (let ()
                              (declare (not safe))
                              (cons _g1090710916_ _g1090810919_)))
                          (let () (declare (not safe)) (cons _L10859_ '()))
                          _L10860_)
                   _L10861_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L10857_ __tmp24650))))
                                        (declare (not safe))
                                        (cons __tmp24651 __tmp24649))
                                      (gx#stx-source _stx8941_))))))
                     _hd1074310851_
                     _hd1074010841_
                     _opt1073810833_
                     _pre1072610793_)
                    (_g1070910750_ _g1071010754_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1070910750_
                                                     _g1071010754_))))
                                            (_g1070910750_ _g1071010754_)))))))
                        (_loop1073310813_ _target1073010807_ '()))
                      (_g1070910750_ _g1071010754_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1070910750_
                                                     _g1071010754_))))
                                            (_g1070910750_ _g1071010754_)))))))
                        (_loop1072110773_ _target1071810767_ '()))
                      (_g1070910750_ _g1071010754_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1070910750_
                                                     _g1071010754_))))
                                            (_g1070910750_ _g1071010754_)))))
                                (_g1070810922_
                                 (list _pre10485_
                                       (reverse _right10494_)
                                       _tail10487_
                                       _primary10483_))))))))
                 (_generate-opt-clause8955_
                  (lambda (_primary10181_ _pre10183_ _opt10184_)
                    (let _recur10186_ ((_opt-rest10189_ _opt10184_)
                                       (_right10191_ '()))
                      (if (let () (declare (not safe)) (pair? _opt-rest10189_))
                          (let* ((_hd10193_ (car _opt-rest10189_))
                                 (_rest10196_ (cdr _opt-rest10189_))
                                 (_g1019910207_
                                  (lambda (_g1020010203_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1020010203_)))
                                 (_g1019810296_
                                  (lambda (_g1020010211_)
                                    ((lambda (_L10214_)
                                       (let ()
                                         (let* ((_g1023010238_
                                                 (lambda (_g1023110234_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g1023110234_)))
                                                (_g1022910292_
                                                 (lambda (_g1023110242_)
                                                   ((lambda (_L10245_)
                                                      (let ()
                                                        (let* ((_g1025810266_
                                                                (lambda (_g1025910262_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g1025910262_)))
                       (_g1025710288_
                        (lambda (_g1025910270_)
                          ((lambda (_L10273_)
                             (let ()
                               (let ()
                                 (let ((__tmp24658
                                        (gx#datum->syntax '#f 'let-values))
                                       (__tmp24652
                                        (let ((__tmp24654
                                               (let ((__tmp24655
                                                      (let ((__tmp24657
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L10214_ '())))
                    (__tmp24656
                     (let () (declare (not safe)) (cons _L10245_ '()))))
                (declare (not safe))
                (cons __tmp24657 __tmp24656))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24655 '())))
                                              (__tmp24653
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L10273_ '()))))
                                          (declare (not safe))
                                          (cons __tmp24654 __tmp24653))))
                                   (declare (not safe))
                                   (cons __tmp24658 __tmp24652)))))
                           _g1025910270_))))
                  (_g1025710288_
                   (_recur10186_
                    _rest10196_
                    (let ()
                      (declare (not safe))
                      (cons _L10214_ _right10191_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1023110242_))))
                                           (_g1022910292_ (cdr _hd10193_)))))
                                     _g1020010211_))))
                            (_g1019810296_ (car _hd10193_)))
                          (let* ((_g1030010337_
                                  (lambda (_g1030110333_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1030110333_)))
                                 (_g1029910479_
                                  (lambda (_g1030110341_)
                                    (if (gx#stx-pair? _g1030110341_)
                                        (let ((_e1030510344_
                                               (gx#syntax-e _g1030110341_)))
                                          (let ((_hd1030610348_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1030510344_)))
                                                (_tl1030710351_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1030510344_))))
                                            (if (gx#stx-pair/null?
                                                 _hd1030610348_)
                                                (let ((_g24659_
                                                       (gx#syntax-split-splice
                                                        _hd1030610348_
                                                        '0)))
                                                  (begin
                                                    (let ((_g24660_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g24659_)
                         (##vector-length _g24659_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g24660_ 2)))
                  (error "Context expects 2 values" _g24660_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1030810354_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g24659_
                                                              0)))
                                                          (_tl1031010357_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g24659_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1031010357_)
                                                          (letrec ((_loop1031110360_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1030910364_ _pre1031510367_)
                              (if (gx#stx-pair? _hd1030910364_)
                                  (let ((_e1031210370_
                                         (gx#syntax-e _hd1030910364_)))
                                    (let ((_lp-hd1031310374_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1031210370_)))
                                          (_lp-tl1031410377_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1031210370_))))
                                      (_loop1031110360_
                                       _lp-tl1031410377_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1031310374_
                                               _pre1031510367_)))))
                                  (let ((_pre1031610380_
                                         (reverse _pre1031510367_)))
                                    (if (gx#stx-pair? _tl1030710351_)
                                        (let ((_e1031710384_
                                               (gx#syntax-e _tl1030710351_)))
                                          (let ((_hd1031810388_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1031710384_)))
                                                (_tl1031910391_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1031710384_))))
                                            (if (gx#stx-pair/null?
                                                 _hd1031810388_)
                                                (let ((_g24661_
                                                       (gx#syntax-split-splice
                                                        _hd1031810388_
                                                        '0)))
                                                  (begin
                                                    (let ((_g24662_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g24661_)
                         (##vector-length _g24661_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g24662_ 2)))
                  (error "Context expects 2 values" _g24662_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1032010394_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g24661_
                                                              0)))
                                                          (_tl1032210397_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g24661_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1032210397_)
                                                          (letrec ((_loop1032310400_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1032110404_ _opt1032710407_)
                              (if (gx#stx-pair? _hd1032110404_)
                                  (let ((_e1032410410_
                                         (gx#syntax-e _hd1032110404_)))
                                    (let ((_lp-hd1032510414_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1032410410_)))
                                          (_lp-tl1032610417_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1032410410_))))
                                      (_loop1032310400_
                                       _lp-tl1032610417_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1032510414_
                                               _opt1032710407_)))))
                                  (let ((_opt1032810420_
                                         (reverse _opt1032710407_)))
                                    (if (gx#stx-pair? _tl1031910391_)
                                        (let ((_e1032910424_
                                               (gx#syntax-e _tl1031910391_)))
                                          (let ((_hd1033010428_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1032910424_)))
                                                (_tl1033110431_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1032910424_))))
                                            (if (gx#stx-null? _tl1033110431_)
                                                ((lambda (_L10434_
                                                          _L10436_
                                                          _L10437_)
                                                   (let ()
                                                     (gx#stx-wrap-source
                                                      (let ((__tmp24663
                                                             (foldr (lambda (_g1046210467_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1046310470_)
                              (let ()
                                (declare (not safe))
                                (cons _g1046210467_ _g1046310470_)))
                            (foldr (lambda (_g1046410473_ _g1046510476_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g1046410473_ _g1046510476_)))
                                   '()
                                   _L10436_)
                            _L10437_)))
                (declare (not safe))
                (cons _L10434_ __tmp24663))
              (gx#stx-source _stx8941_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1033010428_
                                                 _opt1032810420_
                                                 _pre1031610380_)
                                                (_g1030010337_
                                                 _g1030110341_))))
                                        (_g1030010337_ _g1030110341_)))))))
                    (_loop1032310400_ _target1032010394_ '()))
                  (_g1030010337_ _g1030110341_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1030010337_
                                                 _g1030110341_))))
                                        (_g1030010337_ _g1030110341_)))))))
                    (_loop1031110360_ _target1030810354_ '()))
                  (_g1030010337_ _g1030110341_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1030010337_
                                                 _g1030110341_))))
                                        (_g1030010337_ _g1030110341_)))))
                            (_g1029910479_
                             (list _pre10183_
                                   (reverse _right10191_)
                                   _primary10181_)))))))
                 (_generate-kw-primary8956_
                  (lambda (_key9557_ _kwargs9559_ _args9560_ _body9561_)
                    (letrec ((_make-body9563_
                              (lambda (_kwargs10050_ _kwvals10052_)
                                (if (let ()
                                      (declare (not safe))
                                      (pair? _kwargs10050_))
                                    (let* ((_kwarg10054_ (car _kwargs10050_))
                                           (_var10057_ (cadr _kwarg10054_))
                                           (_default10060_
                                            (caddr _kwarg10054_))
                                           (_kwval10063_ (car _kwvals10052_))
                                           (_rest-kwargs10066_
                                            (cdr _kwargs10050_))
                                           (_rest-kwvals10069_
                                            (cdr _kwvals10052_)))
                                      (let* ((_g1007410097_
                                              (lambda (_g1007510093_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _g1007510093_)))
                                             (_g1007310177_
                                              (lambda (_g1007510101_)
                                                (if (gx#stx-pair?
                                                     _g1007510101_)
                                                    (let ((_e1008010104_
                                                           (gx#syntax-e
                                                            _g1007510101_)))
                                                      (let ((_hd1008110108_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1008010104_)))
                    (_tl1008210111_
                     (let () (declare (not safe)) (##cdr _e1008010104_))))
                (if (gx#stx-pair? _tl1008210111_)
                    (let ((_e1008310114_ (gx#syntax-e _tl1008210111_)))
                      (let ((_hd1008410118_
                             (let ()
                               (declare (not safe))
                               (##car _e1008310114_)))
                            (_tl1008510121_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1008310114_))))
                        (if (gx#stx-pair? _tl1008510121_)
                            (let ((_e1008610124_ (gx#syntax-e _tl1008510121_)))
                              (let ((_hd1008710128_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1008610124_)))
                                    (_tl1008810131_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1008610124_))))
                                (if (gx#stx-pair? _tl1008810131_)
                                    (let ((_e1008910134_
                                           (gx#syntax-e _tl1008810131_)))
                                      (let ((_hd1009010138_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1008910134_)))
                                            (_tl1009110141_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1008910134_))))
                                        (if (gx#stx-null? _tl1009110141_)
                                            ((lambda (_L10144_
                                                      _L10146_
                                                      _L10147_
                                                      _L10148_)
                                               (let ()
                                                 (let ((__tmp24680
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let-values))
                                                       (__tmp24664
                                                        (let ((__tmp24666
                                                               (let ((__tmp24667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp24679
                                     (let ()
                                       (declare (not safe))
                                       (cons _L10148_ '())))
                                    (__tmp24668
                                     (let ((__tmp24669
                                            (let ((__tmp24678
                                                   (gx#datum->syntax '#f 'if))
                                                  (__tmp24670
                                                   (let ((__tmp24673
                                                          (let ((__tmp24677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'eq?))
                        (__tmp24674
                         (let ((__tmp24675
                                (let ((__tmp24676
                                       (gx#datum->syntax '#f 'absent-value)))
                                  (declare (not safe))
                                  (cons __tmp24676 '()))))
                           (declare (not safe))
                           (cons _L10147_ __tmp24675))))
                    (declare (not safe))
                    (cons __tmp24677 __tmp24674)))
                 (__tmp24671
                  (let ((__tmp24672
                         (let () (declare (not safe)) (cons _L10147_ '()))))
                    (declare (not safe))
                    (cons _L10146_ __tmp24672))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp24673
                                                           __tmp24671))))
                                              (declare (not safe))
                                              (cons __tmp24678 __tmp24670))))
                                       (declare (not safe))
                                       (cons __tmp24669 '()))))
                                (declare (not safe))
                                (cons __tmp24679 __tmp24668))))
                         (declare (not safe))
                         (cons __tmp24667 '())))
                      (__tmp24665
                       (let () (declare (not safe)) (cons _L10144_ '()))))
                  (declare (not safe))
                  (cons __tmp24666 __tmp24665))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24680
                                                         __tmp24664))))
                                             _hd1009010138_
                                             _hd1008710128_
                                             _hd1008410118_
                                             _hd1008110108_)
                                            (_g1007410097_ _g1007510101_))))
                                    (_g1007410097_ _g1007510101_))))
                            (_g1007410097_ _g1007510101_))))
                    (_g1007410097_ _g1007510101_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1007410097_
                                                     _g1007510101_)))))
                                        (_g1007310177_
                                         (list _var10057_
                                               _kwval10063_
                                               _default10060_
                                               (_make-body9563_
                                                _rest-kwargs10066_
                                                _rest-kwvals10069_)))))
                                    (let ()
                                      (declare (not safe))
                                      (cons 'begin _body9561_)))))
                             (_make-main9565_
                              (lambda ()
                                (let* ((_g98589866_
                                        (lambda (_g98599862_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g98599862_)))
                                       (_g985710042_
                                        (lambda (_g98599870_)
                                          ((lambda (_L9873_)
                                             (let ()
                                               (let* ((_g98859902_
                                                       (lambda (_g98869898_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g98869898_)))
                                                      (_g988410038_
                                                       (lambda (_g98869906_)
                                                         (if (gx#stx-pair/null?
                                                              _g98869906_)
                                                             (let ((_g24681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g98869906_ '0)))
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
                         (let ((_target98889909_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g24681_ 0)))
                               (_tl98909912_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g24681_ 1))))
                           (if (gx#stx-null? _tl98909912_)
                               (letrec ((_loop98919915_
                                         (lambda (_hd98899919_ _kwval98959922_)
                                           (if (gx#stx-pair? _hd98899919_)
                                               (let ((_e98929925_
                                                      (gx#syntax-e
                                                       _hd98899919_)))
                                                 (let ((_lp-hd98939929_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e98929925_)))
                                                       (_lp-tl98949932_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e98929925_))))
                                                   (_loop98919915_
                                                    _lp-tl98949932_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd98939929_
                                                            _kwval98959922_)))))
                                               (let ((_kwval98969935_
                                                      (reverse _kwval98959922_)))
                                                 ((lambda (_L9939_)
                                                    (let ()
                                                      (let* ((_g99569964_
                                                              (lambda (_g99579960_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g99579960_)))
                     (_g995510034_
                      (lambda (_g99579968_)
                        ((lambda (_L9971_)
                           (let ()
                             (let* ((_g99849992_
                                     (lambda (_g99859988_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g99859988_)))
                                    (_g998310022_
                                     (lambda (_g99859996_)
                                       ((lambda (_L9999_)
                                          (let ()
                                            (let ()
                                              (gx#stx-wrap-source
                                               (let ((__tmp24687
                                                      (gx#datum->syntax
                                                       '#f
                                                       'lambda))
                                                     (__tmp24683
                                                      (let ((__tmp24685
                                                             (let ((__tmp24686
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr (lambda (_g1001310016_ _g1001410019_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g1001310016_ _g1001410019_)))
                                   _L9971_
                                   _L9939_)))
                       (declare (not safe))
                       (cons _L9873_ __tmp24686)))
                    (__tmp24684
                     (let () (declare (not safe)) (cons _L9999_ '()))))
                (declare (not safe))
                (cons __tmp24685 __tmp24684))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24687 __tmp24683))
                                               (gx#stx-source _stx8941_)))))
                                        _g99859996_))))
                               (_g998310022_
                                (_make-body9563_
                                 _kwargs9559_
                                 (foldr (lambda (_g1002510028_ _g1002610031_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g1002510028_
                                                  _g1002610031_)))
                                        '()
                                        _L9939_))))))
                         _g99579968_))))
                (_g995510034_ _args9560_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _kwval98969935_))))))
                                 (_loop98919915_ _target98889909_ '()))
                               (_g98859902_ _g98869906_)))))
                     (_g98859902_ _g98869906_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g988410038_
                                                  (gx#gentemps
                                                   (map cadr _kwargs9559_))))))
                                           _g98599870_))))
                                  (_g985710042_
                                   (let ((_$e10046_ _key9557_))
                                     (if _$e10046_ _$e10046_ '_))))))
                             (_make-dispatch9566_
                              (lambda (_main9666_)
                                (let* ((_g96699677_
                                        (lambda (_g96709673_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g96709673_)))
                                       (_g96689848_
                                        (lambda (_g96709681_)
                                          ((lambda (_L9684_)
                                             (let ()
                                               (let* ((_g96969713_
                                                       (lambda (_g96979709_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g96979709_)))
                                                      (_g96959809_
                                                       (lambda (_g96979717_)
                                                         (if (gx#stx-pair/null?
                                                              _g96979717_)
                                                             (let ((_g24688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-split-splice _g96979717_ '0)))
                       (begin
                         (let ((_g24689_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g24688_)
                                      (##vector-length _g24688_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g24689_ 2)))
                               (error "Context expects 2 values" _g24689_)))
                         (let ((_target96999720_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g24688_ 0)))
                               (_tl97019723_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g24688_ 1))))
                           (if (gx#stx-null? _tl97019723_)
                               (letrec ((_loop97029726_
                                         (lambda (_hd97009730_
                                                  _get-kw97069733_)
                                           (if (gx#stx-pair? _hd97009730_)
                                               (let ((_e97039736_
                                                      (gx#syntax-e
                                                       _hd97009730_)))
                                                 (let ((_lp-hd97049740_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e97039736_)))
                                                       (_lp-tl97059743_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e97039736_))))
                                                   (_loop97029726_
                                                    _lp-tl97059743_
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd97049740_
                                                            _get-kw97069733_)))))
                                               (let ((_get-kw97079746_
                                                      (reverse _get-kw97069733_)))
                                                 ((lambda (_L9750_)
                                                    (let ()
                                                      (let* ((_g97679775_
                                                              (lambda (_g97689771_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _g97689771_)))
                     (_g97669805_
                      (lambda (_g97689779_)
                        ((lambda (_L9782_)
                           (let ()
                             (let ()
                               (gx#stx-wrap-source
                                (let ((__tmp24700
                                       (gx#datum->syntax '#f 'lambda))
                                      (__tmp24690
                                       (let ((__tmp24698
                                              (let ((__tmp24699
                                                     (gx#datum->syntax
                                                      '#f
                                                      'args)))
                                                (declare (not safe))
                                                (cons _L9684_ __tmp24699)))
                                             (__tmp24691
                                              (let ((__tmp24692
                                                     (let ((__tmp24697
                                                            (gx#datum->syntax
                                                             '#f
                                                             'apply))
                                                           (__tmp24693
                                                            (let ((__tmp24694
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp24695
                                  (foldr (lambda (_g97969799_ _g97979802_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g97969799_ _g97979802_)))
                                         (let ((__tmp24696
                                                (gx#datum->syntax '#f 'args)))
                                           (declare (not safe))
                                           (cons __tmp24696 '()))
                                         _L9750_)))
                             (declare (not safe))
                             (cons _L9684_ __tmp24695))))
                      (declare (not safe))
                      (cons _L9782_ __tmp24694))))
               (declare (not safe))
               (cons __tmp24697 __tmp24693))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp24692 '()))))
                                         (declare (not safe))
                                         (cons __tmp24698 __tmp24691))))
                                  (declare (not safe))
                                  (cons __tmp24700 __tmp24690))
                                (gx#stx-source _stx8941_)))))
                         _g97689779_))))
                (_g97669805_ _main9666_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _get-kw97079746_))))))
                                 (_loop97029726_ _target96999720_ '()))
                               (_g96969713_ _g96979717_)))))
                     (_g96969713_ _g96979717_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g96959809_
                                                  (map (lambda (_kwarg9813_)
                                                         (let* ((_g98169824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g98179820_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g98179820_)))
                        (_g98159844_
                         (lambda (_g98179828_)
                           ((lambda (_L9831_)
                              (let ()
                                (let ((__tmp24708
                                       (gx#datum->syntax
                                        '#f
                                        'symbolic-table-ref))
                                      (__tmp24701
                                       (let ((__tmp24702
                                              (let ((__tmp24705
                                                     (let ((__tmp24707
                                                            (gx#datum->syntax
                                                             '#f
                                                             'quote))
                                                           (__tmp24706
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L9831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp24707 __tmp24706)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp24703
                                                     (let ((__tmp24704
                                                            (gx#datum->syntax
                                                             '#f
                                                             'absent-value)))
                                                       (declare (not safe))
                                                       (cons __tmp24704 '()))))
                                                (declare (not safe))
                                                (cons __tmp24705 __tmp24703))))
                                         (declare (not safe))
                                         (cons _L9684_ __tmp24702))))
                                  (declare (not safe))
                                  (cons __tmp24708 __tmp24701))))
                            _g98179828_))))
                   (_g98159844_ (car _kwarg9813_))))
               _kwargs9559_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g96709681_))))
                                  (_g96689848_
                                   (let ((_$e9852_ _key9557_))
                                     (if _$e9852_
                                         _$e9852_
                                         (gx#genident 'keys))))))))
                      (let* ((_g95689576_
                              (lambda (_g95699572_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g95699572_)))
                             (_g95679662_
                              (lambda (_g95699580_)
                                ((lambda (_L9583_)
                                   (let ()
                                     (let* ((_g95969604_
                                             (lambda (_g95979600_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _g95979600_)))
                                            (_g95959658_
                                             (lambda (_g95979608_)
                                               ((lambda (_L9611_)
                                                  (let ()
                                                    (let* ((_g96249632_
                                                            (lambda (_g96259628_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _g96259628_)))
                                                           (_g96239654_
                                                            (lambda (_g96259636_)
                                                              ((lambda (_L9639_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ()
                             (let ((__tmp24715
                                    (gx#datum->syntax '#f 'let-values))
                                   (__tmp24709
                                    (let ((__tmp24711
                                           (let ((__tmp24712
                                                  (let ((__tmp24714
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L9583_ '())))
                                                        (__tmp24713
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L9639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24714
                                                          __tmp24713))))
                                             (declare (not safe))
                                             (cons __tmp24712 '())))
                                          (__tmp24710
                                           (let ()
                                             (declare (not safe))
                                             (cons _L9611_ '()))))
                                      (declare (not safe))
                                      (cons __tmp24711 __tmp24710))))
                               (declare (not safe))
                               (cons __tmp24715 __tmp24709)))))
                       _g96259636_))))
              (_g96239654_ (_make-main9565_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g95979608_))))
                                       (_g95959658_
                                        (_make-dispatch9566_ _L9583_)))))
                                 _g95699580_))))
                        (_g95679662_ (gx#genident 'kw-lambda-main))))))
                 (_generate-kw-dispatch8957_
                  (lambda (_primary9470_ _kwargs9472_ _strict?9473_)
                    (let* ((_g94759494_
                            (lambda (_g94769490_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g94769490_)))
                           (_g94749553_
                            (lambda (_g94769498_)
                              (if (gx#stx-pair? _g94769498_)
                                  (let ((_e94809501_
                                         (gx#syntax-e _g94769498_)))
                                    (let ((_hd94819505_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e94809501_)))
                                          (_tl94829508_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e94809501_))))
                                      (if (gx#stx-pair? _tl94829508_)
                                          (let ((_e94839511_
                                                 (gx#syntax-e _tl94829508_)))
                                            (let ((_hd94849515_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e94839511_)))
                                                  (_tl94859518_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e94839511_))))
                                              (if (gx#stx-pair? _tl94859518_)
                                                  (let ((_e94869521_
                                                         (gx#syntax-e
                                                          _tl94859518_)))
                                                    (let ((_hd94879525_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e94869521_)))
                                                          (_tl94889528_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e94869521_))))
                                                      (if (gx#stx-null?
                                                           _tl94889528_)
                                                          ((lambda (_L9531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L9533_
                            _L9534_)
                     (let ()
                       (let ((__tmp24728 (gx#datum->syntax '#f 'lambda%))
                             (__tmp24716
                              (let ((__tmp24717
                                     (let ((__tmp24718
                                            (let ((__tmp24727
                                                   (gx#datum->syntax
                                                    '#f
                                                    'apply))
                                                  (__tmp24719
                                                   (let ((__tmp24726
                                                          (gx#datum->syntax
                                                           '#f
                                                           'keyword-dispatch))
                                                         (__tmp24720
                                                          (let ((__tmp24723
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp24725 (gx#datum->syntax '#f 'quote))
                               (__tmp24724
                                (let ()
                                  (declare (not safe))
                                  (cons _L9534_ '()))))
                           (declare (not safe))
                           (cons __tmp24725 __tmp24724)))
                        (__tmp24721
                         (let ((__tmp24722
                                (let ()
                                  (declare (not safe))
                                  (cons _L9531_ '()))))
                           (declare (not safe))
                           (cons _L9533_ __tmp24722))))
                    (declare (not safe))
                    (cons __tmp24723 __tmp24721))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp24726
                                                           __tmp24720))))
                                              (declare (not safe))
                                              (cons __tmp24727 __tmp24719))))
                                       (declare (not safe))
                                       (cons __tmp24718 '()))))
                                (declare (not safe))
                                (cons _L9531_ __tmp24717))))
                         (declare (not safe))
                         (cons __tmp24728 __tmp24716))))
                   _hd94879525_
                   _hd94849515_
                   _hd94819505_)
                  (_g94759494_ _g94769498_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g94759494_ _g94769498_))))
                                          (_g94759494_ _g94769498_))))
                                  (_g94759494_ _g94769498_)))))
                      (_g94749553_
                       (list (if _strict?9473_
                                 (_generate-kw-table8958_
                                  (map car _kwargs9472_))
                                 '#f)
                             _primary9470_
                             (gx#genident 'args))))))
                 (_generate-kw-table8958_
                  (lambda (_kws9444_)
                    (let _rehash9447_ ((_pht9450_
                                        (make-vector (length _kws9444_) '#f)))
                      (let _lp9453_ ((_rest9456_ _kws9444_))
                        (if (let () (declare (not safe)) (pair? _rest9456_))
                            (let* ((_key9459_ (car _rest9456_))
                                   (_rest9462_ (cdr _rest9456_))
                                   (_pos9465_
                                    (fxmodulo
                                     (keyword-hash _key9459_)
                                     (vector-length _pht9450_))))
                              (if (vector-ref _pht9450_ _pos9465_)
                                  (if (fx< (vector-length _pht9450_) '8192)
                                      (_rehash9447_
                                       (make-vector
                                        (quotient
                                         (fx* '3 (vector-length _pht9450_))
                                         '2)
                                        '#f))
                                      (error '"Unresolvable keyword collision"
                                             _kws9444_))
                                  (begin
                                    (vector-set! _pht9450_ _pos9465_ _key9459_)
                                    (_lp9453_ _rest9462_))))
                            _pht9450_))))))
          (let* ((___stx2297222973_ _stx8941_)
                 (_g89628993_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx2297222973_))))
            (let ((___kont2297522976_
                   (lambda (_L9425_ _L9427_)
                     (let ((__tmp24730 (gx#datum->syntax '#f 'lambda%))
                           (__tmp24729
                            (let ()
                              (declare (not safe))
                              (cons _L9427_ _L9425_))))
                       (declare (not safe))
                       (cons __tmp24730 __tmp24729))))
                  (___kont2297722978_
                   (lambda (_L9197_ _L9199_)
                     (let ((_g24731_ (_opt-lambda-split8947_ _L9199_)))
                       (begin
                         (let ((_g24732_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g24731_)
                                      (##vector-length _g24731_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g24732_ 3)))
                               (error "Context expects 3 values" _g24732_)))
                         (let ((_pre9212_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g24731_ 0)))
                               (_opt9214_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g24731_ 1)))
                               (_tail9215_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _g24731_ 2))))
                           (let* ((_g92179225_
                                   (lambda (_g92189221_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g92189221_)))
                                  (_g92169394_
                                   (lambda (_g92189229_)
                                     ((lambda (_L9232_)
                                        (let ()
                                          (let* ((_g92459253_
                                                  (lambda (_g92469249_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g92469249_)))
                                                 (_g92449390_
                                                  (lambda (_g92469257_)
                                                    ((lambda (_L9260_)
                                                       (let ()
                                                         (let* ((_g92739290_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g92749286_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g92749286_)))
                        (_g92729386_
                         (lambda (_g92749294_)
                           (if (gx#stx-pair/null? _g92749294_)
                               (let ((_g24733_
                                      (gx#syntax-split-splice _g92749294_ '0)))
                                 (begin
                                   (let ((_g24734_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g24733_)
                                                (##vector-length _g24733_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g24734_ 2)))
                                         (error "Context expects 2 values"
                                                _g24734_)))
                                   (let ((_target92769297_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g24733_ 0)))
                                         (_tl92789300_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g24733_ 1))))
                                     (if (gx#stx-null? _tl92789300_)
                                         (letrec ((_loop92799303_
                                                   (lambda (_hd92779307_
                                                            _clause92839310_)
                                                     (if (gx#stx-pair?
                                                          _hd92779307_)
                                                         (let ((_e92809313_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd92779307_)))
                   (let ((_lp-hd92819317_
                          (let () (declare (not safe)) (##car _e92809313_)))
                         (_lp-tl92829320_
                          (let () (declare (not safe)) (##cdr _e92809313_))))
                     (_loop92799303_
                      _lp-tl92829320_
                      (let ()
                        (declare (not safe))
                        (cons _lp-hd92819317_ _clause92839310_)))))
                 (let ((_clause92849323_ (reverse _clause92839310_)))
                   ((lambda (_L9327_)
                      (let ()
                        (let* ((_g93449352_
                                (lambda (_g93459348_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g93459348_)))
                               (_g93439374_
                                (lambda (_g93459356_)
                                  ((lambda (_L9359_)
                                     (let ()
                                       (let ()
                                         (let ((__tmp24741
                                                (gx#datum->syntax
                                                 '#f
                                                 'let-values))
                                               (__tmp24735
                                                (let ((__tmp24737
                                                       (let ((__tmp24738
                                                              (let ((__tmp24740
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let () (declare (not safe)) (cons _L9232_ '())))
                            (__tmp24739
                             (let () (declare (not safe)) (cons _L9260_ '()))))
                        (declare (not safe))
                        (cons __tmp24740 __tmp24739))))
                 (declare (not safe))
                 (cons __tmp24738 '())))
              (__tmp24736 (let () (declare (not safe)) (cons _L9359_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp24737
                                                        __tmp24736))))
                                           (declare (not safe))
                                           (cons __tmp24741 __tmp24735)))))
                                   _g93459356_))))
                          (_g93439374_
                           (gx#stx-wrap-source
                            (let ((__tmp24743
                                   (gx#datum->syntax '#f 'case-lambda))
                                  (__tmp24742
                                   (foldr (lambda (_g93779380_ _g93789383_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g93779380_ _g93789383_)))
                                          '()
                                          _L9327_)))
                              (declare (not safe))
                              (cons __tmp24743 __tmp24742))
                            (gx#stx-source _stx8941_))))))
                    _clause92849323_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop92799303_
                                            _target92769297_
                                            '()))
                                         (_g92739290_ _g92749294_)))))
                               (_g92739290_ _g92749294_)))))
                   (_g92729386_
                    (_generate-opt-dispatch8953_
                     _L9232_
                     _pre9212_
                     _opt9214_
                     _tail9215_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g92469257_))))
                                            (_g92449390_
                                             (gx#stx-wrap-source
                                              (_generate-opt-primary8952_
                                               _pre9212_
                                               _opt9214_
                                               _tail9215_
                                               _L9197_)
                                              (gx#stx-source _stx8941_))))))
                                      _g92189229_))))
                             (_g92169394_ (gx#genident 'opt-lambda))))))))
                  (___kont2297922980_
                   (lambda (_L9020_ _L9022_)
                     (let* ((_g90389045_
                             (lambda (_g90399041_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g90399041_)))
                            (_g90379166_
                             (lambda (_g90399049_)
                               ((lambda ()
                                  (let ()
                                    (let ((_g24744_
                                           (_kw-lambda-split8949_ _L9022_)))
                                      (begin
                                        (let ((_g24745_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g24744_)
                                                     (##vector-length _g24744_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g24745_ 3)))
                                              (error "Context expects 3 values"
                                                     _g24745_)))
                                        (let ((_key9058_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g24744_ 0)))
                                              (_kwargs9060_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g24744_ 1)))
                                              (_args9061_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g24744_ 2))))
                                          (let* ((_g90639071_
                                                  (lambda (_g90649067_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _g90649067_)))
                                                 (_g90629162_
                                                  (lambda (_g90649075_)
                                                    ((lambda (_L9078_)
                                                       (let ()
                                                         (let* ((_g90969104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g90979100_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _g90979100_)))
                        (_g90959158_
                         (lambda (_g90979108_)
                           ((lambda (_L9111_)
                              (let ()
                                (let* ((_g91249132_
                                        (lambda (_g91259128_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g91259128_)))
                                       (_g91239154_
                                        (lambda (_g91259136_)
                                          ((lambda (_L9139_)
                                             (let ()
                                               (let ()
                                                 (let ((__tmp24752
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let-values))
                                                       (__tmp24746
                                                        (let ((__tmp24748
                                                               (let ((__tmp24749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp24751
                                     (let ()
                                       (declare (not safe))
                                       (cons _L9078_ '())))
                                    (__tmp24750
                                     (let ()
                                       (declare (not safe))
                                       (cons _L9111_ '()))))
                                (declare (not safe))
                                (cons __tmp24751 __tmp24750))))
                         (declare (not safe))
                         (cons __tmp24749 '())))
                      (__tmp24747
                       (let () (declare (not safe)) (cons _L9139_ '()))))
                  (declare (not safe))
                  (cons __tmp24748 __tmp24747))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24752
                                                         __tmp24746)))))
                                           _g91259136_))))
                                  (_g91239154_
                                   (gx#stx-wrap-source
                                    (_generate-kw-dispatch8957_
                                     _L9078_
                                     _kwargs9060_
                                     (let ()
                                       (declare (not safe))
                                       (not _key9058_)))
                                    (gx#stx-source _stx8941_))))))
                            _g90979108_))))
                   (_g90959158_
                    (gx#stx-wrap-source
                     (_generate-kw-primary8956_
                      _key9058_
                      _kwargs9060_
                      _args9061_
                      _L9020_)
                     (gx#stx-source _stx8941_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g90649075_))))
                                            (_g90629162_
                                             (gx#genident
                                              'kw-lambda))))))))))))
                       (_g90379166_
                        (_check-duplicate-bindings8951_ _L9022_))))))
              (let* ((___match2301723018_
                      (lambda (_e89829000_
                               _hd89839004_
                               _tl89849007_
                               _e89859010_
                               _hd89869014_
                               _tl89879017_)
                        (let ((_L9020_ _tl89879017_) (_L9022_ _hd89869014_))
                          (if (_kw-lambda?8948_ _L9022_)
                              (___kont2297922980_ _L9020_ _L9022_)
                              (let () (declare (not safe)) (_g89628993_))))))
                     (___match2300523006_
                      (lambda (_e89749177_
                               _hd89759181_
                               _tl89769184_
                               _e89779187_
                               _hd89789191_
                               _tl89799194_)
                        (let ((_L9197_ _tl89799194_) (_L9199_ _hd89789191_))
                          (if (_opt-lambda?8946_ _L9199_)
                              (___kont2297722978_ _L9197_ _L9199_)
                              (___match2301723018_
                               _e89749177_
                               _hd89759181_
                               _tl89769184_
                               _e89779187_
                               _hd89789191_
                               _tl89799194_)))))
                     (___match2299322994_
                      (lambda (_e89669405_
                               _hd89679409_
                               _tl89689412_
                               _e89699415_
                               _hd89709419_
                               _tl89719422_)
                        (let ((_L9425_ _tl89719422_) (_L9427_ _hd89709419_))
                          (if (_simple-lambda?8944_ _L9427_)
                              (___kont2297522976_ _L9425_ _L9427_)
                              (___match2300523006_
                               _e89669405_
                               _hd89679409_
                               _tl89689412_
                               _e89699415_
                               _hd89709419_
                               _tl89719422_))))))
                (if (gx#stx-pair? ___stx2297222973_)
                    (let ((_e89669405_ (gx#syntax-e ___stx2297222973_)))
                      (let ((_tl89689412_
                             (let () (declare (not safe)) (##cdr _e89669405_)))
                            (_hd89679409_
                             (let ()
                               (declare (not safe))
                               (##car _e89669405_))))
                        (if (gx#stx-pair? _tl89689412_)
                            (let ((_e89699415_ (gx#syntax-e _tl89689412_)))
                              (let ((_tl89719422_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e89699415_)))
                                    (_hd89709419_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e89699415_))))
                                (___match2299322994_
                                 _e89669405_
                                 _hd89679409_
                                 _tl89689412_
                                 _e89699415_
                                 _hd89709419_
                                 _tl89719422_)))
                            (let () (declare (not safe)) (_g89628993_)))))
                    (let () (declare (not safe)) (_g89628993_)))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#def|
      (lambda (_$stx12357_)
        (let* ((___stx2302023021_ _$stx12357_)
               (_g1236312427_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2302023021_))))
          (let ((___kont2302323024_
                 (lambda (_L12657_ _L12659_ _L12660_ _L12661_)
                   (let ((__tmp24760 (gx#datum->syntax '#f 'def))
                         (__tmp24753
                          (let ((__tmp24759
                                 (let ()
                                   (declare (not safe))
                                   (cons _L12661_ _L12660_)))
                                (__tmp24754
                                 (let ((__tmp24755
                                        (let ((__tmp24758
                                               (gx#datum->syntax '#f 'lambda))
                                              (__tmp24756
                                               (let ((__tmp24757
                                                      (foldr (lambda (_g1268312686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1268412689_)
                       (let ()
                         (declare (not safe))
                         (cons _g1268312686_ _g1268412689_)))
                     '()
                     _L12657_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L12659_ __tmp24757))))
                                          (declare (not safe))
                                          (cons __tmp24758 __tmp24756))))
                                   (declare (not safe))
                                   (cons __tmp24755 '()))))
                            (declare (not safe))
                            (cons __tmp24759 __tmp24754))))
                     (declare (not safe))
                     (cons __tmp24760 __tmp24753))))
                (___kont2302723028_
                 (lambda (_L12549_ _L12551_ _L12552_)
                   (let ((__tmp24768 (gx#datum->syntax '#f 'define-values))
                         (__tmp24761
                          (let ((__tmp24767
                                 (let ()
                                   (declare (not safe))
                                   (cons _L12552_ '())))
                                (__tmp24762
                                 (let ((__tmp24763
                                        (let ((__tmp24766
                                               (gx#datum->syntax '#f 'lambda))
                                              (__tmp24764
                                               (let ((__tmp24765
                                                      (foldr (lambda (_g1257112574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1257212577_)
                       (let ()
                         (declare (not safe))
                         (cons _g1257112574_ _g1257212577_)))
                     '()
                     _L12549_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L12551_ __tmp24765))))
                                          (declare (not safe))
                                          (cons __tmp24766 __tmp24764))))
                                   (declare (not safe))
                                   (cons __tmp24763 '()))))
                            (declare (not safe))
                            (cons __tmp24767 __tmp24762))))
                     (declare (not safe))
                     (cons __tmp24768 __tmp24761))))
                (___kont2303123032_
                 (lambda (_L12464_ _L12466_)
                   (let ((__tmp24772 (gx#datum->syntax '#f 'define-values))
                         (__tmp24769
                          (let ((__tmp24771
                                 (let ()
                                   (declare (not safe))
                                   (cons _L12466_ '())))
                                (__tmp24770
                                 (let ()
                                   (declare (not safe))
                                   (cons _L12464_ '()))))
                            (declare (not safe))
                            (cons __tmp24771 __tmp24770))))
                     (declare (not safe))
                     (cons __tmp24772 __tmp24769)))))
            (let* ((___match2311123112_
                    (lambda (_e1241312434_
                             _hd1241412438_
                             _tl1241512441_
                             _e1241612444_
                             _hd1241712448_
                             _tl1241812451_
                             _e1241912454_
                             _hd1242012458_
                             _tl1242112461_)
                      (let ((_L12464_ _hd1242012458_)
                            (_L12466_ _hd1241712448_))
                        (if (gx#identifier? _L12466_)
                            (___kont2303123032_ _L12464_ _L12466_)
                            (let () (declare (not safe)) (_g1236312427_))))))
                   (___match2310323104_
                    (lambda (_e1241312434_
                             _hd1241412438_
                             _tl1241512441_
                             _e1241612444_
                             _hd1241712448_
                             _tl1241812451_)
                      (if (gx#stx-pair? _tl1241812451_)
                          (let ((_e1241912454_ (gx#syntax-e _tl1241812451_)))
                            (let ((_tl1242112461_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1241912454_)))
                                  (_hd1242012458_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1241912454_))))
                              (if (gx#stx-null? _tl1242112461_)
                                  (___match2311123112_
                                   _e1241312434_
                                   _hd1241412438_
                                   _tl1241512441_
                                   _e1241612444_
                                   _hd1241712448_
                                   _tl1241812451_
                                   _e1241912454_
                                   _hd1242012458_
                                   _tl1242112461_)
                                  (let ()
                                    (declare (not safe))
                                    (_g1236312427_)))))
                          (let () (declare (not safe)) (_g1236312427_)))))
                   (___match2309123092_
                    (lambda (_e1239312489_
                             _hd1239412493_
                             _tl1239512496_
                             _e1239612499_
                             _hd1239712503_
                             _tl1239812506_
                             _e1239912509_
                             _hd1240012513_
                             _tl1240112516_
                             ___splice2302923030_
                             _target1240212519_
                             _tl1240412522_)
                      (letrec ((_loop1240512525_
                                (lambda (_hd1240312529_ _body1240912532_)
                                  (if (gx#stx-pair? _hd1240312529_)
                                      (let ((_e1240612535_
                                             (gx#syntax-e _hd1240312529_)))
                                        (let ((_lp-tl1240812542_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1240612535_)))
                                              (_lp-hd1240712539_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1240612535_))))
                                          (_loop1240512525_
                                           _lp-tl1240812542_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1240712539_
                                                   _body1240912532_)))))
                                      (let ((_body1241012545_
                                             (reverse _body1240912532_)))
                                        (let ((_L12549_ _body1241012545_)
                                              (_L12551_ _tl1240112516_)
                                              (_L12552_ _hd1240012513_))
                                          (if (gx#identifier? _L12552_)
                                              (___kont2302723028_
                                               _L12549_
                                               _L12551_
                                               _L12552_)
                                              (___match2310323104_
                                               _e1239312489_
                                               _hd1239412493_
                                               _tl1239512496_
                                               _e1239612499_
                                               _hd1239712503_
                                               _tl1239812506_))))))))
                        (_loop1240512525_ _target1240212519_ '()))))
                   (___match2306523066_
                    (lambda (_e1236912587_
                             _hd1237012591_
                             _tl1237112594_
                             _e1237212597_
                             _hd1237312601_
                             _tl1237412604_
                             _e1237512607_
                             _hd1237612611_
                             _tl1237712614_
                             _e1237812617_
                             _hd1237912621_
                             _tl1238012624_
                             ___splice2302523026_
                             _target1238112627_
                             _tl1238312630_)
                      (letrec ((_loop1238412633_
                                (lambda (_hd1238212637_ _body1238812640_)
                                  (if (gx#stx-pair? _hd1238212637_)
                                      (let ((_e1238512643_
                                             (gx#syntax-e _hd1238212637_)))
                                        (let ((_lp-tl1238712650_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1238512643_)))
                                              (_lp-hd1238612647_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1238512643_))))
                                          (_loop1238412633_
                                           _lp-tl1238712650_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1238612647_
                                                   _body1238812640_)))))
                                      (let ((_body1238912653_
                                             (reverse _body1238812640_)))
                                        (___kont2302323024_
                                         _body1238912653_
                                         _tl1237712614_
                                         _tl1238012624_
                                         _hd1237912621_))))))
                        (_loop1238412633_ _target1238112627_ '())))))
              (if (gx#stx-pair? ___stx2302023021_)
                  (let ((_e1236912587_ (gx#syntax-e ___stx2302023021_)))
                    (let ((_tl1237112594_
                           (let () (declare (not safe)) (##cdr _e1236912587_)))
                          (_hd1237012591_
                           (let ()
                             (declare (not safe))
                             (##car _e1236912587_))))
                      (if (gx#stx-pair? _tl1237112594_)
                          (let ((_e1237212597_ (gx#syntax-e _tl1237112594_)))
                            (let ((_tl1237412604_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1237212597_)))
                                  (_hd1237312601_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1237212597_))))
                              (if (gx#stx-pair? _hd1237312601_)
                                  (let ((_e1237512607_
                                         (gx#syntax-e _hd1237312601_)))
                                    (let ((_tl1237712614_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1237512607_)))
                                          (_hd1237612611_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1237512607_))))
                                      (if (gx#stx-pair? _hd1237612611_)
                                          (let ((_e1237812617_
                                                 (gx#syntax-e _hd1237612611_)))
                                            (let ((_tl1238012624_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1237812617_)))
                                                  (_hd1237912621_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1237812617_))))
                                              (if (gx#stx-pair/null?
                                                   _tl1237412604_)
                                                  (let ((___splice2302523026_
                                                         (gx#syntax-split-splice
                                                          _tl1237412604_
                                                          '0)))
                                                    (let ((_tl1238312630_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice2302523026_
                                                              '1)))
                                                          (_target1238112627_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice2302523026_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl1238312630_)
                                                          (___match2306523066_
                                                           _e1236912587_
                                                           _hd1237012591_
                                                           _tl1237112594_
                                                           _e1237212597_
                                                           _hd1237312601_
                                                           _tl1237412604_
                                                           _e1237512607_
                                                           _hd1237612611_
                                                           _tl1237712614_
                                                           _e1237812617_
                                                           _hd1237912621_
                                                           _tl1238012624_
                                                           ___splice2302523026_
                                                           _target1238112627_
                                                           _tl1238312630_)
                                                          (if (gx#stx-pair?
                                                               _tl1237412604_)
                                                              (let ((_e1241912454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1237412604_)))
                        (let ((_tl1242112461_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1241912454_)))
                              (_hd1242012458_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1241912454_))))
                          (if (gx#stx-null? _tl1242112461_)
                              (___match2311123112_
                               _e1236912587_
                               _hd1237012591_
                               _tl1237112594_
                               _e1237212597_
                               _hd1237312601_
                               _tl1237412604_
                               _e1241912454_
                               _hd1242012458_
                               _tl1242112461_)
                              (let () (declare (not safe)) (_g1236312427_)))))
                      (let () (declare (not safe)) (_g1236312427_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair?
                                                       _tl1237412604_)
                                                      (let ((_e1241912454_
                                                             (gx#syntax-e
                                                              _tl1237412604_)))
                                                        (let ((_tl1242112461_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1241912454_)))
                      (_hd1242012458_
                       (let () (declare (not safe)) (##car _e1241912454_))))
                  (if (gx#stx-null? _tl1242112461_)
                      (___match2311123112_
                       _e1236912587_
                       _hd1237012591_
                       _tl1237112594_
                       _e1237212597_
                       _hd1237312601_
                       _tl1237412604_
                       _e1241912454_
                       _hd1242012458_
                       _tl1242112461_)
                      (let () (declare (not safe)) (_g1236312427_)))))
              (let () (declare (not safe)) (_g1236312427_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _tl1237412604_)
                                              (let ((___splice2302923030_
                                                     (gx#syntax-split-splice
                                                      _tl1237412604_
                                                      '0)))
                                                (let ((_tl1240412522_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2302923030_
                                                          '1)))
                                                      (_target1240212519_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2302923030_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1240412522_)
                                                      (___match2309123092_
                                                       _e1236912587_
                                                       _hd1237012591_
                                                       _tl1237112594_
                                                       _e1237212597_
                                                       _hd1237312601_
                                                       _tl1237412604_
                                                       _e1237512607_
                                                       _hd1237612611_
                                                       _tl1237712614_
                                                       ___splice2302923030_
                                                       _target1240212519_
                                                       _tl1240412522_)
                                                      (if (gx#stx-pair?
                                                           _tl1237412604_)
                                                          (let ((_e1241912454_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1237412604_)))
                    (let ((_tl1242112461_
                           (let () (declare (not safe)) (##cdr _e1241912454_)))
                          (_hd1242012458_
                           (let ()
                             (declare (not safe))
                             (##car _e1241912454_))))
                      (if (gx#stx-null? _tl1242112461_)
                          (___match2311123112_
                           _e1236912587_
                           _hd1237012591_
                           _tl1237112594_
                           _e1237212597_
                           _hd1237312601_
                           _tl1237412604_
                           _e1241912454_
                           _hd1242012458_
                           _tl1242112461_)
                          (let () (declare (not safe)) (_g1236312427_)))))
                  (let () (declare (not safe)) (_g1236312427_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl1237412604_)
                                                  (let ((_e1241912454_
                                                         (gx#syntax-e
                                                          _tl1237412604_)))
                                                    (let ((_tl1242112461_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1241912454_)))
                                                          (_hd1242012458_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1241912454_))))
                                                      (if (gx#stx-null?
                                                           _tl1242112461_)
                                                          (___match2311123112_
                                                           _e1236912587_
                                                           _hd1237012591_
                                                           _tl1237112594_
                                                           _e1237212597_
                                                           _hd1237312601_
                                                           _tl1237412604_
                                                           _e1241912454_
                                                           _hd1242012458_
                                                           _tl1242112461_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g1236312427_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1236312427_)))))))
                                  (if (gx#stx-pair? _tl1237412604_)
                                      (let ((_e1241912454_
                                             (gx#syntax-e _tl1237412604_)))
                                        (let ((_tl1242112461_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1241912454_)))
                                              (_hd1242012458_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1241912454_))))
                                          (if (gx#stx-null? _tl1242112461_)
                                              (___match2311123112_
                                               _e1236912587_
                                               _hd1237012591_
                                               _tl1237112594_
                                               _e1237212597_
                                               _hd1237312601_
                                               _tl1237412604_
                                               _e1241912454_
                                               _hd1242012458_
                                               _tl1242112461_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1236312427_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1236312427_))))))
                          (let () (declare (not safe)) (_g1236312427_)))))
                  (let () (declare (not safe)) (_g1236312427_))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#def*|
      (lambda (_$stx12698_)
        (let* ((_g1270212726_
                (lambda (_g1270312722_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1270312722_)))
               (_g1270112811_
                (lambda (_g1270312730_)
                  (if (gx#stx-pair? _g1270312730_)
                      (let ((_e1270612733_ (gx#syntax-e _g1270312730_)))
                        (let ((_hd1270712737_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1270612733_)))
                              (_tl1270812740_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1270612733_))))
                          (if (gx#stx-pair? _tl1270812740_)
                              (let ((_e1270912743_
                                     (gx#syntax-e _tl1270812740_)))
                                (let ((_hd1271012747_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1270912743_)))
                                      (_tl1271112750_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1270912743_))))
                                  (if (gx#stx-pair/null? _tl1271112750_)
                                      (let ((_g24773_
                                             (gx#syntax-split-splice
                                              _tl1271112750_
                                              '0)))
                                        (begin
                                          (let ((_g24774_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g24773_)
                                                       (##vector-length
                                                        _g24773_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g24774_ 2)))
                                                (error "Context expects 2 values"
                                                       _g24774_)))
                                          (let ((_target1271212753_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24773_ 0)))
                                                (_tl1271412756_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24773_ 1))))
                                            (if (gx#stx-null? _tl1271412756_)
                                                (letrec ((_loop1271512759_
                                                          (lambda (_hd1271312763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clauses1271912766_)
                    (if (gx#stx-pair? _hd1271312763_)
                        (let ((_e1271612769_ (gx#syntax-e _hd1271312763_)))
                          (let ((_lp-hd1271712773_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1271612769_)))
                                (_lp-tl1271812776_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1271612769_))))
                            (_loop1271512759_
                             _lp-tl1271812776_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1271712773_ _clauses1271912766_)))))
                        (let ((_clauses1272012779_
                               (reverse _clauses1271912766_)))
                          ((lambda (_L12783_ _L12785_)
                             (if (gx#identifier? _L12785_)
                                 (let ((__tmp24781
                                        (gx#datum->syntax '#f 'define-values))
                                       (__tmp24775
                                        (let ((__tmp24780
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L12785_ '())))
                                              (__tmp24776
                                               (let ((__tmp24777
                                                      (let ((__tmp24779
                                                             (gx#datum->syntax
                                                              '#f
                                                              'case-lambda))
                                                            (__tmp24778
                                                             (foldr (lambda (_g1280212805_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1280312808_)
                              (let ()
                                (declare (not safe))
                                (cons _g1280212805_ _g1280312808_)))
                            '()
                            _L12783_)))
                (declare (not safe))
                (cons __tmp24779 __tmp24778))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24777 '()))))
                                          (declare (not safe))
                                          (cons __tmp24780 __tmp24776))))
                                   (declare (not safe))
                                   (cons __tmp24781 __tmp24775))
                                 (_g1270212726_ _g1270312730_)))
                           _clauses1272012779_
                           _hd1271012747_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1271512759_
                                                   _target1271212753_
                                                   '()))
                                                (_g1270212726_
                                                 _g1270312730_)))))
                                      (_g1270212726_ _g1270312730_))))
                              (_g1270212726_ _g1270312730_))))
                      (_g1270212726_ _g1270312730_)))))
          (_g1270112811_ _$stx12698_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#defvalues|
      (lambda (_$stx12816_)
        (let* ((_g1282012838_
                (lambda (_g1282112834_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1282112834_)))
               (_g1281912893_
                (lambda (_g1282112842_)
                  (if (gx#stx-pair? _g1282112842_)
                      (let ((_e1282412845_ (gx#syntax-e _g1282112842_)))
                        (let ((_hd1282512849_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1282412845_)))
                              (_tl1282612852_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1282412845_))))
                          (if (gx#stx-pair? _tl1282612852_)
                              (let ((_e1282712855_
                                     (gx#syntax-e _tl1282612852_)))
                                (let ((_hd1282812859_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1282712855_)))
                                      (_tl1282912862_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1282712855_))))
                                  (if (gx#stx-pair? _tl1282912862_)
                                      (let ((_e1283012865_
                                             (gx#syntax-e _tl1282912862_)))
                                        (let ((_hd1283112869_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1283012865_)))
                                              (_tl1283212872_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1283012865_))))
                                          (if (gx#stx-null? _tl1283212872_)
                                              ((lambda (_L12875_ _L12877_)
                                                 (if (gx#identifier-list?
                                                      _L12877_)
                                                     (let ((__tmp24784
                                                            (gx#datum->syntax
                                                             '#f
                                                             'define-values))
                                                           (__tmp24782
                                                            (let ((__tmp24783
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L12875_ '()))))
                      (declare (not safe))
                      (cons _L12877_ __tmp24783))))
               (declare (not safe))
               (cons __tmp24784 __tmp24782))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1282012838_
                                                      _g1282112842_)))
                                               _hd1283112869_
                                               _hd1282812859_)
                                              (_g1282012838_ _g1282112842_))))
                                      (_g1282012838_ _g1282112842_))))
                              (_g1282012838_ _g1282112842_))))
                      (_g1282012838_ _g1282112842_)))))
          (_g1281912893_ _$stx12816_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#case|
      (lambda (_$stx12897_)
        (let* ((_g1290112925_
                (lambda (_g1290212921_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1290212921_)))
               (_g1290013010_
                (lambda (_g1290212929_)
                  (if (gx#stx-pair? _g1290212929_)
                      (let ((_e1290512932_ (gx#syntax-e _g1290212929_)))
                        (let ((_hd1290612936_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1290512932_)))
                              (_tl1290712939_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1290512932_))))
                          (if (gx#stx-pair? _tl1290712939_)
                              (let ((_e1290812942_
                                     (gx#syntax-e _tl1290712939_)))
                                (let ((_hd1290912946_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1290812942_)))
                                      (_tl1291012949_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1290812942_))))
                                  (if (gx#stx-pair/null? _tl1291012949_)
                                      (let ((_g24785_
                                             (gx#syntax-split-splice
                                              _tl1291012949_
                                              '0)))
                                        (begin
                                          (let ((_g24786_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g24785_)
                                                       (##vector-length
                                                        _g24785_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g24786_ 2)))
                                                (error "Context expects 2 values"
                                                       _g24786_)))
                                          (let ((_target1291112952_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24785_ 0)))
                                                (_tl1291312955_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g24785_ 1))))
                                            (if (gx#stx-null? _tl1291312955_)
                                                (letrec ((_loop1291412958_
                                                          (lambda (_hd1291212962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause1291812965_)
                    (if (gx#stx-pair? _hd1291212962_)
                        (let ((_e1291512968_ (gx#syntax-e _hd1291212962_)))
                          (let ((_lp-hd1291612972_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1291512968_)))
                                (_lp-tl1291712975_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1291512968_))))
                            (_loop1291412958_
                             _lp-tl1291712975_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1291612972_ _clause1291812965_)))))
                        (let ((_clause1291912978_
                               (reverse _clause1291812965_)))
                          ((lambda (_L12982_ _L12984_)
                             (let ((__tmp24797 (gx#datum->syntax '#f 'let))
                                   (__tmp24787
                                    (let ((__tmp24794
                                           (let ((__tmp24796
                                                  (gx#datum->syntax '#f '$e))
                                                 (__tmp24795
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L12984_ '()))))
                                             (declare (not safe))
                                             (cons __tmp24796 __tmp24795)))
                                          (__tmp24788
                                           (let ((__tmp24789
                                                  (let ((__tmp24793
                                                         (gx#datum->syntax
                                                          '#f
                                                          '~case))
                                                        (__tmp24790
                                                         (let ((__tmp24792
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$e))
                       (__tmp24791
                        (foldr (lambda (_g1300113004_ _g1300213007_)
                                 (let ()
                                   (declare (not safe))
                                   (cons _g1300113004_ _g1300213007_)))
                               '()
                               _L12982_)))
                   (declare (not safe))
                   (cons __tmp24792 __tmp24791))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24793
                                                          __tmp24790))))
                                             (declare (not safe))
                                             (cons __tmp24789 '()))))
                                      (declare (not safe))
                                      (cons __tmp24794 __tmp24788))))
                               (declare (not safe))
                               (cons __tmp24797 __tmp24787)))
                           _clause1291912978_
                           _hd1290912946_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1291412958_
                                                   _target1291112952_
                                                   '()))
                                                (_g1290112925_
                                                 _g1290212929_)))))
                                      (_g1290112925_ _g1290212929_))))
                              (_g1290112925_ _g1290212929_))))
                      (_g1290112925_ _g1290212929_)))))
          (_g1290013010_ _$stx12897_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#~case|
      (lambda (_stx13015_)
        (letrec ((_parse-clauses13018_
                  (lambda (_e15481_ _clauses15483_)
                    (let _lp15485_ ((_rest15488_ _clauses15483_)
                                    (_datums15490_ '())
                                    (_dispatch15491_ '())
                                    (_default15492_ '#f))
                      (let* ((___stx2321023211_ _rest15488_)
                             (_g1549515507_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2321023211_))))
                        (let ((___kont2321323214_
                               (lambda (_L15539_ _L15541_)
                                 (let* ((___stx2311423115_ _L15541_)
                                        (_g1555915632_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2311423115_))))
                                   (let ((___kont2311723118_
                                          (lambda (_L15997_)
                                            (if (gx#stx-null? _L15539_)
                                                (let* ((_g1601216020_
                                                        (lambda (_g1601316016_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g1601316016_)))
                                                       (_g1601116039_
                                                        (lambda (_g1601316024_)
                                                          ((lambda (_L16027_)
                                                             (let ()
                                                               (_lp15485_
                                                                '()
                                                                _datums15490_
                                                                _dispatch15491_
                                                                (let ((__tmp24798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L16027_ '()))))
                          (declare (not safe))
                          (cons _L15997_ __tmp24798)))))
                   _g1601316024_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1601116039_ _e15481_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _stx13015_
                                                 _L15541_))))
                                         (___kont2311923120_
                                          (lambda (_L15937_)
                                            (if (gx#stx-null? _L15539_)
                                                (_lp15485_
                                                 '()
                                                 _datums15490_
                                                 _dispatch15491_
                                                 (let ((__tmp24800
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin))
                                                       (__tmp24799
                                                        (foldr (lambda (_g1595115954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1595215957_)
                         (let ()
                           (declare (not safe))
                           (cons _g1595115954_ _g1595215957_)))
                       '()
                       _L15937_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24800
                                                         __tmp24799)))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced else clause"
                                                 _stx13015_
                                                 _L15541_))))
                                         (___kont2312323124_
                                          (lambda (_L15822_ _L15824_)
                                            (if (let ((__tmp24801
                                                       (foldr (lambda (_g1584215845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1584315848_)
                        (let ()
                          (declare (not safe))
                          (cons _g1584215845_ _g1584315848_)))
                      '()
                      _L15824_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (null? __tmp24801))
                                                (_lp15485_
                                                 _L15539_
                                                 _datums15490_
                                                 _dispatch15491_
                                                 _default15492_)
                                                (let* ((_g1585115859_
                                                        (lambda (_g1585215855_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g1585215855_)))
                                                       (_g1585015886_
                                                        (lambda (_g1585215863_)
                                                          ((lambda (_L15866_)
                                                             (let ()
                                                               (_lp15485_
                                                                _L15539_
                                                                (let ((__tmp24802
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (map gx#stx-e
                                    (foldr (lambda (_g1587715880_
                                                    _g1587815883_)
                                             (let ()
                                               (declare (not safe))
                                               (cons _g1587715880_
                                                     _g1587815883_)))
                                           '()
                                           _L15824_))))
                          (declare (not safe))
                          (cons __tmp24802 _datums15490_))
                        (let ((__tmp24803
                               (let ((__tmp24804
                                      (let ()
                                        (declare (not safe))
                                        (cons _L15866_ '()))))
                                 (declare (not safe))
                                 (cons _L15822_ __tmp24804))))
                          (declare (not safe))
                          (cons __tmp24803 _dispatch15491_))
                        _default15492_)))
                   _g1585215863_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1585015886_ _e15481_)))))
                                         (___kont2312723128_
                                          (lambda (_L15709_ _L15711_)
                                            (if (let ((__tmp24805
                                                       (foldr (lambda (_g1573015733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1573115736_)
                        (let ()
                          (declare (not safe))
                          (cons _g1573015733_ _g1573115736_)))
                      '()
                      _L15711_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (null? __tmp24805))
                                                (_lp15485_
                                                 _L15539_
                                                 _datums15490_
                                                 _dispatch15491_
                                                 _default15492_)
                                                (_lp15485_
                                                 _L15539_
                                                 (let ((__tmp24806
                                                        (map gx#stx-e
                                                             (foldr (lambda (_g1573815741_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1573915744_)
                              (let ()
                                (declare (not safe))
                                (cons _g1573815741_ _g1573915744_)))
                            '()
                            _L15711_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24806
                                                         _datums15490_))
                                                 (let ((__tmp24807
                                                        (let ((__tmp24809
                                                               (gx#datum->syntax
                                                                '#f
                                                                'begin))
                                                              (__tmp24808
                                                               (foldr (lambda (_g1574615749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1574715752_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g1574615749_ _g1574715752_)))
                              '()
                              _L15709_)))
                  (declare (not safe))
                  (cons __tmp24809 __tmp24808))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24807
                                                         _dispatch15491_))
                                                 _default15492_)))))
                                     (let* ((___match2320723208_
                                             (lambda (_e1560615639_
                                                      _hd1560715643_
                                                      _tl1560815646_
                                                      ___splice2312923130_
                                                      _target1560915649_
                                                      _tl1561115652_)
                                               (letrec ((_loop1561215655_
                                                         (lambda (_hd1561015659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1561615662_)
                   (if (gx#stx-pair? _hd1561015659_)
                       (let ((_e1561315665_ (gx#syntax-e _hd1561015659_)))
                         (let ((_lp-tl1561515672_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1561315665_)))
                               (_lp-hd1561415669_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1561315665_))))
                           (_loop1561215655_
                            _lp-tl1561515672_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd1561415669_ _datum1561615662_)))))
                       (let ((_datum1561715675_ (reverse _datum1561615662_)))
                         (if (gx#stx-pair/null? _tl1560815646_)
                             (let ((___splice2313123132_
                                    (gx#syntax-split-splice
                                     _tl1560815646_
                                     '0)))
                               (let ((_tl1562015682_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         ___splice2313123132_
                                         '1)))
                                     (_target1561815679_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         ___splice2313123132_
                                         '0))))
                                 (if (gx#stx-null? _tl1562015682_)
                                     (letrec ((_loop1562115685_
                                               (lambda (_hd1561915689_
                                                        _body1562515692_)
                                                 (if (gx#stx-pair?
                                                      _hd1561915689_)
                                                     (let ((_e1562215695_
                                                            (gx#syntax-e
                                                             _hd1561915689_)))
                                                       (let ((_lp-tl1562415702_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e1562215695_)))
                     (_lp-hd1562315699_
                      (let () (declare (not safe)) (##car _e1562215695_))))
                 (_loop1562115685_
                  _lp-tl1562415702_
                  (let ()
                    (declare (not safe))
                    (cons _lp-hd1562315699_ _body1562515692_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_body1562615705_
                                                            (reverse _body1562515692_)))
                                                       (___kont2312723128_
                                                        _body1562615705_
                                                        _datum1561715675_))))))
                                       (_loop1562115685_
                                        _target1561815679_
                                        '()))
                                     (let ()
                                       (declare (not safe))
                                       (_g1555915632_)))))
                             (let ()
                               (declare (not safe))
                               (_g1555915632_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1561215655_
                                                  _target1560915649_
                                                  '()))))
                                            (___match2319323194_
                                             (lambda (_e1558615762_
                                                      _hd1558715766_
                                                      _tl1558815769_
                                                      ___splice2312523126_
                                                      _target1558915772_
                                                      _tl1559115775_)
                                               (letrec ((_loop1559215778_
                                                         (lambda (_hd1559015782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _datum1559615785_)
                   (if (gx#stx-pair? _hd1559015782_)
                       (let ((_e1559315788_ (gx#syntax-e _hd1559015782_)))
                         (let ((_lp-tl1559515795_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1559315788_)))
                               (_lp-hd1559415792_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1559315788_))))
                           (_loop1559215778_
                            _lp-tl1559515795_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd1559415792_ _datum1559615785_)))))
                       (let ((_datum1559715798_ (reverse _datum1559615785_)))
                         (if (gx#stx-pair? _tl1558815769_)
                             (let ((_e1559815802_
                                    (gx#syntax-e _tl1558815769_)))
                               (let ((_tl1560015809_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1559815802_)))
                                     (_hd1559915806_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1559815802_))))
                                 (if (gx#identifier? _hd1559915806_)
                                     (if (gx#free-identifier=?
                                          |gerbil/core/sugar$<sugar:2>[1]#_g24810_|
                                          _hd1559915806_)
                                         (if (gx#stx-pair? _tl1560015809_)
                                             (let ((_e1560115812_
                                                    (gx#syntax-e
                                                     _tl1560015809_)))
                                               (let ((_tl1560315819_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1560115812_)))
                                                     (_hd1560215816_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1560115812_))))
                                                 (if (gx#stx-null?
                                                      _tl1560315819_)
                                                     (___kont2312323124_
                                                      _hd1560215816_
                                                      _datum1559715798_)
                                                     (___match2320723208_
                                                      _e1558615762_
                                                      _hd1558715766_
                                                      _tl1558815769_
                                                      ___splice2312523126_
                                                      _target1558915772_
                                                      _tl1559115775_))))
                                             (___match2320723208_
                                              _e1558615762_
                                              _hd1558715766_
                                              _tl1558815769_
                                              ___splice2312523126_
                                              _target1558915772_
                                              _tl1559115775_))
                                         (___match2320723208_
                                          _e1558615762_
                                          _hd1558715766_
                                          _tl1558815769_
                                          ___splice2312523126_
                                          _target1558915772_
                                          _tl1559115775_))
                                     (___match2320723208_
                                      _e1558615762_
                                      _hd1558715766_
                                      _tl1558815769_
                                      ___splice2312523126_
                                      _target1558915772_
                                      _tl1559115775_))))
                             (___match2320723208_
                              _e1558615762_
                              _hd1558715766_
                              _tl1558815769_
                              ___splice2312523126_
                              _target1558915772_
                              _tl1559115775_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1559215778_
                                                  _target1558915772_
                                                  '()))))
                                            (___match2317923180_
                                             (lambda (_e1557215897_
                                                      _hd1557315901_
                                                      _tl1557415904_
                                                      ___splice2312123122_
                                                      _target1557515907_
                                                      _tl1557715910_)
                                               (letrec ((_loop1557815913_
                                                         (lambda (_hd1557615917_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body1558215920_)
                   (if (gx#stx-pair? _hd1557615917_)
                       (let ((_e1557915923_ (gx#syntax-e _hd1557615917_)))
                         (let ((_lp-tl1558115930_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1557915923_)))
                               (_lp-hd1558015927_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1557915923_))))
                           (_loop1557815913_
                            _lp-tl1558115930_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd1558015927_ _body1558215920_)))))
                       (let ((_body1558315933_ (reverse _body1558215920_)))
                         (___kont2311923120_ _body1558315933_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1557815913_
                                                  _target1557515907_
                                                  '())))))
                                       (if (gx#stx-pair? ___stx2311423115_)
                                           (let ((_e1556215967_
                                                  (gx#syntax-e
                                                   ___stx2311423115_)))
                                             (let ((_tl1556415974_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e1556215967_)))
                                                   (_hd1556315971_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e1556215967_))))
                                               (if (gx#identifier?
                                                    _hd1556315971_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/sugar$<sugar:2>[1]#_g24811_|
                                                        _hd1556315971_)
                                                       (if (gx#stx-pair?
                                                            _tl1556415974_)
                                                           (let ((_e1556515977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1556415974_)))
                     (let ((_tl1556715984_
                            (let ()
                              (declare (not safe))
                              (##cdr _e1556515977_)))
                           (_hd1556615981_
                            (let ()
                              (declare (not safe))
                              (##car _e1556515977_))))
                       (if (gx#identifier? _hd1556615981_)
                           (if (gx#free-identifier=?
                                |gerbil/core/sugar$<sugar:2>[1]#_g24812_|
                                _hd1556615981_)
                               (if (gx#stx-pair? _tl1556715984_)
                                   (let ((_e1556815987_
                                          (gx#syntax-e _tl1556715984_)))
                                     (let ((_tl1557015994_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e1556815987_)))
                                           (_hd1556915991_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e1556815987_))))
                                       (if (gx#stx-null? _tl1557015994_)
                                           (___kont2311723118_ _hd1556915991_)
                                           (if (gx#stx-pair/null?
                                                _tl1556415974_)
                                               (let ((___splice2312123122_
                                                      (gx#syntax-split-splice
                                                       _tl1556415974_
                                                       '0)))
                                                 (let ((_tl1557715910_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice2312123122_
                                                           '1)))
                                                       (_target1557515907_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice2312123122_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _tl1557715910_)
                                                       (___match2317923180_
                                                        _e1556215967_
                                                        _hd1556315971_
                                                        _tl1556415974_
                                                        ___splice2312123122_
                                                        _target1557515907_
                                                        _tl1557715910_)
                                                       (if (gx#stx-pair/null?
                                                            _hd1556315971_)
                                                           (let ((___splice2312523126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _hd1556315971_ '0)))
                     (let ((_tl1559115775_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice2312523126_ '1)))
                           (_target1558915772_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice2312523126_ '0))))
                       (if (gx#stx-null? _tl1559115775_)
                           (___match2319323194_
                            _e1556215967_
                            _hd1556315971_
                            _tl1556415974_
                            ___splice2312523126_
                            _target1558915772_
                            _tl1559115775_)
                           (let () (declare (not safe)) (_g1555915632_)))))
                   (let () (declare (not safe)) (_g1555915632_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-pair/null?
                                                    _hd1556315971_)
                                                   (let ((___splice2312523126_
                                                          (gx#syntax-split-splice
                                                           _hd1556315971_
                                                           '0)))
                                                     (let ((_tl1559115775_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice2312523126_
                                                               '1)))
                                                           (_target1558915772_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice2312523126_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _tl1559115775_)
                                                           (___match2319323194_
                                                            _e1556215967_
                                                            _hd1556315971_
                                                            _tl1556415974_
                                                            ___splice2312523126_
                                                            _target1558915772_
                                                            _tl1559115775_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_g1555915632_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1555915632_)))))))
                                   (if (gx#stx-pair/null? _tl1556415974_)
                                       (let ((___splice2312123122_
                                              (gx#syntax-split-splice
                                               _tl1556415974_
                                               '0)))
                                         (let ((_tl1557715910_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice2312123122_
                                                   '1)))
                                               (_target1557515907_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice2312123122_
                                                   '0))))
                                           (if (gx#stx-null? _tl1557715910_)
                                               (___match2317923180_
                                                _e1556215967_
                                                _hd1556315971_
                                                _tl1556415974_
                                                ___splice2312123122_
                                                _target1557515907_
                                                _tl1557715910_)
                                               (if (gx#stx-pair/null?
                                                    _hd1556315971_)
                                                   (let ((___splice2312523126_
                                                          (gx#syntax-split-splice
                                                           _hd1556315971_
                                                           '0)))
                                                     (let ((_tl1559115775_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice2312523126_
                                                               '1)))
                                                           (_target1558915772_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               ___splice2312523126_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _tl1559115775_)
                                                           (___match2319323194_
                                                            _e1556215967_
                                                            _hd1556315971_
                                                            _tl1556415974_
                                                            ___splice2312523126_
                                                            _target1558915772_
                                                            _tl1559115775_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_g1555915632_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1555915632_))))))
                                       (if (gx#stx-pair/null? _hd1556315971_)
                                           (let ((___splice2312523126_
                                                  (gx#syntax-split-splice
                                                   _hd1556315971_
                                                   '0)))
                                             (let ((_tl1559115775_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice2312523126_
                                                       '1)))
                                                   (_target1558915772_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice2312523126_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _tl1559115775_)
                                                   (___match2319323194_
                                                    _e1556215967_
                                                    _hd1556315971_
                                                    _tl1556415974_
                                                    ___splice2312523126_
                                                    _target1558915772_
                                                    _tl1559115775_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1555915632_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g1555915632_)))))
                               (if (gx#stx-pair/null? _tl1556415974_)
                                   (let ((___splice2312123122_
                                          (gx#syntax-split-splice
                                           _tl1556415974_
                                           '0)))
                                     (let ((_tl1557715910_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2312123122_
                                               '1)))
                                           (_target1557515907_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2312123122_
                                               '0))))
                                       (if (gx#stx-null? _tl1557715910_)
                                           (___match2317923180_
                                            _e1556215967_
                                            _hd1556315971_
                                            _tl1556415974_
                                            ___splice2312123122_
                                            _target1557515907_
                                            _tl1557715910_)
                                           (if (gx#stx-pair/null?
                                                _hd1556315971_)
                                               (let ((___splice2312523126_
                                                      (gx#syntax-split-splice
                                                       _hd1556315971_
                                                       '0)))
                                                 (let ((_tl1559115775_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice2312523126_
                                                           '1)))
                                                       (_target1558915772_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           ___splice2312523126_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _tl1559115775_)
                                                       (___match2319323194_
                                                        _e1556215967_
                                                        _hd1556315971_
                                                        _tl1556415974_
                                                        ___splice2312523126_
                                                        _target1558915772_
                                                        _tl1559115775_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_g1555915632_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g1555915632_))))))
                                   (if (gx#stx-pair/null? _hd1556315971_)
                                       (let ((___splice2312523126_
                                              (gx#syntax-split-splice
                                               _hd1556315971_
                                               '0)))
                                         (let ((_tl1559115775_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice2312523126_
                                                   '1)))
                                               (_target1558915772_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   ___splice2312523126_
                                                   '0))))
                                           (if (gx#stx-null? _tl1559115775_)
                                               (___match2319323194_
                                                _e1556215967_
                                                _hd1556315971_
                                                _tl1556415974_
                                                ___splice2312523126_
                                                _target1558915772_
                                                _tl1559115775_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_g1555915632_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g1555915632_)))))
                           (if (gx#stx-pair/null? _tl1556415974_)
                               (let ((___splice2312123122_
                                      (gx#syntax-split-splice
                                       _tl1556415974_
                                       '0)))
                                 (let ((_tl1557715910_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice2312123122_
                                           '1)))
                                       (_target1557515907_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           ___splice2312123122_
                                           '0))))
                                   (if (gx#stx-null? _tl1557715910_)
                                       (___match2317923180_
                                        _e1556215967_
                                        _hd1556315971_
                                        _tl1556415974_
                                        ___splice2312123122_
                                        _target1557515907_
                                        _tl1557715910_)
                                       (if (gx#stx-pair/null? _hd1556315971_)
                                           (let ((___splice2312523126_
                                                  (gx#syntax-split-splice
                                                   _hd1556315971_
                                                   '0)))
                                             (let ((_tl1559115775_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice2312523126_
                                                       '1)))
                                                   (_target1558915772_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       ___splice2312523126_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _tl1559115775_)
                                                   (___match2319323194_
                                                    _e1556215967_
                                                    _hd1556315971_
                                                    _tl1556415974_
                                                    ___splice2312523126_
                                                    _target1558915772_
                                                    _tl1559115775_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g1555915632_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g1555915632_))))))
                               (if (gx#stx-pair/null? _hd1556315971_)
                                   (let ((___splice2312523126_
                                          (gx#syntax-split-splice
                                           _hd1556315971_
                                           '0)))
                                     (let ((_tl1559115775_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2312523126_
                                               '1)))
                                           (_target1558915772_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2312523126_
                                               '0))))
                                       (if (gx#stx-null? _tl1559115775_)
                                           (___match2319323194_
                                            _e1556215967_
                                            _hd1556315971_
                                            _tl1556415974_
                                            ___splice2312523126_
                                            _target1558915772_
                                            _tl1559115775_)
                                           (let ()
                                             (declare (not safe))
                                             (_g1555915632_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g1555915632_)))))))
                   (if (gx#stx-pair/null? _tl1556415974_)
                       (let ((___splice2312123122_
                              (gx#syntax-split-splice _tl1556415974_ '0)))
                         (let ((_tl1557715910_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice2312123122_ '1)))
                               (_target1557515907_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref ___splice2312123122_ '0))))
                           (if (gx#stx-null? _tl1557715910_)
                               (___match2317923180_
                                _e1556215967_
                                _hd1556315971_
                                _tl1556415974_
                                ___splice2312123122_
                                _target1557515907_
                                _tl1557715910_)
                               (if (gx#stx-pair/null? _hd1556315971_)
                                   (let ((___splice2312523126_
                                          (gx#syntax-split-splice
                                           _hd1556315971_
                                           '0)))
                                     (let ((_tl1559115775_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2312523126_
                                               '1)))
                                           (_target1558915772_
                                            (let ()
                                              (declare (not safe))
                                              (##vector-ref
                                               ___splice2312523126_
                                               '0))))
                                       (if (gx#stx-null? _tl1559115775_)
                                           (___match2319323194_
                                            _e1556215967_
                                            _hd1556315971_
                                            _tl1556415974_
                                            ___splice2312523126_
                                            _target1558915772_
                                            _tl1559115775_)
                                           (let ()
                                             (declare (not safe))
                                             (_g1555915632_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g1555915632_))))))
                       (if (gx#stx-pair/null? _hd1556315971_)
                           (let ((___splice2312523126_
                                  (gx#syntax-split-splice _hd1556315971_ '0)))
                             (let ((_tl1559115775_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref ___splice2312523126_ '1)))
                                   (_target1558915772_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref ___splice2312523126_ '0))))
                               (if (gx#stx-null? _tl1559115775_)
                                   (___match2319323194_
                                    _e1556215967_
                                    _hd1556315971_
                                    _tl1556415974_
                                    ___splice2312523126_
                                    _target1558915772_
                                    _tl1559115775_)
                                   (let ()
                                     (declare (not safe))
                                     (_g1555915632_)))))
                           (let () (declare (not safe)) (_g1555915632_)))))
               (if (gx#stx-pair/null? _hd1556315971_)
                   (let ((___splice2312523126_
                          (gx#syntax-split-splice _hd1556315971_ '0)))
                     (let ((_tl1559115775_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice2312523126_ '1)))
                           (_target1558915772_
                            (let ()
                              (declare (not safe))
                              (##vector-ref ___splice2312523126_ '0))))
                       (if (gx#stx-null? _tl1559115775_)
                           (___match2319323194_
                            _e1556215967_
                            _hd1556315971_
                            _tl1556415974_
                            ___splice2312523126_
                            _target1558915772_
                            _tl1559115775_)
                           (let () (declare (not safe)) (_g1555915632_)))))
                   (let () (declare (not safe)) (_g1555915632_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _hd1556315971_)
                                                       (let ((___splice2312523126_
                                                              (gx#syntax-split-splice
                                                               _hd1556315971_
                                                               '0)))
                                                         (let ((_tl1559115775_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref ___splice2312523126_ '1)))
                       (_target1558915772_
                        (let ()
                          (declare (not safe))
                          (##vector-ref ___splice2312523126_ '0))))
                   (if (gx#stx-null? _tl1559115775_)
                       (___match2319323194_
                        _e1556215967_
                        _hd1556315971_
                        _tl1556415974_
                        ___splice2312523126_
                        _target1558915772_
                        _tl1559115775_)
                       (let () (declare (not safe)) (_g1555915632_)))))
               (let () (declare (not safe)) (_g1555915632_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ()
                                             (declare (not safe))
                                             (_g1555915632_))))))))
                              (___kont2321523216_
                               (lambda ()
                                 (_check-duplicate-datums13020_ _datums15490_)
                                 (values (reverse _datums15490_)
                                         (reverse _dispatch15491_)
                                         (let ((_$e15518_ _default15492_))
                                           (if _$e15518_
                                               _$e15518_
                                               '#!void))))))
                          (let ((_g1549415522_
                                 (lambda ()
                                   (if (gx#stx-null? ___stx2321023211_)
                                       (___kont2321523216_)
                                       (let ()
                                         (declare (not safe))
                                         (_g1549515507_))))))
                            (if (gx#stx-pair? ___stx2321023211_)
                                (let ((_e1549915529_
                                       (gx#syntax-e ___stx2321023211_)))
                                  (let ((_tl1550115536_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1549915529_)))
                                        (_hd1550015533_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1549915529_))))
                                    (___kont2321323214_
                                     _tl1550115536_
                                     _hd1550015533_)))
                                (let ()
                                  (declare (not safe))
                                  (_g1549415522_)))))))))
                 (_check-duplicate-datums13020_
                  (lambda (_datums15469_)
                    (let ((_ht15472_ (make-hash-table)))
                      (for-each
                       (lambda (_lst15475_)
                         (for-each
                          (lambda (_datum15478_)
                            (if (hash-get _ht15472_ _datum15478_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Duplicate datum"
                                 _stx13015_
                                 _datum15478_)
                                (hash-put! _ht15472_ _datum15478_ '#t)))
                          _lst15475_))
                       _datums15469_))))
                 (_count-datums13021_
                  (lambda (_datums15462_)
                    (foldl (lambda (_lst15465_ _r15467_)
                             (+ (length _lst15465_) _r15467_))
                           '0
                           _datums15462_)))
                 (_symbolic-datums?13022_
                  (lambda (_datums15456_)
                    (andmap (lambda (_lst15459_) (andmap symbol? _lst15459_))
                            _datums15456_)))
                 (_char-datums?13023_
                  (lambda (_datums15450_)
                    (andmap (lambda (_lst15453_) (andmap char? _lst15453_))
                            _datums15450_)))
                 (_fixnum-datums?13024_
                  (lambda (_datums15444_)
                    (andmap (lambda (_lst15447_) (andmap fixnum? _lst15447_))
                            _datums15444_)))
                 (_eq-datums?13025_
                  (lambda (_datums15427_)
                    (andmap (lambda (_lst15430_)
                              (andmap (lambda (_x15433_)
                                        (let ((_$e15436_
                                               (let ()
                                                 (declare (not safe))
                                                 (symbol? _x15433_))))
                                          (if _$e15436_
                                              _$e15436_
                                              (let ((_$e15440_
                                                     (keyword? _x15433_)))
                                                (if _$e15440_
                                                    _$e15440_
                                                    (let ()
                                                      (declare (not safe))
                                                      (immediate?
                                                       _x15433_)))))))
                                      _lst15430_))
                            _datums15427_)))
                 (_generate-simple-case13026_
                  (lambda (_e15191_
                           _datums15193_
                           _dispatch15194_
                           _default15195_)
                    (let* ((_g1519715205_
                            (lambda (_g1519815201_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g1519815201_)))
                           (_g1519615423_
                            (lambda (_g1519815209_)
                              ((lambda (_L15212_)
                                 (let ()
                                   (let _recur15224_ ((_datums15227_
                                                       _datums15193_)
                                                      (_dispatch15229_
                                                       _dispatch15194_))
                                     (let* ((___stx2322823229_ _datums15227_)
                                            (_g1523215253_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                ___stx2322823229_))))
                                       (let ((___kont2323123232_
                                              (lambda (_L15311_ _L15313_)
                                                (let* ((_g1533315345_
                                                        (lambda (_g1533415341_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g1533415341_)))
                                                       (_g1533215415_
                                                        (lambda (_g1533415349_)
                                                          (if (gx#stx-pair?
                                                               _g1533415349_)
                                                              (let ((_e1533715352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g1533415349_)))
                        (let ((_hd1533815356_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1533715352_)))
                              (_tl1533915359_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1533715352_))))
                          ((lambda (_L15362_ _L15364_)
                             (let* ((_g1537615384_
                                     (lambda (_g1537715380_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g1537715380_)))
                                    (_g1537515411_
                                     (lambda (_g1537715388_)
                                       ((lambda (_L15391_)
                                          (let ()
                                            (let ((__tmp24823
                                                   (gx#datum->syntax '#f 'if))
                                                  (__tmp24813
                                                   (let ((__tmp24816
                                                          (let ((__tmp24822
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'or))
                        (__tmp24817
                         (foldr (lambda (_g1540215405_ _g1540315408_)
                                  (let ((__tmp24818
                                         (let ((__tmp24821
                                                (gx#datum->syntax
                                                 '#f
                                                 '~case-test))
                                               (__tmp24819
                                                (let ((__tmp24820
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L15212_ '()))))
                                                  (declare (not safe))
                                                  (cons _g1540215405_
                                                        __tmp24820))))
                                           (declare (not safe))
                                           (cons __tmp24821 __tmp24819))))
                                    (declare (not safe))
                                    (cons __tmp24818 _g1540315408_)))
                                '()
                                _L15313_)))
                    (declare (not safe))
                    (cons __tmp24822 __tmp24817)))
                 (__tmp24814
                  (let ((__tmp24815
                         (let () (declare (not safe)) (cons _L15391_ '()))))
                    (declare (not safe))
                    (cons _L15364_ __tmp24815))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp24816
                                                           __tmp24814))))
                                              (declare (not safe))
                                              (cons __tmp24823 __tmp24813))))
                                        _g1537715388_))))
                               (_g1537515411_
                                (_recur15224_ _L15311_ _L15362_))))
                           _tl1533915359_
                           _hd1533815356_)))
                      (_g1533315345_ _g1533415349_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1533215415_
                                                   _dispatch15229_))))
                                             (___kont2323523236_
                                              (lambda () _default15195_)))
                                         (let ((___match2325123252_
                                                (lambda (_e1523615271_
                                                         _hd1523715275_
                                                         _tl1523815278_
                                                         ___splice2323323234_
                                                         _target1523915281_
                                                         _tl1524115284_)
                                                  (letrec ((_loop1524215287_
                                                            (lambda (_hd1524015291_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _datum1524615294_)
                      (if (gx#stx-pair? _hd1524015291_)
                          (let ((_e1524315297_ (gx#syntax-e _hd1524015291_)))
                            (let ((_lp-tl1524515304_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1524315297_)))
                                  (_lp-hd1524415301_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1524315297_))))
                              (_loop1524215287_
                               _lp-tl1524515304_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd1524415301_ _datum1524615294_)))))
                          (let ((_datum1524715307_
                                 (reverse _datum1524615294_)))
                            (___kont2323123232_
                             _tl1523815278_
                             _datum1524715307_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1524215287_
                                                     _target1523915281_
                                                     '())))))
                                           (if (gx#stx-pair? ___stx2322823229_)
                                               (let ((_e1523615271_
                                                      (gx#syntax-e
                                                       ___stx2322823229_)))
                                                 (let ((_tl1523815278_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e1523615271_)))
                                                       (_hd1523715275_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e1523615271_))))
                                                   (if (gx#stx-pair/null?
                                                        _hd1523715275_)
                                                       (let ((___splice2323323234_
                                                              (gx#syntax-split-splice
                                                               _hd1523715275_
                                                               '0)))
                                                         (let ((_tl1524115284_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref ___splice2323323234_ '1)))
                       (_target1523915281_
                        (let ()
                          (declare (not safe))
                          (##vector-ref ___splice2323323234_ '0))))
                   (if (gx#stx-null? _tl1524115284_)
                       (___match2325123252_
                        _e1523615271_
                        _hd1523715275_
                        _tl1523815278_
                        ___splice2323323234_
                        _target1523915281_
                        _tl1524115284_)
                       (___kont2323523236_))))
               (___kont2323523236_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (___kont2323523236_))))))))
                               _g1519815209_))))
                      (_g1519615423_ _e15191_))))
                 (_datum-dispatch-index13027_
                  (lambda (_datums15063_)
                    (let _lp15066_ ((_rest15069_ _datums15063_)
                                    (_ix15071_ '0)
                                    (_r15072_ '()))
                      (let* ((___stx2325423255_ _rest15069_)
                             (_g1507515096_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2325423255_))))
                        (let ((___kont2325723258_
                               (lambda (_L15154_ _L15156_)
                                 (_lp15066_
                                  _L15154_
                                  (let ()
                                    (declare (not safe))
                                    (fx+ _ix15071_ '1))
                                  (foldl (lambda (_x15175_ _r15177_)
                                           (let ((__tmp24824
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _x15175_
                                                          _ix15071_))))
                                             (declare (not safe))
                                             (cons __tmp24824 _r15177_)))
                                         _r15072_
                                         (foldr (lambda (_g1517815181_
                                                         _g1517915184_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _g1517815181_
                                                          _g1517915184_)))
                                                '()
                                                _L15156_)))))
                              (___kont2326123262_ (lambda () _r15072_)))
                          (let ((___match2327723278_
                                 (lambda (_e1507915114_
                                          _hd1508015118_
                                          _tl1508115121_
                                          ___splice2325923260_
                                          _target1508215124_
                                          _tl1508415127_)
                                   (letrec ((_loop1508515130_
                                             (lambda (_hd1508315134_
                                                      _datum1508915137_)
                                               (if (gx#stx-pair?
                                                    _hd1508315134_)
                                                   (let ((_e1508615140_
                                                          (gx#syntax-e
                                                           _hd1508315134_)))
                                                     (let ((_lp-tl1508815147_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e1508615140_)))
                                                           (_lp-hd1508715144_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e1508615140_))))
                                                       (_loop1508515130_
                                                        _lp-tl1508815147_
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _lp-hd1508715144_
                                                                _datum1508915137_)))))
                                                   (let ((_datum1509015150_
                                                          (reverse _datum1508915137_)))
                                                     (___kont2325723258_
                                                      _tl1508115121_
                                                      _datum1509015150_))))))
                                     (_loop1508515130_
                                      _target1508215124_
                                      '())))))
                            (if (gx#stx-pair? ___stx2325423255_)
                                (let ((_e1507915114_
                                       (gx#syntax-e ___stx2325423255_)))
                                  (let ((_tl1508115121_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1507915114_)))
                                        (_hd1508015118_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1507915114_))))
                                    (if (gx#stx-pair/null? _hd1508015118_)
                                        (let ((___splice2325923260_
                                               (gx#syntax-split-splice
                                                _hd1508015118_
                                                '0)))
                                          (let ((_tl1508415127_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice2325923260_
                                                    '1)))
                                                (_target1508215124_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice2325923260_
                                                    '0))))
                                            (if (gx#stx-null? _tl1508415127_)
                                                (___match2327723278_
                                                 _e1507915114_
                                                 _hd1508015118_
                                                 _tl1508115121_
                                                 ___splice2325923260_
                                                 _target1508215124_
                                                 _tl1508415127_)
                                                (___kont2326123262_))))
                                        (___kont2326123262_))))
                                (___kont2326123262_))))))))
                 (_duplicate-indexes?13028_
                  (lambda (_xs15044_)
                    (let ((_ht15047_ (make-hash-table-eq)))
                      (let _lp15050_ ((_rest15053_ _xs15044_))
                        (if (let () (declare (not safe)) (pair? _rest15053_))
                            (let* ((_ix15056_ (car _rest15053_))
                                   (_$e15059_ (hash-get _ht15047_ _ix15056_)))
                              (if _$e15059_
                                  _$e15059_
                                  (begin
                                    (hash-put! _ht15047_ _ix15056_ '#t)
                                    (_lp15050_ (cdr _rest15053_)))))
                            '#f)))))
                 (_generate-hash-dispatch-table13029_
                  (lambda (_indexes15013_ _hash-e15015_)
                    (let _lp15017_ ((_len15020_
                                     (* '2 (length _indexes15013_))))
                      (let* ((_hs15026_
                              (map (lambda (_x15023_)
                                     (_hash-e15015_ (car _x15023_)))
                                   _indexes15013_))
                             (_xs15032_
                              (map (lambda (_h15029_)
                                     (fxmodulo _h15029_ _len15020_))
                                   _hs15026_)))
                        (if (_duplicate-indexes?13028_ _xs15032_)
                            (if (< _len15020_ '131072)
                                (_lp15017_ (quotient (fx* _len15020_ '3) '2))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Cannot create perfect dispatch table"
                                 _stx13015_
                                 _indexes15013_))
                            (let ((_tab15037_ (make-vector _len15020_ '#f)))
                              (for-each
                               (lambda (_entry15040_ _x15042_)
                                 (vector-set!
                                  _tab15037_
                                  _x15042_
                                  _entry15040_))
                               _indexes15013_
                               _xs15032_)
                              _tab15037_))))))
                 (_generate-symbolic-dispatch13030_
                  (lambda (_e14616_
                           _datums14618_
                           _dispatch14619_
                           _default14620_)
                    (let* ((_indexes14622_
                            (_datum-dispatch-index13027_ _datums14618_))
                           (_tab14625_
                            (_generate-hash-dispatch-table13029_
                             _indexes14622_
                             symbol-hash)))
                      (if (= (length _dispatch14619_) '1)
                          (let* ((_tab14633_
                                  (vector-map
                                   (lambda (_x14630_)
                                     (if _x14630_ (car _x14630_) '#f))
                                   _tab14625_))
                                 (_g1463614674_
                                  (lambda (_g1463714670_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1463714670_)))
                                 (_g1463514805_
                                  (lambda (_g1463714678_)
                                    (if (gx#stx-pair? _g1463714678_)
                                        (let ((_e1464514681_
                                               (gx#syntax-e _g1463714678_)))
                                          (let ((_hd1464614685_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1464514681_)))
                                                (_tl1464714688_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1464514681_))))
                                            (if (gx#stx-pair? _tl1464714688_)
                                                (let ((_e1464814691_
                                                       (gx#syntax-e
                                                        _tl1464714688_)))
                                                  (let ((_hd1464914695_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1464814691_)))
                                                        (_tl1465014698_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1464814691_))))
                                                    (if (gx#stx-pair?
                                                         _tl1465014698_)
                                                        (let ((_e1465114701_
                                                               (gx#syntax-e
                                                                _tl1465014698_)))
                                                          (let ((_hd1465214705_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1465114701_)))
                        (_tl1465314708_
                         (let () (declare (not safe)) (##cdr _e1465114701_))))
                    (if (gx#stx-pair? _tl1465314708_)
                        (let ((_e1465414711_ (gx#syntax-e _tl1465314708_)))
                          (let ((_hd1465514715_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1465414711_)))
                                (_tl1465614718_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1465414711_))))
                            (if (gx#stx-pair? _hd1465514715_)
                                (let ((_e1465714721_
                                       (gx#syntax-e _hd1465514715_)))
                                  (let ((_hd1465814725_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1465714721_)))
                                        (_tl1465914728_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1465714721_))))
                                    (if (gx#stx-null? _tl1465914728_)
                                        (if (gx#stx-pair? _tl1465614718_)
                                            (let ((_e1466014731_
                                                   (gx#syntax-e
                                                    _tl1465614718_)))
                                              (let ((_hd1466114735_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1466014731_)))
                                                    (_tl1466214738_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1466014731_))))
                                                (if (gx#stx-pair?
                                                     _tl1466214738_)
                                                    (let ((_e1466314741_
                                                           (gx#syntax-e
                                                            _tl1466214738_)))
                                                      (let ((_hd1466414745_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1466314741_)))
                    (_tl1466514748_
                     (let () (declare (not safe)) (##cdr _e1466314741_))))
                (if (gx#stx-pair? _tl1466514748_)
                    (let ((_e1466614751_ (gx#syntax-e _tl1466514748_)))
                      (let ((_hd1466714755_
                             (let ()
                               (declare (not safe))
                               (##car _e1466614751_)))
                            (_tl1466814758_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1466614751_))))
                        (if (gx#stx-null? _tl1466814758_)
                            ((lambda (_L14761_
                                      _L14763_
                                      _L14764_
                                      _L14765_
                                      _L14766_
                                      _L14767_
                                      _L14768_)
                               (let ()
                                 (let ((__tmp24889 (gx#datum->syntax '#f 'let))
                                       (__tmp24825
                                        (let ((__tmp24876
                                               (let ((__tmp24883
                                                      (let ((__tmp24884
                                                             (let ((__tmp24885
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp24888 (gx#datum->syntax '#f 'lambda))
                                  (__tmp24886
                                   (let ((__tmp24887
                                          (let ()
                                            (declare (not safe))
                                            (cons _L14764_ '()))))
                                     (declare (not safe))
                                     (cons '() __tmp24887))))
                              (declare (not safe))
                              (cons __tmp24888 __tmp24886))))
                       (declare (not safe))
                       (cons __tmp24885 '()))))
                (declare (not safe))
                (cons _L14767_ __tmp24884)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp24877
                                                      (let ((__tmp24878
                                                             (let ((__tmp24879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp24880
                                   (let ((__tmp24882
                                          (gx#datum->syntax '#f 'quote))
                                         (__tmp24881
                                          (let ()
                                            (declare (not safe))
                                            (cons _L14763_ '()))))
                                     (declare (not safe))
                                     (cons __tmp24882 __tmp24881))))
                              (declare (not safe))
                              (cons __tmp24880 '()))))
                       (declare (not safe))
                       (cons _L14766_ __tmp24879))))
                (declare (not safe))
                (cons __tmp24878 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24883 __tmp24877)))
                                              (__tmp24826
                                               (let ((__tmp24827
                                                      (let ((__tmp24875
                                                             (gx#datum->syntax
                                                              '#f
                                                              'if))
                                                            (__tmp24828
                                                             (let ((__tmp24872
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp24874 (gx#datum->syntax '#f 'symbol?))
                                  (__tmp24873
                                   (let ()
                                     (declare (not safe))
                                     (cons _L14768_ '()))))
                              (declare (not safe))
                              (cons __tmp24874 __tmp24873)))
                           (__tmp24829
                            (let ((__tmp24832
                                   (let ((__tmp24871
                                          (gx#datum->syntax '#f 'let*))
                                         (__tmp24833
                                          (let ((__tmp24846
                                                 (let ((__tmp24865
                                                        (let ((__tmp24870
                                                               (gx#datum->syntax
                                                                '#f
                                                                'h))
                                                              (__tmp24866
                                                               (let ((__tmp24867
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp24869
                                     (gx#datum->syntax '#f '##symbol-hash))
                                    (__tmp24868
                                     (let ()
                                       (declare (not safe))
                                       (cons _L14768_ '()))))
                                (declare (not safe))
                                (cons __tmp24869 __tmp24868))))
                         (declare (not safe))
                         (cons __tmp24867 '()))))
                  (declare (not safe))
                  (cons __tmp24870 __tmp24866)))
               (__tmp24847
                (let ((__tmp24857
                       (let ((__tmp24864 (gx#datum->syntax '#f 'ix))
                             (__tmp24858
                              (let ((__tmp24859
                                     (let ((__tmp24863
                                            (gx#datum->syntax '#f '##fxmodulo))
                                           (__tmp24860
                                            (let ((__tmp24862
                                                   (gx#datum->syntax '#f 'h))
                                                  (__tmp24861
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L14761_ '()))))
                                              (declare (not safe))
                                              (cons __tmp24862 __tmp24861))))
                                       (declare (not safe))
                                       (cons __tmp24863 __tmp24860))))
                                (declare (not safe))
                                (cons __tmp24859 '()))))
                         (declare (not safe))
                         (cons __tmp24864 __tmp24858)))
                      (__tmp24848
                       (let ((__tmp24849
                              (let ((__tmp24856 (gx#datum->syntax '#f 'q))
                                    (__tmp24850
                                     (let ((__tmp24851
                                            (let ((__tmp24855
                                                   (gx#datum->syntax
                                                    '#f
                                                    '##vector-ref))
                                                  (__tmp24852
                                                   (let ((__tmp24853
                                                          (let ((__tmp24854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'ix)))
                    (declare (not safe))
                    (cons __tmp24854 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _L14766_
                                                           __tmp24853))))
                                              (declare (not safe))
                                              (cons __tmp24855 __tmp24852))))
                                       (declare (not safe))
                                       (cons __tmp24851 '()))))
                                (declare (not safe))
                                (cons __tmp24856 __tmp24850))))
                         (declare (not safe))
                         (cons __tmp24849 '()))))
                  (declare (not safe))
                  (cons __tmp24857 __tmp24848))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24865
                                                         __tmp24847)))
                                                (__tmp24834
                                                 (let ((__tmp24835
                                                        (let ((__tmp24845
                                                               (gx#datum->syntax
                                                                '#f
                                                                'if))
                                                              (__tmp24836
                                                               (let ((__tmp24840
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp24844 (gx#datum->syntax '#f 'eq?))
                                    (__tmp24841
                                     (let ((__tmp24843
                                            (gx#datum->syntax '#f 'q))
                                           (__tmp24842
                                            (let ()
                                              (declare (not safe))
                                              (cons _L14768_ '()))))
                                       (declare (not safe))
                                       (cons __tmp24843 __tmp24842))))
                                (declare (not safe))
                                (cons __tmp24844 __tmp24841)))
                             (__tmp24837
                              (let ((__tmp24838
                                     (let ((__tmp24839
                                            (let ()
                                              (declare (not safe))
                                              (cons _L14767_ '()))))
                                       (declare (not safe))
                                       (cons __tmp24839 '()))))
                                (declare (not safe))
                                (cons _L14765_ __tmp24838))))
                         (declare (not safe))
                         (cons __tmp24840 __tmp24837))))
                  (declare (not safe))
                  (cons __tmp24845 __tmp24836))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp24835 '()))))
                                            (declare (not safe))
                                            (cons __tmp24846 __tmp24834))))
                                     (declare (not safe))
                                     (cons __tmp24871 __tmp24833)))
                                  (__tmp24830
                                   (let ((__tmp24831
                                          (let ()
                                            (declare (not safe))
                                            (cons _L14767_ '()))))
                                     (declare (not safe))
                                     (cons __tmp24831 '()))))
                              (declare (not safe))
                              (cons __tmp24832 __tmp24830))))
                       (declare (not safe))
                       (cons __tmp24872 __tmp24829))))
                (declare (not safe))
                (cons __tmp24875 __tmp24828))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24827 '()))))
                                          (declare (not safe))
                                          (cons __tmp24876 __tmp24826))))
                                   (declare (not safe))
                                   (cons __tmp24889 __tmp24825))))
                             _hd1466714755_
                             _hd1466414745_
                             _hd1466114735_
                             _hd1465814725_
                             _hd1465214705_
                             _hd1464914695_
                             _hd1464614685_)
                            (_g1463614674_ _g1463714678_))))
                    (_g1463614674_ _g1463714678_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1463614674_
                                                     _g1463714678_))))
                                            (_g1463614674_ _g1463714678_))
                                        (_g1463614674_ _g1463714678_))))
                                (_g1463614674_ _g1463714678_))))
                        (_g1463614674_ _g1463714678_))))
                (_g1463614674_ _g1463714678_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1463614674_
                                                 _g1463714678_))))
                                        (_g1463614674_ _g1463714678_)))))
                            (_g1463514805_
                             (list _e14616_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch14619_
                                   _default14620_
                                   _tab14633_
                                   (vector-length _tab14633_))))
                          (let* ((_g1480914853_
                                  (lambda (_g1481014849_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1481014849_)))
                                 (_g1480815009_
                                  (lambda (_g1481014857_)
                                    (if (gx#stx-pair? _g1481014857_)
                                        (let ((_e1481814860_
                                               (gx#syntax-e _g1481014857_)))
                                          (let ((_hd1481914864_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1481814860_)))
                                                (_tl1482014867_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1481814860_))))
                                            (if (gx#stx-pair? _tl1482014867_)
                                                (let ((_e1482114870_
                                                       (gx#syntax-e
                                                        _tl1482014867_)))
                                                  (let ((_hd1482214874_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1482114870_)))
                                                        (_tl1482314877_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1482114870_))))
                                                    (if (gx#stx-pair?
                                                         _tl1482314877_)
                                                        (let ((_e1482414880_
                                                               (gx#syntax-e
                                                                _tl1482314877_)))
                                                          (let ((_hd1482514884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1482414880_)))
                        (_tl1482614887_
                         (let () (declare (not safe)) (##cdr _e1482414880_))))
                    (if (gx#stx-pair? _tl1482614887_)
                        (let ((_e1482714890_ (gx#syntax-e _tl1482614887_)))
                          (let ((_hd1482814894_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1482714890_)))
                                (_tl1482914897_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1482714890_))))
                            (if (gx#stx-pair/null? _hd1482814894_)
                                (let ((_g24890_
                                       (gx#syntax-split-splice
                                        _hd1482814894_
                                        '0)))
                                  (begin
                                    (let ((_g24891_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g24890_)
                                                 (##vector-length _g24890_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g24891_ 2)))
                                          (error "Context expects 2 values"
                                                 _g24891_)))
                                    (let ((_target1483014900_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g24890_ 0)))
                                          (_tl1483214903_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g24890_ 1))))
                                      (if (gx#stx-null? _tl1483214903_)
                                          (letrec ((_loop1483314906_
                                                    (lambda (_hd1483114910_
                                                             _dispatch1483714913_)
                                                      (if (gx#stx-pair?
                                                           _hd1483114910_)
                                                          (let ((_e1483414916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1483114910_)))
                    (let ((_lp-hd1483514920_
                           (let () (declare (not safe)) (##car _e1483414916_)))
                          (_lp-tl1483614923_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1483414916_))))
                      (_loop1483314906_
                       _lp-tl1483614923_
                       (let ()
                         (declare (not safe))
                         (cons _lp-hd1483514920_ _dispatch1483714913_)))))
                  (let ((_dispatch1483814926_ (reverse _dispatch1483714913_)))
                    (if (gx#stx-pair? _tl1482914897_)
                        (let ((_e1483914930_ (gx#syntax-e _tl1482914897_)))
                          (let ((_hd1484014934_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1483914930_)))
                                (_tl1484114937_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1483914930_))))
                            (if (gx#stx-pair? _tl1484114937_)
                                (let ((_e1484214940_
                                       (gx#syntax-e _tl1484114937_)))
                                  (let ((_hd1484314944_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1484214940_)))
                                        (_tl1484414947_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1484214940_))))
                                    (if (gx#stx-pair? _tl1484414947_)
                                        (let ((_e1484514950_
                                               (gx#syntax-e _tl1484414947_)))
                                          (let ((_hd1484614954_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1484514950_)))
                                                (_tl1484714957_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1484514950_))))
                                            (if (gx#stx-null? _tl1484714957_)
                                                ((lambda (_L14960_
                                                          _L14962_
                                                          _L14963_
                                                          _L14964_
                                                          _L14965_
                                                          _L14966_
                                                          _L14967_)
                                                   (let ()
                                                     (let ((__tmp24982
                                                            (gx#datum->syntax
                                                             '#f
                                                             'let))
                                                           (__tmp24892
                                                            (let ((__tmp24969
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp24976
                                  (let ((__tmp24977
                                         (let ((__tmp24978
                                                (let ((__tmp24981
                                                       (gx#datum->syntax
                                                        '#f
                                                        'lambda))
                                                      (__tmp24979
                                                       (let ((__tmp24980
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L14963_ '()))))
                 (declare (not safe))
                 (cons '() __tmp24980))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp24981
                                                        __tmp24979))))
                                           (declare (not safe))
                                           (cons __tmp24978 '()))))
                                    (declare (not safe))
                                    (cons _L14966_ __tmp24977)))
                                 (__tmp24970
                                  (let ((__tmp24971
                                         (let ((__tmp24972
                                                (let ((__tmp24973
                                                       (let ((__tmp24975
                                                              (gx#datum->syntax
                                                               '#f
                                                               'quote))
                                                             (__tmp24974
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L14962_ '()))))
                 (declare (not safe))
                 (cons __tmp24975 __tmp24974))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp24973 '()))))
                                           (declare (not safe))
                                           (cons _L14965_ __tmp24972))))
                                    (declare (not safe))
                                    (cons __tmp24971 '()))))
                             (declare (not safe))
                             (cons __tmp24976 __tmp24970)))
                          (__tmp24893
                           (let ((__tmp24894
                                  (let ((__tmp24968 (gx#datum->syntax '#f 'if))
                                        (__tmp24895
                                         (let ((__tmp24965
                                                (let ((__tmp24967
                                                       (gx#datum->syntax
                                                        '#f
                                                        'symbol?))
                                                      (__tmp24966
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L14967_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp24967
                                                        __tmp24966)))
                                               (__tmp24896
                                                (let ((__tmp24899
                                                       (let ((__tmp24964
                                                              (gx#datum->syntax
                                                               '#f
                                                               'let*))
                                                             (__tmp24900
                                                              (let ((__tmp24939
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp24958
                                    (let ((__tmp24963
                                           (gx#datum->syntax '#f 'h))
                                          (__tmp24959
                                           (let ((__tmp24960
                                                  (let ((__tmp24962
                                                         (gx#datum->syntax
                                                          '#f
                                                          '##symbol-hash))
                                                        (__tmp24961
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L14967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24962
                                                          __tmp24961))))
                                             (declare (not safe))
                                             (cons __tmp24960 '()))))
                                      (declare (not safe))
                                      (cons __tmp24963 __tmp24959)))
                                   (__tmp24940
                                    (let ((__tmp24950
                                           (let ((__tmp24957
                                                  (gx#datum->syntax '#f 'ix))
                                                 (__tmp24951
                                                  (let ((__tmp24952
                                                         (let ((__tmp24956
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '##fxmodulo))
                       (__tmp24953
                        (let ((__tmp24955 (gx#datum->syntax '#f 'h))
                              (__tmp24954
                               (let ()
                                 (declare (not safe))
                                 (cons _L14960_ '()))))
                          (declare (not safe))
                          (cons __tmp24955 __tmp24954))))
                   (declare (not safe))
                   (cons __tmp24956 __tmp24953))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24952 '()))))
                                             (declare (not safe))
                                             (cons __tmp24957 __tmp24951)))
                                          (__tmp24941
                                           (let ((__tmp24942
                                                  (let ((__tmp24949
                                                         (gx#datum->syntax
                                                          '#f
                                                          'q))
                                                        (__tmp24943
                                                         (let ((__tmp24944
                                                                (let ((__tmp24948
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##vector-ref))
                              (__tmp24945
                               (let ((__tmp24946
                                      (let ((__tmp24947
                                             (gx#datum->syntax '#f 'ix)))
                                        (declare (not safe))
                                        (cons __tmp24947 '()))))
                                 (declare (not safe))
                                 (cons _L14965_ __tmp24946))))
                          (declare (not safe))
                          (cons __tmp24948 __tmp24945))))
                   (declare (not safe))
                   (cons __tmp24944 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24949
                                                          __tmp24943))))
                                             (declare (not safe))
                                             (cons __tmp24942 '()))))
                                      (declare (not safe))
                                      (cons __tmp24950 __tmp24941))))
                               (declare (not safe))
                               (cons __tmp24958 __tmp24940)))
                            (__tmp24901
                             (let ((__tmp24902
                                    (let ((__tmp24938
                                           (gx#datum->syntax '#f 'if))
                                          (__tmp24903
                                           (let ((__tmp24937
                                                  (gx#datum->syntax '#f 'q))
                                                 (__tmp24904
                                                  (let ((__tmp24907
                                                         (let ((__tmp24936
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if))
                       (__tmp24908
                        (let ((__tmp24928
                               (let ((__tmp24935 (gx#datum->syntax '#f 'eq?))
                                     (__tmp24929
                                      (let ((__tmp24931
                                             (let ((__tmp24934
                                                    (gx#datum->syntax
                                                     '#f
                                                     '##car))
                                                   (__tmp24932
                                                    (let ((__tmp24933
                                                           (gx#datum->syntax
                                                            '#f
                                                            'q)))
                                                      (declare (not safe))
                                                      (cons __tmp24933 '()))))
                                               (declare (not safe))
                                               (cons __tmp24934 __tmp24932)))
                                            (__tmp24930
                                             (let ()
                                               (declare (not safe))
                                               (cons _L14967_ '()))))
                                        (declare (not safe))
                                        (cons __tmp24931 __tmp24930))))
                                 (declare (not safe))
                                 (cons __tmp24935 __tmp24929)))
                              (__tmp24909
                               (let ((__tmp24912
                                      (let ((__tmp24927
                                             (gx#datum->syntax '#f 'let))
                                            (__tmp24913
                                             (let ((__tmp24920
                                                    (let ((__tmp24926
                                                           (gx#datum->syntax
                                                            '#f
                                                            'x))
                                                          (__tmp24921
                                                           (let ((__tmp24922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp24925 (gx#datum->syntax '#f '##cdr))
                                (__tmp24923
                                 (let ((__tmp24924 (gx#datum->syntax '#f 'q)))
                                   (declare (not safe))
                                   (cons __tmp24924 '()))))
                            (declare (not safe))
                            (cons __tmp24925 __tmp24923))))
                     (declare (not safe))
                     (cons __tmp24922 '()))))
              (declare (not safe))
              (cons __tmp24926 __tmp24921)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp24914
                                                    (let ((__tmp24915
                                                           (let ((__tmp24919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '~case-dispatch))
                         (__tmp24916
                          (let ((__tmp24918 (gx#datum->syntax '#f 'x))
                                (__tmp24917
                                 (foldr (lambda (_g1500015003_ _g1500115006_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g1500015003_
                                                  _g1500115006_)))
                                        '()
                                        _L14964_)))
                            (declare (not safe))
                            (cons __tmp24918 __tmp24917))))
                     (declare (not safe))
                     (cons __tmp24919 __tmp24916))))
              (declare (not safe))
              (cons __tmp24915 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp24920 __tmp24914))))
                                        (declare (not safe))
                                        (cons __tmp24927 __tmp24913)))
                                     (__tmp24910
                                      (let ((__tmp24911
                                             (let ()
                                               (declare (not safe))
                                               (cons _L14966_ '()))))
                                        (declare (not safe))
                                        (cons __tmp24911 '()))))
                                 (declare (not safe))
                                 (cons __tmp24912 __tmp24910))))
                          (declare (not safe))
                          (cons __tmp24928 __tmp24909))))
                   (declare (not safe))
                   (cons __tmp24936 __tmp24908)))
                (__tmp24905
                 (let ((__tmp24906
                        (let () (declare (not safe)) (cons _L14966_ '()))))
                   (declare (not safe))
                   (cons __tmp24906 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp24907
                                                          __tmp24905))))
                                             (declare (not safe))
                                             (cons __tmp24937 __tmp24904))))
                                      (declare (not safe))
                                      (cons __tmp24938 __tmp24903))))
                               (declare (not safe))
                               (cons __tmp24902 '()))))
                        (declare (not safe))
                        (cons __tmp24939 __tmp24901))))
                 (declare (not safe))
                 (cons __tmp24964 __tmp24900)))
              (__tmp24897
               (let ((__tmp24898
                      (let () (declare (not safe)) (cons _L14966_ '()))))
                 (declare (not safe))
                 (cons __tmp24898 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp24899
                                                        __tmp24897))))
                                           (declare (not safe))
                                           (cons __tmp24965 __tmp24896))))
                                    (declare (not safe))
                                    (cons __tmp24968 __tmp24895))))
                             (declare (not safe))
                             (cons __tmp24894 '()))))
                      (declare (not safe))
                      (cons __tmp24969 __tmp24893))))
               (declare (not safe))
               (cons __tmp24982 __tmp24892))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1484614954_
                                                 _hd1484314944_
                                                 _hd1484014934_
                                                 _dispatch1483814926_
                                                 _hd1482514884_
                                                 _hd1482214874_
                                                 _hd1481914864_)
                                                (_g1480914853_
                                                 _g1481014857_))))
                                        (_g1480914853_ _g1481014857_))))
                                (_g1480914853_ _g1481014857_))))
                        (_g1480914853_ _g1481014857_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1483314906_
                                             _target1483014900_
                                             '()))
                                          (_g1480914853_ _g1481014857_)))))
                                (_g1480914853_ _g1481014857_))))
                        (_g1480914853_ _g1481014857_))))
                (_g1480914853_ _g1481014857_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1480914853_
                                                 _g1481014857_))))
                                        (_g1480914853_ _g1481014857_)))))
                            (_g1480815009_
                             (list _e14616_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch14619_
                                   _default14620_
                                   _tab14625_
                                   (vector-length _tab14625_))))))))
                 (_max-char13031_
                  (lambda (_datums14605_)
                    (foldl (lambda (_lst14608_ _r14610_)
                             (foldl (lambda (_char14612_ _r14614_)
                                      (max (char->integer _char14612_)
                                           _r14614_))
                                    _r14610_
                                    _lst14608_))
                           '0
                           _datums14605_)))
                 (_generate-char-dispatch-table13032_
                  (lambda (_indexes14584_)
                    (let* ((_ixs14590_
                            (map (lambda (_x14587_)
                                   (char->integer (car _x14587_)))
                                 _indexes14584_))
                           (_len14593_
                            (let ((__tmp24983 (foldl max '0 _ixs14590_)))
                              (declare (not safe))
                              (fx+ __tmp24983 '1)))
                           (_vec14596_ (make-vector _len14593_ '#f)))
                      (for-each
                       (lambda (_entry14601_ _x14603_)
                         (vector-set! _vec14596_ _x14603_ (cdr _entry14601_)))
                       _indexes14584_
                       _ixs14590_)
                      _vec14596_)))
                 (_simple-char-range?13033_
                  (lambda (_tab14560_)
                    (let ((_end14563_ (vector-length _tab14560_)))
                      (let _lp14566_ ((_i14569_ '0))
                        (let ((_ix14572_ (vector-ref _tab14560_ _i14569_)))
                          (if _ix14572_
                              (let _lp214575_ ((_i14578_
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _i14569_ '1))))
                                (if (fx< _i14578_ _end14563_)
                                    (let ((_ix*14581_
                                           (vector-ref _tab14560_ _i14578_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (eq? _ix14572_ _ix*14581_))
                                          (_lp214575_
                                           (let ()
                                             (declare (not safe))
                                             (fx+ _i14578_ '1)))
                                          '#f))
                                    '#t))
                              (_lp14566_
                               (let ()
                                 (declare (not safe))
                                 (fx+ _i14569_ '1)))))))))
                 (_char-range-start13034_
                  (lambda (_tab14551_)
                    (let _lp14554_ ((_i14557_ '0))
                      (if (vector-ref _tab14551_ _i14557_)
                          _i14557_
                          (_lp14554_
                           (let () (declare (not safe)) (fx+ _i14557_ '1)))))))
                 (_generate-char-dispatch13035_
                  (lambda (_e14174_
                           _datums14176_
                           _dispatch14177_
                           _default14178_)
                    (if (< (_max-char13031_ _datums14176_) '128)
                        (let* ((_indexes14180_
                                (_datum-dispatch-index13027_ _datums14176_))
                               (_tab14183_
                                (_generate-char-dispatch-table13032_
                                 _indexes14180_)))
                          (if (_simple-char-range?13033_ _tab14183_)
                              (let ((_start14188_
                                     (_char-range-start13034_ _tab14183_))
                                    (_end14190_ (vector-length _tab14183_)))
                                (let* ((_g1419214226_
                                        (lambda (_g1419314222_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _g1419314222_)))
                                       (_g1419114343_
                                        (lambda (_g1419314230_)
                                          (if (gx#stx-pair? _g1419314230_)
                                              (let ((_e1420014233_
                                                     (gx#syntax-e
                                                      _g1419314230_)))
                                                (let ((_hd1420114237_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1420014233_)))
                                                      (_tl1420214240_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1420014233_))))
                                                  (if (gx#stx-pair?
                                                       _tl1420214240_)
                                                      (let ((_e1420314243_
                                                             (gx#syntax-e
                                                              _tl1420214240_)))
                                                        (let ((_hd1420414247_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1420314243_)))
                      (_tl1420514250_
                       (let () (declare (not safe)) (##cdr _e1420314243_))))
                  (if (gx#stx-pair? _tl1420514250_)
                      (let ((_e1420614253_ (gx#syntax-e _tl1420514250_)))
                        (let ((_hd1420714257_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1420614253_)))
                              (_tl1420814260_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1420614253_))))
                          (if (gx#stx-pair? _hd1420714257_)
                              (let ((_e1420914263_
                                     (gx#syntax-e _hd1420714257_)))
                                (let ((_hd1421014267_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1420914263_)))
                                      (_tl1421114270_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1420914263_))))
                                  (if (gx#stx-null? _tl1421114270_)
                                      (if (gx#stx-pair? _tl1420814260_)
                                          (let ((_e1421214273_
                                                 (gx#syntax-e _tl1420814260_)))
                                            (let ((_hd1421314277_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1421214273_)))
                                                  (_tl1421414280_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1421214273_))))
                                              (if (gx#stx-pair? _tl1421414280_)
                                                  (let ((_e1421514283_
                                                         (gx#syntax-e
                                                          _tl1421414280_)))
                                                    (let ((_hd1421614287_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1421514283_)))
                                                          (_tl1421714290_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1421514283_))))
                                                      (if (gx#stx-pair?
                                                           _tl1421714290_)
                                                          (let ((_e1421814293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1421714290_)))
                    (let ((_hd1421914297_
                           (let () (declare (not safe)) (##car _e1421814293_)))
                          (_tl1422014300_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1421814293_))))
                      (if (gx#stx-null? _tl1422014300_)
                          ((lambda (_L14303_
                                    _L14305_
                                    _L14306_
                                    _L14307_
                                    _L14308_
                                    _L14309_)
                             (let ()
                               (let ((__tmp25031 (gx#datum->syntax '#f 'let))
                                     (__tmp24984
                                      (let ((__tmp25025
                                             (let ((__tmp25026
                                                    (let ((__tmp25027
                                                           (let ((__tmp25030
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'lambda))
                         (__tmp25028
                          (let ((__tmp25029
                                 (let ()
                                   (declare (not safe))
                                   (cons _L14306_ '()))))
                            (declare (not safe))
                            (cons '() __tmp25029))))
                     (declare (not safe))
                     (cons __tmp25030 __tmp25028))))
              (declare (not safe))
              (cons __tmp25027 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L14308_ __tmp25026)))
                                            (__tmp24985
                                             (let ((__tmp24986
                                                    (let ((__tmp25024
                                                           (gx#datum->syntax
                                                            '#f
                                                            'if))
                                                          (__tmp24987
                                                           (let ((__tmp25021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp25023 (gx#datum->syntax '#f 'char?))
                                (__tmp25022
                                 (let ()
                                   (declare (not safe))
                                   (cons _L14309_ '()))))
                            (declare (not safe))
                            (cons __tmp25023 __tmp25022)))
                         (__tmp24988
                          (let ((__tmp24991
                                 (let ((__tmp25020 (gx#datum->syntax '#f 'let))
                                       (__tmp24992
                                        (let ((__tmp25014
                                               (let ((__tmp25019
                                                      (gx#datum->syntax
                                                       '#f
                                                       'ix))
                                                     (__tmp25015
                                                      (let ((__tmp25016
                                                             (let ((__tmp25018
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '##char->integer))
                           (__tmp25017
                            (let () (declare (not safe)) (cons _L14309_ '()))))
                       (declare (not safe))
                       (cons __tmp25018 __tmp25017))))
                (declare (not safe))
                (cons __tmp25016 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25019 __tmp25015)))
                                              (__tmp24993
                                               (let ((__tmp24994
                                                      (let ((__tmp25013
                                                             (gx#datum->syntax
                                                              '#f
                                                              'if))
                                                            (__tmp24995
                                                             (let ((__tmp24999
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp25012 (gx#datum->syntax '#f 'and))
                                  (__tmp25000
                                   (let ((__tmp25007
                                          (let ((__tmp25011
                                                 (gx#datum->syntax
                                                  '#f
                                                  '##fx>=))
                                                (__tmp25008
                                                 (let ((__tmp25010
                                                        (gx#datum->syntax
                                                         '#f
                                                         'ix))
                                                       (__tmp25009
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _L14305_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp25010
                                                         __tmp25009))))
                                            (declare (not safe))
                                            (cons __tmp25011 __tmp25008)))
                                         (__tmp25001
                                          (let ((__tmp25002
                                                 (let ((__tmp25006
                                                        (gx#datum->syntax
                                                         '#f
                                                         '##fx<))
                                                       (__tmp25003
                                                        (let ((__tmp25005
                                                               (gx#datum->syntax
                                                                '#f
                                                                'ix))
                                                              (__tmp25004
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L14303_ '()))))
                  (declare (not safe))
                  (cons __tmp25005 __tmp25004))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25006
                                                         __tmp25003))))
                                            (declare (not safe))
                                            (cons __tmp25002 '()))))
                                     (declare (not safe))
                                     (cons __tmp25007 __tmp25001))))
                              (declare (not safe))
                              (cons __tmp25012 __tmp25000)))
                           (__tmp24996
                            (let ((__tmp24997
                                   (let ((__tmp24998
                                          (let ()
                                            (declare (not safe))
                                            (cons _L14308_ '()))))
                                     (declare (not safe))
                                     (cons __tmp24998 '()))))
                              (declare (not safe))
                              (cons _L14307_ __tmp24997))))
                       (declare (not safe))
                       (cons __tmp24999 __tmp24996))))
                (declare (not safe))
                (cons __tmp25013 __tmp24995))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp24994 '()))))
                                          (declare (not safe))
                                          (cons __tmp25014 __tmp24993))))
                                   (declare (not safe))
                                   (cons __tmp25020 __tmp24992)))
                                (__tmp24989
                                 (let ((__tmp24990
                                        (let ()
                                          (declare (not safe))
                                          (cons _L14308_ '()))))
                                   (declare (not safe))
                                   (cons __tmp24990 '()))))
                            (declare (not safe))
                            (cons __tmp24991 __tmp24989))))
                     (declare (not safe))
                     (cons __tmp25021 __tmp24988))))
              (declare (not safe))
              (cons __tmp25024 __tmp24987))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp24986 '()))))
                                        (declare (not safe))
                                        (cons __tmp25025 __tmp24985))))
                                 (declare (not safe))
                                 (cons __tmp25031 __tmp24984))))
                           _hd1421914297_
                           _hd1421614287_
                           _hd1421314277_
                           _hd1421014267_
                           _hd1420414247_
                           _hd1420114237_)
                          (_g1419214226_ _g1419314230_))))
                  (_g1419214226_ _g1419314230_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1419214226_
                                                   _g1419314230_))))
                                          (_g1419214226_ _g1419314230_))
                                      (_g1419214226_ _g1419314230_))))
                              (_g1419214226_ _g1419314230_))))
                      (_g1419214226_ _g1419314230_))))
              (_g1419214226_ _g1419314230_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1419214226_ _g1419314230_)))))
                                  (_g1419114343_
                                   (list _e14174_
                                         (gx#genident 'default)
                                         _dispatch14177_
                                         _default14178_
                                         _start14188_
                                         _end14190_))))
                              (let* ((_g1434714391_
                                      (lambda (_g1434814387_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g1434814387_)))
                                     (_g1434614547_
                                      (lambda (_g1434814395_)
                                        (if (gx#stx-pair? _g1434814395_)
                                            (let ((_e1435614398_
                                                   (gx#syntax-e
                                                    _g1434814395_)))
                                              (let ((_hd1435714402_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1435614398_)))
                                                    (_tl1435814405_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1435614398_))))
                                                (if (gx#stx-pair?
                                                     _tl1435814405_)
                                                    (let ((_e1435914408_
                                                           (gx#syntax-e
                                                            _tl1435814405_)))
                                                      (let ((_hd1436014412_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1435914408_)))
                    (_tl1436114415_
                     (let () (declare (not safe)) (##cdr _e1435914408_))))
                (if (gx#stx-pair? _tl1436114415_)
                    (let ((_e1436214418_ (gx#syntax-e _tl1436114415_)))
                      (let ((_hd1436314422_
                             (let ()
                               (declare (not safe))
                               (##car _e1436214418_)))
                            (_tl1436414425_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1436214418_))))
                        (if (gx#stx-pair? _tl1436414425_)
                            (let ((_e1436514428_ (gx#syntax-e _tl1436414425_)))
                              (let ((_hd1436614432_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1436514428_)))
                                    (_tl1436714435_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1436514428_))))
                                (if (gx#stx-pair/null? _hd1436614432_)
                                    (let ((_g25032_
                                           (gx#syntax-split-splice
                                            _hd1436614432_
                                            '0)))
                                      (begin
                                        (let ((_g25033_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g25032_)
                                                     (##vector-length _g25032_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g25033_ 2)))
                                              (error "Context expects 2 values"
                                                     _g25033_)))
                                        (let ((_target1436814438_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g25032_ 0)))
                                              (_tl1437014441_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g25032_ 1))))
                                          (if (gx#stx-null? _tl1437014441_)
                                              (letrec ((_loop1437114444_
                                                        (lambda (_hd1436914448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _dispatch1437514451_)
                  (if (gx#stx-pair? _hd1436914448_)
                      (let ((_e1437214454_ (gx#syntax-e _hd1436914448_)))
                        (let ((_lp-hd1437314458_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1437214454_)))
                              (_lp-tl1437414461_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1437214454_))))
                          (_loop1437114444_
                           _lp-tl1437414461_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd1437314458_ _dispatch1437514451_)))))
                      (let ((_dispatch1437614464_
                             (reverse _dispatch1437514451_)))
                        (if (gx#stx-pair? _tl1436714435_)
                            (let ((_e1437714468_ (gx#syntax-e _tl1436714435_)))
                              (let ((_hd1437814472_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1437714468_)))
                                    (_tl1437914475_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1437714468_))))
                                (if (gx#stx-pair? _tl1437914475_)
                                    (let ((_e1438014478_
                                           (gx#syntax-e _tl1437914475_)))
                                      (let ((_hd1438114482_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1438014478_)))
                                            (_tl1438214485_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1438014478_))))
                                        (if (gx#stx-pair? _tl1438214485_)
                                            (let ((_e1438314488_
                                                   (gx#syntax-e
                                                    _tl1438214485_)))
                                              (let ((_hd1438414492_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1438314488_)))
                                                    (_tl1438514495_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1438314488_))))
                                                (if (gx#stx-null?
                                                     _tl1438514495_)
                                                    ((lambda (_L14498_
                                                              _L14500_
                                                              _L14501_
                                                              _L14502_
                                                              _L14503_
                                                              _L14504_
                                                              _L14505_)
                                                       (let ()
                                                         (let ((__tmp25103
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let))
                       (__tmp25034
                        (let ((__tmp25090
                               (let ((__tmp25097
                                      (let ((__tmp25098
                                             (let ((__tmp25099
                                                    (let ((__tmp25102
                                                           (gx#datum->syntax
                                                            '#f
                                                            'lambda))
                                                          (__tmp25100
                                                           (let ((__tmp25101
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _L14501_ '()))))
                     (declare (not safe))
                     (cons '() __tmp25101))))
              (declare (not safe))
              (cons __tmp25102 __tmp25100))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp25099 '()))))
                                        (declare (not safe))
                                        (cons _L14504_ __tmp25098)))
                                     (__tmp25091
                                      (let ((__tmp25092
                                             (let ((__tmp25093
                                                    (let ((__tmp25094
                                                           (let ((__tmp25096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp25095
                          (let () (declare (not safe)) (cons _L14500_ '()))))
                     (declare (not safe))
                     (cons __tmp25096 __tmp25095))))
              (declare (not safe))
              (cons __tmp25094 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L14503_ __tmp25093))))
                                        (declare (not safe))
                                        (cons __tmp25092 '()))))
                                 (declare (not safe))
                                 (cons __tmp25097 __tmp25091)))
                              (__tmp25035
                               (let ((__tmp25036
                                      (let ((__tmp25089
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp25037
                                             (let ((__tmp25086
                                                    (let ((__tmp25088
                                                           (gx#datum->syntax
                                                            '#f
                                                            'char?))
                                                          (__tmp25087
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L14505_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp25088 __tmp25087)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp25038
                                                    (let ((__tmp25041
                                                           (let ((__tmp25085
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'let))
                         (__tmp25042
                          (let ((__tmp25079
                                 (let ((__tmp25084 (gx#datum->syntax '#f 'ix))
                                       (__tmp25080
                                        (let ((__tmp25081
                                               (let ((__tmp25083
                                                      (gx#datum->syntax
                                                       '#f
                                                       '##char->integer))
                                                     (__tmp25082
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L14505_ '()))))
                                                 (declare (not safe))
                                                 (cons __tmp25083
                                                       __tmp25082))))
                                          (declare (not safe))
                                          (cons __tmp25081 '()))))
                                   (declare (not safe))
                                   (cons __tmp25084 __tmp25080)))
                                (__tmp25043
                                 (let ((__tmp25044
                                        (let ((__tmp25078
                                               (gx#datum->syntax '#f 'if))
                                              (__tmp25045
                                               (let ((__tmp25073
                                                      (let ((__tmp25077
                                                             (gx#datum->syntax
                                                              '#f
                                                              '##fx<))
                                                            (__tmp25074
                                                             (let ((__tmp25076
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'ix))
                           (__tmp25075
                            (let () (declare (not safe)) (cons _L14498_ '()))))
                       (declare (not safe))
                       (cons __tmp25076 __tmp25075))))
                (declare (not safe))
                (cons __tmp25077 __tmp25074)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp25046
                                                      (let ((__tmp25049
                                                             (let ((__tmp25072
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let))
                           (__tmp25050
                            (let ((__tmp25064
                                   (let ((__tmp25071 (gx#datum->syntax '#f 'x))
                                         (__tmp25065
                                          (let ((__tmp25066
                                                 (let ((__tmp25070
                                                        (gx#datum->syntax
                                                         '#f
                                                         '##vector-ref))
                                                       (__tmp25067
                                                        (let ((__tmp25068
                                                               (let ((__tmp25069
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'ix)))
                         (declare (not safe))
                         (cons __tmp25069 '()))))
                  (declare (not safe))
                  (cons _L14503_ __tmp25068))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25070
                                                         __tmp25067))))
                                            (declare (not safe))
                                            (cons __tmp25066 '()))))
                                     (declare (not safe))
                                     (cons __tmp25071 __tmp25065)))
                                  (__tmp25051
                                   (let ((__tmp25052
                                          (let ((__tmp25063
                                                 (gx#datum->syntax '#f 'if))
                                                (__tmp25053
                                                 (let ((__tmp25062
                                                        (gx#datum->syntax
                                                         '#f
                                                         'x))
                                                       (__tmp25054
                                                        (let ((__tmp25057
                                                               (let ((__tmp25061
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f '~case-dispatch))
                             (__tmp25058
                              (let ((__tmp25060 (gx#datum->syntax '#f 'x))
                                    (__tmp25059
                                     (foldr (lambda (_g1453814541_
                                                     _g1453914544_)
                                              (let ()
                                                (declare (not safe))
                                                (cons _g1453814541_
                                                      _g1453914544_)))
                                            '()
                                            _L14502_)))
                                (declare (not safe))
                                (cons __tmp25060 __tmp25059))))
                         (declare (not safe))
                         (cons __tmp25061 __tmp25058)))
                      (__tmp25055
                       (let ((__tmp25056
                              (let ()
                                (declare (not safe))
                                (cons _L14504_ '()))))
                         (declare (not safe))
                         (cons __tmp25056 '()))))
                  (declare (not safe))
                  (cons __tmp25057 __tmp25055))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25062
                                                         __tmp25054))))
                                            (declare (not safe))
                                            (cons __tmp25063 __tmp25053))))
                                     (declare (not safe))
                                     (cons __tmp25052 '()))))
                              (declare (not safe))
                              (cons __tmp25064 __tmp25051))))
                       (declare (not safe))
                       (cons __tmp25072 __tmp25050)))
                    (__tmp25047
                     (let ((__tmp25048
                            (let () (declare (not safe)) (cons _L14504_ '()))))
                       (declare (not safe))
                       (cons __tmp25048 '()))))
                (declare (not safe))
                (cons __tmp25049 __tmp25047))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25073
                                                       __tmp25046))))
                                          (declare (not safe))
                                          (cons __tmp25078 __tmp25045))))
                                   (declare (not safe))
                                   (cons __tmp25044 '()))))
                            (declare (not safe))
                            (cons __tmp25079 __tmp25043))))
                     (declare (not safe))
                     (cons __tmp25085 __tmp25042)))
                  (__tmp25039
                   (let ((__tmp25040
                          (let () (declare (not safe)) (cons _L14504_ '()))))
                     (declare (not safe))
                     (cons __tmp25040 '()))))
              (declare (not safe))
              (cons __tmp25041 __tmp25039))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp25086 __tmp25038))))
                                        (declare (not safe))
                                        (cons __tmp25089 __tmp25037))))
                                 (declare (not safe))
                                 (cons __tmp25036 '()))))
                          (declare (not safe))
                          (cons __tmp25090 __tmp25035))))
                   (declare (not safe))
                   (cons __tmp25103 __tmp25034))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1438414492_
                                                     _hd1438114482_
                                                     _hd1437814472_
                                                     _dispatch1437614464_
                                                     _hd1436314422_
                                                     _hd1436014412_
                                                     _hd1435714402_)
                                                    (_g1434714391_
                                                     _g1434814395_))))
                                            (_g1434714391_ _g1434814395_))))
                                    (_g1434714391_ _g1434814395_))))
                            (_g1434714391_ _g1434814395_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop1437114444_
                                                 _target1436814438_
                                                 '()))
                                              (_g1434714391_ _g1434814395_)))))
                                    (_g1434714391_ _g1434814395_))))
                            (_g1434714391_ _g1434814395_))))
                    (_g1434714391_ _g1434814395_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1434714391_
                                                     _g1434814395_))))
                                            (_g1434714391_ _g1434814395_)))))
                                (_g1434614547_
                                 (list _e14174_
                                       (gx#genident 'default)
                                       (gx#genident 'table)
                                       _dispatch14177_
                                       _default14178_
                                       _tab14183_
                                       (vector-length _tab14183_))))))
                        (_generate-char-dispatch/hash13036_
                         _e14174_
                         _datums14176_
                         _dispatch14177_
                         _default14178_))))
                 (_generate-char-dispatch/hash13036_
                  (lambda (_e13952_
                           _datums13954_
                           _dispatch13955_
                           _default13956_)
                    (let* ((_indexes13958_
                            (_datum-dispatch-index13027_ _datums13954_))
                           (_tab13961_
                            (_generate-hash-dispatch-table13029_
                             _indexes13958_
                             char->integer)))
                      (let* ((_g1396614010_
                              (lambda (_g1396714006_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g1396714006_)))
                             (_g1396514170_
                              (lambda (_g1396714014_)
                                (if (gx#stx-pair? _g1396714014_)
                                    (let ((_e1397514017_
                                           (gx#syntax-e _g1396714014_)))
                                      (let ((_hd1397614021_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1397514017_)))
                                            (_tl1397714024_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1397514017_))))
                                        (if (gx#stx-pair? _tl1397714024_)
                                            (let ((_e1397814027_
                                                   (gx#syntax-e
                                                    _tl1397714024_)))
                                              (let ((_hd1397914031_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1397814027_)))
                                                    (_tl1398014034_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1397814027_))))
                                                (if (gx#stx-pair?
                                                     _tl1398014034_)
                                                    (let ((_e1398114037_
                                                           (gx#syntax-e
                                                            _tl1398014034_)))
                                                      (let ((_hd1398214041_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1398114037_)))
                    (_tl1398314044_
                     (let () (declare (not safe)) (##cdr _e1398114037_))))
                (if (gx#stx-pair? _tl1398314044_)
                    (let ((_e1398414047_ (gx#syntax-e _tl1398314044_)))
                      (let ((_hd1398514051_
                             (let ()
                               (declare (not safe))
                               (##car _e1398414047_)))
                            (_tl1398614054_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1398414047_))))
                        (if (gx#stx-pair/null? _hd1398514051_)
                            (let ((_g25104_
                                   (gx#syntax-split-splice _hd1398514051_ '0)))
                              (begin
                                (let ((_g25105_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g25104_)
                                             (##vector-length _g25104_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g25105_ 2)))
                                      (error "Context expects 2 values"
                                             _g25105_)))
                                (let ((_target1398714057_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g25104_ 0)))
                                      (_tl1398914060_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g25104_ 1))))
                                  (if (gx#stx-null? _tl1398914060_)
                                      (letrec ((_loop1399014063_
                                                (lambda (_hd1398814067_
                                                         _dispatch1399414070_)
                                                  (if (gx#stx-pair?
                                                       _hd1398814067_)
                                                      (let ((_e1399114073_
                                                             (gx#syntax-e
                                                              _hd1398814067_)))
                                                        (let ((_lp-hd1399214077_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1399114073_)))
                      (_lp-tl1399314080_
                       (let () (declare (not safe)) (##cdr _e1399114073_))))
                  (_loop1399014063_
                   _lp-tl1399314080_
                   (let ()
                     (declare (not safe))
                     (cons _lp-hd1399214077_ _dispatch1399414070_)))))
              (let ((_dispatch1399514083_ (reverse _dispatch1399414070_)))
                (if (gx#stx-pair? _tl1398614054_)
                    (let ((_e1399614087_ (gx#syntax-e _tl1398614054_)))
                      (let ((_hd1399714091_
                             (let ()
                               (declare (not safe))
                               (##car _e1399614087_)))
                            (_tl1399814094_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1399614087_))))
                        (if (gx#stx-pair? _tl1399814094_)
                            (let ((_e1399914097_ (gx#syntax-e _tl1399814094_)))
                              (let ((_hd1400014101_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1399914097_)))
                                    (_tl1400114104_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1399914097_))))
                                (if (gx#stx-pair? _tl1400114104_)
                                    (let ((_e1400214107_
                                           (gx#syntax-e _tl1400114104_)))
                                      (let ((_hd1400314111_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1400214107_)))
                                            (_tl1400414114_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1400214107_))))
                                        (if (gx#stx-null? _tl1400414114_)
                                            ((lambda (_L14117_
                                                      _L14119_
                                                      _L14120_
                                                      _L14121_
                                                      _L14122_
                                                      _L14123_
                                                      _L14124_)
                                               (let ()
                                                 (let ((__tmp25196
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let))
                                                       (__tmp25106
                                                        (let ((__tmp25183
                                                               (let ((__tmp25190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp25191
                                     (let ((__tmp25192
                                            (let ((__tmp25195
                                                   (gx#datum->syntax
                                                    '#f
                                                    'lambda))
                                                  (__tmp25193
                                                   (let ((__tmp25194
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L14120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '() __tmp25194))))
                                              (declare (not safe))
                                              (cons __tmp25195 __tmp25193))))
                                       (declare (not safe))
                                       (cons __tmp25192 '()))))
                                (declare (not safe))
                                (cons _L14123_ __tmp25191)))
                             (__tmp25184
                              (let ((__tmp25185
                                     (let ((__tmp25186
                                            (let ((__tmp25187
                                                   (let ((__tmp25189
                                                          (gx#datum->syntax
                                                           '#f
                                                           'quote))
                                                         (__tmp25188
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L14119_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25189
                                                           __tmp25188))))
                                              (declare (not safe))
                                              (cons __tmp25187 '()))))
                                       (declare (not safe))
                                       (cons _L14122_ __tmp25186))))
                                (declare (not safe))
                                (cons __tmp25185 '()))))
                         (declare (not safe))
                         (cons __tmp25190 __tmp25184)))
                      (__tmp25107
                       (let ((__tmp25108
                              (let ((__tmp25182 (gx#datum->syntax '#f 'if))
                                    (__tmp25109
                                     (let ((__tmp25179
                                            (let ((__tmp25181
                                                   (gx#datum->syntax
                                                    '#f
                                                    'char?))
                                                  (__tmp25180
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L14124_ '()))))
                                              (declare (not safe))
                                              (cons __tmp25181 __tmp25180)))
                                           (__tmp25110
                                            (let ((__tmp25113
                                                   (let ((__tmp25178
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let*))
                                                         (__tmp25114
                                                          (let ((__tmp25153
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp25172
                                (let ((__tmp25177 (gx#datum->syntax '#f 'h))
                                      (__tmp25173
                                       (let ((__tmp25174
                                              (let ((__tmp25176
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##char->integer))
                                                    (__tmp25175
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L14124_ '()))))
                                                (declare (not safe))
                                                (cons __tmp25176 __tmp25175))))
                                         (declare (not safe))
                                         (cons __tmp25174 '()))))
                                  (declare (not safe))
                                  (cons __tmp25177 __tmp25173)))
                               (__tmp25154
                                (let ((__tmp25164
                                       (let ((__tmp25171
                                              (gx#datum->syntax '#f 'ix))
                                             (__tmp25165
                                              (let ((__tmp25166
                                                     (let ((__tmp25170
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##fxmodulo))
                                                           (__tmp25167
                                                            (let ((__tmp25169
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f 'h))
                          (__tmp25168
                           (let () (declare (not safe)) (cons _L14117_ '()))))
                      (declare (not safe))
                      (cons __tmp25169 __tmp25168))))
               (declare (not safe))
               (cons __tmp25170 __tmp25167))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25166 '()))))
                                         (declare (not safe))
                                         (cons __tmp25171 __tmp25165)))
                                      (__tmp25155
                                       (let ((__tmp25156
                                              (let ((__tmp25163
                                                     (gx#datum->syntax '#f 'q))
                                                    (__tmp25157
                                                     (let ((__tmp25158
                                                            (let ((__tmp25162
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#datum->syntax '#f '##vector-ref))
                          (__tmp25159
                           (let ((__tmp25160
                                  (let ((__tmp25161
                                         (gx#datum->syntax '#f 'ix)))
                                    (declare (not safe))
                                    (cons __tmp25161 '()))))
                             (declare (not safe))
                             (cons _L14122_ __tmp25160))))
                      (declare (not safe))
                      (cons __tmp25162 __tmp25159))))
               (declare (not safe))
               (cons __tmp25158 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25163 __tmp25157))))
                                         (declare (not safe))
                                         (cons __tmp25156 '()))))
                                  (declare (not safe))
                                  (cons __tmp25164 __tmp25155))))
                           (declare (not safe))
                           (cons __tmp25172 __tmp25154)))
                        (__tmp25115
                         (let ((__tmp25116
                                (let ((__tmp25152 (gx#datum->syntax '#f 'if))
                                      (__tmp25117
                                       (let ((__tmp25151
                                              (gx#datum->syntax '#f 'q))
                                             (__tmp25118
                                              (let ((__tmp25121
                                                     (let ((__tmp25150
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp25122
                                                            (let ((__tmp25142
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp25149 (gx#datum->syntax '#f 'eq?))
                                 (__tmp25143
                                  (let ((__tmp25145
                                         (let ((__tmp25148
                                                (gx#datum->syntax '#f '##car))
                                               (__tmp25146
                                                (let ((__tmp25147
                                                       (gx#datum->syntax
                                                        '#f
                                                        'q)))
                                                  (declare (not safe))
                                                  (cons __tmp25147 '()))))
                                           (declare (not safe))
                                           (cons __tmp25148 __tmp25146)))
                                        (__tmp25144
                                         (let ()
                                           (declare (not safe))
                                           (cons _L14124_ '()))))
                                    (declare (not safe))
                                    (cons __tmp25145 __tmp25144))))
                             (declare (not safe))
                             (cons __tmp25149 __tmp25143)))
                          (__tmp25123
                           (let ((__tmp25126
                                  (let ((__tmp25141
                                         (gx#datum->syntax '#f 'let))
                                        (__tmp25127
                                         (let ((__tmp25134
                                                (let ((__tmp25140
                                                       (gx#datum->syntax
                                                        '#f
                                                        'x))
                                                      (__tmp25135
                                                       (let ((__tmp25136
                                                              (let ((__tmp25139
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '##cdr))
                            (__tmp25137
                             (let ((__tmp25138 (gx#datum->syntax '#f 'q)))
                               (declare (not safe))
                               (cons __tmp25138 '()))))
                        (declare (not safe))
                        (cons __tmp25139 __tmp25137))))
                 (declare (not safe))
                 (cons __tmp25136 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25140
                                                        __tmp25135)))
                                               (__tmp25128
                                                (let ((__tmp25129
                                                       (let ((__tmp25133
                                                              (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch))
                                                             (__tmp25130
                                                              (let ((__tmp25132
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'x))
                            (__tmp25131
                             (foldr (lambda (_g1416114164_ _g1416214167_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g1416114164_ _g1416214167_)))
                                    '()
                                    _L14121_)))
                        (declare (not safe))
                        (cons __tmp25132 __tmp25131))))
                 (declare (not safe))
                 (cons __tmp25133 __tmp25130))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25129 '()))))
                                           (declare (not safe))
                                           (cons __tmp25134 __tmp25128))))
                                    (declare (not safe))
                                    (cons __tmp25141 __tmp25127)))
                                 (__tmp25124
                                  (let ((__tmp25125
                                         (let ()
                                           (declare (not safe))
                                           (cons _L14123_ '()))))
                                    (declare (not safe))
                                    (cons __tmp25125 '()))))
                             (declare (not safe))
                             (cons __tmp25126 __tmp25124))))
                      (declare (not safe))
                      (cons __tmp25142 __tmp25123))))
               (declare (not safe))
               (cons __tmp25150 __tmp25122)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp25119
                                                     (let ((__tmp25120
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L14123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp25120 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25121 __tmp25119))))
                                         (declare (not safe))
                                         (cons __tmp25151 __tmp25118))))
                                  (declare (not safe))
                                  (cons __tmp25152 __tmp25117))))
                           (declare (not safe))
                           (cons __tmp25116 '()))))
                    (declare (not safe))
                    (cons __tmp25153 __tmp25115))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25178
                                                           __tmp25114)))
                                                  (__tmp25111
                                                   (let ((__tmp25112
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L14123_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25112 '()))))
                                              (declare (not safe))
                                              (cons __tmp25113 __tmp25111))))
                                       (declare (not safe))
                                       (cons __tmp25179 __tmp25110))))
                                (declare (not safe))
                                (cons __tmp25182 __tmp25109))))
                         (declare (not safe))
                         (cons __tmp25108 '()))))
                  (declare (not safe))
                  (cons __tmp25183 __tmp25107))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25196
                                                         __tmp25106))))
                                             _hd1400314111_
                                             _hd1400014101_
                                             _hd1399714091_
                                             _dispatch1399514083_
                                             _hd1398214041_
                                             _hd1397914031_
                                             _hd1397614021_)
                                            (_g1396614010_ _g1396714014_))))
                                    (_g1396614010_ _g1396714014_))))
                            (_g1396614010_ _g1396714014_))))
                    (_g1396614010_ _g1396714014_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1399014063_
                                         _target1398714057_
                                         '()))
                                      (_g1396614010_ _g1396714014_)))))
                            (_g1396614010_ _g1396714014_))))
                    (_g1396614010_ _g1396714014_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1396614010_
                                                     _g1396714014_))))
                                            (_g1396614010_ _g1396714014_))))
                                    (_g1396614010_ _g1396714014_)))))
                        (_g1396514170_
                         (list _e13952_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch13955_
                               _default13956_
                               _tab13961_
                               (vector-length _tab13961_)))))))
                 (_min-fixnum13037_
                  (lambda (_datums13945_)
                    (foldl (lambda (_lst13948_ _r13950_)
                             (foldl min _r13950_ _lst13948_))
                           ##max-fixnum
                           _datums13945_)))
                 (_max-fixnum13038_
                  (lambda (_datums13938_)
                    (foldl (lambda (_lst13941_ _r13943_)
                             (foldl max _r13943_ _lst13941_))
                           ##min-fixnum
                           _datums13938_)))
                 (_generate-fixnum-dispatch-table13039_
                  (lambda (_indexes13920_)
                    (let* ((_ixs13923_ (map car _indexes13920_))
                           (_len13926_
                            (let ((__tmp25197 (foldl max '0 _ixs13923_)))
                              (declare (not safe))
                              (fx+ __tmp25197 '1)))
                           (_vec13929_ (make-vector _len13926_ '#f)))
                      (for-each
                       (lambda (_entry13934_ _x13936_)
                         (vector-set! _vec13929_ _x13936_ (cdr _entry13934_)))
                       _indexes13920_
                       _ixs13923_)
                      _vec13929_)))
                 (_generate-fixnum-dispatch13040_
                  (lambda (_e13654_
                           _datums13656_
                           _dispatch13657_
                           _default13658_)
                    (if (and (>= (_min-fixnum13037_ _datums13656_) '0)
                             (< (_max-fixnum13038_ _datums13656_) '1024))
                        (let* ((_indexes13660_
                                (_datum-dispatch-index13027_ _datums13656_))
                               (_tab13663_
                                (_generate-fixnum-dispatch-table13039_
                                 _indexes13660_))
                               (_dense?13666_
                                (andmap values (vector->list _tab13663_))))
                          (let* ((_g1367113715_
                                  (lambda (_g1367213711_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g1367213711_)))
                                 (_g1367013916_
                                  (lambda (_g1367213719_)
                                    (if (gx#stx-pair? _g1367213719_)
                                        (let ((_e1368013722_
                                               (gx#syntax-e _g1367213719_)))
                                          (let ((_hd1368113726_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1368013722_)))
                                                (_tl1368213729_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1368013722_))))
                                            (if (gx#stx-pair? _tl1368213729_)
                                                (let ((_e1368313732_
                                                       (gx#syntax-e
                                                        _tl1368213729_)))
                                                  (let ((_hd1368413736_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1368313732_)))
                                                        (_tl1368513739_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1368313732_))))
                                                    (if (gx#stx-pair?
                                                         _tl1368513739_)
                                                        (let ((_e1368613742_
                                                               (gx#syntax-e
                                                                _tl1368513739_)))
                                                          (let ((_hd1368713746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1368613742_)))
                        (_tl1368813749_
                         (let () (declare (not safe)) (##cdr _e1368613742_))))
                    (if (gx#stx-pair? _tl1368813749_)
                        (let ((_e1368913752_ (gx#syntax-e _tl1368813749_)))
                          (let ((_hd1369013756_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1368913752_)))
                                (_tl1369113759_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1368913752_))))
                            (if (gx#stx-pair/null? _hd1369013756_)
                                (let ((_g25198_
                                       (gx#syntax-split-splice
                                        _hd1369013756_
                                        '0)))
                                  (begin
                                    (let ((_g25199_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g25198_)
                                                 (##vector-length _g25198_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g25199_ 2)))
                                          (error "Context expects 2 values"
                                                 _g25199_)))
                                    (let ((_target1369213762_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g25198_ 0)))
                                          (_tl1369413765_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g25198_ 1))))
                                      (if (gx#stx-null? _tl1369413765_)
                                          (letrec ((_loop1369513768_
                                                    (lambda (_hd1369313772_
                                                             _dispatch1369913775_)
                                                      (if (gx#stx-pair?
                                                           _hd1369313772_)
                                                          (let ((_e1369613778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1369313772_)))
                    (let ((_lp-hd1369713782_
                           (let () (declare (not safe)) (##car _e1369613778_)))
                          (_lp-tl1369813785_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1369613778_))))
                      (_loop1369513768_
                       _lp-tl1369813785_
                       (let ()
                         (declare (not safe))
                         (cons _lp-hd1369713782_ _dispatch1369913775_)))))
                  (let ((_dispatch1370013788_ (reverse _dispatch1369913775_)))
                    (if (gx#stx-pair? _tl1369113759_)
                        (let ((_e1370113792_ (gx#syntax-e _tl1369113759_)))
                          (let ((_hd1370213796_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1370113792_)))
                                (_tl1370313799_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1370113792_))))
                            (if (gx#stx-pair? _tl1370313799_)
                                (let ((_e1370413802_
                                       (gx#syntax-e _tl1370313799_)))
                                  (let ((_hd1370513806_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1370413802_)))
                                        (_tl1370613809_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1370413802_))))
                                    (if (gx#stx-pair? _tl1370613809_)
                                        (let ((_e1370713812_
                                               (gx#syntax-e _tl1370613809_)))
                                          (let ((_hd1370813816_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1370713812_)))
                                                (_tl1370913819_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1370713812_))))
                                            (if (gx#stx-null? _tl1370913819_)
                                                ((lambda (_L13822_
                                                          _L13824_
                                                          _L13825_
                                                          _L13826_
                                                          _L13827_
                                                          _L13828_
                                                          _L13829_)
                                                   (let ()
                                                     (let* ((_g1386813876_
                                                             (lambda (_g1386913872_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _g1386913872_)))
                                                            (_g1386713896_
                                                             (lambda (_g1386913880_)
                                                               ((lambda (_L13883_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (let ((__tmp25253 (gx#datum->syntax '#f 'let))
                                  (__tmp25200
                                   (let ((__tmp25240
                                          (let ((__tmp25247
                                                 (let ((__tmp25248
                                                        (let ((__tmp25249
                                                               (let ((__tmp25252
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'lambda))
                             (__tmp25250
                              (let ((__tmp25251
                                     (let ()
                                       (declare (not safe))
                                       (cons _L13825_ '()))))
                                (declare (not safe))
                                (cons '() __tmp25251))))
                         (declare (not safe))
                         (cons __tmp25252 __tmp25250))))
                  (declare (not safe))
                  (cons __tmp25249 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L13828_ __tmp25248)))
                                                (__tmp25241
                                                 (let ((__tmp25242
                                                        (let ((__tmp25243
                                                               (let ((__tmp25244
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp25246 (gx#datum->syntax '#f 'quote))
                                    (__tmp25245
                                     (let ()
                                       (declare (not safe))
                                       (cons _L13824_ '()))))
                                (declare (not safe))
                                (cons __tmp25246 __tmp25245))))
                         (declare (not safe))
                         (cons __tmp25244 '()))))
                  (declare (not safe))
                  (cons _L13827_ __tmp25243))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25242 '()))))
                                            (declare (not safe))
                                            (cons __tmp25247 __tmp25241)))
                                         (__tmp25201
                                          (let ((__tmp25202
                                                 (let ((__tmp25239
                                                        (gx#datum->syntax
                                                         '#f
                                                         'if))
                                                       (__tmp25203
                                                        (let ((__tmp25236
                                                               (let ((__tmp25238
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'fixnum?))
                             (__tmp25237
                              (let ()
                                (declare (not safe))
                                (cons _L13829_ '()))))
                         (declare (not safe))
                         (cons __tmp25238 __tmp25237)))
                      (__tmp25204
                       (let ((__tmp25207
                              (let ((__tmp25235 (gx#datum->syntax '#f 'if))
                                    (__tmp25208
                                     (let ((__tmp25223
                                            (let ((__tmp25234
                                                   (gx#datum->syntax '#f 'and))
                                                  (__tmp25224
                                                   (let ((__tmp25230
                                                          (let ((__tmp25233
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '##fx>=))
                        (__tmp25231
                         (let ((__tmp25232
                                (let () (declare (not safe)) (cons '0 '()))))
                           (declare (not safe))
                           (cons _L13829_ __tmp25232))))
                    (declare (not safe))
                    (cons __tmp25233 __tmp25231)))
                 (__tmp25225
                  (let ((__tmp25226
                         (let ((__tmp25229 (gx#datum->syntax '#f '##fx<))
                               (__tmp25227
                                (let ((__tmp25228
                                       (let ()
                                         (declare (not safe))
                                         (cons _L13822_ '()))))
                                  (declare (not safe))
                                  (cons _L13829_ __tmp25228))))
                           (declare (not safe))
                           (cons __tmp25229 __tmp25227))))
                    (declare (not safe))
                    (cons __tmp25226 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25230
                                                           __tmp25225))))
                                              (declare (not safe))
                                              (cons __tmp25234 __tmp25224)))
                                           (__tmp25209
                                            (let ((__tmp25212
                                                   (let ((__tmp25222
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp25213
                                                          (let ((__tmp25215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp25221 (gx#datum->syntax '#f 'x))
                               (__tmp25216
                                (let ((__tmp25217
                                       (let ((__tmp25220
                                              (gx#datum->syntax
                                               '#f
                                               '##vector-ref))
                                             (__tmp25218
                                              (let ((__tmp25219
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L13829_ '()))))
                                                (declare (not safe))
                                                (cons _L13827_ __tmp25219))))
                                         (declare (not safe))
                                         (cons __tmp25220 __tmp25218))))
                                  (declare (not safe))
                                  (cons __tmp25217 '()))))
                           (declare (not safe))
                           (cons __tmp25221 __tmp25216)))
                        (__tmp25214
                         (let () (declare (not safe)) (cons _L13883_ '()))))
                    (declare (not safe))
                    (cons __tmp25215 __tmp25214))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25222
                                                           __tmp25213)))
                                                  (__tmp25210
                                                   (let ((__tmp25211
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L13828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25211 '()))))
                                              (declare (not safe))
                                              (cons __tmp25212 __tmp25210))))
                                       (declare (not safe))
                                       (cons __tmp25223 __tmp25209))))
                                (declare (not safe))
                                (cons __tmp25235 __tmp25208)))
                             (__tmp25205
                              (let ((__tmp25206
                                     (let ()
                                       (declare (not safe))
                                       (cons _L13828_ '()))))
                                (declare (not safe))
                                (cons __tmp25206 '()))))
                         (declare (not safe))
                         (cons __tmp25207 __tmp25205))))
                  (declare (not safe))
                  (cons __tmp25236 __tmp25204))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25239
                                                         __tmp25203))))
                                            (declare (not safe))
                                            (cons __tmp25202 '()))))
                                     (declare (not safe))
                                     (cons __tmp25240 __tmp25201))))
                              (declare (not safe))
                              (cons __tmp25253 __tmp25200))))
                        _g1386913880_))))
               (_g1386713896_
                (if _dense?13666_
                    (let ((__tmp25257 (gx#datum->syntax '#f '~case-dispatch))
                          (__tmp25254
                           (let ((__tmp25256 (gx#datum->syntax '#f 'x))
                                 (__tmp25255
                                  (foldr (lambda (_g1389913902_ _g1390013905_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g1389913902_
                                                   _g1390013905_)))
                                         '()
                                         _L13826_)))
                             (declare (not safe))
                             (cons __tmp25256 __tmp25255))))
                      (declare (not safe))
                      (cons __tmp25257 __tmp25254))
                    (let ((__tmp25268 (gx#datum->syntax '#f 'if))
                          (__tmp25258
                           (let ((__tmp25267 (gx#datum->syntax '#f 'x))
                                 (__tmp25259
                                  (let ((__tmp25262
                                         (let ((__tmp25266
                                                (gx#datum->syntax
                                                 '#f
                                                 '~case-dispatch))
                                               (__tmp25263
                                                (let ((__tmp25265
                                                       (gx#datum->syntax
                                                        '#f
                                                        'x))
                                                      (__tmp25264
                                                       (foldr (lambda (_g1390713910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1390813913_)
                        (let ()
                          (declare (not safe))
                          (cons _g1390713910_ _g1390813913_)))
                      '()
                      _L13826_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25265
                                                        __tmp25264))))
                                           (declare (not safe))
                                           (cons __tmp25266 __tmp25263)))
                                        (__tmp25260
                                         (let ((__tmp25261
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L13828_ '()))))
                                           (declare (not safe))
                                           (cons __tmp25261 '()))))
                                    (declare (not safe))
                                    (cons __tmp25262 __tmp25260))))
                             (declare (not safe))
                             (cons __tmp25267 __tmp25259))))
                      (declare (not safe))
                      (cons __tmp25268 __tmp25258)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1370813816_
                                                 _hd1370513806_
                                                 _hd1370213796_
                                                 _dispatch1370013788_
                                                 _hd1368713746_
                                                 _hd1368413736_
                                                 _hd1368113726_)
                                                (_g1367113715_
                                                 _g1367213719_))))
                                        (_g1367113715_ _g1367213719_))))
                                (_g1367113715_ _g1367213719_))))
                        (_g1367113715_ _g1367213719_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1369513768_
                                             _target1369213762_
                                             '()))
                                          (_g1367113715_ _g1367213719_)))))
                                (_g1367113715_ _g1367213719_))))
                        (_g1367113715_ _g1367213719_))))
                (_g1367113715_ _g1367213719_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1367113715_
                                                 _g1367213719_))))
                                        (_g1367113715_ _g1367213719_)))))
                            (_g1367013916_
                             (list _e13654_
                                   (gx#genident 'default)
                                   (gx#genident 'table)
                                   _dispatch13657_
                                   _default13658_
                                   _tab13663_
                                   (vector-length _tab13663_)))))
                        (_generate-fixnum-dispatch/hash13041_
                         _e13654_
                         _datums13656_
                         _dispatch13657_
                         _default13658_))))
                 (_generate-fixnum-dispatch/hash13041_
                  (lambda (_e13432_
                           _datums13434_
                           _dispatch13435_
                           _default13436_)
                    (let* ((_indexes13438_
                            (_datum-dispatch-index13027_ _datums13434_))
                           (_tab13441_
                            (_generate-hash-dispatch-table13029_
                             _indexes13438_
                             values)))
                      (let* ((_g1344613490_
                              (lambda (_g1344713486_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g1344713486_)))
                             (_g1344513650_
                              (lambda (_g1344713494_)
                                (if (gx#stx-pair? _g1344713494_)
                                    (let ((_e1345513497_
                                           (gx#syntax-e _g1344713494_)))
                                      (let ((_hd1345613501_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1345513497_)))
                                            (_tl1345713504_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1345513497_))))
                                        (if (gx#stx-pair? _tl1345713504_)
                                            (let ((_e1345813507_
                                                   (gx#syntax-e
                                                    _tl1345713504_)))
                                              (let ((_hd1345913511_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1345813507_)))
                                                    (_tl1346013514_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1345813507_))))
                                                (if (gx#stx-pair?
                                                     _tl1346013514_)
                                                    (let ((_e1346113517_
                                                           (gx#syntax-e
                                                            _tl1346013514_)))
                                                      (let ((_hd1346213521_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e1346113517_)))
                    (_tl1346313524_
                     (let () (declare (not safe)) (##cdr _e1346113517_))))
                (if (gx#stx-pair? _tl1346313524_)
                    (let ((_e1346413527_ (gx#syntax-e _tl1346313524_)))
                      (let ((_hd1346513531_
                             (let ()
                               (declare (not safe))
                               (##car _e1346413527_)))
                            (_tl1346613534_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1346413527_))))
                        (if (gx#stx-pair/null? _hd1346513531_)
                            (let ((_g25269_
                                   (gx#syntax-split-splice _hd1346513531_ '0)))
                              (begin
                                (let ((_g25270_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g25269_)
                                             (##vector-length _g25269_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g25270_ 2)))
                                      (error "Context expects 2 values"
                                             _g25270_)))
                                (let ((_target1346713537_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g25269_ 0)))
                                      (_tl1346913540_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g25269_ 1))))
                                  (if (gx#stx-null? _tl1346913540_)
                                      (letrec ((_loop1347013543_
                                                (lambda (_hd1346813547_
                                                         _dispatch1347413550_)
                                                  (if (gx#stx-pair?
                                                       _hd1346813547_)
                                                      (let ((_e1347113553_
                                                             (gx#syntax-e
                                                              _hd1346813547_)))
                                                        (let ((_lp-hd1347213557_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e1347113553_)))
                      (_lp-tl1347313560_
                       (let () (declare (not safe)) (##cdr _e1347113553_))))
                  (_loop1347013543_
                   _lp-tl1347313560_
                   (let ()
                     (declare (not safe))
                     (cons _lp-hd1347213557_ _dispatch1347413550_)))))
              (let ((_dispatch1347513563_ (reverse _dispatch1347413550_)))
                (if (gx#stx-pair? _tl1346613534_)
                    (let ((_e1347613567_ (gx#syntax-e _tl1346613534_)))
                      (let ((_hd1347713571_
                             (let ()
                               (declare (not safe))
                               (##car _e1347613567_)))
                            (_tl1347813574_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1347613567_))))
                        (if (gx#stx-pair? _tl1347813574_)
                            (let ((_e1347913577_ (gx#syntax-e _tl1347813574_)))
                              (let ((_hd1348013581_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1347913577_)))
                                    (_tl1348113584_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1347913577_))))
                                (if (gx#stx-pair? _tl1348113584_)
                                    (let ((_e1348213587_
                                           (gx#syntax-e _tl1348113584_)))
                                      (let ((_hd1348313591_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1348213587_)))
                                            (_tl1348413594_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1348213587_))))
                                        (if (gx#stx-null? _tl1348413594_)
                                            ((lambda (_L13597_
                                                      _L13599_
                                                      _L13600_
                                                      _L13601_
                                                      _L13602_
                                                      _L13603_
                                                      _L13604_)
                                               (let ()
                                                 (let ((__tmp25353
                                                        (gx#datum->syntax
                                                         '#f
                                                         'let))
                                                       (__tmp25271
                                                        (let ((__tmp25340
                                                               (let ((__tmp25347
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp25348
                                     (let ((__tmp25349
                                            (let ((__tmp25352
                                                   (gx#datum->syntax
                                                    '#f
                                                    'lambda))
                                                  (__tmp25350
                                                   (let ((__tmp25351
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L13600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '() __tmp25351))))
                                              (declare (not safe))
                                              (cons __tmp25352 __tmp25350))))
                                       (declare (not safe))
                                       (cons __tmp25349 '()))))
                                (declare (not safe))
                                (cons _L13603_ __tmp25348)))
                             (__tmp25341
                              (let ((__tmp25342
                                     (let ((__tmp25343
                                            (let ((__tmp25344
                                                   (let ((__tmp25346
                                                          (gx#datum->syntax
                                                           '#f
                                                           'quote))
                                                         (__tmp25345
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L13599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25346
                                                           __tmp25345))))
                                              (declare (not safe))
                                              (cons __tmp25344 '()))))
                                       (declare (not safe))
                                       (cons _L13602_ __tmp25343))))
                                (declare (not safe))
                                (cons __tmp25342 '()))))
                         (declare (not safe))
                         (cons __tmp25347 __tmp25341)))
                      (__tmp25272
                       (let ((__tmp25273
                              (let ((__tmp25339 (gx#datum->syntax '#f 'if))
                                    (__tmp25274
                                     (let ((__tmp25336
                                            (let ((__tmp25338
                                                   (gx#datum->syntax
                                                    '#f
                                                    'fixnum?))
                                                  (__tmp25337
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L13604_ '()))))
                                              (declare (not safe))
                                              (cons __tmp25338 __tmp25337)))
                                           (__tmp25275
                                            (let ((__tmp25278
                                                   (let ((__tmp25335
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let*))
                                                         (__tmp25279
                                                          (let ((__tmp25318
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp25328
                                (let ((__tmp25334 (gx#datum->syntax '#f 'ix))
                                      (__tmp25329
                                       (let ((__tmp25330
                                              (let ((__tmp25333
                                                     (gx#datum->syntax
                                                      '#f
                                                      '##fxmodulo))
                                                    (__tmp25331
                                                     (let ((__tmp25332
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L13597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _L13604_ __tmp25332))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25333 __tmp25331))))
                                         (declare (not safe))
                                         (cons __tmp25330 '()))))
                                  (declare (not safe))
                                  (cons __tmp25334 __tmp25329)))
                               (__tmp25319
                                (let ((__tmp25320
                                       (let ((__tmp25327
                                              (gx#datum->syntax '#f 'q))
                                             (__tmp25321
                                              (let ((__tmp25322
                                                     (let ((__tmp25326
                                                            (gx#datum->syntax
                                                             '#f
                                                             '##vector-ref))
                                                           (__tmp25323
                                                            (let ((__tmp25324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp25325 (gx#datum->syntax '#f 'ix)))
                             (declare (not safe))
                             (cons __tmp25325 '()))))
                      (declare (not safe))
                      (cons _L13602_ __tmp25324))))
               (declare (not safe))
               (cons __tmp25326 __tmp25323))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25322 '()))))
                                         (declare (not safe))
                                         (cons __tmp25327 __tmp25321))))
                                  (declare (not safe))
                                  (cons __tmp25320 '()))))
                           (declare (not safe))
                           (cons __tmp25328 __tmp25319)))
                        (__tmp25280
                         (let ((__tmp25281
                                (let ((__tmp25317 (gx#datum->syntax '#f 'if))
                                      (__tmp25282
                                       (let ((__tmp25316
                                              (gx#datum->syntax '#f 'q))
                                             (__tmp25283
                                              (let ((__tmp25286
                                                     (let ((__tmp25315
                                                            (gx#datum->syntax
                                                             '#f
                                                             'if))
                                                           (__tmp25287
                                                            (let ((__tmp25307
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp25314 (gx#datum->syntax '#f 'eq?))
                                 (__tmp25308
                                  (let ((__tmp25310
                                         (let ((__tmp25313
                                                (gx#datum->syntax '#f '##car))
                                               (__tmp25311
                                                (let ((__tmp25312
                                                       (gx#datum->syntax
                                                        '#f
                                                        'q)))
                                                  (declare (not safe))
                                                  (cons __tmp25312 '()))))
                                           (declare (not safe))
                                           (cons __tmp25313 __tmp25311)))
                                        (__tmp25309
                                         (let ()
                                           (declare (not safe))
                                           (cons _L13604_ '()))))
                                    (declare (not safe))
                                    (cons __tmp25310 __tmp25309))))
                             (declare (not safe))
                             (cons __tmp25314 __tmp25308)))
                          (__tmp25288
                           (let ((__tmp25291
                                  (let ((__tmp25306
                                         (gx#datum->syntax '#f 'let))
                                        (__tmp25292
                                         (let ((__tmp25299
                                                (let ((__tmp25305
                                                       (gx#datum->syntax
                                                        '#f
                                                        'x))
                                                      (__tmp25300
                                                       (let ((__tmp25301
                                                              (let ((__tmp25304
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f '##cdr))
                            (__tmp25302
                             (let ((__tmp25303 (gx#datum->syntax '#f 'q)))
                               (declare (not safe))
                               (cons __tmp25303 '()))))
                        (declare (not safe))
                        (cons __tmp25304 __tmp25302))))
                 (declare (not safe))
                 (cons __tmp25301 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25305
                                                        __tmp25300)))
                                               (__tmp25293
                                                (let ((__tmp25294
                                                       (let ((__tmp25298
                                                              (gx#datum->syntax
                                                               '#f
                                                               '~case-dispatch))
                                                             (__tmp25295
                                                              (let ((__tmp25297
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'x))
                            (__tmp25296
                             (foldr (lambda (_g1364113644_ _g1364213647_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g1364113644_ _g1364213647_)))
                                    '()
                                    _L13601_)))
                        (declare (not safe))
                        (cons __tmp25297 __tmp25296))))
                 (declare (not safe))
                 (cons __tmp25298 __tmp25295))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25294 '()))))
                                           (declare (not safe))
                                           (cons __tmp25299 __tmp25293))))
                                    (declare (not safe))
                                    (cons __tmp25306 __tmp25292)))
                                 (__tmp25289
                                  (let ((__tmp25290
                                         (let ()
                                           (declare (not safe))
                                           (cons _L13603_ '()))))
                                    (declare (not safe))
                                    (cons __tmp25290 '()))))
                             (declare (not safe))
                             (cons __tmp25291 __tmp25289))))
                      (declare (not safe))
                      (cons __tmp25307 __tmp25288))))
               (declare (not safe))
               (cons __tmp25315 __tmp25287)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp25284
                                                     (let ((__tmp25285
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L13603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp25285 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25286 __tmp25284))))
                                         (declare (not safe))
                                         (cons __tmp25316 __tmp25283))))
                                  (declare (not safe))
                                  (cons __tmp25317 __tmp25282))))
                           (declare (not safe))
                           (cons __tmp25281 '()))))
                    (declare (not safe))
                    (cons __tmp25318 __tmp25280))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25335
                                                           __tmp25279)))
                                                  (__tmp25276
                                                   (let ((__tmp25277
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _L13603_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25277 '()))))
                                              (declare (not safe))
                                              (cons __tmp25278 __tmp25276))))
                                       (declare (not safe))
                                       (cons __tmp25336 __tmp25275))))
                                (declare (not safe))
                                (cons __tmp25339 __tmp25274))))
                         (declare (not safe))
                         (cons __tmp25273 '()))))
                  (declare (not safe))
                  (cons __tmp25340 __tmp25272))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25353
                                                         __tmp25271))))
                                             _hd1348313591_
                                             _hd1348013581_
                                             _hd1347713571_
                                             _dispatch1347513563_
                                             _hd1346213521_
                                             _hd1345913511_
                                             _hd1345613501_)
                                            (_g1344613490_ _g1344713494_))))
                                    (_g1344613490_ _g1344713494_))))
                            (_g1344613490_ _g1344713494_))))
                    (_g1344613490_ _g1344713494_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop1347013543_
                                         _target1346713537_
                                         '()))
                                      (_g1344613490_ _g1344713494_)))))
                            (_g1344613490_ _g1344713494_))))
                    (_g1344613490_ _g1344713494_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1344613490_
                                                     _g1344713494_))))
                                            (_g1344613490_ _g1344713494_))))
                                    (_g1344613490_ _g1344713494_)))))
                        (_g1344513650_
                         (list _e13432_
                               (gx#genident 'default)
                               (gx#genident 'table)
                               _dispatch13435_
                               _default13436_
                               _tab13441_
                               (vector-length _tab13441_)))))))
                 (_generate-generic-dispatch13042_
                  (lambda (_e13168_
                           _datums13170_
                           _dispatch13171_
                           _default13172_)
                    (let ((_g25354_
                           (if (_eq-datums?13025_ _datums13170_)
                               (values eq?-hash 'eq?-hash 'eq?)
                               (values equal?-hash 'equal?-hash 'equal?))))
                      (begin
                        #!void
                        (let ((_hash-e13174_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g25354_ 0)))
                              (_hashf13176_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g25354_ 1)))
                              (_eqf13177_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g25354_ 2))))
                          (let* ((_indexes13179_
                                  (_datum-dispatch-index13027_ _datums13170_))
                                 (_tab13182_
                                  (_generate-hash-dispatch-table13029_
                                   _indexes13179_
                                   _hash-e13174_)))
                            (let* ((_g1318713239_
                                    (lambda (_g1318813235_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g1318813235_)))
                                   (_g1318613428_
                                    (lambda (_g1318813243_)
                                      (if (gx#stx-pair? _g1318813243_)
                                          (let ((_e1319813246_
                                                 (gx#syntax-e _g1318813243_)))
                                            (let ((_hd1319913250_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1319813246_)))
                                                  (_tl1320013253_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1319813246_))))
                                              (if (gx#stx-pair? _tl1320013253_)
                                                  (let ((_e1320113256_
                                                         (gx#syntax-e
                                                          _tl1320013253_)))
                                                    (let ((_hd1320213260_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1320113256_)))
                                                          (_tl1320313263_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1320113256_))))
                                                      (if (gx#stx-pair?
                                                           _tl1320313263_)
                                                          (let ((_e1320413266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1320313263_)))
                    (let ((_hd1320513270_
                           (let () (declare (not safe)) (##car _e1320413266_)))
                          (_tl1320613273_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1320413266_))))
                      (if (gx#stx-pair? _tl1320613273_)
                          (let ((_e1320713276_ (gx#syntax-e _tl1320613273_)))
                            (let ((_hd1320813280_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1320713276_)))
                                  (_tl1320913283_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1320713276_))))
                              (if (gx#stx-pair/null? _hd1320813280_)
                                  (let ((_g25355_
                                         (gx#syntax-split-splice
                                          _hd1320813280_
                                          '0)))
                                    (begin
                                      (let ((_g25356_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g25355_)
                                                   (##vector-length _g25355_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g25356_ 2)))
                                            (error "Context expects 2 values"
                                                   _g25356_)))
                                      (let ((_target1321013286_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g25355_ 0)))
                                            (_tl1321213289_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref _g25355_ 1))))
                                        (if (gx#stx-null? _tl1321213289_)
                                            (letrec ((_loop1321313292_
                                                      (lambda (_hd1321113296_
                                                               _dispatch1321713299_)
                                                        (if (gx#stx-pair?
                                                             _hd1321113296_)
                                                            (let ((_e1321413302_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1321113296_)))
                      (let ((_lp-hd1321513306_
                             (let ()
                               (declare (not safe))
                               (##car _e1321413302_)))
                            (_lp-tl1321613309_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1321413302_))))
                        (_loop1321313292_
                         _lp-tl1321613309_
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd1321513306_ _dispatch1321713299_)))))
                    (let ((_dispatch1321813312_
                           (reverse _dispatch1321713299_)))
                      (if (gx#stx-pair? _tl1320913283_)
                          (let ((_e1321913316_ (gx#syntax-e _tl1320913283_)))
                            (let ((_hd1322013320_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1321913316_)))
                                  (_tl1322113323_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1321913316_))))
                              (if (gx#stx-pair? _tl1322113323_)
                                  (let ((_e1322213326_
                                         (gx#syntax-e _tl1322113323_)))
                                    (let ((_hd1322313330_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1322213326_)))
                                          (_tl1322413333_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1322213326_))))
                                      (if (gx#stx-pair? _tl1322413333_)
                                          (let ((_e1322513336_
                                                 (gx#syntax-e _tl1322413333_)))
                                            (let ((_hd1322613340_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1322513336_)))
                                                  (_tl1322713343_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1322513336_))))
                                              (if (gx#stx-pair? _tl1322713343_)
                                                  (let ((_e1322813346_
                                                         (gx#syntax-e
                                                          _tl1322713343_)))
                                                    (let ((_hd1322913350_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1322813346_)))
                                                          (_tl1323013353_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1322813346_))))
                                                      (if (gx#stx-pair?
                                                           _tl1323013353_)
                                                          (let ((_e1323113356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1323013353_)))
                    (let ((_hd1323213360_
                           (let () (declare (not safe)) (##car _e1323113356_)))
                          (_tl1323313363_
                           (let ()
                             (declare (not safe))
                             (##cdr _e1323113356_))))
                      (if (gx#stx-null? _tl1323313363_)
                          ((lambda (_L13366_
                                    _L13368_
                                    _L13369_
                                    _L13370_
                                    _L13371_
                                    _L13372_
                                    _L13373_
                                    _L13374_
                                    _L13375_)
                             (let ()
                               (let ((__tmp25436 (gx#datum->syntax '#f 'let))
                                     (__tmp25357
                                      (let ((__tmp25423
                                             (let ((__tmp25430
                                                    (let ((__tmp25431
                                                           (let ((__tmp25432
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp25435 (gx#datum->syntax '#f 'lambda))
                                (__tmp25433
                                 (let ((__tmp25434
                                        (let ()
                                          (declare (not safe))
                                          (cons _L13371_ '()))))
                                   (declare (not safe))
                                   (cons '() __tmp25434))))
                            (declare (not safe))
                            (cons __tmp25435 __tmp25433))))
                     (declare (not safe))
                     (cons __tmp25432 '()))))
              (declare (not safe))
              (cons _L13374_ __tmp25431)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp25424
                                                    (let ((__tmp25425
                                                           (let ((__tmp25426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp25427
                                 (let ((__tmp25429
                                        (gx#datum->syntax '#f 'quote))
                                       (__tmp25428
                                        (let ()
                                          (declare (not safe))
                                          (cons _L13370_ '()))))
                                   (declare (not safe))
                                   (cons __tmp25429 __tmp25428))))
                            (declare (not safe))
                            (cons __tmp25427 '()))))
                     (declare (not safe))
                     (cons _L13373_ __tmp25426))))
              (declare (not safe))
              (cons __tmp25425 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp25430 __tmp25424)))
                                            (__tmp25358
                                             (let ((__tmp25359
                                                    (let ((__tmp25422
                                                           (gx#datum->syntax
                                                            '#f
                                                            'let*))
                                                          (__tmp25360
                                                           (let ((__tmp25398
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp25417
                                 (let ((__tmp25421 (gx#datum->syntax '#f 'h))
                                       (__tmp25418
                                        (let ((__tmp25419
                                               (let ((__tmp25420
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L13375_ '()))))
                                                 (declare (not safe))
                                                 (cons _L13368_ __tmp25420))))
                                          (declare (not safe))
                                          (cons __tmp25419 '()))))
                                   (declare (not safe))
                                   (cons __tmp25421 __tmp25418)))
                                (__tmp25399
                                 (let ((__tmp25409
                                        (let ((__tmp25416
                                               (gx#datum->syntax '#f 'ix))
                                              (__tmp25410
                                               (let ((__tmp25411
                                                      (let ((__tmp25415
                                                             (gx#datum->syntax
                                                              '#f
                                                              '##fxmodulo))
                                                            (__tmp25412
                                                             (let ((__tmp25414
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'h))
                           (__tmp25413
                            (let () (declare (not safe)) (cons _L13369_ '()))))
                       (declare (not safe))
                       (cons __tmp25414 __tmp25413))))
                (declare (not safe))
                (cons __tmp25415 __tmp25412))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25411 '()))))
                                          (declare (not safe))
                                          (cons __tmp25416 __tmp25410)))
                                       (__tmp25400
                                        (let ((__tmp25401
                                               (let ((__tmp25408
                                                      (gx#datum->syntax
                                                       '#f
                                                       'q))
                                                     (__tmp25402
                                                      (let ((__tmp25403
                                                             (let ((__tmp25407
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f '##vector-ref))
                           (__tmp25404
                            (let ((__tmp25405
                                   (let ((__tmp25406
                                          (gx#datum->syntax '#f 'ix)))
                                     (declare (not safe))
                                     (cons __tmp25406 '()))))
                              (declare (not safe))
                              (cons _L13373_ __tmp25405))))
                       (declare (not safe))
                       (cons __tmp25407 __tmp25404))))
                (declare (not safe))
                (cons __tmp25403 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25408
                                                       __tmp25402))))
                                          (declare (not safe))
                                          (cons __tmp25401 '()))))
                                   (declare (not safe))
                                   (cons __tmp25409 __tmp25400))))
                            (declare (not safe))
                            (cons __tmp25417 __tmp25399)))
                         (__tmp25361
                          (let ((__tmp25362
                                 (let ((__tmp25397 (gx#datum->syntax '#f 'if))
                                       (__tmp25363
                                        (let ((__tmp25396
                                               (gx#datum->syntax '#f 'q))
                                              (__tmp25364
                                               (let ((__tmp25367
                                                      (let ((__tmp25395
                                                             (gx#datum->syntax
                                                              '#f
                                                              'if))
                                                            (__tmp25368
                                                             (let ((__tmp25388
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp25389
                                   (let ((__tmp25391
                                          (let ((__tmp25394
                                                 (gx#datum->syntax '#f '##car))
                                                (__tmp25392
                                                 (let ((__tmp25393
                                                        (gx#datum->syntax
                                                         '#f
                                                         'q)))
                                                   (declare (not safe))
                                                   (cons __tmp25393 '()))))
                                            (declare (not safe))
                                            (cons __tmp25394 __tmp25392)))
                                         (__tmp25390
                                          (let ()
                                            (declare (not safe))
                                            (cons _L13375_ '()))))
                                     (declare (not safe))
                                     (cons __tmp25391 __tmp25390))))
                              (declare (not safe))
                              (cons _L13366_ __tmp25389)))
                           (__tmp25369
                            (let ((__tmp25372
                                   (let ((__tmp25387
                                          (gx#datum->syntax '#f 'let))
                                         (__tmp25373
                                          (let ((__tmp25380
                                                 (let ((__tmp25386
                                                        (gx#datum->syntax
                                                         '#f
                                                         'x))
                                                       (__tmp25381
                                                        (let ((__tmp25382
                                                               (let ((__tmp25385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f '##cdr))
                             (__tmp25383
                              (let ((__tmp25384 (gx#datum->syntax '#f 'q)))
                                (declare (not safe))
                                (cons __tmp25384 '()))))
                         (declare (not safe))
                         (cons __tmp25385 __tmp25383))))
                  (declare (not safe))
                  (cons __tmp25382 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25386
                                                         __tmp25381)))
                                                (__tmp25374
                                                 (let ((__tmp25375
                                                        (let ((__tmp25379
                                                               (gx#datum->syntax
                                                                '#f
                                                                '~case-dispatch))
                                                              (__tmp25376
                                                               (let ((__tmp25378
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'x))
                             (__tmp25377
                              (foldr (lambda (_g1341913422_ _g1342013425_)
                                       (let ()
                                         (declare (not safe))
                                         (cons _g1341913422_ _g1342013425_)))
                                     '()
                                     _L13372_)))
                         (declare (not safe))
                         (cons __tmp25378 __tmp25377))))
                  (declare (not safe))
                  (cons __tmp25379 __tmp25376))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25375 '()))))
                                            (declare (not safe))
                                            (cons __tmp25380 __tmp25374))))
                                     (declare (not safe))
                                     (cons __tmp25387 __tmp25373)))
                                  (__tmp25370
                                   (let ((__tmp25371
                                          (let ()
                                            (declare (not safe))
                                            (cons _L13374_ '()))))
                                     (declare (not safe))
                                     (cons __tmp25371 '()))))
                              (declare (not safe))
                              (cons __tmp25372 __tmp25370))))
                       (declare (not safe))
                       (cons __tmp25388 __tmp25369))))
                (declare (not safe))
                (cons __tmp25395 __tmp25368)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp25365
                                                      (let ((__tmp25366
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _L13374_ '()))))
                (declare (not safe))
                (cons __tmp25366 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25367
                                                       __tmp25365))))
                                          (declare (not safe))
                                          (cons __tmp25396 __tmp25364))))
                                   (declare (not safe))
                                   (cons __tmp25397 __tmp25363))))
                            (declare (not safe))
                            (cons __tmp25362 '()))))
                     (declare (not safe))
                     (cons __tmp25398 __tmp25361))))
              (declare (not safe))
              (cons __tmp25422 __tmp25360))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp25359 '()))))
                                        (declare (not safe))
                                        (cons __tmp25423 __tmp25358))))
                                 (declare (not safe))
                                 (cons __tmp25436 __tmp25357))))
                           _hd1323213360_
                           _hd1322913350_
                           _hd1322613340_
                           _hd1322313330_
                           _hd1322013320_
                           _dispatch1321813312_
                           _hd1320513270_
                           _hd1320213260_
                           _hd1319913250_)
                          (_g1318713239_ _g1318813243_))))
                  (_g1318713239_ _g1318813243_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1318713239_
                                                   _g1318813243_))))
                                          (_g1318713239_ _g1318813243_))))
                                  (_g1318713239_ _g1318813243_))))
                          (_g1318713239_ _g1318813243_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1321313292_
                                               _target1321013286_
                                               '()))
                                            (_g1318713239_ _g1318813243_)))))
                                  (_g1318713239_ _g1318813243_))))
                          (_g1318713239_ _g1318813243_))))
                  (_g1318713239_ _g1318813243_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1318713239_
                                                   _g1318813243_))))
                                          (_g1318713239_ _g1318813243_)))))
                              (_g1318613428_
                               (list _e13168_
                                     (gx#genident 'default)
                                     (gx#genident 'table)
                                     _dispatch13171_
                                     _default13172_
                                     _tab13182_
                                     (vector-length _tab13182_)
                                     _hashf13176_
                                     _eqf13177_))))))))))
          (let* ((_g1304413068_
                  (lambda (_g1304513064_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1304513064_)))
                 (_g1304313164_
                  (lambda (_g1304513072_)
                    (if (gx#stx-pair? _g1304513072_)
                        (let ((_e1304813075_ (gx#syntax-e _g1304513072_)))
                          (let ((_hd1304913079_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1304813075_)))
                                (_tl1305013082_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1304813075_))))
                            (if (gx#stx-pair? _tl1305013082_)
                                (let ((_e1305113085_
                                       (gx#syntax-e _tl1305013082_)))
                                  (let ((_hd1305213089_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1305113085_)))
                                        (_tl1305313092_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1305113085_))))
                                    (if (gx#stx-pair/null? _tl1305313092_)
                                        (let ((_g25437_
                                               (gx#syntax-split-splice
                                                _tl1305313092_
                                                '0)))
                                          (begin
                                            (let ((_g25438_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g25437_)
                                                         (##vector-length
                                                          _g25437_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g25438_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g25438_)))
                                            (let ((_target1305413095_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g25437_
                                                      0)))
                                                  (_tl1305613098_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g25437_
                                                      1))))
                                              (if (gx#stx-null? _tl1305613098_)
                                                  (letrec ((_loop1305713101_
                                                            (lambda (_hd1305513105_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause1306113108_)
                      (if (gx#stx-pair? _hd1305513105_)
                          (let ((_e1305813111_ (gx#syntax-e _hd1305513105_)))
                            (let ((_lp-hd1305913115_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1305813111_)))
                                  (_lp-tl1306013118_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1305813111_))))
                              (_loop1305713101_
                               _lp-tl1306013118_
                               (let ()
                                 (declare (not safe))
                                 (cons _lp-hd1305913115_
                                       _clause1306113108_)))))
                          (let ((_clause1306213121_
                                 (reverse _clause1306113108_)))
                            ((lambda (_L13125_ _L13127_)
                               (let ((_g25439_
                                      (_parse-clauses13018_
                                       _L13127_
                                       (foldr (lambda (_g1314513148_
                                                       _g1314613151_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g1314513148_
                                                        _g1314613151_)))
                                              '()
                                              _L13125_))))
                                 (begin
                                   (let ((_g25440_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g25439_)
                                                (##vector-length _g25439_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g25440_ 3)))
                                         (error "Context expects 3 values"
                                                _g25440_)))
                                   (let ((_datums13154_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g25439_ 0)))
                                         (_dispatch13156_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g25439_ 1)))
                                         (_default13157_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g25439_ 2))))
                                     (let ((_datum-count13159_
                                            (_count-datums13021_
                                             _datums13154_)))
                                       (if (< _datum-count13159_ '6)
                                           (_generate-simple-case13026_
                                            _L13127_
                                            _datums13154_
                                            _dispatch13156_
                                            _default13157_)
                                           (if (_char-datums?13023_
                                                _datums13154_)
                                               (_generate-char-dispatch13035_
                                                _L13127_
                                                _datums13154_
                                                _dispatch13156_
                                                _default13157_)
                                               (if (_fixnum-datums?13024_
                                                    _datums13154_)
                                                   (_generate-fixnum-dispatch13040_
                                                    _L13127_
                                                    _datums13154_
                                                    _dispatch13156_
                                                    _default13157_)
                                                   (if (< _datum-count13159_
                                                          '12)
                                                       (_generate-simple-case13026_
                                                        _L13127_
                                                        _datums13154_
                                                        _dispatch13156_
                                                        _default13157_)
                                                       (if (_symbolic-datums?13022_
                                                            _datums13154_)
                                                           (_generate-symbolic-dispatch13030_
                                                            _L13127_
                                                            _datums13154_
                                                            _dispatch13156_
                                                            _default13157_)
                                                           (_generate-generic-dispatch13042_
                                                            _L13127_
                                                            _datums13154_
                                                            _dispatch13156_
                                                            _default13157_)))))))))))
                             _clause1306213121_
                             _hd1305213089_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1305713101_
                                                     _target1305413095_
                                                     '()))
                                                  (_g1304413068_
                                                   _g1304513072_)))))
                                        (_g1304413068_ _g1304513072_))))
                                (_g1304413068_ _g1304513072_))))
                        (_g1304413068_ _g1304513072_)))))
            (_g1304313164_ _stx13015_)))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#~case-test|
      (lambda (_stx16066_)
        (let* ((_g1606916087_
                (lambda (_g1607016083_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1607016083_)))
               (_g1606816153_
                (lambda (_g1607016091_)
                  (if (gx#stx-pair? _g1607016091_)
                      (let ((_e1607316094_ (gx#syntax-e _g1607016091_)))
                        (let ((_hd1607416098_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1607316094_)))
                              (_tl1607516101_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1607316094_))))
                          (if (gx#stx-pair? _tl1607516101_)
                              (let ((_e1607616104_
                                     (gx#syntax-e _tl1607516101_)))
                                (let ((_hd1607716108_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1607616104_)))
                                      (_tl1607816111_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1607616104_))))
                                  (if (gx#stx-pair? _tl1607816111_)
                                      (let ((_e1607916114_
                                             (gx#syntax-e _tl1607816111_)))
                                        (let ((_hd1608016118_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1607916114_)))
                                              (_tl1608116121_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1607916114_))))
                                          (if (gx#stx-null? _tl1608116121_)
                                              ((lambda (_L16124_ _L16126_)
                                                 (let ((_datum-e16142_
                                                        (gx#stx-e _L16126_)))
                                                   (if (or (let ()
                                                             (declare
                                                               (not safe))
                                                             (symbol? _datum-e16142_))
                                                           (keyword?
                                                            _datum-e16142_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (immediate?
                                                              _datum-e16142_)))
                                                       (let ((__tmp25446
                                                              (gx#datum->syntax
                                                               '#f
                                                               'eq?))
                                                             (__tmp25441
                                                              (let ((__tmp25443
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp25445 (gx#datum->syntax '#f 'quote))
                                   (__tmp25444
                                    (let ()
                                      (declare (not safe))
                                      (cons _L16126_ '()))))
                               (declare (not safe))
                               (cons __tmp25445 __tmp25444)))
                            (__tmp25442
                             (let ()
                               (declare (not safe))
                               (cons _L16124_ '()))))
                        (declare (not safe))
                        (cons __tmp25443 __tmp25442))))
                 (declare (not safe))
                 (cons __tmp25446 __tmp25441))
               (if (let () (declare (not safe)) (number? _datum-e16142_))
                   (let ((__tmp25452 (gx#datum->syntax '#f 'eqv?))
                         (__tmp25447
                          (let ((__tmp25449
                                 (let ((__tmp25451
                                        (gx#datum->syntax '#f 'quote))
                                       (__tmp25450
                                        (let ()
                                          (declare (not safe))
                                          (cons _L16126_ '()))))
                                   (declare (not safe))
                                   (cons __tmp25451 __tmp25450)))
                                (__tmp25448
                                 (let ()
                                   (declare (not safe))
                                   (cons _L16124_ '()))))
                            (declare (not safe))
                            (cons __tmp25449 __tmp25448))))
                     (declare (not safe))
                     (cons __tmp25452 __tmp25447))
                   (let ((__tmp25458 (gx#datum->syntax '#f 'equal?))
                         (__tmp25453
                          (let ((__tmp25455
                                 (let ((__tmp25457
                                        (gx#datum->syntax '#f 'quote))
                                       (__tmp25456
                                        (let ()
                                          (declare (not safe))
                                          (cons _L16126_ '()))))
                                   (declare (not safe))
                                   (cons __tmp25457 __tmp25456)))
                                (__tmp25454
                                 (let ()
                                   (declare (not safe))
                                   (cons _L16124_ '()))))
                            (declare (not safe))
                            (cons __tmp25455 __tmp25454))))
                     (declare (not safe))
                     (cons __tmp25458 __tmp25453))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd1608016118_
                                               _hd1607716108_)
                                              (_g1606916087_ _g1607016091_))))
                                      (_g1606916087_ _g1607016091_))))
                              (_g1606916087_ _g1607016091_))))
                      (_g1606916087_ _g1607016091_)))))
          (_g1606816153_ _stx16066_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#~case-dispatch|
      (lambda (_$stx16157_)
        (let* ((_g1616116185_
                (lambda (_g1616216181_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1616216181_)))
               (_g1616016270_
                (lambda (_g1616216189_)
                  (if (gx#stx-pair? _g1616216189_)
                      (let ((_e1616516192_ (gx#syntax-e _g1616216189_)))
                        (let ((_hd1616616196_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1616516192_)))
                              (_tl1616716199_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1616516192_))))
                          (if (gx#stx-pair? _tl1616716199_)
                              (let ((_e1616816202_
                                     (gx#syntax-e _tl1616716199_)))
                                (let ((_hd1616916206_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1616816202_)))
                                      (_tl1617016209_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1616816202_))))
                                  (if (gx#stx-pair/null? _tl1617016209_)
                                      (let ((_g25459_
                                             (gx#syntax-split-splice
                                              _tl1617016209_
                                              '0)))
                                        (begin
                                          (let ((_g25460_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g25459_)
                                                       (##vector-length
                                                        _g25459_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g25460_ 2)))
                                                (error "Context expects 2 values"
                                                       _g25460_)))
                                          (let ((_target1617116212_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25459_ 0)))
                                                (_tl1617316215_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25459_ 1))))
                                            (if (gx#stx-null? _tl1617316215_)
                                                (letrec ((_loop1617416218_
                                                          (lambda (_hd1617216222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _K1617816225_)
                    (if (gx#stx-pair? _hd1617216222_)
                        (let ((_e1617516228_ (gx#syntax-e _hd1617216222_)))
                          (let ((_lp-hd1617616232_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1617516228_)))
                                (_lp-tl1617716235_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1617516228_))))
                            (_loop1617416218_
                             _lp-tl1617716235_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1617616232_ _K1617816225_)))))
                        (let ((_K1617916238_ (reverse _K1617816225_)))
                          ((lambda (_L16242_ _L16244_)
                             (let ((__tmp25464
                                    (gx#datum->syntax '#f '~case-dispatch*))
                                   (__tmp25461
                                    (let ((__tmp25462
                                           (let ((__tmp25463
                                                  (foldr (lambda (_g1626116264_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g1626216267_)
                   (let ()
                     (declare (not safe))
                     (cons _g1626116264_ _g1626216267_)))
                 '()
                 _L16242_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (cons _L16244_ __tmp25463))))
                                      (declare (not safe))
                                      (cons '0 __tmp25462))))
                               (declare (not safe))
                               (cons __tmp25464 __tmp25461)))
                           _K1617916238_
                           _hd1616916206_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1617416218_
                                                   _target1617116212_
                                                   '()))
                                                (_g1616116185_
                                                 _g1616216189_)))))
                                      (_g1616116185_ _g1616216189_))))
                              (_g1616116185_ _g1616216189_))))
                      (_g1616116185_ _g1616216189_)))))
          (_g1616016270_ _$stx16157_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#~case-dispatch*|
      (lambda (_stx16275_)
        (let* ((___stx2328023281_ _stx16275_)
               (_g1628216378_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2328023281_))))
          (let ((___kont2328323284_
                 (lambda (_L16855_ _L16857_)
                   (let ((__tmp25466 (gx#datum->syntax '#f 'quote))
                         (__tmp25465
                          (let () (declare (not safe)) (cons '#!void '()))))
                     (declare (not safe))
                     (cons __tmp25466 __tmp25465))))
                (___kont2328523286_
                 (lambda (_L16797_ _L16799_ _L16800_) _L16797_))
                (___kont2328723288_
                 (lambda (_L16694_ _L16696_ _L16697_ _L16698_)
                   (let* ((_g1671916727_
                           (lambda (_g1672016723_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g1672016723_)))
                          (_g1671816746_
                           (lambda (_g1672016731_)
                             ((lambda (_L16734_)
                                (let ()
                                  (let ((__tmp25474 (gx#datum->syntax '#f 'if))
                                        (__tmp25467
                                         (let ((__tmp25470
                                                (let ((__tmp25473
                                                       (gx#datum->syntax
                                                        '#f
                                                        '##fx=))
                                                      (__tmp25471
                                                       (let ((__tmp25472
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L16734_ '()))))
                 (declare (not safe))
                 (cons _L16697_ __tmp25472))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25473
                                                        __tmp25471)))
                                               (__tmp25468
                                                (let ((__tmp25469
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L16694_ '()))))
                                                  (declare (not safe))
                                                  (cons _L16696_ __tmp25469))))
                                           (declare (not safe))
                                           (cons __tmp25470 __tmp25468))))
                                    (declare (not safe))
                                    (cons __tmp25474 __tmp25467))))
                              _g1672016731_))))
                     (_g1671816746_ (gx#stx-e _L16698_)))))
                (___kont2328923290_
                 (lambda (_L16544_ _L16546_ _L16547_ _L16548_ _L16549_)
                   (let* ((_g1657316588_
                           (lambda (_g1657416584_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _g1657416584_)))
                          (_g1657216633_
                           (lambda (_g1657416592_)
                             (if (gx#stx-pair? _g1657416592_)
                                 (let ((_e1657716595_
                                        (gx#syntax-e _g1657416592_)))
                                   (let ((_hd1657816599_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e1657716595_)))
                                         (_tl1657916602_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e1657716595_))))
                                     (if (gx#stx-pair? _tl1657916602_)
                                         (let ((_e1658016605_
                                                (gx#syntax-e _tl1657916602_)))
                                           (let ((_hd1658116609_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e1658016605_)))
                                                 (_tl1658216612_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e1658016605_))))
                                             (if (gx#stx-null? _tl1658216612_)
                                                 ((lambda (_L16615_ _L16617_)
                                                    (let ()
                                                      (let ((__tmp25491
                                                             (gx#datum->syntax
                                                              '#f
                                                              'if))
                                                            (__tmp25475
                                                             (let ((__tmp25487
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp25490 (gx#datum->syntax '#f '##fx=))
                                  (__tmp25488
                                   (let ((__tmp25489
                                          (let ()
                                            (declare (not safe))
                                            (cons _L16617_ '()))))
                                     (declare (not safe))
                                     (cons _L16548_ __tmp25489))))
                              (declare (not safe))
                              (cons __tmp25490 __tmp25488)))
                           (__tmp25476
                            (let ((__tmp25477
                                   (let ((__tmp25478
                                          (let ((__tmp25486
                                                 (gx#datum->syntax '#f 'if))
                                                (__tmp25479
                                                 (let ((__tmp25482
                                                        (let ((__tmp25485
                                                               (gx#datum->syntax
                                                                '#f
                                                                '##fx=))
                                                              (__tmp25483
                                                               (let ((__tmp25484
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _L16615_ '()))))
                         (declare (not safe))
                         (cons _L16548_ __tmp25484))))
                  (declare (not safe))
                  (cons __tmp25485 __tmp25483)))
               (__tmp25480
                (let ((__tmp25481
                       (let () (declare (not safe)) (cons _L16544_ '()))))
                  (declare (not safe))
                  (cons _L16546_ __tmp25481))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25482
                                                         __tmp25480))))
                                            (declare (not safe))
                                            (cons __tmp25486 __tmp25479))))
                                     (declare (not safe))
                                     (cons __tmp25478 '()))))
                              (declare (not safe))
                              (cons _L16547_ __tmp25477))))
                       (declare (not safe))
                       (cons __tmp25487 __tmp25476))))
                (declare (not safe))
                (cons __tmp25491 __tmp25475))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1658116609_
                                                  _hd1657816599_)
                                                 (_g1657316588_
                                                  _g1657416592_))))
                                         (_g1657316588_ _g1657416592_))))
                                 (_g1657316588_ _g1657416592_)))))
                     (_g1657216633_
                      (list (gx#stx-e _L16549_)
                            (let ((__tmp25492 (gx#stx-e _L16549_)))
                              (declare (not safe))
                              (fx+ __tmp25492 '1)))))))
                (___kont2329123292_
                 (lambda (_L16445_ _L16447_ _L16448_)
                   (let ((__tmp25496
                          (gx#datum->syntax '#f '~case-dispatch-bsearch))
                         (__tmp25493
                          (let ((__tmp25494
                                 (let ((__tmp25495
                                        (foldr (lambda (_g1646816471_
                                                        _g1646916474_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g1646816471_
                                                         _g1646916474_)))
                                               '()
                                               _L16445_)))
                                   (declare (not safe))
                                   (cons _L16447_ __tmp25495))))
                            (declare (not safe))
                            (cons _L16448_ __tmp25494))))
                     (declare (not safe))
                     (cons __tmp25496 __tmp25493)))))
            (let ((___match2343723438_
                   (lambda (_e1635516385_
                            _hd1635616389_
                            _tl1635716392_
                            _e1635816395_
                            _hd1635916399_
                            _tl1636016402_
                            _e1636116405_
                            _hd1636216409_
                            _tl1636316412_
                            ___splice2329323294_
                            _target1636416415_
                            _tl1636616418_)
                     (letrec ((_loop1636716421_
                               (lambda (_hd1636516425_ _K1637116428_)
                                 (if (gx#stx-pair? _hd1636516425_)
                                     (let ((_e1636816431_
                                            (gx#syntax-e _hd1636516425_)))
                                       (let ((_lp-tl1637016438_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e1636816431_)))
                                             (_lp-hd1636916435_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e1636816431_))))
                                         (_loop1636716421_
                                          _lp-tl1637016438_
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd1636916435_
                                                  _K1637116428_)))))
                                     (let ((_K1637216441_
                                            (reverse _K1637116428_)))
                                       (___kont2329123292_
                                        _K1637216441_
                                        _hd1636216409_
                                        _hd1635916399_))))))
                       (_loop1636716421_ _target1636416415_ '())))))
              (if (gx#stx-pair? ___stx2328023281_)
                  (let ((_e1628616825_ (gx#syntax-e ___stx2328023281_)))
                    (let ((_tl1628816832_
                           (let () (declare (not safe)) (##cdr _e1628616825_)))
                          (_hd1628716829_
                           (let ()
                             (declare (not safe))
                             (##car _e1628616825_))))
                      (if (gx#stx-pair? _tl1628816832_)
                          (let ((_e1628916835_ (gx#syntax-e _tl1628816832_)))
                            (let ((_tl1629116842_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1628916835_)))
                                  (_hd1629016839_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1628916835_))))
                              (if (gx#stx-pair? _tl1629116842_)
                                  (let ((_e1629216845_
                                         (gx#syntax-e _tl1629116842_)))
                                    (let ((_tl1629416852_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1629216845_)))
                                          (_hd1629316849_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1629216845_))))
                                      (if (gx#stx-null? _tl1629416852_)
                                          (___kont2328323284_
                                           _hd1629316849_
                                           _hd1629016839_)
                                          (if (gx#stx-pair? _tl1629416852_)
                                              (let ((_e1630716787_
                                                     (gx#syntax-e
                                                      _tl1629416852_)))
                                                (let ((_tl1630916794_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1630716787_)))
                                                      (_hd1630816791_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1630716787_))))
                                                  (if (gx#stx-null?
                                                       _tl1630916794_)
                                                      (___kont2328523286_
                                                       _hd1630816791_
                                                       _hd1629316849_
                                                       _hd1629016839_)
                                                      (if (gx#stx-pair?
                                                           _tl1630916794_)
                                                          (let ((_e1632616684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1630916794_)))
                    (let ((_tl1632816691_
                           (let () (declare (not safe)) (##cdr _e1632616684_)))
                          (_hd1632716688_
                           (let ()
                             (declare (not safe))
                             (##car _e1632616684_))))
                      (if (gx#stx-null? _tl1632816691_)
                          (___kont2328723288_
                           _hd1632716688_
                           _hd1630816791_
                           _hd1629316849_
                           _hd1629016839_)
                          (if (gx#stx-pair? _tl1632816691_)
                              (let ((_e1634916534_
                                     (gx#syntax-e _tl1632816691_)))
                                (let ((_tl1635116541_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1634916534_)))
                                      (_hd1635016538_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1634916534_))))
                                  (if (gx#stx-null? _tl1635116541_)
                                      (___kont2328923290_
                                       _hd1635016538_
                                       _hd1632716688_
                                       _hd1630816791_
                                       _hd1629316849_
                                       _hd1629016839_)
                                      (if (gx#stx-pair/null? _tl1629416852_)
                                          (let ((___splice2329323294_
                                                 (gx#syntax-split-splice
                                                  _tl1629416852_
                                                  '0)))
                                            (let ((_tl1636616418_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2329323294_
                                                      '1)))
                                                  (_target1636416415_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2329323294_
                                                      '0))))
                                              (if (gx#stx-null? _tl1636616418_)
                                                  (___match2343723438_
                                                   _e1628616825_
                                                   _hd1628716829_
                                                   _tl1628816832_
                                                   _e1628916835_
                                                   _hd1629016839_
                                                   _tl1629116842_
                                                   _e1629216845_
                                                   _hd1629316849_
                                                   _tl1629416852_
                                                   ___splice2329323294_
                                                   _target1636416415_
                                                   _tl1636616418_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1628216378_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1628216378_))))))
                              (if (gx#stx-pair/null? _tl1629416852_)
                                  (let ((___splice2329323294_
                                         (gx#syntax-split-splice
                                          _tl1629416852_
                                          '0)))
                                    (let ((_tl1636616418_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2329323294_
                                              '1)))
                                          (_target1636416415_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice2329323294_
                                              '0))))
                                      (if (gx#stx-null? _tl1636616418_)
                                          (___match2343723438_
                                           _e1628616825_
                                           _hd1628716829_
                                           _tl1628816832_
                                           _e1628916835_
                                           _hd1629016839_
                                           _tl1629116842_
                                           _e1629216845_
                                           _hd1629316849_
                                           _tl1629416852_
                                           ___splice2329323294_
                                           _target1636416415_
                                           _tl1636616418_)
                                          (let ()
                                            (declare (not safe))
                                            (_g1628216378_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1628216378_)))))))
                  (if (gx#stx-pair/null? _tl1629416852_)
                      (let ((___splice2329323294_
                             (gx#syntax-split-splice _tl1629416852_ '0)))
                        (let ((_tl1636616418_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice2329323294_ '1)))
                              (_target1636416415_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice2329323294_ '0))))
                          (if (gx#stx-null? _tl1636616418_)
                              (___match2343723438_
                               _e1628616825_
                               _hd1628716829_
                               _tl1628816832_
                               _e1628916835_
                               _hd1629016839_
                               _tl1629116842_
                               _e1629216845_
                               _hd1629316849_
                               _tl1629416852_
                               ___splice2329323294_
                               _target1636416415_
                               _tl1636616418_)
                              (let () (declare (not safe)) (_g1628216378_)))))
                      (let () (declare (not safe)) (_g1628216378_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl1629416852_)
                                                  (let ((___splice2329323294_
                                                         (gx#syntax-split-splice
                                                          _tl1629416852_
                                                          '0)))
                                                    (let ((_tl1636616418_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice2329323294_
                                                              '1)))
                                                          (_target1636416415_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice2329323294_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl1636616418_)
                                                          (___match2343723438_
                                                           _e1628616825_
                                                           _hd1628716829_
                                                           _tl1628816832_
                                                           _e1628916835_
                                                           _hd1629016839_
                                                           _tl1629116842_
                                                           _e1629216845_
                                                           _hd1629316849_
                                                           _tl1629416852_
                                                           ___splice2329323294_
                                                           _target1636416415_
                                                           _tl1636616418_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g1628216378_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1628216378_)))))))
                                  (let ()
                                    (declare (not safe))
                                    (_g1628216378_)))))
                          (let () (declare (not safe)) (_g1628216378_)))))
                  (let () (declare (not safe)) (_g1628216378_))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#~case-dispatch-bsearch|
      (lambda (_stx16877_)
        (letrec ((_split16880_
                  (lambda (_lst17241_ _mid17243_)
                    (let _lp17245_ ((_i17248_ '0)
                                    (_rest17250_ _lst17241_)
                                    (_left17251_ '()))
                      (if (fx< _i17248_ _mid17243_)
                          (_lp17245_
                           (let () (declare (not safe)) (fx+ _i17248_ '1))
                           (cdr _rest17250_)
                           (let ((__tmp25497 (car _rest17250_)))
                             (declare (not safe))
                             (cons __tmp25497 _left17251_)))
                          (values (reverse _left17251_) _rest17250_))))))
          (let* ((_g1688316911_
                  (lambda (_g1688416907_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1688416907_)))
                 (_g1688217237_
                  (lambda (_g1688416915_)
                    (if (gx#stx-pair? _g1688416915_)
                        (let ((_e1688816918_ (gx#syntax-e _g1688416915_)))
                          (let ((_hd1688916922_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1688816918_)))
                                (_tl1689016925_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1688816918_))))
                            (if (gx#stx-pair? _tl1689016925_)
                                (let ((_e1689116928_
                                       (gx#syntax-e _tl1689016925_)))
                                  (let ((_hd1689216932_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1689116928_)))
                                        (_tl1689316935_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1689116928_))))
                                    (if (gx#stx-pair? _tl1689316935_)
                                        (let ((_e1689416938_
                                               (gx#syntax-e _tl1689316935_)))
                                          (let ((_hd1689516942_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1689416938_)))
                                                (_tl1689616945_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1689416938_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1689616945_)
                                                (let ((_g25498_
                                                       (gx#syntax-split-splice
                                                        _tl1689616945_
                                                        '0)))
                                                  (begin
                                                    (let ((_g25499_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g25498_)
                         (##vector-length _g25498_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g25499_ 2)))
                  (error "Context expects 2 values" _g25499_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1689716948_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g25498_
                                                              0)))
                                                          (_tl1689916951_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g25498_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1689916951_)
                                                          (letrec ((_loop1690016954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1689816958_ _K1690416961_)
                              (if (gx#stx-pair? _hd1689816958_)
                                  (let ((_e1690116964_
                                         (gx#syntax-e _hd1689816958_)))
                                    (let ((_lp-hd1690216968_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1690116964_)))
                                          (_lp-tl1690316971_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1690116964_))))
                                      (_loop1690016954_
                                       _lp-tl1690316971_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1690216968_
                                               _K1690416961_)))))
                                  (let ((_K1690516974_
                                         (reverse _K1690416961_)))
                                    ((lambda (_L16978_ _L16980_ _L16981_)
                                       (let* ((_len17011_
                                               (length (foldr (lambda (_g1700217005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1700317008_)
                        (let ()
                          (declare (not safe))
                          (cons _g1700217005_ _g1700317008_)))
                      '()
                      _L16978_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_mid17014_
                                               (quotient _len17011_ '2))
                                              (_g25500_
                                               (_split16880_
                                                (foldr (lambda (_g1701617019_
                                                                _g1701717022_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _g1701617019_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1701717022_)))
               '()
               _L16978_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _mid17014_)))
                                         (begin
                                           (let ((_g25501_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g25500_)
                                                        (##vector-length
                                                         _g25500_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g25501_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g25501_)))
                                           (let ((_left17025_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref _g25500_ 0)))
                                                 (_right17027_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _g25500_
                                                     1))))
                                             (let ()
                                               (let* ((_g1703117072_
                                                       (lambda (_g1703217068_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _g1703217068_)))
                                                      (_g1703017233_
                                                       (lambda (_g1703217076_)
                                                         (if (gx#stx-pair?
                                                              _g1703217076_)
                                                             (let ((_e1703717079_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _g1703217076_)))
                       (let ((_hd1703817083_
                              (let ()
                                (declare (not safe))
                                (##car _e1703717079_)))
                             (_tl1703917086_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1703717079_))))
                         (if (gx#stx-pair? _tl1703917086_)
                             (let ((_e1704017089_
                                    (gx#syntax-e _tl1703917086_)))
                               (let ((_hd1704117093_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1704017089_)))
                                     (_tl1704217096_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1704017089_))))
                                 (if (gx#stx-pair/null? _hd1704117093_)
                                     (let ((_g25502_
                                            (gx#syntax-split-splice
                                             _hd1704117093_
                                             '0)))
                                       (begin
                                         (let ((_g25503_
                                                (let ()
                                                  (declare (not safe))
                                                  (if (##values? _g25502_)
                                                      (##vector-length
                                                       _g25502_)
                                                      1))))
                                           (if (not (let ()
                                                      (declare (not safe))
                                                      (##fx= _g25503_ 2)))
                                               (error "Context expects 2 values"
                                                      _g25503_)))
                                         (let ((_target1704317099_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g25502_ 0)))
                                               (_tl1704517102_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g25502_ 1))))
                                           (if (gx#stx-null? _tl1704517102_)
                                               (letrec ((_loop1704617105_
                                                         (lambda (_hd1704417109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K-left1705017112_)
                   (if (gx#stx-pair? _hd1704417109_)
                       (let ((_e1704717115_ (gx#syntax-e _hd1704417109_)))
                         (let ((_lp-hd1704817119_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1704717115_)))
                               (_lp-tl1704917122_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1704717115_))))
                           (_loop1704617105_
                            _lp-tl1704917122_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd1704817119_ _K-left1705017112_)))))
                       (let ((_K-left1705117125_ (reverse _K-left1705017112_)))
                         (if (gx#stx-pair? _tl1704217096_)
                             (let ((_e1705217129_
                                    (gx#syntax-e _tl1704217096_)))
                               (let ((_hd1705317133_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1705217129_)))
                                     (_tl1705417136_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1705217129_))))
                                 (if (gx#stx-pair/null? _hd1705317133_)
                                     (let ((_g25504_
                                            (gx#syntax-split-splice
                                             _hd1705317133_
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
                                         (let ((_target1705517139_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g25504_ 0)))
                                               (_tl1705717142_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref _g25504_ 1))))
                                           (if (gx#stx-null? _tl1705717142_)
                                               (letrec ((_loop1705817145_
                                                         (lambda (_hd1705617149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _K-right1706217152_)
                   (if (gx#stx-pair? _hd1705617149_)
                       (let ((_e1705917155_ (gx#syntax-e _hd1705617149_)))
                         (let ((_lp-hd1706017159_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1705917155_)))
                               (_lp-tl1706117162_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1705917155_))))
                           (_loop1705817145_
                            _lp-tl1706117162_
                            (let ()
                              (declare (not safe))
                              (cons _lp-hd1706017159_ _K-right1706217152_)))))
                       (let ((_K-right1706317165_
                              (reverse _K-right1706217152_)))
                         (if (gx#stx-pair? _tl1705417136_)
                             (let ((_e1706417169_
                                    (gx#syntax-e _tl1705417136_)))
                               (let ((_hd1706517173_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1706417169_)))
                                     (_tl1706617176_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1706417169_))))
                                 (if (gx#stx-null? _tl1706617176_)
                                     ((lambda (_L17179_
                                               _L17181_
                                               _L17182_
                                               _L17183_)
                                        (let ()
                                          (let ((__tmp25523
                                                 (gx#datum->syntax '#f 'if))
                                                (__tmp25506
                                                 (let ((__tmp25519
                                                        (let ((__tmp25522
                                                               (gx#datum->syntax
                                                                '#f
                                                                '##fx<))
                                                              (__tmp25520
                                                               (let ((__tmp25521
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (cons _L17179_ '()))))
                         (declare (not safe))
                         (cons _L16980_ __tmp25521))))
                  (declare (not safe))
                  (cons __tmp25522 __tmp25520)))
               (__tmp25507
                (let ((__tmp25514
                       (let ((__tmp25518
                              (gx#datum->syntax '#f '~case-dispatch*))
                             (__tmp25515
                              (let ((__tmp25516
                                     (let ((__tmp25517
                                            (foldr (lambda (_g1721617221_
                                                            _g1721717224_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g1721617221_
                                                             _g1721717224_)))
                                                   '()
                                                   _L17182_)))
                                       (declare (not safe))
                                       (cons _L16980_ __tmp25517))))
                                (declare (not safe))
                                (cons _L16981_ __tmp25516))))
                         (declare (not safe))
                         (cons __tmp25518 __tmp25515)))
                      (__tmp25508
                       (let ((__tmp25509
                              (let ((__tmp25513
                                     (gx#datum->syntax '#f '~case-dispatch*))
                                    (__tmp25510
                                     (let ((__tmp25511
                                            (let ((__tmp25512
                                                   (foldr (lambda (_g1721817227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1721917230_)
                    (let ()
                      (declare (not safe))
                      (cons _g1721817227_ _g1721917230_)))
                  '()
                  _L17181_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (cons _L16980_ __tmp25512))))
                                       (declare (not safe))
                                       (cons _L17179_ __tmp25511))))
                                (declare (not safe))
                                (cons __tmp25513 __tmp25510))))
                         (declare (not safe))
                         (cons __tmp25509 '()))))
                  (declare (not safe))
                  (cons __tmp25514 __tmp25508))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25519
                                                         __tmp25507))))
                                            (declare (not safe))
                                            (cons __tmp25523 __tmp25506))))
                                      _hd1706517173_
                                      _K-right1706317165_
                                      _K-left1705117125_
                                      _hd1703817083_)
                                     (_g1703117072_ _g1703217076_))))
                             (_g1703117072_ _g1703217076_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1705817145_
                                                  _target1705517139_
                                                  '()))
                                               (_g1703117072_
                                                _g1703217076_)))))
                                     (_g1703117072_ _g1703217076_))))
                             (_g1703117072_ _g1703217076_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop1704617105_
                                                  _target1704317099_
                                                  '()))
                                               (_g1703117072_
                                                _g1703217076_)))))
                                     (_g1703117072_ _g1703217076_))))
                             (_g1703117072_ _g1703217076_))))
                     (_g1703117072_ _g1703217076_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1703017233_
                                                  (list _mid17014_
                                                        _left17025_
                                                        _right17027_
                                                        (fx+ _mid17014_
                                                             (gx#stx-e
                                                              _L16981_))))))))))
                                     _K1690516974_
                                     _hd1689516942_
                                     _hd1689216932_))))))
                    (_loop1690016954_ _target1689716948_ '()))
                  (_g1688316911_ _g1688416915_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1688316911_
                                                 _g1688416915_))))
                                        (_g1688316911_ _g1688416915_))))
                                (_g1688316911_ _g1688416915_))))
                        (_g1688316911_ _g1688416915_)))))
            (_g1688217237_ _stx16877_)))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#do|
      (lambda (_$stx17257_)
        (let* ((_g1726117332_
                (lambda (_g1726217328_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1726217328_)))
               (_g1726017621_
                (lambda (_g1726217336_)
                  (if (gx#stx-pair? _g1726217336_)
                      (let ((_e1726917339_ (gx#syntax-e _g1726217336_)))
                        (let ((_hd1727017343_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1726917339_)))
                              (_tl1727117346_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1726917339_))))
                          (if (gx#stx-pair? _tl1727117346_)
                              (let ((_e1727217349_
                                     (gx#syntax-e _tl1727117346_)))
                                (let ((_hd1727317353_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1727217349_)))
                                      (_tl1727417356_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1727217349_))))
                                  (if (gx#stx-pair/null? _hd1727317353_)
                                      (let ((_g25524_
                                             (gx#syntax-split-splice
                                              _hd1727317353_
                                              '0)))
                                        (begin
                                          (let ((_g25525_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g25524_)
                                                       (##vector-length
                                                        _g25524_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g25525_ 2)))
                                                (error "Context expects 2 values"
                                                       _g25525_)))
                                          (let ((_target1727517359_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25524_ 0)))
                                                (_tl1727717362_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25524_ 1))))
                                            (if (gx#stx-null? _tl1727717362_)
                                                (letrec ((_loop1727817365_
                                                          (lambda (_hd1727617369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _step1728217372_
                           _init1728317374_
                           _var1728417376_)
                    (if (gx#stx-pair? _hd1727617369_)
                        (let ((_e1727917379_ (gx#syntax-e _hd1727617369_)))
                          (let ((_lp-hd1728017383_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1727917379_)))
                                (_lp-tl1728117386_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1727917379_))))
                            (if (gx#stx-pair? _lp-hd1728017383_)
                                (let ((_e1728817389_
                                       (gx#syntax-e _lp-hd1728017383_)))
                                  (let ((_hd1728917393_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1728817389_)))
                                        (_tl1729017396_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1728817389_))))
                                    (if (gx#stx-pair? _tl1729017396_)
                                        (let ((_e1729117399_
                                               (gx#syntax-e _tl1729017396_)))
                                          (let ((_hd1729217403_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1729117399_)))
                                                (_tl1729317406_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1729117399_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1729317406_)
                                                (let ((_g25526_
                                                       (gx#syntax-split-splice
                                                        _tl1729317406_
                                                        '0)))
                                                  (begin
                                                    (let ((_g25527_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g25526_)
                         (##vector-length _g25526_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g25527_ 2)))
                  (error "Context expects 2 values" _g25527_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1729417409_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g25526_
                                                              0)))
                                                          (_tl1729617412_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g25526_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1729617412_)
                                                          (letrec ((_loop1729717415_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1729517419_ _step1730117422_)
                              (if (gx#stx-pair? _hd1729517419_)
                                  (let ((_e1729817425_
                                         (gx#syntax-e _hd1729517419_)))
                                    (let ((_lp-hd1729917429_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1729817425_)))
                                          (_lp-tl1730017432_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1729817425_))))
                                      (_loop1729717415_
                                       _lp-tl1730017432_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1729917429_
                                               _step1730117422_)))))
                                  (let ((_step1730217435_
                                         (reverse _step1730117422_)))
                                    (_loop1727817365_
                                     _lp-tl1728117386_
                                     (let ()
                                       (declare (not safe))
                                       (cons _step1730217435_
                                             _step1728217372_))
                                     (let ()
                                       (declare (not safe))
                                       (cons _hd1729217403_ _init1728317374_))
                                     (let ()
                                       (declare (not safe))
                                       (cons _hd1728917393_
                                             _var1728417376_))))))))
                    (_loop1729717415_ _target1729417409_ '()))
                  (_g1726117332_ _g1726217336_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1726117332_
                                                 _g1726217336_))))
                                        (_g1726117332_ _g1726217336_))))
                                (_g1726117332_ _g1726217336_))))
                        (let ((_step1728517439_ (reverse _step1728217372_))
                              (_init1728617442_ (reverse _init1728317374_))
                              (_var1728717444_ (reverse _var1728417376_)))
                          (if (gx#stx-pair? _tl1727417356_)
                              (let ((_e1730317447_
                                     (gx#syntax-e _tl1727417356_)))
                                (let ((_hd1730417451_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1730317447_)))
                                      (_tl1730517454_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1730317447_))))
                                  (if (gx#stx-pair? _hd1730417451_)
                                      (let ((_e1730617457_
                                             (gx#syntax-e _hd1730417451_)))
                                        (let ((_hd1730717461_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1730617457_)))
                                              (_tl1730817464_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1730617457_))))
                                          (if (gx#stx-pair/null?
                                               _tl1730817464_)
                                              (let ((_g25528_
                                                     (gx#syntax-split-splice
                                                      _tl1730817464_
                                                      '0)))
                                                (begin
                                                  (let ((_g25529_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g25528_)
                                                               (##vector-length
                                                                _g25528_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g25529_ 2)))
                (error "Context expects 2 values" _g25529_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1730917467_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g25528_
                                                            0)))
                                                        (_tl1731117470_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g25528_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl1731117470_)
                                                        (letrec ((_loop1731217473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1731017477_ _fini1731617480_)
                            (if (gx#stx-pair? _hd1731017477_)
                                (let ((_e1731317483_
                                       (gx#syntax-e _hd1731017477_)))
                                  (let ((_lp-hd1731417487_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1731317483_)))
                                        (_lp-tl1731517490_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1731317483_))))
                                    (_loop1731217473_
                                     _lp-tl1731517490_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd1731417487_
                                             _fini1731617480_)))))
                                (let ((_fini1731717493_
                                       (reverse _fini1731617480_)))
                                  (if (gx#stx-pair/null? _tl1730517454_)
                                      (let ((_g25530_
                                             (gx#syntax-split-splice
                                              _tl1730517454_
                                              '0)))
                                        (begin
                                          (let ((_g25531_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g25530_)
                                                       (##vector-length
                                                        _g25530_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g25531_ 2)))
                                                (error "Context expects 2 values"
                                                       _g25531_)))
                                          (let ((_target1731817497_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25530_ 0)))
                                                (_tl1732017500_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g25530_ 1))))
                                            (if (gx#stx-null? _tl1732017500_)
                                                (letrec ((_loop1732117503_
                                                          (lambda (_hd1731917507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body1732517510_)
                    (if (gx#stx-pair? _hd1731917507_)
                        (let ((_e1732217513_ (gx#syntax-e _hd1731917507_)))
                          (let ((_lp-hd1732317517_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1732217513_)))
                                (_lp-tl1732417520_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1732217513_))))
                            (_loop1732117503_
                             _lp-tl1732417520_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1732317517_ _body1732517510_)))))
                        (let ((_body1732617523_ (reverse _body1732517510_)))
                          ((lambda (_L17527_
                                    _L17529_
                                    _L17530_
                                    _L17531_
                                    _L17532_
                                    _L17533_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_g1756617569_ _g1756717572_)
                                           (let ()
                                             (declare (not safe))
                                             (cons _g1756617569_
                                                   _g1756717572_)))
                                         '()
                                         _L17533_))
                                 (let ((__tmp25558 (gx#datum->syntax '#f 'let))
                                       (__tmp25532
                                        (let ((__tmp25557
                                               (gx#datum->syntax '#f '$loop))
                                              (__tmp25533
                                               (let ((__tmp25554
                                                      (begin
                                                        (gx#syntax-check-splice-targets
                                                         _L17532_
                                                         _L17533_)
                                                        (foldr (lambda (_g1757417587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1757517590_
                                _g1757617592_)
                         (let ((__tmp25555
                                (let ((__tmp25556
                                       (let ()
                                         (declare (not safe))
                                         (cons _g1757417587_ '()))))
                                  (declare (not safe))
                                  (cons _g1757517590_ __tmp25556))))
                           (declare (not safe))
                           (cons __tmp25555 _g1757617592_)))
                       '()
                       _L17532_
                       _L17533_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp25534
                                                      (let ((__tmp25535
                                                             (let ((__tmp25553
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'if))
                           (__tmp25536
                            (let ((__tmp25537
                                   (let ((__tmp25549
                                          (let ((__tmp25552
                                                 (gx#datum->syntax '#f 'begin))
                                                (__tmp25550
                                                 (let ((__tmp25551
                                                        (foldr (lambda (_g1757717595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1757817598_)
                         (let ()
                           (declare (not safe))
                           (cons _g1757717595_ _g1757817598_)))
                       '()
                       _L17529_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '#!void __tmp25551))))
                                            (declare (not safe))
                                            (cons __tmp25552 __tmp25550)))
                                         (__tmp25538
                                          (let ((__tmp25539
                                                 (let ((__tmp25548
                                                        (gx#datum->syntax
                                                         '#f
                                                         'begin))
                                                       (__tmp25540
                                                        (foldr (lambda (_g1757917601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1758017604_)
                         (let ()
                           (declare (not safe))
                           (cons _g1757917601_ _g1758017604_)))
                       (let ((__tmp25541
                              (let ((__tmp25547 (gx#datum->syntax '#f '$loop))
                                    (__tmp25542
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _L17531_
                                        _L17533_)
                                       (foldr (lambda (_g1758117607_
                                                       _g1758217610_
                                                       _g1758317612_)
                                                (let ((__tmp25543
                                                       (let ((__tmp25546
                                                              (gx#datum->syntax
                                                               '#f
                                                               'begin))
                                                             (__tmp25544
                                                              (let ((__tmp25545
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr (lambda (_g1758417615_ _g1758517618_)
                                      (let ()
                                        (declare (not safe))
                                        (cons _g1758417615_ _g1758517618_)))
                                    '()
                                    _g1758117607_)))
                        (declare (not safe))
                        (cons _g1758217610_ __tmp25545))))
                 (declare (not safe))
                 (cons __tmp25546 __tmp25544))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp25543
                                                        _g1758317612_)))
                                              '()
                                              _L17531_
                                              _L17533_))))
                                (declare (not safe))
                                (cons __tmp25547 __tmp25542))))
                         (declare (not safe))
                         (cons __tmp25541 '()))
                       _L17527_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25548
                                                         __tmp25540))))
                                            (declare (not safe))
                                            (cons __tmp25539 '()))))
                                     (declare (not safe))
                                     (cons __tmp25549 __tmp25538))))
                              (declare (not safe))
                              (cons _L17530_ __tmp25537))))
                       (declare (not safe))
                       (cons __tmp25553 __tmp25536))))
                (declare (not safe))
                (cons __tmp25535 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25554
                                                       __tmp25534))))
                                          (declare (not safe))
                                          (cons __tmp25557 __tmp25533))))
                                   (declare (not safe))
                                   (cons __tmp25558 __tmp25532))
                                 (_g1726117332_ _g1726217336_)))
                           _body1732617523_
                           _fini1731717493_
                           _hd1730717461_
                           _step1728517439_
                           _init1728617442_
                           _var1728717444_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1732117503_
                                                   _target1731817497_
                                                   '()))
                                                (_g1726117332_
                                                 _g1726217336_)))))
                                      (_g1726117332_ _g1726217336_)))))))
                  (_loop1731217473_ _target1730917467_ '()))
                (_g1726117332_ _g1726217336_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1726117332_ _g1726217336_))))
                                      (_g1726117332_ _g1726217336_))))
                              (_g1726117332_ _g1726217336_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1727817365_
                                                   _target1727517359_
                                                   '()
                                                   '()
                                                   '()))
                                                (_g1726117332_
                                                 _g1726217336_)))))
                                      (_g1726117332_ _g1726217336_))))
                              (_g1726117332_ _g1726217336_))))
                      (_g1726117332_ _g1726217336_)))))
          (_g1726017621_ _$stx17257_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#do-while|
      (lambda (_$stx17629_)
        (let* ((_g1763317656_
                (lambda (_g1763417652_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g1763417652_)))
               (_g1763217727_
                (lambda (_g1763417660_)
                  (if (gx#stx-pair? _g1763417660_)
                      (let ((_e1763917663_ (gx#syntax-e _g1763417660_)))
                        (let ((_hd1764017667_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1763917663_)))
                              (_tl1764117670_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1763917663_))))
                          (if (gx#stx-pair? _tl1764117670_)
                              (let ((_e1764217673_
                                     (gx#syntax-e _tl1764117670_)))
                                (let ((_hd1764317677_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1764217673_)))
                                      (_tl1764417680_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1764217673_))))
                                  (if (gx#stx-pair? _tl1764417680_)
                                      (let ((_e1764517683_
                                             (gx#syntax-e _tl1764417680_)))
                                        (let ((_hd1764617687_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1764517683_)))
                                              (_tl1764717690_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1764517683_))))
                                          (if (gx#stx-pair? _hd1764617687_)
                                              (let ((_e1764817693_
                                                     (gx#syntax-e
                                                      _hd1764617687_)))
                                                (let ((_hd1764917697_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1764817693_)))
                                                      (_tl1765017700_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1764817693_))))
                                                  ((lambda (_L17703_
                                                            _L17705_
                                                            _L17706_
                                                            _L17707_)
                                                     (let ((__tmp25565
                                                            (gx#datum->syntax
                                                             '#f
                                                             'do))
                                                           (__tmp25559
                                                            (let ((__tmp25560
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp25561
                                  (let ((__tmp25562
                                         (let ((__tmp25564
                                                (gx#datum->syntax '#f 'not))
                                               (__tmp25563
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L17706_ '()))))
                                           (declare (not safe))
                                           (cons __tmp25564 __tmp25563))))
                                    (declare (not safe))
                                    (cons __tmp25562 _L17705_))))
                             (declare (not safe))
                             (cons __tmp25561 _L17703_))))
                      (declare (not safe))
                      (cons _L17707_ __tmp25560))))
               (declare (not safe))
               (cons __tmp25565 __tmp25559)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl1764717690_
                                                   _tl1765017700_
                                                   _hd1764917697_
                                                   _hd1764317677_)))
                                              (_g1763317656_ _g1763417660_))))
                                      (_g1763317656_ _g1763417660_))))
                              (_g1763317656_ _g1763417660_))))
                      (_g1763317656_ _g1763417660_)))))
          (_g1763217727_ _$stx17629_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#begin0|
      (lambda (_$stx17731_)
        (let* ((___stx2344023441_ _$stx17731_)
               (_g1773617767_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2344023441_))))
          (let ((___kont2344323444_ (lambda (_L17879_) _L17879_))
                (___kont2344523446_
                 (lambda (_L17824_ _L17826_)
                   (let ((__tmp25579 (gx#datum->syntax '#f 'let))
                         (__tmp25566
                          (let ((__tmp25576
                                 (let ((__tmp25578 (gx#datum->syntax '#f '$r))
                                       (__tmp25577
                                        (let ()
                                          (declare (not safe))
                                          (cons _L17826_ '()))))
                                   (declare (not safe))
                                   (cons __tmp25578 __tmp25577)))
                                (__tmp25567
                                 (let ((__tmp25570
                                        (let ((__tmp25575
                                               (gx#datum->syntax
                                                '#f
                                                '%#expression))
                                              (__tmp25571
                                               (let ((__tmp25572
                                                      (let ((__tmp25574
                                                             (gx#datum->syntax
                                                              '#f
                                                              'begin))
                                                            (__tmp25573
                                                             (foldr (lambda (_g1784317846_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1784417849_)
                              (let ()
                                (declare (not safe))
                                (cons _g1784317846_ _g1784417849_)))
                            '()
                            _L17824_)))
                (declare (not safe))
                (cons __tmp25574 __tmp25573))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25572 '()))))
                                          (declare (not safe))
                                          (cons __tmp25575 __tmp25571)))
                                       (__tmp25568
                                        (let ((__tmp25569
                                               (gx#datum->syntax '#f '$r)))
                                          (declare (not safe))
                                          (cons __tmp25569 '()))))
                                   (declare (not safe))
                                   (cons __tmp25570 __tmp25568))))
                            (declare (not safe))
                            (cons __tmp25576 __tmp25567))))
                     (declare (not safe))
                     (cons __tmp25579 __tmp25566)))))
            (let ((___match2348323484_
                   (lambda (_e1774717774_
                            _hd1774817778_
                            _tl1774917781_
                            _e1775017784_
                            _hd1775117788_
                            _tl1775217791_
                            ___splice2344723448_
                            _target1775317794_
                            _tl1775517797_)
                     (letrec ((_loop1775617800_
                               (lambda (_hd1775417804_ _rest1776017807_)
                                 (if (gx#stx-pair? _hd1775417804_)
                                     (let ((_e1775717810_
                                            (gx#syntax-e _hd1775417804_)))
                                       (let ((_lp-tl1775917817_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e1775717810_)))
                                             (_lp-hd1775817814_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e1775717810_))))
                                         (_loop1775617800_
                                          _lp-tl1775917817_
                                          (let ()
                                            (declare (not safe))
                                            (cons _lp-hd1775817814_
                                                  _rest1776017807_)))))
                                     (let ((_rest1776117820_
                                            (reverse _rest1776017807_)))
                                       (___kont2344523446_
                                        _rest1776117820_
                                        _hd1775117788_))))))
                       (_loop1775617800_ _target1775317794_ '())))))
              (if (gx#stx-pair? ___stx2344023441_)
                  (let ((_e1773917859_ (gx#syntax-e ___stx2344023441_)))
                    (let ((_tl1774117866_
                           (let () (declare (not safe)) (##cdr _e1773917859_)))
                          (_hd1774017863_
                           (let ()
                             (declare (not safe))
                             (##car _e1773917859_))))
                      (if (gx#stx-pair? _tl1774117866_)
                          (let ((_e1774217869_ (gx#syntax-e _tl1774117866_)))
                            (let ((_tl1774417876_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1774217869_)))
                                  (_hd1774317873_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1774217869_))))
                              (if (gx#stx-null? _tl1774417876_)
                                  (___kont2344323444_ _hd1774317873_)
                                  (if (gx#stx-pair/null? _tl1774417876_)
                                      (let ((___splice2344723448_
                                             (gx#syntax-split-splice
                                              _tl1774417876_
                                              '0)))
                                        (let ((_tl1775517797_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2344723448_
                                                  '1)))
                                              (_target1775317794_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2344723448_
                                                  '0))))
                                          (if (gx#stx-null? _tl1775517797_)
                                              (___match2348323484_
                                               _e1773917859_
                                               _hd1774017863_
                                               _tl1774117866_
                                               _e1774217869_
                                               _hd1774317873_
                                               _tl1774417876_
                                               ___splice2344723448_
                                               _target1775317794_
                                               _tl1775517797_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1773617767_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1773617767_))))))
                          (let () (declare (not safe)) (_g1773617767_)))))
                  (let () (declare (not safe)) (_g1773617767_))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#rec|
      (lambda (_$stx17897_)
        (let* ((___stx2348623487_ _$stx17897_)
               (_g1790317956_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2348623487_))))
          (let ((___kont2348923490_
                 (lambda (_L18158_ _L18160_)
                   (let ((__tmp25585 (gx#datum->syntax '#f 'letrec))
                         (__tmp25580
                          (let ((__tmp25582
                                 (let ((__tmp25583
                                        (let ((__tmp25584
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L18158_ '()))))
                                          (declare (not safe))
                                          (cons _L18160_ __tmp25584))))
                                   (declare (not safe))
                                   (cons __tmp25583 '())))
                                (__tmp25581
                                 (let ()
                                   (declare (not safe))
                                   (cons _L18160_ '()))))
                            (declare (not safe))
                            (cons __tmp25582 __tmp25581))))
                     (declare (not safe))
                     (cons __tmp25585 __tmp25580))))
                (___kont2349123492_
                 (lambda (_L18102_ _L18104_)
                   (let ((__tmp25593 (gx#datum->syntax '#f 'letrec-values))
                         (__tmp25586
                          (let ((__tmp25590
                                 (let ((__tmp25591
                                        (let ((__tmp25592
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L18102_ '()))))
                                          (declare (not safe))
                                          (cons _L18104_ __tmp25592))))
                                   (declare (not safe))
                                   (cons __tmp25591 '())))
                                (__tmp25587
                                 (let ((__tmp25588
                                        (let ((__tmp25589
                                               (gx#datum->syntax '#f 'values)))
                                          (declare (not safe))
                                          (cons __tmp25589 _L18104_))))
                                   (declare (not safe))
                                   (cons __tmp25588 '()))))
                            (declare (not safe))
                            (cons __tmp25590 __tmp25587))))
                     (declare (not safe))
                     (cons __tmp25593 __tmp25586))))
                (___kont2349323494_
                 (lambda (_L18023_ _L18025_ _L18026_)
                   (let ((__tmp25603 (gx#datum->syntax '#f 'letrec))
                         (__tmp25594
                          (let ((__tmp25596
                                 (let ((__tmp25597
                                        (let ((__tmp25598
                                               (let ((__tmp25599
                                                      (let ((__tmp25602
                                                             (gx#datum->syntax
                                                              '#f
                                                              'lambda))
                                                            (__tmp25600
                                                             (let ((__tmp25601
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (foldr (lambda (_g1804618049_ _g1804718052_)
                                     (let ()
                                       (declare (not safe))
                                       (cons _g1804618049_ _g1804718052_)))
                                   '()
                                   _L18023_)))
                       (declare (not safe))
                       (cons _L18025_ __tmp25601))))
                (declare (not safe))
                (cons __tmp25602 __tmp25600))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp25599 '()))))
                                          (declare (not safe))
                                          (cons _L18026_ __tmp25598))))
                                   (declare (not safe))
                                   (cons __tmp25597 '())))
                                (__tmp25595
                                 (let ()
                                   (declare (not safe))
                                   (cons _L18026_ '()))))
                            (declare (not safe))
                            (cons __tmp25596 __tmp25595))))
                     (declare (not safe))
                     (cons __tmp25603 __tmp25594)))))
            (let* ((___match2357323574_
                    (lambda (_e1793317963_
                             _hd1793417967_
                             _tl1793517970_
                             _e1793617973_
                             _hd1793717977_
                             _tl1793817980_
                             _e1793917983_
                             _hd1794017987_
                             _tl1794117990_
                             ___splice2349523496_
                             _target1794217993_
                             _tl1794417996_)
                      (letrec ((_loop1794517999_
                                (lambda (_hd1794318003_ _body1794918006_)
                                  (if (gx#stx-pair? _hd1794318003_)
                                      (let ((_e1794618009_
                                             (gx#syntax-e _hd1794318003_)))
                                        (let ((_lp-tl1794818016_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1794618009_)))
                                              (_lp-hd1794718013_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1794618009_))))
                                          (_loop1794517999_
                                           _lp-tl1794818016_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1794718013_
                                                   _body1794918006_)))))
                                      (let ((_body1795018019_
                                             (reverse _body1794918006_)))
                                        (let ((_L18023_ _body1795018019_)
                                              (_L18025_ _tl1794117990_)
                                              (_L18026_ _hd1794017987_))
                                          (if (gx#identifier? _L18026_)
                                              (___kont2349323494_
                                               _L18023_
                                               _L18025_
                                               _L18026_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1790317956_)))))))))
                        (_loop1794517999_ _target1794217993_ '()))))
                   (___match2354723548_
                    (lambda (_e1791818062_
                             _hd1791918066_
                             _tl1792018069_
                             _e1792118072_
                             _hd1792218076_
                             _tl1792318079_
                             _e1792418082_
                             _hd1792518086_
                             _tl1792618089_
                             _e1792718092_
                             _hd1792818096_
                             _tl1792918099_)
                      (let ((_L18102_ _hd1792818096_)
                            (_L18104_ _tl1792618089_))
                        (if (gx#identifier-list? _L18104_)
                            (___kont2349123492_ _L18102_ _L18104_)
                            (if (gx#stx-pair/null? _tl1792318079_)
                                (let ((___splice2349523496_
                                       (gx#syntax-split-splice
                                        _tl1792318079_
                                        '0)))
                                  (let ((_tl1794417996_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice2349523496_
                                            '1)))
                                        (_target1794217993_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            ___splice2349523496_
                                            '0))))
                                    (if (gx#stx-null? _tl1794417996_)
                                        (___match2357323574_
                                         _e1791818062_
                                         _hd1791918066_
                                         _tl1792018069_
                                         _e1792118072_
                                         _hd1792218076_
                                         _tl1792318079_
                                         _e1792418082_
                                         _hd1792518086_
                                         _tl1792618089_
                                         ___splice2349523496_
                                         _target1794217993_
                                         _tl1794417996_)
                                        (let ()
                                          (declare (not safe))
                                          (_g1790317956_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g1790317956_)))))))
                   (___match2351723518_
                    (lambda (_e1790718128_
                             _hd1790818132_
                             _tl1790918135_
                             _e1791018138_
                             _hd1791118142_
                             _tl1791218145_
                             _e1791318148_
                             _hd1791418152_
                             _tl1791518155_)
                      (let ((_L18158_ _hd1791418152_)
                            (_L18160_ _hd1791118142_))
                        (if (gx#identifier? _L18160_)
                            (___kont2348923490_ _L18158_ _L18160_)
                            (if (gx#stx-pair? _hd1791118142_)
                                (let ((_e1792418082_
                                       (gx#syntax-e _hd1791118142_)))
                                  (let ((_tl1792618089_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1792418082_)))
                                        (_hd1792518086_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1792418082_))))
                                    (if (gx#identifier? _hd1792518086_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core/sugar$<sugar:2>[1]#_g25680_|
                                             _hd1792518086_)
                                            (___match2354723548_
                                             _e1790718128_
                                             _hd1790818132_
                                             _tl1790918135_
                                             _e1791018138_
                                             _hd1791118142_
                                             _tl1791218145_
                                             _e1792418082_
                                             _hd1792518086_
                                             _tl1792618089_
                                             _e1791318148_
                                             _hd1791418152_
                                             _tl1791518155_)
                                            (if (gx#stx-pair/null?
                                                 _tl1791218145_)
                                                (let ((___splice2349523496_
                                                       (gx#syntax-split-splice
                                                        _tl1791218145_
                                                        '0)))
                                                  (let ((_tl1794417996_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice2349523496_
                                                            '1)))
                                                        (_target1794217993_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice2349523496_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _tl1794417996_)
                                                        (___match2357323574_
                                                         _e1790718128_
                                                         _hd1790818132_
                                                         _tl1790918135_
                                                         _e1791018138_
                                                         _hd1791118142_
                                                         _tl1791218145_
                                                         _e1792418082_
                                                         _hd1792518086_
                                                         _tl1792618089_
                                                         ___splice2349523496_
                                                         _target1794217993_
                                                         _tl1794417996_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g1790317956_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1790317956_))))
                                        (if (gx#stx-pair/null? _tl1791218145_)
                                            (let ((___splice2349523496_
                                                   (gx#syntax-split-splice
                                                    _tl1791218145_
                                                    '0)))
                                              (let ((_tl1794417996_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2349523496_
                                                        '1)))
                                                    (_target1794217993_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2349523496_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl1794417996_)
                                                    (___match2357323574_
                                                     _e1790718128_
                                                     _hd1790818132_
                                                     _tl1790918135_
                                                     _e1791018138_
                                                     _hd1791118142_
                                                     _tl1791218145_
                                                     _e1792418082_
                                                     _hd1792518086_
                                                     _tl1792618089_
                                                     ___splice2349523496_
                                                     _target1794217993_
                                                     _tl1794417996_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g1790317956_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g1790317956_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g1790317956_))))))))
              (if (gx#stx-pair? ___stx2348623487_)
                  (let ((_e1790718128_ (gx#syntax-e ___stx2348623487_)))
                    (let ((_tl1790918135_
                           (let () (declare (not safe)) (##cdr _e1790718128_)))
                          (_hd1790818132_
                           (let ()
                             (declare (not safe))
                             (##car _e1790718128_))))
                      (if (gx#stx-pair? _tl1790918135_)
                          (let ((_e1791018138_ (gx#syntax-e _tl1790918135_)))
                            (let ((_tl1791218145_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1791018138_)))
                                  (_hd1791118142_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1791018138_))))
                              (if (gx#stx-pair? _tl1791218145_)
                                  (let ((_e1791318148_
                                         (gx#syntax-e _tl1791218145_)))
                                    (let ((_tl1791518155_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1791318148_)))
                                          (_hd1791418152_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1791318148_))))
                                      (if (gx#stx-null? _tl1791518155_)
                                          (___match2351723518_
                                           _e1790718128_
                                           _hd1790818132_
                                           _tl1790918135_
                                           _e1791018138_
                                           _hd1791118142_
                                           _tl1791218145_
                                           _e1791318148_
                                           _hd1791418152_
                                           _tl1791518155_)
                                          (if (gx#stx-pair? _hd1791118142_)
                                              (let ((_e1792418082_
                                                     (gx#syntax-e
                                                      _hd1791118142_)))
                                                (let ((_tl1792618089_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1792418082_)))
                                                      (_hd1792518086_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1792418082_))))
                                                  (if (gx#stx-pair/null?
                                                       _tl1791218145_)
                                                      (let ((___splice2349523496_
                                                             (gx#syntax-split-splice
                                                              _tl1791218145_
                                                              '0)))
                                                        (let ((_tl1794417996_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref ___splice2349523496_ '1)))
                      (_target1794217993_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice2349523496_ '0))))
                  (if (gx#stx-null? _tl1794417996_)
                      (___match2357323574_
                       _e1790718128_
                       _hd1790818132_
                       _tl1790918135_
                       _e1791018138_
                       _hd1791118142_
                       _tl1791218145_
                       _e1792418082_
                       _hd1792518086_
                       _tl1792618089_
                       ___splice2349523496_
                       _target1794217993_
                       _tl1794417996_)
                      (let () (declare (not safe)) (_g1790317956_)))))
              (let () (declare (not safe)) (_g1790317956_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1790317956_))))))
                                  (if (gx#stx-pair? _hd1791118142_)
                                      (let ((_e1792418082_
                                             (gx#syntax-e _hd1791118142_)))
                                        (let ((_tl1792618089_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1792418082_)))
                                              (_hd1792518086_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1792418082_))))
                                          (if (gx#stx-pair/null?
                                               _tl1791218145_)
                                              (let ((___splice2349523496_
                                                     (gx#syntax-split-splice
                                                      _tl1791218145_
                                                      '0)))
                                                (let ((_tl1794417996_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2349523496_
                                                          '1)))
                                                      (_target1794217993_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2349523496_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1794417996_)
                                                      (___match2357323574_
                                                       _e1790718128_
                                                       _hd1790818132_
                                                       _tl1790918135_
                                                       _e1791018138_
                                                       _hd1791118142_
                                                       _tl1791218145_
                                                       _e1792418082_
                                                       _hd1792518086_
                                                       _tl1792618089_
                                                       ___splice2349523496_
                                                       _target1794217993_
                                                       _tl1794417996_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g1790317956_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g1790317956_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1790317956_))))))
                          (let () (declare (not safe)) (_g1790317956_)))))
                  (let () (declare (not safe)) (_g1790317956_))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#alet|
      (lambda (_stx18180_)
        (letrec ((_let-bind?18183_
                  (lambda (_x19106_)
                    (let* ((___stx2357623577_ _x19106_)
                           (_g1911119130_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2357623577_))))
                      (let ((___kont2357923580_
                             (lambda (_L19198_ _L19200_)
                               (_let-head?18186_ _L19200_)))
                            (___kont2358123582_ (lambda (_L19158_) '#t))
                            (___kont2358323584_ (lambda () '#f)))
                        (if (gx#stx-pair? ___stx2357623577_)
                            (let ((_e1911519178_
                                   (gx#syntax-e ___stx2357623577_)))
                              (let ((_tl1911719185_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1911519178_)))
                                    (_hd1911619182_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1911519178_))))
                                (if (gx#stx-pair? _tl1911719185_)
                                    (let ((_e1911819188_
                                           (gx#syntax-e _tl1911719185_)))
                                      (let ((_tl1912019195_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1911819188_)))
                                            (_hd1911919192_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1911819188_))))
                                        (if (gx#stx-null? _tl1912019195_)
                                            (___kont2357923580_
                                             _hd1911919192_
                                             _hd1911619182_)
                                            (___kont2358323584_))))
                                    (if (gx#stx-null? _tl1911719185_)
                                        (___kont2358123582_ _hd1911619182_)
                                        (___kont2358323584_)))))
                            (___kont2358323584_))))))
                 (_let-bind18185_
                  (lambda (_x19008_)
                    (let* ((___stx2361023611_ _x19008_)
                           (_g1901219031_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2361023611_))))
                      (let ((___kont2361323614_
                             (lambda (_L19087_ _L19089_) _x19008_))
                            (___kont2361523616_
                             (lambda (_L19048_)
                               (let ((__tmp25682 (gx#datum->syntax '#f '_))
                                     (__tmp25681
                                      (let ()
                                        (declare (not safe))
                                        (cons _L19048_ '()))))
                                 (declare (not safe))
                                 (cons __tmp25682 __tmp25681)))))
                        (if (gx#stx-pair? ___stx2361023611_)
                            (let ((_e1901619067_
                                   (gx#syntax-e ___stx2361023611_)))
                              (let ((_tl1901819074_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1901619067_)))
                                    (_hd1901719071_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1901619067_))))
                                (if (gx#stx-pair? _tl1901819074_)
                                    (let ((_e1901919077_
                                           (gx#syntax-e _tl1901819074_)))
                                      (let ((_tl1902119084_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1901919077_)))
                                            (_hd1902019081_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1901919077_))))
                                        (if (gx#stx-null? _tl1902119084_)
                                            (___kont2361323614_
                                             _hd1902019081_
                                             _hd1901719071_)
                                            (let ()
                                              (declare (not safe))
                                              (_g1901219031_)))))
                                    (if (gx#stx-null? _tl1901819074_)
                                        (___kont2361523616_ _hd1901719071_)
                                        (let ()
                                          (declare (not safe))
                                          (_g1901219031_))))))
                            (let () (declare (not safe)) (_g1901219031_)))))))
                 (_let-head?18186_
                  (lambda (_x18948_)
                    (let* ((___stx2364223643_ _x18948_)
                           (_g1895218963_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2364223643_))))
                      (let ((___kont2364523646_
                             (lambda (_L18991_)
                               (gx#stx-andmap gx#identifier? _L18991_)))
                            (___kont2364723648_
                             (lambda () (gx#identifier? _x18948_))))
                        (if (gx#stx-pair? ___stx2364223643_)
                            (let ((_e1895518981_
                                   (gx#syntax-e ___stx2364223643_)))
                              (let ((_tl1895718988_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1895518981_)))
                                    (_hd1895618985_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1895518981_))))
                                (if (gx#identifier? _hd1895618985_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar$<sugar:2>[1]#_g25683_|
                                         _hd1895618985_)
                                        (___kont2364523646_ _tl1895718988_)
                                        (___kont2364723648_))
                                    (___kont2364723648_))))
                            (___kont2364723648_))))))
                 (_let-head18187_
                  (lambda (_x18888_)
                    (let* ((___stx2366223663_ _x18888_)
                           (_g1889218903_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2366223663_))))
                      (let ((___kont2366523666_ (lambda (_L18931_) _L18931_))
                            (___kont2366723668_ (lambda () (list _x18888_))))
                        (if (gx#stx-pair? ___stx2366223663_)
                            (let ((_e1889518921_
                                   (gx#syntax-e ___stx2366223663_)))
                              (let ((_tl1889718928_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1889518921_)))
                                    (_hd1889618925_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1889518921_))))
                                (if (gx#identifier? _hd1889618925_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/sugar$<sugar:2>[1]#_g25684_|
                                         _hd1889618925_)
                                        (___kont2366523666_ _tl1889718928_)
                                        (___kont2366723668_))
                                    (___kont2366723668_))))
                            (___kont2366723668_)))))))
          (let* ((___stx2368223683_ _stx18180_)
                 (_g1819118263_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx2368223683_))))
            (let ((___kont2368523686_
                   (lambda (_L18861_ _L18863_ _L18864_ _L18865_)
                     (let ((__tmp25685
                            (let ((__tmp25686
                                   (let ((__tmp25687
                                          (let ((__tmp25688
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L18863_ '()))))
                                            (declare (not safe))
                                            (cons _L18864_ __tmp25688))))
                                     (declare (not safe))
                                     (cons __tmp25687 '()))))
                              (declare (not safe))
                              (cons __tmp25686 _L18861_))))
                       (declare (not safe))
                       (cons _L18865_ __tmp25685))))
                  (___kont2368723688_
                   (lambda (_L18783_ _L18785_)
                     (let ((__tmp25695 (gx#datum->syntax '#f 'and))
                           (__tmp25689
                            (let ((__tmp25690
                                   (let ((__tmp25691
                                          (let ((__tmp25694
                                                 (gx#datum->syntax '#f 'let))
                                                (__tmp25692
                                                 (let ((__tmp25693
                                                        (foldr (lambda (_g1880518808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1880618811_)
                         (let ()
                           (declare (not safe))
                           (cons _g1880518808_ _g1880618811_)))
                       '()
                       _L18783_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp25693))))
                                            (declare (not safe))
                                            (cons __tmp25694 __tmp25692))))
                                     (declare (not safe))
                                     (cons __tmp25691 '()))))
                              (declare (not safe))
                              (cons _L18785_ __tmp25690))))
                       (declare (not safe))
                       (cons __tmp25695 __tmp25689))))
                  (___kont2369123692_
                   (lambda (_L18350_ _L18352_)
                     (let* ((_g1838318409_
                             (lambda (_g1838418405_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _g1838418405_)))
                            (_g1838218694_
                             (lambda (_g1838418413_)
                               (if (gx#stx-pair/null? _g1838418413_)
                                   (let ((_g25696_
                                          (gx#syntax-split-splice
                                           _g1838418413_
                                           '0)))
                                     (begin
                                       (let ((_g25697_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g25696_)
                                                    (##vector-length _g25696_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g25697_ 2)))
                                             (error "Context expects 2 values"
                                                    _g25697_)))
                                       (let ((_target1838718416_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g25696_ 0)))
                                             (_tl1838918419_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g25696_ 1))))
                                         (if (gx#stx-null? _tl1838918419_)
                                             (letrec ((_loop1839018422_
                                                       (lambda (_hd1838818426_
                                                                _e1839418429_
                                                                _hd1839518431_)
                                                         (if (gx#stx-pair?
                                                              _hd1838818426_)
                                                             (let ((_e1839118434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _hd1838818426_)))
                       (let ((_lp-hd1839218438_
                              (let ()
                                (declare (not safe))
                                (##car _e1839118434_)))
                             (_lp-tl1839318441_
                              (let ()
                                (declare (not safe))
                                (##cdr _e1839118434_))))
                         (if (gx#stx-pair? _lp-hd1839218438_)
                             (let ((_e1839818444_
                                    (gx#syntax-e _lp-hd1839218438_)))
                               (let ((_hd1839918448_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e1839818444_)))
                                     (_tl1840018451_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e1839818444_))))
                                 (if (gx#stx-pair? _tl1840018451_)
                                     (let ((_e1840118454_
                                            (gx#syntax-e _tl1840018451_)))
                                       (let ((_hd1840218458_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e1840118454_)))
                                             (_tl1840318461_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e1840118454_))))
                                         (if (gx#stx-null? _tl1840318461_)
                                             (_loop1839018422_
                                              _lp-tl1839318441_
                                              (let ()
                                                (declare (not safe))
                                                (cons _hd1840218458_
                                                      _e1839418429_))
                                              (let ()
                                                (declare (not safe))
                                                (cons _hd1839918448_
                                                      _hd1839518431_)))
                                             (_g1838318409_ _g1838418413_))))
                                     (_g1838318409_ _g1838418413_))))
                             (_g1838318409_ _g1838418413_))))
                     (let ((_e1839618464_ (reverse _e1839418429_))
                           (_hd1839718467_ (reverse _hd1839518431_)))
                       ((lambda (_L18470_ _L18472_)
                          (let ()
                            (let* ((_g1848818505_
                                    (lambda (_g1848918501_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _g1848918501_)))
                                   (_g1848718682_
                                    (lambda (_g1848918509_)
                                      (if (gx#stx-pair/null? _g1848918509_)
                                          (let ((_g25698_
                                                 (gx#syntax-split-splice
                                                  _g1848918509_
                                                  '0)))
                                            (begin
                                              (let ((_g25699_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g25698_)
                                                           (##vector-length
                                                            _g25698_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g25699_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g25699_)))
                                              (let ((_target1849118512_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g25698_
                                                        0)))
                                                    (_tl1849318515_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g25698_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _tl1849318515_)
                                                    (letrec ((_loop1849418518_
                                                              (lambda (_hd1849218522_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _$e1849818525_)
                        (if (gx#stx-pair? _hd1849218522_)
                            (let ((_e1849518528_ (gx#syntax-e _hd1849218522_)))
                              (let ((_lp-hd1849618532_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1849518528_)))
                                    (_lp-tl1849718535_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1849518528_))))
                                (_loop1849418518_
                                 _lp-tl1849718535_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd1849618532_ _$e1849818525_)))))
                            (let ((_$e1849918538_ (reverse _$e1849818525_)))
                              ((lambda (_L18542_)
                                 (let ()
                                   (let* ((_g1855918576_
                                           (lambda (_g1856018572_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g1856018572_)))
                                          (_g1855818670_
                                           (lambda (_g1856018580_)
                                             (if (gx#stx-pair/null?
                                                  _g1856018580_)
                                                 (let ((_g25700_
                                                        (gx#syntax-split-splice
                                                         _g1856018580_
                                                         '0)))
                                                   (begin
                                                     (let ((_g25701_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g25700_)
                          (##vector-length _g25700_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g25701_ 2)))
                   (error "Context expects 2 values" _g25701_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1856218583_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g25700_
                                                               0)))
                                                           (_tl1856418586_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _g25700_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _tl1856418586_)
                                                           (letrec ((_loop1856518589_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1856318593_ _hd-bind1856918596_)
                               (if (gx#stx-pair? _hd1856318593_)
                                   (let ((_e1856618599_
                                          (gx#syntax-e _hd1856318593_)))
                                     (let ((_lp-hd1856718603_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e1856618599_)))
                                           (_lp-tl1856818606_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e1856618599_))))
                                       (_loop1856518589_
                                        _lp-tl1856818606_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd1856718603_
                                                _hd-bind1856918596_)))))
                                   (let ((_hd-bind1857018609_
                                          (reverse _hd-bind1856918596_)))
                                     ((lambda (_L18613_)
                                        (let ()
                                          (let ()
                                            (let ((__tmp25718
                                                   (gx#datum->syntax
                                                    '#f
                                                    'let-values))
                                                  (__tmp25702
                                                   (let ((__tmp25714
                                                          (begin
                                                            (gx#syntax-check-splice-targets
                                                             _L18470_
                                                             _L18542_)
                                                            (foldr (lambda (_g1863118642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1863218645_
                                    _g1863318647_)
                             (let ((__tmp25715
                                    (let ((__tmp25717
                                           (let ()
                                             (declare (not safe))
                                             (cons _g1863218645_ '())))
                                          (__tmp25716
                                           (let ()
                                             (declare (not safe))
                                             (cons _g1863118642_ '()))))
                                      (declare (not safe))
                                      (cons __tmp25717 __tmp25716))))
                               (declare (not safe))
                               (cons __tmp25715 _g1863318647_)))
                           '()
                           _L18470_
                           _L18542_)))
                 (__tmp25703
                  (let ((__tmp25704
                         (let ((__tmp25713 (gx#datum->syntax '#f 'and))
                               (__tmp25705
                                (foldr (lambda (_g1863418650_ _g1863518653_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g1863418650_ _g1863518653_)))
                                       (let ((__tmp25706
                                              (let ((__tmp25712
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let-values))
                                                    (__tmp25707
                                                     (let ((__tmp25709
                                                            (begin
                                                              (gx#syntax-check-splice-targets
                                                               _L18542_
                                                               _L18613_)
                                                              (foldr (lambda (_g1863618656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1863718659_
                                      _g1863818661_)
                               (let ((__tmp25710
                                      (let ((__tmp25711
                                             (let ()
                                               (declare (not safe))
                                               (cons _g1863618656_ '()))))
                                        (declare (not safe))
                                        (cons _g1863718659_ __tmp25711))))
                                 (declare (not safe))
                                 (cons __tmp25710 _g1863818661_)))
                             '()
                             _L18542_
                             _L18613_)))
                   (__tmp25708
                    (foldr (lambda (_g1863918664_ _g1864018667_)
                             (let ()
                               (declare (not safe))
                               (cons _g1863918664_ _g1864018667_)))
                           '()
                           _L18350_)))
               (declare (not safe))
               (cons __tmp25709 __tmp25708))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25712 __tmp25707))))
                                         (declare (not safe))
                                         (cons __tmp25706 '()))
                                       _L18542_)))
                           (declare (not safe))
                           (cons __tmp25713 __tmp25705))))
                    (declare (not safe))
                    (cons __tmp25704 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25714
                                                           __tmp25703))))
                                              (declare (not safe))
                                              (cons __tmp25718 __tmp25702)))))
                                      _hd-bind1857018609_))))))
                     (_loop1856518589_ _target1856218583_ '()))
                   (_g1855918576_ _g1856018580_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1855918576_
                                                  _g1856018580_)))))
                                     (_g1855818670_
                                      (gx#stx-map
                                       _let-head18187_
                                       (foldr (lambda (_g1867318676_
                                                       _g1867418679_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g1867318676_
                                                        _g1867418679_)))
                                              '()
                                              _L18472_))))))
                               _$e1849918538_))))))
              (_loop1849418518_ _target1849118512_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1848818505_
                                                     _g1848918509_)))))
                                          (_g1848818505_ _g1848918509_)))))
                              (_g1848718682_
                               (gx#gentemps
                                (foldr (lambda (_g1868518688_ _g1868618691_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g1868518688_ _g1868618691_)))
                                       '()
                                       _L18472_))))))
                        _e1839618464_
                        _hd1839718467_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_loop1839018422_
                                                _target1838718416_
                                                '()
                                                '()))
                                             (_g1838318409_ _g1838418413_)))))
                                   (_g1838318409_ _g1838418413_)))))
                       (_g1838218694_
                        (gx#stx-map
                         _let-bind18185_
                         (foldr (lambda (_g1869718700_ _g1869818703_)
                                  (let ()
                                    (declare (not safe))
                                    (cons _g1869718700_ _g1869818703_)))
                                '()
                                _L18352_)))))))
              (let* ((___match2377923780_
                      (lambda (_e1823418270_
                               _hd1823518274_
                               _tl1823618277_
                               _e1823718280_
                               _hd1823818284_
                               _tl1823918287_
                               ___splice2369323694_
                               _target1824018290_
                               _tl1824218293_)
                        (letrec ((_loop1824318296_
                                  (lambda (_hd1824118300_ _bind1824718303_)
                                    (if (gx#stx-pair? _hd1824118300_)
                                        (let ((_e1824418306_
                                               (gx#syntax-e _hd1824118300_)))
                                          (let ((_lp-tl1824618313_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1824418306_)))
                                                (_lp-hd1824518310_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1824418306_))))
                                            (_loop1824318296_
                                             _lp-tl1824618313_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd1824518310_
                                                     _bind1824718303_)))))
                                        (let ((_bind1824818316_
                                               (reverse _bind1824718303_)))
                                          (if (gx#stx-pair/null?
                                               _tl1823918287_)
                                              (let ((___splice2369523696_
                                                     (gx#syntax-split-splice
                                                      _tl1823918287_
                                                      '0)))
                                                (let ((_tl1825118323_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2369523696_
                                                          '1)))
                                                      (_target1824918320_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2369523696_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1825118323_)
                                                      (letrec ((_loop1825218326_
                                                                (lambda (_hd1825018330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body1825618333_)
                          (if (gx#stx-pair? _hd1825018330_)
                              (let ((_e1825318336_
                                     (gx#syntax-e _hd1825018330_)))
                                (let ((_lp-tl1825518343_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1825318336_)))
                                      (_lp-hd1825418340_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1825318336_))))
                                  (_loop1825218326_
                                   _lp-tl1825518343_
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd1825418340_
                                           _body1825618333_)))))
                              (let ((_body1825718346_
                                     (reverse _body1825618333_)))
                                (let ((_L18350_ _body1825718346_)
                                      (_L18352_ _bind1824818316_))
                                  (if (gx#stx-andmap
                                       _let-bind?18183_
                                       (foldr (lambda (_g1837418377_
                                                       _g1837518380_)
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _g1837418377_
                                                        _g1837518380_)))
                                              '()
                                              _L18352_))
                                      (___kont2369123692_ _L18350_ _L18352_)
                                      (let ()
                                        (declare (not safe))
                                        (_g1819118263_)))))))))
                (_loop1825218326_ _target1824918320_ '()))
              (let () (declare (not safe)) (_g1819118263_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1819118263_))))))))
                          (_loop1824318296_ _target1824018290_ '()))))
                     (___match2375923760_
                      (lambda (_e1821118713_
                               _hd1821218717_
                               _tl1821318720_
                               _e1821418723_
                               _hd1821518727_
                               _tl1821618730_
                               _e1821718733_
                               _hd1821818737_
                               _tl1821918740_
                               _e1822018743_
                               _hd1822118747_
                               _tl1822218750_
                               ___splice2368923690_
                               _target1822318753_
                               _tl1822518756_)
                        (letrec ((_loop1822618759_
                                  (lambda (_hd1822418763_ _body1823018766_)
                                    (if (gx#stx-pair? _hd1822418763_)
                                        (let ((_e1822718769_
                                               (gx#syntax-e _hd1822418763_)))
                                          (let ((_lp-tl1822918776_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1822718769_)))
                                                (_lp-hd1822818773_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1822718769_))))
                                            (_loop1822618759_
                                             _lp-tl1822918776_
                                             (let ()
                                               (declare (not safe))
                                               (cons _lp-hd1822818773_
                                                     _body1823018766_)))))
                                        (let ((_body1823118779_
                                               (reverse _body1823018766_)))
                                          (___kont2368723688_
                                           _body1823118779_
                                           _hd1822118747_))))))
                          (_loop1822618759_ _target1822318753_ '()))))
                     (___match2372323724_
                      (lambda (_e1819718821_
                               _hd1819818825_
                               _tl1819918828_
                               _e1820018831_
                               _hd1820118835_
                               _tl1820218838_
                               _e1820318841_
                               _hd1820418845_
                               _tl1820518848_
                               _e1820618851_
                               _hd1820718855_
                               _tl1820818858_)
                        (let ((_L18861_ _tl1820218838_)
                              (_L18863_ _hd1820718855_)
                              (_L18864_ _hd1820418845_)
                              (_L18865_ _hd1819818825_))
                          (if (_let-head?18186_ _L18864_)
                              (___kont2368523686_
                               _L18861_
                               _L18863_
                               _L18864_
                               _L18865_)
                              (if (gx#stx-pair? _hd1820418845_)
                                  (let ((_e1822018743_
                                         (gx#syntax-e _hd1820418845_)))
                                    (let ((_tl1822218750_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1822018743_)))
                                          (_hd1822118747_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1822018743_))))
                                      (if (gx#stx-pair/null? _hd1820118835_)
                                          (let ((___splice2369323694_
                                                 (gx#syntax-split-splice
                                                  _hd1820118835_
                                                  '0)))
                                            (let ((_tl1824218293_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2369323694_
                                                      '1)))
                                                  (_target1824018290_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2369323694_
                                                      '0))))
                                              (if (gx#stx-null? _tl1824218293_)
                                                  (___match2377923780_
                                                   _e1819718821_
                                                   _hd1819818825_
                                                   _tl1819918828_
                                                   _e1820018831_
                                                   _hd1820118835_
                                                   _tl1820218838_
                                                   ___splice2369323694_
                                                   _target1824018290_
                                                   _tl1824218293_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1819118263_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1819118263_)))))
                                  (if (gx#stx-pair/null? _hd1820118835_)
                                      (let ((___splice2369323694_
                                             (gx#syntax-split-splice
                                              _hd1820118835_
                                              '0)))
                                        (let ((_tl1824218293_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2369323694_
                                                  '1)))
                                              (_target1824018290_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice2369323694_
                                                  '0))))
                                          (if (gx#stx-null? _tl1824218293_)
                                              (___match2377923780_
                                               _e1819718821_
                                               _hd1819818825_
                                               _tl1819918828_
                                               _e1820018831_
                                               _hd1820118835_
                                               _tl1820218838_
                                               ___splice2369323694_
                                               _target1824018290_
                                               _tl1824218293_)
                                              (let ()
                                                (declare (not safe))
                                                (_g1819118263_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1819118263_)))))))))
                (if (gx#stx-pair? ___stx2368223683_)
                    (let ((_e1819718821_ (gx#syntax-e ___stx2368223683_)))
                      (let ((_tl1819918828_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1819718821_)))
                            (_hd1819818825_
                             (let ()
                               (declare (not safe))
                               (##car _e1819718821_))))
                        (if (gx#stx-pair? _tl1819918828_)
                            (let ((_e1820018831_ (gx#syntax-e _tl1819918828_)))
                              (let ((_tl1820218838_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1820018831_)))
                                    (_hd1820118835_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1820018831_))))
                                (if (gx#stx-pair? _hd1820118835_)
                                    (let ((_e1820318841_
                                           (gx#syntax-e _hd1820118835_)))
                                      (let ((_tl1820518848_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1820318841_)))
                                            (_hd1820418845_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1820318841_))))
                                        (if (gx#stx-pair? _tl1820518848_)
                                            (let ((_e1820618851_
                                                   (gx#syntax-e
                                                    _tl1820518848_)))
                                              (let ((_tl1820818858_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e1820618851_)))
                                                    (_hd1820718855_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e1820618851_))))
                                                (if (gx#stx-null?
                                                     _tl1820818858_)
                                                    (___match2372323724_
                                                     _e1819718821_
                                                     _hd1819818825_
                                                     _tl1819918828_
                                                     _e1820018831_
                                                     _hd1820118835_
                                                     _tl1820218838_
                                                     _e1820318841_
                                                     _hd1820418845_
                                                     _tl1820518848_
                                                     _e1820618851_
                                                     _hd1820718855_
                                                     _tl1820818858_)
                                                    (if (gx#stx-pair?
                                                         _hd1820418845_)
                                                        (let ((_e1822018743_
                                                               (gx#syntax-e
                                                                _hd1820418845_)))
                                                          (let ((_tl1822218750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e1822018743_)))
                        (_hd1822118747_
                         (let () (declare (not safe)) (##car _e1822018743_))))
                    (if (gx#stx-pair/null? _hd1820118835_)
                        (let ((___splice2369323694_
                               (gx#syntax-split-splice _hd1820118835_ '0)))
                          (let ((_tl1824218293_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2369323694_ '1)))
                                (_target1824018290_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2369323694_ '0))))
                            (if (gx#stx-null? _tl1824218293_)
                                (___match2377923780_
                                 _e1819718821_
                                 _hd1819818825_
                                 _tl1819918828_
                                 _e1820018831_
                                 _hd1820118835_
                                 _tl1820218838_
                                 ___splice2369323694_
                                 _target1824018290_
                                 _tl1824218293_)
                                (let ()
                                  (declare (not safe))
                                  (_g1819118263_)))))
                        (let () (declare (not safe)) (_g1819118263_)))))
                (if (gx#stx-pair/null? _hd1820118835_)
                    (let ((___splice2369323694_
                           (gx#syntax-split-splice _hd1820118835_ '0)))
                      (let ((_tl1824218293_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice2369323694_ '1)))
                            (_target1824018290_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice2369323694_ '0))))
                        (if (gx#stx-null? _tl1824218293_)
                            (___match2377923780_
                             _e1819718821_
                             _hd1819818825_
                             _tl1819918828_
                             _e1820018831_
                             _hd1820118835_
                             _tl1820218838_
                             ___splice2369323694_
                             _target1824018290_
                             _tl1824218293_)
                            (let () (declare (not safe)) (_g1819118263_)))))
                    (let () (declare (not safe)) (_g1819118263_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair? _hd1820418845_)
                                                (let ((_e1822018743_
                                                       (gx#syntax-e
                                                        _hd1820418845_)))
                                                  (let ((_tl1822218750_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e1822018743_)))
                                                        (_hd1822118747_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e1822018743_))))
                                                    (if (gx#stx-null?
                                                         _tl1822218750_)
                                                        (if (gx#stx-null?
                                                             _tl1820518848_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1820218838_)
                        (let ((___splice2368923690_
                               (gx#syntax-split-splice _tl1820218838_ '0)))
                          (let ((_tl1822518756_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2368923690_ '1)))
                                (_target1822318753_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2368923690_ '0))))
                            (if (gx#stx-null? _tl1822518756_)
                                (___match2375923760_
                                 _e1819718821_
                                 _hd1819818825_
                                 _tl1819918828_
                                 _e1820018831_
                                 _hd1820118835_
                                 _tl1820218838_
                                 _e1820318841_
                                 _hd1820418845_
                                 _tl1820518848_
                                 _e1822018743_
                                 _hd1822118747_
                                 _tl1822218750_
                                 ___splice2368923690_
                                 _target1822318753_
                                 _tl1822518756_)
                                (if (gx#stx-pair/null? _hd1820118835_)
                                    (let ((___splice2369323694_
                                           (gx#syntax-split-splice
                                            _hd1820118835_
                                            '0)))
                                      (let ((_tl1824218293_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice2369323694_
                                                '1)))
                                            (_target1824018290_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice2369323694_
                                                '0))))
                                        (if (gx#stx-null? _tl1824218293_)
                                            (___match2377923780_
                                             _e1819718821_
                                             _hd1819818825_
                                             _tl1819918828_
                                             _e1820018831_
                                             _hd1820118835_
                                             _tl1820218838_
                                             ___splice2369323694_
                                             _target1824018290_
                                             _tl1824218293_)
                                            (let ()
                                              (declare (not safe))
                                              (_g1819118263_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g1819118263_))))))
                        (if (gx#stx-pair/null? _hd1820118835_)
                            (let ((___splice2369323694_
                                   (gx#syntax-split-splice _hd1820118835_ '0)))
                              (let ((_tl1824218293_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref ___splice2369323694_ '1)))
                                    (_target1824018290_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice2369323694_
                                        '0))))
                                (if (gx#stx-null? _tl1824218293_)
                                    (___match2377923780_
                                     _e1819718821_
                                     _hd1819818825_
                                     _tl1819918828_
                                     _e1820018831_
                                     _hd1820118835_
                                     _tl1820218838_
                                     ___splice2369323694_
                                     _target1824018290_
                                     _tl1824218293_)
                                    (let ()
                                      (declare (not safe))
                                      (_g1819118263_)))))
                            (let () (declare (not safe)) (_g1819118263_))))
                    (if (gx#stx-pair/null? _hd1820118835_)
                        (let ((___splice2369323694_
                               (gx#syntax-split-splice _hd1820118835_ '0)))
                          (let ((_tl1824218293_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2369323694_ '1)))
                                (_target1824018290_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice2369323694_ '0))))
                            (if (gx#stx-null? _tl1824218293_)
                                (___match2377923780_
                                 _e1819718821_
                                 _hd1819818825_
                                 _tl1819918828_
                                 _e1820018831_
                                 _hd1820118835_
                                 _tl1820218838_
                                 ___splice2369323694_
                                 _target1824018290_
                                 _tl1824218293_)
                                (let ()
                                  (declare (not safe))
                                  (_g1819118263_)))))
                        (let () (declare (not safe)) (_g1819118263_))))
                (if (gx#stx-pair/null? _hd1820118835_)
                    (let ((___splice2369323694_
                           (gx#syntax-split-splice _hd1820118835_ '0)))
                      (let ((_tl1824218293_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice2369323694_ '1)))
                            (_target1824018290_
                             (let ()
                               (declare (not safe))
                               (##vector-ref ___splice2369323694_ '0))))
                        (if (gx#stx-null? _tl1824218293_)
                            (___match2377923780_
                             _e1819718821_
                             _hd1819818825_
                             _tl1819918828_
                             _e1820018831_
                             _hd1820118835_
                             _tl1820218838_
                             ___splice2369323694_
                             _target1824018290_
                             _tl1824218293_)
                            (let () (declare (not safe)) (_g1819118263_)))))
                    (let () (declare (not safe)) (_g1819118263_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _hd1820118835_)
                                                    (let ((___splice2369323694_
                                                           (gx#syntax-split-splice
                                                            _hd1820118835_
                                                            '0)))
                                                      (let ((_tl1824218293_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref ___splice2369323694_ '1)))
                    (_target1824018290_
                     (let ()
                       (declare (not safe))
                       (##vector-ref ___splice2369323694_ '0))))
                (if (gx#stx-null? _tl1824218293_)
                    (___match2377923780_
                     _e1819718821_
                     _hd1819818825_
                     _tl1819918828_
                     _e1820018831_
                     _hd1820118835_
                     _tl1820218838_
                     ___splice2369323694_
                     _target1824018290_
                     _tl1824218293_)
                    (let () (declare (not safe)) (_g1819118263_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g1819118263_)))))))
                                    (if (gx#stx-pair/null? _hd1820118835_)
                                        (let ((___splice2369323694_
                                               (gx#syntax-split-splice
                                                _hd1820118835_
                                                '0)))
                                          (let ((_tl1824218293_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice2369323694_
                                                    '1)))
                                                (_target1824018290_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice2369323694_
                                                    '0))))
                                            (if (gx#stx-null? _tl1824218293_)
                                                (___match2377923780_
                                                 _e1819718821_
                                                 _hd1819818825_
                                                 _tl1819918828_
                                                 _e1820018831_
                                                 _hd1820118835_
                                                 _tl1820218838_
                                                 ___splice2369323694_
                                                 _target1824018290_
                                                 _tl1824218293_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g1819118263_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g1819118263_))))))
                            (let () (declare (not safe)) (_g1819118263_)))))
                    (let () (declare (not safe)) (_g1819118263_)))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#alet*|
      (lambda (_$stx19223_)
        (let* ((___stx2378223783_ _$stx19223_)
               (_g1922919280_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2378223783_))))
          (let ((___kont2378523786_ (lambda () '#t))
                (___kont2378723788_
                 (lambda (_L19438_)
                   (let ((__tmp25721 (gx#datum->syntax '#f 'let))
                         (__tmp25719
                          (let ((__tmp25720
                                 (foldr (lambda (_g1945419457_ _g1945519460_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g1945419457_
                                                  _g1945519460_)))
                                        '()
                                        _L19438_)))
                            (declare (not safe))
                            (cons '() __tmp25720))))
                     (declare (not safe))
                     (cons __tmp25721 __tmp25719))))
                (___kont2379123792_
                 (lambda (_L19347_ _L19349_ _L19350_ _L19351_)
                   (let ((__tmp25728 (gx#datum->syntax '#f 'alet))
                         (__tmp25722
                          (let ((__tmp25727
                                 (let ()
                                   (declare (not safe))
                                   (cons _L19350_ '())))
                                (__tmp25723
                                 (let ((__tmp25724
                                        (let ((__tmp25725
                                               (let ((__tmp25726
                                                      (foldr (lambda (_g1937219375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1937319378_)
                       (let ()
                         (declare (not safe))
                         (cons _g1937219375_ _g1937319378_)))
                     '()
                     _L19347_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L19349_ __tmp25726))))
                                          (declare (not safe))
                                          (cons _L19351_ __tmp25725))))
                                   (declare (not safe))
                                   (cons __tmp25724 '()))))
                            (declare (not safe))
                            (cons __tmp25727 __tmp25723))))
                     (declare (not safe))
                     (cons __tmp25728 __tmp25722)))))
            (let* ((___match2385923860_
                    (lambda (_e1925719287_
                             _hd1925819291_
                             _tl1925919294_
                             _e1926019297_
                             _hd1926119301_
                             _tl1926219304_
                             _e1926319307_
                             _hd1926419311_
                             _tl1926519314_
                             ___splice2379323794_
                             _target1926619317_
                             _tl1926819320_)
                      (letrec ((_loop1926919323_
                                (lambda (_hd1926719327_ _body1927319330_)
                                  (if (gx#stx-pair? _hd1926719327_)
                                      (let ((_e1927019333_
                                             (gx#syntax-e _hd1926719327_)))
                                        (let ((_lp-tl1927219340_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1927019333_)))
                                              (_lp-hd1927119337_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1927019333_))))
                                          (_loop1926919323_
                                           _lp-tl1927219340_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1927119337_
                                                   _body1927319330_)))))
                                      (let ((_body1927419343_
                                             (reverse _body1927319330_)))
                                        (___kont2379123792_
                                         _body1927419343_
                                         _tl1926519314_
                                         _hd1926419311_
                                         _hd1925819291_))))))
                        (_loop1926919323_ _target1926619317_ '()))))
                   (___match2383323834_
                    (lambda (_e1923819388_
                             _hd1923919392_
                             _tl1924019395_
                             _e1924119398_
                             _hd1924219402_
                             _tl1924319405_
                             ___splice2378923790_
                             _target1924419408_
                             _tl1924619411_)
                      (letrec ((_loop1924719414_
                                (lambda (_hd1924519418_ _body1925119421_)
                                  (if (gx#stx-pair? _hd1924519418_)
                                      (let ((_e1924819424_
                                             (gx#syntax-e _hd1924519418_)))
                                        (let ((_lp-tl1925019431_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1924819424_)))
                                              (_lp-hd1924919428_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1924819424_))))
                                          (_loop1924719414_
                                           _lp-tl1925019431_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd1924919428_
                                                   _body1925119421_)))))
                                      (let ((_body1925219434_
                                             (reverse _body1925119421_)))
                                        (___kont2378723788_
                                         _body1925219434_))))))
                        (_loop1924719414_ _target1924419408_ '())))))
              (if (gx#stx-pair? ___stx2378223783_)
                  (let ((_e1923119470_ (gx#syntax-e ___stx2378223783_)))
                    (let ((_tl1923319477_
                           (let () (declare (not safe)) (##cdr _e1923119470_)))
                          (_hd1923219474_
                           (let ()
                             (declare (not safe))
                             (##car _e1923119470_))))
                      (if (gx#stx-pair? _tl1923319477_)
                          (let ((_e1923419480_ (gx#syntax-e _tl1923319477_)))
                            (let ((_tl1923619487_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e1923419480_)))
                                  (_hd1923519484_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e1923419480_))))
                              (if (gx#stx-null? _hd1923519484_)
                                  (if (gx#stx-null? _tl1923619487_)
                                      (___kont2378523786_)
                                      (if (gx#stx-pair/null? _tl1923619487_)
                                          (let ((___splice2378923790_
                                                 (gx#syntax-split-splice
                                                  _tl1923619487_
                                                  '0)))
                                            (let ((_tl1924619411_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2378923790_
                                                      '1)))
                                                  (_target1924419408_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice2378923790_
                                                      '0))))
                                              (if (gx#stx-null? _tl1924619411_)
                                                  (___match2383323834_
                                                   _e1923119470_
                                                   _hd1923219474_
                                                   _tl1923319477_
                                                   _e1923419480_
                                                   _hd1923519484_
                                                   _tl1923619487_
                                                   ___splice2378923790_
                                                   _target1924419408_
                                                   _tl1924619411_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1922919280_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g1922919280_))))
                                  (if (gx#stx-pair? _hd1923519484_)
                                      (let ((_e1926319307_
                                             (gx#syntax-e _hd1923519484_)))
                                        (let ((_tl1926519314_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1926319307_)))
                                              (_hd1926419311_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1926319307_))))
                                          (if (gx#stx-pair/null?
                                               _tl1923619487_)
                                              (let ((___splice2379323794_
                                                     (gx#syntax-split-splice
                                                      _tl1923619487_
                                                      '0)))
                                                (let ((_tl1926819320_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2379323794_
                                                          '1)))
                                                      (_target1926619317_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice2379323794_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1926819320_)
                                                      (___match2385923860_
                                                       _e1923119470_
                                                       _hd1923219474_
                                                       _tl1923319477_
                                                       _e1923419480_
                                                       _hd1923519484_
                                                       _tl1923619487_
                                                       _e1926319307_
                                                       _hd1926419311_
                                                       _tl1926519314_
                                                       ___splice2379323794_
                                                       _target1926619317_
                                                       _tl1926819320_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g1922919280_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g1922919280_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g1922919280_))))))
                          (let () (declare (not safe)) (_g1922919280_)))))
                  (let () (declare (not safe)) (_g1922919280_))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#@list|
      (lambda (_$stx19500_)
        (let* ((___stx2386223863_ _$stx19500_)
               (_g1951119589_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2386223863_))))
          (let ((___kont2386523866_
                 (lambda ()
                   (let ((__tmp25730 (gx#datum->syntax '#f 'quote))
                         (__tmp25729
                          (let () (declare (not safe)) (cons '() '()))))
                     (declare (not safe))
                     (cons __tmp25730 __tmp25729))))
                (___kont2386723868_
                 (lambda (_L19920_)
                   (let ((__tmp25732 (gx#datum->syntax '#f 'quote))
                         (__tmp25731
                          (let () (declare (not safe)) (cons _L19920_ '()))))
                     (declare (not safe))
                     (cons __tmp25732 __tmp25731))))
                (___kont2386923870_
                 (lambda (_L19868_)
                   (let ((__tmp25734 (gx#datum->syntax '#f 'quasiquote))
                         (__tmp25733
                          (let () (declare (not safe)) (cons _L19868_ '()))))
                     (declare (not safe))
                     (cons __tmp25734 __tmp25733))))
                (___kont2387123872_ (lambda (_L19815_) _L19815_))
                (___kont2387323874_ (lambda (_L19757_ _L19759_) _L19759_))
                (___kont2387523876_
                 (lambda (_L19699_ _L19701_ _L19702_ _L19703_)
                   (let ((__tmp25740 (gx#datum->syntax '#f 'foldr))
                         (__tmp25735
                          (let ((__tmp25739 (gx#datum->syntax '#f 'cons))
                                (__tmp25736
                                 (let ((__tmp25738
                                        (let ()
                                          (declare (not safe))
                                          (cons _L19703_ _L19699_)))
                                       (__tmp25737
                                        (let ()
                                          (declare (not safe))
                                          (cons _L19702_ '()))))
                                   (declare (not safe))
                                   (cons __tmp25738 __tmp25737))))
                            (declare (not safe))
                            (cons __tmp25739 __tmp25736))))
                     (declare (not safe))
                     (cons __tmp25740 __tmp25735))))
                (___kont2387723878_
                 (lambda (_L19645_ _L19647_ _L19648_)
                   (let ((__tmp25744 (gx#datum->syntax '#f 'cons))
                         (__tmp25741
                          (let ((__tmp25742
                                 (let ((__tmp25743
                                        (let ()
                                          (declare (not safe))
                                          (cons _L19648_ _L19645_))))
                                   (declare (not safe))
                                   (cons __tmp25743 '()))))
                            (declare (not safe))
                            (cons _L19647_ __tmp25742))))
                     (declare (not safe))
                     (cons __tmp25744 __tmp25741))))
                (___kont2387923880_ (lambda (_L19606_) _L19606_)))
            (let* ((___match2400124002_
                    (lambda (_e1956219669_
                             _hd1956319673_
                             _tl1956419676_
                             _e1956519679_
                             _hd1956619683_
                             _tl1956719686_
                             _e1956819689_
                             _hd1956919693_
                             _tl1957019696_)
                      (let ((_L19699_ _tl1957019696_)
                            (_L19701_ _hd1956919693_)
                            (_L19702_ _hd1956619683_)
                            (_L19703_ _hd1956319673_))
                        (if (gx#ellipsis? _L19701_)
                            (___kont2387523876_
                             _L19699_
                             _L19701_
                             _L19702_
                             _L19703_)
                            (___kont2387723878_
                             _tl1956719686_
                             _hd1956619683_
                             _hd1956319673_)))))
                   (___match2398323984_
                    (lambda (_e1954919727_
                             _hd1955019731_
                             _tl1955119734_
                             _e1955219737_
                             _hd1955319741_
                             _tl1955419744_
                             _e1955519747_
                             _hd1955619751_
                             _tl1955719754_)
                      (let ((_L19757_ _hd1955619751_)
                            (_L19759_ _hd1955319741_))
                        (if (gx#ellipsis? _L19757_)
                            (___kont2387323874_ _L19757_ _L19759_)
                            (___match2400124002_
                             _e1954919727_
                             _hd1955019731_
                             _tl1955119734_
                             _e1955219737_
                             _hd1955319741_
                             _tl1955419744_
                             _e1955519747_
                             _hd1955619751_
                             _tl1955719754_))))))
              (if (gx#stx-pair? ___stx2386223863_)
                  (let ((_e1951319942_ (gx#syntax-e ___stx2386223863_)))
                    (let ((_tl1951519949_
                           (let () (declare (not safe)) (##cdr _e1951319942_)))
                          (_hd1951419946_
                           (let ()
                             (declare (not safe))
                             (##car _e1951319942_))))
                      (if (gx#stx-null? _tl1951519949_)
                          (___kont2386523866_)
                          (if (gx#stx-pair? _tl1951519949_)
                              (let ((_e1952019900_
                                     (gx#syntax-e _tl1951519949_)))
                                (let ((_tl1952219907_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1952019900_)))
                                      (_hd1952119904_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1952019900_))))
                                  (if (gx#identifier? _hd1952119904_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar$<sugar:2>[1]#_g25745_|
                                           _hd1952119904_)
                                          (if (gx#stx-pair? _tl1952219907_)
                                              (let ((_e1952319910_
                                                     (gx#syntax-e
                                                      _tl1952219907_)))
                                                (let ((_tl1952519917_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1952319910_)))
                                                      (_hd1952419914_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1952319910_))))
                                                  (if (gx#stx-null?
                                                       _tl1952519917_)
                                                      (___kont2386723868_
                                                       _hd1952419914_)
                                                      (___match2400124002_
                                                       _e1951319942_
                                                       _hd1951419946_
                                                       _tl1951519949_
                                                       _e1952019900_
                                                       _hd1952119904_
                                                       _tl1952219907_
                                                       _e1952319910_
                                                       _hd1952419914_
                                                       _tl1952519917_))))
                                              (___kont2387723878_
                                               _tl1952219907_
                                               _hd1952119904_
                                               _hd1951419946_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar$<sugar:2>[1]#_g25746_|
                                               _hd1952119904_)
                                              (if (gx#stx-pair? _tl1952219907_)
                                                  (let ((_e1953319858_
                                                         (gx#syntax-e
                                                          _tl1952219907_)))
                                                    (let ((_tl1953519865_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1953319858_)))
                                                          (_hd1953419862_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1953319858_))))
                                                      (if (gx#stx-null?
                                                           _tl1953519865_)
                                                          (___kont2386923870_
                                                           _hd1953419862_)
                                                          (___match2400124002_
                                                           _e1951319942_
                                                           _hd1951419946_
                                                           _tl1951519949_
                                                           _e1952019900_
                                                           _hd1952119904_
                                                           _tl1952219907_
                                                           _e1953319858_
                                                           _hd1953419862_
                                                           _tl1953519865_))))
                                                  (___kont2387723878_
                                                   _tl1952219907_
                                                   _hd1952119904_
                                                   _hd1951419946_))
                                              (if (gx#stx-pair? _tl1952219907_)
                                                  (let ((_e1955519747_
                                                         (gx#syntax-e
                                                          _tl1952219907_)))
                                                    (let ((_tl1955719754_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1955519747_)))
                                                          (_hd1955619751_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1955519747_))))
                                                      (if (gx#stx-null?
                                                           _tl1955719754_)
                                                          (___match2398323984_
                                                           _e1951319942_
                                                           _hd1951419946_
                                                           _tl1951519949_
                                                           _e1952019900_
                                                           _hd1952119904_
                                                           _tl1952219907_
                                                           _e1955519747_
                                                           _hd1955619751_
                                                           _tl1955719754_)
                                                          (___match2400124002_
                                                           _e1951319942_
                                                           _hd1951419946_
                                                           _tl1951519949_
                                                           _e1952019900_
                                                           _hd1952119904_
                                                           _tl1952219907_
                                                           _e1955519747_
                                                           _hd1955619751_
                                                           _tl1955719754_))))
                                                  (___kont2387723878_
                                                   _tl1952219907_
                                                   _hd1952119904_
                                                   _hd1951419946_))))
                                      (if (gx#stx-datum? _hd1952119904_)
                                          (let ((_e1954319801_
                                                 (gx#stx-e _hd1952119904_)))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e1954319801_ '::))
                                                (if (gx#stx-pair?
                                                     _tl1952219907_)
                                                    (let ((_e1954419805_
                                                           (gx#syntax-e
                                                            _tl1952219907_)))
                                                      (let ((_tl1954619812_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e1954419805_)))
                    (_hd1954519809_
                     (let () (declare (not safe)) (##car _e1954419805_))))
                (if (gx#stx-null? _tl1954619812_)
                    (___kont2387123872_ _hd1954519809_)
                    (___match2400124002_
                     _e1951319942_
                     _hd1951419946_
                     _tl1951519949_
                     _e1952019900_
                     _hd1952119904_
                     _tl1952219907_
                     _e1954419805_
                     _hd1954519809_
                     _tl1954619812_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2387723878_
                                                     _tl1952219907_
                                                     _hd1952119904_
                                                     _hd1951419946_))
                                                (if (gx#stx-pair?
                                                     _tl1952219907_)
                                                    (let ((_e1955519747_
                                                           (gx#syntax-e
                                                            _tl1952219907_)))
                                                      (let ((_tl1955719754_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e1955519747_)))
                    (_hd1955619751_
                     (let () (declare (not safe)) (##car _e1955519747_))))
                (if (gx#stx-null? _tl1955719754_)
                    (___match2398323984_
                     _e1951319942_
                     _hd1951419946_
                     _tl1951519949_
                     _e1952019900_
                     _hd1952119904_
                     _tl1952219907_
                     _e1955519747_
                     _hd1955619751_
                     _tl1955719754_)
                    (___match2400124002_
                     _e1951319942_
                     _hd1951419946_
                     _tl1951519949_
                     _e1952019900_
                     _hd1952119904_
                     _tl1952219907_
                     _e1955519747_
                     _hd1955619751_
                     _tl1955719754_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont2387723878_
                                                     _tl1952219907_
                                                     _hd1952119904_
                                                     _hd1951419946_))))
                                          (if (gx#stx-pair? _tl1952219907_)
                                              (let ((_e1955519747_
                                                     (gx#syntax-e
                                                      _tl1952219907_)))
                                                (let ((_tl1955719754_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1955519747_)))
                                                      (_hd1955619751_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1955519747_))))
                                                  (if (gx#stx-null?
                                                       _tl1955719754_)
                                                      (___match2398323984_
                                                       _e1951319942_
                                                       _hd1951419946_
                                                       _tl1951519949_
                                                       _e1952019900_
                                                       _hd1952119904_
                                                       _tl1952219907_
                                                       _e1955519747_
                                                       _hd1955619751_
                                                       _tl1955719754_)
                                                      (___match2400124002_
                                                       _e1951319942_
                                                       _hd1951419946_
                                                       _tl1951519949_
                                                       _e1952019900_
                                                       _hd1952119904_
                                                       _tl1952219907_
                                                       _e1955519747_
                                                       _hd1955619751_
                                                       _tl1955719754_))))
                                              (___kont2387723878_
                                               _tl1952219907_
                                               _hd1952119904_
                                               _hd1951419946_))))))
                              (___kont2387923880_ _tl1951519949_)))))
                  (let () (declare (not safe)) (_g1951119589_))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#quasiquote|
      (lambda (_stx19960_)
        (letrec ((_simple-quote?19963_
                  (lambda (_e20655_)
                    (let* ((___stx2402224023_ _e20655_)
                           (_g2066320700_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2402224023_))))
                      (let ((___kont2402524026_ (lambda () '#f))
                            (___kont2402724028_ (lambda () '#f))
                            (___kont2402924030_
                             (lambda (_L20814_ _L20816_)
                               (if (_simple-quote?19963_ _L20816_)
                                   (_simple-quote?19963_ _L20814_)
                                   '#f)))
                            (___kont2403124032_
                             (lambda (_L20775_)
                               (_simple-quote?19963_
                                (foldr (lambda (_g2078820791_ _g2078920794_)
                                         (let ()
                                           (declare (not safe))
                                           (cons _g2078820791_ _g2078920794_)))
                                       '()
                                       _L20775_))))
                            (___kont2403524036_
                             (lambda (_L20722_)
                               (_simple-quote?19963_ _L20722_)))
                            (___kont2403724038_ (lambda () '#t)))
                        (let* ((_g2066120734_
                                (lambda ()
                                  (if (gx#stx-box? ___stx2402224023_)
                                      (let ((_e2069420718_
                                             (unbox (gx#syntax-e
                                                     ___stx2402224023_))))
                                        (___kont2403524036_ _e2069420718_))
                                      (___kont2403724038_))))
                               (___match2409324094_
                                (lambda (_e2068320741_
                                         ___splice2403324034_
                                         _target2068420745_
                                         _tl2068620748_)
                                  (letrec ((_loop2068720751_
                                            (lambda (_hd2068520755_
                                                     _e2069120758_)
                                              (if (gx#stx-pair? _hd2068520755_)
                                                  (let ((_e2068820761_
                                                         (gx#syntax-e
                                                          _hd2068520755_)))
                                                    (let ((_lp-tl2069020768_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2068820761_)))
                                                          (_lp-hd2068920765_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2068820761_))))
                                                      (_loop2068720751_
                                                       _lp-tl2069020768_
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _lp-hd2068920765_
                                                               _e2069120758_)))))
                                                  (let ((_e2069220771_
                                                         (reverse _e2069120758_)))
                                                    (___kont2403124032_
                                                     _e2069220771_))))))
                                    (_loop2068720751_
                                     _target2068420745_
                                     '()))))
                               (_g2066020797_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx2402224023_)
                                      (let ((_e2068320741_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx2402224023_))))
                                        (if (gx#stx-pair/null? _e2068320741_)
                                            (let ((___splice2403324034_
                                                   (gx#syntax-split-splice
                                                    _e2068320741_
                                                    '0)))
                                              (let ((_tl2068620748_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2403324034_
                                                        '1)))
                                                    (_target2068420745_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2403324034_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl2068620748_)
                                                    (___match2409324094_
                                                     _e2068320741_
                                                     ___splice2403324034_
                                                     _target2068420745_
                                                     _tl2068620748_)
                                                    (___kont2403724038_))))
                                            (___kont2403724038_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g2066120734_))))))
                          (if (gx#stx-pair? ___stx2402224023_)
                              (let ((_e2066520865_
                                     (gx#syntax-e ___stx2402224023_)))
                                (let ((_tl2066720872_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2066520865_)))
                                      (_hd2066620869_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2066520865_))))
                                  (if (gx#identifier? _hd2066620869_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar$<sugar:2>[1]#_g25747_|
                                           _hd2066620869_)
                                          (if (gx#stx-pair? _tl2066720872_)
                                              (let ((_e2066820875_
                                                     (gx#syntax-e
                                                      _tl2066720872_)))
                                                (let ((_tl2067020882_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2066820875_)))
                                                      (_hd2066920879_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2066820875_))))
                                                  (if (gx#stx-null?
                                                       _tl2067020882_)
                                                      (___kont2402524026_)
                                                      (___kont2402924030_
                                                       _tl2066720872_
                                                       _hd2066620869_))))
                                              (___kont2402924030_
                                               _tl2066720872_
                                               _hd2066620869_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar$<sugar:2>[1]#_g25748_|
                                               _hd2066620869_)
                                              (if (gx#stx-pair? _tl2066720872_)
                                                  (let ((_e2067420844_
                                                         (gx#syntax-e
                                                          _tl2066720872_)))
                                                    (let ((_tl2067620851_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2067420844_)))
                                                          (_hd2067520848_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2067420844_))))
                                                      (if (gx#stx-null?
                                                           _tl2067620851_)
                                                          (___kont2402724028_)
                                                          (___kont2402924030_
                                                           _tl2066720872_
                                                           _hd2066620869_))))
                                                  (___kont2402924030_
                                                   _tl2066720872_
                                                   _hd2066620869_))
                                              (___kont2402924030_
                                               _tl2066720872_
                                               _hd2066620869_)))
                                      (___kont2402924030_
                                       _tl2066720872_
                                       _hd2066620869_))))
                              (let ()
                                (declare (not safe))
                                (_g2066020797_))))))))
                 (_generate19965_
                  (lambda (_e20027_ _d20029_)
                    (let* ((___stx2410024101_ _e20027_)
                           (_g2003820096_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               ___stx2410024101_))))
                      (let ((___kont2410324104_
                             (lambda (_L20607_)
                               (let* ((_g2062020628_
                                       (lambda (_g2062120624_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2062120624_)))
                                      (_g2061920647_
                                       (lambda (_g2062120632_)
                                         ((lambda (_L20635_)
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
                                  (gx#datum->syntax '#f 'quasiquote)))
                             (declare (not safe))
                             (cons __tmp25753 '()))))
                      (declare (not safe))
                      (cons __tmp25754 __tmp25752)))
                   (__tmp25750
                    (let () (declare (not safe)) (cons _L20635_ '()))))
               (declare (not safe))
               (cons __tmp25751 __tmp25750))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25755 __tmp25749))))
                                          _g2062120632_))))
                                 (_g2061920647_
                                  (_generate19965_
                                   _L20607_
                                   (let ()
                                     (declare (not safe))
                                     (fx+ _d20029_ '1)))))))
                            (___kont2410524106_
                             (lambda (_L20536_)
                               (if (let ()
                                     (declare (not safe))
                                     (fxzero? _d20029_))
                                   _L20536_
                                   (let* ((_g2054920557_
                                           (lambda (_g2055020553_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2055020553_)))
                                          (_g2054820576_
                                           (lambda (_g2055020561_)
                                             ((lambda (_L20564_)
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
                                      (gx#datum->syntax '#f 'unquote)))
                                 (declare (not safe))
                                 (cons __tmp25760 '()))))
                          (declare (not safe))
                          (cons __tmp25761 __tmp25759)))
                       (__tmp25757
                        (let () (declare (not safe)) (cons _L20564_ '()))))
                   (declare (not safe))
                   (cons __tmp25758 __tmp25757))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp25762
                                                          __tmp25756))))
                                              _g2055020561_))))
                                     (_g2054820576_
                                      (_generate19965_
                                       _L20536_
                                       (let ()
                                         (declare (not safe))
                                         (fx- _d20029_ '1))))))))
                            (___kont2410724108_
                             (lambda (_L20465_)
                               (if (let ()
                                     (declare (not safe))
                                     (fxzero? _d20029_))
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
               (__tmp25765 (let () (declare (not safe)) (cons _L20465_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp25766
                                                         __tmp25765))))
                                            (declare (not safe))
                                            (cons __tmp25769 __tmp25764))))
                                     (declare (not safe))
                                     (cons __tmp25770 __tmp25763))
                                   (let* ((_g2047820486_
                                           (lambda (_g2047920482_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g2047920482_)))
                                          (_g2047720505_
                                           (lambda (_g2047920490_)
                                             ((lambda (_L20493_)
                                                (let ()
                                                  (let ((__tmp25777
                                                         (gx#datum->syntax
                                                          '#f
                                                          'list))
                                                        (__tmp25771
                                                         (let ((__tmp25773
                                                                (let ((__tmp25776
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'quote))
                              (__tmp25774
                               (let ((__tmp25775
                                      (gx#datum->syntax
                                       '#f
                                       'unquote-splicing)))
                                 (declare (not safe))
                                 (cons __tmp25775 '()))))
                          (declare (not safe))
                          (cons __tmp25776 __tmp25774)))
                       (__tmp25772
                        (let () (declare (not safe)) (cons _L20493_ '()))))
                   (declare (not safe))
                   (cons __tmp25773 __tmp25772))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp25777
                                                          __tmp25771))))
                                              _g2047920490_))))
                                     (_g2047720505_
                                      (_generate19965_
                                       _L20465_
                                       (let ()
                                         (declare (not safe))
                                         (fx- _d20029_ '1))))))))
                            (___kont2410924110_
                             (lambda (_L20390_ _L20392_)
                               (let* ((_g2040720415_
                                       (lambda (_g2040820411_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2040820411_)))
                                      (_g2040620434_
                                       (lambda (_g2040820419_)
                                         ((lambda (_L20422_)
                                            (let ()
                                              (let ((__tmp25782
                                                     (gx#datum->syntax
                                                      '#f
                                                      'foldr))
                                                    (__tmp25778
                                                     (let ((__tmp25781
                                                            (gx#datum->syntax
                                                             '#f
                                                             'cons))
                                                           (__tmp25779
                                                            (let ((__tmp25780
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _L20392_ '()))))
                      (declare (not safe))
                      (cons _L20422_ __tmp25780))))
               (declare (not safe))
               (cons __tmp25781 __tmp25779))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp25782 __tmp25778))))
                                          _g2040820419_))))
                                 (_g2040620434_
                                  (_generate19965_ _L20390_ _d20029_)))))
                            (___kont2411124112_
                             (lambda (_L20276_ _L20278_)
                               (let* ((_g2028920304_
                                       (lambda (_g2029020300_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2029020300_)))
                                      (_g2028820349_
                                       (lambda (_g2029020308_)
                                         (if (gx#stx-pair? _g2029020308_)
                                             (let ((_e2029320311_
                                                    (gx#syntax-e
                                                     _g2029020308_)))
                                               (let ((_hd2029420315_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e2029320311_)))
                                                     (_tl2029520318_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e2029320311_))))
                                                 (if (gx#stx-pair?
                                                      _tl2029520318_)
                                                     (let ((_e2029620321_
                                                            (gx#syntax-e
                                                             _tl2029520318_)))
                                                       (let ((_hd2029720325_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _e2029620321_)))
                     (_tl2029820328_
                      (let () (declare (not safe)) (##cdr _e2029620321_))))
                 (if (gx#stx-null? _tl2029820328_)
                     ((lambda (_L20331_ _L20333_)
                        (let ()
                          (let ((__tmp25785 (gx#datum->syntax '#f 'cons))
                                (__tmp25783
                                 (let ((__tmp25784
                                        (let ()
                                          (declare (not safe))
                                          (cons _L20331_ '()))))
                                   (declare (not safe))
                                   (cons _L20333_ __tmp25784))))
                            (declare (not safe))
                            (cons __tmp25785 __tmp25783))))
                      _hd2029720325_
                      _hd2029420315_)
                     (_g2028920304_ _g2029020308_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2028920304_
                                                      _g2029020308_))))
                                             (_g2028920304_ _g2029020308_)))))
                                 (_g2028820349_
                                  (list (_generate19965_ _L20278_ _d20029_)
                                        (_generate19965_
                                         _L20276_
                                         _d20029_))))))
                            (___kont2411324114_
                             (lambda (_L20206_)
                               (let* ((_g2022020228_
                                       (lambda (_g2022120224_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2022120224_)))
                                      (_g2021920247_
                                       (lambda (_g2022120232_)
                                         ((lambda (_L20235_)
                                            (let ()
                                              (let ((__tmp25787
                                                     (gx#datum->syntax
                                                      '#f
                                                      'list->vector))
                                                    (__tmp25786
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L20235_ '()))))
                                                (declare (not safe))
                                                (cons __tmp25787 __tmp25786))))
                                          _g2022120232_))))
                                 (_g2021920247_
                                  (_generate19965_
                                   (foldr (lambda (_g2025020253_ _g2025120256_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g2025020253_
                                                    _g2025120256_)))
                                          '()
                                          _L20206_)
                                   _d20029_)))))
                            (___kont2411724118_
                             (lambda (_L20124_)
                               (let* ((_g2013420142_
                                       (lambda (_g2013520138_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g2013520138_)))
                                      (_g2013320161_
                                       (lambda (_g2013520146_)
                                         ((lambda (_L20149_)
                                            (let ()
                                              (let ((__tmp25789
                                                     (gx#datum->syntax
                                                      '#f
                                                      'box))
                                                    (__tmp25788
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L20149_ '()))))
                                                (declare (not safe))
                                                (cons __tmp25789 __tmp25788))))
                                          _g2013520146_))))
                                 (_g2013320161_
                                  (_generate19965_ _L20124_ _d20029_)))))
                            (___kont2411924120_
                             (lambda (_L20103_)
                               (let ((__tmp25791 (gx#datum->syntax '#f 'quote))
                                     (__tmp25790
                                      (let ()
                                        (declare (not safe))
                                        (cons _L20103_ '()))))
                                 (declare (not safe))
                                 (cons __tmp25791 __tmp25790)))))
                        (let* ((_g2003620165_
                                (lambda ()
                                  (if (gx#stx-box? ___stx2410024101_)
                                      (let ((_e2008920120_
                                             (unbox (gx#syntax-e
                                                     ___stx2410024101_))))
                                        (___kont2411724118_ _e2008920120_))
                                      (___kont2411924120_ ___stx2410024101_))))
                               (___match2421924220_
                                (lambda (_e2007820172_
                                         ___splice2411524116_
                                         _target2007920176_
                                         _tl2008120179_)
                                  (letrec ((_loop2008220182_
                                            (lambda (_hd2008020186_
                                                     _e2008620189_)
                                              (if (gx#stx-pair? _hd2008020186_)
                                                  (let ((_e2008320192_
                                                         (gx#syntax-e
                                                          _hd2008020186_)))
                                                    (let ((_lp-tl2008520199_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2008320192_)))
                                                          (_lp-hd2008420196_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2008320192_))))
                                                      (_loop2008220182_
                                                       _lp-tl2008520199_
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _lp-hd2008420196_
                                                               _e2008620189_)))))
                                                  (let ((_e2008720202_
                                                         (reverse _e2008620189_)))
                                                    (___kont2411324114_
                                                     _e2008720202_))))))
                                    (_loop2008220182_
                                     _target2007920176_
                                     '()))))
                               (_g2003520259_
                                (lambda ()
                                  (if (gx#stx-vector? ___stx2410024101_)
                                      (let ((_e2007820172_
                                             (vector->list
                                              (gx#syntax-e
                                               ___stx2410024101_))))
                                        (if (gx#stx-pair/null? _e2007820172_)
                                            (let ((___splice2411524116_
                                                   (gx#syntax-split-splice
                                                    _e2007820172_
                                                    '0)))
                                              (let ((_tl2008120179_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2411524116_
                                                        '1)))
                                                    (_target2007920176_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice2411524116_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl2008120179_)
                                                    (___match2421924220_
                                                     _e2007820172_
                                                     ___splice2411524116_
                                                     _target2007920176_
                                                     _tl2008120179_)
                                                    (___kont2411924120_
                                                     ___stx2410024101_))))
                                            (___kont2411924120_
                                             ___stx2410024101_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g2003620165_))))))
                          (if (gx#stx-pair? ___stx2410024101_)
                              (let ((_e2004120587_
                                     (gx#syntax-e ___stx2410024101_)))
                                (let ((_tl2004320594_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2004120587_)))
                                      (_hd2004220591_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2004120587_))))
                                  (if (gx#identifier? _hd2004220591_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/sugar$<sugar:2>[1]#_g25792_|
                                           _hd2004220591_)
                                          (if (gx#stx-pair? _tl2004320594_)
                                              (let ((_e2004420597_
                                                     (gx#syntax-e
                                                      _tl2004320594_)))
                                                (let ((_tl2004620604_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e2004420597_)))
                                                      (_hd2004520601_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e2004420597_))))
                                                  (if (gx#stx-null?
                                                       _tl2004620604_)
                                                      (___kont2410324104_
                                                       _hd2004520601_)
                                                      (___kont2411124112_
                                                       _tl2004320594_
                                                       _hd2004220591_))))
                                              (___kont2411124112_
                                               _tl2004320594_
                                               _hd2004220591_))
                                          (if (gx#free-identifier=?
                                               |gerbil/core/sugar$<sugar:2>[1]#_g25793_|
                                               _hd2004220591_)
                                              (if (gx#stx-pair? _tl2004320594_)
                                                  (let ((_e2005120526_
                                                         (gx#syntax-e
                                                          _tl2004320594_)))
                                                    (let ((_tl2005320533_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e2005120526_)))
                                                          (_hd2005220530_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e2005120526_))))
                                                      (if (gx#stx-null?
                                                           _tl2005320533_)
                                                          (___kont2410524106_
                                                           _hd2005220530_)
                                                          (___kont2411124112_
                                                           _tl2004320594_
                                                           _hd2004220591_))))
                                                  (___kont2411124112_
                                                   _tl2004320594_
                                                   _hd2004220591_))
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/sugar$<sugar:2>[1]#_g25794_|
                                                   _hd2004220591_)
                                                  (if (gx#stx-pair?
                                                       _tl2004320594_)
                                                      (let ((_e2005820455_
                                                             (gx#syntax-e
                                                              _tl2004320594_)))
                                                        (let ((_tl2006020462_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e2005820455_)))
                      (_hd2005920459_
                       (let () (declare (not safe)) (##car _e2005820455_))))
                  (if (gx#stx-null? _tl2006020462_)
                      (___kont2410724108_ _hd2005920459_)
                      (___kont2411124112_ _tl2004320594_ _hd2004220591_))))
              (___kont2411124112_ _tl2004320594_ _hd2004220591_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2411124112_
                                                   _tl2004320594_
                                                   _hd2004220591_))))
                                      (if (gx#stx-pair? _hd2004220591_)
                                          (let ((_e2006620370_
                                                 (gx#syntax-e _hd2004220591_)))
                                            (let ((_tl2006820377_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e2006620370_)))
                                                  (_hd2006720374_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e2006620370_))))
                                              (if (gx#identifier?
                                                   _hd2006720374_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/sugar$<sugar:2>[1]#_g25795_|
                                                       _hd2006720374_)
                                                      (if (gx#stx-pair?
                                                           _tl2006820377_)
                                                          (let ((_e2006920380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl2006820377_)))
                    (let ((_tl2007120387_
                           (let () (declare (not safe)) (##cdr _e2006920380_)))
                          (_hd2007020384_
                           (let ()
                             (declare (not safe))
                             (##car _e2006920380_))))
                      (if (gx#stx-null? _tl2007120387_)
                          (if (let () (declare (not safe)) (fxzero? _d20029_))
                              (let ((_L20390_ _tl2004320594_)
                                    (_L20392_ _hd2007020384_))
                                (___kont2410924110_ _L20390_ _L20392_))
                              (___kont2411124112_
                               _tl2004320594_
                               _hd2004220591_))
                          (___kont2411124112_ _tl2004320594_ _hd2004220591_))))
                  (___kont2411124112_ _tl2004320594_ _hd2004220591_))
              (___kont2411124112_ _tl2004320594_ _hd2004220591_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont2411124112_
                                                   _tl2004320594_
                                                   _hd2004220591_))))
                                          (___kont2411124112_
                                           _tl2004320594_
                                           _hd2004220591_)))))
                              (let ()
                                (declare (not safe))
                                (_g2003520259_)))))))))
          (let* ((_g1996719981_
                  (lambda (_g1996819977_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g1996819977_)))
                 (_g1996620023_
                  (lambda (_g1996819985_)
                    (if (gx#stx-pair? _g1996819985_)
                        (let ((_e1997019988_ (gx#syntax-e _g1996819985_)))
                          (let ((_hd1997119992_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1997019988_)))
                                (_tl1997219995_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1997019988_))))
                            (if (gx#stx-pair? _tl1997219995_)
                                (let ((_e1997319998_
                                       (gx#syntax-e _tl1997219995_)))
                                  (let ((_hd1997420002_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1997319998_)))
                                        (_tl1997520005_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1997319998_))))
                                    (if (gx#stx-null? _tl1997520005_)
                                        ((lambda (_L20008_)
                                           (if (_simple-quote?19963_ _L20008_)
                                               (let ((__tmp25797
                                                      (gx#datum->syntax
                                                       '#f
                                                       'quote))
                                                     (__tmp25796
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L20008_ '()))))
                                                 (declare (not safe))
                                                 (cons __tmp25797 __tmp25796))
                                               (_generate19965_ _L20008_ '0)))
                                         _hd1997420002_)
                                        (_g1996719981_ _g1996819985_))))
                                (_g1996719981_ _g1996819985_))))
                        (_g1996719981_ _g1996819985_)))))
            (_g1996620023_ _stx19960_)))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#delay|
      (lambda (_$stx20895_)
        (let* ((___stx2422624227_ _$stx20895_)
               (_g2090020921_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx2422624227_))))
          (let ((___kont2422924230_
                 (lambda (_L20989_)
                   (let ((__tmp25799 (gx#datum->syntax '#f 'quote))
                         (__tmp25798
                          (let () (declare (not safe)) (cons _L20989_ '()))))
                     (declare (not safe))
                     (cons __tmp25799 __tmp25798))))
                (___kont2423124232_
                 (lambda (_L20948_)
                   (let ((__tmp25805 (gx#datum->syntax '#f 'make-promise))
                         (__tmp25800
                          (let ((__tmp25801
                                 (let ((__tmp25804
                                        (gx#datum->syntax '#f 'lambda%))
                                       (__tmp25802
                                        (let ((__tmp25803
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L20948_ '()))))
                                          (declare (not safe))
                                          (cons '() __tmp25803))))
                                   (declare (not safe))
                                   (cons __tmp25804 __tmp25802))))
                            (declare (not safe))
                            (cons __tmp25801 '()))))
                     (declare (not safe))
                     (cons __tmp25805 __tmp25800)))))
            (let ((___match2424724248_
                   (lambda (_e2090320969_
                            _hd2090420973_
                            _tl2090520976_
                            _e2090620979_
                            _hd2090720983_
                            _tl2090820986_)
                     (let ((_L20989_ _hd2090720983_))
                       (if (gx#stx-datum? _L20989_)
                           (___kont2422924230_ _L20989_)
                           (___kont2423124232_ _hd2090720983_))))))
              (if (gx#stx-pair? ___stx2422624227_)
                  (let ((_e2090320969_ (gx#syntax-e ___stx2422624227_)))
                    (let ((_tl2090520976_
                           (let () (declare (not safe)) (##cdr _e2090320969_)))
                          (_hd2090420973_
                           (let ()
                             (declare (not safe))
                             (##car _e2090320969_))))
                      (if (gx#stx-pair? _tl2090520976_)
                          (let ((_e2090620979_ (gx#syntax-e _tl2090520976_)))
                            (let ((_tl2090820986_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e2090620979_)))
                                  (_hd2090720983_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e2090620979_))))
                              (if (gx#stx-null? _tl2090820986_)
                                  (___match2424724248_
                                   _e2090320969_
                                   _hd2090420973_
                                   _tl2090520976_
                                   _e2090620979_
                                   _hd2090720983_
                                   _tl2090820986_)
                                  (let ()
                                    (declare (not safe))
                                    (_g2090020921_)))))
                          (let () (declare (not safe)) (_g2090020921_)))))
                  (let () (declare (not safe)) (_g2090020921_))))))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#cut|
      (lambda (_stx21006_)
        (letrec ((_generate21009_
                  (lambda (_rest21128_)
                    (let _lp21131_ ((_rest21134_ _rest21128_)
                                    (_hd21136_ '())
                                    (_body21137_ '()))
                      (let* ((___stx2428424285_ _rest21134_)
                             (_g2114021152_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx2428424285_))))
                        (let ((___kont2428724288_
                               (lambda (_L21180_ _L21182_)
                                 (let* ((___stx2426424265_ _L21182_)
                                        (_g2119921206_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            ___stx2426424265_))))
                                   (let ((___kont2426724268_
                                          (lambda ()
                                            (let ((_arg21242_ (gx#genident)))
                                              (_lp21131_
                                               _L21180_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _arg21242_ _hd21136_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _arg21242_
                                                       _body21137_))))))
                                         (___kont2426924270_
                                          (lambda ()
                                            (if (gx#stx-null? _L21180_)
                                                (let ((_tail21228_
                                                       (gx#genident)))
                                                  (values (foldl cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tail21228_
                         _hd21136_)
                  (foldl cons (list _tail21228_) _body21137_)
                  '#t))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"bad syntax; cut ellipsis <...> not in tail position"
                                                 _stx21006_
                                                 _L21182_))))
                                         (___kont2427124272_
                                          (lambda ()
                                            (_lp21131_
                                             _L21180_
                                             _hd21136_
                                             (let ()
                                               (declare (not safe))
                                               (cons _L21182_ _body21137_))))))
                                     (if (gx#identifier? ___stx2426424265_)
                                         (if (gx#free-identifier=?
                                              |gerbil/core/sugar$<sugar:2>[1]#_g25806_|
                                              ___stx2426424265_)
                                             (___kont2426724268_)
                                             (if (gx#free-identifier=?
                                                  |gerbil/core/sugar$<sugar:2>[1]#_g25807_|
                                                  ___stx2426424265_)
                                                 (___kont2426924270_)
                                                 (___kont2427124272_)))
                                         (___kont2427124272_))))))
                              (___kont2428924290_
                               (lambda ()
                                 (values (reverse _hd21136_)
                                         (reverse _body21137_)
                                         '#f))))
                          (if (gx#stx-pair? ___stx2428424285_)
                              (let ((_e2114421170_
                                     (gx#syntax-e ___stx2428424285_)))
                                (let ((_tl2114621177_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e2114421170_)))
                                      (_hd2114521174_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e2114421170_))))
                                  (___kont2428724288_
                                   _tl2114621177_
                                   _hd2114521174_)))
                              (___kont2428924290_))))))))
          (let* ((_g2101221023_
                  (lambda (_g2101321019_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g2101321019_)))
                 (_g2101121124_
                  (lambda (_g2101321027_)
                    (if (gx#stx-pair? _g2101321027_)
                        (let ((_e2101521030_ (gx#syntax-e _g2101321027_)))
                          (let ((_hd2101621034_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e2101521030_)))
                                (_tl2101721037_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e2101521030_))))
                            ((lambda (_L21040_)
                               (if (and (gx#stx-list? _L21040_)
                                        (let ((__tmp25808
                                               (gx#stx-null? _L21040_)))
                                          (declare (not safe))
                                          (not __tmp25808)))
                                   (let ((_g25809_ (_generate21009_ _L21040_)))
                                     (begin
                                       (let ((_g25810_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g25809_)
                                                    (##vector-length _g25809_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g25810_ 3)))
                                             (error "Context expects 3 values"
                                                    _g25810_)))
                                       (let ((_hd21053_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g25809_ 0)))
                                             (_body21055_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g25809_ 1)))
                                             (_tail?21056_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref _g25809_ 2))))
                                         (let* ((_g2105821066_
                                                 (lambda (_g2105921062_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _g2105921062_)))
                                                (_g2105721120_
                                                 (lambda (_g2105921070_)
                                                   ((lambda (_L21073_)
                                                      (let ()
                                                        (let* ((_g2108621094_
                                                                (lambda (_g2108721090_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g2108721090_)))
                       (_g2108521116_
                        (lambda (_g2108721098_)
                          ((lambda (_L21101_)
                             (let ()
                               (let ()
                                 (if _tail?21056_
                                     (let ((__tmp25815
                                            (gx#datum->syntax '#f 'lambda%))
                                           (__tmp25811
                                            (let ((__tmp25812
                                                   (let ((__tmp25813
                                                          (let ((__tmp25814
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'apply)))
                    (declare (not safe))
                    (cons __tmp25814 _L21101_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp25813 '()))))
                                              (declare (not safe))
                                              (cons _L21073_ __tmp25812))))
                                       (declare (not safe))
                                       (cons __tmp25815 __tmp25811))
                                     (let ((__tmp25818
                                            (gx#datum->syntax '#f 'lambda%))
                                           (__tmp25816
                                            (let ((__tmp25817
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L21101_ '()))))
                                              (declare (not safe))
                                              (cons _L21073_ __tmp25817))))
                                       (declare (not safe))
                                       (cons __tmp25818 __tmp25816))))))
                           _g2108721098_))))
                  (_g2108521116_ _body21055_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g2105921070_))))
                                           (_g2105721120_ _hd21053_)))))
                                   (_g2101221023_ _g2101321027_)))
                             _tl2101721037_)))
                        (_g2101221023_ _g2101321027_)))))
            (_g2101121124_ _stx21006_)))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#<>|
      (lambda (_$stx21254_)
        (let ((_g2125721264_
               (lambda (_g2125821260_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g2125821260_))))
          (_g2125721264_ _$stx21254_))))
    (define |gerbil/core/sugar$<sugar:2>[:0:]#<...>|
      (lambda (_$stx21268_)
        (let ((_g2127121278_
               (lambda (_g2127221274_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _g2127221274_))))
          (_g2127121278_ _$stx21268_))))))
