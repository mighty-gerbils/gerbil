(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g13208_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13209_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13210_|
    (##structure
     gx#syntax-quote::t
     'Exception::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13211_|
    (##structure
     gx#syntax-quote::t
     'make-SyntaxError
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13212_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13213_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-message
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13214_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-irritants
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13215_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-where
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13216_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-context
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13217_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13218_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13219_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-message-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13220_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-irritants-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13221_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-where-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13222_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13223_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13224_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-marks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13225_|
    (##structure
     gx#syntax-quote::t
     'Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13226_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13227_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13228_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13229_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13230_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13231_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g13232_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#core-ast-case|
      (lambda (_$stx11525_)
        (let* ((_g1152911553_
                (lambda (_g1153011549_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1153011549_)))
               (_g1152811639_
                (lambda (_g1153011557_)
                  (if (gx#stx-pair? _g1153011557_)
                      (let ((_e1153311560_ (gx#syntax-e _g1153011557_)))
                        (let ((_hd1153411564_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1153311560_)))
                              (_tl1153511567_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1153311560_))))
                          (if (gx#stx-pair? _tl1153511567_)
                              (let ((_e1153611570_
                                     (gx#syntax-e _tl1153511567_)))
                                (let ((_hd1153711574_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1153611570_)))
                                      (_tl1153811577_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1153611570_))))
                                  (if (gx#stx-pair/null? _tl1153811577_)
                                      (let ((_g13204_
                                             (gx#syntax-split-splice
                                              _tl1153811577_
                                              '0)))
                                        (begin
                                          (let ((_g13205_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g13204_)
                                                       (##vector-length
                                                        _g13204_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g13205_ 2)))
                                                (error "Context expects 2 values"
                                                       _g13205_)))
                                          (let ((_target1153911580_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g13204_ 0)))
                                                (_tl1154111583_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g13204_ 1))))
                                            (if (gx#stx-null? _tl1154111583_)
                                                (letrec ((_loop1154211586_
                                                          (lambda (_hd1154011590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body1154611593_)
                    (if (gx#stx-pair? _hd1154011590_)
                        (let ((_e1154311596_ (gx#syntax-e _hd1154011590_)))
                          (let ((_lp-hd1154411600_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1154311596_)))
                                (_lp-tl1154511603_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1154311596_))))
                            (_loop1154211586_
                             _lp-tl1154511603_
                             (cons _lp-hd1154411600_ _body1154611593_))))
                        (let ((_body1154711606_ (reverse _body1154611593_)))
                          ((lambda (_L11610_ _L11612_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (gx#datum->syntax '#f '$e)
                                               (cons _L11612_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'core-ast-case%)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$e)
                                                           (foldr1 (lambda (_g1163011633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1163111636_)
                             (cons _g1163011633_ _g1163111636_))
                           '()
                           _L11610_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _body1154711606_
                           _hd1153711574_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1154211586_
                                                   _target1153911580_
                                                   '()))
                                                (_g1152911553_
                                                 _g1153011557_)))))
                                      (_g1152911553_ _g1153011557_))))
                              (_g1152911553_ _g1153011557_))))
                      (_g1152911553_ _g1153011557_)))))
          (_g1152811639_ _$stx11525_))))
    (define |[:0:]#core-ast-case%|
      (lambda (_stx11644_)
        (letrec ((_generate111647_
                  (lambda (_hd12188_ _tgt12190_ _K12191_ _E12192_ _kws12193_)
                    (let* ((_g1219512203_
                            (lambda (_g1219612199_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1219612199_)))
                           (_g1219412630_
                            (lambda (_g1219612207_)
                              ((lambda (_L12210_)
                                 (let ()
                                   (let* ((___stx1310713108_ _hd12188_)
                                          (_g1222412238_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx1310713108_))))
                                     (let ((___kont1311013111_
                                            (lambda (_L12452_ _L12454_)
                                              (let* ((_g1246512473_
                                                      (lambda (_g1246612469_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1246612469_)))
                                                     (_g1246412622_
                                                      (lambda (_g1246612477_)
                                                        ((lambda (_L12480_)
                                                           (let ()
                                                             (let* ((_g1249212500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1249312496_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1249312496_)))
                            (_g1249112618_
                             (lambda (_g1249312504_)
                               ((lambda (_L12507_)
                                  (let ()
                                    (let* ((_g1252012528_
                                            (lambda (_g1252112524_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g1252112524_)))
                                           (_g1251912614_
                                            (lambda (_g1252112532_)
                                              ((lambda (_L12535_)
                                                 (let ()
                                                   (let* ((_g1254812556_
                                                           (lambda (_g1254912552_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1254912552_)))
                                                          (_g1254712610_
                                                           (lambda (_g1254912560_)
                                                             ((lambda (_L12563_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g1257612584_
                                  (lambda (_g1257712580_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1257712580_)))
                                 (_g1257512606_
                                  (lambda (_g1257712588_)
                                    ((lambda (_L12591_)
                                       (let ()
                                         (let ()
                                           (cons (gx#datum->syntax '#f 'if)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__AST-pair?)
                                                             (cons _L12210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f 'let*)
                           (cons (cons (cons _L12480_
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '__AST-e)
                                                         (cons _L12210_ '()))
                                                   '()))
                                       (cons (cons _L12507_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##car)
                                                               (cons _L12480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons _L12535_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##cdr)
                             (cons _L12480_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 (cons _L12563_ '())))
                     (cons _L12591_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g1257712588_))))
                            (_g1257512606_ _E12192_))))
                      _g1254912560_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1254712610_
                                                      (_generate111647_
                                                       _L12454_
                                                       _L12507_
                                                       (_generate111647_
                                                        _L12452_
                                                        _L12535_
                                                        _K12191_
                                                        _E12192_
                                                        _kws12193_)
                                                       _E12192_
                                                       _kws12193_)))))
                                               _g1252112532_))))
                                      (_g1251912614_ (gx#genident '$tl)))))
                                _g1249312504_))))
                       (_g1249112618_ (gx#genident '$hd)))))
                 _g1246612477_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1246412622_
                                                 (gx#genident '$tgt)))))
                                           (___kont1311213113_
                                            (lambda (_L12327_)
                                              (if (gx#underscore? _L12327_)
                                                  _K12191_
                                                  (if (find (lambda (_g1233512337_)
                                                              (gx#bound-identifier=?
                                                               _g1233512337_
                                                               _L12327_))
                                                            (gx#syntax->list
                                                             _kws12193_))
                                                      (let* ((_g1234112356_
                                                              (lambda (_g1234212352_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g1234212352_)))
                     (_g1234012401_
                      (lambda (_g1234212360_)
                        (if (gx#stx-pair? _g1234212360_)
                            (let ((_e1234512363_ (gx#syntax-e _g1234212360_)))
                              (let ((_hd1234612367_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1234512363_)))
                                    (_tl1234712370_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1234512363_))))
                                (if (gx#stx-pair? _tl1234712370_)
                                    (let ((_e1234812373_
                                           (gx#syntax-e _tl1234712370_)))
                                      (let ((_hd1234912377_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1234812373_)))
                                            (_tl1235012380_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1234812373_))))
                                        (if (gx#stx-null? _tl1235012380_)
                                            ((lambda (_L12383_ _L12385_)
                                               (let ()
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'if)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'and)
                           (cons (cons (gx#datum->syntax '#f '__AST-id?)
                                       (cons _L12210_ '()))
                                 (cons (cons (gx#datum->syntax '#f 'eq?)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '__AST-e)
                                                         (cons _L12210_ '()))
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _L12327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (cons _L12385_ (cons _L12383_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1234912377_
                                             _hd1234612367_)
                                            (_g1234112356_ _g1234212360_))))
                                    (_g1234112356_ _g1234212360_))))
                            (_g1234112356_ _g1234212360_)))))
                (_g1234012401_ (list _K12191_ _E12192_)))
              (let* ((_g1240512413_
                      (lambda (_g1240612409_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1240612409_)))
                     (_g1240412431_
                      (lambda (_g1240612417_)
                        ((lambda (_L12420_)
                           (let ()
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (cons (cons _L12327_
                                                     (cons _L12210_ '()))
                                               '())
                                         (cons _L12420_ '())))))
                         _g1240612417_))))
                (_g1240412431_ _K12191_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont1311413115_
                                            (lambda (_L12245_)
                                              (let* ((_g1225612271_
                                                      (lambda (_g1225712267_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1225712267_)))
                                                     (_g1225512316_
                                                      (lambda (_g1225712275_)
                                                        (if (gx#stx-pair?
                                                             _g1225712275_)
                                                            (let ((_e1226012278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g1225712275_)))
                      (let ((_hd1226112282_
                             (let ()
                               (declare (not safe))
                               (##car _e1226012278_)))
                            (_tl1226212285_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1226012278_))))
                        (if (gx#stx-pair? _tl1226212285_)
                            (let ((_e1226312288_ (gx#syntax-e _tl1226212285_)))
                              (let ((_hd1226412292_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1226312288_)))
                                    (_tl1226512295_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1226312288_))))
                                (if (gx#stx-null? _tl1226512295_)
                                    ((lambda (_L12298_ _L12300_)
                                       (let ()
                                         (cons (gx#datum->syntax '#f 'if)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'equal?)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '__AST-e)
                               (cons _L12210_ '()))
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L12245_ '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _L12300_
                                                           (cons _L12298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _hd1226412292_
                                     _hd1226112282_)
                                    (_g1225612271_ _g1225712275_))))
                            (_g1225612271_ _g1225712275_))))
                    (_g1225612271_ _g1225712275_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1225512316_
                                                 (list _K12191_ _E12192_))))))
                                       (let ((_g1222212435_
                                              (lambda ()
                                                (let ((_L12327_
                                                       ___stx1310713108_))
                                                  (if (gx#identifier? _L12327_)
                                                      (___kont1311213113_
                                                       _L12327_)
                                                      (___kont1311413115_
                                                       ___stx1310713108_))))))
                                         (if (gx#stx-pair? ___stx1310713108_)
                                             (let ((_e1222812442_
                                                    (gx#syntax-e
                                                     ___stx1310713108_)))
                                               (let ((_tl1223012449_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1222812442_)))
                                                     (_hd1222912446_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1222812442_))))
                                                 (___kont1311013111_
                                                  _tl1223012449_
                                                  _hd1222912446_)))
                                             (_g1222212435_)))))))
                               _g1219612207_))))
                      (_g1219412630_ _tgt12190_)))))
          (let* ((_g1165011678_
                  (lambda (_g1165111674_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1165111674_)))
                 (_g1164912184_
                  (lambda (_g1165111682_)
                    (if (gx#stx-pair? _g1165111682_)
                        (let ((_e1165511685_ (gx#syntax-e _g1165111682_)))
                          (let ((_hd1165611689_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1165511685_)))
                                (_tl1165711692_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1165511685_))))
                            (if (gx#stx-pair? _tl1165711692_)
                                (let ((_e1165811695_
                                       (gx#syntax-e _tl1165711692_)))
                                  (let ((_hd1165911699_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1165811695_)))
                                        (_tl1166011702_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1165811695_))))
                                    (if (gx#stx-pair? _tl1166011702_)
                                        (let ((_e1166111705_
                                               (gx#syntax-e _tl1166011702_)))
                                          (let ((_hd1166211709_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1166111705_)))
                                                (_tl1166311712_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1166111705_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1166311712_)
                                                (let ((_g13206_
                                                       (gx#syntax-split-splice
                                                        _tl1166311712_
                                                        '0)))
                                                  (begin
                                                    (let ((_g13207_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g13206_)
                         (##vector-length _g13206_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g13207_ 2)))
                  (error "Context expects 2 values" _g13207_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1166411715_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g13206_
                                                              0)))
                                                          (_tl1166611718_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g13206_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1166611718_)
                                                          (letrec ((_loop1166711721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1166511725_ _clause1167111728_)
                              (if (gx#stx-pair? _hd1166511725_)
                                  (let ((_e1166811731_
                                         (gx#syntax-e _hd1166511725_)))
                                    (let ((_lp-hd1166911735_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1166811731_)))
                                          (_lp-tl1167011738_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1166811731_))))
                                      (_loop1166711721_
                                       _lp-tl1167011738_
                                       (cons _lp-hd1166911735_
                                             _clause1167111728_))))
                                  (let ((_clause1167211741_
                                         (reverse _clause1167111728_)))
                                    ((lambda (_L11745_ _L11747_ _L11748_)
                                       (let _recur11770_ ((_rest11773_
                                                           (foldr1 (lambda (_g1217512178_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1217612181_)
                             (cons _g1217512178_ _g1217612181_))
                           '()
                           _L11745_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (let* ((_rest1177511784_ _rest11773_)
                                                (_E1177811790_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1177511784_))))
                                           (let ((_K1178012160_
                                                  (lambda (_rest11806_
                                                           _hd11808_)
                                                    (let* ((_g1181011818_
                                                            (lambda (_g1181111814_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1181111814_)))
                                                           (_g1180912156_
                                                            (lambda (_g1181111822_)
                                                              ((lambda (_L11825_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1184311851_
                                   (lambda (_g1184411847_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1184411847_)))
                                  (_g1184212152_
                                   (lambda (_g1184411855_)
                                     ((lambda (_L11858_)
                                        (let ()
                                          (let* ((_g1187111879_
                                                  (lambda (_g1187211875_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1187211875_)))
                                                 (_g1187012148_
                                                  (lambda (_g1187211883_)
                                                    ((lambda (_L11886_)
                                                       (let ()
                                                         (let* ((_g1189911907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1190011903_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1190011903_)))
                        (_g1189811929_
                         (lambda (_g1190011911_)
                           ((lambda (_L11914_)
                              (let ()
                                (let ()
                                  (cons (gx#datum->syntax '#f 'let)
                                        (cons (cons _L11825_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'lambda)
                        (cons '() (cons _L11886_ '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (cons _L11914_ '()))))))
                            _g1190011911_))))
                   (_g1189811929_
                    (let* ((___stx1312513126_ _hd11808_)
                           (_g1193511975_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx1312513126_))))
                      (let ((___kont1312813129_
                             (lambda (_L12121_)
                               (cons (gx#datum->syntax '#f 'begin)
                                     (foldr1 (lambda (_g1213512138_
                                                      _g1213612141_)
                                               (cons _g1213512138_
                                                     _g1213612141_))
                                             '()
                                             _L12121_))))
                            (___kont1313213133_
                             (lambda (_L12059_ _L12061_)
                               (_generate111647_
                                _L12061_
                                _L11748_
                                _L12059_
                                _L11858_
                                _L11747_)))
                            (___kont1313413135_
                             (lambda (_L12012_ _L12014_ _L12015_)
                               (_generate111647_
                                _L12015_
                                _L11748_
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons _L12014_
                                            (cons _L12012_
                                                  (cons _L11858_ '()))))
                                _L11858_
                                _L11747_))))
                        (let ((___match1315413155_
                               (lambda (_e1193812081_
                                        _hd1193912085_
                                        _tl1194012088_
                                        ___splice1313013131_
                                        _target1194112091_
                                        _tl1194312094_)
                                 (letrec ((_loop1194412097_
                                           (lambda (_hd1194212101_
                                                    _expr1194812104_)
                                             (if (gx#stx-pair? _hd1194212101_)
                                                 (let ((_e1194512107_
                                                        (gx#syntax-e
                                                         _hd1194212101_)))
                                                   (let ((_lp-tl1194712114_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1194512107_)))
                                                         (_lp-hd1194612111_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1194512107_))))
                                                     (_loop1194412097_
                                                      _lp-tl1194712114_
                                                      (cons _lp-hd1194612111_
                                                            _expr1194812104_))))
                                                 (let ((_expr1194912117_
                                                        (reverse _expr1194812104_)))
                                                   (___kont1312813129_
                                                    _expr1194912117_))))))
                                   (_loop1194412097_
                                    _target1194112091_
                                    '())))))
                          (if (gx#stx-pair? ___stx1312513126_)
                              (let ((_e1193812081_
                                     (gx#syntax-e ___stx1312513126_)))
                                (let ((_tl1194012088_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1193812081_)))
                                      (_hd1193912085_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1193812081_))))
                                  (if (gx#identifier? _hd1193912085_)
                                      (if (gx#free-identifier=?
                                           |[1]#_g13208_|
                                           _hd1193912085_)
                                          (if (gx#stx-pair/null?
                                               _tl1194012088_)
                                              (let ((___splice1313013131_
                                                     (gx#syntax-split-splice
                                                      _tl1194012088_
                                                      '0)))
                                                (let ((_tl1194312094_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice1313013131_
                                                          '1)))
                                                      (_target1194112091_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice1313013131_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1194312094_)
                                                      (___match1315413155_
                                                       _e1193812081_
                                                       _hd1193912085_
                                                       _tl1194012088_
                                                       ___splice1313013131_
                                                       _target1194112091_
                                                       _tl1194312094_)
                                                      (if (gx#stx-pair?
                                                           _tl1194012088_)
                                                          (let ((_e1195512049_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1194012088_)))
                    (let ((_tl1195712056_
                           (let () (declare (not safe)) (##cdr _e1195512049_)))
                          (_hd1195612053_
                           (let ()
                             (declare (not safe))
                             (##car _e1195512049_))))
                      (if (gx#stx-null? _tl1195712056_)
                          (___kont1313213133_ _hd1195612053_ _hd1193912085_)
                          (if (gx#stx-pair? _tl1195712056_)
                              (let ((_e1196712002_
                                     (gx#syntax-e _tl1195712056_)))
                                (let ((_tl1196912009_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1196712002_)))
                                      (_hd1196812006_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1196712002_))))
                                  (if (gx#stx-null? _tl1196912009_)
                                      (___kont1313413135_
                                       _hd1196812006_
                                       _hd1195612053_
                                       _hd1193912085_)
                                      (_g1193511975_))))
                              (_g1193511975_)))))
                  (_g1193511975_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl1194012088_)
                                                  (let ((_e1195512049_
                                                         (gx#syntax-e
                                                          _tl1194012088_)))
                                                    (let ((_tl1195712056_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1195512049_)))
                                                          (_hd1195612053_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1195512049_))))
                                                      (if (gx#stx-null?
                                                           _tl1195712056_)
                                                          (___kont1313213133_
                                                           _hd1195612053_
                                                           _hd1193912085_)
                                                          (if (gx#stx-pair?
                                                               _tl1195712056_)
                                                              (let ((_e1196712002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1195712056_)))
                        (let ((_tl1196912009_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1196712002_)))
                              (_hd1196812006_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1196712002_))))
                          (if (gx#stx-null? _tl1196912009_)
                              (___kont1313413135_
                               _hd1196812006_
                               _hd1195612053_
                               _hd1193912085_)
                              (_g1193511975_))))
                      (_g1193511975_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1193511975_)))
                                          (if (gx#stx-pair? _tl1194012088_)
                                              (let ((_e1195512049_
                                                     (gx#syntax-e
                                                      _tl1194012088_)))
                                                (let ((_tl1195712056_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1195512049_)))
                                                      (_hd1195612053_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1195512049_))))
                                                  (if (gx#stx-null?
                                                       _tl1195712056_)
                                                      (___kont1313213133_
                                                       _hd1195612053_
                                                       _hd1193912085_)
                                                      (if (gx#stx-pair?
                                                           _tl1195712056_)
                                                          (let ((_e1196712002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1195712056_)))
                    (let ((_tl1196912009_
                           (let () (declare (not safe)) (##cdr _e1196712002_)))
                          (_hd1196812006_
                           (let ()
                             (declare (not safe))
                             (##car _e1196712002_))))
                      (if (gx#stx-null? _tl1196912009_)
                          (___kont1313413135_
                           _hd1196812006_
                           _hd1195612053_
                           _hd1193912085_)
                          (_g1193511975_))))
                  (_g1193511975_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1193511975_)))
                                      (if (gx#stx-pair? _tl1194012088_)
                                          (let ((_e1195512049_
                                                 (gx#syntax-e _tl1194012088_)))
                                            (let ((_tl1195712056_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1195512049_)))
                                                  (_hd1195612053_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1195512049_))))
                                              (if (gx#stx-null? _tl1195712056_)
                                                  (___kont1313213133_
                                                   _hd1195612053_
                                                   _hd1193912085_)
                                                  (if (gx#stx-pair?
                                                       _tl1195712056_)
                                                      (let ((_e1196712002_
                                                             (gx#syntax-e
                                                              _tl1195712056_)))
                                                        (let ((_tl1196912009_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1196712002_)))
                      (_hd1196812006_
                       (let () (declare (not safe)) (##car _e1196712002_))))
                  (if (gx#stx-null? _tl1196912009_)
                      (___kont1313413135_
                       _hd1196812006_
                       _hd1195612053_
                       _hd1193912085_)
                      (_g1193511975_))))
              (_g1193511975_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g1193511975_)))))
                              (_g1193511975_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1187211883_))))
                                            (_g1187012148_
                                             (_recur11770_ _rest11806_)))))
                                      _g1184411855_))))
                             (_g1184212152_ (cons _L11825_ '())))))
                       _g1181111822_))))
              (_g1180912156_ (gx#genident '$E)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K1177911798_
                                                  (lambda ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '__raise-syntax-error)
                                                          (cons '#f
                                                                (cons '"Bad syntax"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _L11748_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_try-match1177711802_
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _rest1177511784_))
                                                          (_K1177911798_)
                                                          (_E1177811790_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##pair? _rest1177511784_))
                                                   (let ((_tl1178212167_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _rest1177511784_)))
                                                         (_hd1178112164_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest1177511784_))))
                                                     (let ((_hd12170_
                                                            _hd1178112164_)
                                                           (_rest12173_
                                                            _tl1178212167_))
                                                       (_K1178012160_
                                                        _rest12173_
                                                        _hd12170_)))
                                                   (_try-match1177711802_)))))))
                                     _clause1167211741_
                                     _hd1166211709_
                                     _hd1165911699_))))))
                    (_loop1166711721_ _target1166411715_ '()))
                  (_g1165011678_ _g1165111682_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1165011678_
                                                 _g1165111682_))))
                                        (_g1165011678_ _g1165111682_))))
                                (_g1165011678_ _g1165111682_))))
                        (_g1165011678_ _g1165111682_)))))
            (_g1164912184_ _stx11644_)))))
    (define |[:0:]#SyntaxError|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g13209_|
       'expander-identifiers:
       (cons (cons |[1]#_g13210_| '())
             (cons |[1]#_g13209_|
                   (cons |[1]#_g13211_|
                         (cons |[1]#_g13212_|
                               (cons (cons |[1]#_g13213_|
                                           (cons |[1]#_g13214_|
                                                 (cons |[1]#_g13215_|
                                                       (cons |[1]#_g13216_|
                                                             (cons |[1]#_g13217_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |[1]#_g13218_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |[1]#_g13219_|
                                                 (cons |[1]#_g13220_|
                                                       (cons |[1]#_g13221_|
                                                             (cons |[1]#_g13222_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |[1]#_g13223_| (cons |[1]#_g13224_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g13225_|)
        'SyntaxError
        '#f
        '((final: . #t))
        '(message irritants where context phi marks))))
    (define |[:0:]#AST|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |[1]#_g13226_|
       'expander-identifiers:
       (cons '#f
             (cons |[1]#_g13226_|
                   (cons |[1]#_g13227_|
                         (cons |[1]#_g13228_|
                               (cons (cons |[1]#_g13229_|
                                           (cons |[1]#_g13230_| '()))
                                     (cons (cons |[1]#_g13231_|
                                                 (cons |[1]#_g13232_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gerbil#AST::t
        '#f
        'syntax
        '#f
        '()
        '(e source))))))
