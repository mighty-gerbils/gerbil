(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<MOP>$<MOP:2>[1]#_g30732_|
    (gx#make-syntax-quote '@method #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t|
      (make-class-type
       'gerbil.core#runtime-type-info::t
       '()
       '(runtime-identifier)
       'runtime-type-info::t
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
      (make-class-slot-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t|
       'runtime-identifier))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier-set!|
      (make-class-slot-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t|
       'runtime-identifier))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
      (make-class-type
       'gerbil.core#runtime-struct-info::t
       (cons |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t| '())
       '()
       'struct-info
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-info|
      (lambda _$args16277_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
               _$args16277_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
      (make-class-type
       'gerbil.core#runtime-class-info::t
       (cons |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t| '())
       '()
       'class-info
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-info|
      (lambda _$args16273_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
               _$args16273_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
      (make-class-type
       'gerbil.core#expander-type-info::t
       '()
       '(expander-identifiers)
       'expander-type-info::t
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
      (make-class-slot-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
       'expander-identifiers))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers-set!|
      (make-class-slot-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
       'expander-identifiers))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
      (make-class-type
       'gerbil.core#extended-runtime-type-info
       (cons |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info::t| '())
       '(type-exhibitor)
       'extended-runtime-type-info::t
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
      (make-class-slot-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
       'type-exhibitor))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-set!|
      (make-class-slot-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
       'type-exhibitor))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
      (make-class-type
       'gerbil.core#extended-stuct-info::t
       (cons |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info::t|
             (cons |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
                   (cons |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
                         '())))
       '()
       'struct-info
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
      (lambda _$args16269_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-struct-info::t|
               _$args16269_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
      (make-class-type
       'gerbil.core#extended-class-info::t
       (cons |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info::t|
             (cons |gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info::t|
                   (cons |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
                         '())))
       '()
       'class-info
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info?|
      (make-class-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
      (lambda _$args16265_
        (apply make-class-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#extended-class-info::t|
               _$args16265_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
      (make-struct-type
       'gerbil.core#runtime-rtd-exhibitor::t
       '#f
       '5
       'runtime-rtd-exhibitor::t
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor?|
      (make-struct-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-id|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-name|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '2))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-ctor|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '3))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '4))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-id-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-super-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-name-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '2))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-ctor-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '3))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-plist-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '4))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
      (make-struct-type
       'gerbil.core#runtime-struct-exhibitor::t
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1
       'struct-exhibitor
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor?|
      (make-struct-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
      (lambda _$args16261_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
               _$args16261_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-fields|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-fields-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
      (make-struct-type
       'gerbil.core#runtime-class-exhibitor::t
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-rtd-exhibitor::t|
       '1
       'class-exhibitor
       '()
       '#f))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor?|
      (make-struct-predicate
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
      (lambda _$args16257_
        (apply make-struct-instance
               |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
               _$args16257_)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots|
      (make-struct-field-accessor
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-slots-set!|
      (make-struct-field-mutator
       |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-exhibitor::t|
       '0))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
      (let ((_opt-lambda1622916243_
             (lambda (_stx16231_ _is?16233_)
               (if (gx#identifier? _stx16231_)
                   (let ((_e1623416236_
                          (gx#syntax-local-value _stx16231_ false)))
                     (if _e1623416236_
                         (let ((_e16240_ _e1623416236_))
                           (if (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-info?|
                                _e16240_)
                               (_is?16233_ _e16240_)
                               '#f))
                         '#f))
                   '#f))))
        (lambda _g30718_
          (let ((_g30717_ (length _g30718_)))
            (cond ((fx= _g30717_ 1)
                   (apply (lambda (_stx16247_)
                            (let ((_is?16250_ true))
                              (_opt-lambda1622916243_ _stx16247_ _is?16250_)))
                          _g30718_))
                  ((fx= _g30717_ 2) (apply _opt-lambda1622916243_ _g30718_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                    _g30718_)))))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
      (lambda (_stx16227_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
         _stx16227_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-struct-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-class-info?|
      (lambda (_stx16224_)
        (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
         _stx16224_
         |gerbil/core$<MOP>$<MOP:2>[1]#runtime-class-info?|)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor-e|
      (lambda (_id16218_)
        (if _id16218_
            (let ((_info16221_ (gx#syntax-local-value _id16218_)))
              (if (|gerbil/core$<MOP>$<MOP:2>[1]#extended-runtime-type-info?|
                   _info16221_)
                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-exhibitor|
                   _info16221_)
                  '#f))
            '#f)))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|
      (lambda (_self15983_ _stx15985_)
        (let* ((_g1598716007_
                (lambda (_g1598816003_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1598816003_)))
               (_g1598616214_
                (lambda (_g1598816011_)
                  (if (gx#stx-pair? _g1598816011_)
                      (let ((_e1599016014_ (gx#syntax-e _g1598816011_)))
                        (let ((_hd1599116018_ (##car _e1599016014_))
                              (_tl1599216021_ (##cdr _e1599016014_)))
                          (if (gx#stx-pair/null? _tl1599216021_)
                              (if (fx>= (gx#stx-length _tl1599216021_) '0)
                                  (let ((_g30719_
                                         (gx#syntax-split-splice
                                          _tl1599216021_
                                          '0)))
                                    (begin
                                      (let ((_g30720_ (values-count _g30719_)))
                                        (if (not (fx= _g30720_ 2))
                                            (error "Context expects 2 values"
                                                   _g30720_)))
                                      (let ((_target1599316024_
                                             (values-ref _g30719_ 0))
                                            (_tl1599516027_
                                             (values-ref _g30719_ 1)))
                                        (if (gx#stx-null? _tl1599516027_)
                                            (letrec ((_loop1599616030_
                                                      (lambda (_hd1599416034_
                                                               _arg1600016037_)
                                                        (if (gx#stx-pair?
                                                             _hd1599416034_)
                                                            (let ((_e1599716040_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd1599416034_)))
                      (let ((_lp-hd1599816044_ (##car _e1599716040_))
                            (_lp-tl1599916047_ (##cdr _e1599716040_)))
                        (_loop1599616030_
                         _lp-tl1599916047_
                         (cons _lp-hd1599816044_ _arg1600016037_))))
                    (let ((_arg1600116050_ (reverse _arg1600016037_)))
                      ((lambda (_L16054_)
                         (let* ((_g1607016101_
                                 (lambda (_g1607116097_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1607116097_)))
                                (_g1606916210_
                                 (lambda (_g1607116105_)
                                   (if (gx#stx-pair? _g1607116105_)
                                       (let ((_e1607816108_
                                              (gx#syntax-e _g1607116105_)))
                                         (let ((_hd1607916112_
                                                (##car _e1607816108_))
                                               (_tl1608016115_
                                                (##cdr _e1607816108_)))
                                           (if (gx#stx-pair? _tl1608016115_)
                                               (let ((_e1608116118_
                                                      (gx#syntax-e
                                                       _tl1608016115_)))
                                                 (let ((_hd1608216122_
                                                        (##car _e1608116118_))
                                                       (_tl1608316125_
                                                        (##cdr _e1608116118_)))
                                                   (if (gx#stx-pair?
                                                        _tl1608316125_)
                                                       (let ((_e1608416128_
                                                              (gx#syntax-e
                                                               _tl1608316125_)))
                                                         (let ((_hd1608516132_
                                                                (##car _e1608416128_))
                                                               (_tl1608616135_
                                                                (##cdr _e1608416128_)))
                                                           (if (gx#stx-pair?
                                                                _tl1608616135_)
                                                               (let ((_e1608716138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _tl1608616135_)))
                         (let ((_hd1608816142_ (##car _e1608716138_))
                               (_tl1608916145_ (##cdr _e1608716138_)))
                           (if (gx#stx-pair? _tl1608916145_)
                               (let ((_e1609016148_
                                      (gx#syntax-e _tl1608916145_)))
                                 (let ((_hd1609116152_ (##car _e1609016148_))
                                       (_tl1609216155_ (##cdr _e1609016148_)))
                                   (if (gx#stx-pair? _tl1609216155_)
                                       (let ((_e1609316158_
                                              (gx#syntax-e _tl1609216155_)))
                                         (let ((_hd1609416162_
                                                (##car _e1609316158_))
                                               (_tl1609516165_
                                                (##cdr _e1609316158_)))
                                           (if (gx#stx-null? _tl1609516165_)
                                               ((lambda (_L16168_
                                                         _L16170_
                                                         _L16171_
                                                         _L16172_
                                                         _L16173_
                                                         _L16174_)
                                                  (let ()
                                                    (cons _L16172_
                                                          (begin
                                                            '#!void
                                                            (foldr (lambda (_g1620116204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1620216207_)
                             (cons _g1620116204_ _g1620216207_))
                           '()
                           _L16054_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd1609416162_
                                                _hd1609116152_
                                                _hd1608816142_
                                                _hd1608516132_
                                                _hd1608216122_
                                                _hd1607916112_)
                                               (_g1607016101_ _g1607116105_))))
                                       (_g1607016101_ _g1607116105_))))
                               (_g1607016101_ _g1607116105_))))
                       (_g1607016101_ _g1607116105_))))
               (_g1607016101_ _g1607116105_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g1607016101_ _g1607116105_))))
                                       (_g1607016101_ _g1607116105_)))))
                           (_g1606916210_
                            (|gerbil/core$<MOP>$<MOP:2>[1]#expander-type-identifiers|
                             _self15983_))))
                       _arg1600116050_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop1599616030_
                                               _target1599316024_
                                               '()))
                                            (_g1598716007_ _g1598816011_)))))
                                  (_g1598716007_ _g1598816011_))
                              (_g1598716007_ _g1598816011_))))
                      (_g1598716007_ _g1598816011_)))))
          (_g1598616214_ _stx15985_))))
    (bind-method!
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::t|
     'apply-macro-expander
     |gerbil/core$<MOP>$<MOP:2>[1]#expander-type-info::apply-macro-expander|)
    (define |gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
      (lambda (_stx15974_)
        (letrec ((_body-opt?15977_
                  (lambda (_key15980_)
                    (memq (gx#stx-e _key15980_)
                          '(id:
                            name:
                            constructor:
                            transparent:
                            final:
                            plist:
                            unchecked:)))))
          (gx#stx-plist? _stx15974_ _body-opt?15977_))))
    (define |gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
      (lambda (_stx14831_
               _id14833_
               _super-ref14834_
               _els14835_
               _body14836_
               _struct?14837_)
        (letrec* ((_wrap14839_
                   (lambda (_e-stx15971_)
                     (gx#stx-wrap-source
                      _e-stx15971_
                      (gx#stx-source _stx14831_))))
                  (_make-id14841_
                   (if (uninterned-symbol? (gx#stx-e _id14833_))
                       (lambda _g30721_ (gx#genident _id14833_))
                       (lambda _args15968_
                         (apply gx#stx-identifier _id14833_ _args15968_)))))
          (begin
            (gx#check-duplicate-identifiers _els14835_ _stx14831_)
            (let* ((_name14843_ (symbol->string (gx#stx-e _id14833_)))
                   (_super14846_
                    (if _struct?14837_
                        (if _super-ref14834_
                            (gx#syntax-local-value _super-ref14834_)
                            '#f)
                        (map gx#syntax-local-value _super-ref14834_)))
                   (_g1484914857_
                    (lambda (_g1485014853_)
                      (gx#raise-syntax-error '#f '"Bad syntax" _g1485014853_)))
                   (_g1484815962_
                    (lambda (_g1485014861_)
                      ((lambda (_L14864_)
                         (let ()
                           (let* ((_g1488014888_
                                   (lambda (_g1488114884_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1488114884_)))
                                  (_g1487915958_
                                   (lambda (_g1488114892_)
                                     ((lambda (_L14895_)
                                        (let ()
                                          (let* ((_g1490814916_
                                                  (lambda (_g1490914912_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1490914912_)))
                                                 (_g1490715954_
                                                  (lambda (_g1490914920_)
                                                    ((lambda (_L14923_)
                                                       (let ()
                                                         (let* ((_g1493614944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1493714940_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1493714940_)))
                        (_g1493515950_
                         (lambda (_g1493714948_)
                           ((lambda (_L14951_)
                              (let ()
                                (let* ((_g1496414972_
                                        (lambda (_g1496514968_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax"
                                           _g1496514968_)))
                                       (_g1496315946_
                                        (lambda (_g1496514976_)
                                          ((lambda (_L14979_)
                                             (let ()
                                               (let* ((_g1499215000_
                                                       (lambda (_g1499314996_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1499314996_)))
                                                      (_g1499115942_
                                                       (lambda (_g1499315004_)
                                                         ((lambda (_L15007_)
                                                            (let ()
                                                              (let* ((_g1502015037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1502115033_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1502115033_)))
                             (_g1501915938_
                              (lambda (_g1502115041_)
                                (if (gx#stx-pair/null? _g1502115041_)
                                    (if (fx>= (gx#stx-length _g1502115041_) '0)
                                        (let ((_g30722_
                                               (gx#syntax-split-splice
                                                _g1502115041_
                                                '0)))
                                          (begin
                                            (let ((_g30723_
                                                   (values-count _g30722_)))
                                              (if (not (fx= _g30723_ 2))
                                                  (error "Context expects 2 values"
                                                         _g30723_)))
                                            (let ((_target1502315044_
                                                   (values-ref _g30722_ 0))
                                                  (_tl1502515047_
                                                   (values-ref _g30722_ 1)))
                                              (if (gx#stx-null? _tl1502515047_)
                                                  (letrec ((_loop1502615050_
                                                            (lambda (_hd1502415054_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _attr1503015057_)
                      (if (gx#stx-pair? _hd1502415054_)
                          (let ((_e1502715060_ (gx#syntax-e _hd1502415054_)))
                            (let ((_lp-hd1502815064_ (##car _e1502715060_))
                                  (_lp-tl1502915067_ (##cdr _e1502715060_)))
                              (_loop1502615050_
                               _lp-tl1502915067_
                               (cons _lp-hd1502815064_ _attr1503015057_))))
                          (let ((_attr1503115070_ (reverse _attr1503015057_)))
                            ((lambda (_L15074_)
                               (let ()
                                 (let* ((_g1509115108_
                                         (lambda (_g1509215104_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _g1509215104_)))
                                        (_g1509015929_
                                         (lambda (_g1509215112_)
                                           (if (gx#stx-pair/null?
                                                _g1509215112_)
                                               (if (fx>= (gx#stx-length
                                                          _g1509215112_)
                                                         '0)
                                                   (let ((_g30724_
                                                          (gx#syntax-split-splice
                                                           _g1509215112_
                                                           '0)))
                                                     (begin
                                                       (let ((_g30725_
                                                              (values-count
                                                               _g30724_)))
                                                         (if (not (fx= _g30725_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g30725_)))
               (let ((_target1509415115_ (values-ref _g30724_ 0))
                     (_tl1509615118_ (values-ref _g30724_ 1)))
                 (if (gx#stx-null? _tl1509615118_)
                     (letrec ((_loop1509715121_
                               (lambda (_hd1509515125_ _getf1510115128_)
                                 (if (gx#stx-pair? _hd1509515125_)
                                     (let ((_e1509815131_
                                            (gx#syntax-e _hd1509515125_)))
                                       (let ((_lp-hd1509915135_
                                              (##car _e1509815131_))
                                             (_lp-tl1510015138_
                                              (##cdr _e1509815131_)))
                                         (_loop1509715121_
                                          _lp-tl1510015138_
                                          (cons _lp-hd1509915135_
                                                _getf1510115128_))))
                                     (let ((_getf1510215141_
                                            (reverse _getf1510115128_)))
                                       ((lambda (_L15145_)
                                          (let ()
                                            (let* ((_g1516215179_
                                                    (lambda (_g1516315175_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g1516315175_)))
                                                   (_g1516115920_
                                                    (lambda (_g1516315183_)
                                                      (if (gx#stx-pair/null?
                                                           _g1516315183_)
                                                          (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _g1516315183_)
                            '0)
                      (let ((_g30726_
                             (gx#syntax-split-splice _g1516315183_ '0)))
                        (begin
                          (let ((_g30727_ (values-count _g30726_)))
                            (if (not (fx= _g30727_ 2))
                                (error "Context expects 2 values" _g30727_)))
                          (let ((_target1516515186_ (values-ref _g30726_ 0))
                                (_tl1516715189_ (values-ref _g30726_ 1)))
                            (if (gx#stx-null? _tl1516715189_)
                                (letrec ((_loop1516815192_
                                          (lambda (_hd1516615196_
                                                   _setf1517215199_)
                                            (if (gx#stx-pair? _hd1516615196_)
                                                (let ((_e1516915202_
                                                       (gx#syntax-e
                                                        _hd1516615196_)))
                                                  (let ((_lp-hd1517015206_
                                                         (##car _e1516915202_))
                                                        (_lp-tl1517115209_
                                                         (##cdr _e1516915202_)))
                                                    (_loop1516815192_
                                                     _lp-tl1517115209_
                                                     (cons _lp-hd1517015206_
                                                           _setf1517215199_))))
                                                (let ((_setf1517315212_
                                                       (reverse _setf1517215199_)))
                                                  ((lambda (_L15216_)
                                                     (let ()
                                                       (let* ((_type-attr15258_
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _els14835_)
                           '()
                           (if _struct?14837_
                               (cons 'fields:
                                     (cons (begin
                                             (gx#syntax-check-splice-targets
                                              _L15216_
                                              _L15145_)
                                             (foldr (lambda (_g1523215236_
                                                             _g1523315239_
                                                             _g1523415241_)
                                                      (cons (cons _g1523315239_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _g1523215236_ '()))
                    _g1523415241_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L15216_
                                                    _L15145_))
                                           '()))
                               (cons 'slots:
                                     (cons (begin
                                             (gx#syntax-check-splice-targets
                                              _L15216_
                                              _L15145_
                                              _L15074_)
                                             (foldr (lambda (_g1524315248_
                                                             _g1524415251_
                                                             _g1524515253_
                                                             _g1524615255_)
                                                      (cons (cons _g1524515253_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _g1524415251_ (cons _g1524315248_ '())))
                    _g1524615255_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _L15216_
                                                    _L15145_
                                                    _L15074_))
                                           '())))))
                      (_type-name15265_
                       (cons 'name:
                             (cons (let ((_$e15261_
                                          (gx#stx-getq 'name: _body14836_)))
                                     (if _$e15261_ _$e15261_ _id14833_))
                                   '())))
                      (_type-id15280_
                       (let ((_$e15276_
                              (let ((_e1526715269_
                                     (gx#stx-getq 'id: _body14836_)))
                                (if _e1526715269_
                                    (let ((_e15273_ _e1526715269_))
                                      (cons 'id: (cons _e15273_ '())))
                                    '#f))))
                         (if _$e15276_ _$e15276_ '())))
                      (_type-ctor15295_
                       (let ((_$e15291_
                              (let ((_e1528215284_
                                     (gx#stx-getq 'constructor: _body14836_)))
                                (if _e1528215284_
                                    (let ((_e15288_ _e1528215284_))
                                      (cons 'constructor: (cons _e15288_ '())))
                                    '#f))))
                         (if _$e15291_ _$e15291_ '())))
                      (_plist15313_
                       (let* ((_plist15302_
                               (let ((_$e15298_
                                      (gx#stx-getq 'plist: _body14836_)))
                                 (if _$e15298_ _$e15298_ '())))
                              (_plist15305_
                               (if (gx#stx-e
                                    (gx#stx-getq 'transparent: _body14836_))
                                   (cons (cons 'transparent: '#t) _plist15302_)
                                   _plist15302_))
                              (_plist15308_
                               (if (gx#stx-e (gx#stx-getq 'final: _body14836_))
                                   (cons (cons 'final: '#t) _plist15305_)
                                   _plist15305_)))
                         _plist15308_))
                      (_type-plist15353_
                       (if (null? _plist15313_)
                           _plist15313_
                           (let* ((_g1531615324_
                                   (lambda (_g1531715320_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1531715320_)))
                                  (_g1531515349_
                                   (lambda (_g1531715328_)
                                     ((lambda (_L15331_)
                                        (let ()
                                          (cons 'plist:
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _L15331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _g1531715328_))))
                             (_g1531515349_ _plist15313_))))
                      (_type-unchecked15368_
                       (let ((_$e15364_
                              (let ((_e1535515357_
                                     (gx#stx-getq 'unchecked: _body14836_)))
                                (if _e1535515357_
                                    (let ((_e15361_ _e1535515357_))
                                      (cons 'unchecked: (cons _e15361_ '())))
                                    '#f))))
                         (if _$e15364_ _$e15364_ '())))
                      (_g1537115388_
                       (lambda (_g1537215384_)
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax"
                          _g1537215384_)))
                      (_g1537015916_
                       (lambda (_g1537215392_)
                         (if (gx#stx-pair/null? _g1537215392_)
                             (if (fx>= (gx#stx-length _g1537215392_) '0)
                                 (let ((_g30728_
                                        (gx#syntax-split-splice
                                         _g1537215392_
                                         '0)))
                                   (begin
                                     (let ((_g30729_ (values-count _g30728_)))
                                       (if (not (fx= _g30729_ 2))
                                           (error "Context expects 2 values"
                                                  _g30729_)))
                                     (let ((_target1537415395_
                                            (values-ref _g30728_ 0))
                                           (_tl1537615398_
                                            (values-ref _g30728_ 1)))
                                       (if (gx#stx-null? _tl1537615398_)
                                           (letrec ((_loop1537715401_
                                                     (lambda (_hd1537515405_
                                                              _type-body1538115408_)
                                                       (if (gx#stx-pair?
                                                            _hd1537515405_)
                                                           (let ((_e1537815411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd1537515405_)))
                     (let ((_lp-hd1537915415_ (##car _e1537815411_))
                           (_lp-tl1538015418_ (##cdr _e1537815411_)))
                       (_loop1537715401_
                        _lp-tl1538015418_
                        (cons _lp-hd1537915415_ _type-body1538115408_))))
                   (let ((_type-body1538215421_
                          (reverse _type-body1538115408_)))
                     ((lambda (_L15425_)
                        (let ()
                          (let* ((_g1544215450_
                                  (lambda (_g1544315446_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1544315446_)))
                                 (_g1544115904_
                                  (lambda (_g1544315454_)
                                    ((lambda (_L15457_)
                                       (let ()
                                         (let* ((_g1547015478_
                                                 (lambda (_g1547115474_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1547115474_)))
                                                (_g1546915900_
                                                 (lambda (_g1547115482_)
                                                   ((lambda (_L15485_)
                                                      (let ()
                                                        (let* ((_g1549815506_
                                                                (lambda (_g1549915502_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1549915502_)))
                       (_g1549715814_
                        (lambda (_g1549915510_)
                          ((lambda (_L15513_)
                             (let ()
                               (let* ((_g1552615534_
                                       (lambda (_g1552715530_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1552715530_)))
                                      (_g1552515810_
                                       (lambda (_g1552715538_)
                                         ((lambda (_L15541_)
                                            (let ()
                                              (let* ((_g1555415562_
                                                      (lambda (_g1555515558_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1555515558_)))
                                                     (_g1555315806_
                                                      (lambda (_g1555515566_)
                                                        ((lambda (_L15569_)
                                                           (let ()
                                                             (let* ((_g1558215590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1558315586_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1558315586_)))
                            (_g1558115764_
                             (lambda (_g1558315594_)
                               ((lambda (_L15597_)
                                  (let ()
                                    (let* ((_g1561015618_
                                            (lambda (_g1561115614_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g1561115614_)))
                                           (_g1560915760_
                                            (lambda (_g1561115622_)
                                              ((lambda (_L15625_)
                                                 (let ()
                                                   (let* ((_g1563815646_
                                                           (lambda (_g1563915642_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1563915642_)))
                                                          (_g1563715756_
                                                           (lambda (_g1563915650_)
                                                             ((lambda (_L15653_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g1566615674_
                                  (lambda (_g1566715670_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1566715670_)))
                                 (_g1566515752_
                                  (lambda (_g1566715678_)
                                    ((lambda (_L15681_)
                                       (let ()
                                         (let* ((_g1569415702_
                                                 (lambda (_g1569515698_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1569515698_)))
                                                (_g1569315724_
                                                 (lambda (_g1569515706_)
                                                   ((lambda (_L15709_)
                                                      (let ()
                                                        (let ()
                                                          (_wrap14839_
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin)
                         (cons _L15457_ (cons _L15709_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1569515706_))))
                                           (_g1569315724_
                                            (_wrap14839_
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defsyntax)
                                                   (cons _L14895_
                                                         (cons (cons _L15485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons 'runtime-identifier:
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'quote-syntax)
                                               (cons _L14923_ '()))
                                         (cons 'expander-identifiers:
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '@list)
                                                           (cons _L15513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _L14923_ '()))
                               (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                           (cons _L14951_ '()))
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax)
                                                 (cons _L14979_ '()))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         '#!void
                                                         (foldr (lambda (_g1572715734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1572815737_)
                          (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                      (cons _g1572715734_ '()))
                                _g1572815737_))
                        '()
                        _L15145_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '@list)
                                                             (begin
                                                               '#!void
                                                               (foldr (lambda (_g1572915740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1573015743_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _g1572915740_ '()))
                                      _g1573015743_))
                              '()
                              _L15216_)))
               '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'type-exhibitor:
                                                           (cons (cons _L15541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _L15569_ '()))
                                     (cons _L15597_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L15625_ '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _L15653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (cons (gx#datum->syntax '#f 'quote) (cons _L15681_ '()))
                     (cons (cons (gx#datum->syntax '#f 'quote)
                                 (cons (begin
                                         '#!void
                                         (foldr (lambda (_g1573115746_
                                                         _g1573215749_)
                                                  (cons _g1573115746_
                                                        _g1573215749_))
                                                '()
                                                _L15074_))
                                       '()))
                           '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _g1566715678_))))
                            (_g1566515752_ _plist15313_))))
                      _g1563915650_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1563715756_
                                                      (if (not (null? _type-ctor15295_))
                                                          (cadr _type-ctor15295_)
                                                          '#f)))))
                                               _g1561115622_))))
                                      (_g1560915760_
                                       (cadr _type-name15265_)))))
                                _g1558315594_))))
                       (_g1558115764_
                        (let ((_quote-e15803_
                               (lambda (_x-ref15768_)
                                 (if _x-ref15768_
                                     (let* ((_g1577115779_
                                             (lambda (_g1577215775_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1577215775_)))
                                            (_g1577015799_
                                             (lambda (_g1577215783_)
                                               ((lambda (_L15786_)
                                                  (let ()
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote-syntax)
                                                          (cons _L15786_
                                                                '()))))
                                                _g1577215783_))))
                                       (_g1577015799_ _x-ref15768_))
                                     '#f))))
                          (if _struct?14837_
                              (_quote-e15803_ _super-ref14834_)
                              (cons 'list
                                    (map _quote-e15803_
                                         _super-ref14834_))))))))
                 _g1555515566_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1555315806_
                                                 (if (not (null? _type-id15280_))
                                                     (cadr _type-id15280_)
                                                     '#f)))))
                                          _g1552715538_))))
                                 (_g1552515810_
                                  (if _struct?14837_
                                      (gx#datum->syntax
                                       '#f
                                       'make-runtime-struct-exhibitor)
                                      (gx#datum->syntax
                                       '#f
                                       'make-runtime-class-exhibitor))))))
                           _g1549915510_))))
                  (_g1549715814_
                   (if _struct?14837_
                       (if _super14846_
                           (cons (gx#datum->syntax '#f 'quote-syntax)
                                 (cons _L15007_ '()))
                           '#f)
                       (let* ((_g1581815835_
                               (lambda (_g1581915831_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _g1581915831_)))
                              (_g1581715896_
                               (lambda (_g1581915839_)
                                 (if (gx#stx-pair/null? _g1581915839_)
                                     (if (fx>= (gx#stx-length _g1581915839_)
                                               '0)
                                         (let ((_g30730_
                                                (gx#syntax-split-splice
                                                 _g1581915839_
                                                 '0)))
                                           (begin
                                             (let ((_g30731_
                                                    (values-count _g30730_)))
                                               (if (not (fx= _g30731_ 2))
                                                   (error "Context expects 2 values"
                                                          _g30731_)))
                                             (let ((_target1582115842_
                                                    (values-ref _g30730_ 0))
                                                   (_tl1582315845_
                                                    (values-ref _g30730_ 1)))
                                               (if (gx#stx-null?
                                                    _tl1582315845_)
                                                   (letrec ((_loop1582415848_
                                                             (lambda (_hd1582215852_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _super-id1582815855_)
                       (if (gx#stx-pair? _hd1582215852_)
                           (let ((_e1582515858_ (gx#syntax-e _hd1582215852_)))
                             (let ((_lp-hd1582615862_ (##car _e1582515858_))
                                   (_lp-tl1582715865_ (##cdr _e1582515858_)))
                               (_loop1582415848_
                                _lp-tl1582715865_
                                (cons _lp-hd1582615862_
                                      _super-id1582815855_))))
                           (let ((_super-id1582915868_
                                  (reverse _super-id1582815855_)))
                             ((lambda (_L15872_)
                                (let ()
                                  (cons (gx#datum->syntax '#f '@list)
                                        (begin
                                          '#!void
                                          (foldr (lambda (_g1588715890_
                                                          _g1588815893_)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote-syntax)
                                                               (cons _g1588715890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 _g1588815893_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()
                                                 _L15872_)))))
                              _super-id1582915868_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_loop1582415848_
                                                      _target1582115842_
                                                      '()))
                                                   (_g1581815835_
                                                    _g1581915839_)))))
                                         (_g1581815835_ _g1581915839_))
                                     (_g1581815835_ _g1581915839_)))))
                         (_g1581715896_ _L15007_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _g1547115482_))))
                                           (_g1546915900_
                                            (if _struct?14837_
                                                (gx#datum->syntax
                                                 '#f
                                                 'make-extended-struct-info)
                                                (gx#datum->syntax
                                                 '#f
                                                 'make-extended-class-info))))))
                                     _g1544315454_))))
                            (_g1544115904_
                             (_wrap14839_
                              (cons _L14864_
                                    (cons _L14923_
                                          (cons _L15007_
                                                (cons _L14951_
                                                      (cons _L14979_
                                                            (begin
                                                              '#!void
                                                              (foldr (lambda (_g1590715910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g1590815913_)
                               (cons _g1590715910_ _g1590815913_))
                             '()
                             _L15425_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      _type-body1538215421_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop1537715401_
                                              _target1537415395_
                                              '()))
                                           (_g1537115388_ _g1537215392_)))))
                                 (_g1537115388_ _g1537215392_))
                             (_g1537115388_ _g1537215392_)))))
                 (_g1537015916_
                  (foldr cons
                         (foldr cons
                                (foldr cons
                                       (foldr cons
                                              (foldr cons
                                                     _type-unchecked15368_
                                                     _type-plist15353_)
                                              _type-ctor15295_)
                                       _type-name15265_)
                                _type-id15280_)
                         _type-attr15258_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _setf1517315212_))))))
                                  (_loop1516815192_ _target1516515186_ '()))
                                (_g1516215179_ _g1516315183_)))))
                      (_g1516215179_ _g1516315183_))
                  (_g1516215179_ _g1516315183_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1516115920_
                                               (gx#stx-map
                                                (lambda (_g1592315925_)
                                                  (_make-id14841_
                                                   _name14843_
                                                   '"-"
                                                   _g1592315925_
                                                   '"-set!"))
                                                _els14835_)))))
                                        _getf1510215141_))))))
                       (_loop1509715121_ _target1509415115_ '()))
                     (_g1509115108_ _g1509215112_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1509115108_
                                                    _g1509215112_))
                                               (_g1509115108_
                                                _g1509215112_)))))
                                   (_g1509015929_
                                    (gx#stx-map
                                     (lambda (_g1593215934_)
                                       (_make-id14841_
                                        _name14843_
                                        '"-"
                                        _g1593215934_))
                                     _els14835_)))))
                             _attr1503115070_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1502615050_
                                                     _target1502315044_
                                                     '()))
                                                  (_g1502015037_
                                                   _g1502115041_)))))
                                        (_g1502015037_ _g1502115041_))
                                    (_g1502015037_ _g1502115041_)))))
                        (_g1501915938_ _els14835_))))
                  _g1499315004_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1499115942_
                                                  (if _struct?14837_
                                                      (if _super14846_
                                                          (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                           _super14846_)
                                                          '#f)
                                                      (map |gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                           _super14846_))))))
                                           _g1496514976_))))
                                  (_g1496315946_
                                   (_make-id14841_ _name14843_ '"?")))))
                            _g1493714948_))))
                   (_g1493515950_ (_make-id14841_ '"make-" _name14843_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1490914920_))))
                                            (_g1490715954_
                                             (_make-id14841_
                                              _name14843_
                                              '"::t")))))
                                      _g1488114892_))))
                             (_g1487915958_ _id14833_))))
                       _g1485014861_))))
              (_g1484815962_
               (if _struct?14837_
                   (gx#datum->syntax '#f 'defstruct-type)
                   (gx#datum->syntax '#f 'defclass-type))))))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defstruct|
      (lambda (_stx16290_)
        (letrec ((_generate16293_
                  (lambda (_hd16377_ _fields16379_ _body16380_)
                    (let* ((_g1638316398_
                            (lambda (_g1638416394_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1638416394_)))
                           (_g1638216409_
                            (lambda (_g1638416402_)
                              ((lambda ()
                                 (if (gx#identifier? _hd16377_)
                                     (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                      _stx16290_
                                      _hd16377_
                                      '#f
                                      _fields16379_
                                      _body16380_
                                      '#t)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _stx16290_
                                      _hd16377_))))))
                           (_g1638116453_
                            (lambda (_g1638416413_)
                              (if (gx#stx-pair? _g1638416413_)
                                  (let ((_e1638716416_
                                         (gx#syntax-e _g1638416413_)))
                                    (let ((_hd1638816420_
                                           (##car _e1638716416_))
                                          (_tl1638916423_
                                           (##cdr _e1638716416_)))
                                      (if (gx#stx-pair? _tl1638916423_)
                                          (let ((_e1639016426_
                                                 (gx#syntax-e _tl1638916423_)))
                                            (let ((_hd1639116430_
                                                   (##car _e1639016426_))
                                                  (_tl1639216433_
                                                   (##cdr _e1639016426_)))
                                              (if (gx#stx-null? _tl1639216433_)
                                                  ((lambda (_L16436_ _L16438_)
                                                     (if (if (gx#identifier?
                                                              _L16438_)
                                                             (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-struct-info?|
                                                              _L16436_)
                                                             '#f)
                                                         (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                                          _stx16290_
                                                          _L16438_
                                                          _L16436_
                                                          _fields16379_
                                                          _body16380_
                                                          '#t)
                                                         (_g1638216409_
                                                          _g1638416413_)))
                                                   _hd1639116430_
                                                   _hd1638816420_)
                                                  (_g1638216409_
                                                   _g1638416413_))))
                                          (_g1638216409_ _g1638416413_))))
                                  (_g1638216409_ _g1638416413_)))))
                      (_g1638116453_ _hd16377_)))))
          (let* ((_g1629616315_
                  (lambda (_g1629716311_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1629716311_)))
                 (_g1629516373_
                  (lambda (_g1629716319_)
                    (if (gx#stx-pair? _g1629716319_)
                        (let ((_e1630116322_ (gx#syntax-e _g1629716319_)))
                          (let ((_hd1630216326_ (##car _e1630116322_))
                                (_tl1630316329_ (##cdr _e1630116322_)))
                            (if (gx#stx-pair? _tl1630316329_)
                                (let ((_e1630416332_
                                       (gx#syntax-e _tl1630316329_)))
                                  (let ((_hd1630516336_ (##car _e1630416332_))
                                        (_tl1630616339_ (##cdr _e1630416332_)))
                                    (if (gx#stx-pair? _tl1630616339_)
                                        (let ((_e1630716342_
                                               (gx#syntax-e _tl1630616339_)))
                                          (let ((_hd1630816346_
                                                 (##car _e1630716342_))
                                                (_tl1630916349_
                                                 (##cdr _e1630716342_)))
                                            ((lambda (_L16352_
                                                      _L16354_
                                                      _L16355_)
                                               (if (if (gx#identifier-list?
                                                        _L16354_)
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                        _L16352_)
                                                       '#f)
                                                   (_generate16293_
                                                    _L16355_
                                                    _L16354_
                                                    _L16352_)
                                                   (_g1629616315_
                                                    _g1629716319_)))
                                             _tl1630916349_
                                             _hd1630816346_
                                             _hd1630516336_)))
                                        (_g1629616315_ _g1629716319_))))
                                (_g1629616315_ _g1629716319_))))
                        (_g1629616315_ _g1629716319_)))))
            (_g1629516373_ _stx16290_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defclass|
      (lambda (_stx16457_)
        (letrec ((_generate16460_
                  (lambda (_hd16544_ _slots16546_ _body16547_)
                    (let* ((_g1655016562_
                            (lambda (_g1655116558_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1655116558_)))
                           (_g1654916573_
                            (lambda (_g1655116566_)
                              ((lambda ()
                                 (if (gx#identifier? _hd16544_)
                                     (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                      _stx16457_
                                      _hd16544_
                                      '()
                                      _slots16546_
                                      _body16547_
                                      '#f)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _stx16457_
                                      _hd16544_))))))
                           (_g1654816605_
                            (lambda (_g1655116577_)
                              (if (gx#stx-pair? _g1655116577_)
                                  (let ((_e1655416580_
                                         (gx#syntax-e _g1655116577_)))
                                    (let ((_hd1655516584_
                                           (##car _e1655416580_))
                                          (_tl1655616587_
                                           (##cdr _e1655416580_)))
                                      ((lambda (_L16590_ _L16592_)
                                         (if (if (gx#stx-list? _L16590_)
                                                 (gx#stx-andmap
                                                  |gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                  _L16590_)
                                                 '#f)
                                             (|gerbil/core$<MOP>$<MOP:2>[1]#generate-typedef|
                                              _stx16457_
                                              _L16592_
                                              (gx#syntax->list _L16590_)
                                              _slots16546_
                                              _body16547_
                                              '#f)
                                             (_g1654916573_ _g1655116577_)))
                                       _tl1655616587_
                                       _hd1655516584_)))
                                  (_g1654916573_ _g1655116577_)))))
                      (_g1654816605_ _hd16544_)))))
          (let* ((_g1646316482_
                  (lambda (_g1646416478_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1646416478_)))
                 (_g1646216540_
                  (lambda (_g1646416486_)
                    (if (gx#stx-pair? _g1646416486_)
                        (let ((_e1646816489_ (gx#syntax-e _g1646416486_)))
                          (let ((_hd1646916493_ (##car _e1646816489_))
                                (_tl1647016496_ (##cdr _e1646816489_)))
                            (if (gx#stx-pair? _tl1647016496_)
                                (let ((_e1647116499_
                                       (gx#syntax-e _tl1647016496_)))
                                  (let ((_hd1647216503_ (##car _e1647116499_))
                                        (_tl1647316506_ (##cdr _e1647116499_)))
                                    (if (gx#stx-pair? _tl1647316506_)
                                        (let ((_e1647416509_
                                               (gx#syntax-e _tl1647316506_)))
                                          (let ((_hd1647516513_
                                                 (##car _e1647416509_))
                                                (_tl1647616516_
                                                 (##cdr _e1647416509_)))
                                            ((lambda (_L16519_
                                                      _L16521_
                                                      _L16522_)
                                               (if (if (gx#identifier-list?
                                                        _L16521_)
                                                       (|gerbil/core$<MOP>$<MOP:2>[1]#typedef-body?|
                                                        _L16519_)
                                                       '#f)
                                                   (_generate16460_
                                                    _L16522_
                                                    _L16521_
                                                    _L16519_)
                                                   (_g1646316482_
                                                    _g1646416486_)))
                                             _tl1647616516_
                                             _hd1647516513_
                                             _hd1647216503_)))
                                        (_g1646316482_ _g1646416486_))))
                                (_g1646316482_ _g1646416486_))))
                        (_g1646316482_ _g1646416486_)))))
            (_g1646216540_ _stx16457_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#defmethod|
      (lambda (_stx16609_)
        (letrec ((_wrap16612_
                  (lambda (_e-stx16917_)
                    (gx#stx-wrap-source
                     _e-stx16917_
                     (gx#stx-source _stx16609_))))
                 (_method-opt?16614_
                  (lambda (_x16914_) (memq (gx#stx-e _x16914_) '(rebind:)))))
          (let* ((_g1661616645_
                  (lambda (_g1661716641_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1661716641_)))
                 (_g1661516910_
                  (lambda (_g1661716649_)
                    (if (gx#stx-pair? _g1661716649_)
                        (let ((_e1662216652_ (gx#syntax-e _g1661716649_)))
                          (let ((_hd1662316656_ (##car _e1662216652_))
                                (_tl1662416659_ (##cdr _e1662216652_)))
                            (if (gx#stx-pair? _tl1662416659_)
                                (let ((_e1662516662_
                                       (gx#syntax-e _tl1662416659_)))
                                  (let ((_hd1662616666_ (##car _e1662516662_))
                                        (_tl1662716669_ (##cdr _e1662516662_)))
                                    (if (gx#stx-pair? _hd1662616666_)
                                        (let ((_e1662816672_
                                               (gx#syntax-e _hd1662616666_)))
                                          (let ((_hd1662916676_
                                                 (##car _e1662816672_))
                                                (_tl1663016679_
                                                 (##cdr _e1662816672_)))
                                            (if (gx#identifier? _hd1662916676_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core$<MOP>$<MOP:2>[1]#_g30732_|
                                                     _hd1662916676_)
                                                    (if (gx#stx-pair?
                                                         _tl1663016679_)
                                                        (let ((_e1663116682_
                                                               (gx#syntax-e
                                                                _tl1663016679_)))
                                                          (let ((_hd1663216686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1663116682_))
                        (_tl1663316689_ (##cdr _e1663116682_)))
                    (if (gx#stx-pair? _tl1663316689_)
                        (let ((_e1663416692_ (gx#syntax-e _tl1663316689_)))
                          (let ((_hd1663516696_ (##car _e1663416692_))
                                (_tl1663616699_ (##cdr _e1663416692_)))
                            (if (gx#stx-null? _tl1663616699_)
                                (if (gx#stx-pair? _tl1662716669_)
                                    (let ((_e1663716702_
                                           (gx#syntax-e _tl1662716669_)))
                                      (let ((_hd1663816706_
                                             (##car _e1663716702_))
                                            (_tl1663916709_
                                             (##cdr _e1663716702_)))
                                        ((lambda (_L16712_
                                                  _L16714_
                                                  _L16715_
                                                  _L16716_)
                                           (if (if (gx#identifier? _L16716_)
                                                   (if (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                        _L16715_)
                                                       (gx#stx-plist?
                                                        _L16712_
                                                        _method-opt?16614_)
                                                       '#f)
                                                   '#f)
                                               (let* ((_klass16741_
                                                       (gx#syntax-local-value
                                                        _L16715_))
                                                      (_rebind?16744_
                                                       (if (gx#stx-e
                                                            (gx#stx-getq
                                                             'rebind:
                                                             _L16712_))
                                                           '#t
                                                           '#f))
                                                      (_g1674716755_
                                                       (lambda (_g1674816751_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g1674816751_)))
                                                      (_g1674616906_
                                                       (lambda (_g1674816759_)
                                                         ((lambda (_L16762_)
                                                            (let ()
                                                              (let* ((_g1677616784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_g1677716780_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1677716780_)))
                             (_g1677516902_
                              (lambda (_g1677716788_)
                                ((lambda (_L16791_)
                                   (let ()
                                     (let* ((_g1680416812_
                                             (lambda (_g1680516808_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g1680516808_)))
                                            (_g1680316898_
                                             (lambda (_g1680516816_)
                                               ((lambda (_L16819_)
                                                  (let ()
                                                    (let* ((_g1683216840_
                                                            (lambda (_g1683316836_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1683316836_)))
                                                           (_g1683116894_
                                                            (lambda (_g1683316844_)
                                                              ((lambda (_L16847_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1686016868_
                                   (lambda (_g1686116864_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1686116864_)))
                                  (_g1685916890_
                                   (lambda (_g1686116872_)
                                     ((lambda (_L16875_)
                                        (let ()
                                          (let ()
                                            (_wrap16612_
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'begin)
                                                   (cons _L16819_
                                                         (cons _L16875_
                                                               '())))))))
                                      _g1686116872_))))
                             (_g1685916890_
                              (_wrap16612_
                               (cons (gx#datum->syntax '#f 'bind-method!)
                                     (cons _L16762_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _L16716_ '()))
                                                 (cons _L16791_
                                                       (cons _L16847_
                                                             '()))))))))))
                       _g1683316844_))))
              (_g1683116894_ _rebind?16744_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _g1680516816_))))
                                       (_g1680316898_
                                        (_wrap16612_
                                         (cons (gx#datum->syntax '#f 'def)
                                               (cons _L16791_
                                                     (cons _L16714_ '()))))))))
                                 _g1677716788_))))
                        (_g1677516902_
                         (gx#stx-identifier
                          _L16716_
                          _L16715_
                          '"::"
                          _L16716_)))))
                  _g1674816759_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1674616906_
                                                  (|gerbil/core$<MOP>$<MOP:2>[1]#runtime-type-identifier|
                                                   _klass16741_)))
                                               (if (not (gx#identifier?
                                                         _L16716_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; expected method identifier"
                                                    _stx16609_
                                                    _L16716_)
                                                   (if (not (|gerbil/core$<MOP>$<MOP:2>[1]#syntax-local-type-info?|
                                                             _L16715_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; expected type identifier"
                                                        _stx16609_
                                                        _L16715_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; illegal method options"
                                                        _stx16609_)))))
                                         _tl1663916709_
                                         _hd1663816706_
                                         _hd1663516696_
                                         _hd1663216686_)))
                                    (_g1661616645_ _g1661716649_))
                                (_g1661616645_ _g1661716649_))))
                        (_g1661616645_ _g1661716649_))))
                (_g1661616645_ _g1661716649_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1661616645_
                                                     _g1661716649_))
                                                (_g1661616645_
                                                 _g1661716649_))))
                                        (_g1661616645_ _g1661716649_))))
                                (_g1661616645_ _g1661716649_))))
                        (_g1661616645_ _g1661716649_)))))
            (_g1661516910_ _stx16609_)))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@method|
      (lambda (_$stx16920_)
        (let* ((_g1692516974_
                (lambda (_g1692616970_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1692616970_)))
               (_g1692417073_
                (lambda (_g1692616978_)
                  (if (gx#stx-pair? _g1692616978_)
                      (let ((_e1695116981_ (gx#syntax-e _g1692616978_)))
                        (let ((_hd1695216985_ (##car _e1695116981_))
                              (_tl1695316988_ (##cdr _e1695116981_)))
                          (if (gx#stx-pair? _tl1695316988_)
                              (let ((_e1695416991_
                                     (gx#syntax-e _tl1695316988_)))
                                (let ((_hd1695516995_ (##car _e1695416991_))
                                      (_tl1695616998_ (##cdr _e1695416991_)))
                                  (if (gx#stx-pair? _tl1695616998_)
                                      (let ((_e1695717001_
                                             (gx#syntax-e _tl1695616998_)))
                                        (let ((_hd1695817005_
                                               (##car _e1695717001_))
                                              (_tl1695917008_
                                               (##cdr _e1695717001_)))
                                          (if (gx#stx-pair/null?
                                               _tl1695917008_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1695917008_)
                                                        '0)
                                                  (let ((_g30733_
                                                         (gx#syntax-split-splice
                                                          _tl1695917008_
                                                          '0)))
                                                    (begin
                                                      (let ((_g30734_
                                                             (values-count
                                                              _g30733_)))
                                                        (if (not (fx= _g30734_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g30734_)))
              (let ((_target1696017011_ (values-ref _g30733_ 0))
                    (_tl1696217014_ (values-ref _g30733_ 1)))
                (if (gx#stx-null? _tl1696217014_)
                    (letrec ((_loop1696317017_
                              (lambda (_hd1696117021_ _arg1696717024_)
                                (if (gx#stx-pair? _hd1696117021_)
                                    (let ((_e1696417027_
                                           (gx#syntax-e _hd1696117021_)))
                                      (let ((_lp-hd1696517031_
                                             (##car _e1696417027_))
                                            (_lp-tl1696617034_
                                             (##cdr _e1696417027_)))
                                        (_loop1696317017_
                                         _lp-tl1696617034_
                                         (cons _lp-hd1696517031_
                                               _arg1696717024_))))
                                    (let ((_arg1696817037_
                                           (reverse _arg1696717024_)))
                                      ((lambda (_L17041_ _L17043_ _L17044_)
                                         (if (gx#identifier? _L17044_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'call-method)
                                                   (cons _L17043_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L17044_ '()))
                       (begin
                         '#!void
                         (foldr (lambda (_g1706417067_ _g1706517070_)
                                  (cons _g1706417067_ _g1706517070_))
                                '()
                                _L17041_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1692516974_ _g1692616978_)))
                                       _arg1696817037_
                                       _hd1695817005_
                                       _hd1695516995_))))))
                      (_loop1696317017_ _target1696017011_ '()))
                    (_g1692516974_ _g1692616978_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1692516974_
                                                   _g1692616978_))
                                              (_g1692516974_ _g1692616978_))))
                                      (_g1692516974_ _g1692616978_))))
                              (_g1692516974_ _g1692616978_))))
                      (_g1692516974_ _g1692616978_))))
               (_g1692317179_
                (lambda (_g1692617077_)
                  (if (gx#stx-pair? _g1692617077_)
                      (let ((_e1693017080_ (gx#syntax-e _g1692617077_)))
                        (let ((_hd1693117084_ (##car _e1693017080_))
                              (_tl1693217087_ (##cdr _e1693017080_)))
                          (if (gx#stx-pair? _tl1693217087_)
                              (let ((_e1693317090_
                                     (gx#syntax-e _tl1693217087_)))
                                (let ((_hd1693417094_ (##car _e1693317090_))
                                      (_tl1693517097_ (##cdr _e1693317090_)))
                                  (if (gx#stx-pair? _tl1693517097_)
                                      (let ((_e1693617100_
                                             (gx#syntax-e _tl1693517097_)))
                                        (let ((_hd1693717104_
                                               (##car _e1693617100_))
                                              (_tl1693817107_
                                               (##cdr _e1693617100_)))
                                          (if (gx#stx-pair/null?
                                               _tl1693817107_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1693817107_)
                                                        '0)
                                                  (let ((_g30735_
                                                         (gx#syntax-split-splice
                                                          _tl1693817107_
                                                          '0)))
                                                    (begin
                                                      (let ((_g30736_
                                                             (values-count
                                                              _g30735_)))
                                                        (if (not (fx= _g30736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g30736_)))
              (let ((_target1693917110_ (values-ref _g30735_ 0))
                    (_tl1694117113_ (values-ref _g30735_ 1)))
                (if (gx#stx-null? _tl1694117113_)
                    (letrec ((_loop1694217116_
                              (lambda (_hd1694017120_ _arg1694617123_)
                                (if (gx#stx-pair? _hd1694017120_)
                                    (let ((_e1694317126_
                                           (gx#syntax-e _hd1694017120_)))
                                      (let ((_lp-hd1694417130_
                                             (##car _e1694317126_))
                                            (_lp-tl1694517133_
                                             (##cdr _e1694317126_)))
                                        (_loop1694217116_
                                         _lp-tl1694517133_
                                         (cons _lp-hd1694417130_
                                               _arg1694617123_))))
                                    (let ((_arg1694717136_
                                           (reverse _arg1694617123_)))
                                      ((lambda (_L17140_ _L17142_ _L17143_)
                                         (if (if (gx#identifier? _L17143_)
                                                 (gx#stx-ormap
                                                  gx#ellipsis?
                                                  (begin
                                                    '#!void
                                                    (foldr (lambda (_g1716217165_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g1716317168_)
                     (cons _g1716217165_ _g1716317168_))
                   '()
                   _L17140_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#f)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'apply)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'call-method)
                                                         (cons _L17142_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'quote)
                                   (cons _L17143_ '()))
                             (cons (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           '#!void
                                           (foldr (lambda (_g1717017173_
                                                           _g1717117176_)
                                                    (cons _g1717017173_
                                                          _g1717117176_))
                                                  '()
                                                  _L17140_)))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g1692417073_ _g1692617077_)))
                                       _arg1694717136_
                                       _hd1693717104_
                                       _hd1693417094_))))))
                      (_loop1694217116_ _target1693917110_ '()))
                    (_g1692417073_ _g1692617077_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1692417073_
                                                   _g1692617077_))
                                              (_g1692417073_ _g1692617077_))))
                                      (_g1692417073_ _g1692617077_))))
                              (_g1692417073_ _g1692617077_))))
                      (_g1692417073_ _g1692617077_)))))
          (_g1692317179_ _$stx16920_))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@|
      (lambda (_$stx17185_)
        (let* ((_g1719017230_
                (lambda (_g1719117226_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1719117226_)))
               (_g1718917331_
                (lambda (_g1719117234_)
                  (if (gx#stx-pair? _g1719117234_)
                      (let ((_e1720717237_ (gx#syntax-e _g1719117234_)))
                        (let ((_hd1720817241_ (##car _e1720717237_))
                              (_tl1720917244_ (##cdr _e1720717237_)))
                          (if (gx#stx-pair? _tl1720917244_)
                              (let ((_e1721017247_
                                     (gx#syntax-e _tl1720917244_)))
                                (let ((_hd1721117251_ (##car _e1721017247_))
                                      (_tl1721217254_ (##cdr _e1721017247_)))
                                  (if (gx#stx-pair? _tl1721217254_)
                                      (let ((_e1721317257_
                                             (gx#syntax-e _tl1721217254_)))
                                        (let ((_hd1721417261_
                                               (##car _e1721317257_))
                                              (_tl1721517264_
                                               (##cdr _e1721317257_)))
                                          (if (gx#stx-pair/null?
                                               _tl1721517264_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1721517264_)
                                                        '0)
                                                  (let ((_g30737_
                                                         (gx#syntax-split-splice
                                                          _tl1721517264_
                                                          '0)))
                                                    (begin
                                                      (let ((_g30738_
                                                             (values-count
                                                              _g30737_)))
                                                        (if (not (fx= _g30738_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g30738_)))
              (let ((_target1721617267_ (values-ref _g30737_ 0))
                    (_tl1721817270_ (values-ref _g30737_ 1)))
                (if (gx#stx-null? _tl1721817270_)
                    (letrec ((_loop1721917273_
                              (lambda (_hd1721717277_ _rest1722317280_)
                                (if (gx#stx-pair? _hd1721717277_)
                                    (let ((_e1722017283_
                                           (gx#syntax-e _hd1721717277_)))
                                      (let ((_lp-hd1722117287_
                                             (##car _e1722017283_))
                                            (_lp-tl1722217290_
                                             (##cdr _e1722017283_)))
                                        (_loop1721917273_
                                         _lp-tl1722217290_
                                         (cons _lp-hd1722117287_
                                               _rest1722317280_))))
                                    (let ((_rest1722417293_
                                           (reverse _rest1722317280_)))
                                      ((lambda (_L17297_
                                                _L17299_
                                                _L17300_
                                                _L17301_)
                                         (cons _L17301_
                                               (cons (cons _L17301_
                                                           (cons _L17300_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L17299_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr (lambda (_g1732217325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g1732317328_)
                        (cons _g1732217325_ _g1732317328_))
                      '()
                      _L17297_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _rest1722417293_
                                       _hd1721417261_
                                       _hd1721117251_
                                       _hd1720817241_))))))
                      (_loop1721917273_ _target1721617267_ '()))
                    (_g1719017230_ _g1719117234_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1719017230_
                                                   _g1719117234_))
                                              (_g1719017230_ _g1719117234_))))
                                      (_g1719017230_ _g1719117234_))))
                              (_g1719017230_ _g1719117234_))))
                      (_g1719017230_ _g1719117234_))))
               (_g1718817385_
                (lambda (_g1719117335_)
                  (if (gx#stx-pair? _g1719117335_)
                      (let ((_e1719417338_ (gx#syntax-e _g1719117335_)))
                        (let ((_hd1719517342_ (##car _e1719417338_))
                              (_tl1719617345_ (##cdr _e1719417338_)))
                          (if (gx#stx-pair? _tl1719617345_)
                              (let ((_e1719717348_
                                     (gx#syntax-e _tl1719617345_)))
                                (let ((_hd1719817352_ (##car _e1719717348_))
                                      (_tl1719917355_ (##cdr _e1719717348_)))
                                  (if (gx#stx-pair? _tl1719917355_)
                                      (let ((_e1720017358_
                                             (gx#syntax-e _tl1719917355_)))
                                        (let ((_hd1720117362_
                                               (##car _e1720017358_))
                                              (_tl1720217365_
                                               (##cdr _e1720017358_)))
                                          (if (gx#stx-null? _tl1720217365_)
                                              ((lambda (_L17368_ _L17370_)
                                                 (if (gx#identifier? _L17368_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'slot-ref)
                                                           (cons _L17370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (gx#datum->syntax '#f 'quote)
                                     (cons _L17368_ '()))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1718917331_
                                                      _g1719117335_)))
                                               _hd1720117362_
                                               _hd1719817352_)
                                              (_g1718917331_ _g1719117335_))))
                                      (_g1718917331_ _g1719117335_))))
                              (_g1718917331_ _g1719117335_))))
                      (_g1718917331_ _g1719117335_)))))
          (_g1718817385_ _$stx17185_))))
    (define |gerbil/core$<MOP>$<MOP:2>[:0:]#@-set!|
      (lambda (_$stx17390_)
        (let* ((_g1739517447_
                (lambda (_g1739617443_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1739617443_)))
               (_g1739417576_
                (lambda (_g1739617451_)
                  (if (gx#stx-pair? _g1739617451_)
                      (let ((_e1741817454_ (gx#syntax-e _g1739617451_)))
                        (let ((_hd1741917458_ (##car _e1741817454_))
                              (_tl1742017461_ (##cdr _e1741817454_)))
                          (if (gx#stx-pair? _tl1742017461_)
                              (let ((_e1742117464_
                                     (gx#syntax-e _tl1742017461_)))
                                (let ((_hd1742217468_ (##car _e1742117464_))
                                      (_tl1742317471_ (##cdr _e1742117464_)))
                                  (if (gx#stx-pair? _tl1742317471_)
                                      (let ((_e1742417474_
                                             (gx#syntax-e _tl1742317471_)))
                                        (let ((_hd1742517478_
                                               (##car _e1742417474_))
                                              (_tl1742617481_
                                               (##cdr _e1742417474_)))
                                          (if (gx#stx-pair/null?
                                               _tl1742617481_)
                                              (if (fx>= (gx#stx-length
                                                         _tl1742617481_)
                                                        '2)
                                                  (let ((_g30739_
                                                         (gx#syntax-split-splice
                                                          _tl1742617481_
                                                          '2)))
                                                    (begin
                                                      (let ((_g30740_
                                                             (values-count
                                                              _g30739_)))
                                                        (if (not (fx= _g30740_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g30740_)))
              (let ((_target1742717484_ (values-ref _g30739_ 0))
                    (_tl1742917487_ (values-ref _g30739_ 1)))
                (if (gx#stx-pair? _tl1742917487_)
                    (let ((_e1743617490_ (gx#syntax-e _tl1742917487_)))
                      (let ((_hd1743717494_ (##car _e1743617490_))
                            (_tl1743817497_ (##cdr _e1743617490_)))
                        (if (gx#stx-pair? _tl1743817497_)
                            (let ((_e1743917500_ (gx#syntax-e _tl1743817497_)))
                              (let ((_hd1744017504_ (##car _e1743917500_))
                                    (_tl1744117507_ (##cdr _e1743917500_)))
                                (if (gx#stx-null? _tl1744117507_)
                                    (letrec ((_loop1743017510_
                                              (lambda (_hd1742817514_
                                                       _path1743417517_)
                                                (if (gx#stx-pair?
                                                     _hd1742817514_)
                                                    (let ((_e1743117520_
                                                           (gx#syntax-e
                                                            _hd1742817514_)))
                                                      (let ((_lp-hd1743217524_
                                                             (##car _e1743117520_))
                                                            (_lp-tl1743317527_
                                                             (##cdr _e1743117520_)))
                                                        (_loop1743017510_
                                                         _lp-tl1743317527_
                                                         (cons _lp-hd1743217524_
                                                               _path1743417517_))))
                                                    (let ((_path1743517530_
                                                           (reverse _path1743417517_)))
                                                      ((lambda (_L17534_
                                                                _L17536_
                                                                _L17537_
                                                                _L17538_
                                                                _L17539_
                                                                _L17540_)
                                                         (cons _L17540_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '@)
                                   (cons _L17539_
                                         (cons _L17538_
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g1756717570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g1756817573_)
                  (cons _g1756717570_ _g1756817573_))
                '()
                _L17537_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (cons _L17536_ (cons _L17534_ '())))))
               _hd1744017504_
               _hd1743717494_
               _path1743517530_
               _hd1742517478_
               _hd1742217468_
               _hd1741917458_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_loop1743017510_
                                       _target1742717484_
                                       '()))
                                    (_g1739517447_ _g1739617451_))))
                            (_g1739517447_ _g1739617451_))))
                    (_g1739517447_ _g1739617451_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1739517447_
                                                   _g1739617451_))
                                              (_g1739517447_ _g1739617451_))))
                                      (_g1739517447_ _g1739617451_))))
                              (_g1739517447_ _g1739617451_))))
                      (_g1739517447_ _g1739617451_))))
               (_g1739317644_
                (lambda (_g1739617580_)
                  (if (gx#stx-pair? _g1739617580_)
                      (let ((_e1740017583_ (gx#syntax-e _g1739617580_)))
                        (let ((_hd1740117587_ (##car _e1740017583_))
                              (_tl1740217590_ (##cdr _e1740017583_)))
                          (if (gx#stx-pair? _tl1740217590_)
                              (let ((_e1740317593_
                                     (gx#syntax-e _tl1740217590_)))
                                (let ((_hd1740417597_ (##car _e1740317593_))
                                      (_tl1740517600_ (##cdr _e1740317593_)))
                                  (if (gx#stx-pair? _tl1740517600_)
                                      (let ((_e1740617603_
                                             (gx#syntax-e _tl1740517600_)))
                                        (let ((_hd1740717607_
                                               (##car _e1740617603_))
                                              (_tl1740817610_
                                               (##cdr _e1740617603_)))
                                          (if (gx#stx-pair? _tl1740817610_)
                                              (let ((_e1740917613_
                                                     (gx#syntax-e
                                                      _tl1740817610_)))
                                                (let ((_hd1741017617_
                                                       (##car _e1740917613_))
                                                      (_tl1741117620_
                                                       (##cdr _e1740917613_)))
                                                  (if (gx#stx-null?
                                                       _tl1741117620_)
                                                      ((lambda (_L17623_
                                                                _L17625_
                                                                _L17626_)
                                                         (if (gx#identifier?
                                                              _L17625_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'slot-set!)
                           (cons _L17626_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _L17625_ '()))
                                       (cons _L17623_ '()))))
                     (_g1739417576_ _g1739617580_)))
               _hd1741017617_
               _hd1740717607_
               _hd1740417597_)
              (_g1739417576_ _g1739617580_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1739417576_ _g1739617580_))))
                                      (_g1739417576_ _g1739617580_))))
                              (_g1739417576_ _g1739617580_))))
                      (_g1739417576_ _g1739617580_)))))
          (_g1739317644_ _$stx17390_))))))
