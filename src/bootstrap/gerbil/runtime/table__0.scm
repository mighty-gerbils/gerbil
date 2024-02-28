(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1709128371)
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
      (lambda (_tab60027_)
        (##unchecked-structure-ref _tab60027_ '1 __table::t 'raw-table-table)))
    (define &raw-table-count
      (lambda (_tab60025_)
        (##unchecked-structure-ref _tab60025_ '2 __table::t 'raw-table-count)))
    (define &raw-table-free
      (lambda (_tab60023_)
        (##unchecked-structure-ref _tab60023_ '3 __table::t 'raw-table-free)))
    (define &raw-table-hash
      (lambda (_tab60021_)
        (##unchecked-structure-ref _tab60021_ '4 __table::t 'raw-table-hash)))
    (define &raw-table-test
      (lambda (_tab60019_)
        (##unchecked-structure-ref _tab60019_ '5 __table::t 'raw-table-test)))
    (define &raw-table-seed
      (lambda (_tab60017_)
        (##unchecked-structure-ref _tab60017_ '6 __table::t 'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_tab60014_ _val60015_)
        (##unchecked-structure-set!
         _tab60014_
         _val60015_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_tab60011_ _val60012_)
        (##unchecked-structure-set!
         _tab60011_
         _val60012_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_tab60008_ _val60009_)
        (##unchecked-structure-set!
         _tab60008_
         _val60009_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_tab60005_ _val60006_)
        (##unchecked-structure-set!
         _tab60005_
         _val60006_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_tab60002_ _val60003_)
        (##unchecked-structure-set!
         _tab60002_
         _val60003_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_tab59999_ _val60000_)
        (##unchecked-structure-set!
         _tab59999_
         _val60000_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_size-hint59997_)
        (if (and (fixnum? _size-hint59997_) (fx> _size-hint59997_ '0))
            (fx* (fxmax '2 (expt '2 (integer-length _size-hint59997_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_size-hint59973_ _hash59974_ _test59975_ _seed59976_)
        (let* ((_size59978_ (raw-table-size-hint->size _size-hint59973_))
               (_table59980_ (make-vector _size59978_ (macro-unused-obj))))
          (##structure
           __table::t
           _table59980_
           '0
           (fxquotient _size59978_ '2)
           _hash59974_
           _test59975_
           _seed59976_))))
    (define make-raw-table__0
      (lambda (_size-hint59986_ _hash59987_ _test59988_)
        (let ((_seed59990_ '0))
          (make-raw-table__%
           _size-hint59986_
           _hash59987_
           _test59988_
           _seed59990_))))
    (define make-raw-table
      (lambda _g60029_
        (let ((_g60028_ (##length _g60029_)))
          (cond ((##fx= _g60028_ 3)
                 (apply (lambda (_size-hint59986_ _hash59987_ _test59988_)
                          (make-raw-table__0
                           _size-hint59986_
                           _hash59987_
                           _test59988_))
                        _g60029_))
                ((##fx= _g60028_ 4)
                 (apply (lambda (_size-hint59992_
                                 _hash59993_
                                 _test59994_
                                 _seed59995_)
                          (make-raw-table__%
                           _size-hint59992_
                           _hash59993_
                           _test59994_
                           _seed59995_))
                        _g60029_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g60029_))))))
    (define raw-table-ref
      (lambda (_tab59928_ _key59929_ _default59930_)
        (let ((_table59932_ (&raw-table-table _tab59928_))
              (_seed59933_ (&raw-table-seed _tab59928_))
              (_hash59934_ (&raw-table-hash _tab59928_))
              (_test59935_ (&raw-table-test _tab59928_)))
          (let* ((_h59937_ (fxxor (_hash59934_ _key59929_) _seed59933_))
                 (_size59940_ (vector-length _table59932_))
                 (_entries59943_ (fxquotient _size59940_ '2))
                 (_start59946_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59937_ _entries59943_)
                   '1)))
            (let _loop59950_ ((_probe59953_ _start59946_)
                              (_i59955_ '1)
                              (_deleted59957_ '#f))
              (let ((_k59960_ (vector-ref _table59932_ _probe59953_)))
                (if (eq? _k59960_ (macro-unused-obj))
                    _default59930_
                    (if (eq? _k59960_ (macro-deleted-obj))
                        (_loop59950_
                         (let ((_next-probe59963_
                                (fx+ _start59946_
                                     _i59955_
                                     (fx* _i59955_ _i59955_))))
                           (fxmodulo _next-probe59963_ _size59940_))
                         (fx+ _i59955_ '1)
                         (let ((_$e59966_ _deleted59957_))
                           (if _$e59966_ _$e59966_ _probe59953_)))
                        (if (_test59935_ _key59929_ _k59960_)
                            (vector-ref _table59932_ (fx+ _probe59953_ '1))
                            (_loop59950_
                             (let ((_next-probe59969_
                                    (fx+ _start59946_
                                         _i59955_
                                         (fx* _i59955_ _i59955_))))
                               (fxmodulo _next-probe59969_ _size59940_))
                             (fx+ _i59955_ '1)
                             _deleted59957_))))))))))
    (define raw-table-set!
      (lambda (_tab59924_ _key59925_ _value59926_)
        (if (fx< (&raw-table-free _tab59924_)
                 (fxquotient (vector-length (&raw-table-table _tab59924_)) '4))
            (__raw-table-rehash! _tab59924_)
            '#!void)
        (__raw-table-set! _tab59924_ _key59925_ _value59926_)))
    (define raw-table-update!
      (lambda (_tab59919_ _key59920_ _update59921_ _default59922_)
        (if (fx< (&raw-table-free _tab59919_)
                 (fxquotient (vector-length (&raw-table-table _tab59919_)) '4))
            (__raw-table-rehash! _tab59919_)
            '#!void)
        (__raw-table-update!
         _tab59919_
         _key59920_
         _update59921_
         _default59922_)))
    (define raw-table-delete!
      (lambda (_tab59880_ _key59881_)
        (let ((_table59883_ (&raw-table-table _tab59880_))
              (_seed59884_ (&raw-table-seed _tab59880_))
              (_hash59885_ (&raw-table-hash _tab59880_))
              (_test59886_ (&raw-table-test _tab59880_)))
          (let* ((_h59888_ (fxxor (_hash59885_ _key59881_) _seed59884_))
                 (_size59891_ (vector-length _table59883_))
                 (_entries59894_ (fxquotient _size59891_ '2))
                 (_start59897_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59888_ _entries59894_)
                   '1)))
            (let _loop59901_ ((_probe59904_ _start59897_) (_i59906_ '1))
              (let ((_k59909_ (vector-ref _table59883_ _probe59904_)))
                (if (eq? _k59909_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59909_ (macro-deleted-obj))
                        (_loop59901_
                         (let ((_next-probe59912_
                                (fx+ _start59897_
                                     _i59906_
                                     (fx* _i59906_ _i59906_))))
                           (fxmodulo _next-probe59912_ _size59891_))
                         (fx+ _i59906_ '1))
                        (if (_test59886_ _key59881_ _k59909_)
                            (begin
                              (vector-set!
                               _table59883_
                               _probe59904_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59883_
                               (fx+ _probe59904_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59880_
                                  (fx- (&raw-table-count _tab59880_) '1)))))
                            (_loop59901_
                             (let ((_next-probe59916_
                                    (fx+ _start59897_
                                         _i59906_
                                         (fx* _i59906_ _i59906_))))
                               (fxmodulo _next-probe59916_ _size59891_))
                             (fx+ _i59906_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_tab59864_ _proc59865_)
        (let* ((_table59867_ (&raw-table-table _tab59864_))
               (_size59869_ (vector-length _table59867_)))
          (let _loop59872_ ((_i59874_ '0))
            (if (fx< _i59874_ _size59869_)
                (begin
                  (let ((_key59876_ (vector-ref _table59867_ _i59874_)))
                    (if (and (not (eq? _key59876_ (macro-unused-obj)))
                             (not (eq? _key59876_ (macro-deleted-obj))))
                        (let ((_value59878_
                               (vector-ref _table59867_ (fx+ _i59874_ '1))))
                          (_proc59865_ _key59876_ _value59878_))
                        '#!void))
                  (_loop59872_ (fx+ _i59874_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_tab59860_)
        (let ((_new-tab59862_ (##structure-copy _tab59860_)))
          (&raw-table-table-set!
           _new-tab59862_
           (vector-copy (&raw-table-table _tab59860_)))
          _new-tab59862_)))
    (define raw-table-clear!
      (lambda (_tab59858_)
        (vector-fill! (&raw-table-table _tab59858_) (macro-unused-obj))
        (&raw-table-count-set! _tab59858_ '0)
        (&raw-table-free-set!
         _tab59858_
         (fxquotient (vector-length (&raw-table-table _tab59858_)) '2))))
    (define __raw-table-set!
      (lambda (_tab59812_ _key59813_ _value59814_)
        (let ((_table59816_ (&raw-table-table _tab59812_))
              (_seed59817_ (&raw-table-seed _tab59812_))
              (_hash59818_ (&raw-table-hash _tab59812_))
              (_test59819_ (&raw-table-test _tab59812_)))
          (let* ((_h59821_ (fxxor (_hash59818_ _key59813_) _seed59817_))
                 (_size59824_ (vector-length _table59816_))
                 (_entries59827_ (fxquotient _size59824_ '2))
                 (_start59830_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59821_ _entries59827_)
                   '1)))
            (let _loop59834_ ((_probe59837_ _start59830_)
                              (_i59839_ '1)
                              (_deleted59841_ '#f))
              (let ((_k59844_ (vector-ref _table59816_ _probe59837_)))
                (if (eq? _k59844_ (macro-unused-obj))
                    (if _deleted59841_
                        (begin
                          (vector-set! _table59816_ _deleted59841_ _key59813_)
                          (vector-set!
                           _table59816_
                           (fx+ _deleted59841_ '1)
                           _value59814_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59812_
                              (fx+ (&raw-table-count _tab59812_) '1)))))
                        (begin
                          (vector-set! _table59816_ _probe59837_ _key59813_)
                          (vector-set!
                           _table59816_
                           (fx+ _probe59837_ '1)
                           _value59814_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59812_
                              (fx- (&raw-table-free _tab59812_) '1))
                             (&raw-table-count-set!
                              _tab59812_
                              (fx+ (&raw-table-count _tab59812_) '1))))))
                    (if (eq? _k59844_ (macro-deleted-obj))
                        (_loop59834_
                         (let ((_next-probe59849_
                                (fx+ _start59830_
                                     _i59839_
                                     (fx* _i59839_ _i59839_))))
                           (fxmodulo _next-probe59849_ _size59824_))
                         (fx+ _i59839_ '1)
                         (let ((_$e59852_ _deleted59841_))
                           (if _$e59852_ _$e59852_ _probe59837_)))
                        (if (_test59819_ _key59813_ _k59844_)
                            (begin
                              (vector-set!
                               _table59816_
                               _probe59837_
                               _key59813_)
                              (vector-set!
                               _table59816_
                               (fx+ _probe59837_ '1)
                               _value59814_))
                            (_loop59834_
                             (let ((_next-probe59855_
                                    (fx+ _start59830_
                                         _i59839_
                                         (fx* _i59839_ _i59839_))))
                               (fxmodulo _next-probe59855_ _size59824_))
                             (fx+ _i59839_ '1)
                             _deleted59841_))))))))))
    (define __raw-table-update!
      (lambda (_tab59765_ _key59766_ _update59767_ _default59768_)
        (let ((_table59770_ (&raw-table-table _tab59765_))
              (_seed59771_ (&raw-table-seed _tab59765_))
              (_hash59772_ (&raw-table-hash _tab59765_))
              (_test59773_ (&raw-table-test _tab59765_)))
          (let* ((_h59775_ (fxxor (_hash59772_ _key59766_) _seed59771_))
                 (_size59778_ (vector-length _table59770_))
                 (_entries59781_ (fxquotient _size59778_ '2))
                 (_start59784_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59775_ _entries59781_)
                   '1)))
            (let _loop59788_ ((_probe59791_ _start59784_)
                              (_i59793_ '1)
                              (_deleted59795_ '#f))
              (let ((_k59798_ (vector-ref _table59770_ _probe59791_)))
                (if (eq? _k59798_ (macro-unused-obj))
                    (if _deleted59795_
                        (begin
                          (vector-set! _table59770_ _deleted59795_ _key59766_)
                          (vector-set!
                           _table59770_
                           (fx+ _deleted59795_ '1)
                           (_update59767_ _default59768_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59765_
                              (fx+ (&raw-table-count _tab59765_) '1)))))
                        (begin
                          (vector-set! _table59770_ _probe59791_ _key59766_)
                          (vector-set!
                           _table59770_
                           (fx+ _probe59791_ '1)
                           (_update59767_ _default59768_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59765_
                              (fx- (&raw-table-free _tab59765_) '1))
                             (&raw-table-count-set!
                              _tab59765_
                              (fx+ (&raw-table-count _tab59765_) '1))))))
                    (if (eq? _k59798_ (macro-deleted-obj))
                        (_loop59788_
                         (let ((_next-probe59803_
                                (fx+ _start59784_
                                     _i59793_
                                     (fx* _i59793_ _i59793_))))
                           (fxmodulo _next-probe59803_ _size59778_))
                         (fx+ _i59793_ '1)
                         (let ((_$e59806_ _deleted59795_))
                           (if _$e59806_ _$e59806_ _probe59791_)))
                        (if (_test59773_ _key59766_ _k59798_)
                            (begin
                              (vector-set!
                               _table59770_
                               _probe59791_
                               _key59766_)
                              (vector-set!
                               _table59770_
                               (fx+ _probe59791_ '1)
                               (_update59767_
                                (vector-ref
                                 _table59770_
                                 (fx+ _probe59791_ '1)))))
                            (_loop59788_
                             (let ((_next-probe59809_
                                    (fx+ _start59784_
                                         _i59793_
                                         (fx* _i59793_ _i59793_))))
                               (fxmodulo _next-probe59809_ _size59778_))
                             (fx+ _i59793_ '1)
                             _deleted59795_))))))))))
    (define __raw-table-rehash!
      (lambda (_tab59746_)
        (let* ((_old-table59748_ (&raw-table-table _tab59746_))
               (_old-size59750_ (vector-length _old-table59748_))
               (_new-size59752_
                (if (fx< (&raw-table-count _tab59746_)
                         (fxquotient _old-size59750_ '4))
                    (vector-length _old-table59748_)
                    (fx* '2 (vector-length _old-table59748_))))
               (_new-table59754_
                (make-vector _new-size59752_ (macro-unused-obj))))
          (&raw-table-table-set! _tab59746_ _new-table59754_)
          (&raw-table-count-set! _tab59746_ '0)
          (&raw-table-free-set! _tab59746_ (fxquotient _new-size59752_ '2))
          (let _lp59757_ ((_i59759_ '0))
            (if (fx< _i59759_ _old-size59750_)
                (begin
                  (let ((_key59761_ (vector-ref _old-table59748_ _i59759_)))
                    (if (and (not (eq? _key59761_ (macro-unused-obj)))
                             (not (eq? _key59761_ (macro-deleted-obj))))
                        (let ((_value59763_
                               (vector-ref
                                _old-table59748_
                                (fx+ _i59759_ '1))))
                          (__raw-table-set!
                           _tab59746_
                           _key59761_
                           _value59763_))
                        '#!void))
                  (_lp59757_ (fx+ _i59759_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_obj59742_)
        (let ((_t59744_ (##type _obj59742_)))
          (if (fx= (fxand _t59744_ '1) '0)
              (fxand (##type-cast _obj59742_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _obj59742_)
                  (symbolic-hash _obj59742_)
                  (if (procedure? _obj59742_)
                      (procedure-hash _obj59742_)
                      (fxand (__eq-hash _obj59742_) (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_obj59738_)
        (let ((_h59740_
               (if (##closure? _obj59738_)
                   (__eq-hash _obj59738_)
                   (##type-cast _obj59738_ '0))))
          (fxand _h59740_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_obj59735_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _obj59735_)))
    (define eqv-hash
      (lambda (_obj59725_)
        (letrec ((_combine59727_
                  (lambda (_a59732_ _b59733_)
                    (fxand (fx* (fx+ _a59732_
                                     (fxarithmetic-shift-left _b59733_ '1))
                                '331804471)
                           (macro-max-fixnum32))))
                 (_hash59728_
                  (lambda (_obj59730_)
                    (macro-number-dispatch
                     _obj59730_
                     (eq-hash _obj59730_)
                     (fxand _obj59730_ (macro-max-fixnum32))
                     (modulo _obj59730_ '331804481)
                     (_combine59727_
                      (_hash59728_ (macro-ratnum-numerator _obj59730_))
                      (_hash59728_ (macro-ratnum-denominator _obj59730_)))
                     (_combine59727_
                      (##u16vector-ref _obj59730_ '0)
                      (_combine59727_
                       (##u16vector-ref _obj59730_ '1)
                       (_combine59727_
                        (##u16vector-ref _obj59730_ '2)
                        (##u16vector-ref _obj59730_ '3))))
                     (_combine59727_
                      (_hash59728_ (macro-cpxnum-real _obj59730_))
                      (_hash59728_ (macro-cpxnum-imag _obj59730_)))))))
          (_hash59728_ _obj59725_))))
    (define symbolic?
      (lambda (_obj59720_)
        (let ((_$e59722_ (symbol? _obj59720_)))
          (if _$e59722_ _$e59722_ (keyword? _obj59720_)))))
    (define symbolic-hash (lambda (_obj59718_) (macro-slot '1 _obj59718_)))
    (define string-hash (lambda (_obj59716_) (##string=?-hash _obj59716_)))
    (define immediate-hash
      (lambda (_obj59714_) (##type-cast _obj59714_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_size-hint59695_ _seed59697_)
        (make-raw-table__% _size-hint59695_ eq-hash eq? _seed59697_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_size-hint59703_ '#f) (_seed59705_ '0))
          (make-eq-table__% _size-hint59703_ _seed59705_))))
    (define make-eq-table__1
      (lambda (_size-hint59707_)
        (let ((_seed59709_ '0))
          (make-eq-table__% _size-hint59707_ _seed59709_))))
    (define make-eq-table
      (lambda _g60031_
        (let ((_g60030_ (##length _g60031_)))
          (cond ((##fx= _g60030_ 0)
                 (apply (lambda () (make-eq-table__0)) _g60031_))
                ((##fx= _g60030_ 1)
                 (apply (lambda (_size-hint59707_)
                          (make-eq-table__1 _size-hint59707_))
                        _g60031_))
                ((##fx= _g60030_ 2)
                 (apply (lambda (_size-hint59711_ _seed59712_)
                          (make-eq-table__% _size-hint59711_ _seed59712_))
                        _g60031_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g60031_))))))
    (define eq-table-ref
      (lambda (_tab59652_ _key59653_ _default59654_)
        (let ((_table59656_ (&raw-table-table _tab59652_))
              (_seed59657_ (&raw-table-seed _tab59652_)))
          (let* ((_h59659_ (fxxor (eq-hash _key59653_) _seed59657_))
                 (_size59662_ (vector-length _table59656_))
                 (_entries59665_ (fxquotient _size59662_ '2))
                 (_start59668_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59659_ _entries59665_)
                   '1)))
            (let _loop59672_ ((_probe59675_ _start59668_)
                              (_i59677_ '1)
                              (_deleted59679_ '#f))
              (let ((_k59682_ (vector-ref _table59656_ _probe59675_)))
                (if (eq? _k59682_ (macro-unused-obj))
                    _default59654_
                    (if (eq? _k59682_ (macro-deleted-obj))
                        (_loop59672_
                         (let ((_next-probe59685_
                                (fx+ _start59668_
                                     _i59677_
                                     (fx* _i59677_ _i59677_))))
                           (fxmodulo _next-probe59685_ _size59662_))
                         (fx+ _i59677_ '1)
                         (let ((_$e59688_ _deleted59679_))
                           (if _$e59688_ _$e59688_ _probe59675_)))
                        (if (eq? _key59653_ _k59682_)
                            (vector-ref _table59656_ (fx+ _probe59675_ '1))
                            (_loop59672_
                             (let ((_next-probe59691_
                                    (fx+ _start59668_
                                         _i59677_
                                         (fx* _i59677_ _i59677_))))
                               (fxmodulo _next-probe59691_ _size59662_))
                             (fx+ _i59677_ '1)
                             _deleted59679_))))))))))
    (define eq-table-set!
      (lambda (_tab59648_ _key59649_ _value59650_)
        (if (fx< (&raw-table-free _tab59648_)
                 (fxquotient (vector-length (&raw-table-table _tab59648_)) '4))
            (__raw-table-rehash! _tab59648_)
            '#!void)
        (__eq-table-set! _tab59648_ _key59649_ _value59650_)))
    (define __eq-table-set!
      (lambda (_tab59603_ _key59604_ _value59605_)
        (let ((_table59608_ (&raw-table-table _tab59603_))
              (_seed59609_ (&raw-table-seed _tab59603_)))
          (let* ((_h59611_ (fxxor (eq-hash _key59604_) _seed59609_))
                 (_size59614_ (vector-length _table59608_))
                 (_entries59617_ (fxquotient _size59614_ '2))
                 (_start59620_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59611_ _entries59617_)
                   '1)))
            (let _loop59624_ ((_probe59627_ _start59620_)
                              (_i59629_ '1)
                              (_deleted59631_ '#f))
              (let ((_k59634_ (vector-ref _table59608_ _probe59627_)))
                (if (eq? _k59634_ (macro-unused-obj))
                    (if _deleted59631_
                        (begin
                          (vector-set! _table59608_ _deleted59631_ _key59604_)
                          (vector-set!
                           _table59608_
                           (fx+ _deleted59631_ '1)
                           _value59605_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59603_
                              (fx+ (&raw-table-count _tab59603_) '1)))))
                        (begin
                          (vector-set! _table59608_ _probe59627_ _key59604_)
                          (vector-set!
                           _table59608_
                           (fx+ _probe59627_ '1)
                           _value59605_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59603_
                              (fx- (&raw-table-free _tab59603_) '1))
                             (&raw-table-count-set!
                              _tab59603_
                              (fx+ (&raw-table-count _tab59603_) '1))))))
                    (if (eq? _k59634_ (macro-deleted-obj))
                        (_loop59624_
                         (let ((_next-probe59639_
                                (fx+ _start59620_
                                     _i59629_
                                     (fx* _i59629_ _i59629_))))
                           (fxmodulo _next-probe59639_ _size59614_))
                         (fx+ _i59629_ '1)
                         (let ((_$e59642_ _deleted59631_))
                           (if _$e59642_ _$e59642_ _probe59627_)))
                        (if (eq? _key59604_ _k59634_)
                            (begin
                              (vector-set!
                               _table59608_
                               _probe59627_
                               _key59604_)
                              (vector-set!
                               _table59608_
                               (fx+ _probe59627_ '1)
                               _value59605_))
                            (_loop59624_
                             (let ((_next-probe59645_
                                    (fx+ _start59620_
                                         _i59629_
                                         (fx* _i59629_ _i59629_))))
                               (fxmodulo _next-probe59645_ _size59614_))
                             (fx+ _i59629_ '1)
                             _deleted59631_))))))))))
    (define eq-table-update!
      (lambda (_tab59598_ _key59599_ _eq-table-update!59600_ _default59601_)
        (if (fx< (&raw-table-free _tab59598_)
                 (fxquotient (vector-length (&raw-table-table _tab59598_)) '4))
            (__raw-table-rehash! _tab59598_)
            '#!void)
        (__eq-table-update!
         _tab59598_
         _key59599_
         _eq-table-update!59600_
         _default59601_)))
    (define __eq-table-update!
      (lambda (_tab59552_ _key59553_ _eq-table-update!59554_ _default59555_)
        (let ((_table59558_ (&raw-table-table _tab59552_))
              (_seed59559_ (&raw-table-seed _tab59552_)))
          (let* ((_h59561_ (fxxor (eq-hash _key59553_) _seed59559_))
                 (_size59564_ (vector-length _table59558_))
                 (_entries59567_ (fxquotient _size59564_ '2))
                 (_start59570_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59561_ _entries59567_)
                   '1)))
            (let _loop59574_ ((_probe59577_ _start59570_)
                              (_i59579_ '1)
                              (_deleted59581_ '#f))
              (let ((_k59584_ (vector-ref _table59558_ _probe59577_)))
                (if (eq? _k59584_ (macro-unused-obj))
                    (if _deleted59581_
                        (begin
                          (vector-set! _table59558_ _deleted59581_ _key59553_)
                          (vector-set!
                           _table59558_
                           (fx+ _deleted59581_ '1)
                           (_eq-table-update!59554_ _default59555_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59552_
                              (fx+ (&raw-table-count _tab59552_) '1)))))
                        (begin
                          (vector-set! _table59558_ _probe59577_ _key59553_)
                          (vector-set!
                           _table59558_
                           (fx+ _probe59577_ '1)
                           (_eq-table-update!59554_ _default59555_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59552_
                              (fx- (&raw-table-free _tab59552_) '1))
                             (&raw-table-count-set!
                              _tab59552_
                              (fx+ (&raw-table-count _tab59552_) '1))))))
                    (if (eq? _k59584_ (macro-deleted-obj))
                        (_loop59574_
                         (let ((_next-probe59589_
                                (fx+ _start59570_
                                     _i59579_
                                     (fx* _i59579_ _i59579_))))
                           (fxmodulo _next-probe59589_ _size59564_))
                         (fx+ _i59579_ '1)
                         (let ((_$e59592_ _deleted59581_))
                           (if _$e59592_ _$e59592_ _probe59577_)))
                        (if (eq? _key59553_ _k59584_)
                            (begin
                              (vector-set!
                               _table59558_
                               _probe59577_
                               _key59553_)
                              (vector-set!
                               _table59558_
                               (fx+ _probe59577_ '1)
                               (_eq-table-update!59554_
                                (vector-ref
                                 _table59558_
                                 (fx+ _probe59577_ '1)))))
                            (_loop59574_
                             (let ((_next-probe59595_
                                    (fx+ _start59570_
                                         _i59579_
                                         (fx* _i59579_ _i59579_))))
                               (fxmodulo _next-probe59595_ _size59564_))
                             (fx+ _i59579_ '1)
                             _deleted59581_))))))))))
    (define eq-table-delete!
      (lambda (_tab59511_ _key59513_)
        (let ((_table59516_ (&raw-table-table _tab59511_))
              (_seed59518_ (&raw-table-seed _tab59511_)))
          (let* ((_h59521_ (fxxor (eq-hash _key59513_) _seed59518_))
                 (_size59524_ (vector-length _table59516_))
                 (_entries59527_ (fxquotient _size59524_ '2))
                 (_start59530_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59521_ _entries59527_)
                   '1)))
            (let _loop59534_ ((_probe59537_ _start59530_) (_i59539_ '1))
              (let ((_k59542_ (vector-ref _table59516_ _probe59537_)))
                (if (eq? _k59542_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59542_ (macro-deleted-obj))
                        (_loop59534_
                         (let ((_next-probe59545_
                                (fx+ _start59530_
                                     _i59539_
                                     (fx* _i59539_ _i59539_))))
                           (fxmodulo _next-probe59545_ _size59524_))
                         (fx+ _i59539_ '1))
                        (if (eq? _key59513_ _k59542_)
                            (begin
                              (vector-set!
                               _table59516_
                               _probe59537_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59516_
                               (fx+ _probe59537_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59511_
                                  (fx- (&raw-table-count _tab59511_) '1)))))
                            (_loop59534_
                             (let ((_next-probe59549_
                                    (fx+ _start59530_
                                         _i59539_
                                         (fx* _i59539_ _i59539_))))
                               (fxmodulo _next-probe59549_ _size59524_))
                             (fx+ _i59539_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_size-hint59492_ _seed59494_)
        (make-raw-table__% _size-hint59492_ eqv-hash eqv? _seed59494_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_size-hint59500_ '#f) (_seed59502_ '0))
          (make-eqv-table__% _size-hint59500_ _seed59502_))))
    (define make-eqv-table__1
      (lambda (_size-hint59504_)
        (let ((_seed59506_ '0))
          (make-eqv-table__% _size-hint59504_ _seed59506_))))
    (define make-eqv-table
      (lambda _g60033_
        (let ((_g60032_ (##length _g60033_)))
          (cond ((##fx= _g60032_ 0)
                 (apply (lambda () (make-eqv-table__0)) _g60033_))
                ((##fx= _g60032_ 1)
                 (apply (lambda (_size-hint59504_)
                          (make-eqv-table__1 _size-hint59504_))
                        _g60033_))
                ((##fx= _g60032_ 2)
                 (apply (lambda (_size-hint59508_ _seed59509_)
                          (make-eqv-table__% _size-hint59508_ _seed59509_))
                        _g60033_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g60033_))))))
    (define eqv-table-ref
      (lambda (_tab59449_ _key59450_ _default59451_)
        (let ((_table59453_ (&raw-table-table _tab59449_))
              (_seed59454_ (&raw-table-seed _tab59449_)))
          (let* ((_h59456_ (fxxor (eqv-hash _key59450_) _seed59454_))
                 (_size59459_ (vector-length _table59453_))
                 (_entries59462_ (fxquotient _size59459_ '2))
                 (_start59465_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59456_ _entries59462_)
                   '1)))
            (let _loop59469_ ((_probe59472_ _start59465_)
                              (_i59474_ '1)
                              (_deleted59476_ '#f))
              (let ((_k59479_ (vector-ref _table59453_ _probe59472_)))
                (if (eq? _k59479_ (macro-unused-obj))
                    _default59451_
                    (if (eq? _k59479_ (macro-deleted-obj))
                        (_loop59469_
                         (let ((_next-probe59482_
                                (fx+ _start59465_
                                     _i59474_
                                     (fx* _i59474_ _i59474_))))
                           (fxmodulo _next-probe59482_ _size59459_))
                         (fx+ _i59474_ '1)
                         (let ((_$e59485_ _deleted59476_))
                           (if _$e59485_ _$e59485_ _probe59472_)))
                        (if (eqv? _key59450_ _k59479_)
                            (vector-ref _table59453_ (fx+ _probe59472_ '1))
                            (_loop59469_
                             (let ((_next-probe59488_
                                    (fx+ _start59465_
                                         _i59474_
                                         (fx* _i59474_ _i59474_))))
                               (fxmodulo _next-probe59488_ _size59459_))
                             (fx+ _i59474_ '1)
                             _deleted59476_))))))))))
    (define eqv-table-set!
      (lambda (_tab59445_ _key59446_ _value59447_)
        (if (fx< (&raw-table-free _tab59445_)
                 (fxquotient (vector-length (&raw-table-table _tab59445_)) '4))
            (__raw-table-rehash! _tab59445_)
            '#!void)
        (__eqv-table-set! _tab59445_ _key59446_ _value59447_)))
    (define __eqv-table-set!
      (lambda (_tab59400_ _key59401_ _value59402_)
        (let ((_table59405_ (&raw-table-table _tab59400_))
              (_seed59406_ (&raw-table-seed _tab59400_)))
          (let* ((_h59408_ (fxxor (eqv-hash _key59401_) _seed59406_))
                 (_size59411_ (vector-length _table59405_))
                 (_entries59414_ (fxquotient _size59411_ '2))
                 (_start59417_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59408_ _entries59414_)
                   '1)))
            (let _loop59421_ ((_probe59424_ _start59417_)
                              (_i59426_ '1)
                              (_deleted59428_ '#f))
              (let ((_k59431_ (vector-ref _table59405_ _probe59424_)))
                (if (eq? _k59431_ (macro-unused-obj))
                    (if _deleted59428_
                        (begin
                          (vector-set! _table59405_ _deleted59428_ _key59401_)
                          (vector-set!
                           _table59405_
                           (fx+ _deleted59428_ '1)
                           _value59402_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59400_
                              (fx+ (&raw-table-count _tab59400_) '1)))))
                        (begin
                          (vector-set! _table59405_ _probe59424_ _key59401_)
                          (vector-set!
                           _table59405_
                           (fx+ _probe59424_ '1)
                           _value59402_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59400_
                              (fx- (&raw-table-free _tab59400_) '1))
                             (&raw-table-count-set!
                              _tab59400_
                              (fx+ (&raw-table-count _tab59400_) '1))))))
                    (if (eq? _k59431_ (macro-deleted-obj))
                        (_loop59421_
                         (let ((_next-probe59436_
                                (fx+ _start59417_
                                     _i59426_
                                     (fx* _i59426_ _i59426_))))
                           (fxmodulo _next-probe59436_ _size59411_))
                         (fx+ _i59426_ '1)
                         (let ((_$e59439_ _deleted59428_))
                           (if _$e59439_ _$e59439_ _probe59424_)))
                        (if (eqv? _key59401_ _k59431_)
                            (begin
                              (vector-set!
                               _table59405_
                               _probe59424_
                               _key59401_)
                              (vector-set!
                               _table59405_
                               (fx+ _probe59424_ '1)
                               _value59402_))
                            (_loop59421_
                             (let ((_next-probe59442_
                                    (fx+ _start59417_
                                         _i59426_
                                         (fx* _i59426_ _i59426_))))
                               (fxmodulo _next-probe59442_ _size59411_))
                             (fx+ _i59426_ '1)
                             _deleted59428_))))))))))
    (define eqv-table-update!
      (lambda (_tab59395_ _key59396_ _eqv-table-update!59397_ _default59398_)
        (if (fx< (&raw-table-free _tab59395_)
                 (fxquotient (vector-length (&raw-table-table _tab59395_)) '4))
            (__raw-table-rehash! _tab59395_)
            '#!void)
        (__eqv-table-update!
         _tab59395_
         _key59396_
         _eqv-table-update!59397_
         _default59398_)))
    (define __eqv-table-update!
      (lambda (_tab59349_ _key59350_ _eqv-table-update!59351_ _default59352_)
        (let ((_table59355_ (&raw-table-table _tab59349_))
              (_seed59356_ (&raw-table-seed _tab59349_)))
          (let* ((_h59358_ (fxxor (eqv-hash _key59350_) _seed59356_))
                 (_size59361_ (vector-length _table59355_))
                 (_entries59364_ (fxquotient _size59361_ '2))
                 (_start59367_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59358_ _entries59364_)
                   '1)))
            (let _loop59371_ ((_probe59374_ _start59367_)
                              (_i59376_ '1)
                              (_deleted59378_ '#f))
              (let ((_k59381_ (vector-ref _table59355_ _probe59374_)))
                (if (eq? _k59381_ (macro-unused-obj))
                    (if _deleted59378_
                        (begin
                          (vector-set! _table59355_ _deleted59378_ _key59350_)
                          (vector-set!
                           _table59355_
                           (fx+ _deleted59378_ '1)
                           (_eqv-table-update!59351_ _default59352_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59349_
                              (fx+ (&raw-table-count _tab59349_) '1)))))
                        (begin
                          (vector-set! _table59355_ _probe59374_ _key59350_)
                          (vector-set!
                           _table59355_
                           (fx+ _probe59374_ '1)
                           (_eqv-table-update!59351_ _default59352_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59349_
                              (fx- (&raw-table-free _tab59349_) '1))
                             (&raw-table-count-set!
                              _tab59349_
                              (fx+ (&raw-table-count _tab59349_) '1))))))
                    (if (eq? _k59381_ (macro-deleted-obj))
                        (_loop59371_
                         (let ((_next-probe59386_
                                (fx+ _start59367_
                                     _i59376_
                                     (fx* _i59376_ _i59376_))))
                           (fxmodulo _next-probe59386_ _size59361_))
                         (fx+ _i59376_ '1)
                         (let ((_$e59389_ _deleted59378_))
                           (if _$e59389_ _$e59389_ _probe59374_)))
                        (if (eqv? _key59350_ _k59381_)
                            (begin
                              (vector-set!
                               _table59355_
                               _probe59374_
                               _key59350_)
                              (vector-set!
                               _table59355_
                               (fx+ _probe59374_ '1)
                               (_eqv-table-update!59351_
                                (vector-ref
                                 _table59355_
                                 (fx+ _probe59374_ '1)))))
                            (_loop59371_
                             (let ((_next-probe59392_
                                    (fx+ _start59367_
                                         _i59376_
                                         (fx* _i59376_ _i59376_))))
                               (fxmodulo _next-probe59392_ _size59361_))
                             (fx+ _i59376_ '1)
                             _deleted59378_))))))))))
    (define eqv-table-delete!
      (lambda (_tab59308_ _key59310_)
        (let ((_table59313_ (&raw-table-table _tab59308_))
              (_seed59315_ (&raw-table-seed _tab59308_)))
          (let* ((_h59318_ (fxxor (eqv-hash _key59310_) _seed59315_))
                 (_size59321_ (vector-length _table59313_))
                 (_entries59324_ (fxquotient _size59321_ '2))
                 (_start59327_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59318_ _entries59324_)
                   '1)))
            (let _loop59331_ ((_probe59334_ _start59327_) (_i59336_ '1))
              (let ((_k59339_ (vector-ref _table59313_ _probe59334_)))
                (if (eq? _k59339_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59339_ (macro-deleted-obj))
                        (_loop59331_
                         (let ((_next-probe59342_
                                (fx+ _start59327_
                                     _i59336_
                                     (fx* _i59336_ _i59336_))))
                           (fxmodulo _next-probe59342_ _size59321_))
                         (fx+ _i59336_ '1))
                        (if (eqv? _key59310_ _k59339_)
                            (begin
                              (vector-set!
                               _table59313_
                               _probe59334_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59313_
                               (fx+ _probe59334_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59308_
                                  (fx- (&raw-table-count _tab59308_) '1)))))
                            (_loop59331_
                             (let ((_next-probe59346_
                                    (fx+ _start59327_
                                         _i59336_
                                         (fx* _i59336_ _i59336_))))
                               (fxmodulo _next-probe59346_ _size59321_))
                             (fx+ _i59336_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_size-hint59289_ _seed59291_)
        (make-raw-table__% _size-hint59289_ symbolic-hash eq? _seed59291_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_size-hint59297_ '#f) (_seed59299_ '0))
          (make-symbolic-table__% _size-hint59297_ _seed59299_))))
    (define make-symbolic-table__1
      (lambda (_size-hint59301_)
        (let ((_seed59303_ '0))
          (make-symbolic-table__% _size-hint59301_ _seed59303_))))
    (define make-symbolic-table
      (lambda _g60035_
        (let ((_g60034_ (##length _g60035_)))
          (cond ((##fx= _g60034_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g60035_))
                ((##fx= _g60034_ 1)
                 (apply (lambda (_size-hint59301_)
                          (make-symbolic-table__1 _size-hint59301_))
                        _g60035_))
                ((##fx= _g60034_ 2)
                 (apply (lambda (_size-hint59305_ _seed59306_)
                          (make-symbolic-table__%
                           _size-hint59305_
                           _seed59306_))
                        _g60035_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g60035_))))))
    (define symbolic-table-ref
      (lambda (_tab59246_ _key59247_ _default59248_)
        (let ((_table59250_ (&raw-table-table _tab59246_))
              (_seed59251_ (&raw-table-seed _tab59246_)))
          (let* ((_h59253_ (fxxor (symbolic-hash _key59247_) _seed59251_))
                 (_size59256_ (vector-length _table59250_))
                 (_entries59259_ (fxquotient _size59256_ '2))
                 (_start59262_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59253_ _entries59259_)
                   '1)))
            (let _loop59266_ ((_probe59269_ _start59262_)
                              (_i59271_ '1)
                              (_deleted59273_ '#f))
              (let ((_k59276_ (vector-ref _table59250_ _probe59269_)))
                (if (eq? _k59276_ (macro-unused-obj))
                    _default59248_
                    (if (eq? _k59276_ (macro-deleted-obj))
                        (_loop59266_
                         (let ((_next-probe59279_
                                (fx+ _start59262_
                                     _i59271_
                                     (fx* _i59271_ _i59271_))))
                           (fxmodulo _next-probe59279_ _size59256_))
                         (fx+ _i59271_ '1)
                         (let ((_$e59282_ _deleted59273_))
                           (if _$e59282_ _$e59282_ _probe59269_)))
                        (if (eq? _key59247_ _k59276_)
                            (vector-ref _table59250_ (fx+ _probe59269_ '1))
                            (_loop59266_
                             (let ((_next-probe59285_
                                    (fx+ _start59262_
                                         _i59271_
                                         (fx* _i59271_ _i59271_))))
                               (fxmodulo _next-probe59285_ _size59256_))
                             (fx+ _i59271_ '1)
                             _deleted59273_))))))))))
    (define symbolic-table-set!
      (lambda (_tab59242_ _key59243_ _value59244_)
        (if (fx< (&raw-table-free _tab59242_)
                 (fxquotient (vector-length (&raw-table-table _tab59242_)) '4))
            (__raw-table-rehash! _tab59242_)
            '#!void)
        (__symbolic-table-set! _tab59242_ _key59243_ _value59244_)))
    (define __symbolic-table-set!
      (lambda (_tab59197_ _key59198_ _value59199_)
        (let ((_table59202_ (&raw-table-table _tab59197_))
              (_seed59203_ (&raw-table-seed _tab59197_)))
          (let* ((_h59205_ (fxxor (symbolic-hash _key59198_) _seed59203_))
                 (_size59208_ (vector-length _table59202_))
                 (_entries59211_ (fxquotient _size59208_ '2))
                 (_start59214_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59205_ _entries59211_)
                   '1)))
            (let _loop59218_ ((_probe59221_ _start59214_)
                              (_i59223_ '1)
                              (_deleted59225_ '#f))
              (let ((_k59228_ (vector-ref _table59202_ _probe59221_)))
                (if (eq? _k59228_ (macro-unused-obj))
                    (if _deleted59225_
                        (begin
                          (vector-set! _table59202_ _deleted59225_ _key59198_)
                          (vector-set!
                           _table59202_
                           (fx+ _deleted59225_ '1)
                           _value59199_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59197_
                              (fx+ (&raw-table-count _tab59197_) '1)))))
                        (begin
                          (vector-set! _table59202_ _probe59221_ _key59198_)
                          (vector-set!
                           _table59202_
                           (fx+ _probe59221_ '1)
                           _value59199_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59197_
                              (fx- (&raw-table-free _tab59197_) '1))
                             (&raw-table-count-set!
                              _tab59197_
                              (fx+ (&raw-table-count _tab59197_) '1))))))
                    (if (eq? _k59228_ (macro-deleted-obj))
                        (_loop59218_
                         (let ((_next-probe59233_
                                (fx+ _start59214_
                                     _i59223_
                                     (fx* _i59223_ _i59223_))))
                           (fxmodulo _next-probe59233_ _size59208_))
                         (fx+ _i59223_ '1)
                         (let ((_$e59236_ _deleted59225_))
                           (if _$e59236_ _$e59236_ _probe59221_)))
                        (if (eq? _key59198_ _k59228_)
                            (begin
                              (vector-set!
                               _table59202_
                               _probe59221_
                               _key59198_)
                              (vector-set!
                               _table59202_
                               (fx+ _probe59221_ '1)
                               _value59199_))
                            (_loop59218_
                             (let ((_next-probe59239_
                                    (fx+ _start59214_
                                         _i59223_
                                         (fx* _i59223_ _i59223_))))
                               (fxmodulo _next-probe59239_ _size59208_))
                             (fx+ _i59223_ '1)
                             _deleted59225_))))))))))
    (define symbolic-table-update!
      (lambda (_tab59192_
               _key59193_
               _symbolic-table-update!59194_
               _default59195_)
        (if (fx< (&raw-table-free _tab59192_)
                 (fxquotient (vector-length (&raw-table-table _tab59192_)) '4))
            (__raw-table-rehash! _tab59192_)
            '#!void)
        (__symbolic-table-update!
         _tab59192_
         _key59193_
         _symbolic-table-update!59194_
         _default59195_)))
    (define __symbolic-table-update!
      (lambda (_tab59146_
               _key59147_
               _symbolic-table-update!59148_
               _default59149_)
        (let ((_table59152_ (&raw-table-table _tab59146_))
              (_seed59153_ (&raw-table-seed _tab59146_)))
          (let* ((_h59155_ (fxxor (symbolic-hash _key59147_) _seed59153_))
                 (_size59158_ (vector-length _table59152_))
                 (_entries59161_ (fxquotient _size59158_ '2))
                 (_start59164_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59155_ _entries59161_)
                   '1)))
            (let _loop59168_ ((_probe59171_ _start59164_)
                              (_i59173_ '1)
                              (_deleted59175_ '#f))
              (let ((_k59178_ (vector-ref _table59152_ _probe59171_)))
                (if (eq? _k59178_ (macro-unused-obj))
                    (if _deleted59175_
                        (begin
                          (vector-set! _table59152_ _deleted59175_ _key59147_)
                          (vector-set!
                           _table59152_
                           (fx+ _deleted59175_ '1)
                           (_symbolic-table-update!59148_ _default59149_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59146_
                              (fx+ (&raw-table-count _tab59146_) '1)))))
                        (begin
                          (vector-set! _table59152_ _probe59171_ _key59147_)
                          (vector-set!
                           _table59152_
                           (fx+ _probe59171_ '1)
                           (_symbolic-table-update!59148_ _default59149_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59146_
                              (fx- (&raw-table-free _tab59146_) '1))
                             (&raw-table-count-set!
                              _tab59146_
                              (fx+ (&raw-table-count _tab59146_) '1))))))
                    (if (eq? _k59178_ (macro-deleted-obj))
                        (_loop59168_
                         (let ((_next-probe59183_
                                (fx+ _start59164_
                                     _i59173_
                                     (fx* _i59173_ _i59173_))))
                           (fxmodulo _next-probe59183_ _size59158_))
                         (fx+ _i59173_ '1)
                         (let ((_$e59186_ _deleted59175_))
                           (if _$e59186_ _$e59186_ _probe59171_)))
                        (if (eq? _key59147_ _k59178_)
                            (begin
                              (vector-set!
                               _table59152_
                               _probe59171_
                               _key59147_)
                              (vector-set!
                               _table59152_
                               (fx+ _probe59171_ '1)
                               (_symbolic-table-update!59148_
                                (vector-ref
                                 _table59152_
                                 (fx+ _probe59171_ '1)))))
                            (_loop59168_
                             (let ((_next-probe59189_
                                    (fx+ _start59164_
                                         _i59173_
                                         (fx* _i59173_ _i59173_))))
                               (fxmodulo _next-probe59189_ _size59158_))
                             (fx+ _i59173_ '1)
                             _deleted59175_))))))))))
    (define symbolic-table-delete!
      (lambda (_tab59105_ _key59107_)
        (let ((_table59110_ (&raw-table-table _tab59105_))
              (_seed59112_ (&raw-table-seed _tab59105_)))
          (let* ((_h59115_ (fxxor (symbolic-hash _key59107_) _seed59112_))
                 (_size59118_ (vector-length _table59110_))
                 (_entries59121_ (fxquotient _size59118_ '2))
                 (_start59124_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59115_ _entries59121_)
                   '1)))
            (let _loop59128_ ((_probe59131_ _start59124_) (_i59133_ '1))
              (let ((_k59136_ (vector-ref _table59110_ _probe59131_)))
                (if (eq? _k59136_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59136_ (macro-deleted-obj))
                        (_loop59128_
                         (let ((_next-probe59139_
                                (fx+ _start59124_
                                     _i59133_
                                     (fx* _i59133_ _i59133_))))
                           (fxmodulo _next-probe59139_ _size59118_))
                         (fx+ _i59133_ '1))
                        (if (eq? _key59107_ _k59136_)
                            (begin
                              (vector-set!
                               _table59110_
                               _probe59131_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59110_
                               (fx+ _probe59131_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59105_
                                  (fx- (&raw-table-count _tab59105_) '1)))))
                            (_loop59128_
                             (let ((_next-probe59143_
                                    (fx+ _start59124_
                                         _i59133_
                                         (fx* _i59133_ _i59133_))))
                               (fxmodulo _next-probe59143_ _size59118_))
                             (fx+ _i59133_ '1)))))))))))
    (define make-string-table__%
      (lambda (_size-hint59086_ _seed59088_)
        (make-raw-table__%
         _size-hint59086_
         string-hash
         ##string=?
         _seed59088_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_size-hint59094_ '#f) (_seed59096_ '0))
          (make-string-table__% _size-hint59094_ _seed59096_))))
    (define make-string-table__1
      (lambda (_size-hint59098_)
        (let ((_seed59100_ '0))
          (make-string-table__% _size-hint59098_ _seed59100_))))
    (define make-string-table
      (lambda _g60037_
        (let ((_g60036_ (##length _g60037_)))
          (cond ((##fx= _g60036_ 0)
                 (apply (lambda () (make-string-table__0)) _g60037_))
                ((##fx= _g60036_ 1)
                 (apply (lambda (_size-hint59098_)
                          (make-string-table__1 _size-hint59098_))
                        _g60037_))
                ((##fx= _g60036_ 2)
                 (apply (lambda (_size-hint59102_ _seed59103_)
                          (make-string-table__% _size-hint59102_ _seed59103_))
                        _g60037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g60037_))))))
    (define string-table-ref
      (lambda (_tab59043_ _key59044_ _default59045_)
        (let ((_table59047_ (&raw-table-table _tab59043_))
              (_seed59048_ (&raw-table-seed _tab59043_)))
          (let* ((_h59050_ (fxxor (##string=?-hash _key59044_) _seed59048_))
                 (_size59053_ (vector-length _table59047_))
                 (_entries59056_ (fxquotient _size59053_ '2))
                 (_start59059_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59050_ _entries59056_)
                   '1)))
            (let _loop59063_ ((_probe59066_ _start59059_)
                              (_i59068_ '1)
                              (_deleted59070_ '#f))
              (let ((_k59073_ (vector-ref _table59047_ _probe59066_)))
                (if (eq? _k59073_ (macro-unused-obj))
                    _default59045_
                    (if (eq? _k59073_ (macro-deleted-obj))
                        (_loop59063_
                         (let ((_next-probe59076_
                                (fx+ _start59059_
                                     _i59068_
                                     (fx* _i59068_ _i59068_))))
                           (fxmodulo _next-probe59076_ _size59053_))
                         (fx+ _i59068_ '1)
                         (let ((_$e59079_ _deleted59070_))
                           (if _$e59079_ _$e59079_ _probe59066_)))
                        (if (##string=? _key59044_ _k59073_)
                            (vector-ref _table59047_ (fx+ _probe59066_ '1))
                            (_loop59063_
                             (let ((_next-probe59082_
                                    (fx+ _start59059_
                                         _i59068_
                                         (fx* _i59068_ _i59068_))))
                               (fxmodulo _next-probe59082_ _size59053_))
                             (fx+ _i59068_ '1)
                             _deleted59070_))))))))))
    (define string-table-set!
      (lambda (_tab59039_ _key59040_ _value59041_)
        (if (fx< (&raw-table-free _tab59039_)
                 (fxquotient (vector-length (&raw-table-table _tab59039_)) '4))
            (__raw-table-rehash! _tab59039_)
            '#!void)
        (__string-table-set! _tab59039_ _key59040_ _value59041_)))
    (define __string-table-set!
      (lambda (_tab58994_ _key58995_ _value58996_)
        (let ((_table58999_ (&raw-table-table _tab58994_))
              (_seed59000_ (&raw-table-seed _tab58994_)))
          (let* ((_h59002_ (fxxor (##string=?-hash _key58995_) _seed59000_))
                 (_size59005_ (vector-length _table58999_))
                 (_entries59008_ (fxquotient _size59005_ '2))
                 (_start59011_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59002_ _entries59008_)
                   '1)))
            (let _loop59015_ ((_probe59018_ _start59011_)
                              (_i59020_ '1)
                              (_deleted59022_ '#f))
              (let ((_k59025_ (vector-ref _table58999_ _probe59018_)))
                (if (eq? _k59025_ (macro-unused-obj))
                    (if _deleted59022_
                        (begin
                          (vector-set! _table58999_ _deleted59022_ _key58995_)
                          (vector-set!
                           _table58999_
                           (fx+ _deleted59022_ '1)
                           _value58996_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58994_
                              (fx+ (&raw-table-count _tab58994_) '1)))))
                        (begin
                          (vector-set! _table58999_ _probe59018_ _key58995_)
                          (vector-set!
                           _table58999_
                           (fx+ _probe59018_ '1)
                           _value58996_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58994_
                              (fx- (&raw-table-free _tab58994_) '1))
                             (&raw-table-count-set!
                              _tab58994_
                              (fx+ (&raw-table-count _tab58994_) '1))))))
                    (if (eq? _k59025_ (macro-deleted-obj))
                        (_loop59015_
                         (let ((_next-probe59030_
                                (fx+ _start59011_
                                     _i59020_
                                     (fx* _i59020_ _i59020_))))
                           (fxmodulo _next-probe59030_ _size59005_))
                         (fx+ _i59020_ '1)
                         (let ((_$e59033_ _deleted59022_))
                           (if _$e59033_ _$e59033_ _probe59018_)))
                        (if (##string=? _key58995_ _k59025_)
                            (begin
                              (vector-set!
                               _table58999_
                               _probe59018_
                               _key58995_)
                              (vector-set!
                               _table58999_
                               (fx+ _probe59018_ '1)
                               _value58996_))
                            (_loop59015_
                             (let ((_next-probe59036_
                                    (fx+ _start59011_
                                         _i59020_
                                         (fx* _i59020_ _i59020_))))
                               (fxmodulo _next-probe59036_ _size59005_))
                             (fx+ _i59020_ '1)
                             _deleted59022_))))))))))
    (define string-table-update!
      (lambda (_tab58989_
               _key58990_
               _string-table-update!58991_
               _default58992_)
        (if (fx< (&raw-table-free _tab58989_)
                 (fxquotient (vector-length (&raw-table-table _tab58989_)) '4))
            (__raw-table-rehash! _tab58989_)
            '#!void)
        (__string-table-update!
         _tab58989_
         _key58990_
         _string-table-update!58991_
         _default58992_)))
    (define __string-table-update!
      (lambda (_tab58943_
               _key58944_
               _string-table-update!58945_
               _default58946_)
        (let ((_table58949_ (&raw-table-table _tab58943_))
              (_seed58950_ (&raw-table-seed _tab58943_)))
          (let* ((_h58952_ (fxxor (##string=?-hash _key58944_) _seed58950_))
                 (_size58955_ (vector-length _table58949_))
                 (_entries58958_ (fxquotient _size58955_ '2))
                 (_start58961_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58952_ _entries58958_)
                   '1)))
            (let _loop58965_ ((_probe58968_ _start58961_)
                              (_i58970_ '1)
                              (_deleted58972_ '#f))
              (let ((_k58975_ (vector-ref _table58949_ _probe58968_)))
                (if (eq? _k58975_ (macro-unused-obj))
                    (if _deleted58972_
                        (begin
                          (vector-set! _table58949_ _deleted58972_ _key58944_)
                          (vector-set!
                           _table58949_
                           (fx+ _deleted58972_ '1)
                           (_string-table-update!58945_ _default58946_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58943_
                              (fx+ (&raw-table-count _tab58943_) '1)))))
                        (begin
                          (vector-set! _table58949_ _probe58968_ _key58944_)
                          (vector-set!
                           _table58949_
                           (fx+ _probe58968_ '1)
                           (_string-table-update!58945_ _default58946_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58943_
                              (fx- (&raw-table-free _tab58943_) '1))
                             (&raw-table-count-set!
                              _tab58943_
                              (fx+ (&raw-table-count _tab58943_) '1))))))
                    (if (eq? _k58975_ (macro-deleted-obj))
                        (_loop58965_
                         (let ((_next-probe58980_
                                (fx+ _start58961_
                                     _i58970_
                                     (fx* _i58970_ _i58970_))))
                           (fxmodulo _next-probe58980_ _size58955_))
                         (fx+ _i58970_ '1)
                         (let ((_$e58983_ _deleted58972_))
                           (if _$e58983_ _$e58983_ _probe58968_)))
                        (if (##string=? _key58944_ _k58975_)
                            (begin
                              (vector-set!
                               _table58949_
                               _probe58968_
                               _key58944_)
                              (vector-set!
                               _table58949_
                               (fx+ _probe58968_ '1)
                               (_string-table-update!58945_
                                (vector-ref
                                 _table58949_
                                 (fx+ _probe58968_ '1)))))
                            (_loop58965_
                             (let ((_next-probe58986_
                                    (fx+ _start58961_
                                         _i58970_
                                         (fx* _i58970_ _i58970_))))
                               (fxmodulo _next-probe58986_ _size58955_))
                             (fx+ _i58970_ '1)
                             _deleted58972_))))))))))
    (define string-table-delete!
      (lambda (_tab58902_ _key58904_)
        (let ((_table58907_ (&raw-table-table _tab58902_))
              (_seed58909_ (&raw-table-seed _tab58902_)))
          (let* ((_h58912_ (fxxor (##string=?-hash _key58904_) _seed58909_))
                 (_size58915_ (vector-length _table58907_))
                 (_entries58918_ (fxquotient _size58915_ '2))
                 (_start58921_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58912_ _entries58918_)
                   '1)))
            (let _loop58925_ ((_probe58928_ _start58921_) (_i58930_ '1))
              (let ((_k58933_ (vector-ref _table58907_ _probe58928_)))
                (if (eq? _k58933_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k58933_ (macro-deleted-obj))
                        (_loop58925_
                         (let ((_next-probe58936_
                                (fx+ _start58921_
                                     _i58930_
                                     (fx* _i58930_ _i58930_))))
                           (fxmodulo _next-probe58936_ _size58915_))
                         (fx+ _i58930_ '1))
                        (if (##string=? _key58904_ _k58933_)
                            (begin
                              (vector-set!
                               _table58907_
                               _probe58928_
                               (macro-deleted-obj))
                              (vector-set!
                               _table58907_
                               (fx+ _probe58928_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab58902_
                                  (fx- (&raw-table-count _tab58902_) '1)))))
                            (_loop58925_
                             (let ((_next-probe58940_
                                    (fx+ _start58921_
                                         _i58930_
                                         (fx* _i58930_ _i58930_))))
                               (fxmodulo _next-probe58940_ _size58915_))
                             (fx+ _i58930_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_size-hint58883_ _seed58885_)
        (make-raw-table__% _size-hint58883_ immediate-hash eq? _seed58885_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_size-hint58891_ '#f) (_seed58893_ '0))
          (make-immediate-table__% _size-hint58891_ _seed58893_))))
    (define make-immediate-table__1
      (lambda (_size-hint58895_)
        (let ((_seed58897_ '0))
          (make-immediate-table__% _size-hint58895_ _seed58897_))))
    (define make-immediate-table
      (lambda _g60039_
        (let ((_g60038_ (##length _g60039_)))
          (cond ((##fx= _g60038_ 0)
                 (apply (lambda () (make-immediate-table__0)) _g60039_))
                ((##fx= _g60038_ 1)
                 (apply (lambda (_size-hint58895_)
                          (make-immediate-table__1 _size-hint58895_))
                        _g60039_))
                ((##fx= _g60038_ 2)
                 (apply (lambda (_size-hint58899_ _seed58900_)
                          (make-immediate-table__%
                           _size-hint58899_
                           _seed58900_))
                        _g60039_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g60039_))))))
    (define immediate-table-ref
      (lambda (_tab58840_ _key58841_ _default58842_)
        (let ((_table58844_ (&raw-table-table _tab58840_))
              (_seed58845_ (&raw-table-seed _tab58840_)))
          (let* ((_h58847_ (fxxor (immediate-hash _key58841_) _seed58845_))
                 (_size58850_ (vector-length _table58844_))
                 (_entries58853_ (fxquotient _size58850_ '2))
                 (_start58856_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58847_ _entries58853_)
                   '1)))
            (let _loop58860_ ((_probe58863_ _start58856_)
                              (_i58865_ '1)
                              (_deleted58867_ '#f))
              (let ((_k58870_ (vector-ref _table58844_ _probe58863_)))
                (if (eq? _k58870_ (macro-unused-obj))
                    _default58842_
                    (if (eq? _k58870_ (macro-deleted-obj))
                        (_loop58860_
                         (let ((_next-probe58873_
                                (fx+ _start58856_
                                     _i58865_
                                     (fx* _i58865_ _i58865_))))
                           (fxmodulo _next-probe58873_ _size58850_))
                         (fx+ _i58865_ '1)
                         (let ((_$e58876_ _deleted58867_))
                           (if _$e58876_ _$e58876_ _probe58863_)))
                        (if (eq? _key58841_ _k58870_)
                            (vector-ref _table58844_ (fx+ _probe58863_ '1))
                            (_loop58860_
                             (let ((_next-probe58879_
                                    (fx+ _start58856_
                                         _i58865_
                                         (fx* _i58865_ _i58865_))))
                               (fxmodulo _next-probe58879_ _size58850_))
                             (fx+ _i58865_ '1)
                             _deleted58867_))))))))))
    (define immediate-table-set!
      (lambda (_tab58836_ _key58837_ _value58838_)
        (if (fx< (&raw-table-free _tab58836_)
                 (fxquotient (vector-length (&raw-table-table _tab58836_)) '4))
            (__raw-table-rehash! _tab58836_)
            '#!void)
        (__immediate-table-set! _tab58836_ _key58837_ _value58838_)))
    (define __immediate-table-set!
      (lambda (_tab58791_ _key58792_ _value58793_)
        (let ((_table58796_ (&raw-table-table _tab58791_))
              (_seed58797_ (&raw-table-seed _tab58791_)))
          (let* ((_h58799_ (fxxor (immediate-hash _key58792_) _seed58797_))
                 (_size58802_ (vector-length _table58796_))
                 (_entries58805_ (fxquotient _size58802_ '2))
                 (_start58808_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58799_ _entries58805_)
                   '1)))
            (let _loop58812_ ((_probe58815_ _start58808_)
                              (_i58817_ '1)
                              (_deleted58819_ '#f))
              (let ((_k58822_ (vector-ref _table58796_ _probe58815_)))
                (if (eq? _k58822_ (macro-unused-obj))
                    (if _deleted58819_
                        (begin
                          (vector-set! _table58796_ _deleted58819_ _key58792_)
                          (vector-set!
                           _table58796_
                           (fx+ _deleted58819_ '1)
                           _value58793_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58791_
                              (fx+ (&raw-table-count _tab58791_) '1)))))
                        (begin
                          (vector-set! _table58796_ _probe58815_ _key58792_)
                          (vector-set!
                           _table58796_
                           (fx+ _probe58815_ '1)
                           _value58793_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58791_
                              (fx- (&raw-table-free _tab58791_) '1))
                             (&raw-table-count-set!
                              _tab58791_
                              (fx+ (&raw-table-count _tab58791_) '1))))))
                    (if (eq? _k58822_ (macro-deleted-obj))
                        (_loop58812_
                         (let ((_next-probe58827_
                                (fx+ _start58808_
                                     _i58817_
                                     (fx* _i58817_ _i58817_))))
                           (fxmodulo _next-probe58827_ _size58802_))
                         (fx+ _i58817_ '1)
                         (let ((_$e58830_ _deleted58819_))
                           (if _$e58830_ _$e58830_ _probe58815_)))
                        (if (eq? _key58792_ _k58822_)
                            (begin
                              (vector-set!
                               _table58796_
                               _probe58815_
                               _key58792_)
                              (vector-set!
                               _table58796_
                               (fx+ _probe58815_ '1)
                               _value58793_))
                            (_loop58812_
                             (let ((_next-probe58833_
                                    (fx+ _start58808_
                                         _i58817_
                                         (fx* _i58817_ _i58817_))))
                               (fxmodulo _next-probe58833_ _size58802_))
                             (fx+ _i58817_ '1)
                             _deleted58819_))))))))))
    (define immediate-table-update!
      (lambda (_tab58786_
               _key58787_
               _immediate-table-update!58788_
               _default58789_)
        (if (fx< (&raw-table-free _tab58786_)
                 (fxquotient (vector-length (&raw-table-table _tab58786_)) '4))
            (__raw-table-rehash! _tab58786_)
            '#!void)
        (__immediate-table-update!
         _tab58786_
         _key58787_
         _immediate-table-update!58788_
         _default58789_)))
    (define __immediate-table-update!
      (lambda (_tab58740_
               _key58741_
               _immediate-table-update!58742_
               _default58743_)
        (let ((_table58746_ (&raw-table-table _tab58740_))
              (_seed58747_ (&raw-table-seed _tab58740_)))
          (let* ((_h58749_ (fxxor (immediate-hash _key58741_) _seed58747_))
                 (_size58752_ (vector-length _table58746_))
                 (_entries58755_ (fxquotient _size58752_ '2))
                 (_start58758_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58749_ _entries58755_)
                   '1)))
            (let _loop58762_ ((_probe58765_ _start58758_)
                              (_i58767_ '1)
                              (_deleted58769_ '#f))
              (let ((_k58772_ (vector-ref _table58746_ _probe58765_)))
                (if (eq? _k58772_ (macro-unused-obj))
                    (if _deleted58769_
                        (begin
                          (vector-set! _table58746_ _deleted58769_ _key58741_)
                          (vector-set!
                           _table58746_
                           (fx+ _deleted58769_ '1)
                           (_immediate-table-update!58742_ _default58743_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58740_
                              (fx+ (&raw-table-count _tab58740_) '1)))))
                        (begin
                          (vector-set! _table58746_ _probe58765_ _key58741_)
                          (vector-set!
                           _table58746_
                           (fx+ _probe58765_ '1)
                           (_immediate-table-update!58742_ _default58743_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58740_
                              (fx- (&raw-table-free _tab58740_) '1))
                             (&raw-table-count-set!
                              _tab58740_
                              (fx+ (&raw-table-count _tab58740_) '1))))))
                    (if (eq? _k58772_ (macro-deleted-obj))
                        (_loop58762_
                         (let ((_next-probe58777_
                                (fx+ _start58758_
                                     _i58767_
                                     (fx* _i58767_ _i58767_))))
                           (fxmodulo _next-probe58777_ _size58752_))
                         (fx+ _i58767_ '1)
                         (let ((_$e58780_ _deleted58769_))
                           (if _$e58780_ _$e58780_ _probe58765_)))
                        (if (eq? _key58741_ _k58772_)
                            (begin
                              (vector-set!
                               _table58746_
                               _probe58765_
                               _key58741_)
                              (vector-set!
                               _table58746_
                               (fx+ _probe58765_ '1)
                               (_immediate-table-update!58742_
                                (vector-ref
                                 _table58746_
                                 (fx+ _probe58765_ '1)))))
                            (_loop58762_
                             (let ((_next-probe58783_
                                    (fx+ _start58758_
                                         _i58767_
                                         (fx* _i58767_ _i58767_))))
                               (fxmodulo _next-probe58783_ _size58752_))
                             (fx+ _i58767_ '1)
                             _deleted58769_))))))))))
    (define immediate-table-delete!
      (lambda (_tab58699_ _key58701_)
        (let ((_table58704_ (&raw-table-table _tab58699_))
              (_seed58706_ (&raw-table-seed _tab58699_)))
          (let* ((_h58709_ (fxxor (immediate-hash _key58701_) _seed58706_))
                 (_size58712_ (vector-length _table58704_))
                 (_entries58715_ (fxquotient _size58712_ '2))
                 (_start58718_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58709_ _entries58715_)
                   '1)))
            (let _loop58722_ ((_probe58725_ _start58718_) (_i58727_ '1))
              (let ((_k58730_ (vector-ref _table58704_ _probe58725_)))
                (if (eq? _k58730_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k58730_ (macro-deleted-obj))
                        (_loop58722_
                         (let ((_next-probe58733_
                                (fx+ _start58718_
                                     _i58727_
                                     (fx* _i58727_ _i58727_))))
                           (fxmodulo _next-probe58733_ _size58712_))
                         (fx+ _i58727_ '1))
                        (if (eq? _key58701_ _k58730_)
                            (begin
                              (vector-set!
                               _table58704_
                               _probe58725_
                               (macro-deleted-obj))
                              (vector-set!
                               _table58704_
                               (fx+ _probe58725_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab58699_
                                  (fx- (&raw-table-count _tab58699_) '1)))))
                            (_loop58722_
                             (let ((_next-probe58737_
                                    (fx+ _start58718_
                                         _i58727_
                                         (fx* _i58727_ _i58727_))))
                               (fxmodulo _next-probe58737_ _size58712_))
                             (fx+ _i58727_ '1)))))))))))
    (define __gc-table::t.id 'gerbil#__gc-table::t)
    (define __gc-table::t
      (##structure
       ##type-type
       __gc-table::t.id
       'gc-table
       '26
       '#f
       '#(gcht 5 #f immediate 5 #f)))
    (define __gc-table-loads '#(0. .75))
    (define &gc-table-gcht
      (lambda (_tab58697_)
        (##unchecked-structure-ref
         _tab58697_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_tab58695_)
        (##unchecked-structure-ref
         _tab58695_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_tab58692_ _val58693_)
        (##unchecked-structure-set!
         _tab58692_
         _val58693_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_tab58689_ _val58690_)
        (##unchecked-structure-set!
         _tab58689_
         _val58690_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_size-hint58665_ _klass58666_ _flags58667_)
        (let ((_gcht58669_
               (__gc-table-new
                (if (fixnum? _size-hint58665_) _size-hint58665_ '16)
                _flags58667_)))
          (##structure _klass58666_ _gcht58669_ '#f))))
    (define make-gc-table__0
      (lambda (_size-hint58674_)
        (let* ((_klass58676_ __gc-table::t) (_flags58678_ '0))
          (make-gc-table__% _size-hint58674_ _klass58676_ _flags58678_))))
    (define make-gc-table__1
      (lambda (_size-hint58680_ _klass58681_)
        (let ((_flags58683_ '0))
          (make-gc-table__% _size-hint58680_ _klass58681_ _flags58683_))))
    (define make-gc-table
      (lambda _g60041_
        (let ((_g60040_ (##length _g60041_)))
          (cond ((##fx= _g60040_ 1)
                 (apply (lambda (_size-hint58674_)
                          (make-gc-table__0 _size-hint58674_))
                        _g60041_))
                ((##fx= _g60040_ 2)
                 (apply (lambda (_size-hint58680_ _klass58681_)
                          (make-gc-table__1 _size-hint58680_ _klass58681_))
                        _g60041_))
                ((##fx= _g60040_ 3)
                 (apply (lambda (_size-hint58685_ _klass58686_ _flags58687_)
                          (make-gc-table__%
                           _size-hint58685_
                           _klass58686_
                           _flags58687_))
                        _g60041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g60041_))))))
    (define __gc-table-immediate
      (lambda (_tab58657_)
        (let ((_$e58659_ (&gc-table-immediate _tab58657_)))
          (if _$e58659_
              _$e58659_
              (let ((_immediate58662_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _tab58657_ _immediate58662_)
                _immediate58662_)))))
    (define __gc-table-new
      (lambda (_size58652_ _flags58653_)
        (let ((_gcht58655_
               (##gc-hash-table-allocate
                _size58652_
                (fxior _flags58653_ (macro-gc-hash-table-flag-mem-alloc-keys))
                __gc-table-loads)))
          (macro-gc-hash-table-free-set!
           _gcht58655_
           (macro-gc-hash-table-size _gcht58655_))
          (macro-gc-hash-table-count-set! _gcht58655_ '0)
          _gcht58655_)))
    (define __gc-table-e
      (lambda (_tab58647_)
        (declare (not interrupts-enabled))
        (let ((_gcht58650_ (&gc-table-gcht _tab58647_)))
          (if (fx= '0
                   (fxand (macro-gc-hash-table-flags _gcht58650_)
                          (macro-gc-hash-table-flag-need-rehash)))
              _gcht58650_
              (begin
                (__gc-table-rehash! _tab58647_)
                (&gc-table-gcht _tab58647_))))))
    (define __gc-table-rehash!
      (lambda (_tab58637_)
        (declare (not interrupts-enabled))
        (let* ((_old-table58640_ (&gc-table-gcht _tab58637_))
               (_new-table58642_
                (##gc-hash-table-resize! _old-table58640_ __gc-table-loads))
               (_gcht58644_
                (##gc-hash-table-rehash! _old-table58640_ _new-table58642_)))
          (&gc-table-gcht-set! _tab58637_ _gcht58644_))))
    (define __gc-table-grow!
      (lambda (_tab58627_)
        (declare (not interrupts-enabled))
        (let* ((_old-table58630_ (&gc-table-gcht _tab58627_))
               (_new-table58632_
                (__gc-table-new
                 (fx* '2 (macro-gc-hash-table-size _old-table58630_))
                 (macro-gc-hash-table-flags _old-table58630_)))
               (_gcht58634_
                (##gc-hash-table-rehash! _old-table58630_ _new-table58632_)))
          (&gc-table-gcht-set! _tab58627_ _gcht58634_))))
    (define gc-table-ref
      (lambda (_tab58613_ _key58614_ _default58615_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key58614_)
            (let* ((_gcht58618_ (__gc-table-e _tab58613_))
                   (_value58620_ (##gc-hash-table-ref _gcht58618_ _key58614_)))
              (if (eq? _value58620_ (macro-unused-obj))
                  _default58615_
                  _value58620_))
            (let ((_$e58622_ (&gc-table-immediate _tab58613_)))
              (if _$e58622_
                  ((lambda (_immediate58625_)
                     (immediate-table-ref
                      _immediate58625_
                      _key58614_
                      _default58615_))
                   _$e58622_)
                  _default58615_)))))
    (define gc-table-set!
      (lambda (_tab58606_ _key58607_ _value58608_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key58607_)
            (let ((_gcht58611_ (__gc-table-e _tab58606_)))
              (if (fx< (macro-gc-hash-table-free _gcht58611_)
                       (fxquotient (macro-gc-hash-table-size _gcht58611_) '2))
                  (begin
                    (if (fx> (macro-gc-hash-table-count _gcht58611_)
                             (fxquotient
                              (macro-gc-hash-table-size _gcht58611_)
                              '2))
                        (__gc-table-grow! _tab58606_)
                        (__gc-table-rehash! _tab58606_))
                    (gc-table-set! _tab58606_ _key58607_ _value58608_))
                  (if (##gc-hash-table-set!
                       _gcht58611_
                       _key58607_
                       _value58608_)
                      (begin
                        (__gc-table-rehash! _tab58606_)
                        (gc-table-set! _tab58606_ _key58607_ _value58608_))
                      '#!void)))
            (immediate-table-set!
             (__gc-table-immediate _tab58606_)
             _key58607_
             _value58608_))))
    (define gc-table-update!
      (lambda (_tab58599_ _key58600_ _update58601_ _default58602_)
        (if (##mem-allocated? _key58600_)
            (let ((_value58604_
                   (gc-table-ref _tab58599_ _key58600_ _default58602_)))
              (gc-table-set!
               _tab58599_
               _key58600_
               (_update58601_ _value58604_)))
            (immediate-table-update!
             (__gc-table-immediate _tab58599_)
             _key58600_
             _update58601_
             _default58602_))))
    (define gc-table-delete!
      (lambda (_tab58591_ _key58592_)
        (if (##mem-allocated? _key58592_)
            (gc-table-set! _tab58591_ _key58592_ (macro-absent-obj))
            (let ((_$e58594_ (&gc-table-immediate _tab58591_)))
              (if _$e58594_
                  ((lambda (_immediate58597_)
                     (immediate-table-delete! _immediate58597_ _key58592_))
                   _$e58594_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_tab58572_ _proc58573_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_gcht58576_ (__gc-table-e _tab58572_)))
            (let _loop58578_ ((_i58580_ (macro-gc-hash-table-key0)))
              (if (fx< _i58580_ (##vector-length _gcht58576_))
                  (let ((_key58582_ (##vector-ref _gcht58576_ _i58580_)))
                    (if (and (not (eq? _key58582_ (macro-unused-obj)))
                             (not (eq? _key58582_ (macro-deleted-obj))))
                        (_proc58573_
                         _key58582_
                         (vector-ref _gcht58576_ (fx+ _i58580_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_loop58578_ (fx+ _i58580_ '2))))
                  '#!void)))
          (let ((_$e58586_ (&gc-table-immediate _tab58572_)))
            (if _$e58586_
                ((lambda (_immediate58589_)
                   (raw-table-for-each _immediate58589_ _proc58573_))
                 _$e58586_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_tab58560_)
        (let* ((_gcht58562_ (__gc-table-e _tab58560_))
               (_new-table58564_
                (__gc-table-new
                 (macro-gc-hash-table-count _gcht58562_)
                 (macro-gc-hash-table-flags _gcht58562_)))
               (_result58566_
                (##structure
                 (##structure-type _tab58560_)
                 _new-table58564_
                 '#f)))
          (gc-table-for-each
           _tab58560_
           (lambda (_k58569_ _v58570_)
             (gc-table-set! _result58566_ _k58569_ _v58570_)))
          _result58566_)))
    (define gc-table-clear!
      (lambda (_tab58553_)
        (let* ((_gcht58555_ (__gc-table-e _tab58553_))
               (_new-table58557_
                (__gc-table-new '16 (macro-gc-hash-table-flags _gcht58555_))))
          (&gc-table-gcht-set! _tab58553_ _new-table58557_)
          (&gc-table-immediate-set! _tab58553_ '#f))))
    (define gc-table-length
      (lambda (_tab58546_)
        (let ((_gcht58548_ (__gc-table-e _tab58546_)))
          (fx+ (macro-gc-hash-table-count _gcht58548_)
               (let ((_$e58550_ (&gc-table-immediate _tab58546_)))
                 (if _$e58550_ (&raw-table-count _$e58550_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_obj58531_)
        (declare (not interrupts-enabled))
        (let ((_val58534_ (gc-table-ref __object-eq-hash _obj58531_ '#f)))
          (if _val58534_
              _val58534_
              (let* ((_mix58536_ __object-eq-hash-next)
                     (_ptr58538_ (##type-cast _obj58531_ '0))
                     (_h58540_
                      (fxand (fxxor _mix58536_ _ptr58538_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_$e58543_ (##fx+? __object-eq-hash-next '1)))
                        (if _$e58543_ _$e58543_ '0)))
                (gc-table-set! __object-eq-hash _obj58531_ _h58540_)
                _h58540_)))))))
