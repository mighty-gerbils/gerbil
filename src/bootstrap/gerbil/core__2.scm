(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<syntax-sugar>[1]#_g34826_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<syntax-sugar>[:0:]#syntax-rules|
      (lambda (_stx393_)
        (let* ((_g396420_
                (lambda (_g397416_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g397416_)))
               (_g395725_
                (lambda (_g397424_)
                  (if (gx#stx-pair? _g397424_)
                      (let ((_e400427_ (gx#syntax-e _g397424_)))
                        (let ((_hd401431_ (##car _e400427_))
                              (_tl402434_ (##cdr _e400427_)))
                          (if (gx#stx-pair? _tl402434_)
                              (let ((_e403437_ (gx#syntax-e _tl402434_)))
                                (let ((_hd404441_ (##car _e403437_))
                                      (_tl405444_ (##cdr _e403437_)))
                                  (if (gx#stx-pair/null? _tl405444_)
                                      (if (fx>= (gx#stx-length _tl405444_) '0)
                                          (let ((_g34812_
                                                 (gx#syntax-split-splice
                                                  _tl405444_
                                                  '0)))
                                            (begin
                                              (let ((_g34813_
                                                     (values-count _g34812_)))
                                                (if (not (fx= _g34813_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34813_)))
                                              (let ((_target406447_
                                                     (values-ref _g34812_ 0))
                                                    (_tl408450_
                                                     (values-ref _g34812_ 1)))
                                                (if (gx#stx-null? _tl408450_)
                                                    (letrec ((_loop409453_
                                                              (lambda (_hd407457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clauses413460_)
                        (if (gx#stx-pair? _hd407457_)
                            (let ((_e410463_ (gx#syntax-e _hd407457_)))
                              (let ((_lp-hd411467_ (##car _e410463_))
                                    (_lp-tl412470_ (##cdr _e410463_)))
                                (_loop409453_
                                 _lp-tl412470_
                                 (cons _lp-hd411467_ _clauses413460_))))
                            (let ((_clauses414473_ (reverse _clauses413460_)))
                              ((lambda (_L477_ _L479_)
                                 (if (gx#identifier-list? _L479_)
                                     (let* ((_body642_
                                             (gx#stx-map
                                              (lambda (_clause499_)
                                                (let* ((_g503530_
                                                        (lambda (_g504526_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g504526_)))
                                                       (_g502588_
                                                        (lambda (_g504534_)
                                                          (if (gx#stx-pair?
                                                               _g504534_)
                                                              (let ((_e516537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g504534_)))
                        (let ((_hd517541_ (##car _e516537_))
                              (_tl518544_ (##cdr _e516537_)))
                          (if (gx#stx-pair? _tl518544_)
                              (let ((_e519547_ (gx#syntax-e _tl518544_)))
                                (let ((_hd520551_ (##car _e519547_))
                                      (_tl521554_ (##cdr _e519547_)))
                                  (if (gx#stx-pair? _tl521554_)
                                      (let ((_e522557_
                                             (gx#syntax-e _tl521554_)))
                                        (let ((_hd523561_ (##car _e522557_))
                                              (_tl524564_ (##cdr _e522557_)))
                                          (if (gx#stx-null? _tl524564_)
                                              ((lambda (_L567_ _L569_ _L570_)
                                                 (cons _L570_
                                                       (cons _L569_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'syntax)
                                 (cons _L567_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd523561_
                                               _hd520551_
                                               _hd517541_)
                                              (_g503530_ _g504534_))))
                                      (_g503530_ _g504534_))))
                              (_g503530_ _g504534_))))
                      (_g503530_ _g504534_))))
               (_g501630_
                (lambda (_g504592_)
                  (if (gx#stx-pair? _g504592_)
                      (let ((_e507595_ (gx#syntax-e _g504592_)))
                        (let ((_hd508599_ (##car _e507595_))
                              (_tl509602_ (##cdr _e507595_)))
                          (if (gx#stx-pair? _tl509602_)
                              (let ((_e510605_ (gx#syntax-e _tl509602_)))
                                (let ((_hd511609_ (##car _e510605_))
                                      (_tl512612_ (##cdr _e510605_)))
                                  (if (gx#stx-null? _tl512612_)
                                      ((lambda (_L615_ _L617_)
                                         (cons _L617_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'syntax)
                                                           (cons _L615_ '()))
                                                     '())))
                                       _hd511609_
                                       _hd508599_)
                                      (_g502588_ _g504592_))))
                              (_g502588_ _g504592_))))
                      (_g502588_ _g504592_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g501630_ _clause499_)))
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g633636_
                                                                _g634639_)
                                                         (cons _g633636_
                                                               _g634639_))
                                                       '()
                                                       _L477_))))
                                            (_g645662_
                                             (lambda (_g646658_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g646658_)))
                                            (_g644721_
                                             (lambda (_g646666_)
                                               (if (gx#stx-pair/null?
                                                    _g646666_)
                                                   (if (fx>= (gx#stx-length
                                                              _g646666_)
                                                             '0)
                                                       (let ((_g34814_
                                                              (gx#syntax-split-splice
                                                               _g646666_
                                                               '0)))
                                                         (begin
                                                           (let ((_g34815_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g34814_)))
                     (if (not (fx= _g34815_ 2))
                         (error "Context expects 2 values" _g34815_)))
                   (let ((_target648669_ (values-ref _g34814_ 0))
                         (_tl650672_ (values-ref _g34814_ 1)))
                     (if (gx#stx-null? _tl650672_)
                         (letrec ((_loop651675_
                                   (lambda (_hd649679_ _clause655682_)
                                     (if (gx#stx-pair? _hd649679_)
                                         (let ((_e652685_
                                                (gx#syntax-e _hd649679_)))
                                           (let ((_lp-hd653689_
                                                  (##car _e652685_))
                                                 (_lp-tl654692_
                                                  (##cdr _e652685_)))
                                             (_loop651675_
                                              _lp-tl654692_
                                              (cons _lp-hd653689_
                                                    _clause655682_))))
                                         (let ((_clause656695_
                                                (reverse _clause655682_)))
                                           ((lambda (_L699_)
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda%)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$stx)
                        '())
                  (cons (cons (gx#datum->syntax '#f 'syntax-case)
                              (cons (gx#datum->syntax '#f '$stx)
                                    (cons _L479_
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g712715_
                                                            _g713718_)
                                                     (cons _g712715_
                                                           _g713718_))
                                                   '()
                                                   _L699_)))))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _clause656695_))))))
                           (_loop651675_ _target648669_ '()))
                         (_g645662_ _g646666_)))))
               (_g645662_ _g646666_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g645662_ _g646666_)))))
                                       (_g644721_ _body642_))
                                     (_g396420_ _g397424_)))
                               _clauses414473_
                               _hd404441_))))))
              (_loop409453_ _target406447_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g396420_ _g397424_)))))
                                          (_g396420_ _g397424_))
                                      (_g396420_ _g397424_))))
                              (_g396420_ _g397424_))))
                      (_g396420_ _g397424_)))))
          (_g395725_ _stx393_))))
    (define |gerbil/core$<syntax-sugar>[:0:]#with-syntax|
      (lambda (_stx731_)
        (let* ((_g736821_
                (lambda (_g737817_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g737817_)))
               (_g735982_
                (lambda (_g737825_)
                  (if (gx#stx-pair? _g737825_)
                      (let ((_e784828_ (gx#syntax-e _g737825_)))
                        (let ((_hd785832_ (##car _e784828_))
                              (_tl786835_ (##cdr _e784828_)))
                          (if (gx#stx-pair? _tl786835_)
                              (let ((_e787838_ (gx#syntax-e _tl786835_)))
                                (let ((_hd788842_ (##car _e787838_))
                                      (_tl789845_ (##cdr _e787838_)))
                                  (if (gx#stx-pair/null? _hd788842_)
                                      (if (fx>= (gx#stx-length _hd788842_) '0)
                                          (let ((_g34816_
                                                 (gx#syntax-split-splice
                                                  _hd788842_
                                                  '0)))
                                            (begin
                                              (let ((_g34817_
                                                     (values-count _g34816_)))
                                                (if (not (fx= _g34817_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34817_)))
                                              (let ((_target790848_
                                                     (values-ref _g34816_ 0))
                                                    (_tl792851_
                                                     (values-ref _g34816_ 1)))
                                                (if (gx#stx-null? _tl792851_)
                                                    (letrec ((_loop793854_
                                                              (lambda (_hd791858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _e797861_
                               _pat798863_)
                        (if (gx#stx-pair? _hd791858_)
                            (let ((_e794866_ (gx#syntax-e _hd791858_)))
                              (let ((_lp-hd795870_ (##car _e794866_))
                                    (_lp-tl796873_ (##cdr _e794866_)))
                                (if (gx#stx-pair? _lp-hd795870_)
                                    (let ((_e801876_
                                           (gx#syntax-e _lp-hd795870_)))
                                      (let ((_hd802880_ (##car _e801876_))
                                            (_tl803883_ (##cdr _e801876_)))
                                        (if (gx#stx-pair? _tl803883_)
                                            (let ((_e804886_
                                                   (gx#syntax-e _tl803883_)))
                                              (let ((_hd805890_
                                                     (##car _e804886_))
                                                    (_tl806893_
                                                     (##cdr _e804886_)))
                                                (if (gx#stx-null? _tl806893_)
                                                    (_loop793854_
                                                     _lp-tl796873_
                                                     (cons _hd805890_
                                                           _e797861_)
                                                     (cons _hd802880_
                                                           _pat798863_))
                                                    (_g736821_ _g737825_))))
                                            (_g736821_ _g737825_))))
                                    (_g736821_ _g737825_))))
                            (let ((_e799896_ (reverse _e797861_))
                                  (_pat800899_ (reverse _pat798863_)))
                              (if (gx#stx-pair/null? _tl789845_)
                                  (if (fx>= (gx#stx-length _tl789845_) '0)
                                      (let ((_g34818_
                                             (gx#syntax-split-splice
                                              _tl789845_
                                              '0)))
                                        (begin
                                          (let ((_g34819_
                                                 (values-count _g34818_)))
                                            (if (not (fx= _g34819_ 2))
                                                (error "Context expects 2 values"
                                                       _g34819_)))
                                          (let ((_target807902_
                                                 (values-ref _g34818_ 0))
                                                (_tl809905_
                                                 (values-ref _g34818_ 1)))
                                            (if (gx#stx-null? _tl809905_)
                                                (letrec ((_loop810908_
                                                          (lambda (_hd808912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body814915_)
                    (if (gx#stx-pair? _hd808912_)
                        (let ((_e811918_ (gx#syntax-e _hd808912_)))
                          (let ((_lp-hd812922_ (##car _e811918_))
                                (_lp-tl813925_ (##cdr _e811918_)))
                            (_loop810908_
                             _lp-tl813925_
                             (cons _lp-hd812922_ _body814915_))))
                        (let ((_body815928_ (reverse _body814915_)))
                          ((lambda (_L932_ _L934_ _L935_)
                             (cons (gx#datum->syntax '#f 'syntax-case)
                                   (cons (cons (gx#datum->syntax '#f 'list)
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g957964_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g958967_)
                  (cons _g957964_ _g958967_))
                '()
                _L934_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons '()
                                               (cons (cons (begin
                                                             '#!void
                                                             (foldr (lambda (_g959970_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g960973_)
                              (cons _g959970_ _g960973_))
                            '()
                            _L935_))
                   (cons (cons (gx#datum->syntax '#f 'let-values)
                               (cons '()
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g961976_ _g962979_)
                                                (cons _g961976_ _g962979_))
                                              '()
                                              _L932_))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _body815928_
                           _e799896_
                           _pat800899_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop810908_
                                                   _target807902_
                                                   '()))
                                                (_g736821_ _g737825_)))))
                                      (_g736821_ _g737825_))
                                  (_g736821_ _g737825_)))))))
              (_loop793854_ _target790848_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g736821_ _g737825_)))))
                                          (_g736821_ _g737825_))
                                      (_g736821_ _g737825_))))
                              (_g736821_ _g737825_))))
                      (_g736821_ _g737825_))))
               (_g7341104_
                (lambda (_g737986_)
                  (if (gx#stx-pair? _g737986_)
                      (let ((_e757989_ (gx#syntax-e _g737986_)))
                        (let ((_hd758993_ (##car _e757989_))
                              (_tl759996_ (##cdr _e757989_)))
                          (if (gx#stx-pair? _tl759996_)
                              (let ((_e760999_ (gx#syntax-e _tl759996_)))
                                (let ((_hd7611003_ (##car _e760999_))
                                      (_tl7621006_ (##cdr _e760999_)))
                                  (if (gx#stx-pair? _hd7611003_)
                                      (let ((_e7631009_
                                             (gx#syntax-e _hd7611003_)))
                                        (let ((_hd7641013_ (##car _e7631009_))
                                              (_tl7651016_ (##cdr _e7631009_)))
                                          (if (gx#stx-pair? _hd7641013_)
                                              (let ((_e7661019_
                                                     (gx#syntax-e
                                                      _hd7641013_)))
                                                (let ((_hd7671023_
                                                       (##car _e7661019_))
                                                      (_tl7681026_
                                                       (##cdr _e7661019_)))
                                                  (if (gx#stx-pair?
                                                       _tl7681026_)
                                                      (let ((_e7691029_
                                                             (gx#syntax-e
                                                              _tl7681026_)))
                                                        (let ((_hd7701033_
                                                               (##car _e7691029_))
                                                              (_tl7711036_
                                                               (##cdr _e7691029_)))
                                                          (if (gx#stx-null?
                                                               _tl7711036_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl7651016_)
                          (if (gx#stx-pair/null? _tl7621006_)
                              (if (fx>= (gx#stx-length _tl7621006_) '0)
                                  (let ((_g34820_
                                         (gx#syntax-split-splice
                                          _tl7621006_
                                          '0)))
                                    (begin
                                      (let ((_g34821_ (values-count _g34820_)))
                                        (if (not (fx= _g34821_ 2))
                                            (error "Context expects 2 values"
                                                   _g34821_)))
                                      (let ((_target7721039_
                                             (values-ref _g34820_ 0))
                                            (_tl7741042_
                                             (values-ref _g34820_ 1)))
                                        (if (gx#stx-null? _tl7741042_)
                                            (letrec ((_loop7751045_
                                                      (lambda (_hd7731049_
                                                               _body7791052_)
                                                        (if (gx#stx-pair?
                                                             _hd7731049_)
                                                            (let ((_e7761055_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd7731049_)))
                      (let ((_lp-hd7771059_ (##car _e7761055_))
                            (_lp-tl7781062_ (##cdr _e7761055_)))
                        (_loop7751045_
                         _lp-tl7781062_
                         (cons _lp-hd7771059_ _body7791052_))))
                    (let ((_body7801065_ (reverse _body7791052_)))
                      ((lambda (_L1069_ _L1071_ _L1072_)
                         (cons (gx#datum->syntax '#f 'syntax-case)
                               (cons _L1071_
                                     (cons '()
                                           (cons (cons _L1072_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let-values)
                           (cons '()
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g10951098_ _g10961101_)
                                            (cons _g10951098_ _g10961101_))
                                          '()
                                          _L1069_))))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                       _body7801065_
                       _hd7701033_
                       _hd7671023_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop7751045_
                                               _target7721039_
                                               '()))
                                            (_g735982_ _g737986_)))))
                                  (_g735982_ _g737986_))
                              (_g735982_ _g737986_))
                          (_g735982_ _g737986_))
                      (_g735982_ _g737986_))))
              (_g735982_ _g737986_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g735982_ _g737986_))))
                                      (_g735982_ _g737986_))))
                              (_g735982_ _g737986_))))
                      (_g735982_ _g737986_))))
               (_g7331186_
                (lambda (_g7371108_)
                  (if (gx#stx-pair? _g7371108_)
                      (let ((_e7391111_ (gx#syntax-e _g7371108_)))
                        (let ((_hd7401115_ (##car _e7391111_))
                              (_tl7411118_ (##cdr _e7391111_)))
                          (if (gx#stx-pair? _tl7411118_)
                              (let ((_e7421121_ (gx#syntax-e _tl7411118_)))
                                (let ((_hd7431125_ (##car _e7421121_))
                                      (_tl7441128_ (##cdr _e7421121_)))
                                  (if (gx#stx-null? _hd7431125_)
                                      (if (gx#stx-pair/null? _tl7441128_)
                                          (if (fx>= (gx#stx-length _tl7441128_)
                                                    '0)
                                              (let ((_g34822_
                                                     (gx#syntax-split-splice
                                                      _tl7441128_
                                                      '0)))
                                                (begin
                                                  (let ((_g34823_
                                                         (values-count
                                                          _g34822_)))
                                                    (if (not (fx= _g34823_ 2))
                                                        (error "Context expects 2 values"
                                                               _g34823_)))
                                                  (let ((_target7451131_
                                                         (values-ref
                                                          _g34822_
                                                          0))
                                                        (_tl7471134_
                                                         (values-ref
                                                          _g34822_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl7471134_)
                                                        (letrec ((_loop7481137_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd7461141_ _body7521144_)
                            (if (gx#stx-pair? _hd7461141_)
                                (let ((_e7491147_ (gx#syntax-e _hd7461141_)))
                                  (let ((_lp-hd7501151_ (##car _e7491147_))
                                        (_lp-tl7511154_ (##cdr _e7491147_)))
                                    (_loop7481137_
                                     _lp-tl7511154_
                                     (cons _lp-hd7501151_ _body7521144_))))
                                (let ((_body7531157_ (reverse _body7521144_)))
                                  ((lambda (_L1161_)
                                     (cons (gx#datum->syntax '#f 'let-values)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g11771180_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g11781183_)
                    (cons _g11771180_ _g11781183_))
                  '()
                  _L1161_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body7531157_))))))
                  (_loop7481137_ _target7451131_ '()))
                (_g7341104_ _g7371108_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g7341104_ _g7371108_))
                                          (_g7341104_ _g7371108_))
                                      (_g7341104_ _g7371108_))))
                              (_g7341104_ _g7371108_))))
                      (_g7341104_ _g7371108_)))))
          (_g7331186_ _stx731_))))
    (define |gerbil/core$<syntax-sugar>[:0:]#with-syntax*|
      (lambda (_stx1194_)
        (let* ((_g11991276_
                (lambda (_g12001272_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g12001272_)))
               (_g11981377_
                (lambda (_g12001280_)
                  (if (gx#stx-pair? _g12001280_)
                      (let ((_e12531283_ (gx#syntax-e _g12001280_)))
                        (let ((_hd12541287_ (##car _e12531283_))
                              (_tl12551290_ (##cdr _e12531283_)))
                          (if (gx#stx-pair? _tl12551290_)
                              (let ((_e12561293_ (gx#syntax-e _tl12551290_)))
                                (let ((_hd12571297_ (##car _e12561293_))
                                      (_tl12581300_ (##cdr _e12561293_)))
                                  (if (gx#stx-pair? _hd12571297_)
                                      (let ((_e12591303_
                                             (gx#syntax-e _hd12571297_)))
                                        (let ((_hd12601307_
                                               (##car _e12591303_))
                                              (_tl12611310_
                                               (##cdr _e12591303_)))
                                          (if (gx#stx-pair/null? _tl12581300_)
                                              (if (fx>= (gx#stx-length
                                                         _tl12581300_)
                                                        '0)
                                                  (let ((_g34824_
                                                         (gx#syntax-split-splice
                                                          _tl12581300_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34825_
                                                             (values-count
                                                              _g34824_)))
                                                        (if (not (fx= _g34825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34825_)))
              (let ((_target12621313_ (values-ref _g34824_ 0))
                    (_tl12641316_ (values-ref _g34824_ 1)))
                (if (gx#stx-null? _tl12641316_)
                    (letrec ((_loop12651319_
                              (lambda (_hd12631323_ _body12691326_)
                                (if (gx#stx-pair? _hd12631323_)
                                    (let ((_e12661329_
                                           (gx#syntax-e _hd12631323_)))
                                      (let ((_lp-hd12671333_
                                             (##car _e12661329_))
                                            (_lp-tl12681336_
                                             (##cdr _e12661329_)))
                                        (_loop12651319_
                                         _lp-tl12681336_
                                         (cons _lp-hd12671333_
                                               _body12691326_))))
                                    (let ((_body12701339_
                                           (reverse _body12691326_)))
                                      ((lambda (_L1343_
                                                _L1345_
                                                _L1346_
                                                _L1347_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'with-syntax)
                                               (cons (cons _L1346_ '())
                                                     (cons (cons _L1347_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L1345_
                               (begin
                                 '#!void
                                 (foldr (lambda (_g13681371_ _g13691374_)
                                          (cons _g13681371_ _g13691374_))
                                        '()
                                        _L1343_))))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _body12701339_
                                       _tl12611310_
                                       _hd12601307_
                                       _hd12541287_))))))
                      (_loop12651319_ _target12621313_ '()))
                    (_g11991276_ _g12001280_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g11991276_ _g12001280_))
                                              (_g11991276_ _g12001280_))))
                                      (_g11991276_ _g12001280_))))
                              (_g11991276_ _g12001280_))))
                      (_g11991276_ _g12001280_))))
               (_g11971515_
                (lambda (_g12001381_)
                  (if (gx#stx-pair? _g12001381_)
                      (let ((_e12221384_ (gx#syntax-e _g12001381_)))
                        (let ((_hd12231388_ (##car _e12221384_))
                              (_tl12241391_ (##cdr _e12221384_)))
                          (if (gx#stx-pair? _tl12241391_)
                              (let ((_e12251394_ (gx#syntax-e _tl12241391_)))
                                (let ((_hd12261398_ (##car _e12251394_))
                                      (_tl12271401_ (##cdr _e12251394_)))
                                  (if (gx#stx-pair? _hd12261398_)
                                      (let ((_e12281404_
                                             (gx#syntax-e _hd12261398_)))
                                        (let ((_hd12291408_
                                               (##car _e12281404_))
                                              (_tl12301411_
                                               (##cdr _e12281404_)))
                                          (if (gx#stx-pair? _hd12291408_)
                                              (let ((_e12311414_
                                                     (gx#syntax-e
                                                      _hd12291408_)))
                                                (let ((_hd12321418_
                                                       (##car _e12311414_))
                                                      (_tl12331421_
                                                       (##cdr _e12311414_)))
                                                  (if (gx#stx-pair?
                                                       _hd12321418_)
                                                      (let ((_e12341424_
                                                             (gx#syntax-e
                                                              _hd12321418_)))
                                                        (let ((_hd12351428_
                                                               (##car _e12341424_))
                                                              (_tl12361431_
                                                               (##cdr _e12341424_)))
                                                          (if (gx#identifier?
                                                               _hd12351428_)
                                                              (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gerbil/core$<syntax-sugar>[1]#_g34826_|
                           _hd12351428_)
                          (if (gx#stx-pair? _tl12331421_)
                              (let ((_e12371434_ (gx#syntax-e _tl12331421_)))
                                (let ((_hd12381438_ (##car _e12371434_))
                                      (_tl12391441_ (##cdr _e12371434_)))
                                  (if (gx#stx-null? _tl12391441_)
                                      (if (gx#stx-pair/null? _tl12271401_)
                                          (if (fx>= (gx#stx-length
                                                     _tl12271401_)
                                                    '0)
                                              (let ((_g34827_
                                                     (gx#syntax-split-splice
                                                      _tl12271401_
                                                      '0)))
                                                (begin
                                                  (let ((_g34828_
                                                         (values-count
                                                          _g34827_)))
                                                    (if (not (fx= _g34828_ 2))
                                                        (error "Context expects 2 values"
                                                               _g34828_)))
                                                  (let ((_target12401444_
                                                         (values-ref
                                                          _g34827_
                                                          0))
                                                        (_tl12421447_
                                                         (values-ref
                                                          _g34827_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl12421447_)
                                                        (letrec ((_loop12431450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd12411454_ _body12471457_)
                            (if (gx#stx-pair? _hd12411454_)
                                (let ((_e12441460_ (gx#syntax-e _hd12411454_)))
                                  (let ((_lp-hd12451464_ (##car _e12441460_))
                                        (_lp-tl12461467_ (##cdr _e12441460_)))
                                    (_loop12431450_
                                     _lp-tl12461467_
                                     (cons _lp-hd12451464_ _body12471457_))))
                                (let ((_body12481470_
                                       (reverse _body12471457_)))
                                  ((lambda (_L1474_
                                            _L1476_
                                            _L1477_
                                            _L1478_
                                            _L1479_)
                                     (cons (gx#datum->syntax '#f 'let-values)
                                           (cons (cons (cons _L1478_
                                                             (cons _L1477_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L1479_
                                                             (cons _L1476_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (begin
                             '#!void
                             (foldr (lambda (_g15061509_ _g15071512_)
                                      (cons _g15061509_ _g15071512_))
                                    '()
                                    _L1474_))))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body12481470_
                                   _tl12301411_
                                   _hd12381438_
                                   _tl12361431_
                                   _hd12231388_))))))
                  (_loop12431450_ _target12401444_ '()))
                (_g11981377_ _g12001381_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g11981377_ _g12001381_))
                                          (_g11981377_ _g12001381_))
                                      (_g11981377_ _g12001381_))))
                              (_g11981377_ _g12001381_))
                          (_g11981377_ _g12001381_))
                      (_g11981377_ _g12001381_))))
              (_g11981377_ _g12001381_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g11981377_ _g12001381_))))
                                      (_g11981377_ _g12001381_))))
                              (_g11981377_ _g12001381_))))
                      (_g11981377_ _g12001381_))))
               (_g11961597_
                (lambda (_g12001519_)
                  (if (gx#stx-pair? _g12001519_)
                      (let ((_e12021522_ (gx#syntax-e _g12001519_)))
                        (let ((_hd12031526_ (##car _e12021522_))
                              (_tl12041529_ (##cdr _e12021522_)))
                          (if (gx#stx-pair? _tl12041529_)
                              (let ((_e12051532_ (gx#syntax-e _tl12041529_)))
                                (let ((_hd12061536_ (##car _e12051532_))
                                      (_tl12071539_ (##cdr _e12051532_)))
                                  (if (gx#stx-null? _hd12061536_)
                                      (if (gx#stx-pair/null? _tl12071539_)
                                          (if (fx>= (gx#stx-length
                                                     _tl12071539_)
                                                    '0)
                                              (let ((_g34829_
                                                     (gx#syntax-split-splice
                                                      _tl12071539_
                                                      '0)))
                                                (begin
                                                  (let ((_g34830_
                                                         (values-count
                                                          _g34829_)))
                                                    (if (not (fx= _g34830_ 2))
                                                        (error "Context expects 2 values"
                                                               _g34830_)))
                                                  (let ((_target12081542_
                                                         (values-ref
                                                          _g34829_
                                                          0))
                                                        (_tl12101545_
                                                         (values-ref
                                                          _g34829_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl12101545_)
                                                        (letrec ((_loop12111548_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd12091552_ _body12151555_)
                            (if (gx#stx-pair? _hd12091552_)
                                (let ((_e12121558_ (gx#syntax-e _hd12091552_)))
                                  (let ((_lp-hd12131562_ (##car _e12121558_))
                                        (_lp-tl12141565_ (##cdr _e12121558_)))
                                    (_loop12111548_
                                     _lp-tl12141565_
                                     (cons _lp-hd12131562_ _body12151555_))))
                                (let ((_body12161568_
                                       (reverse _body12151555_)))
                                  ((lambda (_L1572_)
                                     (cons (gx#datum->syntax '#f 'let-values)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g15881591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g15891594_)
                    (cons _g15881591_ _g15891594_))
                  '()
                  _L1572_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body12161568_))))))
                  (_loop12111548_ _target12081542_ '()))
                (_g11971515_ _g12001519_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g11971515_ _g12001519_))
                                          (_g11971515_ _g12001519_))
                                      (_g11971515_ _g12001519_))))
                              (_g11971515_ _g12001519_))))
                      (_g11971515_ _g12001519_)))))
          (_g11961597_ _stx1194_))))
    (define |gerbil/core$<syntax-sugar>[:0:]#syntax/loc|
      (lambda (_stx1604_)
        (let* ((_g16071625_
                (lambda (_g16081621_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g16081621_)))
               (_g16061680_
                (lambda (_g16081629_)
                  (if (gx#stx-pair? _g16081629_)
                      (let ((_e16111632_ (gx#syntax-e _g16081629_)))
                        (let ((_hd16121636_ (##car _e16111632_))
                              (_tl16131639_ (##cdr _e16111632_)))
                          (if (gx#stx-pair? _tl16131639_)
                              (let ((_e16141642_ (gx#syntax-e _tl16131639_)))
                                (let ((_hd16151646_ (##car _e16141642_))
                                      (_tl16161649_ (##cdr _e16141642_)))
                                  (if (gx#stx-pair? _tl16161649_)
                                      (let ((_e16171652_
                                             (gx#syntax-e _tl16161649_)))
                                        (let ((_hd16181656_
                                               (##car _e16171652_))
                                              (_tl16191659_
                                               (##cdr _e16171652_)))
                                          (if (gx#stx-null? _tl16191659_)
                                              ((lambda (_L1662_ _L1664_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-wrap-source)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax)
                           (cons _L1662_ '()))
                     (cons (cons (gx#datum->syntax '#f 'stx-source)
                                 (cons _L1664_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd16181656_
                                               _hd16151646_)
                                              (_g16071625_ _g16081629_))))
                                      (_g16071625_ _g16081629_))))
                              (_g16071625_ _g16081629_))))
                      (_g16071625_ _g16081629_)))))
          (_g16061680_ _stx1604_))))))
