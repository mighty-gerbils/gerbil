(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1710687283)
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
      (lambda (_tab60384_)
        (##unchecked-structure-ref _tab60384_ '1 __table::t 'raw-table-table)))
    (define &raw-table-count
      (lambda (_tab60382_)
        (##unchecked-structure-ref _tab60382_ '2 __table::t 'raw-table-count)))
    (define &raw-table-free
      (lambda (_tab60380_)
        (##unchecked-structure-ref _tab60380_ '3 __table::t 'raw-table-free)))
    (define &raw-table-hash
      (lambda (_tab60378_)
        (##unchecked-structure-ref _tab60378_ '4 __table::t 'raw-table-hash)))
    (define &raw-table-test
      (lambda (_tab60376_)
        (##unchecked-structure-ref _tab60376_ '5 __table::t 'raw-table-test)))
    (define &raw-table-seed
      (lambda (_tab60374_)
        (##unchecked-structure-ref _tab60374_ '6 __table::t 'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_tab60371_ _val60372_)
        (##unchecked-structure-set!
         _tab60371_
         _val60372_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_tab60368_ _val60369_)
        (##unchecked-structure-set!
         _tab60368_
         _val60369_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_tab60365_ _val60366_)
        (##unchecked-structure-set!
         _tab60365_
         _val60366_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_tab60362_ _val60363_)
        (##unchecked-structure-set!
         _tab60362_
         _val60363_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_tab60359_ _val60360_)
        (##unchecked-structure-set!
         _tab60359_
         _val60360_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_tab60356_ _val60357_)
        (##unchecked-structure-set!
         _tab60356_
         _val60357_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_size-hint60354_)
        (if (and (fixnum? _size-hint60354_) (fx> _size-hint60354_ '0))
            (fx* (fxmax '2 (expt '2 (integer-length _size-hint60354_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_size-hint60330_ _hash60331_ _test60332_ _seed60333_)
        (let* ((_size60335_ (raw-table-size-hint->size _size-hint60330_))
               (_table60337_ (make-vector _size60335_ (macro-unused-obj))))
          (##structure
           __table::t
           _table60337_
           '0
           (fxquotient _size60335_ '2)
           _hash60331_
           _test60332_
           _seed60333_))))
    (define make-raw-table__0
      (lambda (_size-hint60343_ _hash60344_ _test60345_)
        (let ((_seed60347_ '0))
          (make-raw-table__%
           _size-hint60343_
           _hash60344_
           _test60345_
           _seed60347_))))
    (define make-raw-table
      (lambda _g60386_
        (let ((_g60385_ (##length _g60386_)))
          (cond ((##fx= _g60385_ 3)
                 (apply (lambda (_size-hint60343_ _hash60344_ _test60345_)
                          (make-raw-table__0
                           _size-hint60343_
                           _hash60344_
                           _test60345_))
                        _g60386_))
                ((##fx= _g60385_ 4)
                 (apply (lambda (_size-hint60349_
                                 _hash60350_
                                 _test60351_
                                 _seed60352_)
                          (make-raw-table__%
                           _size-hint60349_
                           _hash60350_
                           _test60351_
                           _seed60352_))
                        _g60386_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g60386_))))))
    (define raw-table-ref
      (lambda (_tab60285_ _key60286_ _default60287_)
        (let ((_table60289_ (&raw-table-table _tab60285_))
              (_seed60290_ (&raw-table-seed _tab60285_))
              (_hash60291_ (&raw-table-hash _tab60285_))
              (_test60292_ (&raw-table-test _tab60285_)))
          (let* ((_h60294_ (fxxor (_hash60291_ _key60286_) _seed60290_))
                 (_size60297_ (vector-length _table60289_))
                 (_entries60300_ (fxquotient _size60297_ '2))
                 (_start60303_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60294_ _entries60300_)
                   '1)))
            (let _loop60307_ ((_probe60310_ _start60303_)
                              (_i60312_ '1)
                              (_deleted60314_ '#f))
              (let ((_k60317_ (vector-ref _table60289_ _probe60310_)))
                (if (eq? _k60317_ (macro-unused-obj))
                    _default60287_
                    (if (eq? _k60317_ (macro-deleted-obj))
                        (_loop60307_
                         (let ((_next-probe60320_
                                (fx+ _start60303_
                                     _i60312_
                                     (fx* _i60312_ _i60312_))))
                           (fxmodulo _next-probe60320_ _size60297_))
                         (fx+ _i60312_ '1)
                         (let ((_$e60323_ _deleted60314_))
                           (if _$e60323_ _$e60323_ _probe60310_)))
                        (if (_test60292_ _key60286_ _k60317_)
                            (vector-ref _table60289_ (fx+ _probe60310_ '1))
                            (_loop60307_
                             (let ((_next-probe60326_
                                    (fx+ _start60303_
                                         _i60312_
                                         (fx* _i60312_ _i60312_))))
                               (fxmodulo _next-probe60326_ _size60297_))
                             (fx+ _i60312_ '1)
                             _deleted60314_))))))))))
    (define raw-table-set!
      (lambda (_tab60281_ _key60282_ _value60283_)
        (if (fx< (&raw-table-free _tab60281_)
                 (fxquotient (vector-length (&raw-table-table _tab60281_)) '4))
            (__raw-table-rehash! _tab60281_)
            '#!void)
        (__raw-table-set! _tab60281_ _key60282_ _value60283_)))
    (define raw-table-update!
      (lambda (_tab60276_ _key60277_ _update60278_ _default60279_)
        (if (fx< (&raw-table-free _tab60276_)
                 (fxquotient (vector-length (&raw-table-table _tab60276_)) '4))
            (__raw-table-rehash! _tab60276_)
            '#!void)
        (__raw-table-update!
         _tab60276_
         _key60277_
         _update60278_
         _default60279_)))
    (define raw-table-delete!
      (lambda (_tab60237_ _key60238_)
        (let ((_table60240_ (&raw-table-table _tab60237_))
              (_seed60241_ (&raw-table-seed _tab60237_))
              (_hash60242_ (&raw-table-hash _tab60237_))
              (_test60243_ (&raw-table-test _tab60237_)))
          (let* ((_h60245_ (fxxor (_hash60242_ _key60238_) _seed60241_))
                 (_size60248_ (vector-length _table60240_))
                 (_entries60251_ (fxquotient _size60248_ '2))
                 (_start60254_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60245_ _entries60251_)
                   '1)))
            (let _loop60258_ ((_probe60261_ _start60254_) (_i60263_ '1))
              (let ((_k60266_ (vector-ref _table60240_ _probe60261_)))
                (if (eq? _k60266_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k60266_ (macro-deleted-obj))
                        (_loop60258_
                         (let ((_next-probe60269_
                                (fx+ _start60254_
                                     _i60263_
                                     (fx* _i60263_ _i60263_))))
                           (fxmodulo _next-probe60269_ _size60248_))
                         (fx+ _i60263_ '1))
                        (if (_test60243_ _key60238_ _k60266_)
                            (begin
                              (vector-set!
                               _table60240_
                               _probe60261_
                               (macro-deleted-obj))
                              (vector-set!
                               _table60240_
                               (fx+ _probe60261_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab60237_
                                  (fx- (&raw-table-count _tab60237_) '1)))))
                            (_loop60258_
                             (let ((_next-probe60273_
                                    (fx+ _start60254_
                                         _i60263_
                                         (fx* _i60263_ _i60263_))))
                               (fxmodulo _next-probe60273_ _size60248_))
                             (fx+ _i60263_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_tab60221_ _proc60222_)
        (let* ((_table60224_ (&raw-table-table _tab60221_))
               (_size60226_ (vector-length _table60224_)))
          (let _loop60229_ ((_i60231_ '0))
            (if (fx< _i60231_ _size60226_)
                (begin
                  (let ((_key60233_ (vector-ref _table60224_ _i60231_)))
                    (if (and (not (eq? _key60233_ (macro-unused-obj)))
                             (not (eq? _key60233_ (macro-deleted-obj))))
                        (let ((_value60235_
                               (vector-ref _table60224_ (fx+ _i60231_ '1))))
                          (_proc60222_ _key60233_ _value60235_))
                        '#!void))
                  (_loop60229_ (fx+ _i60231_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_tab60217_)
        (let ((_new-tab60219_ (##structure-copy _tab60217_)))
          (&raw-table-table-set!
           _new-tab60219_
           (vector-copy (&raw-table-table _tab60217_)))
          _new-tab60219_)))
    (define raw-table-clear!
      (lambda (_tab60215_)
        (vector-fill! (&raw-table-table _tab60215_) (macro-unused-obj))
        (&raw-table-count-set! _tab60215_ '0)
        (&raw-table-free-set!
         _tab60215_
         (fxquotient (vector-length (&raw-table-table _tab60215_)) '2))))
    (define __raw-table-set!
      (lambda (_tab60169_ _key60170_ _value60171_)
        (let ((_table60173_ (&raw-table-table _tab60169_))
              (_seed60174_ (&raw-table-seed _tab60169_))
              (_hash60175_ (&raw-table-hash _tab60169_))
              (_test60176_ (&raw-table-test _tab60169_)))
          (let* ((_h60178_ (fxxor (_hash60175_ _key60170_) _seed60174_))
                 (_size60181_ (vector-length _table60173_))
                 (_entries60184_ (fxquotient _size60181_ '2))
                 (_start60187_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60178_ _entries60184_)
                   '1)))
            (let _loop60191_ ((_probe60194_ _start60187_)
                              (_i60196_ '1)
                              (_deleted60198_ '#f))
              (let ((_k60201_ (vector-ref _table60173_ _probe60194_)))
                (if (eq? _k60201_ (macro-unused-obj))
                    (if _deleted60198_
                        (begin
                          (vector-set! _table60173_ _deleted60198_ _key60170_)
                          (vector-set!
                           _table60173_
                           (fx+ _deleted60198_ '1)
                           _value60171_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab60169_
                              (fx+ (&raw-table-count _tab60169_) '1)))))
                        (begin
                          (vector-set! _table60173_ _probe60194_ _key60170_)
                          (vector-set!
                           _table60173_
                           (fx+ _probe60194_ '1)
                           _value60171_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab60169_
                              (fx- (&raw-table-free _tab60169_) '1))
                             (&raw-table-count-set!
                              _tab60169_
                              (fx+ (&raw-table-count _tab60169_) '1))))))
                    (if (eq? _k60201_ (macro-deleted-obj))
                        (_loop60191_
                         (let ((_next-probe60206_
                                (fx+ _start60187_
                                     _i60196_
                                     (fx* _i60196_ _i60196_))))
                           (fxmodulo _next-probe60206_ _size60181_))
                         (fx+ _i60196_ '1)
                         (let ((_$e60209_ _deleted60198_))
                           (if _$e60209_ _$e60209_ _probe60194_)))
                        (if (_test60176_ _key60170_ _k60201_)
                            (begin
                              (vector-set!
                               _table60173_
                               _probe60194_
                               _key60170_)
                              (vector-set!
                               _table60173_
                               (fx+ _probe60194_ '1)
                               _value60171_))
                            (_loop60191_
                             (let ((_next-probe60212_
                                    (fx+ _start60187_
                                         _i60196_
                                         (fx* _i60196_ _i60196_))))
                               (fxmodulo _next-probe60212_ _size60181_))
                             (fx+ _i60196_ '1)
                             _deleted60198_))))))))))
    (define __raw-table-update!
      (lambda (_tab60122_ _key60123_ _update60124_ _default60125_)
        (let ((_table60127_ (&raw-table-table _tab60122_))
              (_seed60128_ (&raw-table-seed _tab60122_))
              (_hash60129_ (&raw-table-hash _tab60122_))
              (_test60130_ (&raw-table-test _tab60122_)))
          (let* ((_h60132_ (fxxor (_hash60129_ _key60123_) _seed60128_))
                 (_size60135_ (vector-length _table60127_))
                 (_entries60138_ (fxquotient _size60135_ '2))
                 (_start60141_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60132_ _entries60138_)
                   '1)))
            (let _loop60145_ ((_probe60148_ _start60141_)
                              (_i60150_ '1)
                              (_deleted60152_ '#f))
              (let ((_k60155_ (vector-ref _table60127_ _probe60148_)))
                (if (eq? _k60155_ (macro-unused-obj))
                    (if _deleted60152_
                        (begin
                          (vector-set! _table60127_ _deleted60152_ _key60123_)
                          (vector-set!
                           _table60127_
                           (fx+ _deleted60152_ '1)
                           (_update60124_ _default60125_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab60122_
                              (fx+ (&raw-table-count _tab60122_) '1)))))
                        (begin
                          (vector-set! _table60127_ _probe60148_ _key60123_)
                          (vector-set!
                           _table60127_
                           (fx+ _probe60148_ '1)
                           (_update60124_ _default60125_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab60122_
                              (fx- (&raw-table-free _tab60122_) '1))
                             (&raw-table-count-set!
                              _tab60122_
                              (fx+ (&raw-table-count _tab60122_) '1))))))
                    (if (eq? _k60155_ (macro-deleted-obj))
                        (_loop60145_
                         (let ((_next-probe60160_
                                (fx+ _start60141_
                                     _i60150_
                                     (fx* _i60150_ _i60150_))))
                           (fxmodulo _next-probe60160_ _size60135_))
                         (fx+ _i60150_ '1)
                         (let ((_$e60163_ _deleted60152_))
                           (if _$e60163_ _$e60163_ _probe60148_)))
                        (if (_test60130_ _key60123_ _k60155_)
                            (begin
                              (vector-set!
                               _table60127_
                               _probe60148_
                               _key60123_)
                              (vector-set!
                               _table60127_
                               (fx+ _probe60148_ '1)
                               (_update60124_
                                (vector-ref
                                 _table60127_
                                 (fx+ _probe60148_ '1)))))
                            (_loop60145_
                             (let ((_next-probe60166_
                                    (fx+ _start60141_
                                         _i60150_
                                         (fx* _i60150_ _i60150_))))
                               (fxmodulo _next-probe60166_ _size60135_))
                             (fx+ _i60150_ '1)
                             _deleted60152_))))))))))
    (define __raw-table-rehash!
      (lambda (_tab60103_)
        (let* ((_old-table60105_ (&raw-table-table _tab60103_))
               (_old-size60107_ (vector-length _old-table60105_))
               (_new-size60109_
                (if (fx< (&raw-table-count _tab60103_)
                         (fxquotient _old-size60107_ '4))
                    (vector-length _old-table60105_)
                    (fx* '2 (vector-length _old-table60105_))))
               (_new-table60111_
                (make-vector _new-size60109_ (macro-unused-obj))))
          (&raw-table-table-set! _tab60103_ _new-table60111_)
          (&raw-table-count-set! _tab60103_ '0)
          (&raw-table-free-set! _tab60103_ (fxquotient _new-size60109_ '2))
          (let _lp60114_ ((_i60116_ '0))
            (if (fx< _i60116_ _old-size60107_)
                (begin
                  (let ((_key60118_ (vector-ref _old-table60105_ _i60116_)))
                    (if (and (not (eq? _key60118_ (macro-unused-obj)))
                             (not (eq? _key60118_ (macro-deleted-obj))))
                        (let ((_value60120_
                               (vector-ref
                                _old-table60105_
                                (fx+ _i60116_ '1))))
                          (__raw-table-set!
                           _tab60103_
                           _key60118_
                           _value60120_))
                        '#!void))
                  (_lp60114_ (fx+ _i60116_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_obj60099_)
        (let ((_t60101_ (##type _obj60099_)))
          (if (fx= (fxand _t60101_ '1) '0)
              (fxand (##type-cast _obj60099_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _obj60099_)
                  (symbolic-hash _obj60099_)
                  (if (procedure? _obj60099_)
                      (procedure-hash _obj60099_)
                      (fxand (__eq-hash _obj60099_) (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_obj60095_)
        (let ((_h60097_
               (if (##closure? _obj60095_)
                   (__eq-hash _obj60095_)
                   (##type-cast _obj60095_ '0))))
          (fxand _h60097_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_obj60092_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _obj60092_)))
    (define eqv-hash
      (lambda (_obj60082_)
        (letrec ((_combine60084_
                  (lambda (_a60089_ _b60090_)
                    (fxand (fx* (fx+ _a60089_
                                     (fxarithmetic-shift-left _b60090_ '1))
                                '331804471)
                           (macro-max-fixnum32))))
                 (_hash60085_
                  (lambda (_obj60087_)
                    (macro-number-dispatch
                     _obj60087_
                     (eq-hash _obj60087_)
                     (fxand _obj60087_ (macro-max-fixnum32))
                     (modulo _obj60087_ '331804481)
                     (_combine60084_
                      (_hash60085_ (macro-ratnum-numerator _obj60087_))
                      (_hash60085_ (macro-ratnum-denominator _obj60087_)))
                     (_combine60084_
                      (##u16vector-ref _obj60087_ '0)
                      (_combine60084_
                       (##u16vector-ref _obj60087_ '1)
                       (_combine60084_
                        (##u16vector-ref _obj60087_ '2)
                        (##u16vector-ref _obj60087_ '3))))
                     (_combine60084_
                      (_hash60085_ (macro-cpxnum-real _obj60087_))
                      (_hash60085_ (macro-cpxnum-imag _obj60087_)))))))
          (_hash60085_ _obj60082_))))
    (define symbolic?
      (lambda (_obj60077_)
        (let ((_$e60079_ (symbol? _obj60077_)))
          (if _$e60079_ _$e60079_ (keyword? _obj60077_)))))
    (define symbolic-hash (lambda (_obj60075_) (macro-slot '1 _obj60075_)))
    (define string-hash (lambda (_obj60073_) (##string=?-hash _obj60073_)))
    (define immediate-hash
      (lambda (_obj60071_) (##type-cast _obj60071_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_size-hint60052_ _seed60054_)
        (make-raw-table__% _size-hint60052_ eq-hash eq? _seed60054_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_size-hint60060_ '#f) (_seed60062_ '0))
          (make-eq-table__% _size-hint60060_ _seed60062_))))
    (define make-eq-table__1
      (lambda (_size-hint60064_)
        (let ((_seed60066_ '0))
          (make-eq-table__% _size-hint60064_ _seed60066_))))
    (define make-eq-table
      (lambda _g60388_
        (let ((_g60387_ (##length _g60388_)))
          (cond ((##fx= _g60387_ 0)
                 (apply (lambda () (make-eq-table__0)) _g60388_))
                ((##fx= _g60387_ 1)
                 (apply (lambda (_size-hint60064_)
                          (make-eq-table__1 _size-hint60064_))
                        _g60388_))
                ((##fx= _g60387_ 2)
                 (apply (lambda (_size-hint60068_ _seed60069_)
                          (make-eq-table__% _size-hint60068_ _seed60069_))
                        _g60388_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g60388_))))))
    (define eq-table-ref
      (lambda (_tab60009_ _key60010_ _default60011_)
        (let ((_table60013_ (&raw-table-table _tab60009_))
              (_seed60014_ (&raw-table-seed _tab60009_)))
          (let* ((_h60016_ (fxxor (eq-hash _key60010_) _seed60014_))
                 (_size60019_ (vector-length _table60013_))
                 (_entries60022_ (fxquotient _size60019_ '2))
                 (_start60025_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60016_ _entries60022_)
                   '1)))
            (let _loop60029_ ((_probe60032_ _start60025_)
                              (_i60034_ '1)
                              (_deleted60036_ '#f))
              (let ((_k60039_ (vector-ref _table60013_ _probe60032_)))
                (if (eq? _k60039_ (macro-unused-obj))
                    _default60011_
                    (if (eq? _k60039_ (macro-deleted-obj))
                        (_loop60029_
                         (let ((_next-probe60042_
                                (fx+ _start60025_
                                     _i60034_
                                     (fx* _i60034_ _i60034_))))
                           (fxmodulo _next-probe60042_ _size60019_))
                         (fx+ _i60034_ '1)
                         (let ((_$e60045_ _deleted60036_))
                           (if _$e60045_ _$e60045_ _probe60032_)))
                        (if (eq? _key60010_ _k60039_)
                            (vector-ref _table60013_ (fx+ _probe60032_ '1))
                            (_loop60029_
                             (let ((_next-probe60048_
                                    (fx+ _start60025_
                                         _i60034_
                                         (fx* _i60034_ _i60034_))))
                               (fxmodulo _next-probe60048_ _size60019_))
                             (fx+ _i60034_ '1)
                             _deleted60036_))))))))))
    (define eq-table-set!
      (lambda (_tab60005_ _key60006_ _value60007_)
        (if (fx< (&raw-table-free _tab60005_)
                 (fxquotient (vector-length (&raw-table-table _tab60005_)) '4))
            (__raw-table-rehash! _tab60005_)
            '#!void)
        (__eq-table-set! _tab60005_ _key60006_ _value60007_)))
    (define __eq-table-set!
      (lambda (_tab59960_ _key59961_ _value59962_)
        (let ((_table59965_ (&raw-table-table _tab59960_))
              (_seed59966_ (&raw-table-seed _tab59960_)))
          (let* ((_h59968_ (fxxor (eq-hash _key59961_) _seed59966_))
                 (_size59971_ (vector-length _table59965_))
                 (_entries59974_ (fxquotient _size59971_ '2))
                 (_start59977_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59968_ _entries59974_)
                   '1)))
            (let _loop59981_ ((_probe59984_ _start59977_)
                              (_i59986_ '1)
                              (_deleted59988_ '#f))
              (let ((_k59991_ (vector-ref _table59965_ _probe59984_)))
                (if (eq? _k59991_ (macro-unused-obj))
                    (if _deleted59988_
                        (begin
                          (vector-set! _table59965_ _deleted59988_ _key59961_)
                          (vector-set!
                           _table59965_
                           (fx+ _deleted59988_ '1)
                           _value59962_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59960_
                              (fx+ (&raw-table-count _tab59960_) '1)))))
                        (begin
                          (vector-set! _table59965_ _probe59984_ _key59961_)
                          (vector-set!
                           _table59965_
                           (fx+ _probe59984_ '1)
                           _value59962_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59960_
                              (fx- (&raw-table-free _tab59960_) '1))
                             (&raw-table-count-set!
                              _tab59960_
                              (fx+ (&raw-table-count _tab59960_) '1))))))
                    (if (eq? _k59991_ (macro-deleted-obj))
                        (_loop59981_
                         (let ((_next-probe59996_
                                (fx+ _start59977_
                                     _i59986_
                                     (fx* _i59986_ _i59986_))))
                           (fxmodulo _next-probe59996_ _size59971_))
                         (fx+ _i59986_ '1)
                         (let ((_$e59999_ _deleted59988_))
                           (if _$e59999_ _$e59999_ _probe59984_)))
                        (if (eq? _key59961_ _k59991_)
                            (begin
                              (vector-set!
                               _table59965_
                               _probe59984_
                               _key59961_)
                              (vector-set!
                               _table59965_
                               (fx+ _probe59984_ '1)
                               _value59962_))
                            (_loop59981_
                             (let ((_next-probe60002_
                                    (fx+ _start59977_
                                         _i59986_
                                         (fx* _i59986_ _i59986_))))
                               (fxmodulo _next-probe60002_ _size59971_))
                             (fx+ _i59986_ '1)
                             _deleted59988_))))))))))
    (define eq-table-update!
      (lambda (_tab59955_ _key59956_ _eq-table-update!59957_ _default59958_)
        (if (fx< (&raw-table-free _tab59955_)
                 (fxquotient (vector-length (&raw-table-table _tab59955_)) '4))
            (__raw-table-rehash! _tab59955_)
            '#!void)
        (__eq-table-update!
         _tab59955_
         _key59956_
         _eq-table-update!59957_
         _default59958_)))
    (define __eq-table-update!
      (lambda (_tab59909_ _key59910_ _eq-table-update!59911_ _default59912_)
        (let ((_table59915_ (&raw-table-table _tab59909_))
              (_seed59916_ (&raw-table-seed _tab59909_)))
          (let* ((_h59918_ (fxxor (eq-hash _key59910_) _seed59916_))
                 (_size59921_ (vector-length _table59915_))
                 (_entries59924_ (fxquotient _size59921_ '2))
                 (_start59927_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59918_ _entries59924_)
                   '1)))
            (let _loop59931_ ((_probe59934_ _start59927_)
                              (_i59936_ '1)
                              (_deleted59938_ '#f))
              (let ((_k59941_ (vector-ref _table59915_ _probe59934_)))
                (if (eq? _k59941_ (macro-unused-obj))
                    (if _deleted59938_
                        (begin
                          (vector-set! _table59915_ _deleted59938_ _key59910_)
                          (vector-set!
                           _table59915_
                           (fx+ _deleted59938_ '1)
                           (_eq-table-update!59911_ _default59912_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59909_
                              (fx+ (&raw-table-count _tab59909_) '1)))))
                        (begin
                          (vector-set! _table59915_ _probe59934_ _key59910_)
                          (vector-set!
                           _table59915_
                           (fx+ _probe59934_ '1)
                           (_eq-table-update!59911_ _default59912_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59909_
                              (fx- (&raw-table-free _tab59909_) '1))
                             (&raw-table-count-set!
                              _tab59909_
                              (fx+ (&raw-table-count _tab59909_) '1))))))
                    (if (eq? _k59941_ (macro-deleted-obj))
                        (_loop59931_
                         (let ((_next-probe59946_
                                (fx+ _start59927_
                                     _i59936_
                                     (fx* _i59936_ _i59936_))))
                           (fxmodulo _next-probe59946_ _size59921_))
                         (fx+ _i59936_ '1)
                         (let ((_$e59949_ _deleted59938_))
                           (if _$e59949_ _$e59949_ _probe59934_)))
                        (if (eq? _key59910_ _k59941_)
                            (begin
                              (vector-set!
                               _table59915_
                               _probe59934_
                               _key59910_)
                              (vector-set!
                               _table59915_
                               (fx+ _probe59934_ '1)
                               (_eq-table-update!59911_
                                (vector-ref
                                 _table59915_
                                 (fx+ _probe59934_ '1)))))
                            (_loop59931_
                             (let ((_next-probe59952_
                                    (fx+ _start59927_
                                         _i59936_
                                         (fx* _i59936_ _i59936_))))
                               (fxmodulo _next-probe59952_ _size59921_))
                             (fx+ _i59936_ '1)
                             _deleted59938_))))))))))
    (define eq-table-delete!
      (lambda (_tab59868_ _key59870_)
        (let ((_table59873_ (&raw-table-table _tab59868_))
              (_seed59875_ (&raw-table-seed _tab59868_)))
          (let* ((_h59878_ (fxxor (eq-hash _key59870_) _seed59875_))
                 (_size59881_ (vector-length _table59873_))
                 (_entries59884_ (fxquotient _size59881_ '2))
                 (_start59887_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59878_ _entries59884_)
                   '1)))
            (let _loop59891_ ((_probe59894_ _start59887_) (_i59896_ '1))
              (let ((_k59899_ (vector-ref _table59873_ _probe59894_)))
                (if (eq? _k59899_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59899_ (macro-deleted-obj))
                        (_loop59891_
                         (let ((_next-probe59902_
                                (fx+ _start59887_
                                     _i59896_
                                     (fx* _i59896_ _i59896_))))
                           (fxmodulo _next-probe59902_ _size59881_))
                         (fx+ _i59896_ '1))
                        (if (eq? _key59870_ _k59899_)
                            (begin
                              (vector-set!
                               _table59873_
                               _probe59894_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59873_
                               (fx+ _probe59894_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59868_
                                  (fx- (&raw-table-count _tab59868_) '1)))))
                            (_loop59891_
                             (let ((_next-probe59906_
                                    (fx+ _start59887_
                                         _i59896_
                                         (fx* _i59896_ _i59896_))))
                               (fxmodulo _next-probe59906_ _size59881_))
                             (fx+ _i59896_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_size-hint59849_ _seed59851_)
        (make-raw-table__% _size-hint59849_ eqv-hash eqv? _seed59851_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_size-hint59857_ '#f) (_seed59859_ '0))
          (make-eqv-table__% _size-hint59857_ _seed59859_))))
    (define make-eqv-table__1
      (lambda (_size-hint59861_)
        (let ((_seed59863_ '0))
          (make-eqv-table__% _size-hint59861_ _seed59863_))))
    (define make-eqv-table
      (lambda _g60390_
        (let ((_g60389_ (##length _g60390_)))
          (cond ((##fx= _g60389_ 0)
                 (apply (lambda () (make-eqv-table__0)) _g60390_))
                ((##fx= _g60389_ 1)
                 (apply (lambda (_size-hint59861_)
                          (make-eqv-table__1 _size-hint59861_))
                        _g60390_))
                ((##fx= _g60389_ 2)
                 (apply (lambda (_size-hint59865_ _seed59866_)
                          (make-eqv-table__% _size-hint59865_ _seed59866_))
                        _g60390_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g60390_))))))
    (define eqv-table-ref
      (lambda (_tab59806_ _key59807_ _default59808_)
        (let ((_table59810_ (&raw-table-table _tab59806_))
              (_seed59811_ (&raw-table-seed _tab59806_)))
          (let* ((_h59813_ (fxxor (eqv-hash _key59807_) _seed59811_))
                 (_size59816_ (vector-length _table59810_))
                 (_entries59819_ (fxquotient _size59816_ '2))
                 (_start59822_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59813_ _entries59819_)
                   '1)))
            (let _loop59826_ ((_probe59829_ _start59822_)
                              (_i59831_ '1)
                              (_deleted59833_ '#f))
              (let ((_k59836_ (vector-ref _table59810_ _probe59829_)))
                (if (eq? _k59836_ (macro-unused-obj))
                    _default59808_
                    (if (eq? _k59836_ (macro-deleted-obj))
                        (_loop59826_
                         (let ((_next-probe59839_
                                (fx+ _start59822_
                                     _i59831_
                                     (fx* _i59831_ _i59831_))))
                           (fxmodulo _next-probe59839_ _size59816_))
                         (fx+ _i59831_ '1)
                         (let ((_$e59842_ _deleted59833_))
                           (if _$e59842_ _$e59842_ _probe59829_)))
                        (if (eqv? _key59807_ _k59836_)
                            (vector-ref _table59810_ (fx+ _probe59829_ '1))
                            (_loop59826_
                             (let ((_next-probe59845_
                                    (fx+ _start59822_
                                         _i59831_
                                         (fx* _i59831_ _i59831_))))
                               (fxmodulo _next-probe59845_ _size59816_))
                             (fx+ _i59831_ '1)
                             _deleted59833_))))))))))
    (define eqv-table-set!
      (lambda (_tab59802_ _key59803_ _value59804_)
        (if (fx< (&raw-table-free _tab59802_)
                 (fxquotient (vector-length (&raw-table-table _tab59802_)) '4))
            (__raw-table-rehash! _tab59802_)
            '#!void)
        (__eqv-table-set! _tab59802_ _key59803_ _value59804_)))
    (define __eqv-table-set!
      (lambda (_tab59757_ _key59758_ _value59759_)
        (let ((_table59762_ (&raw-table-table _tab59757_))
              (_seed59763_ (&raw-table-seed _tab59757_)))
          (let* ((_h59765_ (fxxor (eqv-hash _key59758_) _seed59763_))
                 (_size59768_ (vector-length _table59762_))
                 (_entries59771_ (fxquotient _size59768_ '2))
                 (_start59774_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59765_ _entries59771_)
                   '1)))
            (let _loop59778_ ((_probe59781_ _start59774_)
                              (_i59783_ '1)
                              (_deleted59785_ '#f))
              (let ((_k59788_ (vector-ref _table59762_ _probe59781_)))
                (if (eq? _k59788_ (macro-unused-obj))
                    (if _deleted59785_
                        (begin
                          (vector-set! _table59762_ _deleted59785_ _key59758_)
                          (vector-set!
                           _table59762_
                           (fx+ _deleted59785_ '1)
                           _value59759_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59757_
                              (fx+ (&raw-table-count _tab59757_) '1)))))
                        (begin
                          (vector-set! _table59762_ _probe59781_ _key59758_)
                          (vector-set!
                           _table59762_
                           (fx+ _probe59781_ '1)
                           _value59759_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59757_
                              (fx- (&raw-table-free _tab59757_) '1))
                             (&raw-table-count-set!
                              _tab59757_
                              (fx+ (&raw-table-count _tab59757_) '1))))))
                    (if (eq? _k59788_ (macro-deleted-obj))
                        (_loop59778_
                         (let ((_next-probe59793_
                                (fx+ _start59774_
                                     _i59783_
                                     (fx* _i59783_ _i59783_))))
                           (fxmodulo _next-probe59793_ _size59768_))
                         (fx+ _i59783_ '1)
                         (let ((_$e59796_ _deleted59785_))
                           (if _$e59796_ _$e59796_ _probe59781_)))
                        (if (eqv? _key59758_ _k59788_)
                            (begin
                              (vector-set!
                               _table59762_
                               _probe59781_
                               _key59758_)
                              (vector-set!
                               _table59762_
                               (fx+ _probe59781_ '1)
                               _value59759_))
                            (_loop59778_
                             (let ((_next-probe59799_
                                    (fx+ _start59774_
                                         _i59783_
                                         (fx* _i59783_ _i59783_))))
                               (fxmodulo _next-probe59799_ _size59768_))
                             (fx+ _i59783_ '1)
                             _deleted59785_))))))))))
    (define eqv-table-update!
      (lambda (_tab59752_ _key59753_ _eqv-table-update!59754_ _default59755_)
        (if (fx< (&raw-table-free _tab59752_)
                 (fxquotient (vector-length (&raw-table-table _tab59752_)) '4))
            (__raw-table-rehash! _tab59752_)
            '#!void)
        (__eqv-table-update!
         _tab59752_
         _key59753_
         _eqv-table-update!59754_
         _default59755_)))
    (define __eqv-table-update!
      (lambda (_tab59706_ _key59707_ _eqv-table-update!59708_ _default59709_)
        (let ((_table59712_ (&raw-table-table _tab59706_))
              (_seed59713_ (&raw-table-seed _tab59706_)))
          (let* ((_h59715_ (fxxor (eqv-hash _key59707_) _seed59713_))
                 (_size59718_ (vector-length _table59712_))
                 (_entries59721_ (fxquotient _size59718_ '2))
                 (_start59724_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59715_ _entries59721_)
                   '1)))
            (let _loop59728_ ((_probe59731_ _start59724_)
                              (_i59733_ '1)
                              (_deleted59735_ '#f))
              (let ((_k59738_ (vector-ref _table59712_ _probe59731_)))
                (if (eq? _k59738_ (macro-unused-obj))
                    (if _deleted59735_
                        (begin
                          (vector-set! _table59712_ _deleted59735_ _key59707_)
                          (vector-set!
                           _table59712_
                           (fx+ _deleted59735_ '1)
                           (_eqv-table-update!59708_ _default59709_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59706_
                              (fx+ (&raw-table-count _tab59706_) '1)))))
                        (begin
                          (vector-set! _table59712_ _probe59731_ _key59707_)
                          (vector-set!
                           _table59712_
                           (fx+ _probe59731_ '1)
                           (_eqv-table-update!59708_ _default59709_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59706_
                              (fx- (&raw-table-free _tab59706_) '1))
                             (&raw-table-count-set!
                              _tab59706_
                              (fx+ (&raw-table-count _tab59706_) '1))))))
                    (if (eq? _k59738_ (macro-deleted-obj))
                        (_loop59728_
                         (let ((_next-probe59743_
                                (fx+ _start59724_
                                     _i59733_
                                     (fx* _i59733_ _i59733_))))
                           (fxmodulo _next-probe59743_ _size59718_))
                         (fx+ _i59733_ '1)
                         (let ((_$e59746_ _deleted59735_))
                           (if _$e59746_ _$e59746_ _probe59731_)))
                        (if (eqv? _key59707_ _k59738_)
                            (begin
                              (vector-set!
                               _table59712_
                               _probe59731_
                               _key59707_)
                              (vector-set!
                               _table59712_
                               (fx+ _probe59731_ '1)
                               (_eqv-table-update!59708_
                                (vector-ref
                                 _table59712_
                                 (fx+ _probe59731_ '1)))))
                            (_loop59728_
                             (let ((_next-probe59749_
                                    (fx+ _start59724_
                                         _i59733_
                                         (fx* _i59733_ _i59733_))))
                               (fxmodulo _next-probe59749_ _size59718_))
                             (fx+ _i59733_ '1)
                             _deleted59735_))))))))))
    (define eqv-table-delete!
      (lambda (_tab59665_ _key59667_)
        (let ((_table59670_ (&raw-table-table _tab59665_))
              (_seed59672_ (&raw-table-seed _tab59665_)))
          (let* ((_h59675_ (fxxor (eqv-hash _key59667_) _seed59672_))
                 (_size59678_ (vector-length _table59670_))
                 (_entries59681_ (fxquotient _size59678_ '2))
                 (_start59684_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59675_ _entries59681_)
                   '1)))
            (let _loop59688_ ((_probe59691_ _start59684_) (_i59693_ '1))
              (let ((_k59696_ (vector-ref _table59670_ _probe59691_)))
                (if (eq? _k59696_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59696_ (macro-deleted-obj))
                        (_loop59688_
                         (let ((_next-probe59699_
                                (fx+ _start59684_
                                     _i59693_
                                     (fx* _i59693_ _i59693_))))
                           (fxmodulo _next-probe59699_ _size59678_))
                         (fx+ _i59693_ '1))
                        (if (eqv? _key59667_ _k59696_)
                            (begin
                              (vector-set!
                               _table59670_
                               _probe59691_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59670_
                               (fx+ _probe59691_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59665_
                                  (fx- (&raw-table-count _tab59665_) '1)))))
                            (_loop59688_
                             (let ((_next-probe59703_
                                    (fx+ _start59684_
                                         _i59693_
                                         (fx* _i59693_ _i59693_))))
                               (fxmodulo _next-probe59703_ _size59678_))
                             (fx+ _i59693_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_size-hint59646_ _seed59648_)
        (make-raw-table__% _size-hint59646_ symbolic-hash eq? _seed59648_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_size-hint59654_ '#f) (_seed59656_ '0))
          (make-symbolic-table__% _size-hint59654_ _seed59656_))))
    (define make-symbolic-table__1
      (lambda (_size-hint59658_)
        (let ((_seed59660_ '0))
          (make-symbolic-table__% _size-hint59658_ _seed59660_))))
    (define make-symbolic-table
      (lambda _g60392_
        (let ((_g60391_ (##length _g60392_)))
          (cond ((##fx= _g60391_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g60392_))
                ((##fx= _g60391_ 1)
                 (apply (lambda (_size-hint59658_)
                          (make-symbolic-table__1 _size-hint59658_))
                        _g60392_))
                ((##fx= _g60391_ 2)
                 (apply (lambda (_size-hint59662_ _seed59663_)
                          (make-symbolic-table__%
                           _size-hint59662_
                           _seed59663_))
                        _g60392_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g60392_))))))
    (define symbolic-table-ref
      (lambda (_tab59603_ _key59604_ _default59605_)
        (let ((_table59607_ (&raw-table-table _tab59603_))
              (_seed59608_ (&raw-table-seed _tab59603_)))
          (let* ((_h59610_ (fxxor (symbolic-hash _key59604_) _seed59608_))
                 (_size59613_ (vector-length _table59607_))
                 (_entries59616_ (fxquotient _size59613_ '2))
                 (_start59619_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59610_ _entries59616_)
                   '1)))
            (let _loop59623_ ((_probe59626_ _start59619_)
                              (_i59628_ '1)
                              (_deleted59630_ '#f))
              (let ((_k59633_ (vector-ref _table59607_ _probe59626_)))
                (if (eq? _k59633_ (macro-unused-obj))
                    _default59605_
                    (if (eq? _k59633_ (macro-deleted-obj))
                        (_loop59623_
                         (let ((_next-probe59636_
                                (fx+ _start59619_
                                     _i59628_
                                     (fx* _i59628_ _i59628_))))
                           (fxmodulo _next-probe59636_ _size59613_))
                         (fx+ _i59628_ '1)
                         (let ((_$e59639_ _deleted59630_))
                           (if _$e59639_ _$e59639_ _probe59626_)))
                        (if (eq? _key59604_ _k59633_)
                            (vector-ref _table59607_ (fx+ _probe59626_ '1))
                            (_loop59623_
                             (let ((_next-probe59642_
                                    (fx+ _start59619_
                                         _i59628_
                                         (fx* _i59628_ _i59628_))))
                               (fxmodulo _next-probe59642_ _size59613_))
                             (fx+ _i59628_ '1)
                             _deleted59630_))))))))))
    (define symbolic-table-set!
      (lambda (_tab59599_ _key59600_ _value59601_)
        (if (fx< (&raw-table-free _tab59599_)
                 (fxquotient (vector-length (&raw-table-table _tab59599_)) '4))
            (__raw-table-rehash! _tab59599_)
            '#!void)
        (__symbolic-table-set! _tab59599_ _key59600_ _value59601_)))
    (define __symbolic-table-set!
      (lambda (_tab59554_ _key59555_ _value59556_)
        (let ((_table59559_ (&raw-table-table _tab59554_))
              (_seed59560_ (&raw-table-seed _tab59554_)))
          (let* ((_h59562_ (fxxor (symbolic-hash _key59555_) _seed59560_))
                 (_size59565_ (vector-length _table59559_))
                 (_entries59568_ (fxquotient _size59565_ '2))
                 (_start59571_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59562_ _entries59568_)
                   '1)))
            (let _loop59575_ ((_probe59578_ _start59571_)
                              (_i59580_ '1)
                              (_deleted59582_ '#f))
              (let ((_k59585_ (vector-ref _table59559_ _probe59578_)))
                (if (eq? _k59585_ (macro-unused-obj))
                    (if _deleted59582_
                        (begin
                          (vector-set! _table59559_ _deleted59582_ _key59555_)
                          (vector-set!
                           _table59559_
                           (fx+ _deleted59582_ '1)
                           _value59556_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59554_
                              (fx+ (&raw-table-count _tab59554_) '1)))))
                        (begin
                          (vector-set! _table59559_ _probe59578_ _key59555_)
                          (vector-set!
                           _table59559_
                           (fx+ _probe59578_ '1)
                           _value59556_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59554_
                              (fx- (&raw-table-free _tab59554_) '1))
                             (&raw-table-count-set!
                              _tab59554_
                              (fx+ (&raw-table-count _tab59554_) '1))))))
                    (if (eq? _k59585_ (macro-deleted-obj))
                        (_loop59575_
                         (let ((_next-probe59590_
                                (fx+ _start59571_
                                     _i59580_
                                     (fx* _i59580_ _i59580_))))
                           (fxmodulo _next-probe59590_ _size59565_))
                         (fx+ _i59580_ '1)
                         (let ((_$e59593_ _deleted59582_))
                           (if _$e59593_ _$e59593_ _probe59578_)))
                        (if (eq? _key59555_ _k59585_)
                            (begin
                              (vector-set!
                               _table59559_
                               _probe59578_
                               _key59555_)
                              (vector-set!
                               _table59559_
                               (fx+ _probe59578_ '1)
                               _value59556_))
                            (_loop59575_
                             (let ((_next-probe59596_
                                    (fx+ _start59571_
                                         _i59580_
                                         (fx* _i59580_ _i59580_))))
                               (fxmodulo _next-probe59596_ _size59565_))
                             (fx+ _i59580_ '1)
                             _deleted59582_))))))))))
    (define symbolic-table-update!
      (lambda (_tab59549_
               _key59550_
               _symbolic-table-update!59551_
               _default59552_)
        (if (fx< (&raw-table-free _tab59549_)
                 (fxquotient (vector-length (&raw-table-table _tab59549_)) '4))
            (__raw-table-rehash! _tab59549_)
            '#!void)
        (__symbolic-table-update!
         _tab59549_
         _key59550_
         _symbolic-table-update!59551_
         _default59552_)))
    (define __symbolic-table-update!
      (lambda (_tab59503_
               _key59504_
               _symbolic-table-update!59505_
               _default59506_)
        (let ((_table59509_ (&raw-table-table _tab59503_))
              (_seed59510_ (&raw-table-seed _tab59503_)))
          (let* ((_h59512_ (fxxor (symbolic-hash _key59504_) _seed59510_))
                 (_size59515_ (vector-length _table59509_))
                 (_entries59518_ (fxquotient _size59515_ '2))
                 (_start59521_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59512_ _entries59518_)
                   '1)))
            (let _loop59525_ ((_probe59528_ _start59521_)
                              (_i59530_ '1)
                              (_deleted59532_ '#f))
              (let ((_k59535_ (vector-ref _table59509_ _probe59528_)))
                (if (eq? _k59535_ (macro-unused-obj))
                    (if _deleted59532_
                        (begin
                          (vector-set! _table59509_ _deleted59532_ _key59504_)
                          (vector-set!
                           _table59509_
                           (fx+ _deleted59532_ '1)
                           (_symbolic-table-update!59505_ _default59506_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59503_
                              (fx+ (&raw-table-count _tab59503_) '1)))))
                        (begin
                          (vector-set! _table59509_ _probe59528_ _key59504_)
                          (vector-set!
                           _table59509_
                           (fx+ _probe59528_ '1)
                           (_symbolic-table-update!59505_ _default59506_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59503_
                              (fx- (&raw-table-free _tab59503_) '1))
                             (&raw-table-count-set!
                              _tab59503_
                              (fx+ (&raw-table-count _tab59503_) '1))))))
                    (if (eq? _k59535_ (macro-deleted-obj))
                        (_loop59525_
                         (let ((_next-probe59540_
                                (fx+ _start59521_
                                     _i59530_
                                     (fx* _i59530_ _i59530_))))
                           (fxmodulo _next-probe59540_ _size59515_))
                         (fx+ _i59530_ '1)
                         (let ((_$e59543_ _deleted59532_))
                           (if _$e59543_ _$e59543_ _probe59528_)))
                        (if (eq? _key59504_ _k59535_)
                            (begin
                              (vector-set!
                               _table59509_
                               _probe59528_
                               _key59504_)
                              (vector-set!
                               _table59509_
                               (fx+ _probe59528_ '1)
                               (_symbolic-table-update!59505_
                                (vector-ref
                                 _table59509_
                                 (fx+ _probe59528_ '1)))))
                            (_loop59525_
                             (let ((_next-probe59546_
                                    (fx+ _start59521_
                                         _i59530_
                                         (fx* _i59530_ _i59530_))))
                               (fxmodulo _next-probe59546_ _size59515_))
                             (fx+ _i59530_ '1)
                             _deleted59532_))))))))))
    (define symbolic-table-delete!
      (lambda (_tab59462_ _key59464_)
        (let ((_table59467_ (&raw-table-table _tab59462_))
              (_seed59469_ (&raw-table-seed _tab59462_)))
          (let* ((_h59472_ (fxxor (symbolic-hash _key59464_) _seed59469_))
                 (_size59475_ (vector-length _table59467_))
                 (_entries59478_ (fxquotient _size59475_ '2))
                 (_start59481_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59472_ _entries59478_)
                   '1)))
            (let _loop59485_ ((_probe59488_ _start59481_) (_i59490_ '1))
              (let ((_k59493_ (vector-ref _table59467_ _probe59488_)))
                (if (eq? _k59493_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59493_ (macro-deleted-obj))
                        (_loop59485_
                         (let ((_next-probe59496_
                                (fx+ _start59481_
                                     _i59490_
                                     (fx* _i59490_ _i59490_))))
                           (fxmodulo _next-probe59496_ _size59475_))
                         (fx+ _i59490_ '1))
                        (if (eq? _key59464_ _k59493_)
                            (begin
                              (vector-set!
                               _table59467_
                               _probe59488_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59467_
                               (fx+ _probe59488_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59462_
                                  (fx- (&raw-table-count _tab59462_) '1)))))
                            (_loop59485_
                             (let ((_next-probe59500_
                                    (fx+ _start59481_
                                         _i59490_
                                         (fx* _i59490_ _i59490_))))
                               (fxmodulo _next-probe59500_ _size59475_))
                             (fx+ _i59490_ '1)))))))))))
    (define make-string-table__%
      (lambda (_size-hint59443_ _seed59445_)
        (make-raw-table__%
         _size-hint59443_
         string-hash
         ##string=?
         _seed59445_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_size-hint59451_ '#f) (_seed59453_ '0))
          (make-string-table__% _size-hint59451_ _seed59453_))))
    (define make-string-table__1
      (lambda (_size-hint59455_)
        (let ((_seed59457_ '0))
          (make-string-table__% _size-hint59455_ _seed59457_))))
    (define make-string-table
      (lambda _g60394_
        (let ((_g60393_ (##length _g60394_)))
          (cond ((##fx= _g60393_ 0)
                 (apply (lambda () (make-string-table__0)) _g60394_))
                ((##fx= _g60393_ 1)
                 (apply (lambda (_size-hint59455_)
                          (make-string-table__1 _size-hint59455_))
                        _g60394_))
                ((##fx= _g60393_ 2)
                 (apply (lambda (_size-hint59459_ _seed59460_)
                          (make-string-table__% _size-hint59459_ _seed59460_))
                        _g60394_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g60394_))))))
    (define string-table-ref
      (lambda (_tab59400_ _key59401_ _default59402_)
        (let ((_table59404_ (&raw-table-table _tab59400_))
              (_seed59405_ (&raw-table-seed _tab59400_)))
          (let* ((_h59407_ (fxxor (##string=?-hash _key59401_) _seed59405_))
                 (_size59410_ (vector-length _table59404_))
                 (_entries59413_ (fxquotient _size59410_ '2))
                 (_start59416_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59407_ _entries59413_)
                   '1)))
            (let _loop59420_ ((_probe59423_ _start59416_)
                              (_i59425_ '1)
                              (_deleted59427_ '#f))
              (let ((_k59430_ (vector-ref _table59404_ _probe59423_)))
                (if (eq? _k59430_ (macro-unused-obj))
                    _default59402_
                    (if (eq? _k59430_ (macro-deleted-obj))
                        (_loop59420_
                         (let ((_next-probe59433_
                                (fx+ _start59416_
                                     _i59425_
                                     (fx* _i59425_ _i59425_))))
                           (fxmodulo _next-probe59433_ _size59410_))
                         (fx+ _i59425_ '1)
                         (let ((_$e59436_ _deleted59427_))
                           (if _$e59436_ _$e59436_ _probe59423_)))
                        (if (##string=? _key59401_ _k59430_)
                            (vector-ref _table59404_ (fx+ _probe59423_ '1))
                            (_loop59420_
                             (let ((_next-probe59439_
                                    (fx+ _start59416_
                                         _i59425_
                                         (fx* _i59425_ _i59425_))))
                               (fxmodulo _next-probe59439_ _size59410_))
                             (fx+ _i59425_ '1)
                             _deleted59427_))))))))))
    (define string-table-set!
      (lambda (_tab59396_ _key59397_ _value59398_)
        (if (fx< (&raw-table-free _tab59396_)
                 (fxquotient (vector-length (&raw-table-table _tab59396_)) '4))
            (__raw-table-rehash! _tab59396_)
            '#!void)
        (__string-table-set! _tab59396_ _key59397_ _value59398_)))
    (define __string-table-set!
      (lambda (_tab59351_ _key59352_ _value59353_)
        (let ((_table59356_ (&raw-table-table _tab59351_))
              (_seed59357_ (&raw-table-seed _tab59351_)))
          (let* ((_h59359_ (fxxor (##string=?-hash _key59352_) _seed59357_))
                 (_size59362_ (vector-length _table59356_))
                 (_entries59365_ (fxquotient _size59362_ '2))
                 (_start59368_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59359_ _entries59365_)
                   '1)))
            (let _loop59372_ ((_probe59375_ _start59368_)
                              (_i59377_ '1)
                              (_deleted59379_ '#f))
              (let ((_k59382_ (vector-ref _table59356_ _probe59375_)))
                (if (eq? _k59382_ (macro-unused-obj))
                    (if _deleted59379_
                        (begin
                          (vector-set! _table59356_ _deleted59379_ _key59352_)
                          (vector-set!
                           _table59356_
                           (fx+ _deleted59379_ '1)
                           _value59353_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59351_
                              (fx+ (&raw-table-count _tab59351_) '1)))))
                        (begin
                          (vector-set! _table59356_ _probe59375_ _key59352_)
                          (vector-set!
                           _table59356_
                           (fx+ _probe59375_ '1)
                           _value59353_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59351_
                              (fx- (&raw-table-free _tab59351_) '1))
                             (&raw-table-count-set!
                              _tab59351_
                              (fx+ (&raw-table-count _tab59351_) '1))))))
                    (if (eq? _k59382_ (macro-deleted-obj))
                        (_loop59372_
                         (let ((_next-probe59387_
                                (fx+ _start59368_
                                     _i59377_
                                     (fx* _i59377_ _i59377_))))
                           (fxmodulo _next-probe59387_ _size59362_))
                         (fx+ _i59377_ '1)
                         (let ((_$e59390_ _deleted59379_))
                           (if _$e59390_ _$e59390_ _probe59375_)))
                        (if (##string=? _key59352_ _k59382_)
                            (begin
                              (vector-set!
                               _table59356_
                               _probe59375_
                               _key59352_)
                              (vector-set!
                               _table59356_
                               (fx+ _probe59375_ '1)
                               _value59353_))
                            (_loop59372_
                             (let ((_next-probe59393_
                                    (fx+ _start59368_
                                         _i59377_
                                         (fx* _i59377_ _i59377_))))
                               (fxmodulo _next-probe59393_ _size59362_))
                             (fx+ _i59377_ '1)
                             _deleted59379_))))))))))
    (define string-table-update!
      (lambda (_tab59346_
               _key59347_
               _string-table-update!59348_
               _default59349_)
        (if (fx< (&raw-table-free _tab59346_)
                 (fxquotient (vector-length (&raw-table-table _tab59346_)) '4))
            (__raw-table-rehash! _tab59346_)
            '#!void)
        (__string-table-update!
         _tab59346_
         _key59347_
         _string-table-update!59348_
         _default59349_)))
    (define __string-table-update!
      (lambda (_tab59300_
               _key59301_
               _string-table-update!59302_
               _default59303_)
        (let ((_table59306_ (&raw-table-table _tab59300_))
              (_seed59307_ (&raw-table-seed _tab59300_)))
          (let* ((_h59309_ (fxxor (##string=?-hash _key59301_) _seed59307_))
                 (_size59312_ (vector-length _table59306_))
                 (_entries59315_ (fxquotient _size59312_ '2))
                 (_start59318_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59309_ _entries59315_)
                   '1)))
            (let _loop59322_ ((_probe59325_ _start59318_)
                              (_i59327_ '1)
                              (_deleted59329_ '#f))
              (let ((_k59332_ (vector-ref _table59306_ _probe59325_)))
                (if (eq? _k59332_ (macro-unused-obj))
                    (if _deleted59329_
                        (begin
                          (vector-set! _table59306_ _deleted59329_ _key59301_)
                          (vector-set!
                           _table59306_
                           (fx+ _deleted59329_ '1)
                           (_string-table-update!59302_ _default59303_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59300_
                              (fx+ (&raw-table-count _tab59300_) '1)))))
                        (begin
                          (vector-set! _table59306_ _probe59325_ _key59301_)
                          (vector-set!
                           _table59306_
                           (fx+ _probe59325_ '1)
                           (_string-table-update!59302_ _default59303_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59300_
                              (fx- (&raw-table-free _tab59300_) '1))
                             (&raw-table-count-set!
                              _tab59300_
                              (fx+ (&raw-table-count _tab59300_) '1))))))
                    (if (eq? _k59332_ (macro-deleted-obj))
                        (_loop59322_
                         (let ((_next-probe59337_
                                (fx+ _start59318_
                                     _i59327_
                                     (fx* _i59327_ _i59327_))))
                           (fxmodulo _next-probe59337_ _size59312_))
                         (fx+ _i59327_ '1)
                         (let ((_$e59340_ _deleted59329_))
                           (if _$e59340_ _$e59340_ _probe59325_)))
                        (if (##string=? _key59301_ _k59332_)
                            (begin
                              (vector-set!
                               _table59306_
                               _probe59325_
                               _key59301_)
                              (vector-set!
                               _table59306_
                               (fx+ _probe59325_ '1)
                               (_string-table-update!59302_
                                (vector-ref
                                 _table59306_
                                 (fx+ _probe59325_ '1)))))
                            (_loop59322_
                             (let ((_next-probe59343_
                                    (fx+ _start59318_
                                         _i59327_
                                         (fx* _i59327_ _i59327_))))
                               (fxmodulo _next-probe59343_ _size59312_))
                             (fx+ _i59327_ '1)
                             _deleted59329_))))))))))
    (define string-table-delete!
      (lambda (_tab59259_ _key59261_)
        (let ((_table59264_ (&raw-table-table _tab59259_))
              (_seed59266_ (&raw-table-seed _tab59259_)))
          (let* ((_h59269_ (fxxor (##string=?-hash _key59261_) _seed59266_))
                 (_size59272_ (vector-length _table59264_))
                 (_entries59275_ (fxquotient _size59272_ '2))
                 (_start59278_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59269_ _entries59275_)
                   '1)))
            (let _loop59282_ ((_probe59285_ _start59278_) (_i59287_ '1))
              (let ((_k59290_ (vector-ref _table59264_ _probe59285_)))
                (if (eq? _k59290_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59290_ (macro-deleted-obj))
                        (_loop59282_
                         (let ((_next-probe59293_
                                (fx+ _start59278_
                                     _i59287_
                                     (fx* _i59287_ _i59287_))))
                           (fxmodulo _next-probe59293_ _size59272_))
                         (fx+ _i59287_ '1))
                        (if (##string=? _key59261_ _k59290_)
                            (begin
                              (vector-set!
                               _table59264_
                               _probe59285_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59264_
                               (fx+ _probe59285_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59259_
                                  (fx- (&raw-table-count _tab59259_) '1)))))
                            (_loop59282_
                             (let ((_next-probe59297_
                                    (fx+ _start59278_
                                         _i59287_
                                         (fx* _i59287_ _i59287_))))
                               (fxmodulo _next-probe59297_ _size59272_))
                             (fx+ _i59287_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_size-hint59240_ _seed59242_)
        (make-raw-table__% _size-hint59240_ immediate-hash eq? _seed59242_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_size-hint59248_ '#f) (_seed59250_ '0))
          (make-immediate-table__% _size-hint59248_ _seed59250_))))
    (define make-immediate-table__1
      (lambda (_size-hint59252_)
        (let ((_seed59254_ '0))
          (make-immediate-table__% _size-hint59252_ _seed59254_))))
    (define make-immediate-table
      (lambda _g60396_
        (let ((_g60395_ (##length _g60396_)))
          (cond ((##fx= _g60395_ 0)
                 (apply (lambda () (make-immediate-table__0)) _g60396_))
                ((##fx= _g60395_ 1)
                 (apply (lambda (_size-hint59252_)
                          (make-immediate-table__1 _size-hint59252_))
                        _g60396_))
                ((##fx= _g60395_ 2)
                 (apply (lambda (_size-hint59256_ _seed59257_)
                          (make-immediate-table__%
                           _size-hint59256_
                           _seed59257_))
                        _g60396_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g60396_))))))
    (define immediate-table-ref
      (lambda (_tab59197_ _key59198_ _default59199_)
        (let ((_table59201_ (&raw-table-table _tab59197_))
              (_seed59202_ (&raw-table-seed _tab59197_)))
          (let* ((_h59204_ (fxxor (immediate-hash _key59198_) _seed59202_))
                 (_size59207_ (vector-length _table59201_))
                 (_entries59210_ (fxquotient _size59207_ '2))
                 (_start59213_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59204_ _entries59210_)
                   '1)))
            (let _loop59217_ ((_probe59220_ _start59213_)
                              (_i59222_ '1)
                              (_deleted59224_ '#f))
              (let ((_k59227_ (vector-ref _table59201_ _probe59220_)))
                (if (eq? _k59227_ (macro-unused-obj))
                    _default59199_
                    (if (eq? _k59227_ (macro-deleted-obj))
                        (_loop59217_
                         (let ((_next-probe59230_
                                (fx+ _start59213_
                                     _i59222_
                                     (fx* _i59222_ _i59222_))))
                           (fxmodulo _next-probe59230_ _size59207_))
                         (fx+ _i59222_ '1)
                         (let ((_$e59233_ _deleted59224_))
                           (if _$e59233_ _$e59233_ _probe59220_)))
                        (if (eq? _key59198_ _k59227_)
                            (vector-ref _table59201_ (fx+ _probe59220_ '1))
                            (_loop59217_
                             (let ((_next-probe59236_
                                    (fx+ _start59213_
                                         _i59222_
                                         (fx* _i59222_ _i59222_))))
                               (fxmodulo _next-probe59236_ _size59207_))
                             (fx+ _i59222_ '1)
                             _deleted59224_))))))))))
    (define immediate-table-set!
      (lambda (_tab59193_ _key59194_ _value59195_)
        (if (fx< (&raw-table-free _tab59193_)
                 (fxquotient (vector-length (&raw-table-table _tab59193_)) '4))
            (__raw-table-rehash! _tab59193_)
            '#!void)
        (__immediate-table-set! _tab59193_ _key59194_ _value59195_)))
    (define __immediate-table-set!
      (lambda (_tab59148_ _key59149_ _value59150_)
        (let ((_table59153_ (&raw-table-table _tab59148_))
              (_seed59154_ (&raw-table-seed _tab59148_)))
          (let* ((_h59156_ (fxxor (immediate-hash _key59149_) _seed59154_))
                 (_size59159_ (vector-length _table59153_))
                 (_entries59162_ (fxquotient _size59159_ '2))
                 (_start59165_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59156_ _entries59162_)
                   '1)))
            (let _loop59169_ ((_probe59172_ _start59165_)
                              (_i59174_ '1)
                              (_deleted59176_ '#f))
              (let ((_k59179_ (vector-ref _table59153_ _probe59172_)))
                (if (eq? _k59179_ (macro-unused-obj))
                    (if _deleted59176_
                        (begin
                          (vector-set! _table59153_ _deleted59176_ _key59149_)
                          (vector-set!
                           _table59153_
                           (fx+ _deleted59176_ '1)
                           _value59150_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59148_
                              (fx+ (&raw-table-count _tab59148_) '1)))))
                        (begin
                          (vector-set! _table59153_ _probe59172_ _key59149_)
                          (vector-set!
                           _table59153_
                           (fx+ _probe59172_ '1)
                           _value59150_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59148_
                              (fx- (&raw-table-free _tab59148_) '1))
                             (&raw-table-count-set!
                              _tab59148_
                              (fx+ (&raw-table-count _tab59148_) '1))))))
                    (if (eq? _k59179_ (macro-deleted-obj))
                        (_loop59169_
                         (let ((_next-probe59184_
                                (fx+ _start59165_
                                     _i59174_
                                     (fx* _i59174_ _i59174_))))
                           (fxmodulo _next-probe59184_ _size59159_))
                         (fx+ _i59174_ '1)
                         (let ((_$e59187_ _deleted59176_))
                           (if _$e59187_ _$e59187_ _probe59172_)))
                        (if (eq? _key59149_ _k59179_)
                            (begin
                              (vector-set!
                               _table59153_
                               _probe59172_
                               _key59149_)
                              (vector-set!
                               _table59153_
                               (fx+ _probe59172_ '1)
                               _value59150_))
                            (_loop59169_
                             (let ((_next-probe59190_
                                    (fx+ _start59165_
                                         _i59174_
                                         (fx* _i59174_ _i59174_))))
                               (fxmodulo _next-probe59190_ _size59159_))
                             (fx+ _i59174_ '1)
                             _deleted59176_))))))))))
    (define immediate-table-update!
      (lambda (_tab59143_
               _key59144_
               _immediate-table-update!59145_
               _default59146_)
        (if (fx< (&raw-table-free _tab59143_)
                 (fxquotient (vector-length (&raw-table-table _tab59143_)) '4))
            (__raw-table-rehash! _tab59143_)
            '#!void)
        (__immediate-table-update!
         _tab59143_
         _key59144_
         _immediate-table-update!59145_
         _default59146_)))
    (define __immediate-table-update!
      (lambda (_tab59097_
               _key59098_
               _immediate-table-update!59099_
               _default59100_)
        (let ((_table59103_ (&raw-table-table _tab59097_))
              (_seed59104_ (&raw-table-seed _tab59097_)))
          (let* ((_h59106_ (fxxor (immediate-hash _key59098_) _seed59104_))
                 (_size59109_ (vector-length _table59103_))
                 (_entries59112_ (fxquotient _size59109_ '2))
                 (_start59115_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59106_ _entries59112_)
                   '1)))
            (let _loop59119_ ((_probe59122_ _start59115_)
                              (_i59124_ '1)
                              (_deleted59126_ '#f))
              (let ((_k59129_ (vector-ref _table59103_ _probe59122_)))
                (if (eq? _k59129_ (macro-unused-obj))
                    (if _deleted59126_
                        (begin
                          (vector-set! _table59103_ _deleted59126_ _key59098_)
                          (vector-set!
                           _table59103_
                           (fx+ _deleted59126_ '1)
                           (_immediate-table-update!59099_ _default59100_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59097_
                              (fx+ (&raw-table-count _tab59097_) '1)))))
                        (begin
                          (vector-set! _table59103_ _probe59122_ _key59098_)
                          (vector-set!
                           _table59103_
                           (fx+ _probe59122_ '1)
                           (_immediate-table-update!59099_ _default59100_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59097_
                              (fx- (&raw-table-free _tab59097_) '1))
                             (&raw-table-count-set!
                              _tab59097_
                              (fx+ (&raw-table-count _tab59097_) '1))))))
                    (if (eq? _k59129_ (macro-deleted-obj))
                        (_loop59119_
                         (let ((_next-probe59134_
                                (fx+ _start59115_
                                     _i59124_
                                     (fx* _i59124_ _i59124_))))
                           (fxmodulo _next-probe59134_ _size59109_))
                         (fx+ _i59124_ '1)
                         (let ((_$e59137_ _deleted59126_))
                           (if _$e59137_ _$e59137_ _probe59122_)))
                        (if (eq? _key59098_ _k59129_)
                            (begin
                              (vector-set!
                               _table59103_
                               _probe59122_
                               _key59098_)
                              (vector-set!
                               _table59103_
                               (fx+ _probe59122_ '1)
                               (_immediate-table-update!59099_
                                (vector-ref
                                 _table59103_
                                 (fx+ _probe59122_ '1)))))
                            (_loop59119_
                             (let ((_next-probe59140_
                                    (fx+ _start59115_
                                         _i59124_
                                         (fx* _i59124_ _i59124_))))
                               (fxmodulo _next-probe59140_ _size59109_))
                             (fx+ _i59124_ '1)
                             _deleted59126_))))))))))
    (define immediate-table-delete!
      (lambda (_tab59056_ _key59058_)
        (let ((_table59061_ (&raw-table-table _tab59056_))
              (_seed59063_ (&raw-table-seed _tab59056_)))
          (let* ((_h59066_ (fxxor (immediate-hash _key59058_) _seed59063_))
                 (_size59069_ (vector-length _table59061_))
                 (_entries59072_ (fxquotient _size59069_ '2))
                 (_start59075_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59066_ _entries59072_)
                   '1)))
            (let _loop59079_ ((_probe59082_ _start59075_) (_i59084_ '1))
              (let ((_k59087_ (vector-ref _table59061_ _probe59082_)))
                (if (eq? _k59087_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59087_ (macro-deleted-obj))
                        (_loop59079_
                         (let ((_next-probe59090_
                                (fx+ _start59075_
                                     _i59084_
                                     (fx* _i59084_ _i59084_))))
                           (fxmodulo _next-probe59090_ _size59069_))
                         (fx+ _i59084_ '1))
                        (if (eq? _key59058_ _k59087_)
                            (begin
                              (vector-set!
                               _table59061_
                               _probe59082_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59061_
                               (fx+ _probe59082_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59056_
                                  (fx- (&raw-table-count _tab59056_) '1)))))
                            (_loop59079_
                             (let ((_next-probe59094_
                                    (fx+ _start59075_
                                         _i59084_
                                         (fx* _i59084_ _i59084_))))
                               (fxmodulo _next-probe59094_ _size59069_))
                             (fx+ _i59084_ '1)))))))))))
    (define __gc-table::t.id 'gerbil#__gc-table::t)
    (define __gc-table::t
      (##structure
       ##type-type
       __gc-table::t.id
       'gc-table
       '26
       '#f
       '#(gcht 5 #f immediate 5 #f)))
    (define __gc-table-loads '#f64(.45 .6363961030678927 .9))
    (define &gc-table-gcht
      (lambda (_tab59054_)
        (##unchecked-structure-ref
         _tab59054_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_tab59052_)
        (##unchecked-structure-ref
         _tab59052_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_tab59049_ _val59050_)
        (##unchecked-structure-set!
         _tab59049_
         _val59050_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_tab59046_ _val59047_)
        (##unchecked-structure-set!
         _tab59046_
         _val59047_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_size-hint59022_ _klass59023_ _flags59024_)
        (let ((_gcht59026_
               (__gc-table-new
                (if (fixnum? _size-hint59022_) _size-hint59022_ '16)
                _flags59024_)))
          (##structure _klass59023_ _gcht59026_ '#f))))
    (define make-gc-table__0
      (lambda (_size-hint59031_)
        (let* ((_klass59033_ __gc-table::t) (_flags59035_ '0))
          (make-gc-table__% _size-hint59031_ _klass59033_ _flags59035_))))
    (define make-gc-table__1
      (lambda (_size-hint59037_ _klass59038_)
        (let ((_flags59040_ '0))
          (make-gc-table__% _size-hint59037_ _klass59038_ _flags59040_))))
    (define make-gc-table
      (lambda _g60398_
        (let ((_g60397_ (##length _g60398_)))
          (cond ((##fx= _g60397_ 1)
                 (apply (lambda (_size-hint59031_)
                          (make-gc-table__0 _size-hint59031_))
                        _g60398_))
                ((##fx= _g60397_ 2)
                 (apply (lambda (_size-hint59037_ _klass59038_)
                          (make-gc-table__1 _size-hint59037_ _klass59038_))
                        _g60398_))
                ((##fx= _g60397_ 3)
                 (apply (lambda (_size-hint59042_ _klass59043_ _flags59044_)
                          (make-gc-table__%
                           _size-hint59042_
                           _klass59043_
                           _flags59044_))
                        _g60398_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g60398_))))))
    (define __gc-table-immediate
      (lambda (_tab59014_)
        (let ((_$e59016_ (&gc-table-immediate _tab59014_)))
          (if _$e59016_
              _$e59016_
              (let ((_immediate59019_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _tab59014_ _immediate59019_)
                _immediate59019_)))))
    (define __gc-table-new
      (lambda (_size59004_ _flags59005_)
        (let* ((_flags59007_
                (fxand _flags59005_
                       (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_flags59009_
                (fxior _flags59007_ (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_gcht59011_
                (##gc-hash-table-allocate
                 _size59004_
                 _flags59009_
                 __gc-table-loads)))
          _gcht59011_)))
    (define __gc-table-e
      (lambda (_tab58999_)
        (declare (not interrupts-enabled))
        (let ((_gcht59002_ (&gc-table-gcht _tab58999_)))
          (if (fx= '0
                   (fxand (macro-gc-hash-table-flags _gcht59002_)
                          (macro-gc-hash-table-flag-need-rehash)))
              _gcht59002_
              (begin
                (__gc-table-rehash! _tab58999_)
                (&gc-table-gcht _tab58999_))))))
    (define __gc-table-rehash!
      (lambda (_tab58990_)
        (let* ((_old-table58992_ (&gc-table-gcht _tab58990_))
               (_new-table58994_
                (##gc-hash-table-resize! _old-table58992_ __gc-table-loads))
               (_gcht58996_
                (##gc-hash-table-rehash! _old-table58992_ _new-table58994_)))
          (&gc-table-gcht-set! _tab58990_ _gcht58996_))))
    (define gc-table-ref
      (lambda (_tab58976_ _key58977_ _default58978_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key58977_)
            (let* ((_gcht58981_ (__gc-table-e _tab58976_))
                   (_value58983_ (##gc-hash-table-ref _gcht58981_ _key58977_)))
              (if (eq? _value58983_ (macro-unused-obj))
                  _default58978_
                  _value58983_))
            (let ((_$e58985_ (&gc-table-immediate _tab58976_)))
              (if _$e58985_
                  ((lambda (_immediate58988_)
                     (immediate-table-ref
                      _immediate58988_
                      _key58977_
                      _default58978_))
                   _$e58985_)
                  _default58978_)))))
    (define gc-table-set!
      (lambda (_tab58969_ _key58970_ _value58971_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key58970_)
            (let ((_gcht58974_ (__gc-table-e _tab58969_)))
              (if (##gc-hash-table-set! _gcht58974_ _key58970_ _value58971_)
                  (begin
                    (__gc-table-rehash! _tab58969_)
                    (gc-table-set! _tab58969_ _key58970_ _value58971_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _tab58969_)
             _key58970_
             _value58971_))))
    (define gc-table-update!
      (lambda (_tab58962_ _key58963_ _update58964_ _default58965_)
        (if (##mem-allocated? _key58963_)
            (let ((_value58967_
                   (gc-table-ref _tab58962_ _key58963_ _default58965_)))
              (gc-table-set!
               _tab58962_
               _key58963_
               (_update58964_ _value58967_)))
            (immediate-table-update!
             (__gc-table-immediate _tab58962_)
             _key58963_
             _update58964_
             _default58965_))))
    (define gc-table-delete!
      (lambda (_tab58951_ _key58952_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key58952_)
            (let ((_gcht58955_ (__gc-table-e _tab58951_)))
              (if (##gc-hash-table-set!
                   _gcht58955_
                   _key58952_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _tab58951_)
                    (gc-table-delete! _tab58951_ _key58952_))
                  '#!void))
            (let ((_$e58957_ (&gc-table-immediate _tab58951_)))
              (if _$e58957_
                  ((lambda (_immediate58960_)
                     (immediate-table-delete! _immediate58960_ _key58952_))
                   _$e58957_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_tab58932_ _proc58933_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_gcht58936_ (__gc-table-e _tab58932_)))
            (let _loop58938_ ((_i58940_ (macro-gc-hash-table-key0)))
              (if (fx< _i58940_ (##vector-length _gcht58936_))
                  (let ((_key58942_ (##vector-ref _gcht58936_ _i58940_)))
                    (if (and (not (eq? _key58942_ (macro-unused-obj)))
                             (not (eq? _key58942_ (macro-deleted-obj))))
                        (_proc58933_
                         _key58942_
                         (##vector-ref _gcht58936_ (fx+ _i58940_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_loop58938_ (fx+ _i58940_ '2))))
                  '#!void)))
          (let ((_$e58946_ (&gc-table-immediate _tab58932_)))
            (if _$e58946_
                ((lambda (_immediate58949_)
                   (raw-table-for-each _immediate58949_ _proc58933_))
                 _$e58946_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_tab58920_)
        (let* ((_gcht58922_ (__gc-table-e _tab58920_))
               (_new-table58924_
                (__gc-table-new
                 (macro-gc-hash-table-count _gcht58922_)
                 (macro-gc-hash-table-flags _gcht58922_)))
               (_result58926_
                (##structure
                 (##structure-type _tab58920_)
                 _new-table58924_
                 '#f)))
          (gc-table-for-each
           _tab58920_
           (lambda (_k58929_ _v58930_)
             (gc-table-set! _result58926_ _k58929_ _v58930_)))
          _result58926_)))
    (define gc-table-clear!
      (lambda (_tab58913_)
        (let* ((_gcht58915_ (__gc-table-e _tab58913_))
               (_new-table58917_
                (__gc-table-new '16 (macro-gc-hash-table-flags _gcht58915_))))
          (&gc-table-gcht-set! _tab58913_ _new-table58917_)
          (&gc-table-immediate-set! _tab58913_ '#f))))
    (define gc-table-length
      (lambda (_tab58906_)
        (let ((_gcht58908_ (__gc-table-e _tab58906_)))
          (fx+ (macro-gc-hash-table-count _gcht58908_)
               (let ((_$e58910_ (&gc-table-immediate _tab58906_)))
                 (if _$e58910_ (&raw-table-count _$e58910_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_obj58891_)
        (declare (not interrupts-enabled))
        (let ((_val58894_ (gc-table-ref __object-eq-hash _obj58891_ '#f)))
          (if _val58894_
              _val58894_
              (let* ((_mix58896_ __object-eq-hash-next)
                     (_ptr58898_ (##type-cast _obj58891_ '0))
                     (_h58900_
                      (fxand (fxxor _mix58896_ _ptr58898_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_$e58903_ (##fx+? __object-eq-hash-next '1)))
                        (if _$e58903_ _$e58903_ '0)))
                (gc-table-set! __object-eq-hash _obj58891_ _h58900_)
                _h58900_)))))))
