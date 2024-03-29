(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g162924_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_$stx157603_)
        (let* ((_g157607157625_
                (lambda (_g157608157621_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g157608157621_))))
               (_g157606157680_
                (lambda (_g157608157629_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g157608157629_))
                      (let ((_e157613157632_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g157608157629_))))
                        (let ((_hd157612157636_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157613157632_)))
                              (_tl157611157639_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157613157632_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl157611157639_))
                              (let ((_e157616157642_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl157611157639_))))
                                (let ((_hd157615157646_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e157616157642_)))
                                      (_tl157614157649_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e157616157642_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl157614157649_))
                                      (let ((_e157619157652_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl157614157649_))))
                                        (let ((_hd157618157656_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e157619157652_)))
                                              (_tl157617157659_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e157619157652_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl157617157659_))
                                              ((lambda (_L157662_ _L157664_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _L157664_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-type!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _L157664_ '()))
                         (cons _L157662_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g157607157625_
                                                      _g157608157629_)))
                                               _hd157618157656_
                                               _hd157615157646_)
                                              (_g157607157625_
                                               _g157608157629_))))
                                      (_g157607157625_ _g157608157629_))))
                              (_g157607157625_ _g157608157629_))))
                      (_g157607157625_ _g157608157629_)))))
          (_g157606157680_ _$stx157603_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_$stx157684_)
        (let* ((_g157688157706_
                (lambda (_g157689157702_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g157689157702_))))
               (_g157687157761_
                (lambda (_g157689157710_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g157689157710_))
                      (let ((_e157694157713_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g157689157710_))))
                        (let ((_hd157693157717_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157694157713_)))
                              (_tl157692157720_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157694157713_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl157692157720_))
                              (let ((_e157697157723_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl157692157720_))))
                                (let ((_hd157696157727_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e157697157723_)))
                                      (_tl157695157730_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e157697157723_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl157695157730_))
                                      (let ((_e157700157733_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl157695157730_))))
                                        (let ((_hd157699157737_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e157700157733_)))
                                              (_tl157698157740_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e157700157733_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl157698157740_))
                                              ((lambda (_L157743_ _L157745_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _L157745_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-class!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _L157745_ '()))
                         (cons _L157743_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g157688157706_
                                                      _g157689157710_)))
                                               _hd157699157737_
                                               _hd157696157727_)
                                              (_g157688157706_
                                               _g157689157710_))))
                                      (_g157688157706_ _g157689157710_))))
                              (_g157688157706_ _g157689157710_))))
                      (_g157688157706_ _g157689157710_)))))
          (_g157687157761_ _$stx157684_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_$stx157765_)
        (let* ((_g157769157798_
                (lambda (_g157770157794_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g157770157794_))))
               (_g157768157898_
                (lambda (_g157770157802_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g157770157802_))
                      (let ((_e157775157805_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g157770157802_))))
                        (let ((_hd157774157809_
                               (let ()
                                 (declare (not safe))
                                 (##car _e157775157805_)))
                              (_tl157773157812_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e157775157805_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl157773157812_))
                              (let ((_g162902_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl157773157812_
                                        '0))))
                                (begin
                                  (let ((_g162903_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162902_)
                                               (##vector-length _g162902_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162903_ 2)))
                                        (error "Context expects 2 values"
                                               _g162903_)))
                                  (let ((_target157776157815_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162902_ 0)))
                                        (_tl157778157818_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162902_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl157778157818_))
                                        (letrec ((_loop157779157821_
                                                  (lambda (_hd157777157825_
                                                           _type157783157828_
                                                           _symbol157784157830_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd157777157825_))
                                                        (let ((_e157780157833_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd157777157825_))))
                  (let ((_lp-hd157781157837_
                         (let () (declare (not safe)) (##car _e157780157833_)))
                        (_lp-tl157782157840_
                         (let ()
                           (declare (not safe))
                           (##cdr _e157780157833_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd157781157837_))
                        (let ((_e157789157843_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _lp-hd157781157837_))))
                          (let ((_hd157788157847_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e157789157843_)))
                                (_tl157787157850_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e157789157843_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl157787157850_))
                                (let ((_e157792157853_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl157787157850_))))
                                  (let ((_hd157791157857_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e157792157853_)))
                                        (_tl157790157860_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e157792157853_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl157790157860_))
                                        (_loop157779157821_
                                         _lp-tl157782157840_
                                         (cons _hd157791157857_
                                               _type157783157828_)
                                         (cons _hd157788157847_
                                               _symbol157784157830_))
                                        (_g157769157798_ _g157770157802_))))
                                (_g157769157798_ _g157770157802_))))
                        (_g157769157798_ _g157770157802_))))
                (let ((_type157785157863_ (reverse _type157783157828_))
                      (_symbol157786157866_ (reverse _symbol157784157830_)))
                  ((lambda (_L157869_ _L157871_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _L157869_
                                _L157871_))
                             (let ((__tmp162904
                                    (lambda (_g157886157890_
                                             _g157887157893_
                                             _g157888157895_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _g157887157893_
                                                        (cons _g157886157890_
                                                              '())))
                                            _g157888157895_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp162904
                                '()
                                _L157869_
                                _L157871_)))))
                   _type157785157863_
                   _symbol157786157866_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop157779157821_
                                           _target157776157815_
                                           '()
                                           '()))
                                        (_g157769157798_ _g157770157802_)))))
                              (_g157769157798_ _g157770157802_))))
                      (_g157769157798_ _g157770157802_)))))
          (_g157768157898_ _$stx157765_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_$stx157903_)
        (let* ((___stx162213162214_ _$stx157903_)
               (_g157908157950_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx162213162214_)))))
          (let ((___kont162216162217_
                 (lambda (_L158078_ _L158080_ _L158081_ _L158082_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _L158082_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _L158081_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _L158080_ '()))
                                           (cons _L158078_ '())))))))
                (___kont162218162219_
                 (lambda (_L157997_ _L157999_ _L158000_ _L158001_)
                   (cons _L158001_
                         (cons _L158000_
                               (cons _L157999_
                                     (cons _L157997_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((___match162252162253_
                   (lambda (_e157916158028_
                            _hd157915158032_
                            _tl157914158035_
                            _e157919158038_
                            _hd157918158042_
                            _tl157917158045_
                            _e157922158048_
                            _hd157921158052_
                            _tl157920158055_
                            _e157925158058_
                            _hd157924158062_
                            _tl157923158065_
                            _e157928158068_
                            _hd157927158072_
                            _tl157926158075_)
                     (let ((_L158078_ _hd157927158072_)
                           (_L158080_ _hd157924158062_)
                           (_L158081_ _hd157921158052_)
                           (_L158082_ _hd157918158042_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _L158082_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _L158081_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _L158080_)))
                           (___kont162216162217_
                            _L158078_
                            _L158080_
                            _L158081_
                            _L158082_)
                           (let () (declare (not safe)) (_g157908157950_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx162213162214_))
                  (let ((_e157916158028_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e ___stx162213162214_))))
                    (let ((_tl157914158035_
                           (let ()
                             (declare (not safe))
                             (##cdr _e157916158028_)))
                          (_hd157915158032_
                           (let ()
                             (declare (not safe))
                             (##car _e157916158028_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl157914158035_))
                          (let ((_e157919158038_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _tl157914158035_))))
                            (let ((_tl157917158045_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e157919158038_)))
                                  (_hd157918158042_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e157919158038_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl157917158045_))
                                  (let ((_e157922158048_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _tl157917158045_))))
                                    (let ((_tl157920158055_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e157922158048_)))
                                          (_hd157921158052_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e157922158048_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl157920158055_))
                                          (let ((_e157925158058_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl157920158055_))))
                                            (let ((_tl157923158065_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e157925158058_)))
                                                  (_hd157924158062_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e157925158058_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl157923158065_))
                                                  (let ((_e157928158068_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl157923158065_))))
                                                    (let ((_tl157926158075_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e157928158068_)))
                                                          (_hd157927158072_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e157928158068_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl157926158075_))
                                                          (___match162252162253_
                                                           _e157916158028_
                                                           _hd157915158032_
                                                           _tl157914158035_
                                                           _e157919158038_
                                                           _hd157918158042_
                                                           _tl157917158045_
                                                           _e157922158048_
                                                           _hd157921158052_
                                                           _tl157920158055_
                                                           _e157925158058_
                                                           _hd157924158062_
                                                           _tl157923158065_
                                                           _e157928158068_
                                                           _hd157927158072_
                                                           _tl157926158075_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g157908157950_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl157923158065_))
                                                      (___kont162218162219_
                                                       _hd157924158062_
                                                       _hd157921158052_
                                                       _hd157918158042_
                                                       _hd157915158032_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g157908157950_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g157908157950_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g157908157950_)))))
                          (let () (declare (not safe)) (_g157908157950_)))))
                  (let () (declare (not safe)) (_g157908157950_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_$stx158107_)
        (let* ((_g158111158146_
                (lambda (_g158112158142_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g158112158142_))))
               (_g158110158265_
                (lambda (_g158112158150_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g158112158150_))
                      (let ((_e158118158153_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g158112158150_))))
                        (let ((_hd158117158157_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158118158153_)))
                              (_tl158116158160_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158118158153_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl158116158160_))
                              (let ((_g162905_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl158116158160_
                                        '0))))
                                (begin
                                  (let ((_g162906_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162905_)
                                               (##vector-length _g162905_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162906_ 2)))
                                        (error "Context expects 2 values"
                                               _g162906_)))
                                  (let ((_target158119158163_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162905_ 0)))
                                        (_tl158121158166_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162905_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl158121158166_))
                                        (letrec ((_loop158122158169_
                                                  (lambda (_hd158120158173_
                                                           _symbol158126158176_
                                                           _method158127158178_
                                                           _type-t158128158180_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd158120158173_))
                                                        (let ((_e158123158183_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd158120158173_))))
                  (let ((_lp-hd158124158187_
                         (let () (declare (not safe)) (##car _e158123158183_)))
                        (_lp-tl158125158190_
                         (let ()
                           (declare (not safe))
                           (##cdr _e158123158183_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd158124158187_))
                        (let ((_e158134158193_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _lp-hd158124158187_))))
                          (let ((_hd158133158197_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e158134158193_)))
                                (_tl158132158200_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e158134158193_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl158132158200_))
                                (let ((_e158137158203_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl158132158200_))))
                                  (let ((_hd158136158207_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e158137158203_)))
                                        (_tl158135158210_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e158137158203_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl158135158210_))
                                        (let ((_e158140158213_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl158135158210_))))
                                          (let ((_hd158139158217_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e158140158213_)))
                                                (_tl158138158220_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e158140158213_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl158138158220_))
                                                (_loop158122158169_
                                                 _lp-tl158125158190_
                                                 (cons _hd158139158217_
                                                       _symbol158126158176_)
                                                 (cons _hd158136158207_
                                                       _method158127158178_)
                                                 (cons _hd158133158197_
                                                       _type-t158128158180_))
                                                (_g158111158146_
                                                 _g158112158150_))))
                                        (_g158111158146_ _g158112158150_))))
                                (_g158111158146_ _g158112158150_))))
                        (_g158111158146_ _g158112158150_))))
                (let ((_symbol158129158223_ (reverse _symbol158126158176_))
                      (_method158130158226_ (reverse _method158127158178_))
                      (_type-t158131158228_ (reverse _type-t158128158180_)))
                  ((lambda (_L158231_ _L158233_ _L158234_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _L158231_
                                _L158233_
                                _L158234_))
                             (let ((__tmp162907
                                    (lambda (_g158250158255_
                                             _g158251158258_
                                             _g158252158260_
                                             _g158253158262_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _g158252158260_
                                                        (cons _g158251158258_
                                                              (cons _g158250158255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g158253158262_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp162907
                                '()
                                _L158231_
                                _L158233_
                                _L158234_)))))
                   _symbol158129158223_
                   _method158130158226_
                   _type-t158131158228_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop158122158169_
                                           _target158119158163_
                                           '()
                                           '()
                                           '()))
                                        (_g158111158146_ _g158112158150_)))))
                              (_g158111158146_ _g158112158150_))))
                      (_g158111158146_ _g158112158150_)))))
          (_g158110158265_ _$stx158107_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_$stx158270_)
        (let* ((_g158274158307_
                (lambda (_g158275158303_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g158275158303_))))
               (_g158273158421_
                (lambda (_g158275158311_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g158275158311_))
                      (let ((_e158281158314_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g158275158311_))))
                        (let ((_hd158280158318_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158281158314_)))
                              (_tl158279158321_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158281158314_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158279158321_))
                              (let ((_e158284158324_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158279158321_))))
                                (let ((_hd158283158328_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158284158324_)))
                                      (_tl158282158331_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158284158324_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl158282158331_))
                                      (let ((_g162908_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl158282158331_
                                                '0))))
                                        (begin
                                          (let ((_g162909_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g162908_)
                                                       (##vector-length
                                                        _g162908_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g162909_ 2)))
                                                (error "Context expects 2 values"
                                                       _g162909_)))
                                          (let ((_target158285158334_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g162908_ 0)))
                                                (_tl158287158337_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g162908_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl158287158337_))
                                                (letrec ((_loop158288158340_
                                                          (lambda (_hd158286158344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _symbol158292158347_
                           _method158293158349_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd158286158344_))
                        (let ((_e158289158352_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd158286158344_))))
                          (let ((_lp-hd158290158356_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e158289158352_)))
                                (_lp-tl158291158359_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e158289158352_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _lp-hd158290158356_))
                                (let ((_e158298158362_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _lp-hd158290158356_))))
                                  (let ((_hd158297158366_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e158298158362_)))
                                        (_tl158296158369_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e158298158362_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl158296158369_))
                                        (let ((_e158301158372_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl158296158369_))))
                                          (let ((_hd158300158376_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e158301158372_)))
                                                (_tl158299158379_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e158301158372_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl158299158379_))
                                                (_loop158288158340_
                                                 _lp-tl158291158359_
                                                 (cons _hd158300158376_
                                                       _symbol158292158347_)
                                                 (cons _hd158297158366_
                                                       _method158293158349_))
                                                (_g158274158307_
                                                 _g158275158311_))))
                                        (_g158274158307_ _g158275158311_))))
                                (_g158274158307_ _g158275158311_))))
                        (let ((_symbol158294158382_
                               (reverse _symbol158292158347_))
                              (_method158295158385_
                               (reverse _method158293158349_)))
                          ((lambda (_L158388_ _L158390_ _L158391_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _L158388_
                                        _L158390_))
                                     (let ((__tmp162910
                                            (lambda (_g158409158413_
                                                     _g158410158416_
                                                     _g158411158418_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _L158391_
                                                                (cons _g158410158416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _g158409158413_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g158411158418_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp162910
                                        '()
                                        _L158388_
                                        _L158390_)))))
                           _symbol158294158382_
                           _method158295158385_
                           _hd158283158328_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop158288158340_
                                                   _target158285158334_
                                                   '()
                                                   '()))
                                                (_g158274158307_
                                                 _g158275158311_)))))
                                      (_g158274158307_ _g158275158311_))))
                              (_g158274158307_ _g158275158311_))))
                      (_g158274158307_ _g158275158311_)))))
          (_g158273158421_ _$stx158270_))))
    (define |gxc[:0:]#@alias|
      (lambda (_$stx158426_)
        (let* ((_g158430158444_
                (lambda (_g158431158440_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g158431158440_))))
               (_g158429158485_
                (lambda (_g158431158448_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g158431158448_))
                      (let ((_e158435158451_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g158431158448_))))
                        (let ((_hd158434158455_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158435158451_)))
                              (_tl158433158458_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158435158451_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158433158458_))
                              (let ((_e158438158461_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158433158458_))))
                                (let ((_hd158437158465_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158438158461_)))
                                      (_tl158436158468_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158438158461_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158436158468_))
                                      ((lambda (_L158471_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!alias))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _L158471_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _hd158437158465_)
                                      (_g158430158444_ _g158431158448_))))
                              (_g158430158444_ _g158431158448_))))
                      (_g158430158444_ _g158431158448_)))))
          (_g158429158485_ _$stx158426_))))
    (define |gxc[:0:]#@class|
      (lambda (_$stx158489_)
        (let* ((_g158493158547_
                (lambda (_g158494158543_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g158494158543_))))
               (_g158492158728_
                (lambda (_g158494158551_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g158494158551_))
                      (let ((_e158508158554_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g158494158551_))))
                        (let ((_hd158507158558_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158508158554_)))
                              (_tl158506158561_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158508158554_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158506158561_))
                              (let ((_e158511158564_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158506158561_))))
                                (let ((_hd158510158568_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158511158564_)))
                                      (_tl158509158571_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158511158564_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl158509158571_))
                                      (let ((_e158514158574_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl158509158571_))))
                                        (let ((_hd158513158578_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e158514158574_)))
                                              (_tl158512158581_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e158514158574_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl158512158581_))
                                              (let ((_e158517158584_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl158512158581_))))
                                                (let ((_hd158516158588_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e158517158584_)))
                                                      (_tl158515158591_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e158517158584_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl158515158591_))
                                                      (let ((_e158520158594_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _tl158515158591_))))
                (let ((_hd158519158598_
                       (let () (declare (not safe)) (##car _e158520158594_)))
                      (_tl158518158601_
                       (let () (declare (not safe)) (##cdr _e158520158594_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl158518158601_))
                      (let ((_e158523158604_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl158518158601_))))
                        (let ((_hd158522158608_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158523158604_)))
                              (_tl158521158611_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158523158604_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158521158611_))
                              (let ((_e158526158614_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158521158611_))))
                                (let ((_hd158525158618_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158526158614_)))
                                      (_tl158524158621_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158526158614_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl158524158621_))
                                      (let ((_e158529158624_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl158524158621_))))
                                        (let ((_hd158528158628_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e158529158624_)))
                                              (_tl158527158631_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e158529158624_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl158527158631_))
                                              (let ((_e158532158634_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl158527158631_))))
                                                (let ((_hd158531158638_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e158532158634_)))
                                                      (_tl158530158641_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e158532158634_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl158530158641_))
                                                      (let ((_e158535158644_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _tl158530158641_))))
                (let ((_hd158534158648_
                       (let () (declare (not safe)) (##car _e158535158644_)))
                      (_tl158533158651_
                       (let () (declare (not safe)) (##cdr _e158535158644_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl158533158651_))
                      (let ((_e158538158654_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl158533158651_))))
                        (let ((_hd158537158658_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158538158654_)))
                              (_tl158536158661_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158538158654_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158536158661_))
                              (let ((_e158541158664_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158536158661_))))
                                (let ((_hd158540158668_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158541158664_)))
                                      (_tl158539158671_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158541158664_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158539158671_))
                                      ((lambda (_L158674_
                                                _L158676_
                                                _L158677_
                                                _L158678_
                                                _L158679_
                                                _L158680_
                                                _L158681_
                                                _L158682_
                                                _L158683_
                                                _L158684_
                                                _L158685_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!class))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _L158685_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _L158684_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _L158683_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _L158682_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _L158681_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _L158680_ '()))
                                           (cons _L158679_
                                                 (cons _L158678_
                                                       (cons _L158677_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _L158676_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _L158674_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _hd158540158668_
                                       _hd158537158658_
                                       _hd158534158648_
                                       _hd158531158638_
                                       _hd158528158628_
                                       _hd158525158618_
                                       _hd158522158608_
                                       _hd158519158598_
                                       _hd158516158588_
                                       _hd158513158578_
                                       _hd158510158568_)
                                      (_g158493158547_ _g158494158551_))))
                              (_g158493158547_ _g158494158551_))))
                      (_g158493158547_ _g158494158551_))))
              (_g158493158547_ _g158494158551_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g158493158547_
                                               _g158494158551_))))
                                      (_g158493158547_ _g158494158551_))))
                              (_g158493158547_ _g158494158551_))))
                      (_g158493158547_ _g158494158551_))))
              (_g158493158547_ _g158494158551_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g158493158547_
                                               _g158494158551_))))
                                      (_g158493158547_ _g158494158551_))))
                              (_g158493158547_ _g158494158551_))))
                      (_g158493158547_ _g158494158551_)))))
          (_g158492158728_ _$stx158489_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_$stx158732_)
        (let* ((_g158736158750_
                (lambda (_g158737158746_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g158737158746_))))
               (_g158735158791_
                (lambda (_g158737158754_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g158737158754_))
                      (let ((_e158741158757_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g158737158754_))))
                        (let ((_hd158740158761_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158741158757_)))
                              (_tl158739158764_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158741158757_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158739158764_))
                              (let ((_e158744158767_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158739158764_))))
                                (let ((_hd158743158771_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158744158767_)))
                                      (_tl158742158774_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158744158767_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158742158774_))
                                      ((lambda (_L158777_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _L158777_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _hd158743158771_)
                                      (_g158736158750_ _g158737158754_))))
                              (_g158736158750_ _g158737158754_))))
                      (_g158736158750_ _g158737158754_)))))
          (_g158735158791_ _$stx158732_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_$stx158795_)
        (let* ((_g158799158813_
                (lambda (_g158800158809_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g158800158809_))))
               (_g158798158854_
                (lambda (_g158800158817_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g158800158817_))
                      (let ((_e158804158820_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g158800158817_))))
                        (let ((_hd158803158824_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158804158820_)))
                              (_tl158802158827_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158804158820_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158802158827_))
                              (let ((_e158807158830_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158802158827_))))
                                (let ((_hd158806158834_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158807158830_)))
                                      (_tl158805158837_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158807158830_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl158805158837_))
                                      ((lambda (_L158840_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!constructor))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _L158840_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _hd158806158834_)
                                      (_g158799158813_ _g158800158817_))))
                              (_g158799158813_ _g158800158817_))))
                      (_g158799158813_ _g158800158817_)))))
          (_g158798158854_ _$stx158795_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_$stx158858_)
        (let* ((_g158862158884_
                (lambda (_g158863158880_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g158863158880_))))
               (_g158861158953_
                (lambda (_g158863158888_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g158863158888_))
                      (let ((_e158869158891_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g158863158888_))))
                        (let ((_hd158868158895_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158869158891_)))
                              (_tl158867158898_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158869158891_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158867158898_))
                              (let ((_e158872158901_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158867158898_))))
                                (let ((_hd158871158905_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158872158901_)))
                                      (_tl158870158908_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158872158901_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl158870158908_))
                                      (let ((_e158875158911_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl158870158908_))))
                                        (let ((_hd158874158915_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e158875158911_)))
                                              (_tl158873158918_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e158875158911_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl158873158918_))
                                              (let ((_e158878158921_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl158873158918_))))
                                                (let ((_hd158877158925_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e158878158921_)))
                                                      (_tl158876158928_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e158878158921_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl158876158928_))
                                                      ((lambda (_L158931_
                                                                _L158933_
                                                                _L158934_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _L158934_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _L158933_ '()))
                                   (cons _L158931_ '())))))
               _hd158877158925_
               _hd158874158915_
               _hd158871158905_)
              (_g158862158884_ _g158863158888_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g158862158884_
                                               _g158863158888_))))
                                      (_g158862158884_ _g158863158888_))))
                              (_g158862158884_ _g158863158888_))))
                      (_g158862158884_ _g158863158888_)))))
          (_g158861158953_ _$stx158858_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_$stx158957_)
        (let* ((_g158961158983_
                (lambda (_g158962158979_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g158962158979_))))
               (_g158960159052_
                (lambda (_g158962158987_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g158962158987_))
                      (let ((_e158968158990_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g158962158987_))))
                        (let ((_hd158967158994_
                               (let ()
                                 (declare (not safe))
                                 (##car _e158968158990_)))
                              (_tl158966158997_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e158968158990_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl158966158997_))
                              (let ((_e158971159000_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl158966158997_))))
                                (let ((_hd158970159004_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e158971159000_)))
                                      (_tl158969159007_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e158971159000_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl158969159007_))
                                      (let ((_e158974159010_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl158969159007_))))
                                        (let ((_hd158973159014_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e158974159010_)))
                                              (_tl158972159017_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e158974159010_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl158972159017_))
                                              (let ((_e158977159020_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl158972159017_))))
                                                (let ((_hd158976159024_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e158977159020_)))
                                                      (_tl158975159027_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e158977159020_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl158975159027_))
                                                      ((lambda (_L159030_
                                                                _L159032_
                                                                _L159033_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _L159033_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _L159032_ '()))
                                   (cons _L159030_ '())))))
               _hd158976159024_
               _hd158973159014_
               _hd158970159004_)
              (_g158961158983_ _g158962158987_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g158961158983_
                                               _g158962158987_))))
                                      (_g158961158983_ _g158962158987_))))
                              (_g158961158983_ _g158962158987_))))
                      (_g158961158983_ _g158962158987_)))))
          (_g158960159052_ _$stx158957_))))
    (define |gxc[:0:]#@interface|
      (lambda (_$stx159056_)
        (let* ((_g159060159078_
                (lambda (_g159061159074_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g159061159074_))))
               (_g159059159133_
                (lambda (_g159061159082_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g159061159082_))
                      (let ((_e159066159085_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g159061159082_))))
                        (let ((_hd159065159089_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159066159085_)))
                              (_tl159064159092_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159066159085_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159064159092_))
                              (let ((_e159069159095_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159064159092_))))
                                (let ((_hd159068159099_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159069159095_)))
                                      (_tl159067159102_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159069159095_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl159067159102_))
                                      (let ((_e159072159105_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl159067159102_))))
                                        (let ((_hd159071159109_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e159072159105_)))
                                              (_tl159070159112_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e159072159105_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159070159112_))
                                              ((lambda (_L159115_ _L159117_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _L159117_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _L159115_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd159071159109_
                                               _hd159068159099_)
                                              (_g159060159078_
                                               _g159061159082_))))
                                      (_g159060159078_ _g159061159082_))))
                              (_g159060159078_ _g159061159082_))))
                      (_g159060159078_ _g159061159082_)))))
          (_g159059159133_ _$stx159056_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_$stx159137_)
        (let* ((___stx162281162282_ _$stx159137_)
               (_g159144159205_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx162281162282_)))))
          (let ((___kont162284162285_
                 (lambda (_L159443_ _L159445_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _L159445_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _L159443_ '()))
                                     '())))))
                (___kont162286162287_
                 (lambda (_L159382_ _L159384_ _L159385_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _L159385_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _L159384_ '()))
                                     (cons 'signature:
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'apply))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!signature))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _L159382_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (___kont162288162289_
                 (lambda (_L159306_ _L159308_)
                   (cons _L159308_ (cons _L159306_ (cons '#f '())))))
                (___kont162290162291_
                 (lambda (_L159256_ _L159258_ _L159259_)
                   (cons _L159259_
                         (cons _L159258_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _L159256_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162281162282_))
                (let ((_e159150159413_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162281162282_))))
                  (let ((_tl159148159420_
                         (let () (declare (not safe)) (##cdr _e159150159413_)))
                        (_hd159149159417_
                         (let ()
                           (declare (not safe))
                           (##car _e159150159413_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl159148159420_))
                        (let ((_e159153159423_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl159148159420_))))
                          (let ((_tl159151159430_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e159153159423_)))
                                (_hd159152159427_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e159153159423_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl159151159430_))
                                (let ((_e159156159433_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl159151159430_))))
                                  (let ((_tl159154159440_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e159156159433_)))
                                        (_hd159155159437_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e159156159433_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl159154159440_))
                                        (___kont162284162285_
                                         _hd159155159437_
                                         _hd159152159427_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159154159440_))
                                            (let ((_e159171159358_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159154159440_))))
                                              (let ((_tl159169159365_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159171159358_)))
                                                    (_hd159170159362_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159171159358_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd159170159362_))
                                                    (let ((_e159172159368_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd159170159362_))))
                                                      (if (equal? _e159172159368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl159169159365_))
                      (let ((_e159175159372_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl159169159365_))))
                        (let ((_tl159173159379_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159175159372_)))
                              (_hd159174159376_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159175159372_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl159173159379_))
                              (___kont162286162287_
                               _hd159174159376_
                               _hd159155159437_
                               _hd159152159427_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd159155159437_))
                                  (let ((_e159196159242_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd159155159437_))))
                                    (declare (not safe))
                                    (_g159144159205_))
                                  (let ()
                                    (declare (not safe))
                                    (_g159144159205_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _hd159155159437_))
                          (let ((_e159196159242_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd159155159437_))))
                            (if (equal? _e159196159242_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159169159365_))
                                    (___kont162290162291_
                                     _hd159170159362_
                                     _hd159152159427_
                                     _hd159149159417_)
                                    (let ()
                                      (declare (not safe))
                                      (_g159144159205_)))
                                (let ()
                                  (declare (not safe))
                                  (_g159144159205_))))
                          (let () (declare (not safe)) (_g159144159205_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _hd159155159437_))
                      (let ((_e159196159242_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd159155159437_))))
                        (if (equal? _e159196159242_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl159169159365_))
                                (___kont162290162291_
                                 _hd159170159362_
                                 _hd159152159427_
                                 _hd159149159417_)
                                (let ()
                                  (declare (not safe))
                                  (_g159144159205_)))
                            (let () (declare (not safe)) (_g159144159205_))))
                      (let () (declare (not safe)) (_g159144159205_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _hd159155159437_))
                                                        (let ((_e159196159242_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd159155159437_))))
                  (if (equal? _e159196159242_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl159169159365_))
                          (___kont162290162291_
                           _hd159170159362_
                           _hd159152159427_
                           _hd159149159417_)
                          (let () (declare (not safe)) (_g159144159205_)))
                      (let () (declare (not safe)) (_g159144159205_))))
                (let () (declare (not safe)) (_g159144159205_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd159155159437_))
                                                (let ((_e159196159242_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd159155159437_))))
                                                  (declare (not safe))
                                                  (_g159144159205_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g159144159205_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159151159430_))
                                    (___kont162288162289_
                                     _hd159152159427_
                                     _hd159149159417_)
                                    (let ()
                                      (declare (not safe))
                                      (_g159144159205_))))))
                        (let () (declare (not safe)) (_g159144159205_)))))
                (let () (declare (not safe)) (_g159144159205_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_$stx159464_)
        (let* ((_g159468159497_
                (lambda (_g159469159493_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g159469159493_))))
               (_g159467159606_
                (lambda (_g159469159501_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g159469159501_))
                      (let ((_e159473159504_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g159469159501_))))
                        (let ((_hd159472159508_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159473159504_)))
                              (_tl159471159511_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159473159504_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl159471159511_))
                              (let ((_g162911_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl159471159511_
                                        '0))))
                                (begin
                                  (let ((_g162912_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162911_)
                                               (##vector-length _g162911_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162912_ 2)))
                                        (error "Context expects 2 values"
                                               _g162912_)))
                                  (let ((_target159474159514_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162911_ 0)))
                                        (_tl159476159517_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162911_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl159476159517_))
                                        (letrec ((_loop159477159520_
                                                  (lambda (_hd159475159524_
                                                           _clause159481159527_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd159475159524_))
                                                        (let ((_e159478159530_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd159475159524_))))
                  (let ((_lp-hd159479159534_
                         (let () (declare (not safe)) (##car _e159478159530_)))
                        (_lp-tl159480159537_
                         (let ()
                           (declare (not safe))
                           (##cdr _e159478159530_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _lp-hd159479159534_))
                        (let ((_g162913_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _lp-hd159479159534_
                                  '0))))
                          (begin
                            (let ((_g162914_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g162913_)
                                         (##vector-length _g162913_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g162914_ 2)))
                                  (error "Context expects 2 values"
                                         _g162914_)))
                            (let ((_target159483159540_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g162913_ 0)))
                                  (_tl159485159543_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g162913_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl159485159543_))
                                  (letrec ((_loop159486159546_
                                            (lambda (_hd159484159550_
                                                     _clause159490159553_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd159484159550_))
                                                  (let ((_e159487159556_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _hd159484159550_))))
                                                    (let ((_lp-hd159488159560_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e159487159556_)))
                                                          (_lp-tl159489159563_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e159487159556_))))
                                                      (_loop159486159546_
                                                       _lp-tl159489159563_
                                                       (cons _lp-hd159488159560_
                                                             _clause159490159553_))))
                                                  (let ((_clause159491159566_
                                                         (reverse _clause159490159553_)))
                                                    (_loop159477159520_
                                                     _lp-tl159480159537_
                                                     (cons _clause159491159566_
                                                           _clause159481159527_)))))))
                                    (_loop159486159546_
                                     _target159483159540_
                                     '()))
                                  (_g159468159497_ _g159469159501_)))))
                        (_g159468159497_ _g159469159501_))))
                (let ((_clause159482159570_ (reverse _clause159481159527_)))
                  ((lambda (_L159574_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp162915
                                              (lambda (_g159589159594_
                                                       _g159590159597_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp162916
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g159591159600_ _g159592159603_)
                             (cons _g159591159600_ _g159592159603_))))
                      (declare (not safe))
                      (__foldr1 __tmp162916 '() _g159589159594_)))
              _g159590159597_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1 __tmp162915 '() _L159574_)))
                                 '())))
                   _clause159482159570_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop159477159520_
                                           _target159474159514_
                                           '()))
                                        (_g159468159497_ _g159469159501_)))))
                              (_g159468159497_ _g159469159501_))))
                      (_g159468159497_ _g159469159501_)))))
          (_g159467159606_ _$stx159464_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_$stx159612_)
        (let* ((_g159616159634_
                (lambda (_g159617159630_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g159617159630_))))
               (_g159615159689_
                (lambda (_g159617159638_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g159617159638_))
                      (let ((_e159622159641_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g159617159638_))))
                        (let ((_hd159621159645_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159622159641_)))
                              (_tl159620159648_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159622159641_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159620159648_))
                              (let ((_e159625159651_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159620159648_))))
                                (let ((_hd159624159655_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159625159651_)))
                                      (_tl159623159658_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159625159651_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl159623159658_))
                                      (let ((_e159628159661_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl159623159658_))))
                                        (let ((_hd159627159665_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e159628159661_)))
                                              (_tl159626159668_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e159628159661_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159626159668_))
                                              ((lambda (_L159671_ _L159673_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _L159673_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _L159671_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd159627159665_
                                               _hd159624159655_)
                                              (_g159616159634_
                                               _g159617159638_))))
                                      (_g159616159634_ _g159617159638_))))
                              (_g159616159634_ _g159617159638_))))
                      (_g159616159634_ _g159617159638_)))))
          (_g159615159689_ _$stx159612_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_$stx159693_)
        (let* ((_g159697159715_
                (lambda (_g159698159711_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g159698159711_))))
               (_g159696159770_
                (lambda (_g159698159719_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g159698159719_))
                      (let ((_e159703159722_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g159698159719_))))
                        (let ((_hd159702159726_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159703159722_)))
                              (_tl159701159729_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159703159722_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159701159729_))
                              (let ((_e159706159732_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159701159729_))))
                                (let ((_hd159705159736_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159706159732_)))
                                      (_tl159704159739_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159706159732_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl159704159739_))
                                      (let ((_e159709159742_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl159704159739_))))
                                        (let ((_hd159708159746_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e159709159742_)))
                                              (_tl159707159749_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e159709159742_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159707159749_))
                                              ((lambda (_L159752_ _L159754_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _L159754_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _L159752_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd159708159746_
                                               _hd159705159736_)
                                              (_g159697159715_
                                               _g159698159719_))))
                                      (_g159697159715_ _g159698159719_))))
                              (_g159697159715_ _g159698159719_))))
                      (_g159697159715_ _g159698159719_)))))
          (_g159696159770_ _$stx159693_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_$stx159774_)
        (let* ((_g159778159807_
                (lambda (_g159779159803_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g159779159803_))))
               (_g159777159907_
                (lambda (_g159779159811_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g159779159811_))
                      (let ((_e159784159814_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g159779159811_))))
                        (let ((_hd159783159818_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159784159814_)))
                              (_tl159782159821_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159784159814_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl159782159821_))
                              (let ((_g162917_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl159782159821_
                                        '0))))
                                (begin
                                  (let ((_g162918_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162917_)
                                               (##vector-length _g162917_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162918_ 2)))
                                        (error "Context expects 2 values"
                                               _g162918_)))
                                  (let ((_target159785159824_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162917_ 0)))
                                        (_tl159787159827_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162917_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl159787159827_))
                                        (letrec ((_loop159788159830_
                                                  (lambda (_hd159786159834_
                                                           _rule159792159837_
                                                           _proc159793159839_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd159786159834_))
                                                        (let ((_e159789159842_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd159786159834_))))
                  (let ((_lp-hd159790159846_
                         (let () (declare (not safe)) (##car _e159789159842_)))
                        (_lp-tl159791159849_
                         (let ()
                           (declare (not safe))
                           (##cdr _e159789159842_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd159790159846_))
                        (let ((_e159798159852_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _lp-hd159790159846_))))
                          (let ((_hd159797159856_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e159798159852_)))
                                (_tl159796159859_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e159798159852_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl159796159859_))
                                (let ((_e159801159862_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl159796159859_))))
                                  (let ((_hd159800159866_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e159801159862_)))
                                        (_tl159799159869_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e159801159862_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl159799159869_))
                                        (_loop159788159830_
                                         _lp-tl159791159849_
                                         (cons _hd159800159866_
                                               _rule159792159837_)
                                         (cons _hd159797159856_
                                               _proc159793159839_))
                                        (_g159778159807_ _g159779159811_))))
                                (_g159778159807_ _g159779159811_))))
                        (_g159778159807_ _g159779159811_))))
                (let ((_rule159794159872_ (reverse _rule159792159837_))
                      (_proc159795159875_ (reverse _proc159793159839_)))
                  ((lambda (_L159878_ _L159880_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _L159878_
                                _L159880_))
                             (let ((__tmp162919
                                    (lambda (_g159895159899_
                                             _g159896159902_
                                             _g159897159904_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _g159896159902_
                                                        (cons _g159895159899_
                                                              '())))
                                            _g159897159904_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp162919
                                '()
                                _L159878_
                                _L159880_)))))
                   _rule159794159872_
                   _proc159795159875_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop159788159830_
                                           _target159785159824_
                                           '()
                                           '()))
                                        (_g159778159807_ _g159779159811_)))))
                              (_g159778159807_ _g159779159811_))))
                      (_g159778159807_ _g159779159811_)))))
          (_g159777159907_ _$stx159774_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_$stx159912_)
        (let* ((_g159916159934_
                (lambda (_g159917159930_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g159917159930_))))
               (_g159915159989_
                (lambda (_g159917159938_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g159917159938_))
                      (let ((_e159922159941_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g159917159938_))))
                        (let ((_hd159921159945_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159922159941_)))
                              (_tl159920159948_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159922159941_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159920159948_))
                              (let ((_e159925159951_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159920159948_))))
                                (let ((_hd159924159955_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159925159951_)))
                                      (_tl159923159958_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159925159951_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl159923159958_))
                                      (let ((_e159928159961_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl159923159958_))))
                                        (let ((_hd159927159965_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e159928159961_)))
                                              (_tl159926159968_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e159928159961_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159926159968_))
                                              ((lambda (_L159971_ _L159973_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'let))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'type))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'optimizer-lookup-type))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _L159973_ '()))
                                             '()))
                                 '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'if))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '!lambda?))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'type))
                                                   '()))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'set!))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '!lambda-inline))
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'type))
                             '()))
                 (cons _L159971_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            'displayln))
                                                         (cons '"*** WARNING unknown procedure "
                                                               (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _L159973_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd159927159965_
                                               _hd159924159955_)
                                              (_g159916159934_
                                               _g159917159938_))))
                                      (_g159916159934_ _g159917159938_))))
                              (_g159916159934_ _g159917159938_))))
                      (_g159916159934_ _g159917159938_)))))
          (_g159915159989_ _$stx159912_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_$stx159993_)
        (let* ((___stx162399162400_ _$stx159993_)
               (_g159998160023_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx162399162400_)))))
          (let ((___kont162402162403_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (___kont162404162405_
                 (lambda (_L160070_ _L160072_ _L160073_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _L160073_ (cons _L160072_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _L160070_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162399162400_))
                (let ((_e160002160099_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162399162400_))))
                  (let ((_tl160000160106_
                         (let () (declare (not safe)) (##cdr _e160002160099_)))
                        (_hd160001160103_
                         (let ()
                           (declare (not safe))
                           (##car _e160002160099_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl160000160106_))
                        (___kont162402162403_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160000160106_))
                            (let ((_e160011160040_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160000160106_))))
                              (let ((_tl160009160047_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160011160040_)))
                                    (_hd160010160044_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160011160040_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160010160044_))
                                    (let ((_e160014160050_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160010160044_))))
                                      (let ((_tl160012160057_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160014160050_)))
                                            (_hd160013160054_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160014160050_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl160012160057_))
                                            (let ((_e160017160060_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl160012160057_))))
                                              (let ((_tl160015160067_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160017160060_)))
                                                    (_hd160016160064_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160017160060_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160015160067_))
                                                    (___kont162404162405_
                                                     _tl160009160047_
                                                     _hd160016160064_
                                                     _hd160013160054_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159998160023_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g159998160023_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g159998160023_)))))
                            (let () (declare (not safe)) (_g159998160023_))))))
                (let () (declare (not safe)) (_g159998160023_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_$stx160117_)
        (let* ((___stx162443162444_ _$stx160117_)
               (_g160122160153_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx162443162444_)))))
          (let ((___kont162446162447_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (___kont162448162449_
                 (lambda (_L160220_ _L160222_ _L160223_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _L160223_
                                           (let ((__tmp162920
                                                  (lambda (_g160243160246_
                                                           _g160244160249_)
                                                    (cons _g160243160246_
                                                          _g160244160249_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp162920
                                              '()
                                              _L160222_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _L160220_)
                                     '()))))))
            (let ((___match162486162487_
                   (lambda (_e160132160160_
                            _hd160131160164_
                            _tl160130160167_
                            _e160135160170_
                            _hd160134160174_
                            _tl160133160177_
                            _e160138160180_
                            _hd160137160184_
                            _tl160136160187_
                            ___splice162450162451_
                            _target160139160190_
                            _tl160141160193_)
                     (letrec ((_loop160142160196_
                               (lambda (_hd160140160200_ _sig160146160203_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd160140160200_))
                                     (let ((_e160143160206_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e _hd160140160200_))))
                                       (let ((_lp-tl160145160213_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e160143160206_)))
                                             (_lp-hd160144160210_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e160143160206_))))
                                         (_loop160142160196_
                                          _lp-tl160145160213_
                                          (cons _lp-hd160144160210_
                                                _sig160146160203_))))
                                     (let ((_sig160147160216_
                                            (reverse _sig160146160203_)))
                                       (___kont162448162449_
                                        _tl160133160177_
                                        _sig160147160216_
                                        _hd160137160184_))))))
                       (_loop160142160196_ _target160139160190_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx162443162444_))
                  (let ((_e160126160259_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e ___stx162443162444_))))
                    (let ((_tl160124160266_
                           (let ()
                             (declare (not safe))
                             (##cdr _e160126160259_)))
                          (_hd160125160263_
                           (let ()
                             (declare (not safe))
                             (##car _e160126160259_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl160124160266_))
                          (___kont162446162447_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl160124160266_))
                              (let ((_e160135160170_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl160124160266_))))
                                (let ((_tl160133160177_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160135160170_)))
                                      (_hd160134160174_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160135160170_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd160134160174_))
                                      (let ((_e160138160180_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _hd160134160174_))))
                                        (let ((_tl160136160187_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e160138160180_)))
                                              (_hd160137160184_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e160138160180_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl160136160187_))
                                              (let ((___splice162450162451_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl160136160187_
                                                        '0))))
                                                (let ((_tl160141160193_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice162450162451_
                                                          '1)))
                                                      (_target160139160190_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice162450162451_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl160141160193_))
                                                      (___match162486162487_
                                                       _e160126160259_
                                                       _hd160125160263_
                                                       _tl160124160266_
                                                       _e160135160170_
                                                       _hd160134160174_
                                                       _tl160133160177_
                                                       _e160138160180_
                                                       _hd160137160184_
                                                       _tl160136160187_
                                                       ___splice162450162451_
                                                       _target160139160190_
                                                       _tl160141160193_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g160122160153_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g160122160153_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g160122160153_)))))
                              (let ()
                                (declare (not safe))
                                (_g160122160153_))))))
                  (let () (declare (not safe)) (_g160122160153_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_$stx160278_)
        (let* ((___stx162489162490_ _$stx160278_)
               (_g160283160330_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx162489162490_)))))
          (let ((___kont162492162493_
                 (lambda (_L160492_ _L160494_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _L160494_
                               (let ((__tmp162921
                                      (lambda (_g160514160517_ _g160515160520_)
                                        (cons _g160514160517_
                                              _g160515160520_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp162921 '() _L160492_))))))
                (___kont162496162497_
                 (lambda (_L160387_ _L160389_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _L160389_
                               (let ((__tmp162922
                                      (lambda (_g160406160409_ _g160407160412_)
                                        (cons _g160406160409_
                                              _g160407160412_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp162922 '() _L160387_)))))))
            (let* ((___match162556162557_
                    (lambda (_e160312160337_
                             _hd160311160341_
                             _tl160310160344_
                             _e160315160347_
                             _hd160314160351_
                             _tl160313160354_
                             ___splice162498162499_
                             _target160316160357_
                             _tl160318160360_)
                      (letrec ((_loop160319160363_
                                (lambda (_hd160317160367_ _sig160323160370_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd160317160367_))
                                      (let ((_e160320160373_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _hd160317160367_))))
                                        (let ((_lp-tl160322160380_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e160320160373_)))
                                              (_lp-hd160321160377_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e160320160373_))))
                                          (_loop160319160363_
                                           _lp-tl160322160380_
                                           (cons _lp-hd160321160377_
                                                 _sig160323160370_))))
                                      (let ((_sig160324160383_
                                             (reverse _sig160323160370_)))
                                        (___kont162496162497_
                                         _sig160324160383_
                                         _hd160314160351_))))))
                        (_loop160319160363_ _target160316160357_ '()))))
                   (___match162548162549_
                    (lambda (_e160312160337_
                             _hd160311160341_
                             _tl160310160344_
                             _e160315160347_
                             _hd160314160351_
                             _tl160313160354_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl160313160354_))
                          (let ((___splice162498162499_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl160313160354_
                                    '0))))
                            (let ((_tl160318160360_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice162498162499_ '1)))
                                  (_target160316160357_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice162498162499_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl160318160360_))
                                  (___match162556162557_
                                   _e160312160337_
                                   _hd160311160341_
                                   _tl160310160344_
                                   _e160315160347_
                                   _hd160314160351_
                                   _tl160313160354_
                                   ___splice162498162499_
                                   _target160316160357_
                                   _tl160318160360_)
                                  (let ()
                                    (declare (not safe))
                                    (_g160283160330_)))))
                          (let () (declare (not safe)) (_g160283160330_)))))
                   (___match162536162537_
                    (lambda (_e160289160422_
                             _hd160288160426_
                             _tl160287160429_
                             _e160292160432_
                             _hd160291160436_
                             _tl160290160439_
                             _e160295160442_
                             _hd160294160446_
                             _tl160293160449_
                             _e160298160452_
                             _hd160297160456_
                             _tl160296160459_
                             ___splice162494162495_
                             _target160299160462_
                             _tl160301160465_)
                      (letrec ((_loop160302160468_
                                (lambda (_hd160300160472_ _sig160306160475_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd160300160472_))
                                      (let ((_e160303160478_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _hd160300160472_))))
                                        (let ((_lp-tl160305160485_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e160303160478_)))
                                              (_lp-hd160304160482_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e160303160478_))))
                                          (_loop160302160468_
                                           _lp-tl160305160485_
                                           (cons _lp-hd160304160482_
                                                 _sig160306160475_))))
                                      (let ((_sig160307160488_
                                             (reverse _sig160306160475_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160293160449_))
                                            (___kont162492162493_
                                             _sig160307160488_
                                             _hd160291160436_)
                                            (___match162548162549_
                                             _e160289160422_
                                             _hd160288160426_
                                             _tl160287160429_
                                             _e160292160432_
                                             _hd160291160436_
                                             _tl160290160439_)))))))
                        (_loop160302160468_ _target160299160462_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx162489162490_))
                  (let ((_e160289160422_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e ___stx162489162490_))))
                    (let ((_tl160287160429_
                           (let ()
                             (declare (not safe))
                             (##cdr _e160289160422_)))
                          (_hd160288160426_
                           (let ()
                             (declare (not safe))
                             (##car _e160289160422_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl160287160429_))
                          (let ((_e160292160432_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _tl160287160429_))))
                            (let ((_tl160290160439_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e160292160432_)))
                                  (_hd160291160436_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e160292160432_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl160290160439_))
                                  (let ((_e160295160442_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _tl160290160439_))))
                                    (let ((_tl160293160449_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e160295160442_)))
                                          (_hd160294160446_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e160295160442_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _hd160294160446_))
                                          (let ((_e160298160452_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _hd160294160446_))))
                                            (let ((_tl160296160459_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e160298160452_)))
                                                  (_hd160297160456_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e160298160452_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _hd160297160456_))
                                                  (if (let ((__tmp162923
                                                             |gxc[1]#_g162924_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp162923
                                                         _hd160297160456_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _tl160296160459_))
                                                          (let ((___splice162494162495_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl160296160459_ '0))))
                    (let ((_tl160301160465_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice162494162495_ '1)))
                          (_target160299160462_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice162494162495_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl160301160465_))
                          (___match162536162537_
                           _e160289160422_
                           _hd160288160426_
                           _tl160287160429_
                           _e160292160432_
                           _hd160291160436_
                           _tl160290160439_
                           _e160295160442_
                           _hd160294160446_
                           _tl160293160449_
                           _e160298160452_
                           _hd160297160456_
                           _tl160296160459_
                           ___splice162494162495_
                           _target160299160462_
                           _tl160301160465_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl160290160439_))
                              (let ((___splice162498162499_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl160290160439_
                                        '0))))
                                (let ((_tl160318160360_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice162498162499_
                                          '1)))
                                      (_target160316160357_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice162498162499_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160318160360_))
                                      (___match162556162557_
                                       _e160289160422_
                                       _hd160288160426_
                                       _tl160287160429_
                                       _e160292160432_
                                       _hd160291160436_
                                       _tl160290160439_
                                       ___splice162498162499_
                                       _target160316160357_
                                       _tl160318160360_)
                                      (let ()
                                        (declare (not safe))
                                        (_g160283160330_)))))
                              (let ()
                                (declare (not safe))
                                (_g160283160330_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl160290160439_))
                      (let ((___splice162498162499_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl160290160439_ '0))))
                        (let ((_tl160318160360_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162498162499_ '1)))
                              (_target160316160357_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162498162499_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160318160360_))
                              (___match162556162557_
                               _e160289160422_
                               _hd160288160426_
                               _tl160287160429_
                               _e160292160432_
                               _hd160291160436_
                               _tl160290160439_
                               ___splice162498162499_
                               _target160316160357_
                               _tl160318160360_)
                              (let ()
                                (declare (not safe))
                                (_g160283160330_)))))
                      (let () (declare (not safe)) (_g160283160330_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _tl160290160439_))
                  (let ((___splice162498162499_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _tl160290160439_ '0))))
                    (let ((_tl160318160360_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice162498162499_ '1)))
                          (_target160316160357_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice162498162499_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl160318160360_))
                          (___match162556162557_
                           _e160289160422_
                           _hd160288160426_
                           _tl160287160429_
                           _e160292160432_
                           _hd160291160436_
                           _tl160290160439_
                           ___splice162498162499_
                           _target160316160357_
                           _tl160318160360_)
                          (let () (declare (not safe)) (_g160283160330_)))))
                  (let () (declare (not safe)) (_g160283160330_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160290160439_))
                                                      (let ((___splice162498162499_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160290160439_ '0))))
                (let ((_tl160318160360_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162498162499_ '1)))
                      (_target160316160357_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162498162499_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160318160360_))
                      (___match162556162557_
                       _e160289160422_
                       _hd160288160426_
                       _tl160287160429_
                       _e160292160432_
                       _hd160291160436_
                       _tl160290160439_
                       ___splice162498162499_
                       _target160316160357_
                       _tl160318160360_)
                      (let () (declare (not safe)) (_g160283160330_)))))
              (let () (declare (not safe)) (_g160283160330_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl160290160439_))
                                              (let ((___splice162498162499_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl160290160439_
                                                        '0))))
                                                (let ((_tl160318160360_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice162498162499_
                                                          '1)))
                                                      (_target160316160357_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice162498162499_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl160318160360_))
                                                      (___match162556162557_
                                                       _e160289160422_
                                                       _hd160288160426_
                                                       _tl160287160429_
                                                       _e160292160432_
                                                       _hd160291160436_
                                                       _tl160290160439_
                                                       ___splice162498162499_
                                                       _target160316160357_
                                                       _tl160318160360_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g160283160330_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g160283160330_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl160290160439_))
                                      (let ((___splice162498162499_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl160290160439_
                                                '0))))
                                        (let ((_tl160318160360_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice162498162499_
                                                  '1)))
                                              (_target160316160357_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice162498162499_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl160318160360_))
                                              (___match162556162557_
                                               _e160289160422_
                                               _hd160288160426_
                                               _tl160287160429_
                                               _e160292160432_
                                               _hd160291160436_
                                               _tl160290160439_
                                               ___splice162498162499_
                                               _target160316160357_
                                               _tl160318160360_)
                                              (let ()
                                                (declare (not safe))
                                                (_g160283160330_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g160283160330_))))))
                          (let () (declare (not safe)) (_g160283160330_)))))
                  (let () (declare (not safe)) (_g160283160330_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_ctx161288_ _id161290_)
        (let ((_proc161294_
               (let ((__tmp162925
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _id161290_)))))
                 (declare (not safe))
                 (__with-catch false __tmp162925))))
          (if (let () (declare (not safe)) (procedure? _proc161294_))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _ctx161288_
                 _id161290_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_ctx161279_ _id161281_)
        (let ((_klass161285_
               (let ((__tmp162926
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _id161281_)))))
                 (declare (not safe))
                 (__with-catch false __tmp162926))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass161285_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _ctx161279_
                 _id161281_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_ctx160529_ _proc160531_ _sig160532_)
        (letrec ((_signature-arity160534_
                  (lambda (_args161211_)
                    (let _loop161214_ ((_rest161217_ _args161211_)
                                       (_count161219_ '0))
                      (let* ((_rest161220161231_ _rest161217_)
                             (_E161224161237_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _rest161220161231_)))))
                        (let ((_K161227161268_
                               (lambda (_rest161265_)
                                 (let ((__tmp162927
                                        (let ()
                                          (declare (not safe))
                                          (##fx+ _count161219_ '1))))
                                   (declare (not safe))
                                   (_loop161214_ _rest161265_ __tmp162927))))
                              (_K161226161257_ (lambda () _count161219_))
                              (_K161225161245_
                               (lambda () (cons _count161219_ '()))))
                          (let ((_try-match161222161261_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _rest161220161231_))
                                       (let ()
                                         (declare (not safe))
                                         (_K161226161257_))
                                       (let ()
                                         (declare (not safe))
                                         (_K161225161245_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _rest161220161231_))
                                (let* ((_tl161229161272_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _rest161220161231_)))
                                       (_rest161276_ _tl161229161272_))
                                  (declare (not safe))
                                  (_K161227161268_ _rest161276_))
                                (let ()
                                  (declare (not safe))
                                  (_try-match161222161261_)))))))))
                 (_make-signature160536_
                  (lambda (_args161093_
                           _return161095_
                           _effect161096_
                           _unchecked161097_)
                    (let ((__tmp162928
                           (lambda (_g161098161100_)
                             (let ()
                               (declare (not safe))
                               (|gxc[1]#verify-class!|
                                _ctx160529_
                                _g161098161100_)))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp162928 _args161093_))
                    (let ()
                      (declare (not safe))
                      (|gxc[1]#verify-class!| _ctx160529_ _return161095_))
                    (if _unchecked161097_
                        (let ()
                          (declare (not safe))
                          (|gxc[1]#verify-procedure!|
                           _ctx160529_
                           _unchecked161097_))
                        '#!void)
                    (let ((_arity161104_
                           (let ((__tmp162929
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-map1 gx#stx-e _args161093_))))
                             (declare (not safe))
                             (_signature-arity160534_ __tmp162929))))
                      (if _effect161096_
                          (let ((_effect161107_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _effect161096_))))
                            (if (and (let ()
                                       (declare (not safe))
                                       (list? _effect161107_))
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _effect161107_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _ctx160529_
                                   _proc160531_
                                   _effect161107_))))
                          '#!void)
                      (cons _arity161104_
                            (cons (let* ((_g161110161133_
                                          (lambda (_g161111161129_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _g161111161129_))))
                                         (_g161109161207_
                                          (lambda (_g161111161137_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _g161111161137_))
                                                (let ((_e161118161140_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _g161111161137_))))
                                                  (let ((_hd161117161144_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e161118161140_)))
                                                        (_tl161116161147_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e161118161140_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl161116161147_))
                                                        (let ((_e161121161150_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl161116161147_))))
                  (let ((_hd161120161154_
                         (let () (declare (not safe)) (##car _e161121161150_)))
                        (_tl161119161157_
                         (let ()
                           (declare (not safe))
                           (##cdr _e161121161150_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl161119161157_))
                        (let ((_e161124161160_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl161119161157_))))
                          (let ((_hd161123161164_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e161124161160_)))
                                (_tl161122161167_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e161124161160_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl161122161167_))
                                (let ((_e161127161170_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl161122161167_))))
                                  (let ((_hd161126161174_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e161127161170_)))
                                        (_tl161125161177_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e161127161170_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161125161177_))
                                        ((lambda (_L161180_
                                                  _L161182_
                                                  _L161183_
                                                  _L161184_)
                                           (let ()
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'make-!signature))
                                                   (cons 'arguments:
                                                         (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'quote))
                             (cons _L161184_ '()))
                       (cons 'return:
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _L161183_ '()))
                                   (cons 'effect:
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _L161182_ '()))
                                               (cons 'unchecked:
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _L161180_ '()))
                   '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _hd161126161174_
                                         _hd161123161164_
                                         _hd161120161154_
                                         _hd161117161144_)
                                        (let ()
                                          (declare (not safe))
                                          (_g161110161133_ _g161111161137_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g161110161133_ _g161111161137_)))))
                        (let ()
                          (declare (not safe))
                          (_g161110161133_ _g161111161137_)))))
                (let ()
                  (declare (not safe))
                  (_g161110161133_ _g161111161137_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g161110161133_
                                                   _g161111161137_)))))
                                         (__tmp162930
                                          (list _args161093_
                                                _return161095_
                                                _effect161096_
                                                _unchecked161097_)))
                                    (declare (not safe))
                                    (_g161109161207_ __tmp162930))
                                  '()))))))
          (let ()
            (declare (not safe))
            (|gxc[1]#verify-procedure!| _ctx160529_ _proc160531_))
          (let* ((___stx162567162568_ _sig160532_)
                 (_g160543160646_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx162567162568_)))))
            (let ((___kont162570162571_
                   (lambda (_L161074_ _L161076_)
                     (let ()
                       (declare (not safe))
                       (_make-signature160536_ _L161076_ _L161074_ '#f '#f))))
                  (___kont162572162573_
                   (lambda (_L161025_ _L161027_ _L161028_)
                     (let ()
                       (declare (not safe))
                       (_make-signature160536_
                        _L161028_
                        _L161027_
                        _L161025_
                        '#f))))
                  (___kont162574162575_
                   (lambda (_L160949_ _L160951_ _L160952_)
                     (let ((__tmp162931
                            (let ((__tmp162932
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _proc160531_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp162932))))
                       (declare (not safe))
                       (_make-signature160536_
                        _L160952_
                        _L160951_
                        _L160949_
                        __tmp162931))))
                  (___kont162576162577_
                   (lambda (_L160855_ _L160857_ _L160858_ _L160859_)
                     (let ((__tmp162933
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L160855_))))
                       (declare (not safe))
                       (_make-signature160536_
                        _L160859_
                        _L160858_
                        '#f
                        __tmp162933))))
                  (___kont162578162579_
                   (lambda (_L160762_ _L160764_)
                     (let ((__tmp162934
                            (let ((__tmp162935
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _proc160531_))))
                              (declare (not safe))
                              (make-symbol__1 '"##" __tmp162935))))
                       (declare (not safe))
                       (_make-signature160536_
                        _L160764_
                        _L160762_
                        '#f
                        __tmp162934))))
                  (___kont162580162581_
                   (lambda (_L160697_ _L160699_ _L160700_)
                     (let ((__tmp162936
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _L160697_))))
                       (declare (not safe))
                       (_make-signature160536_
                        _L160700_
                        _L160699_
                        '#f
                        __tmp162936)))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx162567162568_))
                  (let ((_e160549161054_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e ___stx162567162568_))))
                    (let ((_tl160547161061_
                           (let ()
                             (declare (not safe))
                             (##cdr _e160549161054_)))
                          (_hd160548161058_
                           (let ()
                             (declare (not safe))
                             (##car _e160549161054_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl160547161061_))
                          (let ((_e160552161064_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _tl160547161061_))))
                            (let ((_tl160550161071_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e160552161064_)))
                                  (_hd160551161068_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e160552161064_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl160550161071_))
                                  (___kont162570162571_
                                   _hd160551161068_
                                   _hd160548161058_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl160550161071_))
                                      (let ((_e160564161001_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl160550161071_))))
                                        (let ((_tl160562161008_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e160564161001_)))
                                              (_hd160563161005_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e160564161001_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _hd160563161005_))
                                              (let ((_e160565161011_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd160563161005_))))
                                                (if (equal? _e160565161011_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl160562161008_))
                                                        (let ((_e160568161015_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl160562161008_))))
                  (let ((_tl160566161022_
                         (let () (declare (not safe)) (##cdr _e160568161015_)))
                        (_hd160567161019_
                         (let ()
                           (declare (not safe))
                           (##car _e160568161015_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl160566161022_))
                        (___kont162572162573_
                         _hd160567161019_
                         _hd160551161068_
                         _hd160548161058_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160566161022_))
                            (let ((_e160587160935_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160566161022_))))
                              (let ((_tl160585160942_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160587160935_)))
                                    (_hd160586160939_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160587160935_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _hd160586160939_))
                                    (let ((_e160588160945_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd160586160939_))))
                                      (if (equal? _e160588160945_ 'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl160585160942_))
                                              (___kont162574162575_
                                               _hd160567161019_
                                               _hd160551161068_
                                               _hd160548161058_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl160585160942_))
                                                  (let ((_e160612160845_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl160585160942_))))
                                                    (let ((_tl160610160852_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e160612160845_)))
                                                          (_hd160611160849_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e160612160845_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl160610160852_))
                                                          (___kont162576162577_
                                                           _hd160611160849_
                                                           _hd160567161019_
                                                           _hd160551161068_
                                                           _hd160548161058_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g160543160646_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g160543160646_))))
                                          (let ()
                                            (declare (not safe))
                                            (_g160543160646_))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160543160646_)))))
                            (let () (declare (not safe)) (_g160543160646_))))))
                (let () (declare (not safe)) (_g160543160646_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _e160565161011_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _tl160562161008_))
                                                            (___kont162578162579_
                                                             _hd160551161068_
                                                             _hd160548161058_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl160562161008_))
                        (let ((_e160640160687_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160562161008_))))
                          (let ((_tl160638160694_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160640160687_)))
                                (_hd160639160691_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160640160687_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl160638160694_))
                                (___kont162580162581_
                                 _hd160639160691_
                                 _hd160551161068_
                                 _hd160548161058_)
                                (let ()
                                  (declare (not safe))
                                  (_g160543160646_)))))
                        (let () (declare (not safe)) (_g160543160646_))))
                (let () (declare (not safe)) (_g160543160646_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g160543160646_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g160543160646_))))))
                          (let () (declare (not safe)) (_g160543160646_)))))
                  (let () (declare (not safe)) (_g160543160646_))))))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_stx161297_)
        (let* ((_g161300161318_
                (lambda (_g161301161314_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g161301161314_))))
               (_g161299161373_
                (lambda (_g161301161322_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g161301161322_))
                      (let ((_e161306161325_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g161301161322_))))
                        (let ((_hd161305161329_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161306161325_)))
                              (_tl161304161332_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161306161325_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl161304161332_))
                              (let ((_e161309161335_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl161304161332_))))
                                (let ((_hd161308161339_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e161309161335_)))
                                      (_tl161307161342_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e161309161335_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl161307161342_))
                                      (let ((_e161312161345_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl161307161342_))))
                                        (let ((_hd161311161349_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e161312161345_)))
                                              (_tl161310161352_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e161312161345_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl161310161352_))
                                              ((lambda (_L161355_ _L161357_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L161357_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _L161355_)))
                                                     (begin
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-procedure!|
                                                          _stx161297_
                                                          _L161357_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (|gxc[1]#verify-class!|
                                                          _stx161297_
                                                          _L161355_))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _L161357_
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'make-!primitive-predicate))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _L161355_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g161300161318_
                                                      _g161301161322_)))
                                               _hd161311161349_
                                               _hd161308161339_)
                                              (_g161300161318_
                                               _g161301161322_))))
                                      (_g161300161318_ _g161301161322_))))
                              (_g161300161318_ _g161301161322_))))
                      (_g161300161318_ _g161301161322_)))))
          (_g161299161373_ _stx161297_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_stx161377_)
        (let* ((_g161380161404_
                (lambda (_g161381161400_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g161381161400_))))
               (_g161379161553_
                (lambda (_g161381161408_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g161381161408_))
                      (let ((_e161386161411_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g161381161408_))))
                        (let ((_hd161385161415_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161386161411_)))
                              (_tl161384161418_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161386161411_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl161384161418_))
                              (let ((_e161389161421_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl161384161418_))))
                                (let ((_hd161388161425_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e161389161421_)))
                                      (_tl161387161428_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e161389161421_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl161387161428_))
                                      (let ((_g162937_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl161387161428_
                                                '0))))
                                        (begin
                                          (let ((_g162938_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g162937_)
                                                       (##vector-length
                                                        _g162937_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g162938_ 2)))
                                                (error "Context expects 2 values"
                                                       _g162938_)))
                                          (let ((_target161390161431_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g162937_ 0)))
                                                (_tl161392161434_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g162937_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl161392161434_))
                                                (letrec ((_loop161393161437_
                                                          (lambda (_hd161391161441_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _signature161397161444_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd161391161441_))
                        (let ((_e161394161447_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd161391161441_))))
                          (let ((_lp-hd161395161451_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e161394161447_)))
                                (_lp-tl161396161454_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e161394161447_))))
                            (_loop161393161437_
                             _lp-tl161396161454_
                             (cons _lp-hd161395161451_
                                   _signature161397161444_))))
                        (let ((_signature161398161457_
                               (reverse _signature161397161444_)))
                          ((lambda (_L161461_ _L161463_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L161463_))
                                 (let* ((_g161481161496_
                                         (lambda (_g161482161492_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g161482161492_))))
                                        (_g161480161541_
                                         (lambda (_g161482161500_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g161482161500_))
                                               (let ((_e161487161503_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _g161482161500_))))
                                                 (let ((_hd161486161507_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e161487161503_)))
                                                       (_tl161485161510_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e161487161503_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl161485161510_))
                                                       (let ((_e161490161513_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _tl161485161510_))))
                 (let ((_hd161489161517_
                        (let () (declare (not safe)) (##car _e161490161513_)))
                       (_tl161488161520_
                        (let () (declare (not safe)) (##cdr _e161490161513_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl161488161520_))
                       ((lambda (_L161523_ _L161525_)
                          (let ()
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'declare-type))
                                  (cons _L161463_
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!primitive-lambda))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _L161525_ '()))
                  (cons '#f (cons 'signature: (cons _L161523_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))
                        _hd161489161517_
                        _hd161486161507_)
                       (_g161481161496_ _g161482161500_))))
               (_g161481161496_ _g161482161500_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g161481161496_
                                                _g161482161500_)))))
                                   (_g161480161541_
                                    (let ((__tmp162939
                                           (let ((__tmp162940
                                                  (lambda (_g161544161547_
                                                           _g161545161550_)
                                                    (cons _g161544161547_
                                                          _g161545161550_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp162940
                                              '()
                                              _L161461_))))
                                      (declare (not safe))
                                      (|gxc[1]#parse-signature|
                                       _stx161377_
                                       _L161463_
                                       __tmp162939))))
                                 (_g161380161404_ _g161381161408_)))
                           _signature161398161457_
                           _hd161388161425_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop161393161437_
                                                   _target161390161431_
                                                   '()))
                                                (_g161380161404_
                                                 _g161381161408_)))))
                                      (_g161380161404_ _g161381161408_))))
                              (_g161380161404_ _g161381161408_))))
                      (_g161380161404_ _g161381161408_)))))
          (_g161379161553_ _stx161377_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_stx161558_)
        (let* ((_g161561161585_
                (lambda (_g161562161581_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g161562161581_))))
               (_g161560161795_
                (lambda (_g161562161589_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g161562161589_))
                      (let ((_e161567161592_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g161562161589_))))
                        (let ((_hd161566161596_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161567161592_)))
                              (_tl161565161599_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161567161592_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl161565161599_))
                              (let ((_e161570161602_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl161565161599_))))
                                (let ((_hd161569161606_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e161570161602_)))
                                      (_tl161568161609_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e161570161602_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl161568161609_))
                                      (let ((_g162941_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl161568161609_
                                                '0))))
                                        (begin
                                          (let ((_g162942_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g162941_)
                                                       (##vector-length
                                                        _g162941_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g162942_ 2)))
                                                (error "Context expects 2 values"
                                                       _g162942_)))
                                          (let ((_target161571161612_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g162941_ 0)))
                                                (_tl161573161615_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g162941_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl161573161615_))
                                                (letrec ((_loop161574161618_
                                                          (lambda (_hd161572161622_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _case-signature161578161625_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd161572161622_))
                        (let ((_e161575161628_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _hd161572161622_))))
                          (let ((_lp-hd161576161632_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e161575161628_)))
                                (_lp-tl161577161635_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e161575161628_))))
                            (_loop161574161618_
                             _lp-tl161577161635_
                             (cons _lp-hd161576161632_
                                   _case-signature161578161625_))))
                        (let ((_case-signature161579161638_
                               (reverse _case-signature161578161625_)))
                          ((lambda (_L161642_ _L161644_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L161644_))
                                 (let* ((_g161662161688_
                                         (lambda (_g161663161684_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g161663161684_))))
                                        (_g161661161778_
                                         (lambda (_g161663161692_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _g161663161692_))
                                               (let ((_g162943_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _g161663161692_
                                                         '0))))
                                                 (begin
                                                   (let ((_g162944_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g162943_)
                        (##vector-length _g162943_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g162944_ 2)))
                 (error "Context expects 2 values" _g162944_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target161666161695_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g162943_
                                                             0)))
                                                         (_tl161668161698_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g162943_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl161668161698_))
                                                         (letrec ((_loop161669161701_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd161667161705_
                                    _sig161673161708_
                                    _arity161674161710_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _hd161667161705_))
                                 (let ((_e161670161713_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _hd161667161705_))))
                                   (let ((_lp-hd161671161717_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e161670161713_)))
                                         (_lp-tl161672161720_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e161670161713_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _lp-hd161671161717_))
                                         (let ((_e161679161723_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _lp-hd161671161717_))))
                                           (let ((_hd161678161727_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e161679161723_)))
                                                 (_tl161677161730_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e161679161723_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl161677161730_))
                                                 (let ((_e161682161733_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _tl161677161730_))))
                                                   (let ((_hd161681161737_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e161682161733_)))
                                                         (_tl161680161740_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e161682161733_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl161680161740_))
                                                         (_loop161669161701_
                                                          _lp-tl161672161720_
                                                          (cons _hd161681161737_
                                                                _sig161673161708_)
                                                          (cons _hd161678161727_
                                                                _arity161674161710_))
                                                         (_g161662161688_
                                                          _g161663161692_))))
                                                 (_g161662161688_
                                                  _g161663161692_))))
                                         (_g161662161688_ _g161663161692_))))
                                 (let ((_sig161675161743_
                                        (reverse _sig161673161708_))
                                       (_arity161676161746_
                                        (reverse _arity161674161710_)))
                                   ((lambda (_L161749_ _L161751_)
                                      (let ()
                                        (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'declare-type))
                                              (cons _L161644_
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f '@list))
                                    (begin
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-check-splice-targets
                                         _L161749_
                                         _L161751_))
                                      (let ((__tmp162945
                                             (lambda (_g161766161770_
                                                      _g161767161773_
                                                      _g161768161775_)
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'make-!primitive-lambda))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _g161767161773_ '()))
                         (cons '#f
                               (cons 'signature: (cons _g161766161770_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g161768161775_))))
                                        (declare (not safe))
                                        (__foldr2
                                         __tmp162945
                                         '()
                                         _L161749_
                                         _L161751_))))
                              '()))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _sig161675161743_
                                    _arity161676161746_))))))
                   (_loop161669161701_ _target161666161695_ '() '()))
                 (_g161662161688_ _g161663161692_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g161662161688_
                                                _g161663161692_)))))
                                   (_g161661161778_
                                    (map (lambda (_g161781161783_)
                                           (let ()
                                             (declare (not safe))
                                             (|gxc[1]#parse-signature|
                                              _stx161558_
                                              _L161644_
                                              _g161781161783_)))
                                         (let ((__tmp162946
                                                (lambda (_g161786161789_
                                                         _g161787161792_)
                                                  (cons _g161786161789_
                                                        _g161787161792_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp162946
                                            '()
                                            _L161642_)))))
                                 (_g161561161585_ _g161562161589_)))
                           _case-signature161579161638_
                           _hd161569161606_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop161574161618_
                                                   _target161571161612_
                                                   '()))
                                                (_g161561161585_
                                                 _g161562161589_)))))
                                      (_g161561161585_ _g161562161589_))))
                              (_g161561161585_ _g161562161589_))))
                      (_g161561161585_ _g161562161589_)))))
          (_g161560161795_ _stx161558_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_$stx161801_)
        (let* ((___stx162783162784_ _$stx161801_)
               (_g161807161867_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx162783162784_)))))
          (let ((___kont162786162787_
                 (lambda (_L162089_ _L162091_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _L162091_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _L162091_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _L162089_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont162788162789_
                 (lambda (_L162014_ _L162016_ _L162017_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _L162017_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _L162017_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _L162016_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _L162014_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (___kont162790162791_
                 (lambda (_L161928_ _L161930_ _L161931_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _L161931_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _L161931_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _L161930_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _L161928_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162783162784_))
                (let ((_e161813162045_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162783162784_))))
                  (let ((_tl161811162052_
                         (let () (declare (not safe)) (##cdr _e161813162045_)))
                        (_hd161812162049_
                         (let ()
                           (declare (not safe))
                           (##car _e161813162045_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl161811162052_))
                        (let ((_e161816162055_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl161811162052_))))
                          (let ((_tl161814162062_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e161816162055_)))
                                (_hd161815162059_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e161816162055_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd161815162059_))
                                (let ((_e161817162065_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd161815162059_))))
                                  (if (equal? _e161817162065_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl161814162062_))
                                          (let ((_e161820162069_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _tl161814162062_))))
                                            (let ((_tl161818162076_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e161820162069_)))
                                                  (_hd161819162073_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e161820162069_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl161818162076_))
                                                  (let ((_e161823162079_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl161818162076_))))
                                                    (let ((_tl161821162086_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e161823162079_)))
                                                          (_hd161822162083_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e161823162079_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl161821162086_))
                                                          (___kont162786162787_
                                                           _hd161822162083_
                                                           _hd161819162073_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g161807161867_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g161807161867_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g161807161867_)))
                                      (if (equal? _e161817162065_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl161814162062_))
                                              (let ((_e161836161984_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _tl161814162062_))))
                                                (let ((_tl161834161991_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e161836161984_)))
                                                      (_hd161835161988_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e161836161984_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl161834161991_))
                                                      (let ((_e161839161994_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _tl161834161991_))))
                (let ((_tl161837162001_
                       (let () (declare (not safe)) (##cdr _e161839161994_)))
                      (_hd161838161998_
                       (let () (declare (not safe)) (##car _e161839161994_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl161837162001_))
                      (let ((_e161842162004_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl161837162001_))))
                        (let ((_tl161840162011_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161842162004_)))
                              (_hd161841162008_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161842162004_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl161840162011_))
                              (___kont162788162789_
                               _hd161841162008_
                               _hd161838161998_
                               _hd161835161988_)
                              (let ()
                                (declare (not safe))
                                (_g161807161867_)))))
                      (let () (declare (not safe)) (_g161807161867_)))))
              (let () (declare (not safe)) (_g161807161867_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g161807161867_)))
                                          (if (equal? _e161817162065_ 'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl161814162062_))
                                                  (let ((_e161855161898_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl161814162062_))))
                                                    (let ((_tl161853161905_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e161855161898_)))
                                                          (_hd161854161902_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e161855161898_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl161853161905_))
                                                          (let ((_e161858161908_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _tl161853161905_))))
                    (let ((_tl161856161915_
                           (let ()
                             (declare (not safe))
                             (##cdr _e161858161908_)))
                          (_hd161857161912_
                           (let ()
                             (declare (not safe))
                             (##car _e161858161908_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl161856161915_))
                          (let ((_e161861161918_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _tl161856161915_))))
                            (let ((_tl161859161925_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e161861161918_)))
                                  (_hd161860161922_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e161861161918_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl161859161925_))
                                  (___kont162790162791_
                                   _hd161860161922_
                                   _hd161857161912_
                                   _hd161854161902_)
                                  (let ()
                                    (declare (not safe))
                                    (_g161807161867_)))))
                          (let () (declare (not safe)) (_g161807161867_)))))
                  (let () (declare (not safe)) (_g161807161867_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g161807161867_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g161807161867_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g161807161867_)))))
                        (let () (declare (not safe)) (_g161807161867_)))))
                (let () (declare (not safe)) (_g161807161867_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_$stx162113_)
        (let* ((_g162117162137_
                (lambda (_g162118162133_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g162118162133_))))
               (_g162116162208_
                (lambda (_g162118162141_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g162118162141_))
                      (let ((_e162122162144_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _g162118162141_))))
                        (let ((_hd162121162148_
                               (let ()
                                 (declare (not safe))
                                 (##car _e162122162144_)))
                              (_tl162120162151_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e162122162144_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl162120162151_))
                              (let ((_g162947_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl162120162151_
                                        '0))))
                                (begin
                                  (let ((_g162948_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162947_)
                                               (##vector-length _g162947_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162948_ 2)))
                                        (error "Context expects 2 values"
                                               _g162948_)))
                                  (let ((_target162123162154_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162947_ 0)))
                                        (_tl162125162157_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162947_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl162125162157_))
                                        (letrec ((_loop162126162160_
                                                  (lambda (_hd162124162164_
                                                           _decl162130162167_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd162124162164_))
                                                        (let ((_e162127162170_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd162124162164_))))
                  (let ((_lp-hd162128162174_
                         (let () (declare (not safe)) (##car _e162127162170_)))
                        (_lp-tl162129162177_
                         (let ()
                           (declare (not safe))
                           (##cdr _e162127162170_))))
                    (_loop162126162160_
                     _lp-tl162129162177_
                     (cons _lp-hd162128162174_ _decl162130162167_))))
                (let ((_decl162131162180_ (reverse _decl162130162167_)))
                  ((lambda (_L162184_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp162949
                                  (lambda (_g162199162202_ _g162200162205_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _g162199162202_)
                                          _g162200162205_))))
                             (declare (not safe))
                             (__foldr1 __tmp162949 '() _L162184_))))
                   _decl162131162180_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop162126162160_
                                           _target162123162154_
                                           '()))
                                        (_g162117162137_ _g162118162141_)))))
                              (_g162117162137_ _g162118162141_))))
                      (_g162117162137_ _g162118162141_)))))
          (_g162116162208_ _$stx162113_))))))
