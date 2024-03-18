(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1710715074)
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
      (lambda (_tab60391_)
        (##unchecked-structure-ref _tab60391_ '1 __table::t 'raw-table-table)))
    (define &raw-table-count
      (lambda (_tab60389_)
        (##unchecked-structure-ref _tab60389_ '2 __table::t 'raw-table-count)))
    (define &raw-table-free
      (lambda (_tab60387_)
        (##unchecked-structure-ref _tab60387_ '3 __table::t 'raw-table-free)))
    (define &raw-table-hash
      (lambda (_tab60385_)
        (##unchecked-structure-ref _tab60385_ '4 __table::t 'raw-table-hash)))
    (define &raw-table-test
      (lambda (_tab60383_)
        (##unchecked-structure-ref _tab60383_ '5 __table::t 'raw-table-test)))
    (define &raw-table-seed
      (lambda (_tab60381_)
        (##unchecked-structure-ref _tab60381_ '6 __table::t 'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_tab60378_ _val60379_)
        (##unchecked-structure-set!
         _tab60378_
         _val60379_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_tab60375_ _val60376_)
        (##unchecked-structure-set!
         _tab60375_
         _val60376_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_tab60372_ _val60373_)
        (##unchecked-structure-set!
         _tab60372_
         _val60373_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_tab60369_ _val60370_)
        (##unchecked-structure-set!
         _tab60369_
         _val60370_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_tab60366_ _val60367_)
        (##unchecked-structure-set!
         _tab60366_
         _val60367_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_tab60363_ _val60364_)
        (##unchecked-structure-set!
         _tab60363_
         _val60364_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_size-hint60361_)
        (if (and (fixnum? _size-hint60361_) (fx> _size-hint60361_ '0))
            (fx* (fxmax '2 (expt '2 (integer-length _size-hint60361_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_size-hint60337_ _hash60338_ _test60339_ _seed60340_)
        (let* ((_size60342_ (raw-table-size-hint->size _size-hint60337_))
               (_table60344_ (make-vector _size60342_ (macro-unused-obj))))
          (##structure
           __table::t
           _table60344_
           '0
           (fxquotient _size60342_ '2)
           _hash60338_
           _test60339_
           _seed60340_))))
    (define make-raw-table__0
      (lambda (_size-hint60350_ _hash60351_ _test60352_)
        (let ((_seed60354_ '0))
          (make-raw-table__%
           _size-hint60350_
           _hash60351_
           _test60352_
           _seed60354_))))
    (define make-raw-table
      (lambda _g60393_
        (let ((_g60392_ (##length _g60393_)))
          (cond ((##fx= _g60392_ 3)
                 (apply (lambda (_size-hint60350_ _hash60351_ _test60352_)
                          (make-raw-table__0
                           _size-hint60350_
                           _hash60351_
                           _test60352_))
                        _g60393_))
                ((##fx= _g60392_ 4)
                 (apply (lambda (_size-hint60356_
                                 _hash60357_
                                 _test60358_
                                 _seed60359_)
                          (make-raw-table__%
                           _size-hint60356_
                           _hash60357_
                           _test60358_
                           _seed60359_))
                        _g60393_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g60393_))))))
    (define raw-table-ref
      (lambda (_tab60292_ _key60293_ _default60294_)
        (let ((_table60296_ (&raw-table-table _tab60292_))
              (_seed60297_ (&raw-table-seed _tab60292_))
              (_hash60298_ (&raw-table-hash _tab60292_))
              (_test60299_ (&raw-table-test _tab60292_)))
          (let* ((_h60301_ (fxxor (_hash60298_ _key60293_) _seed60297_))
                 (_size60304_ (vector-length _table60296_))
                 (_entries60307_ (fxquotient _size60304_ '2))
                 (_start60310_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60301_ _entries60307_)
                   '1)))
            (let _loop60314_ ((_probe60317_ _start60310_)
                              (_i60319_ '1)
                              (_deleted60321_ '#f))
              (let ((_k60324_ (vector-ref _table60296_ _probe60317_)))
                (if (eq? _k60324_ (macro-unused-obj))
                    _default60294_
                    (if (eq? _k60324_ (macro-deleted-obj))
                        (_loop60314_
                         (let ((_next-probe60327_
                                (fx+ _start60310_
                                     _i60319_
                                     (fx* _i60319_ _i60319_))))
                           (fxmodulo _next-probe60327_ _size60304_))
                         (fx+ _i60319_ '1)
                         (let ((_$e60330_ _deleted60321_))
                           (if _$e60330_ _$e60330_ _probe60317_)))
                        (if (_test60299_ _key60293_ _k60324_)
                            (vector-ref _table60296_ (fx+ _probe60317_ '1))
                            (_loop60314_
                             (let ((_next-probe60333_
                                    (fx+ _start60310_
                                         _i60319_
                                         (fx* _i60319_ _i60319_))))
                               (fxmodulo _next-probe60333_ _size60304_))
                             (fx+ _i60319_ '1)
                             _deleted60321_))))))))))
    (define raw-table-set!
      (lambda (_tab60288_ _key60289_ _value60290_)
        (if (fx< (&raw-table-free _tab60288_)
                 (fxquotient (vector-length (&raw-table-table _tab60288_)) '4))
            (__raw-table-rehash! _tab60288_)
            '#!void)
        (__raw-table-set! _tab60288_ _key60289_ _value60290_)))
    (define raw-table-update!
      (lambda (_tab60283_ _key60284_ _update60285_ _default60286_)
        (if (fx< (&raw-table-free _tab60283_)
                 (fxquotient (vector-length (&raw-table-table _tab60283_)) '4))
            (__raw-table-rehash! _tab60283_)
            '#!void)
        (__raw-table-update!
         _tab60283_
         _key60284_
         _update60285_
         _default60286_)))
    (define raw-table-delete!
      (lambda (_tab60244_ _key60245_)
        (let ((_table60247_ (&raw-table-table _tab60244_))
              (_seed60248_ (&raw-table-seed _tab60244_))
              (_hash60249_ (&raw-table-hash _tab60244_))
              (_test60250_ (&raw-table-test _tab60244_)))
          (let* ((_h60252_ (fxxor (_hash60249_ _key60245_) _seed60248_))
                 (_size60255_ (vector-length _table60247_))
                 (_entries60258_ (fxquotient _size60255_ '2))
                 (_start60261_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60252_ _entries60258_)
                   '1)))
            (let _loop60265_ ((_probe60268_ _start60261_) (_i60270_ '1))
              (let ((_k60273_ (vector-ref _table60247_ _probe60268_)))
                (if (eq? _k60273_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k60273_ (macro-deleted-obj))
                        (_loop60265_
                         (let ((_next-probe60276_
                                (fx+ _start60261_
                                     _i60270_
                                     (fx* _i60270_ _i60270_))))
                           (fxmodulo _next-probe60276_ _size60255_))
                         (fx+ _i60270_ '1))
                        (if (_test60250_ _key60245_ _k60273_)
                            (begin
                              (vector-set!
                               _table60247_
                               _probe60268_
                               (macro-deleted-obj))
                              (vector-set!
                               _table60247_
                               (fx+ _probe60268_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab60244_
                                  (fx- (&raw-table-count _tab60244_) '1)))))
                            (_loop60265_
                             (let ((_next-probe60280_
                                    (fx+ _start60261_
                                         _i60270_
                                         (fx* _i60270_ _i60270_))))
                               (fxmodulo _next-probe60280_ _size60255_))
                             (fx+ _i60270_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_tab60228_ _proc60229_)
        (let* ((_table60231_ (&raw-table-table _tab60228_))
               (_size60233_ (vector-length _table60231_)))
          (let _loop60236_ ((_i60238_ '0))
            (if (fx< _i60238_ _size60233_)
                (begin
                  (let ((_key60240_ (vector-ref _table60231_ _i60238_)))
                    (if (and (not (eq? _key60240_ (macro-unused-obj)))
                             (not (eq? _key60240_ (macro-deleted-obj))))
                        (let ((_value60242_
                               (vector-ref _table60231_ (fx+ _i60238_ '1))))
                          (_proc60229_ _key60240_ _value60242_))
                        '#!void))
                  (_loop60236_ (fx+ _i60238_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_tab60224_)
        (let ((_new-tab60226_ (##structure-copy _tab60224_)))
          (&raw-table-table-set!
           _new-tab60226_
           (vector-copy (&raw-table-table _tab60224_)))
          _new-tab60226_)))
    (define raw-table-clear!
      (lambda (_tab60222_)
        (vector-fill! (&raw-table-table _tab60222_) (macro-unused-obj))
        (&raw-table-count-set! _tab60222_ '0)
        (&raw-table-free-set!
         _tab60222_
         (fxquotient (vector-length (&raw-table-table _tab60222_)) '2))))
    (define __raw-table-set!
      (lambda (_tab60176_ _key60177_ _value60178_)
        (let ((_table60180_ (&raw-table-table _tab60176_))
              (_seed60181_ (&raw-table-seed _tab60176_))
              (_hash60182_ (&raw-table-hash _tab60176_))
              (_test60183_ (&raw-table-test _tab60176_)))
          (let* ((_h60185_ (fxxor (_hash60182_ _key60177_) _seed60181_))
                 (_size60188_ (vector-length _table60180_))
                 (_entries60191_ (fxquotient _size60188_ '2))
                 (_start60194_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60185_ _entries60191_)
                   '1)))
            (let _loop60198_ ((_probe60201_ _start60194_)
                              (_i60203_ '1)
                              (_deleted60205_ '#f))
              (let ((_k60208_ (vector-ref _table60180_ _probe60201_)))
                (if (eq? _k60208_ (macro-unused-obj))
                    (if _deleted60205_
                        (begin
                          (vector-set! _table60180_ _deleted60205_ _key60177_)
                          (vector-set!
                           _table60180_
                           (fx+ _deleted60205_ '1)
                           _value60178_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab60176_
                              (fx+ (&raw-table-count _tab60176_) '1)))))
                        (begin
                          (vector-set! _table60180_ _probe60201_ _key60177_)
                          (vector-set!
                           _table60180_
                           (fx+ _probe60201_ '1)
                           _value60178_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab60176_
                              (fx- (&raw-table-free _tab60176_) '1))
                             (&raw-table-count-set!
                              _tab60176_
                              (fx+ (&raw-table-count _tab60176_) '1))))))
                    (if (eq? _k60208_ (macro-deleted-obj))
                        (_loop60198_
                         (let ((_next-probe60213_
                                (fx+ _start60194_
                                     _i60203_
                                     (fx* _i60203_ _i60203_))))
                           (fxmodulo _next-probe60213_ _size60188_))
                         (fx+ _i60203_ '1)
                         (let ((_$e60216_ _deleted60205_))
                           (if _$e60216_ _$e60216_ _probe60201_)))
                        (if (_test60183_ _key60177_ _k60208_)
                            (begin
                              (vector-set!
                               _table60180_
                               _probe60201_
                               _key60177_)
                              (vector-set!
                               _table60180_
                               (fx+ _probe60201_ '1)
                               _value60178_))
                            (_loop60198_
                             (let ((_next-probe60219_
                                    (fx+ _start60194_
                                         _i60203_
                                         (fx* _i60203_ _i60203_))))
                               (fxmodulo _next-probe60219_ _size60188_))
                             (fx+ _i60203_ '1)
                             _deleted60205_))))))))))
    (define __raw-table-update!
      (lambda (_tab60129_ _key60130_ _update60131_ _default60132_)
        (let ((_table60134_ (&raw-table-table _tab60129_))
              (_seed60135_ (&raw-table-seed _tab60129_))
              (_hash60136_ (&raw-table-hash _tab60129_))
              (_test60137_ (&raw-table-test _tab60129_)))
          (let* ((_h60139_ (fxxor (_hash60136_ _key60130_) _seed60135_))
                 (_size60142_ (vector-length _table60134_))
                 (_entries60145_ (fxquotient _size60142_ '2))
                 (_start60148_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60139_ _entries60145_)
                   '1)))
            (let _loop60152_ ((_probe60155_ _start60148_)
                              (_i60157_ '1)
                              (_deleted60159_ '#f))
              (let ((_k60162_ (vector-ref _table60134_ _probe60155_)))
                (if (eq? _k60162_ (macro-unused-obj))
                    (if _deleted60159_
                        (begin
                          (vector-set! _table60134_ _deleted60159_ _key60130_)
                          (vector-set!
                           _table60134_
                           (fx+ _deleted60159_ '1)
                           (_update60131_ _default60132_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab60129_
                              (fx+ (&raw-table-count _tab60129_) '1)))))
                        (begin
                          (vector-set! _table60134_ _probe60155_ _key60130_)
                          (vector-set!
                           _table60134_
                           (fx+ _probe60155_ '1)
                           (_update60131_ _default60132_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab60129_
                              (fx- (&raw-table-free _tab60129_) '1))
                             (&raw-table-count-set!
                              _tab60129_
                              (fx+ (&raw-table-count _tab60129_) '1))))))
                    (if (eq? _k60162_ (macro-deleted-obj))
                        (_loop60152_
                         (let ((_next-probe60167_
                                (fx+ _start60148_
                                     _i60157_
                                     (fx* _i60157_ _i60157_))))
                           (fxmodulo _next-probe60167_ _size60142_))
                         (fx+ _i60157_ '1)
                         (let ((_$e60170_ _deleted60159_))
                           (if _$e60170_ _$e60170_ _probe60155_)))
                        (if (_test60137_ _key60130_ _k60162_)
                            (begin
                              (vector-set!
                               _table60134_
                               _probe60155_
                               _key60130_)
                              (vector-set!
                               _table60134_
                               (fx+ _probe60155_ '1)
                               (_update60131_
                                (vector-ref
                                 _table60134_
                                 (fx+ _probe60155_ '1)))))
                            (_loop60152_
                             (let ((_next-probe60173_
                                    (fx+ _start60148_
                                         _i60157_
                                         (fx* _i60157_ _i60157_))))
                               (fxmodulo _next-probe60173_ _size60142_))
                             (fx+ _i60157_ '1)
                             _deleted60159_))))))))))
    (define __raw-table-rehash!
      (lambda (_tab60110_)
        (let* ((_old-table60112_ (&raw-table-table _tab60110_))
               (_old-size60114_ (vector-length _old-table60112_))
               (_new-size60116_
                (if (fx< (&raw-table-count _tab60110_)
                         (fxquotient _old-size60114_ '4))
                    (vector-length _old-table60112_)
                    (fx* '2 (vector-length _old-table60112_))))
               (_new-table60118_
                (make-vector _new-size60116_ (macro-unused-obj))))
          (&raw-table-table-set! _tab60110_ _new-table60118_)
          (&raw-table-count-set! _tab60110_ '0)
          (&raw-table-free-set! _tab60110_ (fxquotient _new-size60116_ '2))
          (let _lp60121_ ((_i60123_ '0))
            (if (fx< _i60123_ _old-size60114_)
                (begin
                  (let ((_key60125_ (vector-ref _old-table60112_ _i60123_)))
                    (if (and (not (eq? _key60125_ (macro-unused-obj)))
                             (not (eq? _key60125_ (macro-deleted-obj))))
                        (let ((_value60127_
                               (vector-ref
                                _old-table60112_
                                (fx+ _i60123_ '1))))
                          (__raw-table-set!
                           _tab60110_
                           _key60125_
                           _value60127_))
                        '#!void))
                  (_lp60121_ (fx+ _i60123_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_obj60106_)
        (let ((_t60108_ (##type _obj60106_)))
          (if (fx= (fxand _t60108_ '1) '0)
              (fxand (##type-cast _obj60106_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _obj60106_)
                  (symbolic-hash _obj60106_)
                  (if (procedure? _obj60106_)
                      (procedure-hash _obj60106_)
                      (fxand (__eq-hash _obj60106_) (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_obj60102_)
        (let ((_h60104_
               (if (##closure? _obj60102_)
                   (__eq-hash _obj60102_)
                   (##type-cast _obj60102_ '0))))
          (fxand _h60104_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_obj60099_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _obj60099_)))
    (define eqv-hash
      (lambda (_obj60089_)
        (letrec ((_combine60091_
                  (lambda (_a60096_ _b60097_)
                    (fxand (fx* (fx+ _a60096_
                                     (fxarithmetic-shift-left _b60097_ '1))
                                '331804471)
                           (macro-max-fixnum32))))
                 (_hash60092_
                  (lambda (_obj60094_)
                    (macro-number-dispatch
                     _obj60094_
                     (eq-hash _obj60094_)
                     (fxand _obj60094_ (macro-max-fixnum32))
                     (modulo _obj60094_ '331804481)
                     (_combine60091_
                      (_hash60092_ (macro-ratnum-numerator _obj60094_))
                      (_hash60092_ (macro-ratnum-denominator _obj60094_)))
                     (_combine60091_
                      (##u16vector-ref _obj60094_ '0)
                      (_combine60091_
                       (##u16vector-ref _obj60094_ '1)
                       (_combine60091_
                        (##u16vector-ref _obj60094_ '2)
                        (##u16vector-ref _obj60094_ '3))))
                     (_combine60091_
                      (_hash60092_ (macro-cpxnum-real _obj60094_))
                      (_hash60092_ (macro-cpxnum-imag _obj60094_)))))))
          (_hash60092_ _obj60089_))))
    (define symbolic?
      (lambda (_obj60084_)
        (let ((_$e60086_ (symbol? _obj60084_)))
          (if _$e60086_ _$e60086_ (keyword? _obj60084_)))))
    (define symbolic-hash (lambda (_obj60082_) (macro-slot '1 _obj60082_)))
    (define string-hash (lambda (_obj60080_) (##string=?-hash _obj60080_)))
    (define immediate-hash
      (lambda (_obj60078_) (##type-cast _obj60078_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_size-hint60059_ _seed60061_)
        (make-raw-table__% _size-hint60059_ eq-hash eq? _seed60061_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_size-hint60067_ '#f) (_seed60069_ '0))
          (make-eq-table__% _size-hint60067_ _seed60069_))))
    (define make-eq-table__1
      (lambda (_size-hint60071_)
        (let ((_seed60073_ '0))
          (make-eq-table__% _size-hint60071_ _seed60073_))))
    (define make-eq-table
      (lambda _g60395_
        (let ((_g60394_ (##length _g60395_)))
          (cond ((##fx= _g60394_ 0)
                 (apply (lambda () (make-eq-table__0)) _g60395_))
                ((##fx= _g60394_ 1)
                 (apply (lambda (_size-hint60071_)
                          (make-eq-table__1 _size-hint60071_))
                        _g60395_))
                ((##fx= _g60394_ 2)
                 (apply (lambda (_size-hint60075_ _seed60076_)
                          (make-eq-table__% _size-hint60075_ _seed60076_))
                        _g60395_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g60395_))))))
    (define eq-table-ref
      (lambda (_tab60016_ _key60017_ _default60018_)
        (let ((_table60020_ (&raw-table-table _tab60016_))
              (_seed60021_ (&raw-table-seed _tab60016_)))
          (let* ((_h60023_ (fxxor (eq-hash _key60017_) _seed60021_))
                 (_size60026_ (vector-length _table60020_))
                 (_entries60029_ (fxquotient _size60026_ '2))
                 (_start60032_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60023_ _entries60029_)
                   '1)))
            (let _loop60036_ ((_probe60039_ _start60032_)
                              (_i60041_ '1)
                              (_deleted60043_ '#f))
              (let ((_k60046_ (vector-ref _table60020_ _probe60039_)))
                (if (eq? _k60046_ (macro-unused-obj))
                    _default60018_
                    (if (eq? _k60046_ (macro-deleted-obj))
                        (_loop60036_
                         (let ((_next-probe60049_
                                (fx+ _start60032_
                                     _i60041_
                                     (fx* _i60041_ _i60041_))))
                           (fxmodulo _next-probe60049_ _size60026_))
                         (fx+ _i60041_ '1)
                         (let ((_$e60052_ _deleted60043_))
                           (if _$e60052_ _$e60052_ _probe60039_)))
                        (if (eq? _key60017_ _k60046_)
                            (vector-ref _table60020_ (fx+ _probe60039_ '1))
                            (_loop60036_
                             (let ((_next-probe60055_
                                    (fx+ _start60032_
                                         _i60041_
                                         (fx* _i60041_ _i60041_))))
                               (fxmodulo _next-probe60055_ _size60026_))
                             (fx+ _i60041_ '1)
                             _deleted60043_))))))))))
    (define eq-table-set!
      (lambda (_tab60012_ _key60013_ _value60014_)
        (if (fx< (&raw-table-free _tab60012_)
                 (fxquotient (vector-length (&raw-table-table _tab60012_)) '4))
            (__raw-table-rehash! _tab60012_)
            '#!void)
        (__eq-table-set! _tab60012_ _key60013_ _value60014_)))
    (define __eq-table-set!
      (lambda (_tab59967_ _key59968_ _value59969_)
        (let ((_table59972_ (&raw-table-table _tab59967_))
              (_seed59973_ (&raw-table-seed _tab59967_)))
          (let* ((_h59975_ (fxxor (eq-hash _key59968_) _seed59973_))
                 (_size59978_ (vector-length _table59972_))
                 (_entries59981_ (fxquotient _size59978_ '2))
                 (_start59984_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59975_ _entries59981_)
                   '1)))
            (let _loop59988_ ((_probe59991_ _start59984_)
                              (_i59993_ '1)
                              (_deleted59995_ '#f))
              (let ((_k59998_ (vector-ref _table59972_ _probe59991_)))
                (if (eq? _k59998_ (macro-unused-obj))
                    (if _deleted59995_
                        (begin
                          (vector-set! _table59972_ _deleted59995_ _key59968_)
                          (vector-set!
                           _table59972_
                           (fx+ _deleted59995_ '1)
                           _value59969_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59967_
                              (fx+ (&raw-table-count _tab59967_) '1)))))
                        (begin
                          (vector-set! _table59972_ _probe59991_ _key59968_)
                          (vector-set!
                           _table59972_
                           (fx+ _probe59991_ '1)
                           _value59969_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59967_
                              (fx- (&raw-table-free _tab59967_) '1))
                             (&raw-table-count-set!
                              _tab59967_
                              (fx+ (&raw-table-count _tab59967_) '1))))))
                    (if (eq? _k59998_ (macro-deleted-obj))
                        (_loop59988_
                         (let ((_next-probe60003_
                                (fx+ _start59984_
                                     _i59993_
                                     (fx* _i59993_ _i59993_))))
                           (fxmodulo _next-probe60003_ _size59978_))
                         (fx+ _i59993_ '1)
                         (let ((_$e60006_ _deleted59995_))
                           (if _$e60006_ _$e60006_ _probe59991_)))
                        (if (eq? _key59968_ _k59998_)
                            (begin
                              (vector-set!
                               _table59972_
                               _probe59991_
                               _key59968_)
                              (vector-set!
                               _table59972_
                               (fx+ _probe59991_ '1)
                               _value59969_))
                            (_loop59988_
                             (let ((_next-probe60009_
                                    (fx+ _start59984_
                                         _i59993_
                                         (fx* _i59993_ _i59993_))))
                               (fxmodulo _next-probe60009_ _size59978_))
                             (fx+ _i59993_ '1)
                             _deleted59995_))))))))))
    (define eq-table-update!
      (lambda (_tab59962_ _key59963_ _eq-table-update!59964_ _default59965_)
        (if (fx< (&raw-table-free _tab59962_)
                 (fxquotient (vector-length (&raw-table-table _tab59962_)) '4))
            (__raw-table-rehash! _tab59962_)
            '#!void)
        (__eq-table-update!
         _tab59962_
         _key59963_
         _eq-table-update!59964_
         _default59965_)))
    (define __eq-table-update!
      (lambda (_tab59916_ _key59917_ _eq-table-update!59918_ _default59919_)
        (let ((_table59922_ (&raw-table-table _tab59916_))
              (_seed59923_ (&raw-table-seed _tab59916_)))
          (let* ((_h59925_ (fxxor (eq-hash _key59917_) _seed59923_))
                 (_size59928_ (vector-length _table59922_))
                 (_entries59931_ (fxquotient _size59928_ '2))
                 (_start59934_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59925_ _entries59931_)
                   '1)))
            (let _loop59938_ ((_probe59941_ _start59934_)
                              (_i59943_ '1)
                              (_deleted59945_ '#f))
              (let ((_k59948_ (vector-ref _table59922_ _probe59941_)))
                (if (eq? _k59948_ (macro-unused-obj))
                    (if _deleted59945_
                        (begin
                          (vector-set! _table59922_ _deleted59945_ _key59917_)
                          (vector-set!
                           _table59922_
                           (fx+ _deleted59945_ '1)
                           (_eq-table-update!59918_ _default59919_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59916_
                              (fx+ (&raw-table-count _tab59916_) '1)))))
                        (begin
                          (vector-set! _table59922_ _probe59941_ _key59917_)
                          (vector-set!
                           _table59922_
                           (fx+ _probe59941_ '1)
                           (_eq-table-update!59918_ _default59919_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59916_
                              (fx- (&raw-table-free _tab59916_) '1))
                             (&raw-table-count-set!
                              _tab59916_
                              (fx+ (&raw-table-count _tab59916_) '1))))))
                    (if (eq? _k59948_ (macro-deleted-obj))
                        (_loop59938_
                         (let ((_next-probe59953_
                                (fx+ _start59934_
                                     _i59943_
                                     (fx* _i59943_ _i59943_))))
                           (fxmodulo _next-probe59953_ _size59928_))
                         (fx+ _i59943_ '1)
                         (let ((_$e59956_ _deleted59945_))
                           (if _$e59956_ _$e59956_ _probe59941_)))
                        (if (eq? _key59917_ _k59948_)
                            (begin
                              (vector-set!
                               _table59922_
                               _probe59941_
                               _key59917_)
                              (vector-set!
                               _table59922_
                               (fx+ _probe59941_ '1)
                               (_eq-table-update!59918_
                                (vector-ref
                                 _table59922_
                                 (fx+ _probe59941_ '1)))))
                            (_loop59938_
                             (let ((_next-probe59959_
                                    (fx+ _start59934_
                                         _i59943_
                                         (fx* _i59943_ _i59943_))))
                               (fxmodulo _next-probe59959_ _size59928_))
                             (fx+ _i59943_ '1)
                             _deleted59945_))))))))))
    (define eq-table-delete!
      (lambda (_tab59875_ _key59877_)
        (let ((_table59880_ (&raw-table-table _tab59875_))
              (_seed59882_ (&raw-table-seed _tab59875_)))
          (let* ((_h59885_ (fxxor (eq-hash _key59877_) _seed59882_))
                 (_size59888_ (vector-length _table59880_))
                 (_entries59891_ (fxquotient _size59888_ '2))
                 (_start59894_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59885_ _entries59891_)
                   '1)))
            (let _loop59898_ ((_probe59901_ _start59894_) (_i59903_ '1))
              (let ((_k59906_ (vector-ref _table59880_ _probe59901_)))
                (if (eq? _k59906_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59906_ (macro-deleted-obj))
                        (_loop59898_
                         (let ((_next-probe59909_
                                (fx+ _start59894_
                                     _i59903_
                                     (fx* _i59903_ _i59903_))))
                           (fxmodulo _next-probe59909_ _size59888_))
                         (fx+ _i59903_ '1))
                        (if (eq? _key59877_ _k59906_)
                            (begin
                              (vector-set!
                               _table59880_
                               _probe59901_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59880_
                               (fx+ _probe59901_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59875_
                                  (fx- (&raw-table-count _tab59875_) '1)))))
                            (_loop59898_
                             (let ((_next-probe59913_
                                    (fx+ _start59894_
                                         _i59903_
                                         (fx* _i59903_ _i59903_))))
                               (fxmodulo _next-probe59913_ _size59888_))
                             (fx+ _i59903_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_size-hint59856_ _seed59858_)
        (make-raw-table__% _size-hint59856_ eqv-hash eqv? _seed59858_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_size-hint59864_ '#f) (_seed59866_ '0))
          (make-eqv-table__% _size-hint59864_ _seed59866_))))
    (define make-eqv-table__1
      (lambda (_size-hint59868_)
        (let ((_seed59870_ '0))
          (make-eqv-table__% _size-hint59868_ _seed59870_))))
    (define make-eqv-table
      (lambda _g60397_
        (let ((_g60396_ (##length _g60397_)))
          (cond ((##fx= _g60396_ 0)
                 (apply (lambda () (make-eqv-table__0)) _g60397_))
                ((##fx= _g60396_ 1)
                 (apply (lambda (_size-hint59868_)
                          (make-eqv-table__1 _size-hint59868_))
                        _g60397_))
                ((##fx= _g60396_ 2)
                 (apply (lambda (_size-hint59872_ _seed59873_)
                          (make-eqv-table__% _size-hint59872_ _seed59873_))
                        _g60397_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g60397_))))))
    (define eqv-table-ref
      (lambda (_tab59813_ _key59814_ _default59815_)
        (let ((_table59817_ (&raw-table-table _tab59813_))
              (_seed59818_ (&raw-table-seed _tab59813_)))
          (let* ((_h59820_ (fxxor (eqv-hash _key59814_) _seed59818_))
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
                    _default59815_
                    (if (eq? _k59843_ (macro-deleted-obj))
                        (_loop59833_
                         (let ((_next-probe59846_
                                (fx+ _start59829_
                                     _i59838_
                                     (fx* _i59838_ _i59838_))))
                           (fxmodulo _next-probe59846_ _size59823_))
                         (fx+ _i59838_ '1)
                         (let ((_$e59849_ _deleted59840_))
                           (if _$e59849_ _$e59849_ _probe59836_)))
                        (if (eqv? _key59814_ _k59843_)
                            (vector-ref _table59817_ (fx+ _probe59836_ '1))
                            (_loop59833_
                             (let ((_next-probe59852_
                                    (fx+ _start59829_
                                         _i59838_
                                         (fx* _i59838_ _i59838_))))
                               (fxmodulo _next-probe59852_ _size59823_))
                             (fx+ _i59838_ '1)
                             _deleted59840_))))))))))
    (define eqv-table-set!
      (lambda (_tab59809_ _key59810_ _value59811_)
        (if (fx< (&raw-table-free _tab59809_)
                 (fxquotient (vector-length (&raw-table-table _tab59809_)) '4))
            (__raw-table-rehash! _tab59809_)
            '#!void)
        (__eqv-table-set! _tab59809_ _key59810_ _value59811_)))
    (define __eqv-table-set!
      (lambda (_tab59764_ _key59765_ _value59766_)
        (let ((_table59769_ (&raw-table-table _tab59764_))
              (_seed59770_ (&raw-table-seed _tab59764_)))
          (let* ((_h59772_ (fxxor (eqv-hash _key59765_) _seed59770_))
                 (_size59775_ (vector-length _table59769_))
                 (_entries59778_ (fxquotient _size59775_ '2))
                 (_start59781_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59772_ _entries59778_)
                   '1)))
            (let _loop59785_ ((_probe59788_ _start59781_)
                              (_i59790_ '1)
                              (_deleted59792_ '#f))
              (let ((_k59795_ (vector-ref _table59769_ _probe59788_)))
                (if (eq? _k59795_ (macro-unused-obj))
                    (if _deleted59792_
                        (begin
                          (vector-set! _table59769_ _deleted59792_ _key59765_)
                          (vector-set!
                           _table59769_
                           (fx+ _deleted59792_ '1)
                           _value59766_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59764_
                              (fx+ (&raw-table-count _tab59764_) '1)))))
                        (begin
                          (vector-set! _table59769_ _probe59788_ _key59765_)
                          (vector-set!
                           _table59769_
                           (fx+ _probe59788_ '1)
                           _value59766_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59764_
                              (fx- (&raw-table-free _tab59764_) '1))
                             (&raw-table-count-set!
                              _tab59764_
                              (fx+ (&raw-table-count _tab59764_) '1))))))
                    (if (eq? _k59795_ (macro-deleted-obj))
                        (_loop59785_
                         (let ((_next-probe59800_
                                (fx+ _start59781_
                                     _i59790_
                                     (fx* _i59790_ _i59790_))))
                           (fxmodulo _next-probe59800_ _size59775_))
                         (fx+ _i59790_ '1)
                         (let ((_$e59803_ _deleted59792_))
                           (if _$e59803_ _$e59803_ _probe59788_)))
                        (if (eqv? _key59765_ _k59795_)
                            (begin
                              (vector-set!
                               _table59769_
                               _probe59788_
                               _key59765_)
                              (vector-set!
                               _table59769_
                               (fx+ _probe59788_ '1)
                               _value59766_))
                            (_loop59785_
                             (let ((_next-probe59806_
                                    (fx+ _start59781_
                                         _i59790_
                                         (fx* _i59790_ _i59790_))))
                               (fxmodulo _next-probe59806_ _size59775_))
                             (fx+ _i59790_ '1)
                             _deleted59792_))))))))))
    (define eqv-table-update!
      (lambda (_tab59759_ _key59760_ _eqv-table-update!59761_ _default59762_)
        (if (fx< (&raw-table-free _tab59759_)
                 (fxquotient (vector-length (&raw-table-table _tab59759_)) '4))
            (__raw-table-rehash! _tab59759_)
            '#!void)
        (__eqv-table-update!
         _tab59759_
         _key59760_
         _eqv-table-update!59761_
         _default59762_)))
    (define __eqv-table-update!
      (lambda (_tab59713_ _key59714_ _eqv-table-update!59715_ _default59716_)
        (let ((_table59719_ (&raw-table-table _tab59713_))
              (_seed59720_ (&raw-table-seed _tab59713_)))
          (let* ((_h59722_ (fxxor (eqv-hash _key59714_) _seed59720_))
                 (_size59725_ (vector-length _table59719_))
                 (_entries59728_ (fxquotient _size59725_ '2))
                 (_start59731_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59722_ _entries59728_)
                   '1)))
            (let _loop59735_ ((_probe59738_ _start59731_)
                              (_i59740_ '1)
                              (_deleted59742_ '#f))
              (let ((_k59745_ (vector-ref _table59719_ _probe59738_)))
                (if (eq? _k59745_ (macro-unused-obj))
                    (if _deleted59742_
                        (begin
                          (vector-set! _table59719_ _deleted59742_ _key59714_)
                          (vector-set!
                           _table59719_
                           (fx+ _deleted59742_ '1)
                           (_eqv-table-update!59715_ _default59716_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59713_
                              (fx+ (&raw-table-count _tab59713_) '1)))))
                        (begin
                          (vector-set! _table59719_ _probe59738_ _key59714_)
                          (vector-set!
                           _table59719_
                           (fx+ _probe59738_ '1)
                           (_eqv-table-update!59715_ _default59716_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59713_
                              (fx- (&raw-table-free _tab59713_) '1))
                             (&raw-table-count-set!
                              _tab59713_
                              (fx+ (&raw-table-count _tab59713_) '1))))))
                    (if (eq? _k59745_ (macro-deleted-obj))
                        (_loop59735_
                         (let ((_next-probe59750_
                                (fx+ _start59731_
                                     _i59740_
                                     (fx* _i59740_ _i59740_))))
                           (fxmodulo _next-probe59750_ _size59725_))
                         (fx+ _i59740_ '1)
                         (let ((_$e59753_ _deleted59742_))
                           (if _$e59753_ _$e59753_ _probe59738_)))
                        (if (eqv? _key59714_ _k59745_)
                            (begin
                              (vector-set!
                               _table59719_
                               _probe59738_
                               _key59714_)
                              (vector-set!
                               _table59719_
                               (fx+ _probe59738_ '1)
                               (_eqv-table-update!59715_
                                (vector-ref
                                 _table59719_
                                 (fx+ _probe59738_ '1)))))
                            (_loop59735_
                             (let ((_next-probe59756_
                                    (fx+ _start59731_
                                         _i59740_
                                         (fx* _i59740_ _i59740_))))
                               (fxmodulo _next-probe59756_ _size59725_))
                             (fx+ _i59740_ '1)
                             _deleted59742_))))))))))
    (define eqv-table-delete!
      (lambda (_tab59672_ _key59674_)
        (let ((_table59677_ (&raw-table-table _tab59672_))
              (_seed59679_ (&raw-table-seed _tab59672_)))
          (let* ((_h59682_ (fxxor (eqv-hash _key59674_) _seed59679_))
                 (_size59685_ (vector-length _table59677_))
                 (_entries59688_ (fxquotient _size59685_ '2))
                 (_start59691_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59682_ _entries59688_)
                   '1)))
            (let _loop59695_ ((_probe59698_ _start59691_) (_i59700_ '1))
              (let ((_k59703_ (vector-ref _table59677_ _probe59698_)))
                (if (eq? _k59703_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59703_ (macro-deleted-obj))
                        (_loop59695_
                         (let ((_next-probe59706_
                                (fx+ _start59691_
                                     _i59700_
                                     (fx* _i59700_ _i59700_))))
                           (fxmodulo _next-probe59706_ _size59685_))
                         (fx+ _i59700_ '1))
                        (if (eqv? _key59674_ _k59703_)
                            (begin
                              (vector-set!
                               _table59677_
                               _probe59698_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59677_
                               (fx+ _probe59698_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59672_
                                  (fx- (&raw-table-count _tab59672_) '1)))))
                            (_loop59695_
                             (let ((_next-probe59710_
                                    (fx+ _start59691_
                                         _i59700_
                                         (fx* _i59700_ _i59700_))))
                               (fxmodulo _next-probe59710_ _size59685_))
                             (fx+ _i59700_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_size-hint59653_ _seed59655_)
        (make-raw-table__% _size-hint59653_ symbolic-hash eq? _seed59655_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_size-hint59661_ '#f) (_seed59663_ '0))
          (make-symbolic-table__% _size-hint59661_ _seed59663_))))
    (define make-symbolic-table__1
      (lambda (_size-hint59665_)
        (let ((_seed59667_ '0))
          (make-symbolic-table__% _size-hint59665_ _seed59667_))))
    (define make-symbolic-table
      (lambda _g60399_
        (let ((_g60398_ (##length _g60399_)))
          (cond ((##fx= _g60398_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g60399_))
                ((##fx= _g60398_ 1)
                 (apply (lambda (_size-hint59665_)
                          (make-symbolic-table__1 _size-hint59665_))
                        _g60399_))
                ((##fx= _g60398_ 2)
                 (apply (lambda (_size-hint59669_ _seed59670_)
                          (make-symbolic-table__%
                           _size-hint59669_
                           _seed59670_))
                        _g60399_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g60399_))))))
    (define symbolic-table-ref
      (lambda (_tab59610_ _key59611_ _default59612_)
        (let ((_table59614_ (&raw-table-table _tab59610_))
              (_seed59615_ (&raw-table-seed _tab59610_)))
          (let* ((_h59617_ (fxxor (symbolic-hash _key59611_) _seed59615_))
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
                    _default59612_
                    (if (eq? _k59640_ (macro-deleted-obj))
                        (_loop59630_
                         (let ((_next-probe59643_
                                (fx+ _start59626_
                                     _i59635_
                                     (fx* _i59635_ _i59635_))))
                           (fxmodulo _next-probe59643_ _size59620_))
                         (fx+ _i59635_ '1)
                         (let ((_$e59646_ _deleted59637_))
                           (if _$e59646_ _$e59646_ _probe59633_)))
                        (if (eq? _key59611_ _k59640_)
                            (vector-ref _table59614_ (fx+ _probe59633_ '1))
                            (_loop59630_
                             (let ((_next-probe59649_
                                    (fx+ _start59626_
                                         _i59635_
                                         (fx* _i59635_ _i59635_))))
                               (fxmodulo _next-probe59649_ _size59620_))
                             (fx+ _i59635_ '1)
                             _deleted59637_))))))))))
    (define symbolic-table-set!
      (lambda (_tab59606_ _key59607_ _value59608_)
        (if (fx< (&raw-table-free _tab59606_)
                 (fxquotient (vector-length (&raw-table-table _tab59606_)) '4))
            (__raw-table-rehash! _tab59606_)
            '#!void)
        (__symbolic-table-set! _tab59606_ _key59607_ _value59608_)))
    (define __symbolic-table-set!
      (lambda (_tab59561_ _key59562_ _value59563_)
        (let ((_table59566_ (&raw-table-table _tab59561_))
              (_seed59567_ (&raw-table-seed _tab59561_)))
          (let* ((_h59569_ (fxxor (symbolic-hash _key59562_) _seed59567_))
                 (_size59572_ (vector-length _table59566_))
                 (_entries59575_ (fxquotient _size59572_ '2))
                 (_start59578_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59569_ _entries59575_)
                   '1)))
            (let _loop59582_ ((_probe59585_ _start59578_)
                              (_i59587_ '1)
                              (_deleted59589_ '#f))
              (let ((_k59592_ (vector-ref _table59566_ _probe59585_)))
                (if (eq? _k59592_ (macro-unused-obj))
                    (if _deleted59589_
                        (begin
                          (vector-set! _table59566_ _deleted59589_ _key59562_)
                          (vector-set!
                           _table59566_
                           (fx+ _deleted59589_ '1)
                           _value59563_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59561_
                              (fx+ (&raw-table-count _tab59561_) '1)))))
                        (begin
                          (vector-set! _table59566_ _probe59585_ _key59562_)
                          (vector-set!
                           _table59566_
                           (fx+ _probe59585_ '1)
                           _value59563_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59561_
                              (fx- (&raw-table-free _tab59561_) '1))
                             (&raw-table-count-set!
                              _tab59561_
                              (fx+ (&raw-table-count _tab59561_) '1))))))
                    (if (eq? _k59592_ (macro-deleted-obj))
                        (_loop59582_
                         (let ((_next-probe59597_
                                (fx+ _start59578_
                                     _i59587_
                                     (fx* _i59587_ _i59587_))))
                           (fxmodulo _next-probe59597_ _size59572_))
                         (fx+ _i59587_ '1)
                         (let ((_$e59600_ _deleted59589_))
                           (if _$e59600_ _$e59600_ _probe59585_)))
                        (if (eq? _key59562_ _k59592_)
                            (begin
                              (vector-set!
                               _table59566_
                               _probe59585_
                               _key59562_)
                              (vector-set!
                               _table59566_
                               (fx+ _probe59585_ '1)
                               _value59563_))
                            (_loop59582_
                             (let ((_next-probe59603_
                                    (fx+ _start59578_
                                         _i59587_
                                         (fx* _i59587_ _i59587_))))
                               (fxmodulo _next-probe59603_ _size59572_))
                             (fx+ _i59587_ '1)
                             _deleted59589_))))))))))
    (define symbolic-table-update!
      (lambda (_tab59556_
               _key59557_
               _symbolic-table-update!59558_
               _default59559_)
        (if (fx< (&raw-table-free _tab59556_)
                 (fxquotient (vector-length (&raw-table-table _tab59556_)) '4))
            (__raw-table-rehash! _tab59556_)
            '#!void)
        (__symbolic-table-update!
         _tab59556_
         _key59557_
         _symbolic-table-update!59558_
         _default59559_)))
    (define __symbolic-table-update!
      (lambda (_tab59510_
               _key59511_
               _symbolic-table-update!59512_
               _default59513_)
        (let ((_table59516_ (&raw-table-table _tab59510_))
              (_seed59517_ (&raw-table-seed _tab59510_)))
          (let* ((_h59519_ (fxxor (symbolic-hash _key59511_) _seed59517_))
                 (_size59522_ (vector-length _table59516_))
                 (_entries59525_ (fxquotient _size59522_ '2))
                 (_start59528_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59519_ _entries59525_)
                   '1)))
            (let _loop59532_ ((_probe59535_ _start59528_)
                              (_i59537_ '1)
                              (_deleted59539_ '#f))
              (let ((_k59542_ (vector-ref _table59516_ _probe59535_)))
                (if (eq? _k59542_ (macro-unused-obj))
                    (if _deleted59539_
                        (begin
                          (vector-set! _table59516_ _deleted59539_ _key59511_)
                          (vector-set!
                           _table59516_
                           (fx+ _deleted59539_ '1)
                           (_symbolic-table-update!59512_ _default59513_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59510_
                              (fx+ (&raw-table-count _tab59510_) '1)))))
                        (begin
                          (vector-set! _table59516_ _probe59535_ _key59511_)
                          (vector-set!
                           _table59516_
                           (fx+ _probe59535_ '1)
                           (_symbolic-table-update!59512_ _default59513_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59510_
                              (fx- (&raw-table-free _tab59510_) '1))
                             (&raw-table-count-set!
                              _tab59510_
                              (fx+ (&raw-table-count _tab59510_) '1))))))
                    (if (eq? _k59542_ (macro-deleted-obj))
                        (_loop59532_
                         (let ((_next-probe59547_
                                (fx+ _start59528_
                                     _i59537_
                                     (fx* _i59537_ _i59537_))))
                           (fxmodulo _next-probe59547_ _size59522_))
                         (fx+ _i59537_ '1)
                         (let ((_$e59550_ _deleted59539_))
                           (if _$e59550_ _$e59550_ _probe59535_)))
                        (if (eq? _key59511_ _k59542_)
                            (begin
                              (vector-set!
                               _table59516_
                               _probe59535_
                               _key59511_)
                              (vector-set!
                               _table59516_
                               (fx+ _probe59535_ '1)
                               (_symbolic-table-update!59512_
                                (vector-ref
                                 _table59516_
                                 (fx+ _probe59535_ '1)))))
                            (_loop59532_
                             (let ((_next-probe59553_
                                    (fx+ _start59528_
                                         _i59537_
                                         (fx* _i59537_ _i59537_))))
                               (fxmodulo _next-probe59553_ _size59522_))
                             (fx+ _i59537_ '1)
                             _deleted59539_))))))))))
    (define symbolic-table-delete!
      (lambda (_tab59469_ _key59471_)
        (let ((_table59474_ (&raw-table-table _tab59469_))
              (_seed59476_ (&raw-table-seed _tab59469_)))
          (let* ((_h59479_ (fxxor (symbolic-hash _key59471_) _seed59476_))
                 (_size59482_ (vector-length _table59474_))
                 (_entries59485_ (fxquotient _size59482_ '2))
                 (_start59488_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59479_ _entries59485_)
                   '1)))
            (let _loop59492_ ((_probe59495_ _start59488_) (_i59497_ '1))
              (let ((_k59500_ (vector-ref _table59474_ _probe59495_)))
                (if (eq? _k59500_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59500_ (macro-deleted-obj))
                        (_loop59492_
                         (let ((_next-probe59503_
                                (fx+ _start59488_
                                     _i59497_
                                     (fx* _i59497_ _i59497_))))
                           (fxmodulo _next-probe59503_ _size59482_))
                         (fx+ _i59497_ '1))
                        (if (eq? _key59471_ _k59500_)
                            (begin
                              (vector-set!
                               _table59474_
                               _probe59495_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59474_
                               (fx+ _probe59495_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59469_
                                  (fx- (&raw-table-count _tab59469_) '1)))))
                            (_loop59492_
                             (let ((_next-probe59507_
                                    (fx+ _start59488_
                                         _i59497_
                                         (fx* _i59497_ _i59497_))))
                               (fxmodulo _next-probe59507_ _size59482_))
                             (fx+ _i59497_ '1)))))))))))
    (define make-string-table__%
      (lambda (_size-hint59450_ _seed59452_)
        (make-raw-table__%
         _size-hint59450_
         string-hash
         ##string=?
         _seed59452_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_size-hint59458_ '#f) (_seed59460_ '0))
          (make-string-table__% _size-hint59458_ _seed59460_))))
    (define make-string-table__1
      (lambda (_size-hint59462_)
        (let ((_seed59464_ '0))
          (make-string-table__% _size-hint59462_ _seed59464_))))
    (define make-string-table
      (lambda _g60401_
        (let ((_g60400_ (##length _g60401_)))
          (cond ((##fx= _g60400_ 0)
                 (apply (lambda () (make-string-table__0)) _g60401_))
                ((##fx= _g60400_ 1)
                 (apply (lambda (_size-hint59462_)
                          (make-string-table__1 _size-hint59462_))
                        _g60401_))
                ((##fx= _g60400_ 2)
                 (apply (lambda (_size-hint59466_ _seed59467_)
                          (make-string-table__% _size-hint59466_ _seed59467_))
                        _g60401_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g60401_))))))
    (define string-table-ref
      (lambda (_tab59407_ _key59408_ _default59409_)
        (let ((_table59411_ (&raw-table-table _tab59407_))
              (_seed59412_ (&raw-table-seed _tab59407_)))
          (let* ((_h59414_ (fxxor (##string=?-hash _key59408_) _seed59412_))
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
                    _default59409_
                    (if (eq? _k59437_ (macro-deleted-obj))
                        (_loop59427_
                         (let ((_next-probe59440_
                                (fx+ _start59423_
                                     _i59432_
                                     (fx* _i59432_ _i59432_))))
                           (fxmodulo _next-probe59440_ _size59417_))
                         (fx+ _i59432_ '1)
                         (let ((_$e59443_ _deleted59434_))
                           (if _$e59443_ _$e59443_ _probe59430_)))
                        (if (##string=? _key59408_ _k59437_)
                            (vector-ref _table59411_ (fx+ _probe59430_ '1))
                            (_loop59427_
                             (let ((_next-probe59446_
                                    (fx+ _start59423_
                                         _i59432_
                                         (fx* _i59432_ _i59432_))))
                               (fxmodulo _next-probe59446_ _size59417_))
                             (fx+ _i59432_ '1)
                             _deleted59434_))))))))))
    (define string-table-set!
      (lambda (_tab59403_ _key59404_ _value59405_)
        (if (fx< (&raw-table-free _tab59403_)
                 (fxquotient (vector-length (&raw-table-table _tab59403_)) '4))
            (__raw-table-rehash! _tab59403_)
            '#!void)
        (__string-table-set! _tab59403_ _key59404_ _value59405_)))
    (define __string-table-set!
      (lambda (_tab59358_ _key59359_ _value59360_)
        (let ((_table59363_ (&raw-table-table _tab59358_))
              (_seed59364_ (&raw-table-seed _tab59358_)))
          (let* ((_h59366_ (fxxor (##string=?-hash _key59359_) _seed59364_))
                 (_size59369_ (vector-length _table59363_))
                 (_entries59372_ (fxquotient _size59369_ '2))
                 (_start59375_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59366_ _entries59372_)
                   '1)))
            (let _loop59379_ ((_probe59382_ _start59375_)
                              (_i59384_ '1)
                              (_deleted59386_ '#f))
              (let ((_k59389_ (vector-ref _table59363_ _probe59382_)))
                (if (eq? _k59389_ (macro-unused-obj))
                    (if _deleted59386_
                        (begin
                          (vector-set! _table59363_ _deleted59386_ _key59359_)
                          (vector-set!
                           _table59363_
                           (fx+ _deleted59386_ '1)
                           _value59360_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59358_
                              (fx+ (&raw-table-count _tab59358_) '1)))))
                        (begin
                          (vector-set! _table59363_ _probe59382_ _key59359_)
                          (vector-set!
                           _table59363_
                           (fx+ _probe59382_ '1)
                           _value59360_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59358_
                              (fx- (&raw-table-free _tab59358_) '1))
                             (&raw-table-count-set!
                              _tab59358_
                              (fx+ (&raw-table-count _tab59358_) '1))))))
                    (if (eq? _k59389_ (macro-deleted-obj))
                        (_loop59379_
                         (let ((_next-probe59394_
                                (fx+ _start59375_
                                     _i59384_
                                     (fx* _i59384_ _i59384_))))
                           (fxmodulo _next-probe59394_ _size59369_))
                         (fx+ _i59384_ '1)
                         (let ((_$e59397_ _deleted59386_))
                           (if _$e59397_ _$e59397_ _probe59382_)))
                        (if (##string=? _key59359_ _k59389_)
                            (begin
                              (vector-set!
                               _table59363_
                               _probe59382_
                               _key59359_)
                              (vector-set!
                               _table59363_
                               (fx+ _probe59382_ '1)
                               _value59360_))
                            (_loop59379_
                             (let ((_next-probe59400_
                                    (fx+ _start59375_
                                         _i59384_
                                         (fx* _i59384_ _i59384_))))
                               (fxmodulo _next-probe59400_ _size59369_))
                             (fx+ _i59384_ '1)
                             _deleted59386_))))))))))
    (define string-table-update!
      (lambda (_tab59353_
               _key59354_
               _string-table-update!59355_
               _default59356_)
        (if (fx< (&raw-table-free _tab59353_)
                 (fxquotient (vector-length (&raw-table-table _tab59353_)) '4))
            (__raw-table-rehash! _tab59353_)
            '#!void)
        (__string-table-update!
         _tab59353_
         _key59354_
         _string-table-update!59355_
         _default59356_)))
    (define __string-table-update!
      (lambda (_tab59307_
               _key59308_
               _string-table-update!59309_
               _default59310_)
        (let ((_table59313_ (&raw-table-table _tab59307_))
              (_seed59314_ (&raw-table-seed _tab59307_)))
          (let* ((_h59316_ (fxxor (##string=?-hash _key59308_) _seed59314_))
                 (_size59319_ (vector-length _table59313_))
                 (_entries59322_ (fxquotient _size59319_ '2))
                 (_start59325_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59316_ _entries59322_)
                   '1)))
            (let _loop59329_ ((_probe59332_ _start59325_)
                              (_i59334_ '1)
                              (_deleted59336_ '#f))
              (let ((_k59339_ (vector-ref _table59313_ _probe59332_)))
                (if (eq? _k59339_ (macro-unused-obj))
                    (if _deleted59336_
                        (begin
                          (vector-set! _table59313_ _deleted59336_ _key59308_)
                          (vector-set!
                           _table59313_
                           (fx+ _deleted59336_ '1)
                           (_string-table-update!59309_ _default59310_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59307_
                              (fx+ (&raw-table-count _tab59307_) '1)))))
                        (begin
                          (vector-set! _table59313_ _probe59332_ _key59308_)
                          (vector-set!
                           _table59313_
                           (fx+ _probe59332_ '1)
                           (_string-table-update!59309_ _default59310_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59307_
                              (fx- (&raw-table-free _tab59307_) '1))
                             (&raw-table-count-set!
                              _tab59307_
                              (fx+ (&raw-table-count _tab59307_) '1))))))
                    (if (eq? _k59339_ (macro-deleted-obj))
                        (_loop59329_
                         (let ((_next-probe59344_
                                (fx+ _start59325_
                                     _i59334_
                                     (fx* _i59334_ _i59334_))))
                           (fxmodulo _next-probe59344_ _size59319_))
                         (fx+ _i59334_ '1)
                         (let ((_$e59347_ _deleted59336_))
                           (if _$e59347_ _$e59347_ _probe59332_)))
                        (if (##string=? _key59308_ _k59339_)
                            (begin
                              (vector-set!
                               _table59313_
                               _probe59332_
                               _key59308_)
                              (vector-set!
                               _table59313_
                               (fx+ _probe59332_ '1)
                               (_string-table-update!59309_
                                (vector-ref
                                 _table59313_
                                 (fx+ _probe59332_ '1)))))
                            (_loop59329_
                             (let ((_next-probe59350_
                                    (fx+ _start59325_
                                         _i59334_
                                         (fx* _i59334_ _i59334_))))
                               (fxmodulo _next-probe59350_ _size59319_))
                             (fx+ _i59334_ '1)
                             _deleted59336_))))))))))
    (define string-table-delete!
      (lambda (_tab59266_ _key59268_)
        (let ((_table59271_ (&raw-table-table _tab59266_))
              (_seed59273_ (&raw-table-seed _tab59266_)))
          (let* ((_h59276_ (fxxor (##string=?-hash _key59268_) _seed59273_))
                 (_size59279_ (vector-length _table59271_))
                 (_entries59282_ (fxquotient _size59279_ '2))
                 (_start59285_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59276_ _entries59282_)
                   '1)))
            (let _loop59289_ ((_probe59292_ _start59285_) (_i59294_ '1))
              (let ((_k59297_ (vector-ref _table59271_ _probe59292_)))
                (if (eq? _k59297_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59297_ (macro-deleted-obj))
                        (_loop59289_
                         (let ((_next-probe59300_
                                (fx+ _start59285_
                                     _i59294_
                                     (fx* _i59294_ _i59294_))))
                           (fxmodulo _next-probe59300_ _size59279_))
                         (fx+ _i59294_ '1))
                        (if (##string=? _key59268_ _k59297_)
                            (begin
                              (vector-set!
                               _table59271_
                               _probe59292_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59271_
                               (fx+ _probe59292_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59266_
                                  (fx- (&raw-table-count _tab59266_) '1)))))
                            (_loop59289_
                             (let ((_next-probe59304_
                                    (fx+ _start59285_
                                         _i59294_
                                         (fx* _i59294_ _i59294_))))
                               (fxmodulo _next-probe59304_ _size59279_))
                             (fx+ _i59294_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_size-hint59247_ _seed59249_)
        (make-raw-table__% _size-hint59247_ immediate-hash eq? _seed59249_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_size-hint59255_ '#f) (_seed59257_ '0))
          (make-immediate-table__% _size-hint59255_ _seed59257_))))
    (define make-immediate-table__1
      (lambda (_size-hint59259_)
        (let ((_seed59261_ '0))
          (make-immediate-table__% _size-hint59259_ _seed59261_))))
    (define make-immediate-table
      (lambda _g60403_
        (let ((_g60402_ (##length _g60403_)))
          (cond ((##fx= _g60402_ 0)
                 (apply (lambda () (make-immediate-table__0)) _g60403_))
                ((##fx= _g60402_ 1)
                 (apply (lambda (_size-hint59259_)
                          (make-immediate-table__1 _size-hint59259_))
                        _g60403_))
                ((##fx= _g60402_ 2)
                 (apply (lambda (_size-hint59263_ _seed59264_)
                          (make-immediate-table__%
                           _size-hint59263_
                           _seed59264_))
                        _g60403_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g60403_))))))
    (define immediate-table-ref
      (lambda (_tab59204_ _key59205_ _default59206_)
        (let ((_table59208_ (&raw-table-table _tab59204_))
              (_seed59209_ (&raw-table-seed _tab59204_)))
          (let* ((_h59211_ (fxxor (immediate-hash _key59205_) _seed59209_))
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
                    _default59206_
                    (if (eq? _k59234_ (macro-deleted-obj))
                        (_loop59224_
                         (let ((_next-probe59237_
                                (fx+ _start59220_
                                     _i59229_
                                     (fx* _i59229_ _i59229_))))
                           (fxmodulo _next-probe59237_ _size59214_))
                         (fx+ _i59229_ '1)
                         (let ((_$e59240_ _deleted59231_))
                           (if _$e59240_ _$e59240_ _probe59227_)))
                        (if (eq? _key59205_ _k59234_)
                            (vector-ref _table59208_ (fx+ _probe59227_ '1))
                            (_loop59224_
                             (let ((_next-probe59243_
                                    (fx+ _start59220_
                                         _i59229_
                                         (fx* _i59229_ _i59229_))))
                               (fxmodulo _next-probe59243_ _size59214_))
                             (fx+ _i59229_ '1)
                             _deleted59231_))))))))))
    (define immediate-table-set!
      (lambda (_tab59200_ _key59201_ _value59202_)
        (if (fx< (&raw-table-free _tab59200_)
                 (fxquotient (vector-length (&raw-table-table _tab59200_)) '4))
            (__raw-table-rehash! _tab59200_)
            '#!void)
        (__immediate-table-set! _tab59200_ _key59201_ _value59202_)))
    (define __immediate-table-set!
      (lambda (_tab59155_ _key59156_ _value59157_)
        (let ((_table59160_ (&raw-table-table _tab59155_))
              (_seed59161_ (&raw-table-seed _tab59155_)))
          (let* ((_h59163_ (fxxor (immediate-hash _key59156_) _seed59161_))
                 (_size59166_ (vector-length _table59160_))
                 (_entries59169_ (fxquotient _size59166_ '2))
                 (_start59172_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59163_ _entries59169_)
                   '1)))
            (let _loop59176_ ((_probe59179_ _start59172_)
                              (_i59181_ '1)
                              (_deleted59183_ '#f))
              (let ((_k59186_ (vector-ref _table59160_ _probe59179_)))
                (if (eq? _k59186_ (macro-unused-obj))
                    (if _deleted59183_
                        (begin
                          (vector-set! _table59160_ _deleted59183_ _key59156_)
                          (vector-set!
                           _table59160_
                           (fx+ _deleted59183_ '1)
                           _value59157_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59155_
                              (fx+ (&raw-table-count _tab59155_) '1)))))
                        (begin
                          (vector-set! _table59160_ _probe59179_ _key59156_)
                          (vector-set!
                           _table59160_
                           (fx+ _probe59179_ '1)
                           _value59157_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59155_
                              (fx- (&raw-table-free _tab59155_) '1))
                             (&raw-table-count-set!
                              _tab59155_
                              (fx+ (&raw-table-count _tab59155_) '1))))))
                    (if (eq? _k59186_ (macro-deleted-obj))
                        (_loop59176_
                         (let ((_next-probe59191_
                                (fx+ _start59172_
                                     _i59181_
                                     (fx* _i59181_ _i59181_))))
                           (fxmodulo _next-probe59191_ _size59166_))
                         (fx+ _i59181_ '1)
                         (let ((_$e59194_ _deleted59183_))
                           (if _$e59194_ _$e59194_ _probe59179_)))
                        (if (eq? _key59156_ _k59186_)
                            (begin
                              (vector-set!
                               _table59160_
                               _probe59179_
                               _key59156_)
                              (vector-set!
                               _table59160_
                               (fx+ _probe59179_ '1)
                               _value59157_))
                            (_loop59176_
                             (let ((_next-probe59197_
                                    (fx+ _start59172_
                                         _i59181_
                                         (fx* _i59181_ _i59181_))))
                               (fxmodulo _next-probe59197_ _size59166_))
                             (fx+ _i59181_ '1)
                             _deleted59183_))))))))))
    (define immediate-table-update!
      (lambda (_tab59150_
               _key59151_
               _immediate-table-update!59152_
               _default59153_)
        (if (fx< (&raw-table-free _tab59150_)
                 (fxquotient (vector-length (&raw-table-table _tab59150_)) '4))
            (__raw-table-rehash! _tab59150_)
            '#!void)
        (__immediate-table-update!
         _tab59150_
         _key59151_
         _immediate-table-update!59152_
         _default59153_)))
    (define __immediate-table-update!
      (lambda (_tab59104_
               _key59105_
               _immediate-table-update!59106_
               _default59107_)
        (let ((_table59110_ (&raw-table-table _tab59104_))
              (_seed59111_ (&raw-table-seed _tab59104_)))
          (let* ((_h59113_ (fxxor (immediate-hash _key59105_) _seed59111_))
                 (_size59116_ (vector-length _table59110_))
                 (_entries59119_ (fxquotient _size59116_ '2))
                 (_start59122_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59113_ _entries59119_)
                   '1)))
            (let _loop59126_ ((_probe59129_ _start59122_)
                              (_i59131_ '1)
                              (_deleted59133_ '#f))
              (let ((_k59136_ (vector-ref _table59110_ _probe59129_)))
                (if (eq? _k59136_ (macro-unused-obj))
                    (if _deleted59133_
                        (begin
                          (vector-set! _table59110_ _deleted59133_ _key59105_)
                          (vector-set!
                           _table59110_
                           (fx+ _deleted59133_ '1)
                           (_immediate-table-update!59106_ _default59107_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59104_
                              (fx+ (&raw-table-count _tab59104_) '1)))))
                        (begin
                          (vector-set! _table59110_ _probe59129_ _key59105_)
                          (vector-set!
                           _table59110_
                           (fx+ _probe59129_ '1)
                           (_immediate-table-update!59106_ _default59107_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59104_
                              (fx- (&raw-table-free _tab59104_) '1))
                             (&raw-table-count-set!
                              _tab59104_
                              (fx+ (&raw-table-count _tab59104_) '1))))))
                    (if (eq? _k59136_ (macro-deleted-obj))
                        (_loop59126_
                         (let ((_next-probe59141_
                                (fx+ _start59122_
                                     _i59131_
                                     (fx* _i59131_ _i59131_))))
                           (fxmodulo _next-probe59141_ _size59116_))
                         (fx+ _i59131_ '1)
                         (let ((_$e59144_ _deleted59133_))
                           (if _$e59144_ _$e59144_ _probe59129_)))
                        (if (eq? _key59105_ _k59136_)
                            (begin
                              (vector-set!
                               _table59110_
                               _probe59129_
                               _key59105_)
                              (vector-set!
                               _table59110_
                               (fx+ _probe59129_ '1)
                               (_immediate-table-update!59106_
                                (vector-ref
                                 _table59110_
                                 (fx+ _probe59129_ '1)))))
                            (_loop59126_
                             (let ((_next-probe59147_
                                    (fx+ _start59122_
                                         _i59131_
                                         (fx* _i59131_ _i59131_))))
                               (fxmodulo _next-probe59147_ _size59116_))
                             (fx+ _i59131_ '1)
                             _deleted59133_))))))))))
    (define immediate-table-delete!
      (lambda (_tab59063_ _key59065_)
        (let ((_table59068_ (&raw-table-table _tab59063_))
              (_seed59070_ (&raw-table-seed _tab59063_)))
          (let* ((_h59073_ (fxxor (immediate-hash _key59065_) _seed59070_))
                 (_size59076_ (vector-length _table59068_))
                 (_entries59079_ (fxquotient _size59076_ '2))
                 (_start59082_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59073_ _entries59079_)
                   '1)))
            (let _loop59086_ ((_probe59089_ _start59082_) (_i59091_ '1))
              (let ((_k59094_ (vector-ref _table59068_ _probe59089_)))
                (if (eq? _k59094_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59094_ (macro-deleted-obj))
                        (_loop59086_
                         (let ((_next-probe59097_
                                (fx+ _start59082_
                                     _i59091_
                                     (fx* _i59091_ _i59091_))))
                           (fxmodulo _next-probe59097_ _size59076_))
                         (fx+ _i59091_ '1))
                        (if (eq? _key59065_ _k59094_)
                            (begin
                              (vector-set!
                               _table59068_
                               _probe59089_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59068_
                               (fx+ _probe59089_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59063_
                                  (fx- (&raw-table-count _tab59063_) '1)))))
                            (_loop59086_
                             (let ((_next-probe59101_
                                    (fx+ _start59082_
                                         _i59091_
                                         (fx* _i59091_ _i59091_))))
                               (fxmodulo _next-probe59101_ _size59076_))
                             (fx+ _i59091_ '1)))))))))))
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
      (lambda (_tab59061_)
        (##unchecked-structure-ref
         _tab59061_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_tab59059_)
        (##unchecked-structure-ref
         _tab59059_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_tab59056_ _val59057_)
        (##unchecked-structure-set!
         _tab59056_
         _val59057_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_tab59053_ _val59054_)
        (##unchecked-structure-set!
         _tab59053_
         _val59054_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_size-hint59029_ _klass59030_ _flags59031_)
        (let ((_gcht59033_
               (__gc-table-new
                (if (fixnum? _size-hint59029_) _size-hint59029_ '16)
                _flags59031_)))
          (##structure _klass59030_ _gcht59033_ '#f))))
    (define make-gc-table__0
      (lambda (_size-hint59038_)
        (let* ((_klass59040_ __gc-table::t) (_flags59042_ '0))
          (make-gc-table__% _size-hint59038_ _klass59040_ _flags59042_))))
    (define make-gc-table__1
      (lambda (_size-hint59044_ _klass59045_)
        (let ((_flags59047_ '0))
          (make-gc-table__% _size-hint59044_ _klass59045_ _flags59047_))))
    (define make-gc-table
      (lambda _g60405_
        (let ((_g60404_ (##length _g60405_)))
          (cond ((##fx= _g60404_ 1)
                 (apply (lambda (_size-hint59038_)
                          (make-gc-table__0 _size-hint59038_))
                        _g60405_))
                ((##fx= _g60404_ 2)
                 (apply (lambda (_size-hint59044_ _klass59045_)
                          (make-gc-table__1 _size-hint59044_ _klass59045_))
                        _g60405_))
                ((##fx= _g60404_ 3)
                 (apply (lambda (_size-hint59049_ _klass59050_ _flags59051_)
                          (make-gc-table__%
                           _size-hint59049_
                           _klass59050_
                           _flags59051_))
                        _g60405_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g60405_))))))
    (define __gc-table-immediate
      (lambda (_tab59021_)
        (let ((_$e59023_ (&gc-table-immediate _tab59021_)))
          (if _$e59023_
              _$e59023_
              (let ((_immediate59026_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _tab59021_ _immediate59026_)
                _immediate59026_)))))
    (define __gc-table-new
      (lambda (_size59011_ _flags59012_)
        (let* ((_flags59014_
                (fxand _flags59012_
                       (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_flags59016_
                (fxior _flags59014_ (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_gcht59018_
                (##gc-hash-table-allocate
                 _size59011_
                 _flags59016_
                 __gc-table-loads)))
          _gcht59018_)))
    (define __gc-table-e
      (lambda (_tab59006_)
        (declare (not interrupts-enabled))
        (let ((_gcht59009_ (&gc-table-gcht _tab59006_)))
          (if (fx= '0
                   (fxand (macro-gc-hash-table-flags _gcht59009_)
                          (macro-gc-hash-table-flag-need-rehash)))
              _gcht59009_
              (begin
                (__gc-table-rehash! _tab59006_)
                (&gc-table-gcht _tab59006_))))))
    (define __gc-table-rehash!
      (lambda (_tab58997_)
        (let* ((_old-table58999_ (&gc-table-gcht _tab58997_))
               (_new-table59001_
                (##gc-hash-table-resize! _old-table58999_ __gc-table-loads))
               (_gcht59003_
                (##gc-hash-table-rehash! _old-table58999_ _new-table59001_)))
          (&gc-table-gcht-set! _tab58997_ _gcht59003_))))
    (define gc-table-ref
      (lambda (_tab58983_ _key58984_ _default58985_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key58984_)
            (let* ((_gcht58988_ (__gc-table-e _tab58983_))
                   (_value58990_ (##gc-hash-table-ref _gcht58988_ _key58984_)))
              (if (eq? _value58990_ (macro-unused-obj))
                  _default58985_
                  _value58990_))
            (let ((_$e58992_ (&gc-table-immediate _tab58983_)))
              (if _$e58992_
                  ((lambda (_immediate58995_)
                     (immediate-table-ref
                      _immediate58995_
                      _key58984_
                      _default58985_))
                   _$e58992_)
                  _default58985_)))))
    (define gc-table-set!
      (lambda (_tab58976_ _key58977_ _value58978_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key58977_)
            (let ((_gcht58981_ (__gc-table-e _tab58976_)))
              (if (##gc-hash-table-set! _gcht58981_ _key58977_ _value58978_)
                  (begin
                    (__gc-table-rehash! _tab58976_)
                    (gc-table-set! _tab58976_ _key58977_ _value58978_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _tab58976_)
             _key58977_
             _value58978_))))
    (define gc-table-update!
      (lambda (_tab58969_ _key58970_ _update58971_ _default58972_)
        (if (##mem-allocated? _key58970_)
            (let ((_value58974_
                   (gc-table-ref _tab58969_ _key58970_ _default58972_)))
              (gc-table-set!
               _tab58969_
               _key58970_
               (_update58971_ _value58974_)))
            (immediate-table-update!
             (__gc-table-immediate _tab58969_)
             _key58970_
             _update58971_
             _default58972_))))
    (define gc-table-delete!
      (lambda (_tab58958_ _key58959_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key58959_)
            (let ((_gcht58962_ (__gc-table-e _tab58958_)))
              (if (##gc-hash-table-set!
                   _gcht58962_
                   _key58959_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _tab58958_)
                    (gc-table-delete! _tab58958_ _key58959_))
                  '#!void))
            (let ((_$e58964_ (&gc-table-immediate _tab58958_)))
              (if _$e58964_
                  ((lambda (_immediate58967_)
                     (immediate-table-delete! _immediate58967_ _key58959_))
                   _$e58964_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_tab58939_ _proc58940_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_gcht58943_ (__gc-table-e _tab58939_)))
            (let _loop58945_ ((_i58947_ (macro-gc-hash-table-key0)))
              (if (fx< _i58947_ (##vector-length _gcht58943_))
                  (let ((_key58949_ (##vector-ref _gcht58943_ _i58947_)))
                    (if (and (not (eq? _key58949_ (macro-unused-obj)))
                             (not (eq? _key58949_ (macro-deleted-obj))))
                        (_proc58940_
                         _key58949_
                         (##vector-ref _gcht58943_ (fx+ _i58947_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_loop58945_ (fx+ _i58947_ '2))))
                  '#!void)))
          (let ((_$e58953_ (&gc-table-immediate _tab58939_)))
            (if _$e58953_
                ((lambda (_immediate58956_)
                   (raw-table-for-each _immediate58956_ _proc58940_))
                 _$e58953_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_tab58927_)
        (let* ((_gcht58929_ (__gc-table-e _tab58927_))
               (_new-table58931_
                (__gc-table-new
                 (macro-gc-hash-table-count _gcht58929_)
                 (macro-gc-hash-table-flags _gcht58929_)))
               (_result58933_
                (##structure
                 (##structure-type _tab58927_)
                 _new-table58931_
                 '#f)))
          (gc-table-for-each
           _tab58927_
           (lambda (_k58936_ _v58937_)
             (gc-table-set! _result58933_ _k58936_ _v58937_)))
          _result58933_)))
    (define gc-table-clear!
      (lambda (_tab58920_)
        (let* ((_gcht58922_ (__gc-table-e _tab58920_))
               (_new-table58924_
                (__gc-table-new '16 (macro-gc-hash-table-flags _gcht58922_))))
          (&gc-table-gcht-set! _tab58920_ _new-table58924_)
          (&gc-table-immediate-set! _tab58920_ '#f))))
    (define gc-table-length
      (lambda (_tab58913_)
        (let ((_gcht58915_ (__gc-table-e _tab58913_)))
          (fx+ (macro-gc-hash-table-count _gcht58915_)
               (let ((_$e58917_ (&gc-table-immediate _tab58913_)))
                 (if _$e58917_ (&raw-table-count _$e58917_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_obj58898_)
        (declare (not interrupts-enabled))
        (let ((_val58901_ (gc-table-ref __object-eq-hash _obj58898_ '#f)))
          (if _val58901_
              _val58901_
              (let* ((_mix58903_ __object-eq-hash-next)
                     (_ptr58905_ (##type-cast _obj58898_ '0))
                     (_h58907_
                      (fxand (fxxor _mix58903_ _ptr58905_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_$e58910_ (##fx+? __object-eq-hash-next '1)))
                        (if _$e58910_ _$e58910_ '0)))
                (gc-table-set! __object-eq-hash _obj58898_ _h58907_)
                _h58907_)))))))
