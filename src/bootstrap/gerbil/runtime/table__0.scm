(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1708271947)
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
      (lambda (_tab65214_)
        (##unchecked-structure-ref _tab65214_ '1 __table::t 'raw-table-table)))
    (define &raw-table-count
      (lambda (_tab65212_)
        (##unchecked-structure-ref _tab65212_ '2 __table::t 'raw-table-count)))
    (define &raw-table-free
      (lambda (_tab65210_)
        (##unchecked-structure-ref _tab65210_ '3 __table::t 'raw-table-free)))
    (define &raw-table-hash
      (lambda (_tab65208_)
        (##unchecked-structure-ref _tab65208_ '4 __table::t 'raw-table-hash)))
    (define &raw-table-test
      (lambda (_tab65206_)
        (##unchecked-structure-ref _tab65206_ '5 __table::t 'raw-table-test)))
    (define &raw-table-seed
      (lambda (_tab65204_)
        (##unchecked-structure-ref _tab65204_ '6 __table::t 'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_tab65201_ _val65202_)
        (##unchecked-structure-set!
         _tab65201_
         _val65202_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_tab65198_ _val65199_)
        (##unchecked-structure-set!
         _tab65198_
         _val65199_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_tab65195_ _val65196_)
        (##unchecked-structure-set!
         _tab65195_
         _val65196_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_tab65192_ _val65193_)
        (##unchecked-structure-set!
         _tab65192_
         _val65193_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_tab65189_ _val65190_)
        (##unchecked-structure-set!
         _tab65189_
         _val65190_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_tab65186_ _val65187_)
        (##unchecked-structure-set!
         _tab65186_
         _val65187_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define make-raw-table__%
      (lambda (_size-hint65162_ _hash65163_ _test65164_ _seed65165_)
        (let* ((_size65167_
                (if (and (fixnum? _size-hint65162_) (fx> _size-hint65162_ '0))
                    (fx* (max _size-hint65162_ '2) '4)
                    '16))
               (_table65169_ (make-vector _size65167_ (macro-unused-obj))))
          (##structure
           __table::t
           _table65169_
           '0
           (fxquotient _size65167_ '2)
           _hash65163_
           _test65164_
           _seed65165_))))
    (define make-raw-table__0
      (lambda (_size-hint65175_ _hash65176_ _test65177_)
        (let ((_seed65179_ '0))
          (make-raw-table__%
           _size-hint65175_
           _hash65176_
           _test65177_
           _seed65179_))))
    (define make-raw-table
      (lambda _g69283_
        (let ((_g69282_ (##length _g69283_)))
          (cond ((##fx= _g69282_ 3)
                 (apply (lambda (_size-hint65175_ _hash65176_ _test65177_)
                          (make-raw-table__0
                           _size-hint65175_
                           _hash65176_
                           _test65177_))
                        _g69283_))
                ((##fx= _g69282_ 4)
                 (apply (lambda (_size-hint65181_
                                 _hash65182_
                                 _test65183_
                                 _seed65184_)
                          (make-raw-table__%
                           _size-hint65181_
                           _hash65182_
                           _test65183_
                           _seed65184_))
                        _g69283_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g69283_))))))
    (define raw-table-ref
      (lambda (_tab65117_ _key65118_ _default65119_)
        (let ((_table65121_ (&raw-table-table _tab65117_))
              (_seed65122_ (&raw-table-seed _tab65117_))
              (_hash65123_ (&raw-table-hash _tab65117_))
              (_test65124_ (&raw-table-test _tab65117_)))
          (let* ((_h65126_ (fxxor (_hash65123_ _key65118_) _seed65122_))
                 (_size65129_ (vector-length _table65121_))
                 (_entries65132_ (fxquotient _size65129_ '2))
                 (_start65135_
                  (fxarithmetic-shift-left
                   (fxmodulo _h65126_ _entries65132_)
                   '1)))
            (let _loop65139_ ((_probe65142_ _start65135_)
                              (_i65144_ '1)
                              (_deleted65146_ '#f))
              (let ((_k65149_ (vector-ref _table65121_ _probe65142_)))
                (if (eq? _k65149_ (macro-unused-obj))
                    _default65119_
                    (if (eq? _k65149_ (macro-deleted-obj))
                        (_loop65139_
                         (let ((_next-probe65152_
                                (fx+ _start65135_
                                     _i65144_
                                     (fx* _i65144_ _i65144_))))
                           (fxmodulo _next-probe65152_ _size65129_))
                         (fx+ _i65144_ '1)
                         (let ((_$e65155_ _deleted65146_))
                           (if _$e65155_ _$e65155_ _probe65142_)))
                        (if (_test65124_ _key65118_ _k65149_)
                            (vector-ref _table65121_ (fx+ _probe65142_ '1))
                            (_loop65139_
                             (let ((_next-probe65158_
                                    (fx+ _start65135_
                                         _i65144_
                                         (fx* _i65144_ _i65144_))))
                               (fxmodulo _next-probe65158_ _size65129_))
                             (fx+ _i65144_ '1)
                             _deleted65146_))))))))))
    (define raw-table-set!
      (lambda (_tab65113_ _key65114_ _value65115_)
        (if (fx< (&raw-table-free _tab65113_)
                 (fxquotient (vector-length (&raw-table-table _tab65113_)) '4))
            (__raw-table-rehash! _tab65113_)
            '#!void)
        (__raw-table-set! _tab65113_ _key65114_ _value65115_)))
    (define raw-table-update!
      (lambda (_tab65108_ _key65109_ _update65110_ _default65111_)
        (if (fx< (&raw-table-free _tab65108_)
                 (fxquotient (vector-length (&raw-table-table _tab65108_)) '4))
            (__raw-table-rehash! _tab65108_)
            '#!void)
        (__raw-table-update!
         _tab65108_
         _key65109_
         _update65110_
         _default65111_)))
    (define raw-table-delete!
      (lambda (_tab65069_ _key65070_)
        (let ((_table65072_ (&raw-table-table _tab65069_))
              (_seed65073_ (&raw-table-seed _tab65069_))
              (_hash65074_ (&raw-table-hash _tab65069_))
              (_test65075_ (&raw-table-test _tab65069_)))
          (let* ((_h65077_ (fxxor (_hash65074_ _key65070_) _seed65073_))
                 (_size65080_ (vector-length _table65072_))
                 (_entries65083_ (fxquotient _size65080_ '2))
                 (_start65086_
                  (fxarithmetic-shift-left
                   (fxmodulo _h65077_ _entries65083_)
                   '1)))
            (let _loop65090_ ((_probe65093_ _start65086_) (_i65095_ '1))
              (let ((_k65098_ (vector-ref _table65072_ _probe65093_)))
                (if (eq? _k65098_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k65098_ (macro-deleted-obj))
                        (_loop65090_
                         (let ((_next-probe65101_
                                (fx+ _start65086_
                                     _i65095_
                                     (fx* _i65095_ _i65095_))))
                           (fxmodulo _next-probe65101_ _size65080_))
                         (fx+ _i65095_ '1))
                        (if (_test65075_ _key65070_ _k65098_)
                            (begin
                              (vector-set!
                               _table65072_
                               _probe65093_
                               (macro-deleted-obj))
                              (vector-set!
                               _table65072_
                               (fx+ _probe65093_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab65069_
                                  (fx- (&raw-table-count _tab65069_) '1)))))
                            (_loop65090_
                             (let ((_next-probe65105_
                                    (fx+ _start65086_
                                         _i65095_
                                         (fx* _i65095_ _i65095_))))
                               (fxmodulo _next-probe65105_ _size65080_))
                             (fx+ _i65095_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_tab65053_ _proc65054_)
        (let* ((_table65056_ (&raw-table-table _tab65053_))
               (_size65058_ (vector-length _table65056_)))
          (let _loop65061_ ((_i65063_ '0))
            (if (fx< _i65063_ _size65058_)
                (begin
                  (let ((_key65065_ (vector-ref _table65056_ _i65063_)))
                    (if (and (not (eq? _key65065_ (macro-unused-obj)))
                             (not (eq? _key65065_ (macro-deleted-obj))))
                        (let ((_value65067_
                               (vector-ref _table65056_ (fx+ _i65063_ '1))))
                          (_proc65054_ _key65065_ _value65067_))
                        '#!void))
                  (_loop65061_ (fx+ _i65063_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_tab65049_)
        (let ((_new-tab65051_ (##structure-copy _tab65049_)))
          (&raw-table-table-set!
           _new-tab65051_
           (vector-copy (&raw-table-table _tab65049_)))
          _new-tab65051_)))
    (define raw-table-clear!
      (lambda (_tab65047_)
        (vector-fill! (&raw-table-table _tab65047_) (macro-unused-obj))
        (&raw-table-count-set! _tab65047_ '0)
        (&raw-table-free-set!
         _tab65047_
         (fxquotient (vector-length (&raw-table-table _tab65047_)) '2))))
    (define __raw-table-set!
      (lambda (_tab65001_ _key65002_ _value65003_)
        (let ((_table65005_ (&raw-table-table _tab65001_))
              (_seed65006_ (&raw-table-seed _tab65001_))
              (_hash65007_ (&raw-table-hash _tab65001_))
              (_test65008_ (&raw-table-test _tab65001_)))
          (let* ((_h65010_ (fxxor (_hash65007_ _key65002_) _seed65006_))
                 (_size65013_ (vector-length _table65005_))
                 (_entries65016_ (fxquotient _size65013_ '2))
                 (_start65019_
                  (fxarithmetic-shift-left
                   (fxmodulo _h65010_ _entries65016_)
                   '1)))
            (let _loop65023_ ((_probe65026_ _start65019_)
                              (_i65028_ '1)
                              (_deleted65030_ '#f))
              (let ((_k65033_ (vector-ref _table65005_ _probe65026_)))
                (if (eq? _k65033_ (macro-unused-obj))
                    (if _deleted65030_
                        (begin
                          (vector-set! _table65005_ _deleted65030_ _key65002_)
                          (vector-set!
                           _table65005_
                           (fx+ _deleted65030_ '1)
                           _value65003_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab65001_
                              (fx+ (&raw-table-count _tab65001_) '1)))))
                        (begin
                          (vector-set! _table65005_ _probe65026_ _key65002_)
                          (vector-set!
                           _table65005_
                           (fx+ _probe65026_ '1)
                           _value65003_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab65001_
                              (fx- (&raw-table-free _tab65001_) '1))
                             (&raw-table-count-set!
                              _tab65001_
                              (fx+ (&raw-table-count _tab65001_) '1))))))
                    (if (eq? _k65033_ (macro-deleted-obj))
                        (_loop65023_
                         (let ((_next-probe65038_
                                (fx+ _start65019_
                                     _i65028_
                                     (fx* _i65028_ _i65028_))))
                           (fxmodulo _next-probe65038_ _size65013_))
                         (fx+ _i65028_ '1)
                         (let ((_$e65041_ _deleted65030_))
                           (if _$e65041_ _$e65041_ _probe65026_)))
                        (if (_test65008_ _key65002_ _k65033_)
                            (begin
                              (vector-set!
                               _table65005_
                               _probe65026_
                               _key65002_)
                              (vector-set!
                               _table65005_
                               (fx+ _probe65026_ '1)
                               _value65003_))
                            (_loop65023_
                             (let ((_next-probe65044_
                                    (fx+ _start65019_
                                         _i65028_
                                         (fx* _i65028_ _i65028_))))
                               (fxmodulo _next-probe65044_ _size65013_))
                             (fx+ _i65028_ '1)
                             _deleted65030_))))))))))
    (define __raw-table-update!
      (lambda (_tab64954_ _key64955_ _update64956_ _default64957_)
        (let ((_table64959_ (&raw-table-table _tab64954_))
              (_seed64960_ (&raw-table-seed _tab64954_))
              (_hash64961_ (&raw-table-hash _tab64954_))
              (_test64962_ (&raw-table-test _tab64954_)))
          (let* ((_h64964_ (fxxor (_hash64961_ _key64955_) _seed64960_))
                 (_size64967_ (vector-length _table64959_))
                 (_entries64970_ (fxquotient _size64967_ '2))
                 (_start64973_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64964_ _entries64970_)
                   '1)))
            (let _loop64977_ ((_probe64980_ _start64973_)
                              (_i64982_ '1)
                              (_deleted64984_ '#f))
              (let ((_k64987_ (vector-ref _table64959_ _probe64980_)))
                (if (eq? _k64987_ (macro-unused-obj))
                    (if _deleted64984_
                        (begin
                          (vector-set! _table64959_ _deleted64984_ _key64955_)
                          (vector-set!
                           _table64959_
                           (fx+ _deleted64984_ '1)
                           (_update64956_ _default64957_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab64954_
                              (fx+ (&raw-table-count _tab64954_) '1)))))
                        (begin
                          (vector-set! _table64959_ _probe64980_ _key64955_)
                          (vector-set!
                           _table64959_
                           (fx+ _probe64980_ '1)
                           (_update64956_ _default64957_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab64954_
                              (fx- (&raw-table-free _tab64954_) '1))
                             (&raw-table-count-set!
                              _tab64954_
                              (fx+ (&raw-table-count _tab64954_) '1))))))
                    (if (eq? _k64987_ (macro-deleted-obj))
                        (_loop64977_
                         (let ((_next-probe64992_
                                (fx+ _start64973_
                                     _i64982_
                                     (fx* _i64982_ _i64982_))))
                           (fxmodulo _next-probe64992_ _size64967_))
                         (fx+ _i64982_ '1)
                         (let ((_$e64995_ _deleted64984_))
                           (if _$e64995_ _$e64995_ _probe64980_)))
                        (if (_test64962_ _key64955_ _k64987_)
                            (begin
                              (vector-set!
                               _table64959_
                               _probe64980_
                               _key64955_)
                              (vector-set!
                               _table64959_
                               (fx+ _probe64980_ '1)
                               (_update64956_
                                (vector-ref
                                 _table64959_
                                 (fx+ _probe64980_ '1)))))
                            (_loop64977_
                             (let ((_next-probe64998_
                                    (fx+ _start64973_
                                         _i64982_
                                         (fx* _i64982_ _i64982_))))
                               (fxmodulo _next-probe64998_ _size64967_))
                             (fx+ _i64982_ '1)
                             _deleted64984_))))))))))
    (define __raw-table-rehash!
      (lambda (_tab64935_)
        (let* ((_old-table64937_ (&raw-table-table _tab64935_))
               (_old-size64939_ (vector-length _old-table64937_))
               (_new-size64941_
                (if (fx< (&raw-table-count _tab64935_)
                         (fxquotient _old-size64939_ '4))
                    (vector-length _old-table64937_)
                    (fx* '2 (vector-length _old-table64937_))))
               (_new-table64943_
                (make-vector _new-size64941_ (macro-unused-obj))))
          (&raw-table-table-set! _tab64935_ _new-table64943_)
          (&raw-table-count-set! _tab64935_ '0)
          (&raw-table-free-set! _tab64935_ (fxquotient _new-size64941_ '2))
          (let _lp64946_ ((_i64948_ '0))
            (if (fx< _i64948_ _old-size64939_)
                (begin
                  (let ((_key64950_ (vector-ref _old-table64937_ _i64948_)))
                    (if (and (not (eq? _key64950_ (macro-unused-obj)))
                             (not (eq? _key64950_ (macro-deleted-obj))))
                        (let ((_value64952_
                               (vector-ref
                                _old-table64937_
                                (fx+ _i64948_ '1))))
                          (__raw-table-set!
                           _tab64935_
                           _key64950_
                           _value64952_))
                        '#!void))
                  (_lp64946_ (fx+ _i64948_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_obj64926_)
        (let ((_t64928_ (##type _obj64926_)))
          (if (fx= (fxand _t64928_ '1) '0)
              (fxand (##type-cast _obj64926_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (or (symbol? _obj64926_) (keyword? _obj64926_))
                  (symbolic-hash _obj64926_)
                  (fxand (let ((_sn64933_ (object->serial-number _obj64926_)))
                           (if (fixnum? _sn64933_)
                               _sn64933_
                               (fxarithmetic-shift-left
                                (##bignum.mdigit-ref _sn64933_ '0)
                                '10)))
                         (macro-max-fixnum32)))))))
    (define eqv-hash
      (lambda (_obj64916_)
        (letrec ((_combine64918_
                  (lambda (_a64923_ _b64924_)
                    (fxand (fx* (fx+ _a64923_
                                     (fxarithmetic-shift-left _b64924_ '1))
                                '331804471)
                           (macro-max-fixnum32))))
                 (_hash64919_
                  (lambda (_obj64921_)
                    (macro-number-dispatch
                     _obj64921_
                     (eq-hash _obj64921_)
                     (fxand _obj64921_ (macro-max-fixnum32))
                     (modulo _obj64921_ '331804481)
                     (_combine64918_
                      (_hash64919_ (macro-ratnum-numerator _obj64921_))
                      (_hash64919_ (macro-ratnum-denominator _obj64921_)))
                     (_combine64918_
                      (##u16vector-ref _obj64921_ '0)
                      (_combine64918_
                       (##u16vector-ref _obj64921_ '1)
                       (_combine64918_
                        (##u16vector-ref _obj64921_ '2)
                        (##u16vector-ref _obj64921_ '3))))
                     (_combine64918_
                      (_hash64919_ (macro-cpxnum-real _obj64921_))
                      (_hash64919_ (macro-cpxnum-imag _obj64921_)))))))
          (_hash64919_ _obj64916_))))
    (define symbolic-hash (lambda (_obj64914_) (macro-slot '1 _obj64914_)))
    (define string-hash (lambda (_obj64912_) (##string=?-hash _obj64912_)))
    (define make-eq-table__%
      (lambda (_size-hint64893_ _seed64895_)
        (make-raw-table__% _size-hint64893_ eq-hash eq? _seed64895_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_size-hint64901_ '#f) (_seed64903_ '0))
          (make-eq-table__% _size-hint64901_ _seed64903_))))
    (define make-eq-table__1
      (lambda (_size-hint64905_)
        (let ((_seed64907_ '0))
          (make-eq-table__% _size-hint64905_ _seed64907_))))
    (define make-eq-table
      (lambda _g69285_
        (let ((_g69284_ (##length _g69285_)))
          (cond ((##fx= _g69284_ 0)
                 (apply (lambda () (make-eq-table__0)) _g69285_))
                ((##fx= _g69284_ 1)
                 (apply (lambda (_size-hint64905_)
                          (make-eq-table__1 _size-hint64905_))
                        _g69285_))
                ((##fx= _g69284_ 2)
                 (apply (lambda (_size-hint64909_ _seed64910_)
                          (make-eq-table__% _size-hint64909_ _seed64910_))
                        _g69285_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g69285_))))))
    (define eq-table-ref
      (lambda (_tab64850_ _key64851_ _default64852_)
        (let ((_table64854_ (&raw-table-table _tab64850_))
              (_seed64855_ (&raw-table-seed _tab64850_)))
          (let* ((_h64857_ (fxxor (eq-hash _key64851_) _seed64855_))
                 (_size64860_ (vector-length _table64854_))
                 (_entries64863_ (fxquotient _size64860_ '2))
                 (_start64866_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64857_ _entries64863_)
                   '1)))
            (let _loop64870_ ((_probe64873_ _start64866_)
                              (_i64875_ '1)
                              (_deleted64877_ '#f))
              (let ((_k64880_ (vector-ref _table64854_ _probe64873_)))
                (if (eq? _k64880_ (macro-unused-obj))
                    _default64852_
                    (if (eq? _k64880_ (macro-deleted-obj))
                        (_loop64870_
                         (let ((_next-probe64883_
                                (fx+ _start64866_
                                     _i64875_
                                     (fx* _i64875_ _i64875_))))
                           (fxmodulo _next-probe64883_ _size64860_))
                         (fx+ _i64875_ '1)
                         (let ((_$e64886_ _deleted64877_))
                           (if _$e64886_ _$e64886_ _probe64873_)))
                        (if (eq? _key64851_ _k64880_)
                            (vector-ref _table64854_ (fx+ _probe64873_ '1))
                            (_loop64870_
                             (let ((_next-probe64889_
                                    (fx+ _start64866_
                                         _i64875_
                                         (fx* _i64875_ _i64875_))))
                               (fxmodulo _next-probe64889_ _size64860_))
                             (fx+ _i64875_ '1)
                             _deleted64877_))))))))))
    (define eq-table-set!
      (lambda (_tab64846_ _key64847_ _value64848_)
        (if (fx< (&raw-table-free _tab64846_)
                 (fxquotient (vector-length (&raw-table-table _tab64846_)) '4))
            (__raw-table-rehash! _tab64846_)
            '#!void)
        (__eq-table-set! _tab64846_ _key64847_ _value64848_)))
    (define __eq-table-set!
      (lambda (_tab64801_ _key64802_ _value64803_)
        (let ((_table64806_ (&raw-table-table _tab64801_))
              (_seed64807_ (&raw-table-seed _tab64801_)))
          (let* ((_h64809_ (fxxor (eq-hash _key64802_) _seed64807_))
                 (_size64812_ (vector-length _table64806_))
                 (_entries64815_ (fxquotient _size64812_ '2))
                 (_start64818_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64809_ _entries64815_)
                   '1)))
            (let _loop64822_ ((_probe64825_ _start64818_)
                              (_i64827_ '1)
                              (_deleted64829_ '#f))
              (let ((_k64832_ (vector-ref _table64806_ _probe64825_)))
                (if (eq? _k64832_ (macro-unused-obj))
                    (if _deleted64829_
                        (begin
                          (vector-set! _table64806_ _deleted64829_ _key64802_)
                          (vector-set!
                           _table64806_
                           (fx+ _deleted64829_ '1)
                           _value64803_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab64801_
                              (fx+ (&raw-table-count _tab64801_) '1)))))
                        (begin
                          (vector-set! _table64806_ _probe64825_ _key64802_)
                          (vector-set!
                           _table64806_
                           (fx+ _probe64825_ '1)
                           _value64803_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab64801_
                              (fx- (&raw-table-free _tab64801_) '1))
                             (&raw-table-count-set!
                              _tab64801_
                              (fx+ (&raw-table-count _tab64801_) '1))))))
                    (if (eq? _k64832_ (macro-deleted-obj))
                        (_loop64822_
                         (let ((_next-probe64837_
                                (fx+ _start64818_
                                     _i64827_
                                     (fx* _i64827_ _i64827_))))
                           (fxmodulo _next-probe64837_ _size64812_))
                         (fx+ _i64827_ '1)
                         (let ((_$e64840_ _deleted64829_))
                           (if _$e64840_ _$e64840_ _probe64825_)))
                        (if (eq? _key64802_ _k64832_)
                            (begin
                              (vector-set!
                               _table64806_
                               _probe64825_
                               _key64802_)
                              (vector-set!
                               _table64806_
                               (fx+ _probe64825_ '1)
                               _value64803_))
                            (_loop64822_
                             (let ((_next-probe64843_
                                    (fx+ _start64818_
                                         _i64827_
                                         (fx* _i64827_ _i64827_))))
                               (fxmodulo _next-probe64843_ _size64812_))
                             (fx+ _i64827_ '1)
                             _deleted64829_))))))))))
    (define eq-table-update!
      (lambda (_tab64796_ _key64797_ _eq-table-update!64798_ _default64799_)
        (if (fx< (&raw-table-free _tab64796_)
                 (fxquotient (vector-length (&raw-table-table _tab64796_)) '4))
            (__raw-table-rehash! _tab64796_)
            '#!void)
        (__eq-table-update!
         _tab64796_
         _key64797_
         _eq-table-update!64798_
         _default64799_)))
    (define __eq-table-update!
      (lambda (_tab64750_ _key64751_ _eq-table-update!64752_ _default64753_)
        (let ((_table64756_ (&raw-table-table _tab64750_))
              (_seed64757_ (&raw-table-seed _tab64750_)))
          (let* ((_h64759_ (fxxor (eq-hash _key64751_) _seed64757_))
                 (_size64762_ (vector-length _table64756_))
                 (_entries64765_ (fxquotient _size64762_ '2))
                 (_start64768_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64759_ _entries64765_)
                   '1)))
            (let _loop64772_ ((_probe64775_ _start64768_)
                              (_i64777_ '1)
                              (_deleted64779_ '#f))
              (let ((_k64782_ (vector-ref _table64756_ _probe64775_)))
                (if (eq? _k64782_ (macro-unused-obj))
                    (if _deleted64779_
                        (begin
                          (vector-set! _table64756_ _deleted64779_ _key64751_)
                          (vector-set!
                           _table64756_
                           (fx+ _deleted64779_ '1)
                           (_eq-table-update!64752_ _default64753_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab64750_
                              (fx+ (&raw-table-count _tab64750_) '1)))))
                        (begin
                          (vector-set! _table64756_ _probe64775_ _key64751_)
                          (vector-set!
                           _table64756_
                           (fx+ _probe64775_ '1)
                           (_eq-table-update!64752_ _default64753_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab64750_
                              (fx- (&raw-table-free _tab64750_) '1))
                             (&raw-table-count-set!
                              _tab64750_
                              (fx+ (&raw-table-count _tab64750_) '1))))))
                    (if (eq? _k64782_ (macro-deleted-obj))
                        (_loop64772_
                         (let ((_next-probe64787_
                                (fx+ _start64768_
                                     _i64777_
                                     (fx* _i64777_ _i64777_))))
                           (fxmodulo _next-probe64787_ _size64762_))
                         (fx+ _i64777_ '1)
                         (let ((_$e64790_ _deleted64779_))
                           (if _$e64790_ _$e64790_ _probe64775_)))
                        (if (eq? _key64751_ _k64782_)
                            (begin
                              (vector-set!
                               _table64756_
                               _probe64775_
                               _key64751_)
                              (vector-set!
                               _table64756_
                               (fx+ _probe64775_ '1)
                               (_eq-table-update!64752_
                                (vector-ref
                                 _table64756_
                                 (fx+ _probe64775_ '1)))))
                            (_loop64772_
                             (let ((_next-probe64793_
                                    (fx+ _start64768_
                                         _i64777_
                                         (fx* _i64777_ _i64777_))))
                               (fxmodulo _next-probe64793_ _size64762_))
                             (fx+ _i64777_ '1)
                             _deleted64779_))))))))))
    (define eq-table-delete!
      (lambda (_tab64709_ _key64711_)
        (let ((_table64714_ (&raw-table-table _tab64709_))
              (_seed64716_ (&raw-table-seed _tab64709_)))
          (let* ((_h64719_ (fxxor (eq-hash _key64711_) _seed64716_))
                 (_size64722_ (vector-length _table64714_))
                 (_entries64725_ (fxquotient _size64722_ '2))
                 (_start64728_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64719_ _entries64725_)
                   '1)))
            (let _loop64732_ ((_probe64735_ _start64728_) (_i64737_ '1))
              (let ((_k64740_ (vector-ref _table64714_ _probe64735_)))
                (if (eq? _k64740_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k64740_ (macro-deleted-obj))
                        (_loop64732_
                         (let ((_next-probe64743_
                                (fx+ _start64728_
                                     _i64737_
                                     (fx* _i64737_ _i64737_))))
                           (fxmodulo _next-probe64743_ _size64722_))
                         (fx+ _i64737_ '1))
                        (if (eq? _key64711_ _k64740_)
                            (begin
                              (vector-set!
                               _table64714_
                               _probe64735_
                               (macro-deleted-obj))
                              (vector-set!
                               _table64714_
                               (fx+ _probe64735_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab64709_
                                  (fx- (&raw-table-count _tab64709_) '1)))))
                            (_loop64732_
                             (let ((_next-probe64747_
                                    (fx+ _start64728_
                                         _i64737_
                                         (fx* _i64737_ _i64737_))))
                               (fxmodulo _next-probe64747_ _size64722_))
                             (fx+ _i64737_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_size-hint64690_ _seed64692_)
        (make-raw-table__% _size-hint64690_ eqv-hash eqv? _seed64692_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_size-hint64698_ '#f) (_seed64700_ '0))
          (make-eqv-table__% _size-hint64698_ _seed64700_))))
    (define make-eqv-table__1
      (lambda (_size-hint64702_)
        (let ((_seed64704_ '0))
          (make-eqv-table__% _size-hint64702_ _seed64704_))))
    (define make-eqv-table
      (lambda _g69287_
        (let ((_g69286_ (##length _g69287_)))
          (cond ((##fx= _g69286_ 0)
                 (apply (lambda () (make-eqv-table__0)) _g69287_))
                ((##fx= _g69286_ 1)
                 (apply (lambda (_size-hint64702_)
                          (make-eqv-table__1 _size-hint64702_))
                        _g69287_))
                ((##fx= _g69286_ 2)
                 (apply (lambda (_size-hint64706_ _seed64707_)
                          (make-eqv-table__% _size-hint64706_ _seed64707_))
                        _g69287_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g69287_))))))
    (define eqv-table-ref
      (lambda (_tab64647_ _key64648_ _default64649_)
        (let ((_table64651_ (&raw-table-table _tab64647_))
              (_seed64652_ (&raw-table-seed _tab64647_)))
          (let* ((_h64654_ (fxxor (eqv-hash _key64648_) _seed64652_))
                 (_size64657_ (vector-length _table64651_))
                 (_entries64660_ (fxquotient _size64657_ '2))
                 (_start64663_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64654_ _entries64660_)
                   '1)))
            (let _loop64667_ ((_probe64670_ _start64663_)
                              (_i64672_ '1)
                              (_deleted64674_ '#f))
              (let ((_k64677_ (vector-ref _table64651_ _probe64670_)))
                (if (eq? _k64677_ (macro-unused-obj))
                    _default64649_
                    (if (eq? _k64677_ (macro-deleted-obj))
                        (_loop64667_
                         (let ((_next-probe64680_
                                (fx+ _start64663_
                                     _i64672_
                                     (fx* _i64672_ _i64672_))))
                           (fxmodulo _next-probe64680_ _size64657_))
                         (fx+ _i64672_ '1)
                         (let ((_$e64683_ _deleted64674_))
                           (if _$e64683_ _$e64683_ _probe64670_)))
                        (if (eqv? _key64648_ _k64677_)
                            (vector-ref _table64651_ (fx+ _probe64670_ '1))
                            (_loop64667_
                             (let ((_next-probe64686_
                                    (fx+ _start64663_
                                         _i64672_
                                         (fx* _i64672_ _i64672_))))
                               (fxmodulo _next-probe64686_ _size64657_))
                             (fx+ _i64672_ '1)
                             _deleted64674_))))))))))
    (define eqv-table-set!
      (lambda (_tab64643_ _key64644_ _value64645_)
        (if (fx< (&raw-table-free _tab64643_)
                 (fxquotient (vector-length (&raw-table-table _tab64643_)) '4))
            (__raw-table-rehash! _tab64643_)
            '#!void)
        (__eqv-table-set! _tab64643_ _key64644_ _value64645_)))
    (define __eqv-table-set!
      (lambda (_tab64598_ _key64599_ _value64600_)
        (let ((_table64603_ (&raw-table-table _tab64598_))
              (_seed64604_ (&raw-table-seed _tab64598_)))
          (let* ((_h64606_ (fxxor (eqv-hash _key64599_) _seed64604_))
                 (_size64609_ (vector-length _table64603_))
                 (_entries64612_ (fxquotient _size64609_ '2))
                 (_start64615_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64606_ _entries64612_)
                   '1)))
            (let _loop64619_ ((_probe64622_ _start64615_)
                              (_i64624_ '1)
                              (_deleted64626_ '#f))
              (let ((_k64629_ (vector-ref _table64603_ _probe64622_)))
                (if (eq? _k64629_ (macro-unused-obj))
                    (if _deleted64626_
                        (begin
                          (vector-set! _table64603_ _deleted64626_ _key64599_)
                          (vector-set!
                           _table64603_
                           (fx+ _deleted64626_ '1)
                           _value64600_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab64598_
                              (fx+ (&raw-table-count _tab64598_) '1)))))
                        (begin
                          (vector-set! _table64603_ _probe64622_ _key64599_)
                          (vector-set!
                           _table64603_
                           (fx+ _probe64622_ '1)
                           _value64600_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab64598_
                              (fx- (&raw-table-free _tab64598_) '1))
                             (&raw-table-count-set!
                              _tab64598_
                              (fx+ (&raw-table-count _tab64598_) '1))))))
                    (if (eq? _k64629_ (macro-deleted-obj))
                        (_loop64619_
                         (let ((_next-probe64634_
                                (fx+ _start64615_
                                     _i64624_
                                     (fx* _i64624_ _i64624_))))
                           (fxmodulo _next-probe64634_ _size64609_))
                         (fx+ _i64624_ '1)
                         (let ((_$e64637_ _deleted64626_))
                           (if _$e64637_ _$e64637_ _probe64622_)))
                        (if (eqv? _key64599_ _k64629_)
                            (begin
                              (vector-set!
                               _table64603_
                               _probe64622_
                               _key64599_)
                              (vector-set!
                               _table64603_
                               (fx+ _probe64622_ '1)
                               _value64600_))
                            (_loop64619_
                             (let ((_next-probe64640_
                                    (fx+ _start64615_
                                         _i64624_
                                         (fx* _i64624_ _i64624_))))
                               (fxmodulo _next-probe64640_ _size64609_))
                             (fx+ _i64624_ '1)
                             _deleted64626_))))))))))
    (define eqv-table-update!
      (lambda (_tab64593_ _key64594_ _eqv-table-update!64595_ _default64596_)
        (if (fx< (&raw-table-free _tab64593_)
                 (fxquotient (vector-length (&raw-table-table _tab64593_)) '4))
            (__raw-table-rehash! _tab64593_)
            '#!void)
        (__eqv-table-update!
         _tab64593_
         _key64594_
         _eqv-table-update!64595_
         _default64596_)))
    (define __eqv-table-update!
      (lambda (_tab64547_ _key64548_ _eqv-table-update!64549_ _default64550_)
        (let ((_table64553_ (&raw-table-table _tab64547_))
              (_seed64554_ (&raw-table-seed _tab64547_)))
          (let* ((_h64556_ (fxxor (eqv-hash _key64548_) _seed64554_))
                 (_size64559_ (vector-length _table64553_))
                 (_entries64562_ (fxquotient _size64559_ '2))
                 (_start64565_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64556_ _entries64562_)
                   '1)))
            (let _loop64569_ ((_probe64572_ _start64565_)
                              (_i64574_ '1)
                              (_deleted64576_ '#f))
              (let ((_k64579_ (vector-ref _table64553_ _probe64572_)))
                (if (eq? _k64579_ (macro-unused-obj))
                    (if _deleted64576_
                        (begin
                          (vector-set! _table64553_ _deleted64576_ _key64548_)
                          (vector-set!
                           _table64553_
                           (fx+ _deleted64576_ '1)
                           (_eqv-table-update!64549_ _default64550_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab64547_
                              (fx+ (&raw-table-count _tab64547_) '1)))))
                        (begin
                          (vector-set! _table64553_ _probe64572_ _key64548_)
                          (vector-set!
                           _table64553_
                           (fx+ _probe64572_ '1)
                           (_eqv-table-update!64549_ _default64550_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab64547_
                              (fx- (&raw-table-free _tab64547_) '1))
                             (&raw-table-count-set!
                              _tab64547_
                              (fx+ (&raw-table-count _tab64547_) '1))))))
                    (if (eq? _k64579_ (macro-deleted-obj))
                        (_loop64569_
                         (let ((_next-probe64584_
                                (fx+ _start64565_
                                     _i64574_
                                     (fx* _i64574_ _i64574_))))
                           (fxmodulo _next-probe64584_ _size64559_))
                         (fx+ _i64574_ '1)
                         (let ((_$e64587_ _deleted64576_))
                           (if _$e64587_ _$e64587_ _probe64572_)))
                        (if (eqv? _key64548_ _k64579_)
                            (begin
                              (vector-set!
                               _table64553_
                               _probe64572_
                               _key64548_)
                              (vector-set!
                               _table64553_
                               (fx+ _probe64572_ '1)
                               (_eqv-table-update!64549_
                                (vector-ref
                                 _table64553_
                                 (fx+ _probe64572_ '1)))))
                            (_loop64569_
                             (let ((_next-probe64590_
                                    (fx+ _start64565_
                                         _i64574_
                                         (fx* _i64574_ _i64574_))))
                               (fxmodulo _next-probe64590_ _size64559_))
                             (fx+ _i64574_ '1)
                             _deleted64576_))))))))))
    (define eqv-table-delete!
      (lambda (_tab64506_ _key64508_)
        (let ((_table64511_ (&raw-table-table _tab64506_))
              (_seed64513_ (&raw-table-seed _tab64506_)))
          (let* ((_h64516_ (fxxor (eqv-hash _key64508_) _seed64513_))
                 (_size64519_ (vector-length _table64511_))
                 (_entries64522_ (fxquotient _size64519_ '2))
                 (_start64525_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64516_ _entries64522_)
                   '1)))
            (let _loop64529_ ((_probe64532_ _start64525_) (_i64534_ '1))
              (let ((_k64537_ (vector-ref _table64511_ _probe64532_)))
                (if (eq? _k64537_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k64537_ (macro-deleted-obj))
                        (_loop64529_
                         (let ((_next-probe64540_
                                (fx+ _start64525_
                                     _i64534_
                                     (fx* _i64534_ _i64534_))))
                           (fxmodulo _next-probe64540_ _size64519_))
                         (fx+ _i64534_ '1))
                        (if (eqv? _key64508_ _k64537_)
                            (begin
                              (vector-set!
                               _table64511_
                               _probe64532_
                               (macro-deleted-obj))
                              (vector-set!
                               _table64511_
                               (fx+ _probe64532_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab64506_
                                  (fx- (&raw-table-count _tab64506_) '1)))))
                            (_loop64529_
                             (let ((_next-probe64544_
                                    (fx+ _start64525_
                                         _i64534_
                                         (fx* _i64534_ _i64534_))))
                               (fxmodulo _next-probe64544_ _size64519_))
                             (fx+ _i64534_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_size-hint64487_ _seed64489_)
        (make-raw-table__% _size-hint64487_ symbolic-hash eq? _seed64489_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_size-hint64495_ '#f) (_seed64497_ '0))
          (make-symbolic-table__% _size-hint64495_ _seed64497_))))
    (define make-symbolic-table__1
      (lambda (_size-hint64499_)
        (let ((_seed64501_ '0))
          (make-symbolic-table__% _size-hint64499_ _seed64501_))))
    (define make-symbolic-table
      (lambda _g69289_
        (let ((_g69288_ (##length _g69289_)))
          (cond ((##fx= _g69288_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g69289_))
                ((##fx= _g69288_ 1)
                 (apply (lambda (_size-hint64499_)
                          (make-symbolic-table__1 _size-hint64499_))
                        _g69289_))
                ((##fx= _g69288_ 2)
                 (apply (lambda (_size-hint64503_ _seed64504_)
                          (make-symbolic-table__%
                           _size-hint64503_
                           _seed64504_))
                        _g69289_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g69289_))))))
    (define symbolic-table-ref
      (lambda (_tab64444_ _key64445_ _default64446_)
        (let ((_table64448_ (&raw-table-table _tab64444_))
              (_seed64449_ (&raw-table-seed _tab64444_)))
          (let* ((_h64451_ (fxxor (symbolic-hash _key64445_) _seed64449_))
                 (_size64454_ (vector-length _table64448_))
                 (_entries64457_ (fxquotient _size64454_ '2))
                 (_start64460_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64451_ _entries64457_)
                   '1)))
            (let _loop64464_ ((_probe64467_ _start64460_)
                              (_i64469_ '1)
                              (_deleted64471_ '#f))
              (let ((_k64474_ (vector-ref _table64448_ _probe64467_)))
                (if (eq? _k64474_ (macro-unused-obj))
                    _default64446_
                    (if (eq? _k64474_ (macro-deleted-obj))
                        (_loop64464_
                         (let ((_next-probe64477_
                                (fx+ _start64460_
                                     _i64469_
                                     (fx* _i64469_ _i64469_))))
                           (fxmodulo _next-probe64477_ _size64454_))
                         (fx+ _i64469_ '1)
                         (let ((_$e64480_ _deleted64471_))
                           (if _$e64480_ _$e64480_ _probe64467_)))
                        (if (eq? _key64445_ _k64474_)
                            (vector-ref _table64448_ (fx+ _probe64467_ '1))
                            (_loop64464_
                             (let ((_next-probe64483_
                                    (fx+ _start64460_
                                         _i64469_
                                         (fx* _i64469_ _i64469_))))
                               (fxmodulo _next-probe64483_ _size64454_))
                             (fx+ _i64469_ '1)
                             _deleted64471_))))))))))
    (define symbolic-table-set!
      (lambda (_tab64440_ _key64441_ _value64442_)
        (if (fx< (&raw-table-free _tab64440_)
                 (fxquotient (vector-length (&raw-table-table _tab64440_)) '4))
            (__raw-table-rehash! _tab64440_)
            '#!void)
        (__symbolic-table-set! _tab64440_ _key64441_ _value64442_)))
    (define __symbolic-table-set!
      (lambda (_tab64395_ _key64396_ _value64397_)
        (let ((_table64400_ (&raw-table-table _tab64395_))
              (_seed64401_ (&raw-table-seed _tab64395_)))
          (let* ((_h64403_ (fxxor (symbolic-hash _key64396_) _seed64401_))
                 (_size64406_ (vector-length _table64400_))
                 (_entries64409_ (fxquotient _size64406_ '2))
                 (_start64412_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64403_ _entries64409_)
                   '1)))
            (let _loop64416_ ((_probe64419_ _start64412_)
                              (_i64421_ '1)
                              (_deleted64423_ '#f))
              (let ((_k64426_ (vector-ref _table64400_ _probe64419_)))
                (if (eq? _k64426_ (macro-unused-obj))
                    (if _deleted64423_
                        (begin
                          (vector-set! _table64400_ _deleted64423_ _key64396_)
                          (vector-set!
                           _table64400_
                           (fx+ _deleted64423_ '1)
                           _value64397_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab64395_
                              (fx+ (&raw-table-count _tab64395_) '1)))))
                        (begin
                          (vector-set! _table64400_ _probe64419_ _key64396_)
                          (vector-set!
                           _table64400_
                           (fx+ _probe64419_ '1)
                           _value64397_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab64395_
                              (fx- (&raw-table-free _tab64395_) '1))
                             (&raw-table-count-set!
                              _tab64395_
                              (fx+ (&raw-table-count _tab64395_) '1))))))
                    (if (eq? _k64426_ (macro-deleted-obj))
                        (_loop64416_
                         (let ((_next-probe64431_
                                (fx+ _start64412_
                                     _i64421_
                                     (fx* _i64421_ _i64421_))))
                           (fxmodulo _next-probe64431_ _size64406_))
                         (fx+ _i64421_ '1)
                         (let ((_$e64434_ _deleted64423_))
                           (if _$e64434_ _$e64434_ _probe64419_)))
                        (if (eq? _key64396_ _k64426_)
                            (begin
                              (vector-set!
                               _table64400_
                               _probe64419_
                               _key64396_)
                              (vector-set!
                               _table64400_
                               (fx+ _probe64419_ '1)
                               _value64397_))
                            (_loop64416_
                             (let ((_next-probe64437_
                                    (fx+ _start64412_
                                         _i64421_
                                         (fx* _i64421_ _i64421_))))
                               (fxmodulo _next-probe64437_ _size64406_))
                             (fx+ _i64421_ '1)
                             _deleted64423_))))))))))
    (define symbolic-table-update!
      (lambda (_tab64390_
               _key64391_
               _symbolic-table-update!64392_
               _default64393_)
        (if (fx< (&raw-table-free _tab64390_)
                 (fxquotient (vector-length (&raw-table-table _tab64390_)) '4))
            (__raw-table-rehash! _tab64390_)
            '#!void)
        (__symbolic-table-update!
         _tab64390_
         _key64391_
         _symbolic-table-update!64392_
         _default64393_)))
    (define __symbolic-table-update!
      (lambda (_tab64344_
               _key64345_
               _symbolic-table-update!64346_
               _default64347_)
        (let ((_table64350_ (&raw-table-table _tab64344_))
              (_seed64351_ (&raw-table-seed _tab64344_)))
          (let* ((_h64353_ (fxxor (symbolic-hash _key64345_) _seed64351_))
                 (_size64356_ (vector-length _table64350_))
                 (_entries64359_ (fxquotient _size64356_ '2))
                 (_start64362_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64353_ _entries64359_)
                   '1)))
            (let _loop64366_ ((_probe64369_ _start64362_)
                              (_i64371_ '1)
                              (_deleted64373_ '#f))
              (let ((_k64376_ (vector-ref _table64350_ _probe64369_)))
                (if (eq? _k64376_ (macro-unused-obj))
                    (if _deleted64373_
                        (begin
                          (vector-set! _table64350_ _deleted64373_ _key64345_)
                          (vector-set!
                           _table64350_
                           (fx+ _deleted64373_ '1)
                           (_symbolic-table-update!64346_ _default64347_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab64344_
                              (fx+ (&raw-table-count _tab64344_) '1)))))
                        (begin
                          (vector-set! _table64350_ _probe64369_ _key64345_)
                          (vector-set!
                           _table64350_
                           (fx+ _probe64369_ '1)
                           (_symbolic-table-update!64346_ _default64347_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab64344_
                              (fx- (&raw-table-free _tab64344_) '1))
                             (&raw-table-count-set!
                              _tab64344_
                              (fx+ (&raw-table-count _tab64344_) '1))))))
                    (if (eq? _k64376_ (macro-deleted-obj))
                        (_loop64366_
                         (let ((_next-probe64381_
                                (fx+ _start64362_
                                     _i64371_
                                     (fx* _i64371_ _i64371_))))
                           (fxmodulo _next-probe64381_ _size64356_))
                         (fx+ _i64371_ '1)
                         (let ((_$e64384_ _deleted64373_))
                           (if _$e64384_ _$e64384_ _probe64369_)))
                        (if (eq? _key64345_ _k64376_)
                            (begin
                              (vector-set!
                               _table64350_
                               _probe64369_
                               _key64345_)
                              (vector-set!
                               _table64350_
                               (fx+ _probe64369_ '1)
                               (_symbolic-table-update!64346_
                                (vector-ref
                                 _table64350_
                                 (fx+ _probe64369_ '1)))))
                            (_loop64366_
                             (let ((_next-probe64387_
                                    (fx+ _start64362_
                                         _i64371_
                                         (fx* _i64371_ _i64371_))))
                               (fxmodulo _next-probe64387_ _size64356_))
                             (fx+ _i64371_ '1)
                             _deleted64373_))))))))))
    (define symbolic-table-delete!
      (lambda (_tab64303_ _key64305_)
        (let ((_table64308_ (&raw-table-table _tab64303_))
              (_seed64310_ (&raw-table-seed _tab64303_)))
          (let* ((_h64313_ (fxxor (symbolic-hash _key64305_) _seed64310_))
                 (_size64316_ (vector-length _table64308_))
                 (_entries64319_ (fxquotient _size64316_ '2))
                 (_start64322_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64313_ _entries64319_)
                   '1)))
            (let _loop64326_ ((_probe64329_ _start64322_) (_i64331_ '1))
              (let ((_k64334_ (vector-ref _table64308_ _probe64329_)))
                (if (eq? _k64334_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k64334_ (macro-deleted-obj))
                        (_loop64326_
                         (let ((_next-probe64337_
                                (fx+ _start64322_
                                     _i64331_
                                     (fx* _i64331_ _i64331_))))
                           (fxmodulo _next-probe64337_ _size64316_))
                         (fx+ _i64331_ '1))
                        (if (eq? _key64305_ _k64334_)
                            (begin
                              (vector-set!
                               _table64308_
                               _probe64329_
                               (macro-deleted-obj))
                              (vector-set!
                               _table64308_
                               (fx+ _probe64329_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab64303_
                                  (fx- (&raw-table-count _tab64303_) '1)))))
                            (_loop64326_
                             (let ((_next-probe64341_
                                    (fx+ _start64322_
                                         _i64331_
                                         (fx* _i64331_ _i64331_))))
                               (fxmodulo _next-probe64341_ _size64316_))
                             (fx+ _i64331_ '1)))))))))))
    (define make-string-table__%
      (lambda (_size-hint64284_ _seed64286_)
        (make-raw-table__%
         _size-hint64284_
         string-hash
         ##string=?
         _seed64286_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_size-hint64292_ '#f) (_seed64294_ '0))
          (make-string-table__% _size-hint64292_ _seed64294_))))
    (define make-string-table__1
      (lambda (_size-hint64296_)
        (let ((_seed64298_ '0))
          (make-string-table__% _size-hint64296_ _seed64298_))))
    (define make-string-table
      (lambda _g69291_
        (let ((_g69290_ (##length _g69291_)))
          (cond ((##fx= _g69290_ 0)
                 (apply (lambda () (make-string-table__0)) _g69291_))
                ((##fx= _g69290_ 1)
                 (apply (lambda (_size-hint64296_)
                          (make-string-table__1 _size-hint64296_))
                        _g69291_))
                ((##fx= _g69290_ 2)
                 (apply (lambda (_size-hint64300_ _seed64301_)
                          (make-string-table__% _size-hint64300_ _seed64301_))
                        _g69291_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g69291_))))))
    (define string-table-ref
      (lambda (_tab64241_ _key64242_ _default64243_)
        (let ((_table64245_ (&raw-table-table _tab64241_))
              (_seed64246_ (&raw-table-seed _tab64241_)))
          (let* ((_h64248_ (fxxor (##string=?-hash _key64242_) _seed64246_))
                 (_size64251_ (vector-length _table64245_))
                 (_entries64254_ (fxquotient _size64251_ '2))
                 (_start64257_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64248_ _entries64254_)
                   '1)))
            (let _loop64261_ ((_probe64264_ _start64257_)
                              (_i64266_ '1)
                              (_deleted64268_ '#f))
              (let ((_k64271_ (vector-ref _table64245_ _probe64264_)))
                (if (eq? _k64271_ (macro-unused-obj))
                    _default64243_
                    (if (eq? _k64271_ (macro-deleted-obj))
                        (_loop64261_
                         (let ((_next-probe64274_
                                (fx+ _start64257_
                                     _i64266_
                                     (fx* _i64266_ _i64266_))))
                           (fxmodulo _next-probe64274_ _size64251_))
                         (fx+ _i64266_ '1)
                         (let ((_$e64277_ _deleted64268_))
                           (if _$e64277_ _$e64277_ _probe64264_)))
                        (if (##string=? _key64242_ _k64271_)
                            (vector-ref _table64245_ (fx+ _probe64264_ '1))
                            (_loop64261_
                             (let ((_next-probe64280_
                                    (fx+ _start64257_
                                         _i64266_
                                         (fx* _i64266_ _i64266_))))
                               (fxmodulo _next-probe64280_ _size64251_))
                             (fx+ _i64266_ '1)
                             _deleted64268_))))))))))
    (define string-table-set!
      (lambda (_tab64237_ _key64238_ _value64239_)
        (if (fx< (&raw-table-free _tab64237_)
                 (fxquotient (vector-length (&raw-table-table _tab64237_)) '4))
            (__raw-table-rehash! _tab64237_)
            '#!void)
        (__string-table-set! _tab64237_ _key64238_ _value64239_)))
    (define __string-table-set!
      (lambda (_tab64192_ _key64193_ _value64194_)
        (let ((_table64197_ (&raw-table-table _tab64192_))
              (_seed64198_ (&raw-table-seed _tab64192_)))
          (let* ((_h64200_ (fxxor (##string=?-hash _key64193_) _seed64198_))
                 (_size64203_ (vector-length _table64197_))
                 (_entries64206_ (fxquotient _size64203_ '2))
                 (_start64209_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64200_ _entries64206_)
                   '1)))
            (let _loop64213_ ((_probe64216_ _start64209_)
                              (_i64218_ '1)
                              (_deleted64220_ '#f))
              (let ((_k64223_ (vector-ref _table64197_ _probe64216_)))
                (if (eq? _k64223_ (macro-unused-obj))
                    (if _deleted64220_
                        (begin
                          (vector-set! _table64197_ _deleted64220_ _key64193_)
                          (vector-set!
                           _table64197_
                           (fx+ _deleted64220_ '1)
                           _value64194_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab64192_
                              (fx+ (&raw-table-count _tab64192_) '1)))))
                        (begin
                          (vector-set! _table64197_ _probe64216_ _key64193_)
                          (vector-set!
                           _table64197_
                           (fx+ _probe64216_ '1)
                           _value64194_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab64192_
                              (fx- (&raw-table-free _tab64192_) '1))
                             (&raw-table-count-set!
                              _tab64192_
                              (fx+ (&raw-table-count _tab64192_) '1))))))
                    (if (eq? _k64223_ (macro-deleted-obj))
                        (_loop64213_
                         (let ((_next-probe64228_
                                (fx+ _start64209_
                                     _i64218_
                                     (fx* _i64218_ _i64218_))))
                           (fxmodulo _next-probe64228_ _size64203_))
                         (fx+ _i64218_ '1)
                         (let ((_$e64231_ _deleted64220_))
                           (if _$e64231_ _$e64231_ _probe64216_)))
                        (if (##string=? _key64193_ _k64223_)
                            (begin
                              (vector-set!
                               _table64197_
                               _probe64216_
                               _key64193_)
                              (vector-set!
                               _table64197_
                               (fx+ _probe64216_ '1)
                               _value64194_))
                            (_loop64213_
                             (let ((_next-probe64234_
                                    (fx+ _start64209_
                                         _i64218_
                                         (fx* _i64218_ _i64218_))))
                               (fxmodulo _next-probe64234_ _size64203_))
                             (fx+ _i64218_ '1)
                             _deleted64220_))))))))))
    (define string-table-update!
      (lambda (_tab64187_
               _key64188_
               _string-table-update!64189_
               _default64190_)
        (if (fx< (&raw-table-free _tab64187_)
                 (fxquotient (vector-length (&raw-table-table _tab64187_)) '4))
            (__raw-table-rehash! _tab64187_)
            '#!void)
        (__string-table-update!
         _tab64187_
         _key64188_
         _string-table-update!64189_
         _default64190_)))
    (define __string-table-update!
      (lambda (_tab64141_
               _key64142_
               _string-table-update!64143_
               _default64144_)
        (let ((_table64147_ (&raw-table-table _tab64141_))
              (_seed64148_ (&raw-table-seed _tab64141_)))
          (let* ((_h64150_ (fxxor (##string=?-hash _key64142_) _seed64148_))
                 (_size64153_ (vector-length _table64147_))
                 (_entries64156_ (fxquotient _size64153_ '2))
                 (_start64159_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64150_ _entries64156_)
                   '1)))
            (let _loop64163_ ((_probe64166_ _start64159_)
                              (_i64168_ '1)
                              (_deleted64170_ '#f))
              (let ((_k64173_ (vector-ref _table64147_ _probe64166_)))
                (if (eq? _k64173_ (macro-unused-obj))
                    (if _deleted64170_
                        (begin
                          (vector-set! _table64147_ _deleted64170_ _key64142_)
                          (vector-set!
                           _table64147_
                           (fx+ _deleted64170_ '1)
                           (_string-table-update!64143_ _default64144_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab64141_
                              (fx+ (&raw-table-count _tab64141_) '1)))))
                        (begin
                          (vector-set! _table64147_ _probe64166_ _key64142_)
                          (vector-set!
                           _table64147_
                           (fx+ _probe64166_ '1)
                           (_string-table-update!64143_ _default64144_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab64141_
                              (fx- (&raw-table-free _tab64141_) '1))
                             (&raw-table-count-set!
                              _tab64141_
                              (fx+ (&raw-table-count _tab64141_) '1))))))
                    (if (eq? _k64173_ (macro-deleted-obj))
                        (_loop64163_
                         (let ((_next-probe64178_
                                (fx+ _start64159_
                                     _i64168_
                                     (fx* _i64168_ _i64168_))))
                           (fxmodulo _next-probe64178_ _size64153_))
                         (fx+ _i64168_ '1)
                         (let ((_$e64181_ _deleted64170_))
                           (if _$e64181_ _$e64181_ _probe64166_)))
                        (if (##string=? _key64142_ _k64173_)
                            (begin
                              (vector-set!
                               _table64147_
                               _probe64166_
                               _key64142_)
                              (vector-set!
                               _table64147_
                               (fx+ _probe64166_ '1)
                               (_string-table-update!64143_
                                (vector-ref
                                 _table64147_
                                 (fx+ _probe64166_ '1)))))
                            (_loop64163_
                             (let ((_next-probe64184_
                                    (fx+ _start64159_
                                         _i64168_
                                         (fx* _i64168_ _i64168_))))
                               (fxmodulo _next-probe64184_ _size64153_))
                             (fx+ _i64168_ '1)
                             _deleted64170_))))))))))
    (define string-table-delete!
      (lambda (_tab64100_ _key64102_)
        (let ((_table64105_ (&raw-table-table _tab64100_))
              (_seed64107_ (&raw-table-seed _tab64100_)))
          (let* ((_h64110_ (fxxor (##string=?-hash _key64102_) _seed64107_))
                 (_size64113_ (vector-length _table64105_))
                 (_entries64116_ (fxquotient _size64113_ '2))
                 (_start64119_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64110_ _entries64116_)
                   '1)))
            (let _loop64123_ ((_probe64126_ _start64119_) (_i64128_ '1))
              (let ((_k64131_ (vector-ref _table64105_ _probe64126_)))
                (if (eq? _k64131_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k64131_ (macro-deleted-obj))
                        (_loop64123_
                         (let ((_next-probe64134_
                                (fx+ _start64119_
                                     _i64128_
                                     (fx* _i64128_ _i64128_))))
                           (fxmodulo _next-probe64134_ _size64113_))
                         (fx+ _i64128_ '1))
                        (if (##string=? _key64102_ _k64131_)
                            (begin
                              (vector-set!
                               _table64105_
                               _probe64126_
                               (macro-deleted-obj))
                              (vector-set!
                               _table64105_
                               (fx+ _probe64126_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab64100_
                                  (fx- (&raw-table-count _tab64100_) '1)))))
                            (_loop64123_
                             (let ((_next-probe64138_
                                    (fx+ _start64119_
                                         _i64128_
                                         (fx* _i64128_ _i64128_))))
                               (fxmodulo _next-probe64138_ _size64113_))
                             (fx+ _i64128_ '1)))))))))))))
