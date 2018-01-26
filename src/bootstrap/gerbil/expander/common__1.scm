(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g3266_|
    (gx#make-syntax-quote 'error::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g3267_|
    (gx#make-syntax-quote 'AST::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g3268_|
    (gx#make-syntax-quote 'else #f (gx#current-expander-context) '()))
  (begin
    (define |gx[:0:]#<error>|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g3266_|))
    (define |gx[:0:]#AST|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-info|
       'runtime-identifier:
       |gx[1]#_g3267_|))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx335_)
        (letrec ((_generate338_
                  (lambda (_tgt489_ _kws491_ _clauses492_)
                    (letrec ((_generate-clause494_
                              (lambda (_hd1404_ _E1406_)
                                (let* ((_g14101437_
                                        (lambda (_g14111433_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g14111433_)))
                                       (_g14091448_
                                        (lambda (_g14111441_)
                                          ((lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _stx335_
                                              _hd1404_)))))
                                       (_g14081506_
                                        (lambda (_g14111452_)
                                          (if (gx#stx-pair? _g14111452_)
                                              (let ((_e14231455_
                                                     (gx#syntax-e
                                                      _g14111452_)))
                                                (let ((_hd14241459_
                                                       (##car _e14231455_))
                                                      (_tl14251462_
                                                       (##cdr _e14231455_)))
                                                  (if (gx#stx-pair?
                                                       _tl14251462_)
                                                      (let ((_e14261465_
                                                             (gx#syntax-e
                                                              _tl14251462_)))
                                                        (let ((_hd14271469_
                                                               (##car _e14261465_))
                                                              (_tl14281472_
                                                               (##cdr _e14261465_)))
                                                          (if (gx#stx-pair?
                                                               _tl14281472_)
                                                              (let ((_e14291475_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl14281472_)))
                        (let ((_hd14301479_ (##car _e14291475_))
                              (_tl14311482_ (##cdr _e14291475_)))
                          (if (gx#stx-null? _tl14311482_)
                              ((lambda (_L1485_ _L1487_ _L1488_)
                                 (_generate1496_
                                  _hd1404_
                                  _L1488_
                                  _L1487_
                                  _L1485_
                                  _E1406_))
                               _hd14301479_
                               _hd14271469_
                               _hd14241459_)
                              (_g14091448_ _g14111452_))))
                      (_g14091448_ _g14111452_))))
              (_g14091448_ _g14111452_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g14091448_ _g14111452_))))
                                       (_g14071548_
                                        (lambda (_g14111510_)
                                          (if (gx#stx-pair? _g14111510_)
                                              (let ((_e14141513_
                                                     (gx#syntax-e
                                                      _g14111510_)))
                                                (let ((_hd14151517_
                                                       (##car _e14141513_))
                                                      (_tl14161520_
                                                       (##cdr _e14141513_)))
                                                  (if (gx#stx-pair?
                                                       _tl14161520_)
                                                      (let ((_e14171523_
                                                             (gx#syntax-e
                                                              _tl14161520_)))
                                                        (let ((_hd14181527_
                                                               (##car _e14171523_))
                                                              (_tl14191530_
                                                               (##cdr _e14171523_)))
                                                          (if (gx#stx-null?
                                                               _tl14191530_)
                                                              ((lambda (_L1533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _L1535_)
                         (_generate1496_ _hd1404_ _L1535_ '#t _L1533_ _E1406_))
                       _hd14181527_
                       _hd14151517_)
                      (_g14081506_ _g14111510_))))
              (_g14081506_ _g14111510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g14081506_ _g14111510_)))))
                                  (_g14071548_ _hd1404_))))
                             (_generate1496_
                              (lambda (_where882_
                                       _hd884_
                                       _fender885_
                                       _body886_
                                       _E887_)
                                (letrec ((_recur889_
                                          (lambda (_hd892_ _tgt894_ _K895_)
                                            (let* ((_g898910_
                                                    (lambda (_g899906_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g899906_)))
                                                   (_g8971177_
                                                    (lambda (_g899914_)
                                                      ((lambda ()
                                                         (if (gx#identifier?
                                                              _hd892_)
                                                             (if (gx#underscore?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd892_)
                         _K895_
                         (if (find (lambda (_g920922_)
                                     (gx#bound-identifier=? _g920922_ _hd892_))
                                   _kws491_)
                             (let* ((_g926941_
                                     (lambda (_g927937_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g927937_)))
                                    (_g925992_
                                     (lambda (_g927945_)
                                       (if (gx#stx-pair? _g927945_)
                                           (let ((_e930948_
                                                  (gx#syntax-e _g927945_)))
                                             (let ((_hd931952_
                                                    (##car _e930948_))
                                                   (_tl932955_
                                                    (##cdr _e930948_)))
                                               (if (gx#stx-pair? _tl932955_)
                                                   (let ((_e933958_
                                                          (gx#syntax-e
                                                           _tl932955_)))
                                                     (let ((_hd934962_
                                                            (##car _e933958_))
                                                           (_tl935965_
                                                            (##cdr _e933958_)))
                                                       (if (gx#stx-null?
                                                            _tl935965_)
                                                           ((lambda (_L968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L970_)
                      (let ()
                        (cons (gx#datum->syntax '#f 'if)
                              (cons (cons (gx#datum->syntax '#f 'and)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'identifier?)
                                                      (cons _L970_ '()))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'core-identifier=?)
                                                            (cons _L970_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L968_ '()))
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons _K895_ (cons _E887_ '()))))))
                    _hd934962_
                    _hd931952_)
                   (_g926941_ _g927945_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g926941_ _g927945_))))
                                           (_g926941_ _g927945_)))))
                               (_g925992_ (list _tgt894_ _hd892_)))
                             (let* ((_g9961011_
                                     (lambda (_g9971007_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g9971007_)))
                                    (_g9951055_
                                     (lambda (_g9971015_)
                                       (if (gx#stx-pair? _g9971015_)
                                           (let ((_e10001018_
                                                  (gx#syntax-e _g9971015_)))
                                             (let ((_hd10011022_
                                                    (##car _e10001018_))
                                                   (_tl10021025_
                                                    (##cdr _e10001018_)))
                                               (if (gx#stx-pair? _tl10021025_)
                                                   (let ((_e10031028_
                                                          (gx#syntax-e
                                                           _tl10021025_)))
                                                     (let ((_hd10041032_
                                                            (##car _e10031028_))
                                                           (_tl10051035_
                                                            (##cdr _e10031028_)))
                                                       (if (gx#stx-null?
                                                            _tl10051035_)
                                                           ((lambda (_L1038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L1040_)
                      (let ()
                        (cons (gx#datum->syntax '#f 'let)
                              (cons (cons (cons _L1038_ (cons _L1040_ '()))
                                          '())
                                    (cons _K895_ '())))))
                    _hd10041032_
                    _hd10011022_)
                   (_g9961011_ _g9971015_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g9961011_ _g9971015_))))
                                           (_g9961011_ _g9971015_)))))
                               (_g9951055_ (list _tgt894_ _hd892_)))))
                     (if (gx#stx-null? _hd892_)
                         (let* ((_g10591067_
                                 (lambda (_g10601063_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g10601063_)))
                                (_g10581085_
                                 (lambda (_g10601071_)
                                   ((lambda (_L1074_)
                                      (let ()
                                        (cons (gx#datum->syntax '#f 'if)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'stx-null?)
                                                          (cons _L1074_ '()))
                                                    (cons _K895_
                                                          (cons _E887_
                                                                '()))))))
                                    _g10601071_))))
                           (_g10581085_ _tgt894_))
                         (if (gx#stx-datum? _hd892_)
                             (let* ((_g10891108_
                                     (lambda (_g10901104_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g10901104_)))
                                    (_g10881166_
                                     (lambda (_g10901112_)
                                       (if (gx#stx-pair? _g10901112_)
                                           (let ((_e10941115_
                                                  (gx#syntax-e _g10901112_)))
                                             (let ((_hd10951119_
                                                    (##car _e10941115_))
                                                   (_tl10961122_
                                                    (##cdr _e10941115_)))
                                               (if (gx#stx-pair? _tl10961122_)
                                                   (let ((_e10971125_
                                                          (gx#syntax-e
                                                           _tl10961122_)))
                                                     (let ((_hd10981129_
                                                            (##car _e10971125_))
                                                           (_tl10991132_
                                                            (##cdr _e10971125_)))
                                                       (if (gx#stx-pair?
                                                            _tl10991132_)
                                                           (let ((_e11001135_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl10991132_)))
                     (let ((_hd11011139_ (##car _e11001135_))
                           (_tl11021142_ (##cdr _e11001135_)))
                       (if (gx#stx-null? _tl11021142_)
                           ((lambda (_L1145_ _L1147_ _L1148_)
                              (let ()
                                (cons (gx#datum->syntax '#f 'if)
                                      (cons (cons _L1145_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'stx-e)
                                                              (cons _L1148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons (gx#datum->syntax '#f 'quote) (cons _L1147_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons _K895_ (cons _E887_ '()))))))
                            _hd11011139_
                            _hd10981129_
                            _hd10951119_)
                           (_g10891108_ _g10901112_))))
                   (_g10891108_ _g10901112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g10891108_ _g10901112_))))
                                           (_g10891108_ _g10901112_)))))
                               (_g10881166_
                                (list _tgt894_
                                      _hd892_
                                      (let ((_e1170_ (gx#stx-e _hd892_)))
                                        (if (let ((_$e1173_
                                                   (keyword? _e1170_)))
                                              (if _$e1173_
                                                  _$e1173_
                                                  (immediate? _e1170_)))
                                            (gx#datum->syntax '#f 'eq?)
                                            (if (number? _e1170_)
                                                (gx#datum->syntax '#f 'eqv?)
                                                (gx#datum->syntax
                                                 '#f
                                                 'equal?)))))))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _stx335_
                              _where882_
                              _hd892_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g8961400_
                                                    (lambda (_g8991181_)
                                                      (if (gx#stx-pair?
                                                           _g8991181_)
                                                          (let ((_e9021184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _g8991181_)))
                    (let ((_hd9031188_ (##car _e9021184_))
                          (_tl9041191_ (##cdr _e9021184_)))
                      ((lambda (_L1194_ _L1196_)
                         (let* ((_g12071215_
                                 (lambda (_g12081211_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g12081211_)))
                                (_g12061396_
                                 (lambda (_g12081219_)
                                   ((lambda (_L1222_)
                                      (let ()
                                        (let* ((_g12341242_
                                                (lambda (_g12351238_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g12351238_)))
                                               (_g12331392_
                                                (lambda (_g12351246_)
                                                  ((lambda (_L1249_)
                                                     (let ()
                                                       (let* ((_g12621270_
                                                               (lambda (_g12631266_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g12631266_)))
                      (_g12611388_
                       (lambda (_g12631274_)
                         ((lambda (_L1277_)
                            (let ()
                              (let* ((_g12901298_
                                      (lambda (_g12911294_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax"
                                         _g12911294_)))
                                     (_g12891384_
                                      (lambda (_g12911302_)
                                        ((lambda (_L1305_)
                                           (let ()
                                             (let* ((_g13181326_
                                                     (lambda (_g13191322_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax"
                                                        _g13191322_)))
                                                    (_g13171380_
                                                     (lambda (_g13191330_)
                                                       ((lambda (_L1333_)
                                                          (let ()
                                                            (let* ((_g13461354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g13471350_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g13471350_)))
                           (_g13451376_
                            (lambda (_g13471358_)
                              ((lambda (_L1361_)
                                 (let ()
                                   (let ()
                                     (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-pair?)
                                                       (cons _L1222_ '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'let)
                                                             (cons (cons (cons _L1249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'syntax-e)
                                                   (cons _L1222_ '()))
                                             '()))
                                 '())
                           (cons (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _L1277_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '##car)
                             (cons _L1249_ '()))
                       '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons _L1305_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '##cdr)
                                   (cons _L1249_ '()))
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons _L1333_ '())))
                                 '())))
               (cons _L1361_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _g13471358_))))
                      (_g13451376_ _E887_))))
                _g13191330_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g13171380_
                                                (_recur889_
                                                 _L1196_
                                                 _L1277_
                                                 (_recur889_
                                                  _L1194_
                                                  _L1305_
                                                  _K895_))))))
                                         _g12911302_))))
                                (_g12891384_ (gx#genident 'tl)))))
                          _g12631274_))))
                 (_g12611388_ (gx#genident 'hd)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g12351246_))))
                                          (_g12331392_ (gx#genident 'e)))))
                                    _g12081219_))))
                           (_g12061396_ _tgt894_)))
                       _tl9041191_
                       _hd9031188_)))
                  (_g8971177_ _g8991181_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g8961400_ _hd892_)))))
                                  (_recur889_
                                   _hd884_
                                   _tgt489_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _fender885_
                                               (cons _body886_
                                                     (cons _E887_ '()))))))))
                             (_generate-clauses497_
                              (lambda (_clauses620_)
                                (let _lp623_ ((_rest626_ _clauses620_)
                                              (_E628_ (gx#genident 'E))
                                              (_r629_ '()))
                                  (let* ((_g632644_
                                          (lambda (_g633640_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g633640_)))
                                         (_g631692_
                                          (lambda (_g633648_)
                                            ((lambda ()
                                               (let* ((_g655663_
                                                       (lambda (_g656659_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g656659_)))
                                                      (_g654688_
                                                       (lambda (_g656667_)
                                                         ((lambda (_L670_)
                                                            (let ()
                                                              (cons (cons _E628_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (gx#stx-wrap-source
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons '()
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'raise-syntax-error)
                         (cons '#f (cons '"Bad syntax" (cons _L670_ '()))))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (gx#stx-source _stx335_))
                                        '()))
                            _r629_)))
                  _g656667_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g654688_ _tgt489_))))))
                                         (_g630878_
                                          (lambda (_g633696_)
                                            (if (gx#stx-pair? _g633696_)
                                                (let ((_e636699_
                                                       (gx#syntax-e
                                                        _g633696_)))
                                                  (let ((_hd637703_
                                                         (##car _e636699_))
                                                        (_tl638706_
                                                         (##cdr _e636699_)))
                                                    ((lambda (_L709_ _L711_)
                                                       (let* ((_g723734_
                                                               (lambda (_g724730_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error '#f '"Bad syntax" _g724730_)))
                      (_g722846_
                       (lambda (_g724738_)
                         ((lambda ()
                            (let* ((_g745753_
                                    (lambda (_g746749_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _g746749_)))
                                   (_g744842_
                                    (lambda (_g746757_)
                                      ((lambda (_L760_)
                                         (let ()
                                           (let* ((_g776784_
                                                   (lambda (_g777780_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g777780_)))
                                                  (_g775838_
                                                   (lambda (_g777788_)
                                                     ((lambda (_L791_)
                                                        (let ()
                                                          (let* ((_g804812_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g805808_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g805808_)))
                         (_g803834_
                          (lambda (_g805816_)
                            ((lambda (_L819_)
                               (let ()
                                 (let ()
                                   (_lp623_ _L709_
                                            _L760_
                                            (cons (cons _E628_
                                                        (cons _L819_ '()))
                                                  _r629_)))))
                             _g805816_))))
                    (_g803834_
                     (gx#stx-wrap-source
                      (cons (gx#datum->syntax '#f 'lambda)
                            (cons '() (cons _L791_ '())))
                      (gx#stx-source _L711_))))))
              _g777788_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g775838_
                                              (_generate-clause494_
                                               _L711_
                                               (cons _L760_ '()))))))
                                       _g746757_))))
                              (_g744842_ (gx#genident 'E)))))))
                      (_g721874_
                       (lambda (_g724850_)
                         (if (gx#stx-pair? _g724850_)
                             (let ((_e726853_ (gx#syntax-e _g724850_)))
                               (let ((_hd727857_ (##car _e726853_))
                                     (_tl728860_ (##cdr _e726853_)))
                                 (if (gx#identifier? _hd727857_)
                                     (if (gx#free-identifier=?
                                          |gx[1]#_g3268_|
                                          _hd727857_)
                                         ((lambda (_L863_)
                                            (if (gx#stx-null? _L709_)
                                                (if (if (gx#stx-list? _L863_)
                                                        (not (gx#stx-null?
                                                              _L863_))
                                                        '#f)
                                                    (cons (cons _E628_
                                                                (cons (gx#stx-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       _L863_)
                                                 '())))
                               (gx#stx-source _L711_))
                              '()))
                  _r629_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _stx335_
                                                     _L711_))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; misplaced else"
                                                 _stx335_
                                                 _L711_)))
                                          _tl728860_)
                                         (_g722846_ _g724850_))
                                     (_g722846_ _g724850_))))
                             (_g722846_ _g724850_)))))
                 (_g721874_ _L711_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _tl638706_
                                                     _hd637703_)))
                                                (_g631692_ _g633696_)))))
                                    (_g630878_ _rest626_))))))
                      (let* ((_bind499_ (_generate-clauses497_ _clauses492_))
                             (_g502519_
                              (lambda (_g503515_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g503515_)))
                             (_g501616_
                              (lambda (_g503523_)
                                (if (gx#stx-pair/null? _g503523_)
                                    (if (fx>= (gx#stx-length _g503523_) '0)
                                        (let ((_g3269_ (gx#syntax-split-splice
                                                        _g503523_
                                                        '0)))
                                          (begin
                                            (let ((_g3270_ (values-count
                                                            _g3269_)))
                                              (if (not (fx= _g3270_ 2))
                                                  (error "Context expects 2 values"
                                                         _g3270_)))
                                            (let ((_target505526_
                                                   (values-ref _g3269_ 0))
                                                  (_tl507529_
                                                   (values-ref _g3269_ 1)))
                                              (if (gx#stx-null? _tl507529_)
                                                  (letrec ((_loop508532_
                                                            (lambda (_hd506536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _bind-try512539_)
                      (if (gx#stx-pair? _hd506536_)
                          (let ((_e509542_ (gx#syntax-e _hd506536_)))
                            (let ((_lp-hd510546_ (##car _e509542_))
                                  (_lp-tl511549_ (##cdr _e509542_)))
                              (_loop508532_
                               _lp-tl511549_
                               (cons _lp-hd510546_ _bind-try512539_))))
                          (let ((_bind-try513552_ (reverse _bind-try512539_)))
                            ((lambda (_L556_)
                               (let ()
                                 (let* ((_g574582_
                                         (lambda (_g575578_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g575578_)))
                                        (_g573612_
                                         (lambda (_g575586_)
                                           ((lambda (_L589_)
                                              (let ()
                                                (let ()
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'let*)
                                                        (cons (begin
                                                                '#!void
                                                                (foldr (lambda (_g603606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _g604609_)
                                 (cons _g603606_ _g604609_))
                               '()
                               _L556_))
                      (cons (cons _L589_ '()) '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _g575586_))))
                                   (_g573612_ (car (last _bind499_))))))
                             _bind-try513552_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop508532_
                                                     _target505526_
                                                     '()))
                                                  (_g502519_ _g503523_)))))
                                        (_g502519_ _g503523_))
                                    (_g502519_ _g503523_)))))
                        (_g501616_ _bind499_))))))
          (let* ((_g341360_
                  (lambda (_g342356_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g342356_)))
                 (_g340485_
                  (lambda (_g342364_)
                    (if (gx#stx-pair? _g342364_)
                        (let ((_e346367_ (gx#syntax-e _g342364_)))
                          (let ((_hd347371_ (##car _e346367_))
                                (_tl348374_ (##cdr _e346367_)))
                            (if (gx#stx-pair? _tl348374_)
                                (let ((_e349377_ (gx#syntax-e _tl348374_)))
                                  (let ((_hd350381_ (##car _e349377_))
                                        (_tl351384_ (##cdr _e349377_)))
                                    (if (gx#stx-pair? _tl351384_)
                                        (let ((_e352387_
                                               (gx#syntax-e _tl351384_)))
                                          (let ((_hd353391_ (##car _e352387_))
                                                (_tl354394_ (##cdr _e352387_)))
                                            ((lambda (_L397_ _L399_ _L400_)
                                               (if (if (gx#identifier-list?
                                                        _L399_)
                                                       (gx#stx-list? _L397_)
                                                       '#f)
                                                   (let* ((_g420428_
                                                           (lambda (_g421424_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g421424_)))
                                                          (_g419481_
                                                           (lambda (_g421432_)
                                                             ((lambda (_L435_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g447455_
                                  (lambda (_g448451_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g448451_)))
                                 (_g446477_
                                  (lambda (_g448459_)
                                    ((lambda (_L462_)
                                       (let ()
                                         (let ()
                                           (cons (gx#datum->syntax '#f 'let)
                                                 (cons (cons (cons _L435_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _L400_ '()))
                     '())
               (cons _L462_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g448459_))))
                            (_g446477_
                             (_generate338_
                              _L435_
                              (gx#syntax->list _L399_)
                              _L397_)))))
                      _g421432_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g419481_
                                                      (gx#genident 'e)))
                                                   (_g341360_ _g342364_)))
                                             _tl354394_
                                             _hd353391_
                                             _hd350381_)))
                                        (_g341360_ _g342364_))))
                                (_g341360_ _g342364_))))
                        (_g341360_ _g342364_)))))
            (_g340485_ _stx335_)))))))
