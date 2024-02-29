(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1709229969)
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
      (lambda (_tab60024_)
        (##unchecked-structure-ref _tab60024_ '1 __table::t 'raw-table-table)))
    (define &raw-table-count
      (lambda (_tab60022_)
        (##unchecked-structure-ref _tab60022_ '2 __table::t 'raw-table-count)))
    (define &raw-table-free
      (lambda (_tab60020_)
        (##unchecked-structure-ref _tab60020_ '3 __table::t 'raw-table-free)))
    (define &raw-table-hash
      (lambda (_tab60018_)
        (##unchecked-structure-ref _tab60018_ '4 __table::t 'raw-table-hash)))
    (define &raw-table-test
      (lambda (_tab60016_)
        (##unchecked-structure-ref _tab60016_ '5 __table::t 'raw-table-test)))
    (define &raw-table-seed
      (lambda (_tab60014_)
        (##unchecked-structure-ref _tab60014_ '6 __table::t 'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_tab60011_ _val60012_)
        (##unchecked-structure-set!
         _tab60011_
         _val60012_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_tab60008_ _val60009_)
        (##unchecked-structure-set!
         _tab60008_
         _val60009_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_tab60005_ _val60006_)
        (##unchecked-structure-set!
         _tab60005_
         _val60006_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_tab60002_ _val60003_)
        (##unchecked-structure-set!
         _tab60002_
         _val60003_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_tab59999_ _val60000_)
        (##unchecked-structure-set!
         _tab59999_
         _val60000_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_tab59996_ _val59997_)
        (##unchecked-structure-set!
         _tab59996_
         _val59997_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_size-hint59994_)
        (if (and (fixnum? _size-hint59994_) (fx> _size-hint59994_ '0))
            (fx* (fxmax '2 (expt '2 (integer-length _size-hint59994_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_size-hint59970_ _hash59971_ _test59972_ _seed59973_)
        (let* ((_size59975_ (raw-table-size-hint->size _size-hint59970_))
               (_table59977_ (make-vector _size59975_ (macro-unused-obj))))
          (##structure
           __table::t
           _table59977_
           '0
           (fxquotient _size59975_ '2)
           _hash59971_
           _test59972_
           _seed59973_))))
    (define make-raw-table__0
      (lambda (_size-hint59983_ _hash59984_ _test59985_)
        (let ((_seed59987_ '0))
          (make-raw-table__%
           _size-hint59983_
           _hash59984_
           _test59985_
           _seed59987_))))
    (define make-raw-table
      (lambda _g60026_
        (let ((_g60025_ (##length _g60026_)))
          (cond ((##fx= _g60025_ 3)
                 (apply (lambda (_size-hint59983_ _hash59984_ _test59985_)
                          (make-raw-table__0
                           _size-hint59983_
                           _hash59984_
                           _test59985_))
                        _g60026_))
                ((##fx= _g60025_ 4)
                 (apply (lambda (_size-hint59989_
                                 _hash59990_
                                 _test59991_
                                 _seed59992_)
                          (make-raw-table__%
                           _size-hint59989_
                           _hash59990_
                           _test59991_
                           _seed59992_))
                        _g60026_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g60026_))))))
    (define raw-table-ref
      (lambda (_tab59925_ _key59926_ _default59927_)
        (let ((_table59929_ (&raw-table-table _tab59925_))
              (_seed59930_ (&raw-table-seed _tab59925_))
              (_hash59931_ (&raw-table-hash _tab59925_))
              (_test59932_ (&raw-table-test _tab59925_)))
          (let* ((_h59934_ (fxxor (_hash59931_ _key59926_) _seed59930_))
                 (_size59937_ (vector-length _table59929_))
                 (_entries59940_ (fxquotient _size59937_ '2))
                 (_start59943_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59934_ _entries59940_)
                   '1)))
            (let _loop59947_ ((_probe59950_ _start59943_)
                              (_i59952_ '1)
                              (_deleted59954_ '#f))
              (let ((_k59957_ (vector-ref _table59929_ _probe59950_)))
                (if (eq? _k59957_ (macro-unused-obj))
                    _default59927_
                    (if (eq? _k59957_ (macro-deleted-obj))
                        (_loop59947_
                         (let ((_next-probe59960_
                                (fx+ _start59943_
                                     _i59952_
                                     (fx* _i59952_ _i59952_))))
                           (fxmodulo _next-probe59960_ _size59937_))
                         (fx+ _i59952_ '1)
                         (let ((_$e59963_ _deleted59954_))
                           (if _$e59963_ _$e59963_ _probe59950_)))
                        (if (_test59932_ _key59926_ _k59957_)
                            (vector-ref _table59929_ (fx+ _probe59950_ '1))
                            (_loop59947_
                             (let ((_next-probe59966_
                                    (fx+ _start59943_
                                         _i59952_
                                         (fx* _i59952_ _i59952_))))
                               (fxmodulo _next-probe59966_ _size59937_))
                             (fx+ _i59952_ '1)
                             _deleted59954_))))))))))
    (define raw-table-set!
      (lambda (_tab59921_ _key59922_ _value59923_)
        (if (fx< (&raw-table-free _tab59921_)
                 (fxquotient (vector-length (&raw-table-table _tab59921_)) '4))
            (__raw-table-rehash! _tab59921_)
            '#!void)
        (__raw-table-set! _tab59921_ _key59922_ _value59923_)))
    (define raw-table-update!
      (lambda (_tab59916_ _key59917_ _update59918_ _default59919_)
        (if (fx< (&raw-table-free _tab59916_)
                 (fxquotient (vector-length (&raw-table-table _tab59916_)) '4))
            (__raw-table-rehash! _tab59916_)
            '#!void)
        (__raw-table-update!
         _tab59916_
         _key59917_
         _update59918_
         _default59919_)))
    (define raw-table-delete!
      (lambda (_tab59877_ _key59878_)
        (let ((_table59880_ (&raw-table-table _tab59877_))
              (_seed59881_ (&raw-table-seed _tab59877_))
              (_hash59882_ (&raw-table-hash _tab59877_))
              (_test59883_ (&raw-table-test _tab59877_)))
          (let* ((_h59885_ (fxxor (_hash59882_ _key59878_) _seed59881_))
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
                        (if (_test59883_ _key59878_ _k59906_)
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
                                  _tab59877_
                                  (fx- (&raw-table-count _tab59877_) '1)))))
                            (_loop59898_
                             (let ((_next-probe59913_
                                    (fx+ _start59894_
                                         _i59903_
                                         (fx* _i59903_ _i59903_))))
                               (fxmodulo _next-probe59913_ _size59888_))
                             (fx+ _i59903_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_tab59861_ _proc59862_)
        (let* ((_table59864_ (&raw-table-table _tab59861_))
               (_size59866_ (vector-length _table59864_)))
          (let _loop59869_ ((_i59871_ '0))
            (if (fx< _i59871_ _size59866_)
                (begin
                  (let ((_key59873_ (vector-ref _table59864_ _i59871_)))
                    (if (and (not (eq? _key59873_ (macro-unused-obj)))
                             (not (eq? _key59873_ (macro-deleted-obj))))
                        (let ((_value59875_
                               (vector-ref _table59864_ (fx+ _i59871_ '1))))
                          (_proc59862_ _key59873_ _value59875_))
                        '#!void))
                  (_loop59869_ (fx+ _i59871_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_tab59857_)
        (let ((_new-tab59859_ (##structure-copy _tab59857_)))
          (&raw-table-table-set!
           _new-tab59859_
           (vector-copy (&raw-table-table _tab59857_)))
          _new-tab59859_)))
    (define raw-table-clear!
      (lambda (_tab59855_)
        (vector-fill! (&raw-table-table _tab59855_) (macro-unused-obj))
        (&raw-table-count-set! _tab59855_ '0)
        (&raw-table-free-set!
         _tab59855_
         (fxquotient (vector-length (&raw-table-table _tab59855_)) '2))))
    (define __raw-table-set!
      (lambda (_tab59809_ _key59810_ _value59811_)
        (let ((_table59813_ (&raw-table-table _tab59809_))
              (_seed59814_ (&raw-table-seed _tab59809_))
              (_hash59815_ (&raw-table-hash _tab59809_))
              (_test59816_ (&raw-table-test _tab59809_)))
          (let* ((_h59818_ (fxxor (_hash59815_ _key59810_) _seed59814_))
                 (_size59821_ (vector-length _table59813_))
                 (_entries59824_ (fxquotient _size59821_ '2))
                 (_start59827_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59818_ _entries59824_)
                   '1)))
            (let _loop59831_ ((_probe59834_ _start59827_)
                              (_i59836_ '1)
                              (_deleted59838_ '#f))
              (let ((_k59841_ (vector-ref _table59813_ _probe59834_)))
                (if (eq? _k59841_ (macro-unused-obj))
                    (if _deleted59838_
                        (begin
                          (vector-set! _table59813_ _deleted59838_ _key59810_)
                          (vector-set!
                           _table59813_
                           (fx+ _deleted59838_ '1)
                           _value59811_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59809_
                              (fx+ (&raw-table-count _tab59809_) '1)))))
                        (begin
                          (vector-set! _table59813_ _probe59834_ _key59810_)
                          (vector-set!
                           _table59813_
                           (fx+ _probe59834_ '1)
                           _value59811_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59809_
                              (fx- (&raw-table-free _tab59809_) '1))
                             (&raw-table-count-set!
                              _tab59809_
                              (fx+ (&raw-table-count _tab59809_) '1))))))
                    (if (eq? _k59841_ (macro-deleted-obj))
                        (_loop59831_
                         (let ((_next-probe59846_
                                (fx+ _start59827_
                                     _i59836_
                                     (fx* _i59836_ _i59836_))))
                           (fxmodulo _next-probe59846_ _size59821_))
                         (fx+ _i59836_ '1)
                         (let ((_$e59849_ _deleted59838_))
                           (if _$e59849_ _$e59849_ _probe59834_)))
                        (if (_test59816_ _key59810_ _k59841_)
                            (begin
                              (vector-set!
                               _table59813_
                               _probe59834_
                               _key59810_)
                              (vector-set!
                               _table59813_
                               (fx+ _probe59834_ '1)
                               _value59811_))
                            (_loop59831_
                             (let ((_next-probe59852_
                                    (fx+ _start59827_
                                         _i59836_
                                         (fx* _i59836_ _i59836_))))
                               (fxmodulo _next-probe59852_ _size59821_))
                             (fx+ _i59836_ '1)
                             _deleted59838_))))))))))
    (define __raw-table-update!
      (lambda (_tab59762_ _key59763_ _update59764_ _default59765_)
        (let ((_table59767_ (&raw-table-table _tab59762_))
              (_seed59768_ (&raw-table-seed _tab59762_))
              (_hash59769_ (&raw-table-hash _tab59762_))
              (_test59770_ (&raw-table-test _tab59762_)))
          (let* ((_h59772_ (fxxor (_hash59769_ _key59763_) _seed59768_))
                 (_size59775_ (vector-length _table59767_))
                 (_entries59778_ (fxquotient _size59775_ '2))
                 (_start59781_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59772_ _entries59778_)
                   '1)))
            (let _loop59785_ ((_probe59788_ _start59781_)
                              (_i59790_ '1)
                              (_deleted59792_ '#f))
              (let ((_k59795_ (vector-ref _table59767_ _probe59788_)))
                (if (eq? _k59795_ (macro-unused-obj))
                    (if _deleted59792_
                        (begin
                          (vector-set! _table59767_ _deleted59792_ _key59763_)
                          (vector-set!
                           _table59767_
                           (fx+ _deleted59792_ '1)
                           (_update59764_ _default59765_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59762_
                              (fx+ (&raw-table-count _tab59762_) '1)))))
                        (begin
                          (vector-set! _table59767_ _probe59788_ _key59763_)
                          (vector-set!
                           _table59767_
                           (fx+ _probe59788_ '1)
                           (_update59764_ _default59765_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59762_
                              (fx- (&raw-table-free _tab59762_) '1))
                             (&raw-table-count-set!
                              _tab59762_
                              (fx+ (&raw-table-count _tab59762_) '1))))))
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
                        (if (_test59770_ _key59763_ _k59795_)
                            (begin
                              (vector-set!
                               _table59767_
                               _probe59788_
                               _key59763_)
                              (vector-set!
                               _table59767_
                               (fx+ _probe59788_ '1)
                               (_update59764_
                                (vector-ref
                                 _table59767_
                                 (fx+ _probe59788_ '1)))))
                            (_loop59785_
                             (let ((_next-probe59806_
                                    (fx+ _start59781_
                                         _i59790_
                                         (fx* _i59790_ _i59790_))))
                               (fxmodulo _next-probe59806_ _size59775_))
                             (fx+ _i59790_ '1)
                             _deleted59792_))))))))))
    (define __raw-table-rehash!
      (lambda (_tab59743_)
        (let* ((_old-table59745_ (&raw-table-table _tab59743_))
               (_old-size59747_ (vector-length _old-table59745_))
               (_new-size59749_
                (if (fx< (&raw-table-count _tab59743_)
                         (fxquotient _old-size59747_ '4))
                    (vector-length _old-table59745_)
                    (fx* '2 (vector-length _old-table59745_))))
               (_new-table59751_
                (make-vector _new-size59749_ (macro-unused-obj))))
          (&raw-table-table-set! _tab59743_ _new-table59751_)
          (&raw-table-count-set! _tab59743_ '0)
          (&raw-table-free-set! _tab59743_ (fxquotient _new-size59749_ '2))
          (let _lp59754_ ((_i59756_ '0))
            (if (fx< _i59756_ _old-size59747_)
                (begin
                  (let ((_key59758_ (vector-ref _old-table59745_ _i59756_)))
                    (if (and (not (eq? _key59758_ (macro-unused-obj)))
                             (not (eq? _key59758_ (macro-deleted-obj))))
                        (let ((_value59760_
                               (vector-ref
                                _old-table59745_
                                (fx+ _i59756_ '1))))
                          (__raw-table-set!
                           _tab59743_
                           _key59758_
                           _value59760_))
                        '#!void))
                  (_lp59754_ (fx+ _i59756_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_obj59739_)
        (let ((_t59741_ (##type _obj59739_)))
          (if (fx= (fxand _t59741_ '1) '0)
              (fxand (##type-cast _obj59739_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _obj59739_)
                  (symbolic-hash _obj59739_)
                  (if (procedure? _obj59739_)
                      (procedure-hash _obj59739_)
                      (fxand (__eq-hash _obj59739_) (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_obj59735_)
        (let ((_h59737_
               (if (##closure? _obj59735_)
                   (__eq-hash _obj59735_)
                   (##type-cast _obj59735_ '0))))
          (fxand _h59737_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_obj59732_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _obj59732_)))
    (define eqv-hash
      (lambda (_obj59722_)
        (letrec ((_combine59724_
                  (lambda (_a59729_ _b59730_)
                    (fxand (fx* (fx+ _a59729_
                                     (fxarithmetic-shift-left _b59730_ '1))
                                '331804471)
                           (macro-max-fixnum32))))
                 (_hash59725_
                  (lambda (_obj59727_)
                    (macro-number-dispatch
                     _obj59727_
                     (eq-hash _obj59727_)
                     (fxand _obj59727_ (macro-max-fixnum32))
                     (modulo _obj59727_ '331804481)
                     (_combine59724_
                      (_hash59725_ (macro-ratnum-numerator _obj59727_))
                      (_hash59725_ (macro-ratnum-denominator _obj59727_)))
                     (_combine59724_
                      (##u16vector-ref _obj59727_ '0)
                      (_combine59724_
                       (##u16vector-ref _obj59727_ '1)
                       (_combine59724_
                        (##u16vector-ref _obj59727_ '2)
                        (##u16vector-ref _obj59727_ '3))))
                     (_combine59724_
                      (_hash59725_ (macro-cpxnum-real _obj59727_))
                      (_hash59725_ (macro-cpxnum-imag _obj59727_)))))))
          (_hash59725_ _obj59722_))))
    (define symbolic?
      (lambda (_obj59717_)
        (let ((_$e59719_ (symbol? _obj59717_)))
          (if _$e59719_ _$e59719_ (keyword? _obj59717_)))))
    (define symbolic-hash (lambda (_obj59715_) (macro-slot '1 _obj59715_)))
    (define string-hash (lambda (_obj59713_) (##string=?-hash _obj59713_)))
    (define immediate-hash
      (lambda (_obj59711_) (##type-cast _obj59711_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_size-hint59692_ _seed59694_)
        (make-raw-table__% _size-hint59692_ eq-hash eq? _seed59694_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_size-hint59700_ '#f) (_seed59702_ '0))
          (make-eq-table__% _size-hint59700_ _seed59702_))))
    (define make-eq-table__1
      (lambda (_size-hint59704_)
        (let ((_seed59706_ '0))
          (make-eq-table__% _size-hint59704_ _seed59706_))))
    (define make-eq-table
      (lambda _g60028_
        (let ((_g60027_ (##length _g60028_)))
          (cond ((##fx= _g60027_ 0)
                 (apply (lambda () (make-eq-table__0)) _g60028_))
                ((##fx= _g60027_ 1)
                 (apply (lambda (_size-hint59704_)
                          (make-eq-table__1 _size-hint59704_))
                        _g60028_))
                ((##fx= _g60027_ 2)
                 (apply (lambda (_size-hint59708_ _seed59709_)
                          (make-eq-table__% _size-hint59708_ _seed59709_))
                        _g60028_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g60028_))))))
    (define eq-table-ref
      (lambda (_tab59649_ _key59650_ _default59651_)
        (let ((_table59653_ (&raw-table-table _tab59649_))
              (_seed59654_ (&raw-table-seed _tab59649_)))
          (let* ((_h59656_ (fxxor (eq-hash _key59650_) _seed59654_))
                 (_size59659_ (vector-length _table59653_))
                 (_entries59662_ (fxquotient _size59659_ '2))
                 (_start59665_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59656_ _entries59662_)
                   '1)))
            (let _loop59669_ ((_probe59672_ _start59665_)
                              (_i59674_ '1)
                              (_deleted59676_ '#f))
              (let ((_k59679_ (vector-ref _table59653_ _probe59672_)))
                (if (eq? _k59679_ (macro-unused-obj))
                    _default59651_
                    (if (eq? _k59679_ (macro-deleted-obj))
                        (_loop59669_
                         (let ((_next-probe59682_
                                (fx+ _start59665_
                                     _i59674_
                                     (fx* _i59674_ _i59674_))))
                           (fxmodulo _next-probe59682_ _size59659_))
                         (fx+ _i59674_ '1)
                         (let ((_$e59685_ _deleted59676_))
                           (if _$e59685_ _$e59685_ _probe59672_)))
                        (if (eq? _key59650_ _k59679_)
                            (vector-ref _table59653_ (fx+ _probe59672_ '1))
                            (_loop59669_
                             (let ((_next-probe59688_
                                    (fx+ _start59665_
                                         _i59674_
                                         (fx* _i59674_ _i59674_))))
                               (fxmodulo _next-probe59688_ _size59659_))
                             (fx+ _i59674_ '1)
                             _deleted59676_))))))))))
    (define eq-table-set!
      (lambda (_tab59645_ _key59646_ _value59647_)
        (if (fx< (&raw-table-free _tab59645_)
                 (fxquotient (vector-length (&raw-table-table _tab59645_)) '4))
            (__raw-table-rehash! _tab59645_)
            '#!void)
        (__eq-table-set! _tab59645_ _key59646_ _value59647_)))
    (define __eq-table-set!
      (lambda (_tab59600_ _key59601_ _value59602_)
        (let ((_table59605_ (&raw-table-table _tab59600_))
              (_seed59606_ (&raw-table-seed _tab59600_)))
          (let* ((_h59608_ (fxxor (eq-hash _key59601_) _seed59606_))
                 (_size59611_ (vector-length _table59605_))
                 (_entries59614_ (fxquotient _size59611_ '2))
                 (_start59617_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59608_ _entries59614_)
                   '1)))
            (let _loop59621_ ((_probe59624_ _start59617_)
                              (_i59626_ '1)
                              (_deleted59628_ '#f))
              (let ((_k59631_ (vector-ref _table59605_ _probe59624_)))
                (if (eq? _k59631_ (macro-unused-obj))
                    (if _deleted59628_
                        (begin
                          (vector-set! _table59605_ _deleted59628_ _key59601_)
                          (vector-set!
                           _table59605_
                           (fx+ _deleted59628_ '1)
                           _value59602_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59600_
                              (fx+ (&raw-table-count _tab59600_) '1)))))
                        (begin
                          (vector-set! _table59605_ _probe59624_ _key59601_)
                          (vector-set!
                           _table59605_
                           (fx+ _probe59624_ '1)
                           _value59602_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59600_
                              (fx- (&raw-table-free _tab59600_) '1))
                             (&raw-table-count-set!
                              _tab59600_
                              (fx+ (&raw-table-count _tab59600_) '1))))))
                    (if (eq? _k59631_ (macro-deleted-obj))
                        (_loop59621_
                         (let ((_next-probe59636_
                                (fx+ _start59617_
                                     _i59626_
                                     (fx* _i59626_ _i59626_))))
                           (fxmodulo _next-probe59636_ _size59611_))
                         (fx+ _i59626_ '1)
                         (let ((_$e59639_ _deleted59628_))
                           (if _$e59639_ _$e59639_ _probe59624_)))
                        (if (eq? _key59601_ _k59631_)
                            (begin
                              (vector-set!
                               _table59605_
                               _probe59624_
                               _key59601_)
                              (vector-set!
                               _table59605_
                               (fx+ _probe59624_ '1)
                               _value59602_))
                            (_loop59621_
                             (let ((_next-probe59642_
                                    (fx+ _start59617_
                                         _i59626_
                                         (fx* _i59626_ _i59626_))))
                               (fxmodulo _next-probe59642_ _size59611_))
                             (fx+ _i59626_ '1)
                             _deleted59628_))))))))))
    (define eq-table-update!
      (lambda (_tab59595_ _key59596_ _eq-table-update!59597_ _default59598_)
        (if (fx< (&raw-table-free _tab59595_)
                 (fxquotient (vector-length (&raw-table-table _tab59595_)) '4))
            (__raw-table-rehash! _tab59595_)
            '#!void)
        (__eq-table-update!
         _tab59595_
         _key59596_
         _eq-table-update!59597_
         _default59598_)))
    (define __eq-table-update!
      (lambda (_tab59549_ _key59550_ _eq-table-update!59551_ _default59552_)
        (let ((_table59555_ (&raw-table-table _tab59549_))
              (_seed59556_ (&raw-table-seed _tab59549_)))
          (let* ((_h59558_ (fxxor (eq-hash _key59550_) _seed59556_))
                 (_size59561_ (vector-length _table59555_))
                 (_entries59564_ (fxquotient _size59561_ '2))
                 (_start59567_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59558_ _entries59564_)
                   '1)))
            (let _loop59571_ ((_probe59574_ _start59567_)
                              (_i59576_ '1)
                              (_deleted59578_ '#f))
              (let ((_k59581_ (vector-ref _table59555_ _probe59574_)))
                (if (eq? _k59581_ (macro-unused-obj))
                    (if _deleted59578_
                        (begin
                          (vector-set! _table59555_ _deleted59578_ _key59550_)
                          (vector-set!
                           _table59555_
                           (fx+ _deleted59578_ '1)
                           (_eq-table-update!59551_ _default59552_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59549_
                              (fx+ (&raw-table-count _tab59549_) '1)))))
                        (begin
                          (vector-set! _table59555_ _probe59574_ _key59550_)
                          (vector-set!
                           _table59555_
                           (fx+ _probe59574_ '1)
                           (_eq-table-update!59551_ _default59552_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59549_
                              (fx- (&raw-table-free _tab59549_) '1))
                             (&raw-table-count-set!
                              _tab59549_
                              (fx+ (&raw-table-count _tab59549_) '1))))))
                    (if (eq? _k59581_ (macro-deleted-obj))
                        (_loop59571_
                         (let ((_next-probe59586_
                                (fx+ _start59567_
                                     _i59576_
                                     (fx* _i59576_ _i59576_))))
                           (fxmodulo _next-probe59586_ _size59561_))
                         (fx+ _i59576_ '1)
                         (let ((_$e59589_ _deleted59578_))
                           (if _$e59589_ _$e59589_ _probe59574_)))
                        (if (eq? _key59550_ _k59581_)
                            (begin
                              (vector-set!
                               _table59555_
                               _probe59574_
                               _key59550_)
                              (vector-set!
                               _table59555_
                               (fx+ _probe59574_ '1)
                               (_eq-table-update!59551_
                                (vector-ref
                                 _table59555_
                                 (fx+ _probe59574_ '1)))))
                            (_loop59571_
                             (let ((_next-probe59592_
                                    (fx+ _start59567_
                                         _i59576_
                                         (fx* _i59576_ _i59576_))))
                               (fxmodulo _next-probe59592_ _size59561_))
                             (fx+ _i59576_ '1)
                             _deleted59578_))))))))))
    (define eq-table-delete!
      (lambda (_tab59508_ _key59510_)
        (let ((_table59513_ (&raw-table-table _tab59508_))
              (_seed59515_ (&raw-table-seed _tab59508_)))
          (let* ((_h59518_ (fxxor (eq-hash _key59510_) _seed59515_))
                 (_size59521_ (vector-length _table59513_))
                 (_entries59524_ (fxquotient _size59521_ '2))
                 (_start59527_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59518_ _entries59524_)
                   '1)))
            (let _loop59531_ ((_probe59534_ _start59527_) (_i59536_ '1))
              (let ((_k59539_ (vector-ref _table59513_ _probe59534_)))
                (if (eq? _k59539_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59539_ (macro-deleted-obj))
                        (_loop59531_
                         (let ((_next-probe59542_
                                (fx+ _start59527_
                                     _i59536_
                                     (fx* _i59536_ _i59536_))))
                           (fxmodulo _next-probe59542_ _size59521_))
                         (fx+ _i59536_ '1))
                        (if (eq? _key59510_ _k59539_)
                            (begin
                              (vector-set!
                               _table59513_
                               _probe59534_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59513_
                               (fx+ _probe59534_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59508_
                                  (fx- (&raw-table-count _tab59508_) '1)))))
                            (_loop59531_
                             (let ((_next-probe59546_
                                    (fx+ _start59527_
                                         _i59536_
                                         (fx* _i59536_ _i59536_))))
                               (fxmodulo _next-probe59546_ _size59521_))
                             (fx+ _i59536_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_size-hint59489_ _seed59491_)
        (make-raw-table__% _size-hint59489_ eqv-hash eqv? _seed59491_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_size-hint59497_ '#f) (_seed59499_ '0))
          (make-eqv-table__% _size-hint59497_ _seed59499_))))
    (define make-eqv-table__1
      (lambda (_size-hint59501_)
        (let ((_seed59503_ '0))
          (make-eqv-table__% _size-hint59501_ _seed59503_))))
    (define make-eqv-table
      (lambda _g60030_
        (let ((_g60029_ (##length _g60030_)))
          (cond ((##fx= _g60029_ 0)
                 (apply (lambda () (make-eqv-table__0)) _g60030_))
                ((##fx= _g60029_ 1)
                 (apply (lambda (_size-hint59501_)
                          (make-eqv-table__1 _size-hint59501_))
                        _g60030_))
                ((##fx= _g60029_ 2)
                 (apply (lambda (_size-hint59505_ _seed59506_)
                          (make-eqv-table__% _size-hint59505_ _seed59506_))
                        _g60030_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g60030_))))))
    (define eqv-table-ref
      (lambda (_tab59446_ _key59447_ _default59448_)
        (let ((_table59450_ (&raw-table-table _tab59446_))
              (_seed59451_ (&raw-table-seed _tab59446_)))
          (let* ((_h59453_ (fxxor (eqv-hash _key59447_) _seed59451_))
                 (_size59456_ (vector-length _table59450_))
                 (_entries59459_ (fxquotient _size59456_ '2))
                 (_start59462_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59453_ _entries59459_)
                   '1)))
            (let _loop59466_ ((_probe59469_ _start59462_)
                              (_i59471_ '1)
                              (_deleted59473_ '#f))
              (let ((_k59476_ (vector-ref _table59450_ _probe59469_)))
                (if (eq? _k59476_ (macro-unused-obj))
                    _default59448_
                    (if (eq? _k59476_ (macro-deleted-obj))
                        (_loop59466_
                         (let ((_next-probe59479_
                                (fx+ _start59462_
                                     _i59471_
                                     (fx* _i59471_ _i59471_))))
                           (fxmodulo _next-probe59479_ _size59456_))
                         (fx+ _i59471_ '1)
                         (let ((_$e59482_ _deleted59473_))
                           (if _$e59482_ _$e59482_ _probe59469_)))
                        (if (eqv? _key59447_ _k59476_)
                            (vector-ref _table59450_ (fx+ _probe59469_ '1))
                            (_loop59466_
                             (let ((_next-probe59485_
                                    (fx+ _start59462_
                                         _i59471_
                                         (fx* _i59471_ _i59471_))))
                               (fxmodulo _next-probe59485_ _size59456_))
                             (fx+ _i59471_ '1)
                             _deleted59473_))))))))))
    (define eqv-table-set!
      (lambda (_tab59442_ _key59443_ _value59444_)
        (if (fx< (&raw-table-free _tab59442_)
                 (fxquotient (vector-length (&raw-table-table _tab59442_)) '4))
            (__raw-table-rehash! _tab59442_)
            '#!void)
        (__eqv-table-set! _tab59442_ _key59443_ _value59444_)))
    (define __eqv-table-set!
      (lambda (_tab59397_ _key59398_ _value59399_)
        (let ((_table59402_ (&raw-table-table _tab59397_))
              (_seed59403_ (&raw-table-seed _tab59397_)))
          (let* ((_h59405_ (fxxor (eqv-hash _key59398_) _seed59403_))
                 (_size59408_ (vector-length _table59402_))
                 (_entries59411_ (fxquotient _size59408_ '2))
                 (_start59414_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59405_ _entries59411_)
                   '1)))
            (let _loop59418_ ((_probe59421_ _start59414_)
                              (_i59423_ '1)
                              (_deleted59425_ '#f))
              (let ((_k59428_ (vector-ref _table59402_ _probe59421_)))
                (if (eq? _k59428_ (macro-unused-obj))
                    (if _deleted59425_
                        (begin
                          (vector-set! _table59402_ _deleted59425_ _key59398_)
                          (vector-set!
                           _table59402_
                           (fx+ _deleted59425_ '1)
                           _value59399_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59397_
                              (fx+ (&raw-table-count _tab59397_) '1)))))
                        (begin
                          (vector-set! _table59402_ _probe59421_ _key59398_)
                          (vector-set!
                           _table59402_
                           (fx+ _probe59421_ '1)
                           _value59399_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59397_
                              (fx- (&raw-table-free _tab59397_) '1))
                             (&raw-table-count-set!
                              _tab59397_
                              (fx+ (&raw-table-count _tab59397_) '1))))))
                    (if (eq? _k59428_ (macro-deleted-obj))
                        (_loop59418_
                         (let ((_next-probe59433_
                                (fx+ _start59414_
                                     _i59423_
                                     (fx* _i59423_ _i59423_))))
                           (fxmodulo _next-probe59433_ _size59408_))
                         (fx+ _i59423_ '1)
                         (let ((_$e59436_ _deleted59425_))
                           (if _$e59436_ _$e59436_ _probe59421_)))
                        (if (eqv? _key59398_ _k59428_)
                            (begin
                              (vector-set!
                               _table59402_
                               _probe59421_
                               _key59398_)
                              (vector-set!
                               _table59402_
                               (fx+ _probe59421_ '1)
                               _value59399_))
                            (_loop59418_
                             (let ((_next-probe59439_
                                    (fx+ _start59414_
                                         _i59423_
                                         (fx* _i59423_ _i59423_))))
                               (fxmodulo _next-probe59439_ _size59408_))
                             (fx+ _i59423_ '1)
                             _deleted59425_))))))))))
    (define eqv-table-update!
      (lambda (_tab59392_ _key59393_ _eqv-table-update!59394_ _default59395_)
        (if (fx< (&raw-table-free _tab59392_)
                 (fxquotient (vector-length (&raw-table-table _tab59392_)) '4))
            (__raw-table-rehash! _tab59392_)
            '#!void)
        (__eqv-table-update!
         _tab59392_
         _key59393_
         _eqv-table-update!59394_
         _default59395_)))
    (define __eqv-table-update!
      (lambda (_tab59346_ _key59347_ _eqv-table-update!59348_ _default59349_)
        (let ((_table59352_ (&raw-table-table _tab59346_))
              (_seed59353_ (&raw-table-seed _tab59346_)))
          (let* ((_h59355_ (fxxor (eqv-hash _key59347_) _seed59353_))
                 (_size59358_ (vector-length _table59352_))
                 (_entries59361_ (fxquotient _size59358_ '2))
                 (_start59364_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59355_ _entries59361_)
                   '1)))
            (let _loop59368_ ((_probe59371_ _start59364_)
                              (_i59373_ '1)
                              (_deleted59375_ '#f))
              (let ((_k59378_ (vector-ref _table59352_ _probe59371_)))
                (if (eq? _k59378_ (macro-unused-obj))
                    (if _deleted59375_
                        (begin
                          (vector-set! _table59352_ _deleted59375_ _key59347_)
                          (vector-set!
                           _table59352_
                           (fx+ _deleted59375_ '1)
                           (_eqv-table-update!59348_ _default59349_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59346_
                              (fx+ (&raw-table-count _tab59346_) '1)))))
                        (begin
                          (vector-set! _table59352_ _probe59371_ _key59347_)
                          (vector-set!
                           _table59352_
                           (fx+ _probe59371_ '1)
                           (_eqv-table-update!59348_ _default59349_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59346_
                              (fx- (&raw-table-free _tab59346_) '1))
                             (&raw-table-count-set!
                              _tab59346_
                              (fx+ (&raw-table-count _tab59346_) '1))))))
                    (if (eq? _k59378_ (macro-deleted-obj))
                        (_loop59368_
                         (let ((_next-probe59383_
                                (fx+ _start59364_
                                     _i59373_
                                     (fx* _i59373_ _i59373_))))
                           (fxmodulo _next-probe59383_ _size59358_))
                         (fx+ _i59373_ '1)
                         (let ((_$e59386_ _deleted59375_))
                           (if _$e59386_ _$e59386_ _probe59371_)))
                        (if (eqv? _key59347_ _k59378_)
                            (begin
                              (vector-set!
                               _table59352_
                               _probe59371_
                               _key59347_)
                              (vector-set!
                               _table59352_
                               (fx+ _probe59371_ '1)
                               (_eqv-table-update!59348_
                                (vector-ref
                                 _table59352_
                                 (fx+ _probe59371_ '1)))))
                            (_loop59368_
                             (let ((_next-probe59389_
                                    (fx+ _start59364_
                                         _i59373_
                                         (fx* _i59373_ _i59373_))))
                               (fxmodulo _next-probe59389_ _size59358_))
                             (fx+ _i59373_ '1)
                             _deleted59375_))))))))))
    (define eqv-table-delete!
      (lambda (_tab59305_ _key59307_)
        (let ((_table59310_ (&raw-table-table _tab59305_))
              (_seed59312_ (&raw-table-seed _tab59305_)))
          (let* ((_h59315_ (fxxor (eqv-hash _key59307_) _seed59312_))
                 (_size59318_ (vector-length _table59310_))
                 (_entries59321_ (fxquotient _size59318_ '2))
                 (_start59324_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59315_ _entries59321_)
                   '1)))
            (let _loop59328_ ((_probe59331_ _start59324_) (_i59333_ '1))
              (let ((_k59336_ (vector-ref _table59310_ _probe59331_)))
                (if (eq? _k59336_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59336_ (macro-deleted-obj))
                        (_loop59328_
                         (let ((_next-probe59339_
                                (fx+ _start59324_
                                     _i59333_
                                     (fx* _i59333_ _i59333_))))
                           (fxmodulo _next-probe59339_ _size59318_))
                         (fx+ _i59333_ '1))
                        (if (eqv? _key59307_ _k59336_)
                            (begin
                              (vector-set!
                               _table59310_
                               _probe59331_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59310_
                               (fx+ _probe59331_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59305_
                                  (fx- (&raw-table-count _tab59305_) '1)))))
                            (_loop59328_
                             (let ((_next-probe59343_
                                    (fx+ _start59324_
                                         _i59333_
                                         (fx* _i59333_ _i59333_))))
                               (fxmodulo _next-probe59343_ _size59318_))
                             (fx+ _i59333_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_size-hint59286_ _seed59288_)
        (make-raw-table__% _size-hint59286_ symbolic-hash eq? _seed59288_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_size-hint59294_ '#f) (_seed59296_ '0))
          (make-symbolic-table__% _size-hint59294_ _seed59296_))))
    (define make-symbolic-table__1
      (lambda (_size-hint59298_)
        (let ((_seed59300_ '0))
          (make-symbolic-table__% _size-hint59298_ _seed59300_))))
    (define make-symbolic-table
      (lambda _g60032_
        (let ((_g60031_ (##length _g60032_)))
          (cond ((##fx= _g60031_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g60032_))
                ((##fx= _g60031_ 1)
                 (apply (lambda (_size-hint59298_)
                          (make-symbolic-table__1 _size-hint59298_))
                        _g60032_))
                ((##fx= _g60031_ 2)
                 (apply (lambda (_size-hint59302_ _seed59303_)
                          (make-symbolic-table__%
                           _size-hint59302_
                           _seed59303_))
                        _g60032_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g60032_))))))
    (define symbolic-table-ref
      (lambda (_tab59243_ _key59244_ _default59245_)
        (let ((_table59247_ (&raw-table-table _tab59243_))
              (_seed59248_ (&raw-table-seed _tab59243_)))
          (let* ((_h59250_ (fxxor (symbolic-hash _key59244_) _seed59248_))
                 (_size59253_ (vector-length _table59247_))
                 (_entries59256_ (fxquotient _size59253_ '2))
                 (_start59259_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59250_ _entries59256_)
                   '1)))
            (let _loop59263_ ((_probe59266_ _start59259_)
                              (_i59268_ '1)
                              (_deleted59270_ '#f))
              (let ((_k59273_ (vector-ref _table59247_ _probe59266_)))
                (if (eq? _k59273_ (macro-unused-obj))
                    _default59245_
                    (if (eq? _k59273_ (macro-deleted-obj))
                        (_loop59263_
                         (let ((_next-probe59276_
                                (fx+ _start59259_
                                     _i59268_
                                     (fx* _i59268_ _i59268_))))
                           (fxmodulo _next-probe59276_ _size59253_))
                         (fx+ _i59268_ '1)
                         (let ((_$e59279_ _deleted59270_))
                           (if _$e59279_ _$e59279_ _probe59266_)))
                        (if (eq? _key59244_ _k59273_)
                            (vector-ref _table59247_ (fx+ _probe59266_ '1))
                            (_loop59263_
                             (let ((_next-probe59282_
                                    (fx+ _start59259_
                                         _i59268_
                                         (fx* _i59268_ _i59268_))))
                               (fxmodulo _next-probe59282_ _size59253_))
                             (fx+ _i59268_ '1)
                             _deleted59270_))))))))))
    (define symbolic-table-set!
      (lambda (_tab59239_ _key59240_ _value59241_)
        (if (fx< (&raw-table-free _tab59239_)
                 (fxquotient (vector-length (&raw-table-table _tab59239_)) '4))
            (__raw-table-rehash! _tab59239_)
            '#!void)
        (__symbolic-table-set! _tab59239_ _key59240_ _value59241_)))
    (define __symbolic-table-set!
      (lambda (_tab59194_ _key59195_ _value59196_)
        (let ((_table59199_ (&raw-table-table _tab59194_))
              (_seed59200_ (&raw-table-seed _tab59194_)))
          (let* ((_h59202_ (fxxor (symbolic-hash _key59195_) _seed59200_))
                 (_size59205_ (vector-length _table59199_))
                 (_entries59208_ (fxquotient _size59205_ '2))
                 (_start59211_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59202_ _entries59208_)
                   '1)))
            (let _loop59215_ ((_probe59218_ _start59211_)
                              (_i59220_ '1)
                              (_deleted59222_ '#f))
              (let ((_k59225_ (vector-ref _table59199_ _probe59218_)))
                (if (eq? _k59225_ (macro-unused-obj))
                    (if _deleted59222_
                        (begin
                          (vector-set! _table59199_ _deleted59222_ _key59195_)
                          (vector-set!
                           _table59199_
                           (fx+ _deleted59222_ '1)
                           _value59196_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59194_
                              (fx+ (&raw-table-count _tab59194_) '1)))))
                        (begin
                          (vector-set! _table59199_ _probe59218_ _key59195_)
                          (vector-set!
                           _table59199_
                           (fx+ _probe59218_ '1)
                           _value59196_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59194_
                              (fx- (&raw-table-free _tab59194_) '1))
                             (&raw-table-count-set!
                              _tab59194_
                              (fx+ (&raw-table-count _tab59194_) '1))))))
                    (if (eq? _k59225_ (macro-deleted-obj))
                        (_loop59215_
                         (let ((_next-probe59230_
                                (fx+ _start59211_
                                     _i59220_
                                     (fx* _i59220_ _i59220_))))
                           (fxmodulo _next-probe59230_ _size59205_))
                         (fx+ _i59220_ '1)
                         (let ((_$e59233_ _deleted59222_))
                           (if _$e59233_ _$e59233_ _probe59218_)))
                        (if (eq? _key59195_ _k59225_)
                            (begin
                              (vector-set!
                               _table59199_
                               _probe59218_
                               _key59195_)
                              (vector-set!
                               _table59199_
                               (fx+ _probe59218_ '1)
                               _value59196_))
                            (_loop59215_
                             (let ((_next-probe59236_
                                    (fx+ _start59211_
                                         _i59220_
                                         (fx* _i59220_ _i59220_))))
                               (fxmodulo _next-probe59236_ _size59205_))
                             (fx+ _i59220_ '1)
                             _deleted59222_))))))))))
    (define symbolic-table-update!
      (lambda (_tab59189_
               _key59190_
               _symbolic-table-update!59191_
               _default59192_)
        (if (fx< (&raw-table-free _tab59189_)
                 (fxquotient (vector-length (&raw-table-table _tab59189_)) '4))
            (__raw-table-rehash! _tab59189_)
            '#!void)
        (__symbolic-table-update!
         _tab59189_
         _key59190_
         _symbolic-table-update!59191_
         _default59192_)))
    (define __symbolic-table-update!
      (lambda (_tab59143_
               _key59144_
               _symbolic-table-update!59145_
               _default59146_)
        (let ((_table59149_ (&raw-table-table _tab59143_))
              (_seed59150_ (&raw-table-seed _tab59143_)))
          (let* ((_h59152_ (fxxor (symbolic-hash _key59144_) _seed59150_))
                 (_size59155_ (vector-length _table59149_))
                 (_entries59158_ (fxquotient _size59155_ '2))
                 (_start59161_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59152_ _entries59158_)
                   '1)))
            (let _loop59165_ ((_probe59168_ _start59161_)
                              (_i59170_ '1)
                              (_deleted59172_ '#f))
              (let ((_k59175_ (vector-ref _table59149_ _probe59168_)))
                (if (eq? _k59175_ (macro-unused-obj))
                    (if _deleted59172_
                        (begin
                          (vector-set! _table59149_ _deleted59172_ _key59144_)
                          (vector-set!
                           _table59149_
                           (fx+ _deleted59172_ '1)
                           (_symbolic-table-update!59145_ _default59146_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59143_
                              (fx+ (&raw-table-count _tab59143_) '1)))))
                        (begin
                          (vector-set! _table59149_ _probe59168_ _key59144_)
                          (vector-set!
                           _table59149_
                           (fx+ _probe59168_ '1)
                           (_symbolic-table-update!59145_ _default59146_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59143_
                              (fx- (&raw-table-free _tab59143_) '1))
                             (&raw-table-count-set!
                              _tab59143_
                              (fx+ (&raw-table-count _tab59143_) '1))))))
                    (if (eq? _k59175_ (macro-deleted-obj))
                        (_loop59165_
                         (let ((_next-probe59180_
                                (fx+ _start59161_
                                     _i59170_
                                     (fx* _i59170_ _i59170_))))
                           (fxmodulo _next-probe59180_ _size59155_))
                         (fx+ _i59170_ '1)
                         (let ((_$e59183_ _deleted59172_))
                           (if _$e59183_ _$e59183_ _probe59168_)))
                        (if (eq? _key59144_ _k59175_)
                            (begin
                              (vector-set!
                               _table59149_
                               _probe59168_
                               _key59144_)
                              (vector-set!
                               _table59149_
                               (fx+ _probe59168_ '1)
                               (_symbolic-table-update!59145_
                                (vector-ref
                                 _table59149_
                                 (fx+ _probe59168_ '1)))))
                            (_loop59165_
                             (let ((_next-probe59186_
                                    (fx+ _start59161_
                                         _i59170_
                                         (fx* _i59170_ _i59170_))))
                               (fxmodulo _next-probe59186_ _size59155_))
                             (fx+ _i59170_ '1)
                             _deleted59172_))))))))))
    (define symbolic-table-delete!
      (lambda (_tab59102_ _key59104_)
        (let ((_table59107_ (&raw-table-table _tab59102_))
              (_seed59109_ (&raw-table-seed _tab59102_)))
          (let* ((_h59112_ (fxxor (symbolic-hash _key59104_) _seed59109_))
                 (_size59115_ (vector-length _table59107_))
                 (_entries59118_ (fxquotient _size59115_ '2))
                 (_start59121_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59112_ _entries59118_)
                   '1)))
            (let _loop59125_ ((_probe59128_ _start59121_) (_i59130_ '1))
              (let ((_k59133_ (vector-ref _table59107_ _probe59128_)))
                (if (eq? _k59133_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59133_ (macro-deleted-obj))
                        (_loop59125_
                         (let ((_next-probe59136_
                                (fx+ _start59121_
                                     _i59130_
                                     (fx* _i59130_ _i59130_))))
                           (fxmodulo _next-probe59136_ _size59115_))
                         (fx+ _i59130_ '1))
                        (if (eq? _key59104_ _k59133_)
                            (begin
                              (vector-set!
                               _table59107_
                               _probe59128_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59107_
                               (fx+ _probe59128_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59102_
                                  (fx- (&raw-table-count _tab59102_) '1)))))
                            (_loop59125_
                             (let ((_next-probe59140_
                                    (fx+ _start59121_
                                         _i59130_
                                         (fx* _i59130_ _i59130_))))
                               (fxmodulo _next-probe59140_ _size59115_))
                             (fx+ _i59130_ '1)))))))))))
    (define make-string-table__%
      (lambda (_size-hint59083_ _seed59085_)
        (make-raw-table__%
         _size-hint59083_
         string-hash
         ##string=?
         _seed59085_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_size-hint59091_ '#f) (_seed59093_ '0))
          (make-string-table__% _size-hint59091_ _seed59093_))))
    (define make-string-table__1
      (lambda (_size-hint59095_)
        (let ((_seed59097_ '0))
          (make-string-table__% _size-hint59095_ _seed59097_))))
    (define make-string-table
      (lambda _g60034_
        (let ((_g60033_ (##length _g60034_)))
          (cond ((##fx= _g60033_ 0)
                 (apply (lambda () (make-string-table__0)) _g60034_))
                ((##fx= _g60033_ 1)
                 (apply (lambda (_size-hint59095_)
                          (make-string-table__1 _size-hint59095_))
                        _g60034_))
                ((##fx= _g60033_ 2)
                 (apply (lambda (_size-hint59099_ _seed59100_)
                          (make-string-table__% _size-hint59099_ _seed59100_))
                        _g60034_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g60034_))))))
    (define string-table-ref
      (lambda (_tab59040_ _key59041_ _default59042_)
        (let ((_table59044_ (&raw-table-table _tab59040_))
              (_seed59045_ (&raw-table-seed _tab59040_)))
          (let* ((_h59047_ (fxxor (##string=?-hash _key59041_) _seed59045_))
                 (_size59050_ (vector-length _table59044_))
                 (_entries59053_ (fxquotient _size59050_ '2))
                 (_start59056_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59047_ _entries59053_)
                   '1)))
            (let _loop59060_ ((_probe59063_ _start59056_)
                              (_i59065_ '1)
                              (_deleted59067_ '#f))
              (let ((_k59070_ (vector-ref _table59044_ _probe59063_)))
                (if (eq? _k59070_ (macro-unused-obj))
                    _default59042_
                    (if (eq? _k59070_ (macro-deleted-obj))
                        (_loop59060_
                         (let ((_next-probe59073_
                                (fx+ _start59056_
                                     _i59065_
                                     (fx* _i59065_ _i59065_))))
                           (fxmodulo _next-probe59073_ _size59050_))
                         (fx+ _i59065_ '1)
                         (let ((_$e59076_ _deleted59067_))
                           (if _$e59076_ _$e59076_ _probe59063_)))
                        (if (##string=? _key59041_ _k59070_)
                            (vector-ref _table59044_ (fx+ _probe59063_ '1))
                            (_loop59060_
                             (let ((_next-probe59079_
                                    (fx+ _start59056_
                                         _i59065_
                                         (fx* _i59065_ _i59065_))))
                               (fxmodulo _next-probe59079_ _size59050_))
                             (fx+ _i59065_ '1)
                             _deleted59067_))))))))))
    (define string-table-set!
      (lambda (_tab59036_ _key59037_ _value59038_)
        (if (fx< (&raw-table-free _tab59036_)
                 (fxquotient (vector-length (&raw-table-table _tab59036_)) '4))
            (__raw-table-rehash! _tab59036_)
            '#!void)
        (__string-table-set! _tab59036_ _key59037_ _value59038_)))
    (define __string-table-set!
      (lambda (_tab58991_ _key58992_ _value58993_)
        (let ((_table58996_ (&raw-table-table _tab58991_))
              (_seed58997_ (&raw-table-seed _tab58991_)))
          (let* ((_h58999_ (fxxor (##string=?-hash _key58992_) _seed58997_))
                 (_size59002_ (vector-length _table58996_))
                 (_entries59005_ (fxquotient _size59002_ '2))
                 (_start59008_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58999_ _entries59005_)
                   '1)))
            (let _loop59012_ ((_probe59015_ _start59008_)
                              (_i59017_ '1)
                              (_deleted59019_ '#f))
              (let ((_k59022_ (vector-ref _table58996_ _probe59015_)))
                (if (eq? _k59022_ (macro-unused-obj))
                    (if _deleted59019_
                        (begin
                          (vector-set! _table58996_ _deleted59019_ _key58992_)
                          (vector-set!
                           _table58996_
                           (fx+ _deleted59019_ '1)
                           _value58993_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58991_
                              (fx+ (&raw-table-count _tab58991_) '1)))))
                        (begin
                          (vector-set! _table58996_ _probe59015_ _key58992_)
                          (vector-set!
                           _table58996_
                           (fx+ _probe59015_ '1)
                           _value58993_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58991_
                              (fx- (&raw-table-free _tab58991_) '1))
                             (&raw-table-count-set!
                              _tab58991_
                              (fx+ (&raw-table-count _tab58991_) '1))))))
                    (if (eq? _k59022_ (macro-deleted-obj))
                        (_loop59012_
                         (let ((_next-probe59027_
                                (fx+ _start59008_
                                     _i59017_
                                     (fx* _i59017_ _i59017_))))
                           (fxmodulo _next-probe59027_ _size59002_))
                         (fx+ _i59017_ '1)
                         (let ((_$e59030_ _deleted59019_))
                           (if _$e59030_ _$e59030_ _probe59015_)))
                        (if (##string=? _key58992_ _k59022_)
                            (begin
                              (vector-set!
                               _table58996_
                               _probe59015_
                               _key58992_)
                              (vector-set!
                               _table58996_
                               (fx+ _probe59015_ '1)
                               _value58993_))
                            (_loop59012_
                             (let ((_next-probe59033_
                                    (fx+ _start59008_
                                         _i59017_
                                         (fx* _i59017_ _i59017_))))
                               (fxmodulo _next-probe59033_ _size59002_))
                             (fx+ _i59017_ '1)
                             _deleted59019_))))))))))
    (define string-table-update!
      (lambda (_tab58986_
               _key58987_
               _string-table-update!58988_
               _default58989_)
        (if (fx< (&raw-table-free _tab58986_)
                 (fxquotient (vector-length (&raw-table-table _tab58986_)) '4))
            (__raw-table-rehash! _tab58986_)
            '#!void)
        (__string-table-update!
         _tab58986_
         _key58987_
         _string-table-update!58988_
         _default58989_)))
    (define __string-table-update!
      (lambda (_tab58940_
               _key58941_
               _string-table-update!58942_
               _default58943_)
        (let ((_table58946_ (&raw-table-table _tab58940_))
              (_seed58947_ (&raw-table-seed _tab58940_)))
          (let* ((_h58949_ (fxxor (##string=?-hash _key58941_) _seed58947_))
                 (_size58952_ (vector-length _table58946_))
                 (_entries58955_ (fxquotient _size58952_ '2))
                 (_start58958_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58949_ _entries58955_)
                   '1)))
            (let _loop58962_ ((_probe58965_ _start58958_)
                              (_i58967_ '1)
                              (_deleted58969_ '#f))
              (let ((_k58972_ (vector-ref _table58946_ _probe58965_)))
                (if (eq? _k58972_ (macro-unused-obj))
                    (if _deleted58969_
                        (begin
                          (vector-set! _table58946_ _deleted58969_ _key58941_)
                          (vector-set!
                           _table58946_
                           (fx+ _deleted58969_ '1)
                           (_string-table-update!58942_ _default58943_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58940_
                              (fx+ (&raw-table-count _tab58940_) '1)))))
                        (begin
                          (vector-set! _table58946_ _probe58965_ _key58941_)
                          (vector-set!
                           _table58946_
                           (fx+ _probe58965_ '1)
                           (_string-table-update!58942_ _default58943_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58940_
                              (fx- (&raw-table-free _tab58940_) '1))
                             (&raw-table-count-set!
                              _tab58940_
                              (fx+ (&raw-table-count _tab58940_) '1))))))
                    (if (eq? _k58972_ (macro-deleted-obj))
                        (_loop58962_
                         (let ((_next-probe58977_
                                (fx+ _start58958_
                                     _i58967_
                                     (fx* _i58967_ _i58967_))))
                           (fxmodulo _next-probe58977_ _size58952_))
                         (fx+ _i58967_ '1)
                         (let ((_$e58980_ _deleted58969_))
                           (if _$e58980_ _$e58980_ _probe58965_)))
                        (if (##string=? _key58941_ _k58972_)
                            (begin
                              (vector-set!
                               _table58946_
                               _probe58965_
                               _key58941_)
                              (vector-set!
                               _table58946_
                               (fx+ _probe58965_ '1)
                               (_string-table-update!58942_
                                (vector-ref
                                 _table58946_
                                 (fx+ _probe58965_ '1)))))
                            (_loop58962_
                             (let ((_next-probe58983_
                                    (fx+ _start58958_
                                         _i58967_
                                         (fx* _i58967_ _i58967_))))
                               (fxmodulo _next-probe58983_ _size58952_))
                             (fx+ _i58967_ '1)
                             _deleted58969_))))))))))
    (define string-table-delete!
      (lambda (_tab58899_ _key58901_)
        (let ((_table58904_ (&raw-table-table _tab58899_))
              (_seed58906_ (&raw-table-seed _tab58899_)))
          (let* ((_h58909_ (fxxor (##string=?-hash _key58901_) _seed58906_))
                 (_size58912_ (vector-length _table58904_))
                 (_entries58915_ (fxquotient _size58912_ '2))
                 (_start58918_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58909_ _entries58915_)
                   '1)))
            (let _loop58922_ ((_probe58925_ _start58918_) (_i58927_ '1))
              (let ((_k58930_ (vector-ref _table58904_ _probe58925_)))
                (if (eq? _k58930_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k58930_ (macro-deleted-obj))
                        (_loop58922_
                         (let ((_next-probe58933_
                                (fx+ _start58918_
                                     _i58927_
                                     (fx* _i58927_ _i58927_))))
                           (fxmodulo _next-probe58933_ _size58912_))
                         (fx+ _i58927_ '1))
                        (if (##string=? _key58901_ _k58930_)
                            (begin
                              (vector-set!
                               _table58904_
                               _probe58925_
                               (macro-deleted-obj))
                              (vector-set!
                               _table58904_
                               (fx+ _probe58925_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab58899_
                                  (fx- (&raw-table-count _tab58899_) '1)))))
                            (_loop58922_
                             (let ((_next-probe58937_
                                    (fx+ _start58918_
                                         _i58927_
                                         (fx* _i58927_ _i58927_))))
                               (fxmodulo _next-probe58937_ _size58912_))
                             (fx+ _i58927_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_size-hint58880_ _seed58882_)
        (make-raw-table__% _size-hint58880_ immediate-hash eq? _seed58882_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_size-hint58888_ '#f) (_seed58890_ '0))
          (make-immediate-table__% _size-hint58888_ _seed58890_))))
    (define make-immediate-table__1
      (lambda (_size-hint58892_)
        (let ((_seed58894_ '0))
          (make-immediate-table__% _size-hint58892_ _seed58894_))))
    (define make-immediate-table
      (lambda _g60036_
        (let ((_g60035_ (##length _g60036_)))
          (cond ((##fx= _g60035_ 0)
                 (apply (lambda () (make-immediate-table__0)) _g60036_))
                ((##fx= _g60035_ 1)
                 (apply (lambda (_size-hint58892_)
                          (make-immediate-table__1 _size-hint58892_))
                        _g60036_))
                ((##fx= _g60035_ 2)
                 (apply (lambda (_size-hint58896_ _seed58897_)
                          (make-immediate-table__%
                           _size-hint58896_
                           _seed58897_))
                        _g60036_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g60036_))))))
    (define immediate-table-ref
      (lambda (_tab58837_ _key58838_ _default58839_)
        (let ((_table58841_ (&raw-table-table _tab58837_))
              (_seed58842_ (&raw-table-seed _tab58837_)))
          (let* ((_h58844_ (fxxor (immediate-hash _key58838_) _seed58842_))
                 (_size58847_ (vector-length _table58841_))
                 (_entries58850_ (fxquotient _size58847_ '2))
                 (_start58853_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58844_ _entries58850_)
                   '1)))
            (let _loop58857_ ((_probe58860_ _start58853_)
                              (_i58862_ '1)
                              (_deleted58864_ '#f))
              (let ((_k58867_ (vector-ref _table58841_ _probe58860_)))
                (if (eq? _k58867_ (macro-unused-obj))
                    _default58839_
                    (if (eq? _k58867_ (macro-deleted-obj))
                        (_loop58857_
                         (let ((_next-probe58870_
                                (fx+ _start58853_
                                     _i58862_
                                     (fx* _i58862_ _i58862_))))
                           (fxmodulo _next-probe58870_ _size58847_))
                         (fx+ _i58862_ '1)
                         (let ((_$e58873_ _deleted58864_))
                           (if _$e58873_ _$e58873_ _probe58860_)))
                        (if (eq? _key58838_ _k58867_)
                            (vector-ref _table58841_ (fx+ _probe58860_ '1))
                            (_loop58857_
                             (let ((_next-probe58876_
                                    (fx+ _start58853_
                                         _i58862_
                                         (fx* _i58862_ _i58862_))))
                               (fxmodulo _next-probe58876_ _size58847_))
                             (fx+ _i58862_ '1)
                             _deleted58864_))))))))))
    (define immediate-table-set!
      (lambda (_tab58833_ _key58834_ _value58835_)
        (if (fx< (&raw-table-free _tab58833_)
                 (fxquotient (vector-length (&raw-table-table _tab58833_)) '4))
            (__raw-table-rehash! _tab58833_)
            '#!void)
        (__immediate-table-set! _tab58833_ _key58834_ _value58835_)))
    (define __immediate-table-set!
      (lambda (_tab58788_ _key58789_ _value58790_)
        (let ((_table58793_ (&raw-table-table _tab58788_))
              (_seed58794_ (&raw-table-seed _tab58788_)))
          (let* ((_h58796_ (fxxor (immediate-hash _key58789_) _seed58794_))
                 (_size58799_ (vector-length _table58793_))
                 (_entries58802_ (fxquotient _size58799_ '2))
                 (_start58805_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58796_ _entries58802_)
                   '1)))
            (let _loop58809_ ((_probe58812_ _start58805_)
                              (_i58814_ '1)
                              (_deleted58816_ '#f))
              (let ((_k58819_ (vector-ref _table58793_ _probe58812_)))
                (if (eq? _k58819_ (macro-unused-obj))
                    (if _deleted58816_
                        (begin
                          (vector-set! _table58793_ _deleted58816_ _key58789_)
                          (vector-set!
                           _table58793_
                           (fx+ _deleted58816_ '1)
                           _value58790_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58788_
                              (fx+ (&raw-table-count _tab58788_) '1)))))
                        (begin
                          (vector-set! _table58793_ _probe58812_ _key58789_)
                          (vector-set!
                           _table58793_
                           (fx+ _probe58812_ '1)
                           _value58790_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58788_
                              (fx- (&raw-table-free _tab58788_) '1))
                             (&raw-table-count-set!
                              _tab58788_
                              (fx+ (&raw-table-count _tab58788_) '1))))))
                    (if (eq? _k58819_ (macro-deleted-obj))
                        (_loop58809_
                         (let ((_next-probe58824_
                                (fx+ _start58805_
                                     _i58814_
                                     (fx* _i58814_ _i58814_))))
                           (fxmodulo _next-probe58824_ _size58799_))
                         (fx+ _i58814_ '1)
                         (let ((_$e58827_ _deleted58816_))
                           (if _$e58827_ _$e58827_ _probe58812_)))
                        (if (eq? _key58789_ _k58819_)
                            (begin
                              (vector-set!
                               _table58793_
                               _probe58812_
                               _key58789_)
                              (vector-set!
                               _table58793_
                               (fx+ _probe58812_ '1)
                               _value58790_))
                            (_loop58809_
                             (let ((_next-probe58830_
                                    (fx+ _start58805_
                                         _i58814_
                                         (fx* _i58814_ _i58814_))))
                               (fxmodulo _next-probe58830_ _size58799_))
                             (fx+ _i58814_ '1)
                             _deleted58816_))))))))))
    (define immediate-table-update!
      (lambda (_tab58783_
               _key58784_
               _immediate-table-update!58785_
               _default58786_)
        (if (fx< (&raw-table-free _tab58783_)
                 (fxquotient (vector-length (&raw-table-table _tab58783_)) '4))
            (__raw-table-rehash! _tab58783_)
            '#!void)
        (__immediate-table-update!
         _tab58783_
         _key58784_
         _immediate-table-update!58785_
         _default58786_)))
    (define __immediate-table-update!
      (lambda (_tab58737_
               _key58738_
               _immediate-table-update!58739_
               _default58740_)
        (let ((_table58743_ (&raw-table-table _tab58737_))
              (_seed58744_ (&raw-table-seed _tab58737_)))
          (let* ((_h58746_ (fxxor (immediate-hash _key58738_) _seed58744_))
                 (_size58749_ (vector-length _table58743_))
                 (_entries58752_ (fxquotient _size58749_ '2))
                 (_start58755_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58746_ _entries58752_)
                   '1)))
            (let _loop58759_ ((_probe58762_ _start58755_)
                              (_i58764_ '1)
                              (_deleted58766_ '#f))
              (let ((_k58769_ (vector-ref _table58743_ _probe58762_)))
                (if (eq? _k58769_ (macro-unused-obj))
                    (if _deleted58766_
                        (begin
                          (vector-set! _table58743_ _deleted58766_ _key58738_)
                          (vector-set!
                           _table58743_
                           (fx+ _deleted58766_ '1)
                           (_immediate-table-update!58739_ _default58740_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58737_
                              (fx+ (&raw-table-count _tab58737_) '1)))))
                        (begin
                          (vector-set! _table58743_ _probe58762_ _key58738_)
                          (vector-set!
                           _table58743_
                           (fx+ _probe58762_ '1)
                           (_immediate-table-update!58739_ _default58740_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58737_
                              (fx- (&raw-table-free _tab58737_) '1))
                             (&raw-table-count-set!
                              _tab58737_
                              (fx+ (&raw-table-count _tab58737_) '1))))))
                    (if (eq? _k58769_ (macro-deleted-obj))
                        (_loop58759_
                         (let ((_next-probe58774_
                                (fx+ _start58755_
                                     _i58764_
                                     (fx* _i58764_ _i58764_))))
                           (fxmodulo _next-probe58774_ _size58749_))
                         (fx+ _i58764_ '1)
                         (let ((_$e58777_ _deleted58766_))
                           (if _$e58777_ _$e58777_ _probe58762_)))
                        (if (eq? _key58738_ _k58769_)
                            (begin
                              (vector-set!
                               _table58743_
                               _probe58762_
                               _key58738_)
                              (vector-set!
                               _table58743_
                               (fx+ _probe58762_ '1)
                               (_immediate-table-update!58739_
                                (vector-ref
                                 _table58743_
                                 (fx+ _probe58762_ '1)))))
                            (_loop58759_
                             (let ((_next-probe58780_
                                    (fx+ _start58755_
                                         _i58764_
                                         (fx* _i58764_ _i58764_))))
                               (fxmodulo _next-probe58780_ _size58749_))
                             (fx+ _i58764_ '1)
                             _deleted58766_))))))))))
    (define immediate-table-delete!
      (lambda (_tab58696_ _key58698_)
        (let ((_table58701_ (&raw-table-table _tab58696_))
              (_seed58703_ (&raw-table-seed _tab58696_)))
          (let* ((_h58706_ (fxxor (immediate-hash _key58698_) _seed58703_))
                 (_size58709_ (vector-length _table58701_))
                 (_entries58712_ (fxquotient _size58709_ '2))
                 (_start58715_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58706_ _entries58712_)
                   '1)))
            (let _loop58719_ ((_probe58722_ _start58715_) (_i58724_ '1))
              (let ((_k58727_ (vector-ref _table58701_ _probe58722_)))
                (if (eq? _k58727_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k58727_ (macro-deleted-obj))
                        (_loop58719_
                         (let ((_next-probe58730_
                                (fx+ _start58715_
                                     _i58724_
                                     (fx* _i58724_ _i58724_))))
                           (fxmodulo _next-probe58730_ _size58709_))
                         (fx+ _i58724_ '1))
                        (if (eq? _key58698_ _k58727_)
                            (begin
                              (vector-set!
                               _table58701_
                               _probe58722_
                               (macro-deleted-obj))
                              (vector-set!
                               _table58701_
                               (fx+ _probe58722_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab58696_
                                  (fx- (&raw-table-count _tab58696_) '1)))))
                            (_loop58719_
                             (let ((_next-probe58734_
                                    (fx+ _start58715_
                                         _i58724_
                                         (fx* _i58724_ _i58724_))))
                               (fxmodulo _next-probe58734_ _size58709_))
                             (fx+ _i58724_ '1)))))))))))
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
      (lambda (_tab58694_)
        (##unchecked-structure-ref
         _tab58694_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_tab58692_)
        (##unchecked-structure-ref
         _tab58692_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_tab58689_ _val58690_)
        (##unchecked-structure-set!
         _tab58689_
         _val58690_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_tab58686_ _val58687_)
        (##unchecked-structure-set!
         _tab58686_
         _val58687_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_size-hint58662_ _klass58663_ _flags58664_)
        (let ((_gcht58666_
               (__gc-table-new
                (if (fixnum? _size-hint58662_) _size-hint58662_ '16)
                _flags58664_)))
          (##structure _klass58663_ _gcht58666_ '#f))))
    (define make-gc-table__0
      (lambda (_size-hint58671_)
        (let* ((_klass58673_ __gc-table::t) (_flags58675_ '0))
          (make-gc-table__% _size-hint58671_ _klass58673_ _flags58675_))))
    (define make-gc-table__1
      (lambda (_size-hint58677_ _klass58678_)
        (let ((_flags58680_ '0))
          (make-gc-table__% _size-hint58677_ _klass58678_ _flags58680_))))
    (define make-gc-table
      (lambda _g60038_
        (let ((_g60037_ (##length _g60038_)))
          (cond ((##fx= _g60037_ 1)
                 (apply (lambda (_size-hint58671_)
                          (make-gc-table__0 _size-hint58671_))
                        _g60038_))
                ((##fx= _g60037_ 2)
                 (apply (lambda (_size-hint58677_ _klass58678_)
                          (make-gc-table__1 _size-hint58677_ _klass58678_))
                        _g60038_))
                ((##fx= _g60037_ 3)
                 (apply (lambda (_size-hint58682_ _klass58683_ _flags58684_)
                          (make-gc-table__%
                           _size-hint58682_
                           _klass58683_
                           _flags58684_))
                        _g60038_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g60038_))))))
    (define __gc-table-immediate
      (lambda (_tab58654_)
        (let ((_$e58656_ (&gc-table-immediate _tab58654_)))
          (if _$e58656_
              _$e58656_
              (let ((_immediate58659_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _tab58654_ _immediate58659_)
                _immediate58659_)))))
    (define __gc-table-new
      (lambda (_size58644_ _flags58645_)
        (let* ((_flags58647_
                (fxand _flags58645_
                       (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_flags58649_
                (fxior _flags58647_ (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_gcht58651_
                (##gc-hash-table-allocate
                 _size58644_
                 _flags58649_
                 __gc-table-loads)))
          _gcht58651_)))
    (define __gc-table-e
      (lambda (_tab58639_)
        (declare (not interrupts-enabled))
        (let ((_gcht58642_ (&gc-table-gcht _tab58639_)))
          (if (fx= '0
                   (fxand (macro-gc-hash-table-flags _gcht58642_)
                          (macro-gc-hash-table-flag-need-rehash)))
              _gcht58642_
              (begin
                (__gc-table-rehash! _tab58639_)
                (&gc-table-gcht _tab58639_))))))
    (define __gc-table-rehash!
      (lambda (_tab58630_)
        (let* ((_old-table58632_ (&gc-table-gcht _tab58630_))
               (_new-table58634_
                (##gc-hash-table-resize! _old-table58632_ __gc-table-loads))
               (_gcht58636_
                (##gc-hash-table-rehash! _old-table58632_ _new-table58634_)))
          (&gc-table-gcht-set! _tab58630_ _gcht58636_))))
    (define gc-table-ref
      (lambda (_tab58616_ _key58617_ _default58618_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key58617_)
            (let* ((_gcht58621_ (__gc-table-e _tab58616_))
                   (_value58623_ (##gc-hash-table-ref _gcht58621_ _key58617_)))
              (if (eq? _value58623_ (macro-unused-obj))
                  _default58618_
                  _value58623_))
            (let ((_$e58625_ (&gc-table-immediate _tab58616_)))
              (if _$e58625_
                  ((lambda (_immediate58628_)
                     (immediate-table-ref
                      _immediate58628_
                      _key58617_
                      _default58618_))
                   _$e58625_)
                  _default58618_)))))
    (define gc-table-set!
      (lambda (_tab58609_ _key58610_ _value58611_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key58610_)
            (let ((_gcht58614_ (__gc-table-e _tab58609_)))
              (if (##gc-hash-table-set! _gcht58614_ _key58610_ _value58611_)
                  (begin
                    (__gc-table-rehash! _tab58609_)
                    (gc-table-set! _tab58609_ _key58610_ _value58611_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _tab58609_)
             _key58610_
             _value58611_))))
    (define gc-table-update!
      (lambda (_tab58602_ _key58603_ _update58604_ _default58605_)
        (if (##mem-allocated? _key58603_)
            (let ((_value58607_
                   (gc-table-ref _tab58602_ _key58603_ _default58605_)))
              (gc-table-set!
               _tab58602_
               _key58603_
               (_update58604_ _value58607_)))
            (immediate-table-update!
             (__gc-table-immediate _tab58602_)
             _key58603_
             _update58604_
             _default58605_))))
    (define gc-table-delete!
      (lambda (_tab58591_ _key58592_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key58592_)
            (let ((_gcht58595_ (__gc-table-e _tab58591_)))
              (if (##gc-hash-table-set!
                   _gcht58595_
                   _key58592_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _tab58591_)
                    (gc-table-delete! _tab58591_ _key58592_))
                  '#!void))
            (let ((_$e58597_ (&gc-table-immediate _tab58591_)))
              (if _$e58597_
                  ((lambda (_immediate58600_)
                     (immediate-table-delete! _immediate58600_ _key58592_))
                   _$e58597_)
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
                         (##vector-ref _gcht58576_ (fx+ _i58580_ '1)))
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
