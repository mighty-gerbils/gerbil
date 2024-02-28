(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1709159706)
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
      (lambda (_tab60029_)
        (##unchecked-structure-ref _tab60029_ '1 __table::t 'raw-table-table)))
    (define &raw-table-count
      (lambda (_tab60027_)
        (##unchecked-structure-ref _tab60027_ '2 __table::t 'raw-table-count)))
    (define &raw-table-free
      (lambda (_tab60025_)
        (##unchecked-structure-ref _tab60025_ '3 __table::t 'raw-table-free)))
    (define &raw-table-hash
      (lambda (_tab60023_)
        (##unchecked-structure-ref _tab60023_ '4 __table::t 'raw-table-hash)))
    (define &raw-table-test
      (lambda (_tab60021_)
        (##unchecked-structure-ref _tab60021_ '5 __table::t 'raw-table-test)))
    (define &raw-table-seed
      (lambda (_tab60019_)
        (##unchecked-structure-ref _tab60019_ '6 __table::t 'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_tab60016_ _val60017_)
        (##unchecked-structure-set!
         _tab60016_
         _val60017_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_tab60013_ _val60014_)
        (##unchecked-structure-set!
         _tab60013_
         _val60014_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_tab60010_ _val60011_)
        (##unchecked-structure-set!
         _tab60010_
         _val60011_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_tab60007_ _val60008_)
        (##unchecked-structure-set!
         _tab60007_
         _val60008_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_tab60004_ _val60005_)
        (##unchecked-structure-set!
         _tab60004_
         _val60005_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_tab60001_ _val60002_)
        (##unchecked-structure-set!
         _tab60001_
         _val60002_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_size-hint59999_)
        (if (and (fixnum? _size-hint59999_) (fx> _size-hint59999_ '0))
            (fx* (fxmax '2 (expt '2 (integer-length _size-hint59999_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_size-hint59975_ _hash59976_ _test59977_ _seed59978_)
        (let* ((_size59980_ (raw-table-size-hint->size _size-hint59975_))
               (_table59982_ (make-vector _size59980_ (macro-unused-obj))))
          (##structure
           __table::t
           _table59982_
           '0
           (fxquotient _size59980_ '2)
           _hash59976_
           _test59977_
           _seed59978_))))
    (define make-raw-table__0
      (lambda (_size-hint59988_ _hash59989_ _test59990_)
        (let ((_seed59992_ '0))
          (make-raw-table__%
           _size-hint59988_
           _hash59989_
           _test59990_
           _seed59992_))))
    (define make-raw-table
      (lambda _g60031_
        (let ((_g60030_ (##length _g60031_)))
          (cond ((##fx= _g60030_ 3)
                 (apply (lambda (_size-hint59988_ _hash59989_ _test59990_)
                          (make-raw-table__0
                           _size-hint59988_
                           _hash59989_
                           _test59990_))
                        _g60031_))
                ((##fx= _g60030_ 4)
                 (apply (lambda (_size-hint59994_
                                 _hash59995_
                                 _test59996_
                                 _seed59997_)
                          (make-raw-table__%
                           _size-hint59994_
                           _hash59995_
                           _test59996_
                           _seed59997_))
                        _g60031_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g60031_))))))
    (define raw-table-ref
      (lambda (_tab59930_ _key59931_ _default59932_)
        (let ((_table59934_ (&raw-table-table _tab59930_))
              (_seed59935_ (&raw-table-seed _tab59930_))
              (_hash59936_ (&raw-table-hash _tab59930_))
              (_test59937_ (&raw-table-test _tab59930_)))
          (let* ((_h59939_ (fxxor (_hash59936_ _key59931_) _seed59935_))
                 (_size59942_ (vector-length _table59934_))
                 (_entries59945_ (fxquotient _size59942_ '2))
                 (_start59948_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59939_ _entries59945_)
                   '1)))
            (let _loop59952_ ((_probe59955_ _start59948_)
                              (_i59957_ '1)
                              (_deleted59959_ '#f))
              (let ((_k59962_ (vector-ref _table59934_ _probe59955_)))
                (if (eq? _k59962_ (macro-unused-obj))
                    _default59932_
                    (if (eq? _k59962_ (macro-deleted-obj))
                        (_loop59952_
                         (let ((_next-probe59965_
                                (fx+ _start59948_
                                     _i59957_
                                     (fx* _i59957_ _i59957_))))
                           (fxmodulo _next-probe59965_ _size59942_))
                         (fx+ _i59957_ '1)
                         (let ((_$e59968_ _deleted59959_))
                           (if _$e59968_ _$e59968_ _probe59955_)))
                        (if (_test59937_ _key59931_ _k59962_)
                            (vector-ref _table59934_ (fx+ _probe59955_ '1))
                            (_loop59952_
                             (let ((_next-probe59971_
                                    (fx+ _start59948_
                                         _i59957_
                                         (fx* _i59957_ _i59957_))))
                               (fxmodulo _next-probe59971_ _size59942_))
                             (fx+ _i59957_ '1)
                             _deleted59959_))))))))))
    (define raw-table-set!
      (lambda (_tab59926_ _key59927_ _value59928_)
        (if (fx< (&raw-table-free _tab59926_)
                 (fxquotient (vector-length (&raw-table-table _tab59926_)) '4))
            (__raw-table-rehash! _tab59926_)
            '#!void)
        (__raw-table-set! _tab59926_ _key59927_ _value59928_)))
    (define raw-table-update!
      (lambda (_tab59921_ _key59922_ _update59923_ _default59924_)
        (if (fx< (&raw-table-free _tab59921_)
                 (fxquotient (vector-length (&raw-table-table _tab59921_)) '4))
            (__raw-table-rehash! _tab59921_)
            '#!void)
        (__raw-table-update!
         _tab59921_
         _key59922_
         _update59923_
         _default59924_)))
    (define raw-table-delete!
      (lambda (_tab59882_ _key59883_)
        (let ((_table59885_ (&raw-table-table _tab59882_))
              (_seed59886_ (&raw-table-seed _tab59882_))
              (_hash59887_ (&raw-table-hash _tab59882_))
              (_test59888_ (&raw-table-test _tab59882_)))
          (let* ((_h59890_ (fxxor (_hash59887_ _key59883_) _seed59886_))
                 (_size59893_ (vector-length _table59885_))
                 (_entries59896_ (fxquotient _size59893_ '2))
                 (_start59899_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59890_ _entries59896_)
                   '1)))
            (let _loop59903_ ((_probe59906_ _start59899_) (_i59908_ '1))
              (let ((_k59911_ (vector-ref _table59885_ _probe59906_)))
                (if (eq? _k59911_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59911_ (macro-deleted-obj))
                        (_loop59903_
                         (let ((_next-probe59914_
                                (fx+ _start59899_
                                     _i59908_
                                     (fx* _i59908_ _i59908_))))
                           (fxmodulo _next-probe59914_ _size59893_))
                         (fx+ _i59908_ '1))
                        (if (_test59888_ _key59883_ _k59911_)
                            (begin
                              (vector-set!
                               _table59885_
                               _probe59906_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59885_
                               (fx+ _probe59906_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59882_
                                  (fx- (&raw-table-count _tab59882_) '1)))))
                            (_loop59903_
                             (let ((_next-probe59918_
                                    (fx+ _start59899_
                                         _i59908_
                                         (fx* _i59908_ _i59908_))))
                               (fxmodulo _next-probe59918_ _size59893_))
                             (fx+ _i59908_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_tab59866_ _proc59867_)
        (let* ((_table59869_ (&raw-table-table _tab59866_))
               (_size59871_ (vector-length _table59869_)))
          (let _loop59874_ ((_i59876_ '0))
            (if (fx< _i59876_ _size59871_)
                (begin
                  (let ((_key59878_ (vector-ref _table59869_ _i59876_)))
                    (if (and (not (eq? _key59878_ (macro-unused-obj)))
                             (not (eq? _key59878_ (macro-deleted-obj))))
                        (let ((_value59880_
                               (vector-ref _table59869_ (fx+ _i59876_ '1))))
                          (_proc59867_ _key59878_ _value59880_))
                        '#!void))
                  (_loop59874_ (fx+ _i59876_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_tab59862_)
        (let ((_new-tab59864_ (##structure-copy _tab59862_)))
          (&raw-table-table-set!
           _new-tab59864_
           (vector-copy (&raw-table-table _tab59862_)))
          _new-tab59864_)))
    (define raw-table-clear!
      (lambda (_tab59860_)
        (vector-fill! (&raw-table-table _tab59860_) (macro-unused-obj))
        (&raw-table-count-set! _tab59860_ '0)
        (&raw-table-free-set!
         _tab59860_
         (fxquotient (vector-length (&raw-table-table _tab59860_)) '2))))
    (define __raw-table-set!
      (lambda (_tab59814_ _key59815_ _value59816_)
        (let ((_table59818_ (&raw-table-table _tab59814_))
              (_seed59819_ (&raw-table-seed _tab59814_))
              (_hash59820_ (&raw-table-hash _tab59814_))
              (_test59821_ (&raw-table-test _tab59814_)))
          (let* ((_h59823_ (fxxor (_hash59820_ _key59815_) _seed59819_))
                 (_size59826_ (vector-length _table59818_))
                 (_entries59829_ (fxquotient _size59826_ '2))
                 (_start59832_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59823_ _entries59829_)
                   '1)))
            (let _loop59836_ ((_probe59839_ _start59832_)
                              (_i59841_ '1)
                              (_deleted59843_ '#f))
              (let ((_k59846_ (vector-ref _table59818_ _probe59839_)))
                (if (eq? _k59846_ (macro-unused-obj))
                    (if _deleted59843_
                        (begin
                          (vector-set! _table59818_ _deleted59843_ _key59815_)
                          (vector-set!
                           _table59818_
                           (fx+ _deleted59843_ '1)
                           _value59816_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59814_
                              (fx+ (&raw-table-count _tab59814_) '1)))))
                        (begin
                          (vector-set! _table59818_ _probe59839_ _key59815_)
                          (vector-set!
                           _table59818_
                           (fx+ _probe59839_ '1)
                           _value59816_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59814_
                              (fx- (&raw-table-free _tab59814_) '1))
                             (&raw-table-count-set!
                              _tab59814_
                              (fx+ (&raw-table-count _tab59814_) '1))))))
                    (if (eq? _k59846_ (macro-deleted-obj))
                        (_loop59836_
                         (let ((_next-probe59851_
                                (fx+ _start59832_
                                     _i59841_
                                     (fx* _i59841_ _i59841_))))
                           (fxmodulo _next-probe59851_ _size59826_))
                         (fx+ _i59841_ '1)
                         (let ((_$e59854_ _deleted59843_))
                           (if _$e59854_ _$e59854_ _probe59839_)))
                        (if (_test59821_ _key59815_ _k59846_)
                            (begin
                              (vector-set!
                               _table59818_
                               _probe59839_
                               _key59815_)
                              (vector-set!
                               _table59818_
                               (fx+ _probe59839_ '1)
                               _value59816_))
                            (_loop59836_
                             (let ((_next-probe59857_
                                    (fx+ _start59832_
                                         _i59841_
                                         (fx* _i59841_ _i59841_))))
                               (fxmodulo _next-probe59857_ _size59826_))
                             (fx+ _i59841_ '1)
                             _deleted59843_))))))))))
    (define __raw-table-update!
      (lambda (_tab59767_ _key59768_ _update59769_ _default59770_)
        (let ((_table59772_ (&raw-table-table _tab59767_))
              (_seed59773_ (&raw-table-seed _tab59767_))
              (_hash59774_ (&raw-table-hash _tab59767_))
              (_test59775_ (&raw-table-test _tab59767_)))
          (let* ((_h59777_ (fxxor (_hash59774_ _key59768_) _seed59773_))
                 (_size59780_ (vector-length _table59772_))
                 (_entries59783_ (fxquotient _size59780_ '2))
                 (_start59786_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59777_ _entries59783_)
                   '1)))
            (let _loop59790_ ((_probe59793_ _start59786_)
                              (_i59795_ '1)
                              (_deleted59797_ '#f))
              (let ((_k59800_ (vector-ref _table59772_ _probe59793_)))
                (if (eq? _k59800_ (macro-unused-obj))
                    (if _deleted59797_
                        (begin
                          (vector-set! _table59772_ _deleted59797_ _key59768_)
                          (vector-set!
                           _table59772_
                           (fx+ _deleted59797_ '1)
                           (_update59769_ _default59770_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59767_
                              (fx+ (&raw-table-count _tab59767_) '1)))))
                        (begin
                          (vector-set! _table59772_ _probe59793_ _key59768_)
                          (vector-set!
                           _table59772_
                           (fx+ _probe59793_ '1)
                           (_update59769_ _default59770_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59767_
                              (fx- (&raw-table-free _tab59767_) '1))
                             (&raw-table-count-set!
                              _tab59767_
                              (fx+ (&raw-table-count _tab59767_) '1))))))
                    (if (eq? _k59800_ (macro-deleted-obj))
                        (_loop59790_
                         (let ((_next-probe59805_
                                (fx+ _start59786_
                                     _i59795_
                                     (fx* _i59795_ _i59795_))))
                           (fxmodulo _next-probe59805_ _size59780_))
                         (fx+ _i59795_ '1)
                         (let ((_$e59808_ _deleted59797_))
                           (if _$e59808_ _$e59808_ _probe59793_)))
                        (if (_test59775_ _key59768_ _k59800_)
                            (begin
                              (vector-set!
                               _table59772_
                               _probe59793_
                               _key59768_)
                              (vector-set!
                               _table59772_
                               (fx+ _probe59793_ '1)
                               (_update59769_
                                (vector-ref
                                 _table59772_
                                 (fx+ _probe59793_ '1)))))
                            (_loop59790_
                             (let ((_next-probe59811_
                                    (fx+ _start59786_
                                         _i59795_
                                         (fx* _i59795_ _i59795_))))
                               (fxmodulo _next-probe59811_ _size59780_))
                             (fx+ _i59795_ '1)
                             _deleted59797_))))))))))
    (define __raw-table-rehash!
      (lambda (_tab59748_)
        (let* ((_old-table59750_ (&raw-table-table _tab59748_))
               (_old-size59752_ (vector-length _old-table59750_))
               (_new-size59754_
                (if (fx< (&raw-table-count _tab59748_)
                         (fxquotient _old-size59752_ '4))
                    (vector-length _old-table59750_)
                    (fx* '2 (vector-length _old-table59750_))))
               (_new-table59756_
                (make-vector _new-size59754_ (macro-unused-obj))))
          (&raw-table-table-set! _tab59748_ _new-table59756_)
          (&raw-table-count-set! _tab59748_ '0)
          (&raw-table-free-set! _tab59748_ (fxquotient _new-size59754_ '2))
          (let _lp59759_ ((_i59761_ '0))
            (if (fx< _i59761_ _old-size59752_)
                (begin
                  (let ((_key59763_ (vector-ref _old-table59750_ _i59761_)))
                    (if (and (not (eq? _key59763_ (macro-unused-obj)))
                             (not (eq? _key59763_ (macro-deleted-obj))))
                        (let ((_value59765_
                               (vector-ref
                                _old-table59750_
                                (fx+ _i59761_ '1))))
                          (__raw-table-set!
                           _tab59748_
                           _key59763_
                           _value59765_))
                        '#!void))
                  (_lp59759_ (fx+ _i59761_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_obj59744_)
        (let ((_t59746_ (##type _obj59744_)))
          (if (fx= (fxand _t59746_ '1) '0)
              (fxand (##type-cast _obj59744_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _obj59744_)
                  (symbolic-hash _obj59744_)
                  (if (procedure? _obj59744_)
                      (procedure-hash _obj59744_)
                      (fxand (__eq-hash _obj59744_) (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_obj59740_)
        (let ((_h59742_
               (if (##closure? _obj59740_)
                   (__eq-hash _obj59740_)
                   (##type-cast _obj59740_ '0))))
          (fxand _h59742_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_obj59737_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _obj59737_)))
    (define eqv-hash
      (lambda (_obj59727_)
        (letrec ((_combine59729_
                  (lambda (_a59734_ _b59735_)
                    (fxand (fx* (fx+ _a59734_
                                     (fxarithmetic-shift-left _b59735_ '1))
                                '331804471)
                           (macro-max-fixnum32))))
                 (_hash59730_
                  (lambda (_obj59732_)
                    (macro-number-dispatch
                     _obj59732_
                     (eq-hash _obj59732_)
                     (fxand _obj59732_ (macro-max-fixnum32))
                     (modulo _obj59732_ '331804481)
                     (_combine59729_
                      (_hash59730_ (macro-ratnum-numerator _obj59732_))
                      (_hash59730_ (macro-ratnum-denominator _obj59732_)))
                     (_combine59729_
                      (##u16vector-ref _obj59732_ '0)
                      (_combine59729_
                       (##u16vector-ref _obj59732_ '1)
                       (_combine59729_
                        (##u16vector-ref _obj59732_ '2)
                        (##u16vector-ref _obj59732_ '3))))
                     (_combine59729_
                      (_hash59730_ (macro-cpxnum-real _obj59732_))
                      (_hash59730_ (macro-cpxnum-imag _obj59732_)))))))
          (_hash59730_ _obj59727_))))
    (define symbolic?
      (lambda (_obj59722_)
        (let ((_$e59724_ (symbol? _obj59722_)))
          (if _$e59724_ _$e59724_ (keyword? _obj59722_)))))
    (define symbolic-hash (lambda (_obj59720_) (macro-slot '1 _obj59720_)))
    (define string-hash (lambda (_obj59718_) (##string=?-hash _obj59718_)))
    (define immediate-hash
      (lambda (_obj59716_) (##type-cast _obj59716_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_size-hint59697_ _seed59699_)
        (make-raw-table__% _size-hint59697_ eq-hash eq? _seed59699_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_size-hint59705_ '#f) (_seed59707_ '0))
          (make-eq-table__% _size-hint59705_ _seed59707_))))
    (define make-eq-table__1
      (lambda (_size-hint59709_)
        (let ((_seed59711_ '0))
          (make-eq-table__% _size-hint59709_ _seed59711_))))
    (define make-eq-table
      (lambda _g60033_
        (let ((_g60032_ (##length _g60033_)))
          (cond ((##fx= _g60032_ 0)
                 (apply (lambda () (make-eq-table__0)) _g60033_))
                ((##fx= _g60032_ 1)
                 (apply (lambda (_size-hint59709_)
                          (make-eq-table__1 _size-hint59709_))
                        _g60033_))
                ((##fx= _g60032_ 2)
                 (apply (lambda (_size-hint59713_ _seed59714_)
                          (make-eq-table__% _size-hint59713_ _seed59714_))
                        _g60033_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g60033_))))))
    (define eq-table-ref
      (lambda (_tab59654_ _key59655_ _default59656_)
        (let ((_table59658_ (&raw-table-table _tab59654_))
              (_seed59659_ (&raw-table-seed _tab59654_)))
          (let* ((_h59661_ (fxxor (eq-hash _key59655_) _seed59659_))
                 (_size59664_ (vector-length _table59658_))
                 (_entries59667_ (fxquotient _size59664_ '2))
                 (_start59670_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59661_ _entries59667_)
                   '1)))
            (let _loop59674_ ((_probe59677_ _start59670_)
                              (_i59679_ '1)
                              (_deleted59681_ '#f))
              (let ((_k59684_ (vector-ref _table59658_ _probe59677_)))
                (if (eq? _k59684_ (macro-unused-obj))
                    _default59656_
                    (if (eq? _k59684_ (macro-deleted-obj))
                        (_loop59674_
                         (let ((_next-probe59687_
                                (fx+ _start59670_
                                     _i59679_
                                     (fx* _i59679_ _i59679_))))
                           (fxmodulo _next-probe59687_ _size59664_))
                         (fx+ _i59679_ '1)
                         (let ((_$e59690_ _deleted59681_))
                           (if _$e59690_ _$e59690_ _probe59677_)))
                        (if (eq? _key59655_ _k59684_)
                            (vector-ref _table59658_ (fx+ _probe59677_ '1))
                            (_loop59674_
                             (let ((_next-probe59693_
                                    (fx+ _start59670_
                                         _i59679_
                                         (fx* _i59679_ _i59679_))))
                               (fxmodulo _next-probe59693_ _size59664_))
                             (fx+ _i59679_ '1)
                             _deleted59681_))))))))))
    (define eq-table-set!
      (lambda (_tab59650_ _key59651_ _value59652_)
        (if (fx< (&raw-table-free _tab59650_)
                 (fxquotient (vector-length (&raw-table-table _tab59650_)) '4))
            (__raw-table-rehash! _tab59650_)
            '#!void)
        (__eq-table-set! _tab59650_ _key59651_ _value59652_)))
    (define __eq-table-set!
      (lambda (_tab59605_ _key59606_ _value59607_)
        (let ((_table59610_ (&raw-table-table _tab59605_))
              (_seed59611_ (&raw-table-seed _tab59605_)))
          (let* ((_h59613_ (fxxor (eq-hash _key59606_) _seed59611_))
                 (_size59616_ (vector-length _table59610_))
                 (_entries59619_ (fxquotient _size59616_ '2))
                 (_start59622_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59613_ _entries59619_)
                   '1)))
            (let _loop59626_ ((_probe59629_ _start59622_)
                              (_i59631_ '1)
                              (_deleted59633_ '#f))
              (let ((_k59636_ (vector-ref _table59610_ _probe59629_)))
                (if (eq? _k59636_ (macro-unused-obj))
                    (if _deleted59633_
                        (begin
                          (vector-set! _table59610_ _deleted59633_ _key59606_)
                          (vector-set!
                           _table59610_
                           (fx+ _deleted59633_ '1)
                           _value59607_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59605_
                              (fx+ (&raw-table-count _tab59605_) '1)))))
                        (begin
                          (vector-set! _table59610_ _probe59629_ _key59606_)
                          (vector-set!
                           _table59610_
                           (fx+ _probe59629_ '1)
                           _value59607_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59605_
                              (fx- (&raw-table-free _tab59605_) '1))
                             (&raw-table-count-set!
                              _tab59605_
                              (fx+ (&raw-table-count _tab59605_) '1))))))
                    (if (eq? _k59636_ (macro-deleted-obj))
                        (_loop59626_
                         (let ((_next-probe59641_
                                (fx+ _start59622_
                                     _i59631_
                                     (fx* _i59631_ _i59631_))))
                           (fxmodulo _next-probe59641_ _size59616_))
                         (fx+ _i59631_ '1)
                         (let ((_$e59644_ _deleted59633_))
                           (if _$e59644_ _$e59644_ _probe59629_)))
                        (if (eq? _key59606_ _k59636_)
                            (begin
                              (vector-set!
                               _table59610_
                               _probe59629_
                               _key59606_)
                              (vector-set!
                               _table59610_
                               (fx+ _probe59629_ '1)
                               _value59607_))
                            (_loop59626_
                             (let ((_next-probe59647_
                                    (fx+ _start59622_
                                         _i59631_
                                         (fx* _i59631_ _i59631_))))
                               (fxmodulo _next-probe59647_ _size59616_))
                             (fx+ _i59631_ '1)
                             _deleted59633_))))))))))
    (define eq-table-update!
      (lambda (_tab59600_ _key59601_ _eq-table-update!59602_ _default59603_)
        (if (fx< (&raw-table-free _tab59600_)
                 (fxquotient (vector-length (&raw-table-table _tab59600_)) '4))
            (__raw-table-rehash! _tab59600_)
            '#!void)
        (__eq-table-update!
         _tab59600_
         _key59601_
         _eq-table-update!59602_
         _default59603_)))
    (define __eq-table-update!
      (lambda (_tab59554_ _key59555_ _eq-table-update!59556_ _default59557_)
        (let ((_table59560_ (&raw-table-table _tab59554_))
              (_seed59561_ (&raw-table-seed _tab59554_)))
          (let* ((_h59563_ (fxxor (eq-hash _key59555_) _seed59561_))
                 (_size59566_ (vector-length _table59560_))
                 (_entries59569_ (fxquotient _size59566_ '2))
                 (_start59572_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59563_ _entries59569_)
                   '1)))
            (let _loop59576_ ((_probe59579_ _start59572_)
                              (_i59581_ '1)
                              (_deleted59583_ '#f))
              (let ((_k59586_ (vector-ref _table59560_ _probe59579_)))
                (if (eq? _k59586_ (macro-unused-obj))
                    (if _deleted59583_
                        (begin
                          (vector-set! _table59560_ _deleted59583_ _key59555_)
                          (vector-set!
                           _table59560_
                           (fx+ _deleted59583_ '1)
                           (_eq-table-update!59556_ _default59557_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59554_
                              (fx+ (&raw-table-count _tab59554_) '1)))))
                        (begin
                          (vector-set! _table59560_ _probe59579_ _key59555_)
                          (vector-set!
                           _table59560_
                           (fx+ _probe59579_ '1)
                           (_eq-table-update!59556_ _default59557_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59554_
                              (fx- (&raw-table-free _tab59554_) '1))
                             (&raw-table-count-set!
                              _tab59554_
                              (fx+ (&raw-table-count _tab59554_) '1))))))
                    (if (eq? _k59586_ (macro-deleted-obj))
                        (_loop59576_
                         (let ((_next-probe59591_
                                (fx+ _start59572_
                                     _i59581_
                                     (fx* _i59581_ _i59581_))))
                           (fxmodulo _next-probe59591_ _size59566_))
                         (fx+ _i59581_ '1)
                         (let ((_$e59594_ _deleted59583_))
                           (if _$e59594_ _$e59594_ _probe59579_)))
                        (if (eq? _key59555_ _k59586_)
                            (begin
                              (vector-set!
                               _table59560_
                               _probe59579_
                               _key59555_)
                              (vector-set!
                               _table59560_
                               (fx+ _probe59579_ '1)
                               (_eq-table-update!59556_
                                (vector-ref
                                 _table59560_
                                 (fx+ _probe59579_ '1)))))
                            (_loop59576_
                             (let ((_next-probe59597_
                                    (fx+ _start59572_
                                         _i59581_
                                         (fx* _i59581_ _i59581_))))
                               (fxmodulo _next-probe59597_ _size59566_))
                             (fx+ _i59581_ '1)
                             _deleted59583_))))))))))
    (define eq-table-delete!
      (lambda (_tab59513_ _key59515_)
        (let ((_table59518_ (&raw-table-table _tab59513_))
              (_seed59520_ (&raw-table-seed _tab59513_)))
          (let* ((_h59523_ (fxxor (eq-hash _key59515_) _seed59520_))
                 (_size59526_ (vector-length _table59518_))
                 (_entries59529_ (fxquotient _size59526_ '2))
                 (_start59532_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59523_ _entries59529_)
                   '1)))
            (let _loop59536_ ((_probe59539_ _start59532_) (_i59541_ '1))
              (let ((_k59544_ (vector-ref _table59518_ _probe59539_)))
                (if (eq? _k59544_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59544_ (macro-deleted-obj))
                        (_loop59536_
                         (let ((_next-probe59547_
                                (fx+ _start59532_
                                     _i59541_
                                     (fx* _i59541_ _i59541_))))
                           (fxmodulo _next-probe59547_ _size59526_))
                         (fx+ _i59541_ '1))
                        (if (eq? _key59515_ _k59544_)
                            (begin
                              (vector-set!
                               _table59518_
                               _probe59539_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59518_
                               (fx+ _probe59539_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59513_
                                  (fx- (&raw-table-count _tab59513_) '1)))))
                            (_loop59536_
                             (let ((_next-probe59551_
                                    (fx+ _start59532_
                                         _i59541_
                                         (fx* _i59541_ _i59541_))))
                               (fxmodulo _next-probe59551_ _size59526_))
                             (fx+ _i59541_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_size-hint59494_ _seed59496_)
        (make-raw-table__% _size-hint59494_ eqv-hash eqv? _seed59496_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_size-hint59502_ '#f) (_seed59504_ '0))
          (make-eqv-table__% _size-hint59502_ _seed59504_))))
    (define make-eqv-table__1
      (lambda (_size-hint59506_)
        (let ((_seed59508_ '0))
          (make-eqv-table__% _size-hint59506_ _seed59508_))))
    (define make-eqv-table
      (lambda _g60035_
        (let ((_g60034_ (##length _g60035_)))
          (cond ((##fx= _g60034_ 0)
                 (apply (lambda () (make-eqv-table__0)) _g60035_))
                ((##fx= _g60034_ 1)
                 (apply (lambda (_size-hint59506_)
                          (make-eqv-table__1 _size-hint59506_))
                        _g60035_))
                ((##fx= _g60034_ 2)
                 (apply (lambda (_size-hint59510_ _seed59511_)
                          (make-eqv-table__% _size-hint59510_ _seed59511_))
                        _g60035_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g60035_))))))
    (define eqv-table-ref
      (lambda (_tab59451_ _key59452_ _default59453_)
        (let ((_table59455_ (&raw-table-table _tab59451_))
              (_seed59456_ (&raw-table-seed _tab59451_)))
          (let* ((_h59458_ (fxxor (eqv-hash _key59452_) _seed59456_))
                 (_size59461_ (vector-length _table59455_))
                 (_entries59464_ (fxquotient _size59461_ '2))
                 (_start59467_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59458_ _entries59464_)
                   '1)))
            (let _loop59471_ ((_probe59474_ _start59467_)
                              (_i59476_ '1)
                              (_deleted59478_ '#f))
              (let ((_k59481_ (vector-ref _table59455_ _probe59474_)))
                (if (eq? _k59481_ (macro-unused-obj))
                    _default59453_
                    (if (eq? _k59481_ (macro-deleted-obj))
                        (_loop59471_
                         (let ((_next-probe59484_
                                (fx+ _start59467_
                                     _i59476_
                                     (fx* _i59476_ _i59476_))))
                           (fxmodulo _next-probe59484_ _size59461_))
                         (fx+ _i59476_ '1)
                         (let ((_$e59487_ _deleted59478_))
                           (if _$e59487_ _$e59487_ _probe59474_)))
                        (if (eqv? _key59452_ _k59481_)
                            (vector-ref _table59455_ (fx+ _probe59474_ '1))
                            (_loop59471_
                             (let ((_next-probe59490_
                                    (fx+ _start59467_
                                         _i59476_
                                         (fx* _i59476_ _i59476_))))
                               (fxmodulo _next-probe59490_ _size59461_))
                             (fx+ _i59476_ '1)
                             _deleted59478_))))))))))
    (define eqv-table-set!
      (lambda (_tab59447_ _key59448_ _value59449_)
        (if (fx< (&raw-table-free _tab59447_)
                 (fxquotient (vector-length (&raw-table-table _tab59447_)) '4))
            (__raw-table-rehash! _tab59447_)
            '#!void)
        (__eqv-table-set! _tab59447_ _key59448_ _value59449_)))
    (define __eqv-table-set!
      (lambda (_tab59402_ _key59403_ _value59404_)
        (let ((_table59407_ (&raw-table-table _tab59402_))
              (_seed59408_ (&raw-table-seed _tab59402_)))
          (let* ((_h59410_ (fxxor (eqv-hash _key59403_) _seed59408_))
                 (_size59413_ (vector-length _table59407_))
                 (_entries59416_ (fxquotient _size59413_ '2))
                 (_start59419_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59410_ _entries59416_)
                   '1)))
            (let _loop59423_ ((_probe59426_ _start59419_)
                              (_i59428_ '1)
                              (_deleted59430_ '#f))
              (let ((_k59433_ (vector-ref _table59407_ _probe59426_)))
                (if (eq? _k59433_ (macro-unused-obj))
                    (if _deleted59430_
                        (begin
                          (vector-set! _table59407_ _deleted59430_ _key59403_)
                          (vector-set!
                           _table59407_
                           (fx+ _deleted59430_ '1)
                           _value59404_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59402_
                              (fx+ (&raw-table-count _tab59402_) '1)))))
                        (begin
                          (vector-set! _table59407_ _probe59426_ _key59403_)
                          (vector-set!
                           _table59407_
                           (fx+ _probe59426_ '1)
                           _value59404_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59402_
                              (fx- (&raw-table-free _tab59402_) '1))
                             (&raw-table-count-set!
                              _tab59402_
                              (fx+ (&raw-table-count _tab59402_) '1))))))
                    (if (eq? _k59433_ (macro-deleted-obj))
                        (_loop59423_
                         (let ((_next-probe59438_
                                (fx+ _start59419_
                                     _i59428_
                                     (fx* _i59428_ _i59428_))))
                           (fxmodulo _next-probe59438_ _size59413_))
                         (fx+ _i59428_ '1)
                         (let ((_$e59441_ _deleted59430_))
                           (if _$e59441_ _$e59441_ _probe59426_)))
                        (if (eqv? _key59403_ _k59433_)
                            (begin
                              (vector-set!
                               _table59407_
                               _probe59426_
                               _key59403_)
                              (vector-set!
                               _table59407_
                               (fx+ _probe59426_ '1)
                               _value59404_))
                            (_loop59423_
                             (let ((_next-probe59444_
                                    (fx+ _start59419_
                                         _i59428_
                                         (fx* _i59428_ _i59428_))))
                               (fxmodulo _next-probe59444_ _size59413_))
                             (fx+ _i59428_ '1)
                             _deleted59430_))))))))))
    (define eqv-table-update!
      (lambda (_tab59397_ _key59398_ _eqv-table-update!59399_ _default59400_)
        (if (fx< (&raw-table-free _tab59397_)
                 (fxquotient (vector-length (&raw-table-table _tab59397_)) '4))
            (__raw-table-rehash! _tab59397_)
            '#!void)
        (__eqv-table-update!
         _tab59397_
         _key59398_
         _eqv-table-update!59399_
         _default59400_)))
    (define __eqv-table-update!
      (lambda (_tab59351_ _key59352_ _eqv-table-update!59353_ _default59354_)
        (let ((_table59357_ (&raw-table-table _tab59351_))
              (_seed59358_ (&raw-table-seed _tab59351_)))
          (let* ((_h59360_ (fxxor (eqv-hash _key59352_) _seed59358_))
                 (_size59363_ (vector-length _table59357_))
                 (_entries59366_ (fxquotient _size59363_ '2))
                 (_start59369_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59360_ _entries59366_)
                   '1)))
            (let _loop59373_ ((_probe59376_ _start59369_)
                              (_i59378_ '1)
                              (_deleted59380_ '#f))
              (let ((_k59383_ (vector-ref _table59357_ _probe59376_)))
                (if (eq? _k59383_ (macro-unused-obj))
                    (if _deleted59380_
                        (begin
                          (vector-set! _table59357_ _deleted59380_ _key59352_)
                          (vector-set!
                           _table59357_
                           (fx+ _deleted59380_ '1)
                           (_eqv-table-update!59353_ _default59354_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59351_
                              (fx+ (&raw-table-count _tab59351_) '1)))))
                        (begin
                          (vector-set! _table59357_ _probe59376_ _key59352_)
                          (vector-set!
                           _table59357_
                           (fx+ _probe59376_ '1)
                           (_eqv-table-update!59353_ _default59354_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59351_
                              (fx- (&raw-table-free _tab59351_) '1))
                             (&raw-table-count-set!
                              _tab59351_
                              (fx+ (&raw-table-count _tab59351_) '1))))))
                    (if (eq? _k59383_ (macro-deleted-obj))
                        (_loop59373_
                         (let ((_next-probe59388_
                                (fx+ _start59369_
                                     _i59378_
                                     (fx* _i59378_ _i59378_))))
                           (fxmodulo _next-probe59388_ _size59363_))
                         (fx+ _i59378_ '1)
                         (let ((_$e59391_ _deleted59380_))
                           (if _$e59391_ _$e59391_ _probe59376_)))
                        (if (eqv? _key59352_ _k59383_)
                            (begin
                              (vector-set!
                               _table59357_
                               _probe59376_
                               _key59352_)
                              (vector-set!
                               _table59357_
                               (fx+ _probe59376_ '1)
                               (_eqv-table-update!59353_
                                (vector-ref
                                 _table59357_
                                 (fx+ _probe59376_ '1)))))
                            (_loop59373_
                             (let ((_next-probe59394_
                                    (fx+ _start59369_
                                         _i59378_
                                         (fx* _i59378_ _i59378_))))
                               (fxmodulo _next-probe59394_ _size59363_))
                             (fx+ _i59378_ '1)
                             _deleted59380_))))))))))
    (define eqv-table-delete!
      (lambda (_tab59310_ _key59312_)
        (let ((_table59315_ (&raw-table-table _tab59310_))
              (_seed59317_ (&raw-table-seed _tab59310_)))
          (let* ((_h59320_ (fxxor (eqv-hash _key59312_) _seed59317_))
                 (_size59323_ (vector-length _table59315_))
                 (_entries59326_ (fxquotient _size59323_ '2))
                 (_start59329_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59320_ _entries59326_)
                   '1)))
            (let _loop59333_ ((_probe59336_ _start59329_) (_i59338_ '1))
              (let ((_k59341_ (vector-ref _table59315_ _probe59336_)))
                (if (eq? _k59341_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59341_ (macro-deleted-obj))
                        (_loop59333_
                         (let ((_next-probe59344_
                                (fx+ _start59329_
                                     _i59338_
                                     (fx* _i59338_ _i59338_))))
                           (fxmodulo _next-probe59344_ _size59323_))
                         (fx+ _i59338_ '1))
                        (if (eqv? _key59312_ _k59341_)
                            (begin
                              (vector-set!
                               _table59315_
                               _probe59336_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59315_
                               (fx+ _probe59336_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59310_
                                  (fx- (&raw-table-count _tab59310_) '1)))))
                            (_loop59333_
                             (let ((_next-probe59348_
                                    (fx+ _start59329_
                                         _i59338_
                                         (fx* _i59338_ _i59338_))))
                               (fxmodulo _next-probe59348_ _size59323_))
                             (fx+ _i59338_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_size-hint59291_ _seed59293_)
        (make-raw-table__% _size-hint59291_ symbolic-hash eq? _seed59293_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_size-hint59299_ '#f) (_seed59301_ '0))
          (make-symbolic-table__% _size-hint59299_ _seed59301_))))
    (define make-symbolic-table__1
      (lambda (_size-hint59303_)
        (let ((_seed59305_ '0))
          (make-symbolic-table__% _size-hint59303_ _seed59305_))))
    (define make-symbolic-table
      (lambda _g60037_
        (let ((_g60036_ (##length _g60037_)))
          (cond ((##fx= _g60036_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g60037_))
                ((##fx= _g60036_ 1)
                 (apply (lambda (_size-hint59303_)
                          (make-symbolic-table__1 _size-hint59303_))
                        _g60037_))
                ((##fx= _g60036_ 2)
                 (apply (lambda (_size-hint59307_ _seed59308_)
                          (make-symbolic-table__%
                           _size-hint59307_
                           _seed59308_))
                        _g60037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g60037_))))))
    (define symbolic-table-ref
      (lambda (_tab59248_ _key59249_ _default59250_)
        (let ((_table59252_ (&raw-table-table _tab59248_))
              (_seed59253_ (&raw-table-seed _tab59248_)))
          (let* ((_h59255_ (fxxor (symbolic-hash _key59249_) _seed59253_))
                 (_size59258_ (vector-length _table59252_))
                 (_entries59261_ (fxquotient _size59258_ '2))
                 (_start59264_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59255_ _entries59261_)
                   '1)))
            (let _loop59268_ ((_probe59271_ _start59264_)
                              (_i59273_ '1)
                              (_deleted59275_ '#f))
              (let ((_k59278_ (vector-ref _table59252_ _probe59271_)))
                (if (eq? _k59278_ (macro-unused-obj))
                    _default59250_
                    (if (eq? _k59278_ (macro-deleted-obj))
                        (_loop59268_
                         (let ((_next-probe59281_
                                (fx+ _start59264_
                                     _i59273_
                                     (fx* _i59273_ _i59273_))))
                           (fxmodulo _next-probe59281_ _size59258_))
                         (fx+ _i59273_ '1)
                         (let ((_$e59284_ _deleted59275_))
                           (if _$e59284_ _$e59284_ _probe59271_)))
                        (if (eq? _key59249_ _k59278_)
                            (vector-ref _table59252_ (fx+ _probe59271_ '1))
                            (_loop59268_
                             (let ((_next-probe59287_
                                    (fx+ _start59264_
                                         _i59273_
                                         (fx* _i59273_ _i59273_))))
                               (fxmodulo _next-probe59287_ _size59258_))
                             (fx+ _i59273_ '1)
                             _deleted59275_))))))))))
    (define symbolic-table-set!
      (lambda (_tab59244_ _key59245_ _value59246_)
        (if (fx< (&raw-table-free _tab59244_)
                 (fxquotient (vector-length (&raw-table-table _tab59244_)) '4))
            (__raw-table-rehash! _tab59244_)
            '#!void)
        (__symbolic-table-set! _tab59244_ _key59245_ _value59246_)))
    (define __symbolic-table-set!
      (lambda (_tab59199_ _key59200_ _value59201_)
        (let ((_table59204_ (&raw-table-table _tab59199_))
              (_seed59205_ (&raw-table-seed _tab59199_)))
          (let* ((_h59207_ (fxxor (symbolic-hash _key59200_) _seed59205_))
                 (_size59210_ (vector-length _table59204_))
                 (_entries59213_ (fxquotient _size59210_ '2))
                 (_start59216_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59207_ _entries59213_)
                   '1)))
            (let _loop59220_ ((_probe59223_ _start59216_)
                              (_i59225_ '1)
                              (_deleted59227_ '#f))
              (let ((_k59230_ (vector-ref _table59204_ _probe59223_)))
                (if (eq? _k59230_ (macro-unused-obj))
                    (if _deleted59227_
                        (begin
                          (vector-set! _table59204_ _deleted59227_ _key59200_)
                          (vector-set!
                           _table59204_
                           (fx+ _deleted59227_ '1)
                           _value59201_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59199_
                              (fx+ (&raw-table-count _tab59199_) '1)))))
                        (begin
                          (vector-set! _table59204_ _probe59223_ _key59200_)
                          (vector-set!
                           _table59204_
                           (fx+ _probe59223_ '1)
                           _value59201_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59199_
                              (fx- (&raw-table-free _tab59199_) '1))
                             (&raw-table-count-set!
                              _tab59199_
                              (fx+ (&raw-table-count _tab59199_) '1))))))
                    (if (eq? _k59230_ (macro-deleted-obj))
                        (_loop59220_
                         (let ((_next-probe59235_
                                (fx+ _start59216_
                                     _i59225_
                                     (fx* _i59225_ _i59225_))))
                           (fxmodulo _next-probe59235_ _size59210_))
                         (fx+ _i59225_ '1)
                         (let ((_$e59238_ _deleted59227_))
                           (if _$e59238_ _$e59238_ _probe59223_)))
                        (if (eq? _key59200_ _k59230_)
                            (begin
                              (vector-set!
                               _table59204_
                               _probe59223_
                               _key59200_)
                              (vector-set!
                               _table59204_
                               (fx+ _probe59223_ '1)
                               _value59201_))
                            (_loop59220_
                             (let ((_next-probe59241_
                                    (fx+ _start59216_
                                         _i59225_
                                         (fx* _i59225_ _i59225_))))
                               (fxmodulo _next-probe59241_ _size59210_))
                             (fx+ _i59225_ '1)
                             _deleted59227_))))))))))
    (define symbolic-table-update!
      (lambda (_tab59194_
               _key59195_
               _symbolic-table-update!59196_
               _default59197_)
        (if (fx< (&raw-table-free _tab59194_)
                 (fxquotient (vector-length (&raw-table-table _tab59194_)) '4))
            (__raw-table-rehash! _tab59194_)
            '#!void)
        (__symbolic-table-update!
         _tab59194_
         _key59195_
         _symbolic-table-update!59196_
         _default59197_)))
    (define __symbolic-table-update!
      (lambda (_tab59148_
               _key59149_
               _symbolic-table-update!59150_
               _default59151_)
        (let ((_table59154_ (&raw-table-table _tab59148_))
              (_seed59155_ (&raw-table-seed _tab59148_)))
          (let* ((_h59157_ (fxxor (symbolic-hash _key59149_) _seed59155_))
                 (_size59160_ (vector-length _table59154_))
                 (_entries59163_ (fxquotient _size59160_ '2))
                 (_start59166_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59157_ _entries59163_)
                   '1)))
            (let _loop59170_ ((_probe59173_ _start59166_)
                              (_i59175_ '1)
                              (_deleted59177_ '#f))
              (let ((_k59180_ (vector-ref _table59154_ _probe59173_)))
                (if (eq? _k59180_ (macro-unused-obj))
                    (if _deleted59177_
                        (begin
                          (vector-set! _table59154_ _deleted59177_ _key59149_)
                          (vector-set!
                           _table59154_
                           (fx+ _deleted59177_ '1)
                           (_symbolic-table-update!59150_ _default59151_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59148_
                              (fx+ (&raw-table-count _tab59148_) '1)))))
                        (begin
                          (vector-set! _table59154_ _probe59173_ _key59149_)
                          (vector-set!
                           _table59154_
                           (fx+ _probe59173_ '1)
                           (_symbolic-table-update!59150_ _default59151_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59148_
                              (fx- (&raw-table-free _tab59148_) '1))
                             (&raw-table-count-set!
                              _tab59148_
                              (fx+ (&raw-table-count _tab59148_) '1))))))
                    (if (eq? _k59180_ (macro-deleted-obj))
                        (_loop59170_
                         (let ((_next-probe59185_
                                (fx+ _start59166_
                                     _i59175_
                                     (fx* _i59175_ _i59175_))))
                           (fxmodulo _next-probe59185_ _size59160_))
                         (fx+ _i59175_ '1)
                         (let ((_$e59188_ _deleted59177_))
                           (if _$e59188_ _$e59188_ _probe59173_)))
                        (if (eq? _key59149_ _k59180_)
                            (begin
                              (vector-set!
                               _table59154_
                               _probe59173_
                               _key59149_)
                              (vector-set!
                               _table59154_
                               (fx+ _probe59173_ '1)
                               (_symbolic-table-update!59150_
                                (vector-ref
                                 _table59154_
                                 (fx+ _probe59173_ '1)))))
                            (_loop59170_
                             (let ((_next-probe59191_
                                    (fx+ _start59166_
                                         _i59175_
                                         (fx* _i59175_ _i59175_))))
                               (fxmodulo _next-probe59191_ _size59160_))
                             (fx+ _i59175_ '1)
                             _deleted59177_))))))))))
    (define symbolic-table-delete!
      (lambda (_tab59107_ _key59109_)
        (let ((_table59112_ (&raw-table-table _tab59107_))
              (_seed59114_ (&raw-table-seed _tab59107_)))
          (let* ((_h59117_ (fxxor (symbolic-hash _key59109_) _seed59114_))
                 (_size59120_ (vector-length _table59112_))
                 (_entries59123_ (fxquotient _size59120_ '2))
                 (_start59126_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59117_ _entries59123_)
                   '1)))
            (let _loop59130_ ((_probe59133_ _start59126_) (_i59135_ '1))
              (let ((_k59138_ (vector-ref _table59112_ _probe59133_)))
                (if (eq? _k59138_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59138_ (macro-deleted-obj))
                        (_loop59130_
                         (let ((_next-probe59141_
                                (fx+ _start59126_
                                     _i59135_
                                     (fx* _i59135_ _i59135_))))
                           (fxmodulo _next-probe59141_ _size59120_))
                         (fx+ _i59135_ '1))
                        (if (eq? _key59109_ _k59138_)
                            (begin
                              (vector-set!
                               _table59112_
                               _probe59133_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59112_
                               (fx+ _probe59133_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59107_
                                  (fx- (&raw-table-count _tab59107_) '1)))))
                            (_loop59130_
                             (let ((_next-probe59145_
                                    (fx+ _start59126_
                                         _i59135_
                                         (fx* _i59135_ _i59135_))))
                               (fxmodulo _next-probe59145_ _size59120_))
                             (fx+ _i59135_ '1)))))))))))
    (define make-string-table__%
      (lambda (_size-hint59088_ _seed59090_)
        (make-raw-table__%
         _size-hint59088_
         string-hash
         ##string=?
         _seed59090_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_size-hint59096_ '#f) (_seed59098_ '0))
          (make-string-table__% _size-hint59096_ _seed59098_))))
    (define make-string-table__1
      (lambda (_size-hint59100_)
        (let ((_seed59102_ '0))
          (make-string-table__% _size-hint59100_ _seed59102_))))
    (define make-string-table
      (lambda _g60039_
        (let ((_g60038_ (##length _g60039_)))
          (cond ((##fx= _g60038_ 0)
                 (apply (lambda () (make-string-table__0)) _g60039_))
                ((##fx= _g60038_ 1)
                 (apply (lambda (_size-hint59100_)
                          (make-string-table__1 _size-hint59100_))
                        _g60039_))
                ((##fx= _g60038_ 2)
                 (apply (lambda (_size-hint59104_ _seed59105_)
                          (make-string-table__% _size-hint59104_ _seed59105_))
                        _g60039_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g60039_))))))
    (define string-table-ref
      (lambda (_tab59045_ _key59046_ _default59047_)
        (let ((_table59049_ (&raw-table-table _tab59045_))
              (_seed59050_ (&raw-table-seed _tab59045_)))
          (let* ((_h59052_ (fxxor (##string=?-hash _key59046_) _seed59050_))
                 (_size59055_ (vector-length _table59049_))
                 (_entries59058_ (fxquotient _size59055_ '2))
                 (_start59061_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59052_ _entries59058_)
                   '1)))
            (let _loop59065_ ((_probe59068_ _start59061_)
                              (_i59070_ '1)
                              (_deleted59072_ '#f))
              (let ((_k59075_ (vector-ref _table59049_ _probe59068_)))
                (if (eq? _k59075_ (macro-unused-obj))
                    _default59047_
                    (if (eq? _k59075_ (macro-deleted-obj))
                        (_loop59065_
                         (let ((_next-probe59078_
                                (fx+ _start59061_
                                     _i59070_
                                     (fx* _i59070_ _i59070_))))
                           (fxmodulo _next-probe59078_ _size59055_))
                         (fx+ _i59070_ '1)
                         (let ((_$e59081_ _deleted59072_))
                           (if _$e59081_ _$e59081_ _probe59068_)))
                        (if (##string=? _key59046_ _k59075_)
                            (vector-ref _table59049_ (fx+ _probe59068_ '1))
                            (_loop59065_
                             (let ((_next-probe59084_
                                    (fx+ _start59061_
                                         _i59070_
                                         (fx* _i59070_ _i59070_))))
                               (fxmodulo _next-probe59084_ _size59055_))
                             (fx+ _i59070_ '1)
                             _deleted59072_))))))))))
    (define string-table-set!
      (lambda (_tab59041_ _key59042_ _value59043_)
        (if (fx< (&raw-table-free _tab59041_)
                 (fxquotient (vector-length (&raw-table-table _tab59041_)) '4))
            (__raw-table-rehash! _tab59041_)
            '#!void)
        (__string-table-set! _tab59041_ _key59042_ _value59043_)))
    (define __string-table-set!
      (lambda (_tab58996_ _key58997_ _value58998_)
        (let ((_table59001_ (&raw-table-table _tab58996_))
              (_seed59002_ (&raw-table-seed _tab58996_)))
          (let* ((_h59004_ (fxxor (##string=?-hash _key58997_) _seed59002_))
                 (_size59007_ (vector-length _table59001_))
                 (_entries59010_ (fxquotient _size59007_ '2))
                 (_start59013_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59004_ _entries59010_)
                   '1)))
            (let _loop59017_ ((_probe59020_ _start59013_)
                              (_i59022_ '1)
                              (_deleted59024_ '#f))
              (let ((_k59027_ (vector-ref _table59001_ _probe59020_)))
                (if (eq? _k59027_ (macro-unused-obj))
                    (if _deleted59024_
                        (begin
                          (vector-set! _table59001_ _deleted59024_ _key58997_)
                          (vector-set!
                           _table59001_
                           (fx+ _deleted59024_ '1)
                           _value58998_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58996_
                              (fx+ (&raw-table-count _tab58996_) '1)))))
                        (begin
                          (vector-set! _table59001_ _probe59020_ _key58997_)
                          (vector-set!
                           _table59001_
                           (fx+ _probe59020_ '1)
                           _value58998_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58996_
                              (fx- (&raw-table-free _tab58996_) '1))
                             (&raw-table-count-set!
                              _tab58996_
                              (fx+ (&raw-table-count _tab58996_) '1))))))
                    (if (eq? _k59027_ (macro-deleted-obj))
                        (_loop59017_
                         (let ((_next-probe59032_
                                (fx+ _start59013_
                                     _i59022_
                                     (fx* _i59022_ _i59022_))))
                           (fxmodulo _next-probe59032_ _size59007_))
                         (fx+ _i59022_ '1)
                         (let ((_$e59035_ _deleted59024_))
                           (if _$e59035_ _$e59035_ _probe59020_)))
                        (if (##string=? _key58997_ _k59027_)
                            (begin
                              (vector-set!
                               _table59001_
                               _probe59020_
                               _key58997_)
                              (vector-set!
                               _table59001_
                               (fx+ _probe59020_ '1)
                               _value58998_))
                            (_loop59017_
                             (let ((_next-probe59038_
                                    (fx+ _start59013_
                                         _i59022_
                                         (fx* _i59022_ _i59022_))))
                               (fxmodulo _next-probe59038_ _size59007_))
                             (fx+ _i59022_ '1)
                             _deleted59024_))))))))))
    (define string-table-update!
      (lambda (_tab58991_
               _key58992_
               _string-table-update!58993_
               _default58994_)
        (if (fx< (&raw-table-free _tab58991_)
                 (fxquotient (vector-length (&raw-table-table _tab58991_)) '4))
            (__raw-table-rehash! _tab58991_)
            '#!void)
        (__string-table-update!
         _tab58991_
         _key58992_
         _string-table-update!58993_
         _default58994_)))
    (define __string-table-update!
      (lambda (_tab58945_
               _key58946_
               _string-table-update!58947_
               _default58948_)
        (let ((_table58951_ (&raw-table-table _tab58945_))
              (_seed58952_ (&raw-table-seed _tab58945_)))
          (let* ((_h58954_ (fxxor (##string=?-hash _key58946_) _seed58952_))
                 (_size58957_ (vector-length _table58951_))
                 (_entries58960_ (fxquotient _size58957_ '2))
                 (_start58963_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58954_ _entries58960_)
                   '1)))
            (let _loop58967_ ((_probe58970_ _start58963_)
                              (_i58972_ '1)
                              (_deleted58974_ '#f))
              (let ((_k58977_ (vector-ref _table58951_ _probe58970_)))
                (if (eq? _k58977_ (macro-unused-obj))
                    (if _deleted58974_
                        (begin
                          (vector-set! _table58951_ _deleted58974_ _key58946_)
                          (vector-set!
                           _table58951_
                           (fx+ _deleted58974_ '1)
                           (_string-table-update!58947_ _default58948_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58945_
                              (fx+ (&raw-table-count _tab58945_) '1)))))
                        (begin
                          (vector-set! _table58951_ _probe58970_ _key58946_)
                          (vector-set!
                           _table58951_
                           (fx+ _probe58970_ '1)
                           (_string-table-update!58947_ _default58948_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58945_
                              (fx- (&raw-table-free _tab58945_) '1))
                             (&raw-table-count-set!
                              _tab58945_
                              (fx+ (&raw-table-count _tab58945_) '1))))))
                    (if (eq? _k58977_ (macro-deleted-obj))
                        (_loop58967_
                         (let ((_next-probe58982_
                                (fx+ _start58963_
                                     _i58972_
                                     (fx* _i58972_ _i58972_))))
                           (fxmodulo _next-probe58982_ _size58957_))
                         (fx+ _i58972_ '1)
                         (let ((_$e58985_ _deleted58974_))
                           (if _$e58985_ _$e58985_ _probe58970_)))
                        (if (##string=? _key58946_ _k58977_)
                            (begin
                              (vector-set!
                               _table58951_
                               _probe58970_
                               _key58946_)
                              (vector-set!
                               _table58951_
                               (fx+ _probe58970_ '1)
                               (_string-table-update!58947_
                                (vector-ref
                                 _table58951_
                                 (fx+ _probe58970_ '1)))))
                            (_loop58967_
                             (let ((_next-probe58988_
                                    (fx+ _start58963_
                                         _i58972_
                                         (fx* _i58972_ _i58972_))))
                               (fxmodulo _next-probe58988_ _size58957_))
                             (fx+ _i58972_ '1)
                             _deleted58974_))))))))))
    (define string-table-delete!
      (lambda (_tab58904_ _key58906_)
        (let ((_table58909_ (&raw-table-table _tab58904_))
              (_seed58911_ (&raw-table-seed _tab58904_)))
          (let* ((_h58914_ (fxxor (##string=?-hash _key58906_) _seed58911_))
                 (_size58917_ (vector-length _table58909_))
                 (_entries58920_ (fxquotient _size58917_ '2))
                 (_start58923_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58914_ _entries58920_)
                   '1)))
            (let _loop58927_ ((_probe58930_ _start58923_) (_i58932_ '1))
              (let ((_k58935_ (vector-ref _table58909_ _probe58930_)))
                (if (eq? _k58935_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k58935_ (macro-deleted-obj))
                        (_loop58927_
                         (let ((_next-probe58938_
                                (fx+ _start58923_
                                     _i58932_
                                     (fx* _i58932_ _i58932_))))
                           (fxmodulo _next-probe58938_ _size58917_))
                         (fx+ _i58932_ '1))
                        (if (##string=? _key58906_ _k58935_)
                            (begin
                              (vector-set!
                               _table58909_
                               _probe58930_
                               (macro-deleted-obj))
                              (vector-set!
                               _table58909_
                               (fx+ _probe58930_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab58904_
                                  (fx- (&raw-table-count _tab58904_) '1)))))
                            (_loop58927_
                             (let ((_next-probe58942_
                                    (fx+ _start58923_
                                         _i58932_
                                         (fx* _i58932_ _i58932_))))
                               (fxmodulo _next-probe58942_ _size58917_))
                             (fx+ _i58932_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_size-hint58885_ _seed58887_)
        (make-raw-table__% _size-hint58885_ immediate-hash eq? _seed58887_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_size-hint58893_ '#f) (_seed58895_ '0))
          (make-immediate-table__% _size-hint58893_ _seed58895_))))
    (define make-immediate-table__1
      (lambda (_size-hint58897_)
        (let ((_seed58899_ '0))
          (make-immediate-table__% _size-hint58897_ _seed58899_))))
    (define make-immediate-table
      (lambda _g60041_
        (let ((_g60040_ (##length _g60041_)))
          (cond ((##fx= _g60040_ 0)
                 (apply (lambda () (make-immediate-table__0)) _g60041_))
                ((##fx= _g60040_ 1)
                 (apply (lambda (_size-hint58897_)
                          (make-immediate-table__1 _size-hint58897_))
                        _g60041_))
                ((##fx= _g60040_ 2)
                 (apply (lambda (_size-hint58901_ _seed58902_)
                          (make-immediate-table__%
                           _size-hint58901_
                           _seed58902_))
                        _g60041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g60041_))))))
    (define immediate-table-ref
      (lambda (_tab58842_ _key58843_ _default58844_)
        (let ((_table58846_ (&raw-table-table _tab58842_))
              (_seed58847_ (&raw-table-seed _tab58842_)))
          (let* ((_h58849_ (fxxor (immediate-hash _key58843_) _seed58847_))
                 (_size58852_ (vector-length _table58846_))
                 (_entries58855_ (fxquotient _size58852_ '2))
                 (_start58858_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58849_ _entries58855_)
                   '1)))
            (let _loop58862_ ((_probe58865_ _start58858_)
                              (_i58867_ '1)
                              (_deleted58869_ '#f))
              (let ((_k58872_ (vector-ref _table58846_ _probe58865_)))
                (if (eq? _k58872_ (macro-unused-obj))
                    _default58844_
                    (if (eq? _k58872_ (macro-deleted-obj))
                        (_loop58862_
                         (let ((_next-probe58875_
                                (fx+ _start58858_
                                     _i58867_
                                     (fx* _i58867_ _i58867_))))
                           (fxmodulo _next-probe58875_ _size58852_))
                         (fx+ _i58867_ '1)
                         (let ((_$e58878_ _deleted58869_))
                           (if _$e58878_ _$e58878_ _probe58865_)))
                        (if (eq? _key58843_ _k58872_)
                            (vector-ref _table58846_ (fx+ _probe58865_ '1))
                            (_loop58862_
                             (let ((_next-probe58881_
                                    (fx+ _start58858_
                                         _i58867_
                                         (fx* _i58867_ _i58867_))))
                               (fxmodulo _next-probe58881_ _size58852_))
                             (fx+ _i58867_ '1)
                             _deleted58869_))))))))))
    (define immediate-table-set!
      (lambda (_tab58838_ _key58839_ _value58840_)
        (if (fx< (&raw-table-free _tab58838_)
                 (fxquotient (vector-length (&raw-table-table _tab58838_)) '4))
            (__raw-table-rehash! _tab58838_)
            '#!void)
        (__immediate-table-set! _tab58838_ _key58839_ _value58840_)))
    (define __immediate-table-set!
      (lambda (_tab58793_ _key58794_ _value58795_)
        (let ((_table58798_ (&raw-table-table _tab58793_))
              (_seed58799_ (&raw-table-seed _tab58793_)))
          (let* ((_h58801_ (fxxor (immediate-hash _key58794_) _seed58799_))
                 (_size58804_ (vector-length _table58798_))
                 (_entries58807_ (fxquotient _size58804_ '2))
                 (_start58810_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58801_ _entries58807_)
                   '1)))
            (let _loop58814_ ((_probe58817_ _start58810_)
                              (_i58819_ '1)
                              (_deleted58821_ '#f))
              (let ((_k58824_ (vector-ref _table58798_ _probe58817_)))
                (if (eq? _k58824_ (macro-unused-obj))
                    (if _deleted58821_
                        (begin
                          (vector-set! _table58798_ _deleted58821_ _key58794_)
                          (vector-set!
                           _table58798_
                           (fx+ _deleted58821_ '1)
                           _value58795_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58793_
                              (fx+ (&raw-table-count _tab58793_) '1)))))
                        (begin
                          (vector-set! _table58798_ _probe58817_ _key58794_)
                          (vector-set!
                           _table58798_
                           (fx+ _probe58817_ '1)
                           _value58795_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58793_
                              (fx- (&raw-table-free _tab58793_) '1))
                             (&raw-table-count-set!
                              _tab58793_
                              (fx+ (&raw-table-count _tab58793_) '1))))))
                    (if (eq? _k58824_ (macro-deleted-obj))
                        (_loop58814_
                         (let ((_next-probe58829_
                                (fx+ _start58810_
                                     _i58819_
                                     (fx* _i58819_ _i58819_))))
                           (fxmodulo _next-probe58829_ _size58804_))
                         (fx+ _i58819_ '1)
                         (let ((_$e58832_ _deleted58821_))
                           (if _$e58832_ _$e58832_ _probe58817_)))
                        (if (eq? _key58794_ _k58824_)
                            (begin
                              (vector-set!
                               _table58798_
                               _probe58817_
                               _key58794_)
                              (vector-set!
                               _table58798_
                               (fx+ _probe58817_ '1)
                               _value58795_))
                            (_loop58814_
                             (let ((_next-probe58835_
                                    (fx+ _start58810_
                                         _i58819_
                                         (fx* _i58819_ _i58819_))))
                               (fxmodulo _next-probe58835_ _size58804_))
                             (fx+ _i58819_ '1)
                             _deleted58821_))))))))))
    (define immediate-table-update!
      (lambda (_tab58788_
               _key58789_
               _immediate-table-update!58790_
               _default58791_)
        (if (fx< (&raw-table-free _tab58788_)
                 (fxquotient (vector-length (&raw-table-table _tab58788_)) '4))
            (__raw-table-rehash! _tab58788_)
            '#!void)
        (__immediate-table-update!
         _tab58788_
         _key58789_
         _immediate-table-update!58790_
         _default58791_)))
    (define __immediate-table-update!
      (lambda (_tab58742_
               _key58743_
               _immediate-table-update!58744_
               _default58745_)
        (let ((_table58748_ (&raw-table-table _tab58742_))
              (_seed58749_ (&raw-table-seed _tab58742_)))
          (let* ((_h58751_ (fxxor (immediate-hash _key58743_) _seed58749_))
                 (_size58754_ (vector-length _table58748_))
                 (_entries58757_ (fxquotient _size58754_ '2))
                 (_start58760_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58751_ _entries58757_)
                   '1)))
            (let _loop58764_ ((_probe58767_ _start58760_)
                              (_i58769_ '1)
                              (_deleted58771_ '#f))
              (let ((_k58774_ (vector-ref _table58748_ _probe58767_)))
                (if (eq? _k58774_ (macro-unused-obj))
                    (if _deleted58771_
                        (begin
                          (vector-set! _table58748_ _deleted58771_ _key58743_)
                          (vector-set!
                           _table58748_
                           (fx+ _deleted58771_ '1)
                           (_immediate-table-update!58744_ _default58745_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58742_
                              (fx+ (&raw-table-count _tab58742_) '1)))))
                        (begin
                          (vector-set! _table58748_ _probe58767_ _key58743_)
                          (vector-set!
                           _table58748_
                           (fx+ _probe58767_ '1)
                           (_immediate-table-update!58744_ _default58745_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58742_
                              (fx- (&raw-table-free _tab58742_) '1))
                             (&raw-table-count-set!
                              _tab58742_
                              (fx+ (&raw-table-count _tab58742_) '1))))))
                    (if (eq? _k58774_ (macro-deleted-obj))
                        (_loop58764_
                         (let ((_next-probe58779_
                                (fx+ _start58760_
                                     _i58769_
                                     (fx* _i58769_ _i58769_))))
                           (fxmodulo _next-probe58779_ _size58754_))
                         (fx+ _i58769_ '1)
                         (let ((_$e58782_ _deleted58771_))
                           (if _$e58782_ _$e58782_ _probe58767_)))
                        (if (eq? _key58743_ _k58774_)
                            (begin
                              (vector-set!
                               _table58748_
                               _probe58767_
                               _key58743_)
                              (vector-set!
                               _table58748_
                               (fx+ _probe58767_ '1)
                               (_immediate-table-update!58744_
                                (vector-ref
                                 _table58748_
                                 (fx+ _probe58767_ '1)))))
                            (_loop58764_
                             (let ((_next-probe58785_
                                    (fx+ _start58760_
                                         _i58769_
                                         (fx* _i58769_ _i58769_))))
                               (fxmodulo _next-probe58785_ _size58754_))
                             (fx+ _i58769_ '1)
                             _deleted58771_))))))))))
    (define immediate-table-delete!
      (lambda (_tab58701_ _key58703_)
        (let ((_table58706_ (&raw-table-table _tab58701_))
              (_seed58708_ (&raw-table-seed _tab58701_)))
          (let* ((_h58711_ (fxxor (immediate-hash _key58703_) _seed58708_))
                 (_size58714_ (vector-length _table58706_))
                 (_entries58717_ (fxquotient _size58714_ '2))
                 (_start58720_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58711_ _entries58717_)
                   '1)))
            (let _loop58724_ ((_probe58727_ _start58720_) (_i58729_ '1))
              (let ((_k58732_ (vector-ref _table58706_ _probe58727_)))
                (if (eq? _k58732_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k58732_ (macro-deleted-obj))
                        (_loop58724_
                         (let ((_next-probe58735_
                                (fx+ _start58720_
                                     _i58729_
                                     (fx* _i58729_ _i58729_))))
                           (fxmodulo _next-probe58735_ _size58714_))
                         (fx+ _i58729_ '1))
                        (if (eq? _key58703_ _k58732_)
                            (begin
                              (vector-set!
                               _table58706_
                               _probe58727_
                               (macro-deleted-obj))
                              (vector-set!
                               _table58706_
                               (fx+ _probe58727_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab58701_
                                  (fx- (&raw-table-count _tab58701_) '1)))))
                            (_loop58724_
                             (let ((_next-probe58739_
                                    (fx+ _start58720_
                                         _i58729_
                                         (fx* _i58729_ _i58729_))))
                               (fxmodulo _next-probe58739_ _size58714_))
                             (fx+ _i58729_ '1)))))))))))
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
      (lambda (_tab58699_)
        (##unchecked-structure-ref
         _tab58699_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_tab58697_)
        (##unchecked-structure-ref
         _tab58697_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_tab58694_ _val58695_)
        (##unchecked-structure-set!
         _tab58694_
         _val58695_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_tab58691_ _val58692_)
        (##unchecked-structure-set!
         _tab58691_
         _val58692_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_size-hint58667_ _klass58668_ _flags58669_)
        (let ((_gcht58671_
               (__gc-table-new
                (if (fixnum? _size-hint58667_) _size-hint58667_ '16)
                _flags58669_)))
          (##structure _klass58668_ _gcht58671_ '#f))))
    (define make-gc-table__0
      (lambda (_size-hint58676_)
        (let* ((_klass58678_ __gc-table::t) (_flags58680_ '0))
          (make-gc-table__% _size-hint58676_ _klass58678_ _flags58680_))))
    (define make-gc-table__1
      (lambda (_size-hint58682_ _klass58683_)
        (let ((_flags58685_ '0))
          (make-gc-table__% _size-hint58682_ _klass58683_ _flags58685_))))
    (define make-gc-table
      (lambda _g60043_
        (let ((_g60042_ (##length _g60043_)))
          (cond ((##fx= _g60042_ 1)
                 (apply (lambda (_size-hint58676_)
                          (make-gc-table__0 _size-hint58676_))
                        _g60043_))
                ((##fx= _g60042_ 2)
                 (apply (lambda (_size-hint58682_ _klass58683_)
                          (make-gc-table__1 _size-hint58682_ _klass58683_))
                        _g60043_))
                ((##fx= _g60042_ 3)
                 (apply (lambda (_size-hint58687_ _klass58688_ _flags58689_)
                          (make-gc-table__%
                           _size-hint58687_
                           _klass58688_
                           _flags58689_))
                        _g60043_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g60043_))))))
    (define __gc-table-immediate
      (lambda (_tab58659_)
        (let ((_$e58661_ (&gc-table-immediate _tab58659_)))
          (if _$e58661_
              _$e58661_
              (let ((_immediate58664_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _tab58659_ _immediate58664_)
                _immediate58664_)))))
    (define __gc-table-new
      (lambda (_size58654_ _flags58655_)
        (let ((_gcht58657_
               (##gc-hash-table-allocate
                _size58654_
                (fxior _flags58655_ (macro-gc-hash-table-flag-mem-alloc-keys))
                __gc-table-loads)))
          (macro-gc-hash-table-free-set!
           _gcht58657_
           (macro-gc-hash-table-size _gcht58657_))
          (macro-gc-hash-table-count-set! _gcht58657_ '0)
          _gcht58657_)))
    (define __gc-table-e
      (lambda (_tab58649_)
        (declare (not interrupts-enabled))
        (let ((_gcht58652_ (&gc-table-gcht _tab58649_)))
          (if (fx= '0
                   (fxand (macro-gc-hash-table-flags _gcht58652_)
                          (macro-gc-hash-table-flag-need-rehash)))
              _gcht58652_
              (begin
                (__gc-table-rehash! _tab58649_)
                (&gc-table-gcht _tab58649_))))))
    (define __gc-table-rehash!
      (lambda (_tab58639_)
        (declare (not interrupts-enabled))
        (let* ((_old-table58642_ (&gc-table-gcht _tab58639_))
               (_new-table58644_
                (##gc-hash-table-resize! _old-table58642_ __gc-table-loads))
               (_gcht58646_
                (##gc-hash-table-rehash! _old-table58642_ _new-table58644_)))
          (&gc-table-gcht-set! _tab58639_ _gcht58646_))))
    (define __gc-table-grow!
      (lambda (_tab58629_)
        (declare (not interrupts-enabled))
        (let* ((_old-table58632_ (&gc-table-gcht _tab58629_))
               (_new-table58634_
                (__gc-table-new
                 (fx* '2 (macro-gc-hash-table-size _old-table58632_))
                 (macro-gc-hash-table-flags _old-table58632_)))
               (_gcht58636_
                (##gc-hash-table-rehash! _old-table58632_ _new-table58634_)))
          (&gc-table-gcht-set! _tab58629_ _gcht58636_))))
    (define gc-table-ref
      (lambda (_tab58615_ _key58616_ _default58617_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key58616_)
            (let* ((_gcht58620_ (__gc-table-e _tab58615_))
                   (_value58622_ (##gc-hash-table-ref _gcht58620_ _key58616_)))
              (if (eq? _value58622_ (macro-unused-obj))
                  _default58617_
                  _value58622_))
            (let ((_$e58624_ (&gc-table-immediate _tab58615_)))
              (if _$e58624_
                  ((lambda (_immediate58627_)
                     (immediate-table-ref
                      _immediate58627_
                      _key58616_
                      _default58617_))
                   _$e58624_)
                  _default58617_)))))
    (define gc-table-set!
      (lambda (_tab58608_ _key58609_ _value58610_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key58609_)
            (let ((_gcht58613_ (__gc-table-e _tab58608_)))
              (if (fx< (macro-gc-hash-table-free _gcht58613_)
                       (fxquotient (macro-gc-hash-table-size _gcht58613_) '2))
                  (begin
                    (if (fx> (macro-gc-hash-table-count _gcht58613_)
                             (fxquotient
                              (macro-gc-hash-table-size _gcht58613_)
                              '2))
                        (__gc-table-grow! _tab58608_)
                        (__gc-table-rehash! _tab58608_))
                    (gc-table-set! _tab58608_ _key58609_ _value58610_))
                  (if (##gc-hash-table-set!
                       _gcht58613_
                       _key58609_
                       _value58610_)
                      (begin
                        (__gc-table-rehash! _tab58608_)
                        (gc-table-set! _tab58608_ _key58609_ _value58610_))
                      '#!void)))
            (immediate-table-set!
             (__gc-table-immediate _tab58608_)
             _key58609_
             _value58610_))))
    (define gc-table-update!
      (lambda (_tab58601_ _key58602_ _update58603_ _default58604_)
        (if (##mem-allocated? _key58602_)
            (let ((_value58606_
                   (gc-table-ref _tab58601_ _key58602_ _default58604_)))
              (gc-table-set!
               _tab58601_
               _key58602_
               (_update58603_ _value58606_)))
            (immediate-table-update!
             (__gc-table-immediate _tab58601_)
             _key58602_
             _update58603_
             _default58604_))))
    (define gc-table-delete!
      (lambda (_tab58591_ _key58592_)
        (if (##mem-allocated? _key58592_)
            (let ((_gcht58594_ (__gc-table-e _tab58591_)))
              (if (##gc-hash-table-set!
                   _gcht58594_
                   _key58592_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _tab58591_)
                    (gc-table-delete! _tab58591_ _key58592_))
                  '#!void))
            (let ((_$e58596_ (&gc-table-immediate _tab58591_)))
              (if _$e58596_
                  ((lambda (_immediate58599_)
                     (immediate-table-delete! _immediate58599_ _key58592_))
                   _$e58596_)
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
