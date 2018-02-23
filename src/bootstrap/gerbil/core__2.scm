(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<syntax-sugar>[1]#_g31517_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<syntax-sugar>[:0:]#syntax-rules|
      (lambda (_stx339_)
        (let* ((_g342366_
                (lambda (_g343362_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g343362_)))
               (_g341671_
                (lambda (_g343370_)
                  (if (gx#stx-pair? _g343370_)
                      (let ((_e346373_ (gx#syntax-e _g343370_)))
                        (let ((_hd347377_ (##car _e346373_))
                              (_tl348380_ (##cdr _e346373_)))
                          (if (gx#stx-pair? _tl348380_)
                              (let ((_e349383_ (gx#syntax-e _tl348380_)))
                                (let ((_hd350387_ (##car _e349383_))
                                      (_tl351390_ (##cdr _e349383_)))
                                  (if (gx#stx-pair/null? _tl351390_)
                                      (if (fx>= (gx#stx-length _tl351390_) '0)
                                          (let ((_g31503_
                                                 (gx#syntax-split-splice
                                                  _tl351390_
                                                  '0)))
                                            (begin
                                              (let ((_g31504_
                                                     (values-count _g31503_)))
                                                (if (not (fx= _g31504_ 2))
                                                    (error "Context expects 2 values"
                                                           _g31504_)))
                                              (let ((_target352393_
                                                     (values-ref _g31503_ 0))
                                                    (_tl354396_
                                                     (values-ref _g31503_ 1)))
                                                (if (gx#stx-null? _tl354396_)
                                                    (letrec ((_loop355399_
                                                              (lambda (_hd353403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clauses359406_)
                        (if (gx#stx-pair? _hd353403_)
                            (let ((_e356409_ (gx#syntax-e _hd353403_)))
                              (let ((_lp-hd357413_ (##car _e356409_))
                                    (_lp-tl358416_ (##cdr _e356409_)))
                                (_loop355399_
                                 _lp-tl358416_
                                 (cons _lp-hd357413_ _clauses359406_))))
                            (let ((_clauses360419_ (reverse _clauses359406_)))
                              ((lambda (_L423_ _L425_)
                                 (if (gx#identifier-list? _L425_)
                                     (let* ((_body588_
                                             (gx#stx-map
                                              (lambda (_clause445_)
                                                (let* ((_g449476_
                                                        (lambda (_g450472_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g450472_)))
                                                       (_g448534_
                                                        (lambda (_g450480_)
                                                          (if (gx#stx-pair?
                                                               _g450480_)
                                                              (let ((_e462483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g450480_)))
                        (let ((_hd463487_ (##car _e462483_))
                              (_tl464490_ (##cdr _e462483_)))
                          (if (gx#stx-pair? _tl464490_)
                              (let ((_e465493_ (gx#syntax-e _tl464490_)))
                                (let ((_hd466497_ (##car _e465493_))
                                      (_tl467500_ (##cdr _e465493_)))
                                  (if (gx#stx-pair? _tl467500_)
                                      (let ((_e468503_
                                             (gx#syntax-e _tl467500_)))
                                        (let ((_hd469507_ (##car _e468503_))
                                              (_tl470510_ (##cdr _e468503_)))
                                          (if (gx#stx-null? _tl470510_)
                                              ((lambda (_L513_ _L515_ _L516_)
                                                 (cons _L516_
                                                       (cons _L515_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'syntax)
                                 (cons _L513_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd469507_
                                               _hd466497_
                                               _hd463487_)
                                              (_g449476_ _g450480_))))
                                      (_g449476_ _g450480_))))
                              (_g449476_ _g450480_))))
                      (_g449476_ _g450480_))))
               (_g447576_
                (lambda (_g450538_)
                  (if (gx#stx-pair? _g450538_)
                      (let ((_e453541_ (gx#syntax-e _g450538_)))
                        (let ((_hd454545_ (##car _e453541_))
                              (_tl455548_ (##cdr _e453541_)))
                          (if (gx#stx-pair? _tl455548_)
                              (let ((_e456551_ (gx#syntax-e _tl455548_)))
                                (let ((_hd457555_ (##car _e456551_))
                                      (_tl458558_ (##cdr _e456551_)))
                                  (if (gx#stx-null? _tl458558_)
                                      ((lambda (_L561_ _L563_)
                                         (cons _L563_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'syntax)
                                                           (cons _L561_ '()))
                                                     '())))
                                       _hd457555_
                                       _hd454545_)
                                      (_g448534_ _g450538_))))
                              (_g448534_ _g450538_))))
                      (_g448534_ _g450538_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g447576_ _clause445_)))
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g579582_
                                                                _g580585_)
                                                         (cons _g579582_
                                                               _g580585_))
                                                       '()
                                                       _L423_))))
                                            (_g591608_
                                             (lambda (_g592604_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g592604_)))
                                            (_g590667_
                                             (lambda (_g592612_)
                                               (if (gx#stx-pair/null?
                                                    _g592612_)
                                                   (if (fx>= (gx#stx-length
                                                              _g592612_)
                                                             '0)
                                                       (let ((_g31505_
                                                              (gx#syntax-split-splice
                                                               _g592612_
                                                               '0)))
                                                         (begin
                                                           (let ((_g31506_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g31505_)))
                     (if (not (fx= _g31506_ 2))
                         (error "Context expects 2 values" _g31506_)))
                   (let ((_target594615_ (values-ref _g31505_ 0))
                         (_tl596618_ (values-ref _g31505_ 1)))
                     (if (gx#stx-null? _tl596618_)
                         (letrec ((_loop597621_
                                   (lambda (_hd595625_ _clause601628_)
                                     (if (gx#stx-pair? _hd595625_)
                                         (let ((_e598631_
                                                (gx#syntax-e _hd595625_)))
                                           (let ((_lp-hd599635_
                                                  (##car _e598631_))
                                                 (_lp-tl600638_
                                                  (##cdr _e598631_)))
                                             (_loop597621_
                                              _lp-tl600638_
                                              (cons _lp-hd599635_
                                                    _clause601628_))))
                                         (let ((_clause602641_
                                                (reverse _clause601628_)))
                                           ((lambda (_L645_)
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
                                    (cons _L425_
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g658661_
                                                            _g659664_)
                                                     (cons _g658661_
                                                           _g659664_))
                                                   '()
                                                   _L645_)))))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _clause602641_))))))
                           (_loop597621_ _target594615_ '()))
                         (_g591608_ _g592612_)))))
               (_g591608_ _g592612_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g591608_ _g592612_)))))
                                       (_g590667_ _body588_))
                                     (_g342366_ _g343370_)))
                               _clauses360419_
                               _hd350387_))))))
              (_loop355399_ _target352393_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g342366_ _g343370_)))))
                                          (_g342366_ _g343370_))
                                      (_g342366_ _g343370_))))
                              (_g342366_ _g343370_))))
                      (_g342366_ _g343370_)))))
          (_g341671_ _stx339_))))
    (define |gerbil/core$<syntax-sugar>[:0:]#with-syntax|
      (lambda (_stx677_)
        (let* ((_g682767_
                (lambda (_g683763_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g683763_)))
               (_g681928_
                (lambda (_g683771_)
                  (if (gx#stx-pair? _g683771_)
                      (let ((_e730774_ (gx#syntax-e _g683771_)))
                        (let ((_hd731778_ (##car _e730774_))
                              (_tl732781_ (##cdr _e730774_)))
                          (if (gx#stx-pair? _tl732781_)
                              (let ((_e733784_ (gx#syntax-e _tl732781_)))
                                (let ((_hd734788_ (##car _e733784_))
                                      (_tl735791_ (##cdr _e733784_)))
                                  (if (gx#stx-pair/null? _hd734788_)
                                      (if (fx>= (gx#stx-length _hd734788_) '0)
                                          (let ((_g31507_
                                                 (gx#syntax-split-splice
                                                  _hd734788_
                                                  '0)))
                                            (begin
                                              (let ((_g31508_
                                                     (values-count _g31507_)))
                                                (if (not (fx= _g31508_ 2))
                                                    (error "Context expects 2 values"
                                                           _g31508_)))
                                              (let ((_target736794_
                                                     (values-ref _g31507_ 0))
                                                    (_tl738797_
                                                     (values-ref _g31507_ 1)))
                                                (if (gx#stx-null? _tl738797_)
                                                    (letrec ((_loop739800_
                                                              (lambda (_hd737804_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _e743807_
                               _pat744809_)
                        (if (gx#stx-pair? _hd737804_)
                            (let ((_e740812_ (gx#syntax-e _hd737804_)))
                              (let ((_lp-hd741816_ (##car _e740812_))
                                    (_lp-tl742819_ (##cdr _e740812_)))
                                (if (gx#stx-pair? _lp-hd741816_)
                                    (let ((_e747822_
                                           (gx#syntax-e _lp-hd741816_)))
                                      (let ((_hd748826_ (##car _e747822_))
                                            (_tl749829_ (##cdr _e747822_)))
                                        (if (gx#stx-pair? _tl749829_)
                                            (let ((_e750832_
                                                   (gx#syntax-e _tl749829_)))
                                              (let ((_hd751836_
                                                     (##car _e750832_))
                                                    (_tl752839_
                                                     (##cdr _e750832_)))
                                                (if (gx#stx-null? _tl752839_)
                                                    (_loop739800_
                                                     _lp-tl742819_
                                                     (cons _hd751836_
                                                           _e743807_)
                                                     (cons _hd748826_
                                                           _pat744809_))
                                                    (_g682767_ _g683771_))))
                                            (_g682767_ _g683771_))))
                                    (_g682767_ _g683771_))))
                            (let ((_e745842_ (reverse _e743807_))
                                  (_pat746845_ (reverse _pat744809_)))
                              (if (gx#stx-pair/null? _tl735791_)
                                  (if (fx>= (gx#stx-length _tl735791_) '0)
                                      (let ((_g31509_
                                             (gx#syntax-split-splice
                                              _tl735791_
                                              '0)))
                                        (begin
                                          (let ((_g31510_
                                                 (values-count _g31509_)))
                                            (if (not (fx= _g31510_ 2))
                                                (error "Context expects 2 values"
                                                       _g31510_)))
                                          (let ((_target753848_
                                                 (values-ref _g31509_ 0))
                                                (_tl755851_
                                                 (values-ref _g31509_ 1)))
                                            (if (gx#stx-null? _tl755851_)
                                                (letrec ((_loop756854_
                                                          (lambda (_hd754858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body760861_)
                    (if (gx#stx-pair? _hd754858_)
                        (let ((_e757864_ (gx#syntax-e _hd754858_)))
                          (let ((_lp-hd758868_ (##car _e757864_))
                                (_lp-tl759871_ (##cdr _e757864_)))
                            (_loop756854_
                             _lp-tl759871_
                             (cons _lp-hd758868_ _body760861_))))
                        (let ((_body761874_ (reverse _body760861_)))
                          ((lambda (_L878_ _L880_ _L881_)
                             (cons (gx#datum->syntax '#f 'syntax-case)
                                   (cons (cons (gx#datum->syntax '#f 'list)
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g903910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g904913_)
                  (cons _g903910_ _g904913_))
                '()
                _L880_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons '()
                                               (cons (cons (begin
                                                             '#!void
                                                             (foldr (lambda (_g905916_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g906919_)
                              (cons _g905916_ _g906919_))
                            '()
                            _L881_))
                   (cons (cons (gx#datum->syntax '#f 'let-values)
                               (cons '()
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g907922_ _g908925_)
                                                (cons _g907922_ _g908925_))
                                              '()
                                              _L878_))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _body761874_
                           _e745842_
                           _pat746845_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop756854_
                                                   _target753848_
                                                   '()))
                                                (_g682767_ _g683771_)))))
                                      (_g682767_ _g683771_))
                                  (_g682767_ _g683771_)))))))
              (_loop739800_ _target736794_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g682767_ _g683771_)))))
                                          (_g682767_ _g683771_))
                                      (_g682767_ _g683771_))))
                              (_g682767_ _g683771_))))
                      (_g682767_ _g683771_))))
               (_g6801050_
                (lambda (_g683932_)
                  (if (gx#stx-pair? _g683932_)
                      (let ((_e703935_ (gx#syntax-e _g683932_)))
                        (let ((_hd704939_ (##car _e703935_))
                              (_tl705942_ (##cdr _e703935_)))
                          (if (gx#stx-pair? _tl705942_)
                              (let ((_e706945_ (gx#syntax-e _tl705942_)))
                                (let ((_hd707949_ (##car _e706945_))
                                      (_tl708952_ (##cdr _e706945_)))
                                  (if (gx#stx-pair? _hd707949_)
                                      (let ((_e709955_
                                             (gx#syntax-e _hd707949_)))
                                        (let ((_hd710959_ (##car _e709955_))
                                              (_tl711962_ (##cdr _e709955_)))
                                          (if (gx#stx-pair? _hd710959_)
                                              (let ((_e712965_
                                                     (gx#syntax-e _hd710959_)))
                                                (let ((_hd713969_
                                                       (##car _e712965_))
                                                      (_tl714972_
                                                       (##cdr _e712965_)))
                                                  (if (gx#stx-pair? _tl714972_)
                                                      (let ((_e715975_
                                                             (gx#syntax-e
                                                              _tl714972_)))
                                                        (let ((_hd716979_
                                                               (##car _e715975_))
                                                              (_tl717982_
                                                               (##cdr _e715975_)))
                                                          (if (gx#stx-null?
                                                               _tl717982_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl711962_)
                          (if (gx#stx-pair/null? _tl708952_)
                              (if (fx>= (gx#stx-length _tl708952_) '0)
                                  (let ((_g31511_
                                         (gx#syntax-split-splice
                                          _tl708952_
                                          '0)))
                                    (begin
                                      (let ((_g31512_ (values-count _g31511_)))
                                        (if (not (fx= _g31512_ 2))
                                            (error "Context expects 2 values"
                                                   _g31512_)))
                                      (let ((_target718985_
                                             (values-ref _g31511_ 0))
                                            (_tl720988_
                                             (values-ref _g31511_ 1)))
                                        (if (gx#stx-null? _tl720988_)
                                            (letrec ((_loop721991_
                                                      (lambda (_hd719995_
                                                               _body725998_)
                                                        (if (gx#stx-pair?
                                                             _hd719995_)
                                                            (let ((_e7221001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd719995_)))
                      (let ((_lp-hd7231005_ (##car _e7221001_))
                            (_lp-tl7241008_ (##cdr _e7221001_)))
                        (_loop721991_
                         _lp-tl7241008_
                         (cons _lp-hd7231005_ _body725998_))))
                    (let ((_body7261011_ (reverse _body725998_)))
                      ((lambda (_L1015_ _L1017_ _L1018_)
                         (cons (gx#datum->syntax '#f 'syntax-case)
                               (cons _L1017_
                                     (cons '()
                                           (cons (cons _L1018_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let-values)
                           (cons '()
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g10411044_ _g10421047_)
                                            (cons _g10411044_ _g10421047_))
                                          '()
                                          _L1015_))))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                       _body7261011_
                       _hd716979_
                       _hd713969_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop721991_
                                               _target718985_
                                               '()))
                                            (_g681928_ _g683932_)))))
                                  (_g681928_ _g683932_))
                              (_g681928_ _g683932_))
                          (_g681928_ _g683932_))
                      (_g681928_ _g683932_))))
              (_g681928_ _g683932_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g681928_ _g683932_))))
                                      (_g681928_ _g683932_))))
                              (_g681928_ _g683932_))))
                      (_g681928_ _g683932_))))
               (_g6791132_
                (lambda (_g6831054_)
                  (if (gx#stx-pair? _g6831054_)
                      (let ((_e6851057_ (gx#syntax-e _g6831054_)))
                        (let ((_hd6861061_ (##car _e6851057_))
                              (_tl6871064_ (##cdr _e6851057_)))
                          (if (gx#stx-pair? _tl6871064_)
                              (let ((_e6881067_ (gx#syntax-e _tl6871064_)))
                                (let ((_hd6891071_ (##car _e6881067_))
                                      (_tl6901074_ (##cdr _e6881067_)))
                                  (if (gx#stx-null? _hd6891071_)
                                      (if (gx#stx-pair/null? _tl6901074_)
                                          (if (fx>= (gx#stx-length _tl6901074_)
                                                    '0)
                                              (let ((_g31513_
                                                     (gx#syntax-split-splice
                                                      _tl6901074_
                                                      '0)))
                                                (begin
                                                  (let ((_g31514_
                                                         (values-count
                                                          _g31513_)))
                                                    (if (not (fx= _g31514_ 2))
                                                        (error "Context expects 2 values"
                                                               _g31514_)))
                                                  (let ((_target6911077_
                                                         (values-ref
                                                          _g31513_
                                                          0))
                                                        (_tl6931080_
                                                         (values-ref
                                                          _g31513_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl6931080_)
                                                        (letrec ((_loop6941083_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd6921087_ _body6981090_)
                            (if (gx#stx-pair? _hd6921087_)
                                (let ((_e6951093_ (gx#syntax-e _hd6921087_)))
                                  (let ((_lp-hd6961097_ (##car _e6951093_))
                                        (_lp-tl6971100_ (##cdr _e6951093_)))
                                    (_loop6941083_
                                     _lp-tl6971100_
                                     (cons _lp-hd6961097_ _body6981090_))))
                                (let ((_body6991103_ (reverse _body6981090_)))
                                  ((lambda (_L1107_)
                                     (cons (gx#datum->syntax '#f 'let-values)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g11231126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g11241129_)
                    (cons _g11231126_ _g11241129_))
                  '()
                  _L1107_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body6991103_))))))
                  (_loop6941083_ _target6911077_ '()))
                (_g6801050_ _g6831054_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g6801050_ _g6831054_))
                                          (_g6801050_ _g6831054_))
                                      (_g6801050_ _g6831054_))))
                              (_g6801050_ _g6831054_))))
                      (_g6801050_ _g6831054_)))))
          (_g6791132_ _stx677_))))
    (define |gerbil/core$<syntax-sugar>[:0:]#with-syntax*|
      (lambda (_stx1140_)
        (let* ((_g11451222_
                (lambda (_g11461218_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g11461218_)))
               (_g11441323_
                (lambda (_g11461226_)
                  (if (gx#stx-pair? _g11461226_)
                      (let ((_e11991229_ (gx#syntax-e _g11461226_)))
                        (let ((_hd12001233_ (##car _e11991229_))
                              (_tl12011236_ (##cdr _e11991229_)))
                          (if (gx#stx-pair? _tl12011236_)
                              (let ((_e12021239_ (gx#syntax-e _tl12011236_)))
                                (let ((_hd12031243_ (##car _e12021239_))
                                      (_tl12041246_ (##cdr _e12021239_)))
                                  (if (gx#stx-pair? _hd12031243_)
                                      (let ((_e12051249_
                                             (gx#syntax-e _hd12031243_)))
                                        (let ((_hd12061253_
                                               (##car _e12051249_))
                                              (_tl12071256_
                                               (##cdr _e12051249_)))
                                          (if (gx#stx-pair/null? _tl12041246_)
                                              (if (fx>= (gx#stx-length
                                                         _tl12041246_)
                                                        '0)
                                                  (let ((_g31515_
                                                         (gx#syntax-split-splice
                                                          _tl12041246_
                                                          '0)))
                                                    (begin
                                                      (let ((_g31516_
                                                             (values-count
                                                              _g31515_)))
                                                        (if (not (fx= _g31516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g31516_)))
              (let ((_target12081259_ (values-ref _g31515_ 0))
                    (_tl12101262_ (values-ref _g31515_ 1)))
                (if (gx#stx-null? _tl12101262_)
                    (letrec ((_loop12111265_
                              (lambda (_hd12091269_ _body12151272_)
                                (if (gx#stx-pair? _hd12091269_)
                                    (let ((_e12121275_
                                           (gx#syntax-e _hd12091269_)))
                                      (let ((_lp-hd12131279_
                                             (##car _e12121275_))
                                            (_lp-tl12141282_
                                             (##cdr _e12121275_)))
                                        (_loop12111265_
                                         _lp-tl12141282_
                                         (cons _lp-hd12131279_
                                               _body12151272_))))
                                    (let ((_body12161285_
                                           (reverse _body12151272_)))
                                      ((lambda (_L1289_
                                                _L1291_
                                                _L1292_
                                                _L1293_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'with-syntax)
                                               (cons (cons _L1292_ '())
                                                     (cons (cons _L1293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L1291_
                               (begin
                                 '#!void
                                 (foldr (lambda (_g13141317_ _g13151320_)
                                          (cons _g13141317_ _g13151320_))
                                        '()
                                        _L1289_))))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _body12161285_
                                       _tl12071256_
                                       _hd12061253_
                                       _hd12001233_))))))
                      (_loop12111265_ _target12081259_ '()))
                    (_g11451222_ _g11461226_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g11451222_ _g11461226_))
                                              (_g11451222_ _g11461226_))))
                                      (_g11451222_ _g11461226_))))
                              (_g11451222_ _g11461226_))))
                      (_g11451222_ _g11461226_))))
               (_g11431461_
                (lambda (_g11461327_)
                  (if (gx#stx-pair? _g11461327_)
                      (let ((_e11681330_ (gx#syntax-e _g11461327_)))
                        (let ((_hd11691334_ (##car _e11681330_))
                              (_tl11701337_ (##cdr _e11681330_)))
                          (if (gx#stx-pair? _tl11701337_)
                              (let ((_e11711340_ (gx#syntax-e _tl11701337_)))
                                (let ((_hd11721344_ (##car _e11711340_))
                                      (_tl11731347_ (##cdr _e11711340_)))
                                  (if (gx#stx-pair? _hd11721344_)
                                      (let ((_e11741350_
                                             (gx#syntax-e _hd11721344_)))
                                        (let ((_hd11751354_
                                               (##car _e11741350_))
                                              (_tl11761357_
                                               (##cdr _e11741350_)))
                                          (if (gx#stx-pair? _hd11751354_)
                                              (let ((_e11771360_
                                                     (gx#syntax-e
                                                      _hd11751354_)))
                                                (let ((_hd11781364_
                                                       (##car _e11771360_))
                                                      (_tl11791367_
                                                       (##cdr _e11771360_)))
                                                  (if (gx#stx-pair?
                                                       _hd11781364_)
                                                      (let ((_e11801370_
                                                             (gx#syntax-e
                                                              _hd11781364_)))
                                                        (let ((_hd11811374_
                                                               (##car _e11801370_))
                                                              (_tl11821377_
                                                               (##cdr _e11801370_)))
                                                          (if (gx#identifier?
                                                               _hd11811374_)
                                                              (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gerbil/core$<syntax-sugar>[1]#_g31517_|
                           _hd11811374_)
                          (if (gx#stx-pair? _tl11791367_)
                              (let ((_e11831380_ (gx#syntax-e _tl11791367_)))
                                (let ((_hd11841384_ (##car _e11831380_))
                                      (_tl11851387_ (##cdr _e11831380_)))
                                  (if (gx#stx-null? _tl11851387_)
                                      (if (gx#stx-pair/null? _tl11731347_)
                                          (if (fx>= (gx#stx-length
                                                     _tl11731347_)
                                                    '0)
                                              (let ((_g31518_
                                                     (gx#syntax-split-splice
                                                      _tl11731347_
                                                      '0)))
                                                (begin
                                                  (let ((_g31519_
                                                         (values-count
                                                          _g31518_)))
                                                    (if (not (fx= _g31519_ 2))
                                                        (error "Context expects 2 values"
                                                               _g31519_)))
                                                  (let ((_target11861390_
                                                         (values-ref
                                                          _g31518_
                                                          0))
                                                        (_tl11881393_
                                                         (values-ref
                                                          _g31518_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl11881393_)
                                                        (letrec ((_loop11891396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd11871400_ _body11931403_)
                            (if (gx#stx-pair? _hd11871400_)
                                (let ((_e11901406_ (gx#syntax-e _hd11871400_)))
                                  (let ((_lp-hd11911410_ (##car _e11901406_))
                                        (_lp-tl11921413_ (##cdr _e11901406_)))
                                    (_loop11891396_
                                     _lp-tl11921413_
                                     (cons _lp-hd11911410_ _body11931403_))))
                                (let ((_body11941416_
                                       (reverse _body11931403_)))
                                  ((lambda (_L1420_
                                            _L1422_
                                            _L1423_
                                            _L1424_
                                            _L1425_)
                                     (cons (gx#datum->syntax '#f 'let-values)
                                           (cons (cons (cons _L1424_
                                                             (cons _L1423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L1425_
                                                             (cons _L1422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (begin
                             '#!void
                             (foldr (lambda (_g14521455_ _g14531458_)
                                      (cons _g14521455_ _g14531458_))
                                    '()
                                    _L1420_))))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body11941416_
                                   _tl11761357_
                                   _hd11841384_
                                   _tl11821377_
                                   _hd11691334_))))))
                  (_loop11891396_ _target11861390_ '()))
                (_g11441323_ _g11461327_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g11441323_ _g11461327_))
                                          (_g11441323_ _g11461327_))
                                      (_g11441323_ _g11461327_))))
                              (_g11441323_ _g11461327_))
                          (_g11441323_ _g11461327_))
                      (_g11441323_ _g11461327_))))
              (_g11441323_ _g11461327_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g11441323_ _g11461327_))))
                                      (_g11441323_ _g11461327_))))
                              (_g11441323_ _g11461327_))))
                      (_g11441323_ _g11461327_))))
               (_g11421543_
                (lambda (_g11461465_)
                  (if (gx#stx-pair? _g11461465_)
                      (let ((_e11481468_ (gx#syntax-e _g11461465_)))
                        (let ((_hd11491472_ (##car _e11481468_))
                              (_tl11501475_ (##cdr _e11481468_)))
                          (if (gx#stx-pair? _tl11501475_)
                              (let ((_e11511478_ (gx#syntax-e _tl11501475_)))
                                (let ((_hd11521482_ (##car _e11511478_))
                                      (_tl11531485_ (##cdr _e11511478_)))
                                  (if (gx#stx-null? _hd11521482_)
                                      (if (gx#stx-pair/null? _tl11531485_)
                                          (if (fx>= (gx#stx-length
                                                     _tl11531485_)
                                                    '0)
                                              (let ((_g31520_
                                                     (gx#syntax-split-splice
                                                      _tl11531485_
                                                      '0)))
                                                (begin
                                                  (let ((_g31521_
                                                         (values-count
                                                          _g31520_)))
                                                    (if (not (fx= _g31521_ 2))
                                                        (error "Context expects 2 values"
                                                               _g31521_)))
                                                  (let ((_target11541488_
                                                         (values-ref
                                                          _g31520_
                                                          0))
                                                        (_tl11561491_
                                                         (values-ref
                                                          _g31520_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl11561491_)
                                                        (letrec ((_loop11571494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd11551498_ _body11611501_)
                            (if (gx#stx-pair? _hd11551498_)
                                (let ((_e11581504_ (gx#syntax-e _hd11551498_)))
                                  (let ((_lp-hd11591508_ (##car _e11581504_))
                                        (_lp-tl11601511_ (##cdr _e11581504_)))
                                    (_loop11571494_
                                     _lp-tl11601511_
                                     (cons _lp-hd11591508_ _body11611501_))))
                                (let ((_body11621514_
                                       (reverse _body11611501_)))
                                  ((lambda (_L1518_)
                                     (cons (gx#datum->syntax '#f 'let-values)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g15341537_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g15351540_)
                    (cons _g15341537_ _g15351540_))
                  '()
                  _L1518_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body11621514_))))))
                  (_loop11571494_ _target11541488_ '()))
                (_g11431461_ _g11461465_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g11431461_ _g11461465_))
                                          (_g11431461_ _g11461465_))
                                      (_g11431461_ _g11461465_))))
                              (_g11431461_ _g11461465_))))
                      (_g11431461_ _g11461465_)))))
          (_g11421543_ _stx1140_))))
    (define |gerbil/core$<syntax-sugar>[:0:]#syntax/loc|
      (lambda (_stx1550_)
        (let* ((_g15531571_
                (lambda (_g15541567_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g15541567_)))
               (_g15521626_
                (lambda (_g15541575_)
                  (if (gx#stx-pair? _g15541575_)
                      (let ((_e15571578_ (gx#syntax-e _g15541575_)))
                        (let ((_hd15581582_ (##car _e15571578_))
                              (_tl15591585_ (##cdr _e15571578_)))
                          (if (gx#stx-pair? _tl15591585_)
                              (let ((_e15601588_ (gx#syntax-e _tl15591585_)))
                                (let ((_hd15611592_ (##car _e15601588_))
                                      (_tl15621595_ (##cdr _e15601588_)))
                                  (if (gx#stx-pair? _tl15621595_)
                                      (let ((_e15631598_
                                             (gx#syntax-e _tl15621595_)))
                                        (let ((_hd15641602_
                                               (##car _e15631598_))
                                              (_tl15651605_
                                               (##cdr _e15631598_)))
                                          (if (gx#stx-null? _tl15651605_)
                                              ((lambda (_L1608_ _L1610_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-wrap-source)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax)
                           (cons _L1608_ '()))
                     (cons (cons (gx#datum->syntax '#f 'stx-source)
                                 (cons _L1610_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd15641602_
                                               _hd15611592_)
                                              (_g15531571_ _g15541575_))))
                                      (_g15531571_ _g15541575_))))
                              (_g15531571_ _g15541575_))))
                      (_g15531571_ _g15541575_)))))
          (_g15521626_ _stx1550_))))))
