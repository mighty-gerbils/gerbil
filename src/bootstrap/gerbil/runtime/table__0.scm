(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1709457368)
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
      (lambda (_tab60286_)
        (##unchecked-structure-ref _tab60286_ '1 __table::t 'raw-table-table)))
    (define &raw-table-count
      (lambda (_tab60284_)
        (##unchecked-structure-ref _tab60284_ '2 __table::t 'raw-table-count)))
    (define &raw-table-free
      (lambda (_tab60282_)
        (##unchecked-structure-ref _tab60282_ '3 __table::t 'raw-table-free)))
    (define &raw-table-hash
      (lambda (_tab60280_)
        (##unchecked-structure-ref _tab60280_ '4 __table::t 'raw-table-hash)))
    (define &raw-table-test
      (lambda (_tab60278_)
        (##unchecked-structure-ref _tab60278_ '5 __table::t 'raw-table-test)))
    (define &raw-table-seed
      (lambda (_tab60276_)
        (##unchecked-structure-ref _tab60276_ '6 __table::t 'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_tab60273_ _val60274_)
        (##unchecked-structure-set!
         _tab60273_
         _val60274_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_tab60270_ _val60271_)
        (##unchecked-structure-set!
         _tab60270_
         _val60271_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_tab60267_ _val60268_)
        (##unchecked-structure-set!
         _tab60267_
         _val60268_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_tab60264_ _val60265_)
        (##unchecked-structure-set!
         _tab60264_
         _val60265_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_tab60261_ _val60262_)
        (##unchecked-structure-set!
         _tab60261_
         _val60262_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_tab60258_ _val60259_)
        (##unchecked-structure-set!
         _tab60258_
         _val60259_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_size-hint60256_)
        (if (and (fixnum? _size-hint60256_) (fx> _size-hint60256_ '0))
            (fx* (fxmax '2 (expt '2 (integer-length _size-hint60256_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_size-hint60232_ _hash60233_ _test60234_ _seed60235_)
        (let* ((_size60237_ (raw-table-size-hint->size _size-hint60232_))
               (_table60239_ (make-vector _size60237_ (macro-unused-obj))))
          (##structure
           __table::t
           _table60239_
           '0
           (fxquotient _size60237_ '2)
           _hash60233_
           _test60234_
           _seed60235_))))
    (define make-raw-table__0
      (lambda (_size-hint60245_ _hash60246_ _test60247_)
        (let ((_seed60249_ '0))
          (make-raw-table__%
           _size-hint60245_
           _hash60246_
           _test60247_
           _seed60249_))))
    (define make-raw-table
      (lambda _g60288_
        (let ((_g60287_ (##length _g60288_)))
          (cond ((##fx= _g60287_ 3)
                 (apply (lambda (_size-hint60245_ _hash60246_ _test60247_)
                          (make-raw-table__0
                           _size-hint60245_
                           _hash60246_
                           _test60247_))
                        _g60288_))
                ((##fx= _g60287_ 4)
                 (apply (lambda (_size-hint60251_
                                 _hash60252_
                                 _test60253_
                                 _seed60254_)
                          (make-raw-table__%
                           _size-hint60251_
                           _hash60252_
                           _test60253_
                           _seed60254_))
                        _g60288_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g60288_))))))
    (define raw-table-ref
      (lambda (_tab60187_ _key60188_ _default60189_)
        (let ((_table60191_ (&raw-table-table _tab60187_))
              (_seed60192_ (&raw-table-seed _tab60187_))
              (_hash60193_ (&raw-table-hash _tab60187_))
              (_test60194_ (&raw-table-test _tab60187_)))
          (let* ((_h60196_ (fxxor (_hash60193_ _key60188_) _seed60192_))
                 (_size60199_ (vector-length _table60191_))
                 (_entries60202_ (fxquotient _size60199_ '2))
                 (_start60205_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60196_ _entries60202_)
                   '1)))
            (let _loop60209_ ((_probe60212_ _start60205_)
                              (_i60214_ '1)
                              (_deleted60216_ '#f))
              (let ((_k60219_ (vector-ref _table60191_ _probe60212_)))
                (if (eq? _k60219_ (macro-unused-obj))
                    _default60189_
                    (if (eq? _k60219_ (macro-deleted-obj))
                        (_loop60209_
                         (let ((_next-probe60222_
                                (fx+ _start60205_
                                     _i60214_
                                     (fx* _i60214_ _i60214_))))
                           (fxmodulo _next-probe60222_ _size60199_))
                         (fx+ _i60214_ '1)
                         (let ((_$e60225_ _deleted60216_))
                           (if _$e60225_ _$e60225_ _probe60212_)))
                        (if (_test60194_ _key60188_ _k60219_)
                            (vector-ref _table60191_ (fx+ _probe60212_ '1))
                            (_loop60209_
                             (let ((_next-probe60228_
                                    (fx+ _start60205_
                                         _i60214_
                                         (fx* _i60214_ _i60214_))))
                               (fxmodulo _next-probe60228_ _size60199_))
                             (fx+ _i60214_ '1)
                             _deleted60216_))))))))))
    (define raw-table-set!
      (lambda (_tab60183_ _key60184_ _value60185_)
        (if (fx< (&raw-table-free _tab60183_)
                 (fxquotient (vector-length (&raw-table-table _tab60183_)) '4))
            (__raw-table-rehash! _tab60183_)
            '#!void)
        (__raw-table-set! _tab60183_ _key60184_ _value60185_)))
    (define raw-table-update!
      (lambda (_tab60178_ _key60179_ _update60180_ _default60181_)
        (if (fx< (&raw-table-free _tab60178_)
                 (fxquotient (vector-length (&raw-table-table _tab60178_)) '4))
            (__raw-table-rehash! _tab60178_)
            '#!void)
        (__raw-table-update!
         _tab60178_
         _key60179_
         _update60180_
         _default60181_)))
    (define raw-table-delete!
      (lambda (_tab60139_ _key60140_)
        (let ((_table60142_ (&raw-table-table _tab60139_))
              (_seed60143_ (&raw-table-seed _tab60139_))
              (_hash60144_ (&raw-table-hash _tab60139_))
              (_test60145_ (&raw-table-test _tab60139_)))
          (let* ((_h60147_ (fxxor (_hash60144_ _key60140_) _seed60143_))
                 (_size60150_ (vector-length _table60142_))
                 (_entries60153_ (fxquotient _size60150_ '2))
                 (_start60156_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60147_ _entries60153_)
                   '1)))
            (let _loop60160_ ((_probe60163_ _start60156_) (_i60165_ '1))
              (let ((_k60168_ (vector-ref _table60142_ _probe60163_)))
                (if (eq? _k60168_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k60168_ (macro-deleted-obj))
                        (_loop60160_
                         (let ((_next-probe60171_
                                (fx+ _start60156_
                                     _i60165_
                                     (fx* _i60165_ _i60165_))))
                           (fxmodulo _next-probe60171_ _size60150_))
                         (fx+ _i60165_ '1))
                        (if (_test60145_ _key60140_ _k60168_)
                            (begin
                              (vector-set!
                               _table60142_
                               _probe60163_
                               (macro-deleted-obj))
                              (vector-set!
                               _table60142_
                               (fx+ _probe60163_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab60139_
                                  (fx- (&raw-table-count _tab60139_) '1)))))
                            (_loop60160_
                             (let ((_next-probe60175_
                                    (fx+ _start60156_
                                         _i60165_
                                         (fx* _i60165_ _i60165_))))
                               (fxmodulo _next-probe60175_ _size60150_))
                             (fx+ _i60165_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_tab60123_ _proc60124_)
        (let* ((_table60126_ (&raw-table-table _tab60123_))
               (_size60128_ (vector-length _table60126_)))
          (let _loop60131_ ((_i60133_ '0))
            (if (fx< _i60133_ _size60128_)
                (begin
                  (let ((_key60135_ (vector-ref _table60126_ _i60133_)))
                    (if (and (not (eq? _key60135_ (macro-unused-obj)))
                             (not (eq? _key60135_ (macro-deleted-obj))))
                        (let ((_value60137_
                               (vector-ref _table60126_ (fx+ _i60133_ '1))))
                          (_proc60124_ _key60135_ _value60137_))
                        '#!void))
                  (_loop60131_ (fx+ _i60133_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_tab60119_)
        (let ((_new-tab60121_ (##structure-copy _tab60119_)))
          (&raw-table-table-set!
           _new-tab60121_
           (vector-copy (&raw-table-table _tab60119_)))
          _new-tab60121_)))
    (define raw-table-clear!
      (lambda (_tab60117_)
        (vector-fill! (&raw-table-table _tab60117_) (macro-unused-obj))
        (&raw-table-count-set! _tab60117_ '0)
        (&raw-table-free-set!
         _tab60117_
         (fxquotient (vector-length (&raw-table-table _tab60117_)) '2))))
    (define __raw-table-set!
      (lambda (_tab60071_ _key60072_ _value60073_)
        (let ((_table60075_ (&raw-table-table _tab60071_))
              (_seed60076_ (&raw-table-seed _tab60071_))
              (_hash60077_ (&raw-table-hash _tab60071_))
              (_test60078_ (&raw-table-test _tab60071_)))
          (let* ((_h60080_ (fxxor (_hash60077_ _key60072_) _seed60076_))
                 (_size60083_ (vector-length _table60075_))
                 (_entries60086_ (fxquotient _size60083_ '2))
                 (_start60089_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60080_ _entries60086_)
                   '1)))
            (let _loop60093_ ((_probe60096_ _start60089_)
                              (_i60098_ '1)
                              (_deleted60100_ '#f))
              (let ((_k60103_ (vector-ref _table60075_ _probe60096_)))
                (if (eq? _k60103_ (macro-unused-obj))
                    (if _deleted60100_
                        (begin
                          (vector-set! _table60075_ _deleted60100_ _key60072_)
                          (vector-set!
                           _table60075_
                           (fx+ _deleted60100_ '1)
                           _value60073_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab60071_
                              (fx+ (&raw-table-count _tab60071_) '1)))))
                        (begin
                          (vector-set! _table60075_ _probe60096_ _key60072_)
                          (vector-set!
                           _table60075_
                           (fx+ _probe60096_ '1)
                           _value60073_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab60071_
                              (fx- (&raw-table-free _tab60071_) '1))
                             (&raw-table-count-set!
                              _tab60071_
                              (fx+ (&raw-table-count _tab60071_) '1))))))
                    (if (eq? _k60103_ (macro-deleted-obj))
                        (_loop60093_
                         (let ((_next-probe60108_
                                (fx+ _start60089_
                                     _i60098_
                                     (fx* _i60098_ _i60098_))))
                           (fxmodulo _next-probe60108_ _size60083_))
                         (fx+ _i60098_ '1)
                         (let ((_$e60111_ _deleted60100_))
                           (if _$e60111_ _$e60111_ _probe60096_)))
                        (if (_test60078_ _key60072_ _k60103_)
                            (begin
                              (vector-set!
                               _table60075_
                               _probe60096_
                               _key60072_)
                              (vector-set!
                               _table60075_
                               (fx+ _probe60096_ '1)
                               _value60073_))
                            (_loop60093_
                             (let ((_next-probe60114_
                                    (fx+ _start60089_
                                         _i60098_
                                         (fx* _i60098_ _i60098_))))
                               (fxmodulo _next-probe60114_ _size60083_))
                             (fx+ _i60098_ '1)
                             _deleted60100_))))))))))
    (define __raw-table-update!
      (lambda (_tab60024_ _key60025_ _update60026_ _default60027_)
        (let ((_table60029_ (&raw-table-table _tab60024_))
              (_seed60030_ (&raw-table-seed _tab60024_))
              (_hash60031_ (&raw-table-hash _tab60024_))
              (_test60032_ (&raw-table-test _tab60024_)))
          (let* ((_h60034_ (fxxor (_hash60031_ _key60025_) _seed60030_))
                 (_size60037_ (vector-length _table60029_))
                 (_entries60040_ (fxquotient _size60037_ '2))
                 (_start60043_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60034_ _entries60040_)
                   '1)))
            (let _loop60047_ ((_probe60050_ _start60043_)
                              (_i60052_ '1)
                              (_deleted60054_ '#f))
              (let ((_k60057_ (vector-ref _table60029_ _probe60050_)))
                (if (eq? _k60057_ (macro-unused-obj))
                    (if _deleted60054_
                        (begin
                          (vector-set! _table60029_ _deleted60054_ _key60025_)
                          (vector-set!
                           _table60029_
                           (fx+ _deleted60054_ '1)
                           (_update60026_ _default60027_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab60024_
                              (fx+ (&raw-table-count _tab60024_) '1)))))
                        (begin
                          (vector-set! _table60029_ _probe60050_ _key60025_)
                          (vector-set!
                           _table60029_
                           (fx+ _probe60050_ '1)
                           (_update60026_ _default60027_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab60024_
                              (fx- (&raw-table-free _tab60024_) '1))
                             (&raw-table-count-set!
                              _tab60024_
                              (fx+ (&raw-table-count _tab60024_) '1))))))
                    (if (eq? _k60057_ (macro-deleted-obj))
                        (_loop60047_
                         (let ((_next-probe60062_
                                (fx+ _start60043_
                                     _i60052_
                                     (fx* _i60052_ _i60052_))))
                           (fxmodulo _next-probe60062_ _size60037_))
                         (fx+ _i60052_ '1)
                         (let ((_$e60065_ _deleted60054_))
                           (if _$e60065_ _$e60065_ _probe60050_)))
                        (if (_test60032_ _key60025_ _k60057_)
                            (begin
                              (vector-set!
                               _table60029_
                               _probe60050_
                               _key60025_)
                              (vector-set!
                               _table60029_
                               (fx+ _probe60050_ '1)
                               (_update60026_
                                (vector-ref
                                 _table60029_
                                 (fx+ _probe60050_ '1)))))
                            (_loop60047_
                             (let ((_next-probe60068_
                                    (fx+ _start60043_
                                         _i60052_
                                         (fx* _i60052_ _i60052_))))
                               (fxmodulo _next-probe60068_ _size60037_))
                             (fx+ _i60052_ '1)
                             _deleted60054_))))))))))
    (define __raw-table-rehash!
      (lambda (_tab60005_)
        (let* ((_old-table60007_ (&raw-table-table _tab60005_))
               (_old-size60009_ (vector-length _old-table60007_))
               (_new-size60011_
                (if (fx< (&raw-table-count _tab60005_)
                         (fxquotient _old-size60009_ '4))
                    (vector-length _old-table60007_)
                    (fx* '2 (vector-length _old-table60007_))))
               (_new-table60013_
                (make-vector _new-size60011_ (macro-unused-obj))))
          (&raw-table-table-set! _tab60005_ _new-table60013_)
          (&raw-table-count-set! _tab60005_ '0)
          (&raw-table-free-set! _tab60005_ (fxquotient _new-size60011_ '2))
          (let _lp60016_ ((_i60018_ '0))
            (if (fx< _i60018_ _old-size60009_)
                (begin
                  (let ((_key60020_ (vector-ref _old-table60007_ _i60018_)))
                    (if (and (not (eq? _key60020_ (macro-unused-obj)))
                             (not (eq? _key60020_ (macro-deleted-obj))))
                        (let ((_value60022_
                               (vector-ref
                                _old-table60007_
                                (fx+ _i60018_ '1))))
                          (__raw-table-set!
                           _tab60005_
                           _key60020_
                           _value60022_))
                        '#!void))
                  (_lp60016_ (fx+ _i60018_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_obj60001_)
        (let ((_t60003_ (##type _obj60001_)))
          (if (fx= (fxand _t60003_ '1) '0)
              (fxand (##type-cast _obj60001_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _obj60001_)
                  (symbolic-hash _obj60001_)
                  (if (procedure? _obj60001_)
                      (procedure-hash _obj60001_)
                      (fxand (__eq-hash _obj60001_) (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_obj59997_)
        (let ((_h59999_
               (if (##closure? _obj59997_)
                   (__eq-hash _obj59997_)
                   (##type-cast _obj59997_ '0))))
          (fxand _h59999_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_obj59994_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _obj59994_)))
    (define eqv-hash
      (lambda (_obj59984_)
        (letrec ((_combine59986_
                  (lambda (_a59991_ _b59992_)
                    (fxand (fx* (fx+ _a59991_
                                     (fxarithmetic-shift-left _b59992_ '1))
                                '331804471)
                           (macro-max-fixnum32))))
                 (_hash59987_
                  (lambda (_obj59989_)
                    (macro-number-dispatch
                     _obj59989_
                     (eq-hash _obj59989_)
                     (fxand _obj59989_ (macro-max-fixnum32))
                     (modulo _obj59989_ '331804481)
                     (_combine59986_
                      (_hash59987_ (macro-ratnum-numerator _obj59989_))
                      (_hash59987_ (macro-ratnum-denominator _obj59989_)))
                     (_combine59986_
                      (##u16vector-ref _obj59989_ '0)
                      (_combine59986_
                       (##u16vector-ref _obj59989_ '1)
                       (_combine59986_
                        (##u16vector-ref _obj59989_ '2)
                        (##u16vector-ref _obj59989_ '3))))
                     (_combine59986_
                      (_hash59987_ (macro-cpxnum-real _obj59989_))
                      (_hash59987_ (macro-cpxnum-imag _obj59989_)))))))
          (_hash59987_ _obj59984_))))
    (define symbolic?
      (lambda (_obj59979_)
        (let ((_$e59981_ (symbol? _obj59979_)))
          (if _$e59981_ _$e59981_ (keyword? _obj59979_)))))
    (define symbolic-hash (lambda (_obj59977_) (macro-slot '1 _obj59977_)))
    (define string-hash (lambda (_obj59975_) (##string=?-hash _obj59975_)))
    (define immediate-hash
      (lambda (_obj59973_) (##type-cast _obj59973_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_size-hint59954_ _seed59956_)
        (make-raw-table__% _size-hint59954_ eq-hash eq? _seed59956_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_size-hint59962_ '#f) (_seed59964_ '0))
          (make-eq-table__% _size-hint59962_ _seed59964_))))
    (define make-eq-table__1
      (lambda (_size-hint59966_)
        (let ((_seed59968_ '0))
          (make-eq-table__% _size-hint59966_ _seed59968_))))
    (define make-eq-table
      (lambda _g60290_
        (let ((_g60289_ (##length _g60290_)))
          (cond ((##fx= _g60289_ 0)
                 (apply (lambda () (make-eq-table__0)) _g60290_))
                ((##fx= _g60289_ 1)
                 (apply (lambda (_size-hint59966_)
                          (make-eq-table__1 _size-hint59966_))
                        _g60290_))
                ((##fx= _g60289_ 2)
                 (apply (lambda (_size-hint59970_ _seed59971_)
                          (make-eq-table__% _size-hint59970_ _seed59971_))
                        _g60290_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g60290_))))))
    (define eq-table-ref
      (lambda (_tab59911_ _key59912_ _default59913_)
        (let ((_table59915_ (&raw-table-table _tab59911_))
              (_seed59916_ (&raw-table-seed _tab59911_)))
          (let* ((_h59918_ (fxxor (eq-hash _key59912_) _seed59916_))
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
                    _default59913_
                    (if (eq? _k59941_ (macro-deleted-obj))
                        (_loop59931_
                         (let ((_next-probe59944_
                                (fx+ _start59927_
                                     _i59936_
                                     (fx* _i59936_ _i59936_))))
                           (fxmodulo _next-probe59944_ _size59921_))
                         (fx+ _i59936_ '1)
                         (let ((_$e59947_ _deleted59938_))
                           (if _$e59947_ _$e59947_ _probe59934_)))
                        (if (eq? _key59912_ _k59941_)
                            (vector-ref _table59915_ (fx+ _probe59934_ '1))
                            (_loop59931_
                             (let ((_next-probe59950_
                                    (fx+ _start59927_
                                         _i59936_
                                         (fx* _i59936_ _i59936_))))
                               (fxmodulo _next-probe59950_ _size59921_))
                             (fx+ _i59936_ '1)
                             _deleted59938_))))))))))
    (define eq-table-set!
      (lambda (_tab59907_ _key59908_ _value59909_)
        (if (fx< (&raw-table-free _tab59907_)
                 (fxquotient (vector-length (&raw-table-table _tab59907_)) '4))
            (__raw-table-rehash! _tab59907_)
            '#!void)
        (__eq-table-set! _tab59907_ _key59908_ _value59909_)))
    (define __eq-table-set!
      (lambda (_tab59862_ _key59863_ _value59864_)
        (let ((_table59867_ (&raw-table-table _tab59862_))
              (_seed59868_ (&raw-table-seed _tab59862_)))
          (let* ((_h59870_ (fxxor (eq-hash _key59863_) _seed59868_))
                 (_size59873_ (vector-length _table59867_))
                 (_entries59876_ (fxquotient _size59873_ '2))
                 (_start59879_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59870_ _entries59876_)
                   '1)))
            (let _loop59883_ ((_probe59886_ _start59879_)
                              (_i59888_ '1)
                              (_deleted59890_ '#f))
              (let ((_k59893_ (vector-ref _table59867_ _probe59886_)))
                (if (eq? _k59893_ (macro-unused-obj))
                    (if _deleted59890_
                        (begin
                          (vector-set! _table59867_ _deleted59890_ _key59863_)
                          (vector-set!
                           _table59867_
                           (fx+ _deleted59890_ '1)
                           _value59864_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59862_
                              (fx+ (&raw-table-count _tab59862_) '1)))))
                        (begin
                          (vector-set! _table59867_ _probe59886_ _key59863_)
                          (vector-set!
                           _table59867_
                           (fx+ _probe59886_ '1)
                           _value59864_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59862_
                              (fx- (&raw-table-free _tab59862_) '1))
                             (&raw-table-count-set!
                              _tab59862_
                              (fx+ (&raw-table-count _tab59862_) '1))))))
                    (if (eq? _k59893_ (macro-deleted-obj))
                        (_loop59883_
                         (let ((_next-probe59898_
                                (fx+ _start59879_
                                     _i59888_
                                     (fx* _i59888_ _i59888_))))
                           (fxmodulo _next-probe59898_ _size59873_))
                         (fx+ _i59888_ '1)
                         (let ((_$e59901_ _deleted59890_))
                           (if _$e59901_ _$e59901_ _probe59886_)))
                        (if (eq? _key59863_ _k59893_)
                            (begin
                              (vector-set!
                               _table59867_
                               _probe59886_
                               _key59863_)
                              (vector-set!
                               _table59867_
                               (fx+ _probe59886_ '1)
                               _value59864_))
                            (_loop59883_
                             (let ((_next-probe59904_
                                    (fx+ _start59879_
                                         _i59888_
                                         (fx* _i59888_ _i59888_))))
                               (fxmodulo _next-probe59904_ _size59873_))
                             (fx+ _i59888_ '1)
                             _deleted59890_))))))))))
    (define eq-table-update!
      (lambda (_tab59857_ _key59858_ _eq-table-update!59859_ _default59860_)
        (if (fx< (&raw-table-free _tab59857_)
                 (fxquotient (vector-length (&raw-table-table _tab59857_)) '4))
            (__raw-table-rehash! _tab59857_)
            '#!void)
        (__eq-table-update!
         _tab59857_
         _key59858_
         _eq-table-update!59859_
         _default59860_)))
    (define __eq-table-update!
      (lambda (_tab59811_ _key59812_ _eq-table-update!59813_ _default59814_)
        (let ((_table59817_ (&raw-table-table _tab59811_))
              (_seed59818_ (&raw-table-seed _tab59811_)))
          (let* ((_h59820_ (fxxor (eq-hash _key59812_) _seed59818_))
                 (_size59823_ (vector-length _table59817_))
                 (_entries59826_ (fxquotient _size59823_ '2))
                 (_start59829_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59820_ _entries59826_)
                   '1)))
            (let _loop59833_ ((_probe59836_ _start59829_)
                              (_i59838_ '1)
                              (_deleted59840_ '#f))
              (let ((_k59843_ (vector-ref _table59817_ _probe59836_)))
                (if (eq? _k59843_ (macro-unused-obj))
                    (if _deleted59840_
                        (begin
                          (vector-set! _table59817_ _deleted59840_ _key59812_)
                          (vector-set!
                           _table59817_
                           (fx+ _deleted59840_ '1)
                           (_eq-table-update!59813_ _default59814_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59811_
                              (fx+ (&raw-table-count _tab59811_) '1)))))
                        (begin
                          (vector-set! _table59817_ _probe59836_ _key59812_)
                          (vector-set!
                           _table59817_
                           (fx+ _probe59836_ '1)
                           (_eq-table-update!59813_ _default59814_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59811_
                              (fx- (&raw-table-free _tab59811_) '1))
                             (&raw-table-count-set!
                              _tab59811_
                              (fx+ (&raw-table-count _tab59811_) '1))))))
                    (if (eq? _k59843_ (macro-deleted-obj))
                        (_loop59833_
                         (let ((_next-probe59848_
                                (fx+ _start59829_
                                     _i59838_
                                     (fx* _i59838_ _i59838_))))
                           (fxmodulo _next-probe59848_ _size59823_))
                         (fx+ _i59838_ '1)
                         (let ((_$e59851_ _deleted59840_))
                           (if _$e59851_ _$e59851_ _probe59836_)))
                        (if (eq? _key59812_ _k59843_)
                            (begin
                              (vector-set!
                               _table59817_
                               _probe59836_
                               _key59812_)
                              (vector-set!
                               _table59817_
                               (fx+ _probe59836_ '1)
                               (_eq-table-update!59813_
                                (vector-ref
                                 _table59817_
                                 (fx+ _probe59836_ '1)))))
                            (_loop59833_
                             (let ((_next-probe59854_
                                    (fx+ _start59829_
                                         _i59838_
                                         (fx* _i59838_ _i59838_))))
                               (fxmodulo _next-probe59854_ _size59823_))
                             (fx+ _i59838_ '1)
                             _deleted59840_))))))))))
    (define eq-table-delete!
      (lambda (_tab59770_ _key59772_)
        (let ((_table59775_ (&raw-table-table _tab59770_))
              (_seed59777_ (&raw-table-seed _tab59770_)))
          (let* ((_h59780_ (fxxor (eq-hash _key59772_) _seed59777_))
                 (_size59783_ (vector-length _table59775_))
                 (_entries59786_ (fxquotient _size59783_ '2))
                 (_start59789_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59780_ _entries59786_)
                   '1)))
            (let _loop59793_ ((_probe59796_ _start59789_) (_i59798_ '1))
              (let ((_k59801_ (vector-ref _table59775_ _probe59796_)))
                (if (eq? _k59801_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59801_ (macro-deleted-obj))
                        (_loop59793_
                         (let ((_next-probe59804_
                                (fx+ _start59789_
                                     _i59798_
                                     (fx* _i59798_ _i59798_))))
                           (fxmodulo _next-probe59804_ _size59783_))
                         (fx+ _i59798_ '1))
                        (if (eq? _key59772_ _k59801_)
                            (begin
                              (vector-set!
                               _table59775_
                               _probe59796_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59775_
                               (fx+ _probe59796_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59770_
                                  (fx- (&raw-table-count _tab59770_) '1)))))
                            (_loop59793_
                             (let ((_next-probe59808_
                                    (fx+ _start59789_
                                         _i59798_
                                         (fx* _i59798_ _i59798_))))
                               (fxmodulo _next-probe59808_ _size59783_))
                             (fx+ _i59798_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_size-hint59751_ _seed59753_)
        (make-raw-table__% _size-hint59751_ eqv-hash eqv? _seed59753_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_size-hint59759_ '#f) (_seed59761_ '0))
          (make-eqv-table__% _size-hint59759_ _seed59761_))))
    (define make-eqv-table__1
      (lambda (_size-hint59763_)
        (let ((_seed59765_ '0))
          (make-eqv-table__% _size-hint59763_ _seed59765_))))
    (define make-eqv-table
      (lambda _g60292_
        (let ((_g60291_ (##length _g60292_)))
          (cond ((##fx= _g60291_ 0)
                 (apply (lambda () (make-eqv-table__0)) _g60292_))
                ((##fx= _g60291_ 1)
                 (apply (lambda (_size-hint59763_)
                          (make-eqv-table__1 _size-hint59763_))
                        _g60292_))
                ((##fx= _g60291_ 2)
                 (apply (lambda (_size-hint59767_ _seed59768_)
                          (make-eqv-table__% _size-hint59767_ _seed59768_))
                        _g60292_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g60292_))))))
    (define eqv-table-ref
      (lambda (_tab59708_ _key59709_ _default59710_)
        (let ((_table59712_ (&raw-table-table _tab59708_))
              (_seed59713_ (&raw-table-seed _tab59708_)))
          (let* ((_h59715_ (fxxor (eqv-hash _key59709_) _seed59713_))
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
                    _default59710_
                    (if (eq? _k59738_ (macro-deleted-obj))
                        (_loop59728_
                         (let ((_next-probe59741_
                                (fx+ _start59724_
                                     _i59733_
                                     (fx* _i59733_ _i59733_))))
                           (fxmodulo _next-probe59741_ _size59718_))
                         (fx+ _i59733_ '1)
                         (let ((_$e59744_ _deleted59735_))
                           (if _$e59744_ _$e59744_ _probe59731_)))
                        (if (eqv? _key59709_ _k59738_)
                            (vector-ref _table59712_ (fx+ _probe59731_ '1))
                            (_loop59728_
                             (let ((_next-probe59747_
                                    (fx+ _start59724_
                                         _i59733_
                                         (fx* _i59733_ _i59733_))))
                               (fxmodulo _next-probe59747_ _size59718_))
                             (fx+ _i59733_ '1)
                             _deleted59735_))))))))))
    (define eqv-table-set!
      (lambda (_tab59704_ _key59705_ _value59706_)
        (if (fx< (&raw-table-free _tab59704_)
                 (fxquotient (vector-length (&raw-table-table _tab59704_)) '4))
            (__raw-table-rehash! _tab59704_)
            '#!void)
        (__eqv-table-set! _tab59704_ _key59705_ _value59706_)))
    (define __eqv-table-set!
      (lambda (_tab59659_ _key59660_ _value59661_)
        (let ((_table59664_ (&raw-table-table _tab59659_))
              (_seed59665_ (&raw-table-seed _tab59659_)))
          (let* ((_h59667_ (fxxor (eqv-hash _key59660_) _seed59665_))
                 (_size59670_ (vector-length _table59664_))
                 (_entries59673_ (fxquotient _size59670_ '2))
                 (_start59676_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59667_ _entries59673_)
                   '1)))
            (let _loop59680_ ((_probe59683_ _start59676_)
                              (_i59685_ '1)
                              (_deleted59687_ '#f))
              (let ((_k59690_ (vector-ref _table59664_ _probe59683_)))
                (if (eq? _k59690_ (macro-unused-obj))
                    (if _deleted59687_
                        (begin
                          (vector-set! _table59664_ _deleted59687_ _key59660_)
                          (vector-set!
                           _table59664_
                           (fx+ _deleted59687_ '1)
                           _value59661_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59659_
                              (fx+ (&raw-table-count _tab59659_) '1)))))
                        (begin
                          (vector-set! _table59664_ _probe59683_ _key59660_)
                          (vector-set!
                           _table59664_
                           (fx+ _probe59683_ '1)
                           _value59661_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59659_
                              (fx- (&raw-table-free _tab59659_) '1))
                             (&raw-table-count-set!
                              _tab59659_
                              (fx+ (&raw-table-count _tab59659_) '1))))))
                    (if (eq? _k59690_ (macro-deleted-obj))
                        (_loop59680_
                         (let ((_next-probe59695_
                                (fx+ _start59676_
                                     _i59685_
                                     (fx* _i59685_ _i59685_))))
                           (fxmodulo _next-probe59695_ _size59670_))
                         (fx+ _i59685_ '1)
                         (let ((_$e59698_ _deleted59687_))
                           (if _$e59698_ _$e59698_ _probe59683_)))
                        (if (eqv? _key59660_ _k59690_)
                            (begin
                              (vector-set!
                               _table59664_
                               _probe59683_
                               _key59660_)
                              (vector-set!
                               _table59664_
                               (fx+ _probe59683_ '1)
                               _value59661_))
                            (_loop59680_
                             (let ((_next-probe59701_
                                    (fx+ _start59676_
                                         _i59685_
                                         (fx* _i59685_ _i59685_))))
                               (fxmodulo _next-probe59701_ _size59670_))
                             (fx+ _i59685_ '1)
                             _deleted59687_))))))))))
    (define eqv-table-update!
      (lambda (_tab59654_ _key59655_ _eqv-table-update!59656_ _default59657_)
        (if (fx< (&raw-table-free _tab59654_)
                 (fxquotient (vector-length (&raw-table-table _tab59654_)) '4))
            (__raw-table-rehash! _tab59654_)
            '#!void)
        (__eqv-table-update!
         _tab59654_
         _key59655_
         _eqv-table-update!59656_
         _default59657_)))
    (define __eqv-table-update!
      (lambda (_tab59608_ _key59609_ _eqv-table-update!59610_ _default59611_)
        (let ((_table59614_ (&raw-table-table _tab59608_))
              (_seed59615_ (&raw-table-seed _tab59608_)))
          (let* ((_h59617_ (fxxor (eqv-hash _key59609_) _seed59615_))
                 (_size59620_ (vector-length _table59614_))
                 (_entries59623_ (fxquotient _size59620_ '2))
                 (_start59626_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59617_ _entries59623_)
                   '1)))
            (let _loop59630_ ((_probe59633_ _start59626_)
                              (_i59635_ '1)
                              (_deleted59637_ '#f))
              (let ((_k59640_ (vector-ref _table59614_ _probe59633_)))
                (if (eq? _k59640_ (macro-unused-obj))
                    (if _deleted59637_
                        (begin
                          (vector-set! _table59614_ _deleted59637_ _key59609_)
                          (vector-set!
                           _table59614_
                           (fx+ _deleted59637_ '1)
                           (_eqv-table-update!59610_ _default59611_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59608_
                              (fx+ (&raw-table-count _tab59608_) '1)))))
                        (begin
                          (vector-set! _table59614_ _probe59633_ _key59609_)
                          (vector-set!
                           _table59614_
                           (fx+ _probe59633_ '1)
                           (_eqv-table-update!59610_ _default59611_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59608_
                              (fx- (&raw-table-free _tab59608_) '1))
                             (&raw-table-count-set!
                              _tab59608_
                              (fx+ (&raw-table-count _tab59608_) '1))))))
                    (if (eq? _k59640_ (macro-deleted-obj))
                        (_loop59630_
                         (let ((_next-probe59645_
                                (fx+ _start59626_
                                     _i59635_
                                     (fx* _i59635_ _i59635_))))
                           (fxmodulo _next-probe59645_ _size59620_))
                         (fx+ _i59635_ '1)
                         (let ((_$e59648_ _deleted59637_))
                           (if _$e59648_ _$e59648_ _probe59633_)))
                        (if (eqv? _key59609_ _k59640_)
                            (begin
                              (vector-set!
                               _table59614_
                               _probe59633_
                               _key59609_)
                              (vector-set!
                               _table59614_
                               (fx+ _probe59633_ '1)
                               (_eqv-table-update!59610_
                                (vector-ref
                                 _table59614_
                                 (fx+ _probe59633_ '1)))))
                            (_loop59630_
                             (let ((_next-probe59651_
                                    (fx+ _start59626_
                                         _i59635_
                                         (fx* _i59635_ _i59635_))))
                               (fxmodulo _next-probe59651_ _size59620_))
                             (fx+ _i59635_ '1)
                             _deleted59637_))))))))))
    (define eqv-table-delete!
      (lambda (_tab59567_ _key59569_)
        (let ((_table59572_ (&raw-table-table _tab59567_))
              (_seed59574_ (&raw-table-seed _tab59567_)))
          (let* ((_h59577_ (fxxor (eqv-hash _key59569_) _seed59574_))
                 (_size59580_ (vector-length _table59572_))
                 (_entries59583_ (fxquotient _size59580_ '2))
                 (_start59586_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59577_ _entries59583_)
                   '1)))
            (let _loop59590_ ((_probe59593_ _start59586_) (_i59595_ '1))
              (let ((_k59598_ (vector-ref _table59572_ _probe59593_)))
                (if (eq? _k59598_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59598_ (macro-deleted-obj))
                        (_loop59590_
                         (let ((_next-probe59601_
                                (fx+ _start59586_
                                     _i59595_
                                     (fx* _i59595_ _i59595_))))
                           (fxmodulo _next-probe59601_ _size59580_))
                         (fx+ _i59595_ '1))
                        (if (eqv? _key59569_ _k59598_)
                            (begin
                              (vector-set!
                               _table59572_
                               _probe59593_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59572_
                               (fx+ _probe59593_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59567_
                                  (fx- (&raw-table-count _tab59567_) '1)))))
                            (_loop59590_
                             (let ((_next-probe59605_
                                    (fx+ _start59586_
                                         _i59595_
                                         (fx* _i59595_ _i59595_))))
                               (fxmodulo _next-probe59605_ _size59580_))
                             (fx+ _i59595_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_size-hint59548_ _seed59550_)
        (make-raw-table__% _size-hint59548_ symbolic-hash eq? _seed59550_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_size-hint59556_ '#f) (_seed59558_ '0))
          (make-symbolic-table__% _size-hint59556_ _seed59558_))))
    (define make-symbolic-table__1
      (lambda (_size-hint59560_)
        (let ((_seed59562_ '0))
          (make-symbolic-table__% _size-hint59560_ _seed59562_))))
    (define make-symbolic-table
      (lambda _g60294_
        (let ((_g60293_ (##length _g60294_)))
          (cond ((##fx= _g60293_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g60294_))
                ((##fx= _g60293_ 1)
                 (apply (lambda (_size-hint59560_)
                          (make-symbolic-table__1 _size-hint59560_))
                        _g60294_))
                ((##fx= _g60293_ 2)
                 (apply (lambda (_size-hint59564_ _seed59565_)
                          (make-symbolic-table__%
                           _size-hint59564_
                           _seed59565_))
                        _g60294_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g60294_))))))
    (define symbolic-table-ref
      (lambda (_tab59505_ _key59506_ _default59507_)
        (let ((_table59509_ (&raw-table-table _tab59505_))
              (_seed59510_ (&raw-table-seed _tab59505_)))
          (let* ((_h59512_ (fxxor (symbolic-hash _key59506_) _seed59510_))
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
                    _default59507_
                    (if (eq? _k59535_ (macro-deleted-obj))
                        (_loop59525_
                         (let ((_next-probe59538_
                                (fx+ _start59521_
                                     _i59530_
                                     (fx* _i59530_ _i59530_))))
                           (fxmodulo _next-probe59538_ _size59515_))
                         (fx+ _i59530_ '1)
                         (let ((_$e59541_ _deleted59532_))
                           (if _$e59541_ _$e59541_ _probe59528_)))
                        (if (eq? _key59506_ _k59535_)
                            (vector-ref _table59509_ (fx+ _probe59528_ '1))
                            (_loop59525_
                             (let ((_next-probe59544_
                                    (fx+ _start59521_
                                         _i59530_
                                         (fx* _i59530_ _i59530_))))
                               (fxmodulo _next-probe59544_ _size59515_))
                             (fx+ _i59530_ '1)
                             _deleted59532_))))))))))
    (define symbolic-table-set!
      (lambda (_tab59501_ _key59502_ _value59503_)
        (if (fx< (&raw-table-free _tab59501_)
                 (fxquotient (vector-length (&raw-table-table _tab59501_)) '4))
            (__raw-table-rehash! _tab59501_)
            '#!void)
        (__symbolic-table-set! _tab59501_ _key59502_ _value59503_)))
    (define __symbolic-table-set!
      (lambda (_tab59456_ _key59457_ _value59458_)
        (let ((_table59461_ (&raw-table-table _tab59456_))
              (_seed59462_ (&raw-table-seed _tab59456_)))
          (let* ((_h59464_ (fxxor (symbolic-hash _key59457_) _seed59462_))
                 (_size59467_ (vector-length _table59461_))
                 (_entries59470_ (fxquotient _size59467_ '2))
                 (_start59473_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59464_ _entries59470_)
                   '1)))
            (let _loop59477_ ((_probe59480_ _start59473_)
                              (_i59482_ '1)
                              (_deleted59484_ '#f))
              (let ((_k59487_ (vector-ref _table59461_ _probe59480_)))
                (if (eq? _k59487_ (macro-unused-obj))
                    (if _deleted59484_
                        (begin
                          (vector-set! _table59461_ _deleted59484_ _key59457_)
                          (vector-set!
                           _table59461_
                           (fx+ _deleted59484_ '1)
                           _value59458_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59456_
                              (fx+ (&raw-table-count _tab59456_) '1)))))
                        (begin
                          (vector-set! _table59461_ _probe59480_ _key59457_)
                          (vector-set!
                           _table59461_
                           (fx+ _probe59480_ '1)
                           _value59458_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59456_
                              (fx- (&raw-table-free _tab59456_) '1))
                             (&raw-table-count-set!
                              _tab59456_
                              (fx+ (&raw-table-count _tab59456_) '1))))))
                    (if (eq? _k59487_ (macro-deleted-obj))
                        (_loop59477_
                         (let ((_next-probe59492_
                                (fx+ _start59473_
                                     _i59482_
                                     (fx* _i59482_ _i59482_))))
                           (fxmodulo _next-probe59492_ _size59467_))
                         (fx+ _i59482_ '1)
                         (let ((_$e59495_ _deleted59484_))
                           (if _$e59495_ _$e59495_ _probe59480_)))
                        (if (eq? _key59457_ _k59487_)
                            (begin
                              (vector-set!
                               _table59461_
                               _probe59480_
                               _key59457_)
                              (vector-set!
                               _table59461_
                               (fx+ _probe59480_ '1)
                               _value59458_))
                            (_loop59477_
                             (let ((_next-probe59498_
                                    (fx+ _start59473_
                                         _i59482_
                                         (fx* _i59482_ _i59482_))))
                               (fxmodulo _next-probe59498_ _size59467_))
                             (fx+ _i59482_ '1)
                             _deleted59484_))))))))))
    (define symbolic-table-update!
      (lambda (_tab59451_
               _key59452_
               _symbolic-table-update!59453_
               _default59454_)
        (if (fx< (&raw-table-free _tab59451_)
                 (fxquotient (vector-length (&raw-table-table _tab59451_)) '4))
            (__raw-table-rehash! _tab59451_)
            '#!void)
        (__symbolic-table-update!
         _tab59451_
         _key59452_
         _symbolic-table-update!59453_
         _default59454_)))
    (define __symbolic-table-update!
      (lambda (_tab59405_
               _key59406_
               _symbolic-table-update!59407_
               _default59408_)
        (let ((_table59411_ (&raw-table-table _tab59405_))
              (_seed59412_ (&raw-table-seed _tab59405_)))
          (let* ((_h59414_ (fxxor (symbolic-hash _key59406_) _seed59412_))
                 (_size59417_ (vector-length _table59411_))
                 (_entries59420_ (fxquotient _size59417_ '2))
                 (_start59423_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59414_ _entries59420_)
                   '1)))
            (let _loop59427_ ((_probe59430_ _start59423_)
                              (_i59432_ '1)
                              (_deleted59434_ '#f))
              (let ((_k59437_ (vector-ref _table59411_ _probe59430_)))
                (if (eq? _k59437_ (macro-unused-obj))
                    (if _deleted59434_
                        (begin
                          (vector-set! _table59411_ _deleted59434_ _key59406_)
                          (vector-set!
                           _table59411_
                           (fx+ _deleted59434_ '1)
                           (_symbolic-table-update!59407_ _default59408_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59405_
                              (fx+ (&raw-table-count _tab59405_) '1)))))
                        (begin
                          (vector-set! _table59411_ _probe59430_ _key59406_)
                          (vector-set!
                           _table59411_
                           (fx+ _probe59430_ '1)
                           (_symbolic-table-update!59407_ _default59408_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59405_
                              (fx- (&raw-table-free _tab59405_) '1))
                             (&raw-table-count-set!
                              _tab59405_
                              (fx+ (&raw-table-count _tab59405_) '1))))))
                    (if (eq? _k59437_ (macro-deleted-obj))
                        (_loop59427_
                         (let ((_next-probe59442_
                                (fx+ _start59423_
                                     _i59432_
                                     (fx* _i59432_ _i59432_))))
                           (fxmodulo _next-probe59442_ _size59417_))
                         (fx+ _i59432_ '1)
                         (let ((_$e59445_ _deleted59434_))
                           (if _$e59445_ _$e59445_ _probe59430_)))
                        (if (eq? _key59406_ _k59437_)
                            (begin
                              (vector-set!
                               _table59411_
                               _probe59430_
                               _key59406_)
                              (vector-set!
                               _table59411_
                               (fx+ _probe59430_ '1)
                               (_symbolic-table-update!59407_
                                (vector-ref
                                 _table59411_
                                 (fx+ _probe59430_ '1)))))
                            (_loop59427_
                             (let ((_next-probe59448_
                                    (fx+ _start59423_
                                         _i59432_
                                         (fx* _i59432_ _i59432_))))
                               (fxmodulo _next-probe59448_ _size59417_))
                             (fx+ _i59432_ '1)
                             _deleted59434_))))))))))
    (define symbolic-table-delete!
      (lambda (_tab59364_ _key59366_)
        (let ((_table59369_ (&raw-table-table _tab59364_))
              (_seed59371_ (&raw-table-seed _tab59364_)))
          (let* ((_h59374_ (fxxor (symbolic-hash _key59366_) _seed59371_))
                 (_size59377_ (vector-length _table59369_))
                 (_entries59380_ (fxquotient _size59377_ '2))
                 (_start59383_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59374_ _entries59380_)
                   '1)))
            (let _loop59387_ ((_probe59390_ _start59383_) (_i59392_ '1))
              (let ((_k59395_ (vector-ref _table59369_ _probe59390_)))
                (if (eq? _k59395_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59395_ (macro-deleted-obj))
                        (_loop59387_
                         (let ((_next-probe59398_
                                (fx+ _start59383_
                                     _i59392_
                                     (fx* _i59392_ _i59392_))))
                           (fxmodulo _next-probe59398_ _size59377_))
                         (fx+ _i59392_ '1))
                        (if (eq? _key59366_ _k59395_)
                            (begin
                              (vector-set!
                               _table59369_
                               _probe59390_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59369_
                               (fx+ _probe59390_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59364_
                                  (fx- (&raw-table-count _tab59364_) '1)))))
                            (_loop59387_
                             (let ((_next-probe59402_
                                    (fx+ _start59383_
                                         _i59392_
                                         (fx* _i59392_ _i59392_))))
                               (fxmodulo _next-probe59402_ _size59377_))
                             (fx+ _i59392_ '1)))))))))))
    (define make-string-table__%
      (lambda (_size-hint59345_ _seed59347_)
        (make-raw-table__%
         _size-hint59345_
         string-hash
         ##string=?
         _seed59347_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_size-hint59353_ '#f) (_seed59355_ '0))
          (make-string-table__% _size-hint59353_ _seed59355_))))
    (define make-string-table__1
      (lambda (_size-hint59357_)
        (let ((_seed59359_ '0))
          (make-string-table__% _size-hint59357_ _seed59359_))))
    (define make-string-table
      (lambda _g60296_
        (let ((_g60295_ (##length _g60296_)))
          (cond ((##fx= _g60295_ 0)
                 (apply (lambda () (make-string-table__0)) _g60296_))
                ((##fx= _g60295_ 1)
                 (apply (lambda (_size-hint59357_)
                          (make-string-table__1 _size-hint59357_))
                        _g60296_))
                ((##fx= _g60295_ 2)
                 (apply (lambda (_size-hint59361_ _seed59362_)
                          (make-string-table__% _size-hint59361_ _seed59362_))
                        _g60296_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g60296_))))))
    (define string-table-ref
      (lambda (_tab59302_ _key59303_ _default59304_)
        (let ((_table59306_ (&raw-table-table _tab59302_))
              (_seed59307_ (&raw-table-seed _tab59302_)))
          (let* ((_h59309_ (fxxor (##string=?-hash _key59303_) _seed59307_))
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
                    _default59304_
                    (if (eq? _k59332_ (macro-deleted-obj))
                        (_loop59322_
                         (let ((_next-probe59335_
                                (fx+ _start59318_
                                     _i59327_
                                     (fx* _i59327_ _i59327_))))
                           (fxmodulo _next-probe59335_ _size59312_))
                         (fx+ _i59327_ '1)
                         (let ((_$e59338_ _deleted59329_))
                           (if _$e59338_ _$e59338_ _probe59325_)))
                        (if (##string=? _key59303_ _k59332_)
                            (vector-ref _table59306_ (fx+ _probe59325_ '1))
                            (_loop59322_
                             (let ((_next-probe59341_
                                    (fx+ _start59318_
                                         _i59327_
                                         (fx* _i59327_ _i59327_))))
                               (fxmodulo _next-probe59341_ _size59312_))
                             (fx+ _i59327_ '1)
                             _deleted59329_))))))))))
    (define string-table-set!
      (lambda (_tab59298_ _key59299_ _value59300_)
        (if (fx< (&raw-table-free _tab59298_)
                 (fxquotient (vector-length (&raw-table-table _tab59298_)) '4))
            (__raw-table-rehash! _tab59298_)
            '#!void)
        (__string-table-set! _tab59298_ _key59299_ _value59300_)))
    (define __string-table-set!
      (lambda (_tab59253_ _key59254_ _value59255_)
        (let ((_table59258_ (&raw-table-table _tab59253_))
              (_seed59259_ (&raw-table-seed _tab59253_)))
          (let* ((_h59261_ (fxxor (##string=?-hash _key59254_) _seed59259_))
                 (_size59264_ (vector-length _table59258_))
                 (_entries59267_ (fxquotient _size59264_ '2))
                 (_start59270_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59261_ _entries59267_)
                   '1)))
            (let _loop59274_ ((_probe59277_ _start59270_)
                              (_i59279_ '1)
                              (_deleted59281_ '#f))
              (let ((_k59284_ (vector-ref _table59258_ _probe59277_)))
                (if (eq? _k59284_ (macro-unused-obj))
                    (if _deleted59281_
                        (begin
                          (vector-set! _table59258_ _deleted59281_ _key59254_)
                          (vector-set!
                           _table59258_
                           (fx+ _deleted59281_ '1)
                           _value59255_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59253_
                              (fx+ (&raw-table-count _tab59253_) '1)))))
                        (begin
                          (vector-set! _table59258_ _probe59277_ _key59254_)
                          (vector-set!
                           _table59258_
                           (fx+ _probe59277_ '1)
                           _value59255_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59253_
                              (fx- (&raw-table-free _tab59253_) '1))
                             (&raw-table-count-set!
                              _tab59253_
                              (fx+ (&raw-table-count _tab59253_) '1))))))
                    (if (eq? _k59284_ (macro-deleted-obj))
                        (_loop59274_
                         (let ((_next-probe59289_
                                (fx+ _start59270_
                                     _i59279_
                                     (fx* _i59279_ _i59279_))))
                           (fxmodulo _next-probe59289_ _size59264_))
                         (fx+ _i59279_ '1)
                         (let ((_$e59292_ _deleted59281_))
                           (if _$e59292_ _$e59292_ _probe59277_)))
                        (if (##string=? _key59254_ _k59284_)
                            (begin
                              (vector-set!
                               _table59258_
                               _probe59277_
                               _key59254_)
                              (vector-set!
                               _table59258_
                               (fx+ _probe59277_ '1)
                               _value59255_))
                            (_loop59274_
                             (let ((_next-probe59295_
                                    (fx+ _start59270_
                                         _i59279_
                                         (fx* _i59279_ _i59279_))))
                               (fxmodulo _next-probe59295_ _size59264_))
                             (fx+ _i59279_ '1)
                             _deleted59281_))))))))))
    (define string-table-update!
      (lambda (_tab59248_
               _key59249_
               _string-table-update!59250_
               _default59251_)
        (if (fx< (&raw-table-free _tab59248_)
                 (fxquotient (vector-length (&raw-table-table _tab59248_)) '4))
            (__raw-table-rehash! _tab59248_)
            '#!void)
        (__string-table-update!
         _tab59248_
         _key59249_
         _string-table-update!59250_
         _default59251_)))
    (define __string-table-update!
      (lambda (_tab59202_
               _key59203_
               _string-table-update!59204_
               _default59205_)
        (let ((_table59208_ (&raw-table-table _tab59202_))
              (_seed59209_ (&raw-table-seed _tab59202_)))
          (let* ((_h59211_ (fxxor (##string=?-hash _key59203_) _seed59209_))
                 (_size59214_ (vector-length _table59208_))
                 (_entries59217_ (fxquotient _size59214_ '2))
                 (_start59220_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59211_ _entries59217_)
                   '1)))
            (let _loop59224_ ((_probe59227_ _start59220_)
                              (_i59229_ '1)
                              (_deleted59231_ '#f))
              (let ((_k59234_ (vector-ref _table59208_ _probe59227_)))
                (if (eq? _k59234_ (macro-unused-obj))
                    (if _deleted59231_
                        (begin
                          (vector-set! _table59208_ _deleted59231_ _key59203_)
                          (vector-set!
                           _table59208_
                           (fx+ _deleted59231_ '1)
                           (_string-table-update!59204_ _default59205_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59202_
                              (fx+ (&raw-table-count _tab59202_) '1)))))
                        (begin
                          (vector-set! _table59208_ _probe59227_ _key59203_)
                          (vector-set!
                           _table59208_
                           (fx+ _probe59227_ '1)
                           (_string-table-update!59204_ _default59205_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59202_
                              (fx- (&raw-table-free _tab59202_) '1))
                             (&raw-table-count-set!
                              _tab59202_
                              (fx+ (&raw-table-count _tab59202_) '1))))))
                    (if (eq? _k59234_ (macro-deleted-obj))
                        (_loop59224_
                         (let ((_next-probe59239_
                                (fx+ _start59220_
                                     _i59229_
                                     (fx* _i59229_ _i59229_))))
                           (fxmodulo _next-probe59239_ _size59214_))
                         (fx+ _i59229_ '1)
                         (let ((_$e59242_ _deleted59231_))
                           (if _$e59242_ _$e59242_ _probe59227_)))
                        (if (##string=? _key59203_ _k59234_)
                            (begin
                              (vector-set!
                               _table59208_
                               _probe59227_
                               _key59203_)
                              (vector-set!
                               _table59208_
                               (fx+ _probe59227_ '1)
                               (_string-table-update!59204_
                                (vector-ref
                                 _table59208_
                                 (fx+ _probe59227_ '1)))))
                            (_loop59224_
                             (let ((_next-probe59245_
                                    (fx+ _start59220_
                                         _i59229_
                                         (fx* _i59229_ _i59229_))))
                               (fxmodulo _next-probe59245_ _size59214_))
                             (fx+ _i59229_ '1)
                             _deleted59231_))))))))))
    (define string-table-delete!
      (lambda (_tab59161_ _key59163_)
        (let ((_table59166_ (&raw-table-table _tab59161_))
              (_seed59168_ (&raw-table-seed _tab59161_)))
          (let* ((_h59171_ (fxxor (##string=?-hash _key59163_) _seed59168_))
                 (_size59174_ (vector-length _table59166_))
                 (_entries59177_ (fxquotient _size59174_ '2))
                 (_start59180_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59171_ _entries59177_)
                   '1)))
            (let _loop59184_ ((_probe59187_ _start59180_) (_i59189_ '1))
              (let ((_k59192_ (vector-ref _table59166_ _probe59187_)))
                (if (eq? _k59192_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59192_ (macro-deleted-obj))
                        (_loop59184_
                         (let ((_next-probe59195_
                                (fx+ _start59180_
                                     _i59189_
                                     (fx* _i59189_ _i59189_))))
                           (fxmodulo _next-probe59195_ _size59174_))
                         (fx+ _i59189_ '1))
                        (if (##string=? _key59163_ _k59192_)
                            (begin
                              (vector-set!
                               _table59166_
                               _probe59187_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59166_
                               (fx+ _probe59187_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59161_
                                  (fx- (&raw-table-count _tab59161_) '1)))))
                            (_loop59184_
                             (let ((_next-probe59199_
                                    (fx+ _start59180_
                                         _i59189_
                                         (fx* _i59189_ _i59189_))))
                               (fxmodulo _next-probe59199_ _size59174_))
                             (fx+ _i59189_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_size-hint59142_ _seed59144_)
        (make-raw-table__% _size-hint59142_ immediate-hash eq? _seed59144_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_size-hint59150_ '#f) (_seed59152_ '0))
          (make-immediate-table__% _size-hint59150_ _seed59152_))))
    (define make-immediate-table__1
      (lambda (_size-hint59154_)
        (let ((_seed59156_ '0))
          (make-immediate-table__% _size-hint59154_ _seed59156_))))
    (define make-immediate-table
      (lambda _g60298_
        (let ((_g60297_ (##length _g60298_)))
          (cond ((##fx= _g60297_ 0)
                 (apply (lambda () (make-immediate-table__0)) _g60298_))
                ((##fx= _g60297_ 1)
                 (apply (lambda (_size-hint59154_)
                          (make-immediate-table__1 _size-hint59154_))
                        _g60298_))
                ((##fx= _g60297_ 2)
                 (apply (lambda (_size-hint59158_ _seed59159_)
                          (make-immediate-table__%
                           _size-hint59158_
                           _seed59159_))
                        _g60298_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g60298_))))))
    (define immediate-table-ref
      (lambda (_tab59099_ _key59100_ _default59101_)
        (let ((_table59103_ (&raw-table-table _tab59099_))
              (_seed59104_ (&raw-table-seed _tab59099_)))
          (let* ((_h59106_ (fxxor (immediate-hash _key59100_) _seed59104_))
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
                    _default59101_
                    (if (eq? _k59129_ (macro-deleted-obj))
                        (_loop59119_
                         (let ((_next-probe59132_
                                (fx+ _start59115_
                                     _i59124_
                                     (fx* _i59124_ _i59124_))))
                           (fxmodulo _next-probe59132_ _size59109_))
                         (fx+ _i59124_ '1)
                         (let ((_$e59135_ _deleted59126_))
                           (if _$e59135_ _$e59135_ _probe59122_)))
                        (if (eq? _key59100_ _k59129_)
                            (vector-ref _table59103_ (fx+ _probe59122_ '1))
                            (_loop59119_
                             (let ((_next-probe59138_
                                    (fx+ _start59115_
                                         _i59124_
                                         (fx* _i59124_ _i59124_))))
                               (fxmodulo _next-probe59138_ _size59109_))
                             (fx+ _i59124_ '1)
                             _deleted59126_))))))))))
    (define immediate-table-set!
      (lambda (_tab59095_ _key59096_ _value59097_)
        (if (fx< (&raw-table-free _tab59095_)
                 (fxquotient (vector-length (&raw-table-table _tab59095_)) '4))
            (__raw-table-rehash! _tab59095_)
            '#!void)
        (__immediate-table-set! _tab59095_ _key59096_ _value59097_)))
    (define __immediate-table-set!
      (lambda (_tab59050_ _key59051_ _value59052_)
        (let ((_table59055_ (&raw-table-table _tab59050_))
              (_seed59056_ (&raw-table-seed _tab59050_)))
          (let* ((_h59058_ (fxxor (immediate-hash _key59051_) _seed59056_))
                 (_size59061_ (vector-length _table59055_))
                 (_entries59064_ (fxquotient _size59061_ '2))
                 (_start59067_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59058_ _entries59064_)
                   '1)))
            (let _loop59071_ ((_probe59074_ _start59067_)
                              (_i59076_ '1)
                              (_deleted59078_ '#f))
              (let ((_k59081_ (vector-ref _table59055_ _probe59074_)))
                (if (eq? _k59081_ (macro-unused-obj))
                    (if _deleted59078_
                        (begin
                          (vector-set! _table59055_ _deleted59078_ _key59051_)
                          (vector-set!
                           _table59055_
                           (fx+ _deleted59078_ '1)
                           _value59052_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59050_
                              (fx+ (&raw-table-count _tab59050_) '1)))))
                        (begin
                          (vector-set! _table59055_ _probe59074_ _key59051_)
                          (vector-set!
                           _table59055_
                           (fx+ _probe59074_ '1)
                           _value59052_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59050_
                              (fx- (&raw-table-free _tab59050_) '1))
                             (&raw-table-count-set!
                              _tab59050_
                              (fx+ (&raw-table-count _tab59050_) '1))))))
                    (if (eq? _k59081_ (macro-deleted-obj))
                        (_loop59071_
                         (let ((_next-probe59086_
                                (fx+ _start59067_
                                     _i59076_
                                     (fx* _i59076_ _i59076_))))
                           (fxmodulo _next-probe59086_ _size59061_))
                         (fx+ _i59076_ '1)
                         (let ((_$e59089_ _deleted59078_))
                           (if _$e59089_ _$e59089_ _probe59074_)))
                        (if (eq? _key59051_ _k59081_)
                            (begin
                              (vector-set!
                               _table59055_
                               _probe59074_
                               _key59051_)
                              (vector-set!
                               _table59055_
                               (fx+ _probe59074_ '1)
                               _value59052_))
                            (_loop59071_
                             (let ((_next-probe59092_
                                    (fx+ _start59067_
                                         _i59076_
                                         (fx* _i59076_ _i59076_))))
                               (fxmodulo _next-probe59092_ _size59061_))
                             (fx+ _i59076_ '1)
                             _deleted59078_))))))))))
    (define immediate-table-update!
      (lambda (_tab59045_
               _key59046_
               _immediate-table-update!59047_
               _default59048_)
        (if (fx< (&raw-table-free _tab59045_)
                 (fxquotient (vector-length (&raw-table-table _tab59045_)) '4))
            (__raw-table-rehash! _tab59045_)
            '#!void)
        (__immediate-table-update!
         _tab59045_
         _key59046_
         _immediate-table-update!59047_
         _default59048_)))
    (define __immediate-table-update!
      (lambda (_tab58999_
               _key59000_
               _immediate-table-update!59001_
               _default59002_)
        (let ((_table59005_ (&raw-table-table _tab58999_))
              (_seed59006_ (&raw-table-seed _tab58999_)))
          (let* ((_h59008_ (fxxor (immediate-hash _key59000_) _seed59006_))
                 (_size59011_ (vector-length _table59005_))
                 (_entries59014_ (fxquotient _size59011_ '2))
                 (_start59017_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59008_ _entries59014_)
                   '1)))
            (let _loop59021_ ((_probe59024_ _start59017_)
                              (_i59026_ '1)
                              (_deleted59028_ '#f))
              (let ((_k59031_ (vector-ref _table59005_ _probe59024_)))
                (if (eq? _k59031_ (macro-unused-obj))
                    (if _deleted59028_
                        (begin
                          (vector-set! _table59005_ _deleted59028_ _key59000_)
                          (vector-set!
                           _table59005_
                           (fx+ _deleted59028_ '1)
                           (_immediate-table-update!59001_ _default59002_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58999_
                              (fx+ (&raw-table-count _tab58999_) '1)))))
                        (begin
                          (vector-set! _table59005_ _probe59024_ _key59000_)
                          (vector-set!
                           _table59005_
                           (fx+ _probe59024_ '1)
                           (_immediate-table-update!59001_ _default59002_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58999_
                              (fx- (&raw-table-free _tab58999_) '1))
                             (&raw-table-count-set!
                              _tab58999_
                              (fx+ (&raw-table-count _tab58999_) '1))))))
                    (if (eq? _k59031_ (macro-deleted-obj))
                        (_loop59021_
                         (let ((_next-probe59036_
                                (fx+ _start59017_
                                     _i59026_
                                     (fx* _i59026_ _i59026_))))
                           (fxmodulo _next-probe59036_ _size59011_))
                         (fx+ _i59026_ '1)
                         (let ((_$e59039_ _deleted59028_))
                           (if _$e59039_ _$e59039_ _probe59024_)))
                        (if (eq? _key59000_ _k59031_)
                            (begin
                              (vector-set!
                               _table59005_
                               _probe59024_
                               _key59000_)
                              (vector-set!
                               _table59005_
                               (fx+ _probe59024_ '1)
                               (_immediate-table-update!59001_
                                (vector-ref
                                 _table59005_
                                 (fx+ _probe59024_ '1)))))
                            (_loop59021_
                             (let ((_next-probe59042_
                                    (fx+ _start59017_
                                         _i59026_
                                         (fx* _i59026_ _i59026_))))
                               (fxmodulo _next-probe59042_ _size59011_))
                             (fx+ _i59026_ '1)
                             _deleted59028_))))))))))
    (define immediate-table-delete!
      (lambda (_tab58958_ _key58960_)
        (let ((_table58963_ (&raw-table-table _tab58958_))
              (_seed58965_ (&raw-table-seed _tab58958_)))
          (let* ((_h58968_ (fxxor (immediate-hash _key58960_) _seed58965_))
                 (_size58971_ (vector-length _table58963_))
                 (_entries58974_ (fxquotient _size58971_ '2))
                 (_start58977_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58968_ _entries58974_)
                   '1)))
            (let _loop58981_ ((_probe58984_ _start58977_) (_i58986_ '1))
              (let ((_k58989_ (vector-ref _table58963_ _probe58984_)))
                (if (eq? _k58989_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k58989_ (macro-deleted-obj))
                        (_loop58981_
                         (let ((_next-probe58992_
                                (fx+ _start58977_
                                     _i58986_
                                     (fx* _i58986_ _i58986_))))
                           (fxmodulo _next-probe58992_ _size58971_))
                         (fx+ _i58986_ '1))
                        (if (eq? _key58960_ _k58989_)
                            (begin
                              (vector-set!
                               _table58963_
                               _probe58984_
                               (macro-deleted-obj))
                              (vector-set!
                               _table58963_
                               (fx+ _probe58984_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab58958_
                                  (fx- (&raw-table-count _tab58958_) '1)))))
                            (_loop58981_
                             (let ((_next-probe58996_
                                    (fx+ _start58977_
                                         _i58986_
                                         (fx* _i58986_ _i58986_))))
                               (fxmodulo _next-probe58996_ _size58971_))
                             (fx+ _i58986_ '1)))))))))))
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
      (lambda (_tab58956_)
        (##unchecked-structure-ref
         _tab58956_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_tab58954_)
        (##unchecked-structure-ref
         _tab58954_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_tab58951_ _val58952_)
        (##unchecked-structure-set!
         _tab58951_
         _val58952_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_tab58948_ _val58949_)
        (##unchecked-structure-set!
         _tab58948_
         _val58949_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_size-hint58924_ _klass58925_ _flags58926_)
        (let ((_gcht58928_
               (__gc-table-new
                (if (fixnum? _size-hint58924_) _size-hint58924_ '16)
                _flags58926_)))
          (##structure _klass58925_ _gcht58928_ '#f))))
    (define make-gc-table__0
      (lambda (_size-hint58933_)
        (let* ((_klass58935_ __gc-table::t) (_flags58937_ '0))
          (make-gc-table__% _size-hint58933_ _klass58935_ _flags58937_))))
    (define make-gc-table__1
      (lambda (_size-hint58939_ _klass58940_)
        (let ((_flags58942_ '0))
          (make-gc-table__% _size-hint58939_ _klass58940_ _flags58942_))))
    (define make-gc-table
      (lambda _g60300_
        (let ((_g60299_ (##length _g60300_)))
          (cond ((##fx= _g60299_ 1)
                 (apply (lambda (_size-hint58933_)
                          (make-gc-table__0 _size-hint58933_))
                        _g60300_))
                ((##fx= _g60299_ 2)
                 (apply (lambda (_size-hint58939_ _klass58940_)
                          (make-gc-table__1 _size-hint58939_ _klass58940_))
                        _g60300_))
                ((##fx= _g60299_ 3)
                 (apply (lambda (_size-hint58944_ _klass58945_ _flags58946_)
                          (make-gc-table__%
                           _size-hint58944_
                           _klass58945_
                           _flags58946_))
                        _g60300_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g60300_))))))
    (define __gc-table-immediate
      (lambda (_tab58916_)
        (let ((_$e58918_ (&gc-table-immediate _tab58916_)))
          (if _$e58918_
              _$e58918_
              (let ((_immediate58921_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _tab58916_ _immediate58921_)
                _immediate58921_)))))
    (define __gc-table-new
      (lambda (_size58906_ _flags58907_)
        (let* ((_flags58909_
                (fxand _flags58907_
                       (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_flags58911_
                (fxior _flags58909_ (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_gcht58913_
                (##gc-hash-table-allocate
                 _size58906_
                 _flags58911_
                 __gc-table-loads)))
          _gcht58913_)))
    (define __gc-table-e
      (lambda (_tab58901_)
        (declare (not interrupts-enabled))
        (let ((_gcht58904_ (&gc-table-gcht _tab58901_)))
          (if (fx= '0
                   (fxand (macro-gc-hash-table-flags _gcht58904_)
                          (macro-gc-hash-table-flag-need-rehash)))
              _gcht58904_
              (begin
                (__gc-table-rehash! _tab58901_)
                (&gc-table-gcht _tab58901_))))))
    (define __gc-table-rehash!
      (lambda (_tab58892_)
        (let* ((_old-table58894_ (&gc-table-gcht _tab58892_))
               (_new-table58896_
                (##gc-hash-table-resize! _old-table58894_ __gc-table-loads))
               (_gcht58898_
                (##gc-hash-table-rehash! _old-table58894_ _new-table58896_)))
          (&gc-table-gcht-set! _tab58892_ _gcht58898_))))
    (define gc-table-ref
      (lambda (_tab58878_ _key58879_ _default58880_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key58879_)
            (let* ((_gcht58883_ (__gc-table-e _tab58878_))
                   (_value58885_ (##gc-hash-table-ref _gcht58883_ _key58879_)))
              (if (eq? _value58885_ (macro-unused-obj))
                  _default58880_
                  _value58885_))
            (let ((_$e58887_ (&gc-table-immediate _tab58878_)))
              (if _$e58887_
                  ((lambda (_immediate58890_)
                     (immediate-table-ref
                      _immediate58890_
                      _key58879_
                      _default58880_))
                   _$e58887_)
                  _default58880_)))))
    (define gc-table-set!
      (lambda (_tab58871_ _key58872_ _value58873_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key58872_)
            (let ((_gcht58876_ (__gc-table-e _tab58871_)))
              (if (##gc-hash-table-set! _gcht58876_ _key58872_ _value58873_)
                  (begin
                    (__gc-table-rehash! _tab58871_)
                    (gc-table-set! _tab58871_ _key58872_ _value58873_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _tab58871_)
             _key58872_
             _value58873_))))
    (define gc-table-update!
      (lambda (_tab58864_ _key58865_ _update58866_ _default58867_)
        (if (##mem-allocated? _key58865_)
            (let ((_value58869_
                   (gc-table-ref _tab58864_ _key58865_ _default58867_)))
              (gc-table-set!
               _tab58864_
               _key58865_
               (_update58866_ _value58869_)))
            (immediate-table-update!
             (__gc-table-immediate _tab58864_)
             _key58865_
             _update58866_
             _default58867_))))
    (define gc-table-delete!
      (lambda (_tab58853_ _key58854_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key58854_)
            (let ((_gcht58857_ (__gc-table-e _tab58853_)))
              (if (##gc-hash-table-set!
                   _gcht58857_
                   _key58854_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _tab58853_)
                    (gc-table-delete! _tab58853_ _key58854_))
                  '#!void))
            (let ((_$e58859_ (&gc-table-immediate _tab58853_)))
              (if _$e58859_
                  ((lambda (_immediate58862_)
                     (immediate-table-delete! _immediate58862_ _key58854_))
                   _$e58859_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_tab58834_ _proc58835_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_gcht58838_ (__gc-table-e _tab58834_)))
            (let _loop58840_ ((_i58842_ (macro-gc-hash-table-key0)))
              (if (fx< _i58842_ (##vector-length _gcht58838_))
                  (let ((_key58844_ (##vector-ref _gcht58838_ _i58842_)))
                    (if (and (not (eq? _key58844_ (macro-unused-obj)))
                             (not (eq? _key58844_ (macro-deleted-obj))))
                        (_proc58835_
                         _key58844_
                         (##vector-ref _gcht58838_ (fx+ _i58842_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_loop58840_ (fx+ _i58842_ '2))))
                  '#!void)))
          (let ((_$e58848_ (&gc-table-immediate _tab58834_)))
            (if _$e58848_
                ((lambda (_immediate58851_)
                   (raw-table-for-each _immediate58851_ _proc58835_))
                 _$e58848_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_tab58822_)
        (let* ((_gcht58824_ (__gc-table-e _tab58822_))
               (_new-table58826_
                (__gc-table-new
                 (macro-gc-hash-table-count _gcht58824_)
                 (macro-gc-hash-table-flags _gcht58824_)))
               (_result58828_
                (##structure
                 (##structure-type _tab58822_)
                 _new-table58826_
                 '#f)))
          (gc-table-for-each
           _tab58822_
           (lambda (_k58831_ _v58832_)
             (gc-table-set! _result58828_ _k58831_ _v58832_)))
          _result58828_)))
    (define gc-table-clear!
      (lambda (_tab58815_)
        (let* ((_gcht58817_ (__gc-table-e _tab58815_))
               (_new-table58819_
                (__gc-table-new '16 (macro-gc-hash-table-flags _gcht58817_))))
          (&gc-table-gcht-set! _tab58815_ _new-table58819_)
          (&gc-table-immediate-set! _tab58815_ '#f))))
    (define gc-table-length
      (lambda (_tab58808_)
        (let ((_gcht58810_ (__gc-table-e _tab58808_)))
          (fx+ (macro-gc-hash-table-count _gcht58810_)
               (let ((_$e58812_ (&gc-table-immediate _tab58808_)))
                 (if _$e58812_ (&raw-table-count _$e58812_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_obj58793_)
        (declare (not interrupts-enabled))
        (let ((_val58796_ (gc-table-ref __object-eq-hash _obj58793_ '#f)))
          (if _val58796_
              _val58796_
              (let* ((_mix58798_ __object-eq-hash-next)
                     (_ptr58800_ (##type-cast _obj58793_ '0))
                     (_h58802_
                      (fxand (fxxor _mix58798_ _ptr58800_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_$e58805_ (##fx+? __object-eq-hash-next '1)))
                        (if _$e58805_ _$e58805_ '0)))
                (gc-table-set! __object-eq-hash _obj58793_ _h58802_)
                _h58802_)))))))
