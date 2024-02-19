(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1708352923)
  (begin
    (declare (not safe))
    (define __table::t.id 'gerbil#__table::t)
    (define __table::t
      (##structure
       ##type-type
       __table::t.id
       'raw-table
       '26
       '#f
       '#(table 5 #f count 5 #f free 5 #f hash 5 #f test 5 #f seed 5 #f)))
    (define &raw-table-table
      (lambda (_tab59440_)
        (##unchecked-structure-ref _tab59440_ '1 __table::t 'raw-table-table)))
    (define &raw-table-count
      (lambda (_tab59438_)
        (##unchecked-structure-ref _tab59438_ '2 __table::t 'raw-table-count)))
    (define &raw-table-free
      (lambda (_tab59436_)
        (##unchecked-structure-ref _tab59436_ '3 __table::t 'raw-table-free)))
    (define &raw-table-hash
      (lambda (_tab59434_)
        (##unchecked-structure-ref _tab59434_ '4 __table::t 'raw-table-hash)))
    (define &raw-table-test
      (lambda (_tab59432_)
        (##unchecked-structure-ref _tab59432_ '5 __table::t 'raw-table-test)))
    (define &raw-table-seed
      (lambda (_tab59430_)
        (##unchecked-structure-ref _tab59430_ '6 __table::t 'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_tab59427_ _val59428_)
        (##unchecked-structure-set!
         _tab59427_
         _val59428_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_tab59424_ _val59425_)
        (##unchecked-structure-set!
         _tab59424_
         _val59425_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_tab59421_ _val59422_)
        (##unchecked-structure-set!
         _tab59421_
         _val59422_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_tab59418_ _val59419_)
        (##unchecked-structure-set!
         _tab59418_
         _val59419_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_tab59415_ _val59416_)
        (##unchecked-structure-set!
         _tab59415_
         _val59416_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_tab59412_ _val59413_)
        (##unchecked-structure-set!
         _tab59412_
         _val59413_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_size-hint59410_)
        (if (and (fixnum? _size-hint59410_) (fx> _size-hint59410_ '0))
            (fx* (fxmax '2 (expt '2 (integer-length _size-hint59410_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_size-hint59386_ _hash59387_ _test59388_ _seed59389_)
        (let* ((_size59391_ (raw-table-size-hint->size _size-hint59386_))
               (_table59393_ (make-vector _size59391_ (macro-unused-obj))))
          (##structure
           __table::t
           _table59393_
           '0
           (fxquotient _size59391_ '2)
           _hash59387_
           _test59388_
           _seed59389_))))
    (define make-raw-table__0
      (lambda (_size-hint59399_ _hash59400_ _test59401_)
        (let ((_seed59403_ '0))
          (make-raw-table__%
           _size-hint59399_
           _hash59400_
           _test59401_
           _seed59403_))))
    (define make-raw-table
      (lambda _g59442_
        (let ((_g59441_ (##length _g59442_)))
          (cond ((##fx= _g59441_ 3)
                 (apply (lambda (_size-hint59399_ _hash59400_ _test59401_)
                          (make-raw-table__0
                           _size-hint59399_
                           _hash59400_
                           _test59401_))
                        _g59442_))
                ((##fx= _g59441_ 4)
                 (apply (lambda (_size-hint59405_
                                 _hash59406_
                                 _test59407_
                                 _seed59408_)
                          (make-raw-table__%
                           _size-hint59405_
                           _hash59406_
                           _test59407_
                           _seed59408_))
                        _g59442_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g59442_))))))
    (define raw-table-ref
      (lambda (_tab59341_ _key59342_ _default59343_)
        (let ((_table59345_ (&raw-table-table _tab59341_))
              (_seed59346_ (&raw-table-seed _tab59341_))
              (_hash59347_ (&raw-table-hash _tab59341_))
              (_test59348_ (&raw-table-test _tab59341_)))
          (let* ((_h59350_ (fxxor (_hash59347_ _key59342_) _seed59346_))
                 (_size59353_ (vector-length _table59345_))
                 (_entries59356_ (fxquotient _size59353_ '2))
                 (_start59359_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59350_ _entries59356_)
                   '1)))
            (let _loop59363_ ((_probe59366_ _start59359_)
                              (_i59368_ '1)
                              (_deleted59370_ '#f))
              (let ((_k59373_ (vector-ref _table59345_ _probe59366_)))
                (if (eq? _k59373_ (macro-unused-obj))
                    _default59343_
                    (if (eq? _k59373_ (macro-deleted-obj))
                        (_loop59363_
                         (let ((_next-probe59376_
                                (fx+ _start59359_
                                     _i59368_
                                     (fx* _i59368_ _i59368_))))
                           (fxmodulo _next-probe59376_ _size59353_))
                         (fx+ _i59368_ '1)
                         (let ((_$e59379_ _deleted59370_))
                           (if _$e59379_ _$e59379_ _probe59366_)))
                        (if (_test59348_ _key59342_ _k59373_)
                            (vector-ref _table59345_ (fx+ _probe59366_ '1))
                            (_loop59363_
                             (let ((_next-probe59382_
                                    (fx+ _start59359_
                                         _i59368_
                                         (fx* _i59368_ _i59368_))))
                               (fxmodulo _next-probe59382_ _size59353_))
                             (fx+ _i59368_ '1)
                             _deleted59370_))))))))))
    (define raw-table-set!
      (lambda (_tab59337_ _key59338_ _value59339_)
        (if (fx< (&raw-table-free _tab59337_)
                 (fxquotient (vector-length (&raw-table-table _tab59337_)) '4))
            (__raw-table-rehash! _tab59337_)
            '#!void)
        (__raw-table-set! _tab59337_ _key59338_ _value59339_)))
    (define raw-table-update!
      (lambda (_tab59332_ _key59333_ _update59334_ _default59335_)
        (if (fx< (&raw-table-free _tab59332_)
                 (fxquotient (vector-length (&raw-table-table _tab59332_)) '4))
            (__raw-table-rehash! _tab59332_)
            '#!void)
        (__raw-table-update!
         _tab59332_
         _key59333_
         _update59334_
         _default59335_)))
    (define raw-table-delete!
      (lambda (_tab59293_ _key59294_)
        (let ((_table59296_ (&raw-table-table _tab59293_))
              (_seed59297_ (&raw-table-seed _tab59293_))
              (_hash59298_ (&raw-table-hash _tab59293_))
              (_test59299_ (&raw-table-test _tab59293_)))
          (let* ((_h59301_ (fxxor (_hash59298_ _key59294_) _seed59297_))
                 (_size59304_ (vector-length _table59296_))
                 (_entries59307_ (fxquotient _size59304_ '2))
                 (_start59310_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59301_ _entries59307_)
                   '1)))
            (let _loop59314_ ((_probe59317_ _start59310_) (_i59319_ '1))
              (let ((_k59322_ (vector-ref _table59296_ _probe59317_)))
                (if (eq? _k59322_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59322_ (macro-deleted-obj))
                        (_loop59314_
                         (let ((_next-probe59325_
                                (fx+ _start59310_
                                     _i59319_
                                     (fx* _i59319_ _i59319_))))
                           (fxmodulo _next-probe59325_ _size59304_))
                         (fx+ _i59319_ '1))
                        (if (_test59299_ _key59294_ _k59322_)
                            (begin
                              (vector-set!
                               _table59296_
                               _probe59317_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59296_
                               (fx+ _probe59317_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59293_
                                  (fx- (&raw-table-count _tab59293_) '1)))))
                            (_loop59314_
                             (let ((_next-probe59329_
                                    (fx+ _start59310_
                                         _i59319_
                                         (fx* _i59319_ _i59319_))))
                               (fxmodulo _next-probe59329_ _size59304_))
                             (fx+ _i59319_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_tab59277_ _proc59278_)
        (let* ((_table59280_ (&raw-table-table _tab59277_))
               (_size59282_ (vector-length _table59280_)))
          (let _loop59285_ ((_i59287_ '0))
            (if (fx< _i59287_ _size59282_)
                (begin
                  (let ((_key59289_ (vector-ref _table59280_ _i59287_)))
                    (if (and (not (eq? _key59289_ (macro-unused-obj)))
                             (not (eq? _key59289_ (macro-deleted-obj))))
                        (let ((_value59291_
                               (vector-ref _table59280_ (fx+ _i59287_ '1))))
                          (_proc59278_ _key59289_ _value59291_))
                        '#!void))
                  (_loop59285_ (fx+ _i59287_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_tab59273_)
        (let ((_new-tab59275_ (##structure-copy _tab59273_)))
          (&raw-table-table-set!
           _new-tab59275_
           (vector-copy (&raw-table-table _tab59273_)))
          _new-tab59275_)))
    (define raw-table-clear!
      (lambda (_tab59271_)
        (vector-fill! (&raw-table-table _tab59271_) (macro-unused-obj))
        (&raw-table-count-set! _tab59271_ '0)
        (&raw-table-free-set!
         _tab59271_
         (fxquotient (vector-length (&raw-table-table _tab59271_)) '2))))
    (define __raw-table-set!
      (lambda (_tab59225_ _key59226_ _value59227_)
        (let ((_table59229_ (&raw-table-table _tab59225_))
              (_seed59230_ (&raw-table-seed _tab59225_))
              (_hash59231_ (&raw-table-hash _tab59225_))
              (_test59232_ (&raw-table-test _tab59225_)))
          (let* ((_h59234_ (fxxor (_hash59231_ _key59226_) _seed59230_))
                 (_size59237_ (vector-length _table59229_))
                 (_entries59240_ (fxquotient _size59237_ '2))
                 (_start59243_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59234_ _entries59240_)
                   '1)))
            (let _loop59247_ ((_probe59250_ _start59243_)
                              (_i59252_ '1)
                              (_deleted59254_ '#f))
              (let ((_k59257_ (vector-ref _table59229_ _probe59250_)))
                (if (eq? _k59257_ (macro-unused-obj))
                    (if _deleted59254_
                        (begin
                          (vector-set! _table59229_ _deleted59254_ _key59226_)
                          (vector-set!
                           _table59229_
                           (fx+ _deleted59254_ '1)
                           _value59227_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59225_
                              (fx+ (&raw-table-count _tab59225_) '1)))))
                        (begin
                          (vector-set! _table59229_ _probe59250_ _key59226_)
                          (vector-set!
                           _table59229_
                           (fx+ _probe59250_ '1)
                           _value59227_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59225_
                              (fx- (&raw-table-free _tab59225_) '1))
                             (&raw-table-count-set!
                              _tab59225_
                              (fx+ (&raw-table-count _tab59225_) '1))))))
                    (if (eq? _k59257_ (macro-deleted-obj))
                        (_loop59247_
                         (let ((_next-probe59262_
                                (fx+ _start59243_
                                     _i59252_
                                     (fx* _i59252_ _i59252_))))
                           (fxmodulo _next-probe59262_ _size59237_))
                         (fx+ _i59252_ '1)
                         (let ((_$e59265_ _deleted59254_))
                           (if _$e59265_ _$e59265_ _probe59250_)))
                        (if (_test59232_ _key59226_ _k59257_)
                            (begin
                              (vector-set!
                               _table59229_
                               _probe59250_
                               _key59226_)
                              (vector-set!
                               _table59229_
                               (fx+ _probe59250_ '1)
                               _value59227_))
                            (_loop59247_
                             (let ((_next-probe59268_
                                    (fx+ _start59243_
                                         _i59252_
                                         (fx* _i59252_ _i59252_))))
                               (fxmodulo _next-probe59268_ _size59237_))
                             (fx+ _i59252_ '1)
                             _deleted59254_))))))))))
    (define __raw-table-update!
      (lambda (_tab59178_ _key59179_ _update59180_ _default59181_)
        (let ((_table59183_ (&raw-table-table _tab59178_))
              (_seed59184_ (&raw-table-seed _tab59178_))
              (_hash59185_ (&raw-table-hash _tab59178_))
              (_test59186_ (&raw-table-test _tab59178_)))
          (let* ((_h59188_ (fxxor (_hash59185_ _key59179_) _seed59184_))
                 (_size59191_ (vector-length _table59183_))
                 (_entries59194_ (fxquotient _size59191_ '2))
                 (_start59197_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59188_ _entries59194_)
                   '1)))
            (let _loop59201_ ((_probe59204_ _start59197_)
                              (_i59206_ '1)
                              (_deleted59208_ '#f))
              (let ((_k59211_ (vector-ref _table59183_ _probe59204_)))
                (if (eq? _k59211_ (macro-unused-obj))
                    (if _deleted59208_
                        (begin
                          (vector-set! _table59183_ _deleted59208_ _key59179_)
                          (vector-set!
                           _table59183_
                           (fx+ _deleted59208_ '1)
                           (_update59180_ _default59181_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59178_
                              (fx+ (&raw-table-count _tab59178_) '1)))))
                        (begin
                          (vector-set! _table59183_ _probe59204_ _key59179_)
                          (vector-set!
                           _table59183_
                           (fx+ _probe59204_ '1)
                           (_update59180_ _default59181_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59178_
                              (fx- (&raw-table-free _tab59178_) '1))
                             (&raw-table-count-set!
                              _tab59178_
                              (fx+ (&raw-table-count _tab59178_) '1))))))
                    (if (eq? _k59211_ (macro-deleted-obj))
                        (_loop59201_
                         (let ((_next-probe59216_
                                (fx+ _start59197_
                                     _i59206_
                                     (fx* _i59206_ _i59206_))))
                           (fxmodulo _next-probe59216_ _size59191_))
                         (fx+ _i59206_ '1)
                         (let ((_$e59219_ _deleted59208_))
                           (if _$e59219_ _$e59219_ _probe59204_)))
                        (if (_test59186_ _key59179_ _k59211_)
                            (begin
                              (vector-set!
                               _table59183_
                               _probe59204_
                               _key59179_)
                              (vector-set!
                               _table59183_
                               (fx+ _probe59204_ '1)
                               (_update59180_
                                (vector-ref
                                 _table59183_
                                 (fx+ _probe59204_ '1)))))
                            (_loop59201_
                             (let ((_next-probe59222_
                                    (fx+ _start59197_
                                         _i59206_
                                         (fx* _i59206_ _i59206_))))
                               (fxmodulo _next-probe59222_ _size59191_))
                             (fx+ _i59206_ '1)
                             _deleted59208_))))))))))
    (define __raw-table-rehash!
      (lambda (_tab59159_)
        (let* ((_old-table59161_ (&raw-table-table _tab59159_))
               (_old-size59163_ (vector-length _old-table59161_))
               (_new-size59165_
                (if (fx< (&raw-table-count _tab59159_)
                         (fxquotient _old-size59163_ '4))
                    (vector-length _old-table59161_)
                    (fx* '2 (vector-length _old-table59161_))))
               (_new-table59167_
                (make-vector _new-size59165_ (macro-unused-obj))))
          (&raw-table-table-set! _tab59159_ _new-table59167_)
          (&raw-table-count-set! _tab59159_ '0)
          (&raw-table-free-set! _tab59159_ (fxquotient _new-size59165_ '2))
          (let _lp59170_ ((_i59172_ '0))
            (if (fx< _i59172_ _old-size59163_)
                (begin
                  (let ((_key59174_ (vector-ref _old-table59161_ _i59172_)))
                    (if (and (not (eq? _key59174_ (macro-unused-obj)))
                             (not (eq? _key59174_ (macro-deleted-obj))))
                        (let ((_value59176_
                               (vector-ref
                                _old-table59161_
                                (fx+ _i59172_ '1))))
                          (__raw-table-set!
                           _tab59159_
                           _key59174_
                           _value59176_))
                        '#!void))
                  (_lp59170_ (fx+ _i59172_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_obj59153_)
        (let ((_t59155_ (##type _obj59153_)))
          (if (fx= (fxand _t59155_ '1) '0)
              (fxand (##type-cast _obj59153_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _obj59153_)
                  (symbolic-hash _obj59153_)
                  (fxand (let ((_sn59157_ (object->serial-number _obj59153_)))
                           (if (fixnum? _sn59157_)
                               _sn59157_
                               (fxarithmetic-shift-left
                                (##bignum.mdigit-ref _sn59157_ '0)
                                '10)))
                         (macro-max-fixnum32)))))))
    (define eqv-hash
      (lambda (_obj59143_)
        (letrec ((_combine59145_
                  (lambda (_a59150_ _b59151_)
                    (fxand (fx* (fx+ _a59150_
                                     (fxarithmetic-shift-left _b59151_ '1))
                                '331804471)
                           (macro-max-fixnum32))))
                 (_hash59146_
                  (lambda (_obj59148_)
                    (macro-number-dispatch
                     _obj59148_
                     (eq-hash _obj59148_)
                     (fxand _obj59148_ (macro-max-fixnum32))
                     (modulo _obj59148_ '331804481)
                     (_combine59145_
                      (_hash59146_ (macro-ratnum-numerator _obj59148_))
                      (_hash59146_ (macro-ratnum-denominator _obj59148_)))
                     (_combine59145_
                      (##u16vector-ref _obj59148_ '0)
                      (_combine59145_
                       (##u16vector-ref _obj59148_ '1)
                       (_combine59145_
                        (##u16vector-ref _obj59148_ '2)
                        (##u16vector-ref _obj59148_ '3))))
                     (_combine59145_
                      (_hash59146_ (macro-cpxnum-real _obj59148_))
                      (_hash59146_ (macro-cpxnum-imag _obj59148_)))))))
          (_hash59146_ _obj59143_))))
    (define symbolic?
      (lambda (_obj59138_)
        (let ((_$e59140_ (symbol? _obj59138_)))
          (if _$e59140_ _$e59140_ (keyword? _obj59138_)))))
    (define symbolic-hash (lambda (_obj59136_) (macro-slot '1 _obj59136_)))
    (define string-hash (lambda (_obj59134_) (##string=?-hash _obj59134_)))
    (define make-eq-table__%
      (lambda (_size-hint59115_ _seed59117_)
        (make-raw-table__% _size-hint59115_ eq-hash eq? _seed59117_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_size-hint59123_ '#f) (_seed59125_ '0))
          (make-eq-table__% _size-hint59123_ _seed59125_))))
    (define make-eq-table__1
      (lambda (_size-hint59127_)
        (let ((_seed59129_ '0))
          (make-eq-table__% _size-hint59127_ _seed59129_))))
    (define make-eq-table
      (lambda _g59444_
        (let ((_g59443_ (##length _g59444_)))
          (cond ((##fx= _g59443_ 0)
                 (apply (lambda () (make-eq-table__0)) _g59444_))
                ((##fx= _g59443_ 1)
                 (apply (lambda (_size-hint59127_)
                          (make-eq-table__1 _size-hint59127_))
                        _g59444_))
                ((##fx= _g59443_ 2)
                 (apply (lambda (_size-hint59131_ _seed59132_)
                          (make-eq-table__% _size-hint59131_ _seed59132_))
                        _g59444_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g59444_))))))
    (define eq-table-ref
      (lambda (_tab59072_ _key59073_ _default59074_)
        (let ((_table59076_ (&raw-table-table _tab59072_))
              (_seed59077_ (&raw-table-seed _tab59072_)))
          (let* ((_h59079_ (fxxor (eq-hash _key59073_) _seed59077_))
                 (_size59082_ (vector-length _table59076_))
                 (_entries59085_ (fxquotient _size59082_ '2))
                 (_start59088_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59079_ _entries59085_)
                   '1)))
            (let _loop59092_ ((_probe59095_ _start59088_)
                              (_i59097_ '1)
                              (_deleted59099_ '#f))
              (let ((_k59102_ (vector-ref _table59076_ _probe59095_)))
                (if (eq? _k59102_ (macro-unused-obj))
                    _default59074_
                    (if (eq? _k59102_ (macro-deleted-obj))
                        (_loop59092_
                         (let ((_next-probe59105_
                                (fx+ _start59088_
                                     _i59097_
                                     (fx* _i59097_ _i59097_))))
                           (fxmodulo _next-probe59105_ _size59082_))
                         (fx+ _i59097_ '1)
                         (let ((_$e59108_ _deleted59099_))
                           (if _$e59108_ _$e59108_ _probe59095_)))
                        (if (eq? _key59073_ _k59102_)
                            (vector-ref _table59076_ (fx+ _probe59095_ '1))
                            (_loop59092_
                             (let ((_next-probe59111_
                                    (fx+ _start59088_
                                         _i59097_
                                         (fx* _i59097_ _i59097_))))
                               (fxmodulo _next-probe59111_ _size59082_))
                             (fx+ _i59097_ '1)
                             _deleted59099_))))))))))
    (define eq-table-set!
      (lambda (_tab59068_ _key59069_ _value59070_)
        (if (fx< (&raw-table-free _tab59068_)
                 (fxquotient (vector-length (&raw-table-table _tab59068_)) '4))
            (__raw-table-rehash! _tab59068_)
            '#!void)
        (__eq-table-set! _tab59068_ _key59069_ _value59070_)))
    (define __eq-table-set!
      (lambda (_tab59023_ _key59024_ _value59025_)
        (let ((_table59028_ (&raw-table-table _tab59023_))
              (_seed59029_ (&raw-table-seed _tab59023_)))
          (let* ((_h59031_ (fxxor (eq-hash _key59024_) _seed59029_))
                 (_size59034_ (vector-length _table59028_))
                 (_entries59037_ (fxquotient _size59034_ '2))
                 (_start59040_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59031_ _entries59037_)
                   '1)))
            (let _loop59044_ ((_probe59047_ _start59040_)
                              (_i59049_ '1)
                              (_deleted59051_ '#f))
              (let ((_k59054_ (vector-ref _table59028_ _probe59047_)))
                (if (eq? _k59054_ (macro-unused-obj))
                    (if _deleted59051_
                        (begin
                          (vector-set! _table59028_ _deleted59051_ _key59024_)
                          (vector-set!
                           _table59028_
                           (fx+ _deleted59051_ '1)
                           _value59025_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59023_
                              (fx+ (&raw-table-count _tab59023_) '1)))))
                        (begin
                          (vector-set! _table59028_ _probe59047_ _key59024_)
                          (vector-set!
                           _table59028_
                           (fx+ _probe59047_ '1)
                           _value59025_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59023_
                              (fx- (&raw-table-free _tab59023_) '1))
                             (&raw-table-count-set!
                              _tab59023_
                              (fx+ (&raw-table-count _tab59023_) '1))))))
                    (if (eq? _k59054_ (macro-deleted-obj))
                        (_loop59044_
                         (let ((_next-probe59059_
                                (fx+ _start59040_
                                     _i59049_
                                     (fx* _i59049_ _i59049_))))
                           (fxmodulo _next-probe59059_ _size59034_))
                         (fx+ _i59049_ '1)
                         (let ((_$e59062_ _deleted59051_))
                           (if _$e59062_ _$e59062_ _probe59047_)))
                        (if (eq? _key59024_ _k59054_)
                            (begin
                              (vector-set!
                               _table59028_
                               _probe59047_
                               _key59024_)
                              (vector-set!
                               _table59028_
                               (fx+ _probe59047_ '1)
                               _value59025_))
                            (_loop59044_
                             (let ((_next-probe59065_
                                    (fx+ _start59040_
                                         _i59049_
                                         (fx* _i59049_ _i59049_))))
                               (fxmodulo _next-probe59065_ _size59034_))
                             (fx+ _i59049_ '1)
                             _deleted59051_))))))))))
    (define eq-table-update!
      (lambda (_tab59018_ _key59019_ _eq-table-update!59020_ _default59021_)
        (if (fx< (&raw-table-free _tab59018_)
                 (fxquotient (vector-length (&raw-table-table _tab59018_)) '4))
            (__raw-table-rehash! _tab59018_)
            '#!void)
        (__eq-table-update!
         _tab59018_
         _key59019_
         _eq-table-update!59020_
         _default59021_)))
    (define __eq-table-update!
      (lambda (_tab58972_ _key58973_ _eq-table-update!58974_ _default58975_)
        (let ((_table58978_ (&raw-table-table _tab58972_))
              (_seed58979_ (&raw-table-seed _tab58972_)))
          (let* ((_h58981_ (fxxor (eq-hash _key58973_) _seed58979_))
                 (_size58984_ (vector-length _table58978_))
                 (_entries58987_ (fxquotient _size58984_ '2))
                 (_start58990_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58981_ _entries58987_)
                   '1)))
            (let _loop58994_ ((_probe58997_ _start58990_)
                              (_i58999_ '1)
                              (_deleted59001_ '#f))
              (let ((_k59004_ (vector-ref _table58978_ _probe58997_)))
                (if (eq? _k59004_ (macro-unused-obj))
                    (if _deleted59001_
                        (begin
                          (vector-set! _table58978_ _deleted59001_ _key58973_)
                          (vector-set!
                           _table58978_
                           (fx+ _deleted59001_ '1)
                           (_eq-table-update!58974_ _default58975_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58972_
                              (fx+ (&raw-table-count _tab58972_) '1)))))
                        (begin
                          (vector-set! _table58978_ _probe58997_ _key58973_)
                          (vector-set!
                           _table58978_
                           (fx+ _probe58997_ '1)
                           (_eq-table-update!58974_ _default58975_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58972_
                              (fx- (&raw-table-free _tab58972_) '1))
                             (&raw-table-count-set!
                              _tab58972_
                              (fx+ (&raw-table-count _tab58972_) '1))))))
                    (if (eq? _k59004_ (macro-deleted-obj))
                        (_loop58994_
                         (let ((_next-probe59009_
                                (fx+ _start58990_
                                     _i58999_
                                     (fx* _i58999_ _i58999_))))
                           (fxmodulo _next-probe59009_ _size58984_))
                         (fx+ _i58999_ '1)
                         (let ((_$e59012_ _deleted59001_))
                           (if _$e59012_ _$e59012_ _probe58997_)))
                        (if (eq? _key58973_ _k59004_)
                            (begin
                              (vector-set!
                               _table58978_
                               _probe58997_
                               _key58973_)
                              (vector-set!
                               _table58978_
                               (fx+ _probe58997_ '1)
                               (_eq-table-update!58974_
                                (vector-ref
                                 _table58978_
                                 (fx+ _probe58997_ '1)))))
                            (_loop58994_
                             (let ((_next-probe59015_
                                    (fx+ _start58990_
                                         _i58999_
                                         (fx* _i58999_ _i58999_))))
                               (fxmodulo _next-probe59015_ _size58984_))
                             (fx+ _i58999_ '1)
                             _deleted59001_))))))))))
    (define eq-table-delete!
      (lambda (_tab58931_ _key58933_)
        (let ((_table58936_ (&raw-table-table _tab58931_))
              (_seed58938_ (&raw-table-seed _tab58931_)))
          (let* ((_h58941_ (fxxor (eq-hash _key58933_) _seed58938_))
                 (_size58944_ (vector-length _table58936_))
                 (_entries58947_ (fxquotient _size58944_ '2))
                 (_start58950_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58941_ _entries58947_)
                   '1)))
            (let _loop58954_ ((_probe58957_ _start58950_) (_i58959_ '1))
              (let ((_k58962_ (vector-ref _table58936_ _probe58957_)))
                (if (eq? _k58962_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k58962_ (macro-deleted-obj))
                        (_loop58954_
                         (let ((_next-probe58965_
                                (fx+ _start58950_
                                     _i58959_
                                     (fx* _i58959_ _i58959_))))
                           (fxmodulo _next-probe58965_ _size58944_))
                         (fx+ _i58959_ '1))
                        (if (eq? _key58933_ _k58962_)
                            (begin
                              (vector-set!
                               _table58936_
                               _probe58957_
                               (macro-deleted-obj))
                              (vector-set!
                               _table58936_
                               (fx+ _probe58957_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab58931_
                                  (fx- (&raw-table-count _tab58931_) '1)))))
                            (_loop58954_
                             (let ((_next-probe58969_
                                    (fx+ _start58950_
                                         _i58959_
                                         (fx* _i58959_ _i58959_))))
                               (fxmodulo _next-probe58969_ _size58944_))
                             (fx+ _i58959_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_size-hint58912_ _seed58914_)
        (make-raw-table__% _size-hint58912_ eqv-hash eqv? _seed58914_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_size-hint58920_ '#f) (_seed58922_ '0))
          (make-eqv-table__% _size-hint58920_ _seed58922_))))
    (define make-eqv-table__1
      (lambda (_size-hint58924_)
        (let ((_seed58926_ '0))
          (make-eqv-table__% _size-hint58924_ _seed58926_))))
    (define make-eqv-table
      (lambda _g59446_
        (let ((_g59445_ (##length _g59446_)))
          (cond ((##fx= _g59445_ 0)
                 (apply (lambda () (make-eqv-table__0)) _g59446_))
                ((##fx= _g59445_ 1)
                 (apply (lambda (_size-hint58924_)
                          (make-eqv-table__1 _size-hint58924_))
                        _g59446_))
                ((##fx= _g59445_ 2)
                 (apply (lambda (_size-hint58928_ _seed58929_)
                          (make-eqv-table__% _size-hint58928_ _seed58929_))
                        _g59446_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g59446_))))))
    (define eqv-table-ref
      (lambda (_tab58869_ _key58870_ _default58871_)
        (let ((_table58873_ (&raw-table-table _tab58869_))
              (_seed58874_ (&raw-table-seed _tab58869_)))
          (let* ((_h58876_ (fxxor (eqv-hash _key58870_) _seed58874_))
                 (_size58879_ (vector-length _table58873_))
                 (_entries58882_ (fxquotient _size58879_ '2))
                 (_start58885_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58876_ _entries58882_)
                   '1)))
            (let _loop58889_ ((_probe58892_ _start58885_)
                              (_i58894_ '1)
                              (_deleted58896_ '#f))
              (let ((_k58899_ (vector-ref _table58873_ _probe58892_)))
                (if (eq? _k58899_ (macro-unused-obj))
                    _default58871_
                    (if (eq? _k58899_ (macro-deleted-obj))
                        (_loop58889_
                         (let ((_next-probe58902_
                                (fx+ _start58885_
                                     _i58894_
                                     (fx* _i58894_ _i58894_))))
                           (fxmodulo _next-probe58902_ _size58879_))
                         (fx+ _i58894_ '1)
                         (let ((_$e58905_ _deleted58896_))
                           (if _$e58905_ _$e58905_ _probe58892_)))
                        (if (eqv? _key58870_ _k58899_)
                            (vector-ref _table58873_ (fx+ _probe58892_ '1))
                            (_loop58889_
                             (let ((_next-probe58908_
                                    (fx+ _start58885_
                                         _i58894_
                                         (fx* _i58894_ _i58894_))))
                               (fxmodulo _next-probe58908_ _size58879_))
                             (fx+ _i58894_ '1)
                             _deleted58896_))))))))))
    (define eqv-table-set!
      (lambda (_tab58865_ _key58866_ _value58867_)
        (if (fx< (&raw-table-free _tab58865_)
                 (fxquotient (vector-length (&raw-table-table _tab58865_)) '4))
            (__raw-table-rehash! _tab58865_)
            '#!void)
        (__eqv-table-set! _tab58865_ _key58866_ _value58867_)))
    (define __eqv-table-set!
      (lambda (_tab58820_ _key58821_ _value58822_)
        (let ((_table58825_ (&raw-table-table _tab58820_))
              (_seed58826_ (&raw-table-seed _tab58820_)))
          (let* ((_h58828_ (fxxor (eqv-hash _key58821_) _seed58826_))
                 (_size58831_ (vector-length _table58825_))
                 (_entries58834_ (fxquotient _size58831_ '2))
                 (_start58837_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58828_ _entries58834_)
                   '1)))
            (let _loop58841_ ((_probe58844_ _start58837_)
                              (_i58846_ '1)
                              (_deleted58848_ '#f))
              (let ((_k58851_ (vector-ref _table58825_ _probe58844_)))
                (if (eq? _k58851_ (macro-unused-obj))
                    (if _deleted58848_
                        (begin
                          (vector-set! _table58825_ _deleted58848_ _key58821_)
                          (vector-set!
                           _table58825_
                           (fx+ _deleted58848_ '1)
                           _value58822_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58820_
                              (fx+ (&raw-table-count _tab58820_) '1)))))
                        (begin
                          (vector-set! _table58825_ _probe58844_ _key58821_)
                          (vector-set!
                           _table58825_
                           (fx+ _probe58844_ '1)
                           _value58822_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58820_
                              (fx- (&raw-table-free _tab58820_) '1))
                             (&raw-table-count-set!
                              _tab58820_
                              (fx+ (&raw-table-count _tab58820_) '1))))))
                    (if (eq? _k58851_ (macro-deleted-obj))
                        (_loop58841_
                         (let ((_next-probe58856_
                                (fx+ _start58837_
                                     _i58846_
                                     (fx* _i58846_ _i58846_))))
                           (fxmodulo _next-probe58856_ _size58831_))
                         (fx+ _i58846_ '1)
                         (let ((_$e58859_ _deleted58848_))
                           (if _$e58859_ _$e58859_ _probe58844_)))
                        (if (eqv? _key58821_ _k58851_)
                            (begin
                              (vector-set!
                               _table58825_
                               _probe58844_
                               _key58821_)
                              (vector-set!
                               _table58825_
                               (fx+ _probe58844_ '1)
                               _value58822_))
                            (_loop58841_
                             (let ((_next-probe58862_
                                    (fx+ _start58837_
                                         _i58846_
                                         (fx* _i58846_ _i58846_))))
                               (fxmodulo _next-probe58862_ _size58831_))
                             (fx+ _i58846_ '1)
                             _deleted58848_))))))))))
    (define eqv-table-update!
      (lambda (_tab58815_ _key58816_ _eqv-table-update!58817_ _default58818_)
        (if (fx< (&raw-table-free _tab58815_)
                 (fxquotient (vector-length (&raw-table-table _tab58815_)) '4))
            (__raw-table-rehash! _tab58815_)
            '#!void)
        (__eqv-table-update!
         _tab58815_
         _key58816_
         _eqv-table-update!58817_
         _default58818_)))
    (define __eqv-table-update!
      (lambda (_tab58769_ _key58770_ _eqv-table-update!58771_ _default58772_)
        (let ((_table58775_ (&raw-table-table _tab58769_))
              (_seed58776_ (&raw-table-seed _tab58769_)))
          (let* ((_h58778_ (fxxor (eqv-hash _key58770_) _seed58776_))
                 (_size58781_ (vector-length _table58775_))
                 (_entries58784_ (fxquotient _size58781_ '2))
                 (_start58787_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58778_ _entries58784_)
                   '1)))
            (let _loop58791_ ((_probe58794_ _start58787_)
                              (_i58796_ '1)
                              (_deleted58798_ '#f))
              (let ((_k58801_ (vector-ref _table58775_ _probe58794_)))
                (if (eq? _k58801_ (macro-unused-obj))
                    (if _deleted58798_
                        (begin
                          (vector-set! _table58775_ _deleted58798_ _key58770_)
                          (vector-set!
                           _table58775_
                           (fx+ _deleted58798_ '1)
                           (_eqv-table-update!58771_ _default58772_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58769_
                              (fx+ (&raw-table-count _tab58769_) '1)))))
                        (begin
                          (vector-set! _table58775_ _probe58794_ _key58770_)
                          (vector-set!
                           _table58775_
                           (fx+ _probe58794_ '1)
                           (_eqv-table-update!58771_ _default58772_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58769_
                              (fx- (&raw-table-free _tab58769_) '1))
                             (&raw-table-count-set!
                              _tab58769_
                              (fx+ (&raw-table-count _tab58769_) '1))))))
                    (if (eq? _k58801_ (macro-deleted-obj))
                        (_loop58791_
                         (let ((_next-probe58806_
                                (fx+ _start58787_
                                     _i58796_
                                     (fx* _i58796_ _i58796_))))
                           (fxmodulo _next-probe58806_ _size58781_))
                         (fx+ _i58796_ '1)
                         (let ((_$e58809_ _deleted58798_))
                           (if _$e58809_ _$e58809_ _probe58794_)))
                        (if (eqv? _key58770_ _k58801_)
                            (begin
                              (vector-set!
                               _table58775_
                               _probe58794_
                               _key58770_)
                              (vector-set!
                               _table58775_
                               (fx+ _probe58794_ '1)
                               (_eqv-table-update!58771_
                                (vector-ref
                                 _table58775_
                                 (fx+ _probe58794_ '1)))))
                            (_loop58791_
                             (let ((_next-probe58812_
                                    (fx+ _start58787_
                                         _i58796_
                                         (fx* _i58796_ _i58796_))))
                               (fxmodulo _next-probe58812_ _size58781_))
                             (fx+ _i58796_ '1)
                             _deleted58798_))))))))))
    (define eqv-table-delete!
      (lambda (_tab58728_ _key58730_)
        (let ((_table58733_ (&raw-table-table _tab58728_))
              (_seed58735_ (&raw-table-seed _tab58728_)))
          (let* ((_h58738_ (fxxor (eqv-hash _key58730_) _seed58735_))
                 (_size58741_ (vector-length _table58733_))
                 (_entries58744_ (fxquotient _size58741_ '2))
                 (_start58747_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58738_ _entries58744_)
                   '1)))
            (let _loop58751_ ((_probe58754_ _start58747_) (_i58756_ '1))
              (let ((_k58759_ (vector-ref _table58733_ _probe58754_)))
                (if (eq? _k58759_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k58759_ (macro-deleted-obj))
                        (_loop58751_
                         (let ((_next-probe58762_
                                (fx+ _start58747_
                                     _i58756_
                                     (fx* _i58756_ _i58756_))))
                           (fxmodulo _next-probe58762_ _size58741_))
                         (fx+ _i58756_ '1))
                        (if (eqv? _key58730_ _k58759_)
                            (begin
                              (vector-set!
                               _table58733_
                               _probe58754_
                               (macro-deleted-obj))
                              (vector-set!
                               _table58733_
                               (fx+ _probe58754_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab58728_
                                  (fx- (&raw-table-count _tab58728_) '1)))))
                            (_loop58751_
                             (let ((_next-probe58766_
                                    (fx+ _start58747_
                                         _i58756_
                                         (fx* _i58756_ _i58756_))))
                               (fxmodulo _next-probe58766_ _size58741_))
                             (fx+ _i58756_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_size-hint58709_ _seed58711_)
        (make-raw-table__% _size-hint58709_ symbolic-hash eq? _seed58711_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_size-hint58717_ '#f) (_seed58719_ '0))
          (make-symbolic-table__% _size-hint58717_ _seed58719_))))
    (define make-symbolic-table__1
      (lambda (_size-hint58721_)
        (let ((_seed58723_ '0))
          (make-symbolic-table__% _size-hint58721_ _seed58723_))))
    (define make-symbolic-table
      (lambda _g59448_
        (let ((_g59447_ (##length _g59448_)))
          (cond ((##fx= _g59447_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g59448_))
                ((##fx= _g59447_ 1)
                 (apply (lambda (_size-hint58721_)
                          (make-symbolic-table__1 _size-hint58721_))
                        _g59448_))
                ((##fx= _g59447_ 2)
                 (apply (lambda (_size-hint58725_ _seed58726_)
                          (make-symbolic-table__%
                           _size-hint58725_
                           _seed58726_))
                        _g59448_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g59448_))))))
    (define symbolic-table-ref
      (lambda (_tab58666_ _key58667_ _default58668_)
        (let ((_table58670_ (&raw-table-table _tab58666_))
              (_seed58671_ (&raw-table-seed _tab58666_)))
          (let* ((_h58673_ (fxxor (symbolic-hash _key58667_) _seed58671_))
                 (_size58676_ (vector-length _table58670_))
                 (_entries58679_ (fxquotient _size58676_ '2))
                 (_start58682_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58673_ _entries58679_)
                   '1)))
            (let _loop58686_ ((_probe58689_ _start58682_)
                              (_i58691_ '1)
                              (_deleted58693_ '#f))
              (let ((_k58696_ (vector-ref _table58670_ _probe58689_)))
                (if (eq? _k58696_ (macro-unused-obj))
                    _default58668_
                    (if (eq? _k58696_ (macro-deleted-obj))
                        (_loop58686_
                         (let ((_next-probe58699_
                                (fx+ _start58682_
                                     _i58691_
                                     (fx* _i58691_ _i58691_))))
                           (fxmodulo _next-probe58699_ _size58676_))
                         (fx+ _i58691_ '1)
                         (let ((_$e58702_ _deleted58693_))
                           (if _$e58702_ _$e58702_ _probe58689_)))
                        (if (eq? _key58667_ _k58696_)
                            (vector-ref _table58670_ (fx+ _probe58689_ '1))
                            (_loop58686_
                             (let ((_next-probe58705_
                                    (fx+ _start58682_
                                         _i58691_
                                         (fx* _i58691_ _i58691_))))
                               (fxmodulo _next-probe58705_ _size58676_))
                             (fx+ _i58691_ '1)
                             _deleted58693_))))))))))
    (define symbolic-table-set!
      (lambda (_tab58662_ _key58663_ _value58664_)
        (if (fx< (&raw-table-free _tab58662_)
                 (fxquotient (vector-length (&raw-table-table _tab58662_)) '4))
            (__raw-table-rehash! _tab58662_)
            '#!void)
        (__symbolic-table-set! _tab58662_ _key58663_ _value58664_)))
    (define __symbolic-table-set!
      (lambda (_tab58617_ _key58618_ _value58619_)
        (let ((_table58622_ (&raw-table-table _tab58617_))
              (_seed58623_ (&raw-table-seed _tab58617_)))
          (let* ((_h58625_ (fxxor (symbolic-hash _key58618_) _seed58623_))
                 (_size58628_ (vector-length _table58622_))
                 (_entries58631_ (fxquotient _size58628_ '2))
                 (_start58634_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58625_ _entries58631_)
                   '1)))
            (let _loop58638_ ((_probe58641_ _start58634_)
                              (_i58643_ '1)
                              (_deleted58645_ '#f))
              (let ((_k58648_ (vector-ref _table58622_ _probe58641_)))
                (if (eq? _k58648_ (macro-unused-obj))
                    (if _deleted58645_
                        (begin
                          (vector-set! _table58622_ _deleted58645_ _key58618_)
                          (vector-set!
                           _table58622_
                           (fx+ _deleted58645_ '1)
                           _value58619_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58617_
                              (fx+ (&raw-table-count _tab58617_) '1)))))
                        (begin
                          (vector-set! _table58622_ _probe58641_ _key58618_)
                          (vector-set!
                           _table58622_
                           (fx+ _probe58641_ '1)
                           _value58619_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58617_
                              (fx- (&raw-table-free _tab58617_) '1))
                             (&raw-table-count-set!
                              _tab58617_
                              (fx+ (&raw-table-count _tab58617_) '1))))))
                    (if (eq? _k58648_ (macro-deleted-obj))
                        (_loop58638_
                         (let ((_next-probe58653_
                                (fx+ _start58634_
                                     _i58643_
                                     (fx* _i58643_ _i58643_))))
                           (fxmodulo _next-probe58653_ _size58628_))
                         (fx+ _i58643_ '1)
                         (let ((_$e58656_ _deleted58645_))
                           (if _$e58656_ _$e58656_ _probe58641_)))
                        (if (eq? _key58618_ _k58648_)
                            (begin
                              (vector-set!
                               _table58622_
                               _probe58641_
                               _key58618_)
                              (vector-set!
                               _table58622_
                               (fx+ _probe58641_ '1)
                               _value58619_))
                            (_loop58638_
                             (let ((_next-probe58659_
                                    (fx+ _start58634_
                                         _i58643_
                                         (fx* _i58643_ _i58643_))))
                               (fxmodulo _next-probe58659_ _size58628_))
                             (fx+ _i58643_ '1)
                             _deleted58645_))))))))))
    (define symbolic-table-update!
      (lambda (_tab58612_
               _key58613_
               _symbolic-table-update!58614_
               _default58615_)
        (if (fx< (&raw-table-free _tab58612_)
                 (fxquotient (vector-length (&raw-table-table _tab58612_)) '4))
            (__raw-table-rehash! _tab58612_)
            '#!void)
        (__symbolic-table-update!
         _tab58612_
         _key58613_
         _symbolic-table-update!58614_
         _default58615_)))
    (define __symbolic-table-update!
      (lambda (_tab58566_
               _key58567_
               _symbolic-table-update!58568_
               _default58569_)
        (let ((_table58572_ (&raw-table-table _tab58566_))
              (_seed58573_ (&raw-table-seed _tab58566_)))
          (let* ((_h58575_ (fxxor (symbolic-hash _key58567_) _seed58573_))
                 (_size58578_ (vector-length _table58572_))
                 (_entries58581_ (fxquotient _size58578_ '2))
                 (_start58584_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58575_ _entries58581_)
                   '1)))
            (let _loop58588_ ((_probe58591_ _start58584_)
                              (_i58593_ '1)
                              (_deleted58595_ '#f))
              (let ((_k58598_ (vector-ref _table58572_ _probe58591_)))
                (if (eq? _k58598_ (macro-unused-obj))
                    (if _deleted58595_
                        (begin
                          (vector-set! _table58572_ _deleted58595_ _key58567_)
                          (vector-set!
                           _table58572_
                           (fx+ _deleted58595_ '1)
                           (_symbolic-table-update!58568_ _default58569_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58566_
                              (fx+ (&raw-table-count _tab58566_) '1)))))
                        (begin
                          (vector-set! _table58572_ _probe58591_ _key58567_)
                          (vector-set!
                           _table58572_
                           (fx+ _probe58591_ '1)
                           (_symbolic-table-update!58568_ _default58569_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58566_
                              (fx- (&raw-table-free _tab58566_) '1))
                             (&raw-table-count-set!
                              _tab58566_
                              (fx+ (&raw-table-count _tab58566_) '1))))))
                    (if (eq? _k58598_ (macro-deleted-obj))
                        (_loop58588_
                         (let ((_next-probe58603_
                                (fx+ _start58584_
                                     _i58593_
                                     (fx* _i58593_ _i58593_))))
                           (fxmodulo _next-probe58603_ _size58578_))
                         (fx+ _i58593_ '1)
                         (let ((_$e58606_ _deleted58595_))
                           (if _$e58606_ _$e58606_ _probe58591_)))
                        (if (eq? _key58567_ _k58598_)
                            (begin
                              (vector-set!
                               _table58572_
                               _probe58591_
                               _key58567_)
                              (vector-set!
                               _table58572_
                               (fx+ _probe58591_ '1)
                               (_symbolic-table-update!58568_
                                (vector-ref
                                 _table58572_
                                 (fx+ _probe58591_ '1)))))
                            (_loop58588_
                             (let ((_next-probe58609_
                                    (fx+ _start58584_
                                         _i58593_
                                         (fx* _i58593_ _i58593_))))
                               (fxmodulo _next-probe58609_ _size58578_))
                             (fx+ _i58593_ '1)
                             _deleted58595_))))))))))
    (define symbolic-table-delete!
      (lambda (_tab58525_ _key58527_)
        (let ((_table58530_ (&raw-table-table _tab58525_))
              (_seed58532_ (&raw-table-seed _tab58525_)))
          (let* ((_h58535_ (fxxor (symbolic-hash _key58527_) _seed58532_))
                 (_size58538_ (vector-length _table58530_))
                 (_entries58541_ (fxquotient _size58538_ '2))
                 (_start58544_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58535_ _entries58541_)
                   '1)))
            (let _loop58548_ ((_probe58551_ _start58544_) (_i58553_ '1))
              (let ((_k58556_ (vector-ref _table58530_ _probe58551_)))
                (if (eq? _k58556_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k58556_ (macro-deleted-obj))
                        (_loop58548_
                         (let ((_next-probe58559_
                                (fx+ _start58544_
                                     _i58553_
                                     (fx* _i58553_ _i58553_))))
                           (fxmodulo _next-probe58559_ _size58538_))
                         (fx+ _i58553_ '1))
                        (if (eq? _key58527_ _k58556_)
                            (begin
                              (vector-set!
                               _table58530_
                               _probe58551_
                               (macro-deleted-obj))
                              (vector-set!
                               _table58530_
                               (fx+ _probe58551_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab58525_
                                  (fx- (&raw-table-count _tab58525_) '1)))))
                            (_loop58548_
                             (let ((_next-probe58563_
                                    (fx+ _start58544_
                                         _i58553_
                                         (fx* _i58553_ _i58553_))))
                               (fxmodulo _next-probe58563_ _size58538_))
                             (fx+ _i58553_ '1)))))))))))
    (define make-string-table__%
      (lambda (_size-hint58506_ _seed58508_)
        (make-raw-table__%
         _size-hint58506_
         string-hash
         ##string=?
         _seed58508_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_size-hint58514_ '#f) (_seed58516_ '0))
          (make-string-table__% _size-hint58514_ _seed58516_))))
    (define make-string-table__1
      (lambda (_size-hint58518_)
        (let ((_seed58520_ '0))
          (make-string-table__% _size-hint58518_ _seed58520_))))
    (define make-string-table
      (lambda _g59450_
        (let ((_g59449_ (##length _g59450_)))
          (cond ((##fx= _g59449_ 0)
                 (apply (lambda () (make-string-table__0)) _g59450_))
                ((##fx= _g59449_ 1)
                 (apply (lambda (_size-hint58518_)
                          (make-string-table__1 _size-hint58518_))
                        _g59450_))
                ((##fx= _g59449_ 2)
                 (apply (lambda (_size-hint58522_ _seed58523_)
                          (make-string-table__% _size-hint58522_ _seed58523_))
                        _g59450_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g59450_))))))
    (define string-table-ref
      (lambda (_tab58463_ _key58464_ _default58465_)
        (let ((_table58467_ (&raw-table-table _tab58463_))
              (_seed58468_ (&raw-table-seed _tab58463_)))
          (let* ((_h58470_ (fxxor (##string=?-hash _key58464_) _seed58468_))
                 (_size58473_ (vector-length _table58467_))
                 (_entries58476_ (fxquotient _size58473_ '2))
                 (_start58479_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58470_ _entries58476_)
                   '1)))
            (let _loop58483_ ((_probe58486_ _start58479_)
                              (_i58488_ '1)
                              (_deleted58490_ '#f))
              (let ((_k58493_ (vector-ref _table58467_ _probe58486_)))
                (if (eq? _k58493_ (macro-unused-obj))
                    _default58465_
                    (if (eq? _k58493_ (macro-deleted-obj))
                        (_loop58483_
                         (let ((_next-probe58496_
                                (fx+ _start58479_
                                     _i58488_
                                     (fx* _i58488_ _i58488_))))
                           (fxmodulo _next-probe58496_ _size58473_))
                         (fx+ _i58488_ '1)
                         (let ((_$e58499_ _deleted58490_))
                           (if _$e58499_ _$e58499_ _probe58486_)))
                        (if (##string=? _key58464_ _k58493_)
                            (vector-ref _table58467_ (fx+ _probe58486_ '1))
                            (_loop58483_
                             (let ((_next-probe58502_
                                    (fx+ _start58479_
                                         _i58488_
                                         (fx* _i58488_ _i58488_))))
                               (fxmodulo _next-probe58502_ _size58473_))
                             (fx+ _i58488_ '1)
                             _deleted58490_))))))))))
    (define string-table-set!
      (lambda (_tab58459_ _key58460_ _value58461_)
        (if (fx< (&raw-table-free _tab58459_)
                 (fxquotient (vector-length (&raw-table-table _tab58459_)) '4))
            (__raw-table-rehash! _tab58459_)
            '#!void)
        (__string-table-set! _tab58459_ _key58460_ _value58461_)))
    (define __string-table-set!
      (lambda (_tab58414_ _key58415_ _value58416_)
        (let ((_table58419_ (&raw-table-table _tab58414_))
              (_seed58420_ (&raw-table-seed _tab58414_)))
          (let* ((_h58422_ (fxxor (##string=?-hash _key58415_) _seed58420_))
                 (_size58425_ (vector-length _table58419_))
                 (_entries58428_ (fxquotient _size58425_ '2))
                 (_start58431_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58422_ _entries58428_)
                   '1)))
            (let _loop58435_ ((_probe58438_ _start58431_)
                              (_i58440_ '1)
                              (_deleted58442_ '#f))
              (let ((_k58445_ (vector-ref _table58419_ _probe58438_)))
                (if (eq? _k58445_ (macro-unused-obj))
                    (if _deleted58442_
                        (begin
                          (vector-set! _table58419_ _deleted58442_ _key58415_)
                          (vector-set!
                           _table58419_
                           (fx+ _deleted58442_ '1)
                           _value58416_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58414_
                              (fx+ (&raw-table-count _tab58414_) '1)))))
                        (begin
                          (vector-set! _table58419_ _probe58438_ _key58415_)
                          (vector-set!
                           _table58419_
                           (fx+ _probe58438_ '1)
                           _value58416_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58414_
                              (fx- (&raw-table-free _tab58414_) '1))
                             (&raw-table-count-set!
                              _tab58414_
                              (fx+ (&raw-table-count _tab58414_) '1))))))
                    (if (eq? _k58445_ (macro-deleted-obj))
                        (_loop58435_
                         (let ((_next-probe58450_
                                (fx+ _start58431_
                                     _i58440_
                                     (fx* _i58440_ _i58440_))))
                           (fxmodulo _next-probe58450_ _size58425_))
                         (fx+ _i58440_ '1)
                         (let ((_$e58453_ _deleted58442_))
                           (if _$e58453_ _$e58453_ _probe58438_)))
                        (if (##string=? _key58415_ _k58445_)
                            (begin
                              (vector-set!
                               _table58419_
                               _probe58438_
                               _key58415_)
                              (vector-set!
                               _table58419_
                               (fx+ _probe58438_ '1)
                               _value58416_))
                            (_loop58435_
                             (let ((_next-probe58456_
                                    (fx+ _start58431_
                                         _i58440_
                                         (fx* _i58440_ _i58440_))))
                               (fxmodulo _next-probe58456_ _size58425_))
                             (fx+ _i58440_ '1)
                             _deleted58442_))))))))))
    (define string-table-update!
      (lambda (_tab58409_
               _key58410_
               _string-table-update!58411_
               _default58412_)
        (if (fx< (&raw-table-free _tab58409_)
                 (fxquotient (vector-length (&raw-table-table _tab58409_)) '4))
            (__raw-table-rehash! _tab58409_)
            '#!void)
        (__string-table-update!
         _tab58409_
         _key58410_
         _string-table-update!58411_
         _default58412_)))
    (define __string-table-update!
      (lambda (_tab58363_
               _key58364_
               _string-table-update!58365_
               _default58366_)
        (let ((_table58369_ (&raw-table-table _tab58363_))
              (_seed58370_ (&raw-table-seed _tab58363_)))
          (let* ((_h58372_ (fxxor (##string=?-hash _key58364_) _seed58370_))
                 (_size58375_ (vector-length _table58369_))
                 (_entries58378_ (fxquotient _size58375_ '2))
                 (_start58381_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58372_ _entries58378_)
                   '1)))
            (let _loop58385_ ((_probe58388_ _start58381_)
                              (_i58390_ '1)
                              (_deleted58392_ '#f))
              (let ((_k58395_ (vector-ref _table58369_ _probe58388_)))
                (if (eq? _k58395_ (macro-unused-obj))
                    (if _deleted58392_
                        (begin
                          (vector-set! _table58369_ _deleted58392_ _key58364_)
                          (vector-set!
                           _table58369_
                           (fx+ _deleted58392_ '1)
                           (_string-table-update!58365_ _default58366_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58363_
                              (fx+ (&raw-table-count _tab58363_) '1)))))
                        (begin
                          (vector-set! _table58369_ _probe58388_ _key58364_)
                          (vector-set!
                           _table58369_
                           (fx+ _probe58388_ '1)
                           (_string-table-update!58365_ _default58366_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58363_
                              (fx- (&raw-table-free _tab58363_) '1))
                             (&raw-table-count-set!
                              _tab58363_
                              (fx+ (&raw-table-count _tab58363_) '1))))))
                    (if (eq? _k58395_ (macro-deleted-obj))
                        (_loop58385_
                         (let ((_next-probe58400_
                                (fx+ _start58381_
                                     _i58390_
                                     (fx* _i58390_ _i58390_))))
                           (fxmodulo _next-probe58400_ _size58375_))
                         (fx+ _i58390_ '1)
                         (let ((_$e58403_ _deleted58392_))
                           (if _$e58403_ _$e58403_ _probe58388_)))
                        (if (##string=? _key58364_ _k58395_)
                            (begin
                              (vector-set!
                               _table58369_
                               _probe58388_
                               _key58364_)
                              (vector-set!
                               _table58369_
                               (fx+ _probe58388_ '1)
                               (_string-table-update!58365_
                                (vector-ref
                                 _table58369_
                                 (fx+ _probe58388_ '1)))))
                            (_loop58385_
                             (let ((_next-probe58406_
                                    (fx+ _start58381_
                                         _i58390_
                                         (fx* _i58390_ _i58390_))))
                               (fxmodulo _next-probe58406_ _size58375_))
                             (fx+ _i58390_ '1)
                             _deleted58392_))))))))))
    (define string-table-delete!
      (lambda (_tab58322_ _key58324_)
        (let ((_table58327_ (&raw-table-table _tab58322_))
              (_seed58329_ (&raw-table-seed _tab58322_)))
          (let* ((_h58332_ (fxxor (##string=?-hash _key58324_) _seed58329_))
                 (_size58335_ (vector-length _table58327_))
                 (_entries58338_ (fxquotient _size58335_ '2))
                 (_start58341_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58332_ _entries58338_)
                   '1)))
            (let _loop58345_ ((_probe58348_ _start58341_) (_i58350_ '1))
              (let ((_k58353_ (vector-ref _table58327_ _probe58348_)))
                (if (eq? _k58353_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k58353_ (macro-deleted-obj))
                        (_loop58345_
                         (let ((_next-probe58356_
                                (fx+ _start58341_
                                     _i58350_
                                     (fx* _i58350_ _i58350_))))
                           (fxmodulo _next-probe58356_ _size58335_))
                         (fx+ _i58350_ '1))
                        (if (##string=? _key58324_ _k58353_)
                            (begin
                              (vector-set!
                               _table58327_
                               _probe58348_
                               (macro-deleted-obj))
                              (vector-set!
                               _table58327_
                               (fx+ _probe58348_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab58322_
                                  (fx- (&raw-table-count _tab58322_) '1)))))
                            (_loop58345_
                             (let ((_next-probe58360_
                                    (fx+ _start58341_
                                         _i58350_
                                         (fx* _i58350_ _i58350_))))
                               (fxmodulo _next-probe58360_ _size58335_))
                             (fx+ _i58350_ '1)))))))))))))
