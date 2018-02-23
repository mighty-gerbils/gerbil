(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<sugar>$<sugar:3>[:0:]#defsyntax|
    (lambda (_$stx12890_)
      (let* ((_g1289512934_
              (lambda (_g1289612930_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1289612930_)))
             (_g1289412990_
              (lambda (_g1289612938_)
                (if (gx#stx-pair? _g1289612938_)
                    (let ((_e1292012941_ (gx#syntax-e _g1289612938_)))
                      (let ((_hd1292112945_ (##car _e1292012941_))
                            (_tl1292212948_ (##cdr _e1292012941_)))
                        (if (gx#stx-pair? _tl1292212948_)
                            (let ((_e1292312951_ (gx#syntax-e _tl1292212948_)))
                              (let ((_hd1292412955_ (##car _e1292312951_))
                                    (_tl1292512958_ (##cdr _e1292312951_)))
                                (if (gx#stx-pair? _tl1292512958_)
                                    (let ((_e1292612961_
                                           (gx#syntax-e _tl1292512958_)))
                                      (let ((_hd1292712965_
                                             (##car _e1292612961_))
                                            (_tl1292812968_
                                             (##cdr _e1292612961_)))
                                        (if (gx#stx-null? _tl1292812968_)
                                            ((lambda (_L12971_ _L12973_)
                                               (if (gx#identifier? _L12973_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'define-syntax)
                                                         (cons _L12973_
                                                               (cons _L12971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1289512934_
                                                    _g1289612938_)))
                                             _hd1292712965_
                                             _hd1292412955_)
                                            (_g1289512934_ _g1289612938_))))
                                    (_g1289512934_ _g1289612938_))))
                            (_g1289512934_ _g1289612938_))))
                    (_g1289512934_ _g1289612938_))))
             (_g1289313088_
              (lambda (_g1289612994_)
                (if (gx#stx-pair? _g1289612994_)
                    (let ((_e1290012997_ (gx#syntax-e _g1289612994_)))
                      (let ((_hd1290113001_ (##car _e1290012997_))
                            (_tl1290213004_ (##cdr _e1290012997_)))
                        (if (gx#stx-pair? _tl1290213004_)
                            (let ((_e1290313007_ (gx#syntax-e _tl1290213004_)))
                              (let ((_hd1290413011_ (##car _e1290313007_))
                                    (_tl1290513014_ (##cdr _e1290313007_)))
                                (if (gx#stx-pair? _hd1290413011_)
                                    (let ((_e1290613017_
                                           (gx#syntax-e _hd1290413011_)))
                                      (let ((_hd1290713021_
                                             (##car _e1290613017_))
                                            (_tl1290813024_
                                             (##cdr _e1290613017_)))
                                        (if (gx#stx-pair/null? _tl1290513014_)
                                            (if (fx>= (gx#stx-length
                                                       _tl1290513014_)
                                                      '0)
                                                (let ((_g31656_
                                                       (gx#syntax-split-splice
                                                        _tl1290513014_
                                                        '0)))
                                                  (begin
                                                    (let ((_g31657_
                                                           (values-count
                                                            _g31656_)))
                                                      (if (not (fx= _g31657_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g31657_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1290913027_
                                                           (values-ref
                                                            _g31656_
                                                            0))
                                                          (_tl1291113030_
                                                           (values-ref
                                                            _g31656_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1291113030_)
                                                          (letrec ((_loop1291213033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1291013037_ _body1291613040_)
                              (if (gx#stx-pair? _hd1291013037_)
                                  (let ((_e1291313043_
                                         (gx#syntax-e _hd1291013037_)))
                                    (let ((_lp-hd1291413047_
                                           (##car _e1291313043_))
                                          (_lp-tl1291513050_
                                           (##cdr _e1291313043_)))
                                      (_loop1291213033_
                                       _lp-tl1291513050_
                                       (cons _lp-hd1291413047_
                                             _body1291613040_))))
                                  (let ((_body1291713053_
                                         (reverse _body1291613040_)))
                                    ((lambda (_L13057_ _L13059_ _L13060_)
                                       (if (gx#identifier? _L13060_)
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'define-syntax)
                                                 (cons _L13060_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'lambda)
                           (cons _L13059_
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g1307913082_ _g1308013085_)
                                            (cons _g1307913082_ _g1308013085_))
                                          '()
                                          _L13057_))))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1289412990_ _g1289612994_)))
                                     _body1291713053_
                                     _tl1290813024_
                                     _hd1290713021_))))))
                    (_loop1291213033_ _target1290913027_ '()))
                  (_g1289412990_ _g1289612994_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1289412990_ _g1289612994_))
                                            (_g1289412990_ _g1289612994_))))
                                    (_g1289412990_ _g1289612994_))))
                            (_g1289412990_ _g1289612994_))))
                    (_g1289412990_ _g1289612994_)))))
        (_g1289313088_ _$stx12890_))))
  (define |gerbil/core$<sugar>$<sugar:3>[:0:]#definline|
    (lambda (_stx13093_)
      (let* ((_g1309613133_
              (lambda (_g1309713129_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1309713129_)))
             (_g1309513494_
              (lambda (_g1309713137_)
                (if (gx#stx-pair? _g1309713137_)
                    (let ((_e1310113140_ (gx#syntax-e _g1309713137_)))
                      (let ((_hd1310213144_ (##car _e1310113140_))
                            (_tl1310313147_ (##cdr _e1310113140_)))
                        (if (gx#stx-pair? _tl1310313147_)
                            (let ((_e1310413150_ (gx#syntax-e _tl1310313147_)))
                              (let ((_hd1310513154_ (##car _e1310413150_))
                                    (_tl1310613157_ (##cdr _e1310413150_)))
                                (if (gx#stx-pair? _hd1310513154_)
                                    (let ((_e1310713160_
                                           (gx#syntax-e _hd1310513154_)))
                                      (let ((_hd1310813164_
                                             (##car _e1310713160_))
                                            (_tl1310913167_
                                             (##cdr _e1310713160_)))
                                        (if (gx#stx-pair/null? _tl1310913167_)
                                            (if (fx>= (gx#stx-length
                                                       _tl1310913167_)
                                                      '0)
                                                (let ((_g31658_
                                                       (gx#syntax-split-splice
                                                        _tl1310913167_
                                                        '0)))
                                                  (begin
                                                    (let ((_g31659_
                                                           (values-count
                                                            _g31658_)))
                                                      (if (not (fx= _g31659_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g31659_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1311013170_
                                                           (values-ref
                                                            _g31658_
                                                            0))
                                                          (_tl1311213173_
                                                           (values-ref
                                                            _g31658_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl1311213173_)
                                                          (letrec ((_loop1311313176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1311113180_ _arg1311713183_)
                              (if (gx#stx-pair? _hd1311113180_)
                                  (let ((_e1311413186_
                                         (gx#syntax-e _hd1311113180_)))
                                    (let ((_lp-hd1311513190_
                                           (##car _e1311413186_))
                                          (_lp-tl1311613193_
                                           (##cdr _e1311413186_)))
                                      (_loop1311313176_
                                       _lp-tl1311613193_
                                       (cons _lp-hd1311513190_
                                             _arg1311713183_))))
                                  (let ((_arg1311813196_
                                         (reverse _arg1311713183_)))
                                    (if (gx#stx-pair/null? _tl1310613157_)
                                        (if (fx>= (gx#stx-length
                                                   _tl1310613157_)
                                                  '0)
                                            (let ((_g31660_
                                                   (gx#syntax-split-splice
                                                    _tl1310613157_
                                                    '0)))
                                              (begin
                                                (let ((_g31661_
                                                       (values-count
                                                        _g31660_)))
                                                  (if (not (fx= _g31661_ 2))
                                                      (error "Context expects 2 values"
                                                             _g31661_)))
                                                (let ((_target1311913200_
                                                       (values-ref _g31660_ 0))
                                                      (_tl1312113203_
                                                       (values-ref
                                                        _g31660_
                                                        1)))
                                                  (if (gx#stx-null?
                                                       _tl1312113203_)
                                                      (letrec ((_loop1312213206_
                                                                (lambda (_hd1312013210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _body1312613213_)
                          (if (gx#stx-pair? _hd1312013210_)
                              (let ((_e1312313216_
                                     (gx#syntax-e _hd1312013210_)))
                                (let ((_lp-hd1312413220_ (##car _e1312313216_))
                                      (_lp-tl1312513223_
                                       (##cdr _e1312313216_)))
                                  (_loop1312213206_
                                   _lp-tl1312513223_
                                   (cons _lp-hd1312413220_ _body1312613213_))))
                              (let ((_body1312713226_
                                     (reverse _body1312613213_)))
                                ((lambda (_L13230_ _L13232_ _L13233_)
                                   (if (if (gx#identifier? _L13233_)
                                           (gx#identifier-list?
                                            (begin
                                              '#!void
                                              (foldr (lambda (_g1325713260_
                                                              _g1325813263_)
                                                       (cons _g1325713260_
                                                             _g1325813263_))
                                                     '()
                                                     _L13232_)))
                                           '#f)
                                       (let* ((_g1326613274_
                                               (lambda (_g1326713270_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g1326713270_)))
                                              (_g1326513490_
                                               (lambda (_g1326713278_)
                                                 ((lambda (_L13281_)
                                                    (let ()
                                                      (let* ((_g1329313310_
                                                              (lambda (_g1329413306_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g1329413306_)))
                     (_g1329213478_
                      (lambda (_g1329413314_)
                        (if (gx#stx-pair/null? _g1329413314_)
                            (if (fx>= (gx#stx-length _g1329413314_) '0)
                                (let ((_g31662_
                                       (gx#syntax-split-splice
                                        _g1329413314_
                                        '0)))
                                  (begin
                                    (let ((_g31663_ (values-count _g31662_)))
                                      (if (not (fx= _g31663_ 2))
                                          (error "Context expects 2 values"
                                                 _g31663_)))
                                    (let ((_target1329613317_
                                           (values-ref _g31662_ 0))
                                          (_tl1329813320_
                                           (values-ref _g31662_ 1)))
                                      (if (gx#stx-null? _tl1329813320_)
                                          (letrec ((_loop1329913323_
                                                    (lambda (_hd1329713327_
                                                             _xarg1330313330_)
                                                      (if (gx#stx-pair?
                                                           _hd1329713327_)
                                                          (let ((_e1330013333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _hd1329713327_)))
                    (let ((_lp-hd1330113337_ (##car _e1330013333_))
                          (_lp-tl1330213340_ (##cdr _e1330013333_)))
                      (_loop1329913323_
                       _lp-tl1330213340_
                       (cons _lp-hd1330113337_ _xarg1330313330_))))
                  (let ((_xarg1330413343_ (reverse _xarg1330313330_)))
                    ((lambda (_L13347_)
                       (let ()
                         (let* ((_g1336413372_
                                 (lambda (_g1336513368_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1336513368_)))
                                (_g1336313442_
                                 (lambda (_g1336513376_)
                                   ((lambda (_L13379_)
                                      (let ()
                                        (let* ((_g1339213400_
                                                (lambda (_g1339313396_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g1339313396_)))
                                               (_g1339113422_
                                                (lambda (_g1339313404_)
                                                  ((lambda (_L13407_)
                                                     (let ()
                                                       (let ()
                                                         (gx#stx-wrap-source
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'begin)
                        (cons _L13407_ (cons _L13379_ '())))
                  (gx#stx-source _stx13093_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g1339313404_))))
                                          (_g1339113422_
                                           (gx#stx-wrap-source
                                            (cons (gx#datum->syntax '#f 'def)
                                                  (cons (cons _L13281_
                                                              (begin
                                                                '#!void
                                                                (foldr (lambda (_g1342513430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g1342613433_)
                                 (cons _g1342513430_ _g1342613433_))
                               '()
                               _L13232_)))
                (begin
                  '#!void
                  (foldr (lambda (_g1342713436_ _g1342813439_)
                           (cons _g1342713436_ _g1342813439_))
                         '()
                         _L13230_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (gx#stx-source _stx13093_))))))
                                    _g1336513376_))))
                           (_g1336313442_
                            (gx#stx-wrap-source
                             (cons (gx#datum->syntax '#f 'defrules)
                                   (cons _L13233_
                                         (cons '()
                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '_)
                         (begin
                           '#!void
                           (foldr (lambda (_g1344513454_ _g1344613457_)
                                    (cons _g1344513454_ _g1344613457_))
                                  '()
                                  _L13347_)))
                   (cons (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons (begin
                                             '#!void
                                             (foldr (lambda (_g1344713460_
                                                             _g1344813463_)
                                                      (cons _g1344713460_
                                                            _g1344813463_))
                                                    '()
                                                    _L13232_))
                                           (begin
                                             '#!void
                                             (foldr (lambda (_g1344913466_
                                                             _g1345013469_)
                                                      (cons _g1344913466_
                                                            _g1345013469_))
                                                    '()
                                                    _L13230_))))
                               (begin
                                 '#!void
                                 (foldr (lambda (_g1345113472_ _g1345213475_)
                                          (cons _g1345113472_ _g1345213475_))
                                        '()
                                        _L13347_)))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ref)
                         (cons (cons (gx#datum->syntax '#f 'identifier?)
                                     (cons (cons (gx#datum->syntax '#f 'syntax)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'ref)
                                                       '()))
                                           '()))
                               (cons (cons (gx#datum->syntax '#f 'syntax)
                                           (cons _L13281_ '()))
                                     '())))
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (gx#stx-source _stx13093_))))))
                     _xarg1330413343_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1329913323_
                                             _target1329613317_
                                             '()))
                                          (_g1329313310_ _g1329413314_)))))
                                (_g1329313310_ _g1329413314_))
                            (_g1329313310_ _g1329413314_)))))
                (_g1329213478_
                 (gx#gentemps
                  (begin
                    '#!void
                    (foldr (lambda (_g1348113484_ _g1348213487_)
                             (cons _g1348113484_ _g1348213487_))
                           '()
                           _L13232_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _g1326713278_))))
                                         (_g1326513490_
                                          (gx#stx-identifier
                                           _L13233_
                                           _L13233_
                                           '"__impl")))
                                       (_g1309613133_ _g1309713137_)))
                                 _body1312713226_
                                 _arg1311813196_
                                 _hd1310813164_))))))
                (_loop1312213206_ _target1311913200_ '()))
              (_g1309613133_ _g1309713137_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g1309613133_ _g1309713137_))
                                        (_g1309613133_ _g1309713137_)))))))
                    (_loop1311313176_ _target1311013170_ '()))
                  (_g1309613133_ _g1309713137_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1309613133_ _g1309713137_))
                                            (_g1309613133_ _g1309713137_))))
                                    (_g1309613133_ _g1309713137_))))
                            (_g1309613133_ _g1309713137_))))
                    (_g1309613133_ _g1309713137_)))))
        (_g1309513494_ _stx13093_)))))
