(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1709213448)
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
      (lambda (_tab60037_)
        (##unchecked-structure-ref _tab60037_ '1 __table::t 'raw-table-table)))
    (define &raw-table-count
      (lambda (_tab60035_)
        (##unchecked-structure-ref _tab60035_ '2 __table::t 'raw-table-count)))
    (define &raw-table-free
      (lambda (_tab60033_)
        (##unchecked-structure-ref _tab60033_ '3 __table::t 'raw-table-free)))
    (define &raw-table-hash
      (lambda (_tab60031_)
        (##unchecked-structure-ref _tab60031_ '4 __table::t 'raw-table-hash)))
    (define &raw-table-test
      (lambda (_tab60029_)
        (##unchecked-structure-ref _tab60029_ '5 __table::t 'raw-table-test)))
    (define &raw-table-seed
      (lambda (_tab60027_)
        (##unchecked-structure-ref _tab60027_ '6 __table::t 'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_tab60024_ _val60025_)
        (##unchecked-structure-set!
         _tab60024_
         _val60025_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_tab60021_ _val60022_)
        (##unchecked-structure-set!
         _tab60021_
         _val60022_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_tab60018_ _val60019_)
        (##unchecked-structure-set!
         _tab60018_
         _val60019_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_tab60015_ _val60016_)
        (##unchecked-structure-set!
         _tab60015_
         _val60016_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_tab60012_ _val60013_)
        (##unchecked-structure-set!
         _tab60012_
         _val60013_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_tab60009_ _val60010_)
        (##unchecked-structure-set!
         _tab60009_
         _val60010_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_size-hint60007_)
        (if (and (fixnum? _size-hint60007_) (fx> _size-hint60007_ '0))
            (fx* (fxmax '2 (expt '2 (integer-length _size-hint60007_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_size-hint59983_ _hash59984_ _test59985_ _seed59986_)
        (let* ((_size59988_ (raw-table-size-hint->size _size-hint59983_))
               (_table59990_ (make-vector _size59988_ (macro-unused-obj))))
          (##structure
           __table::t
           _table59990_
           '0
           (fxquotient _size59988_ '2)
           _hash59984_
           _test59985_
           _seed59986_))))
    (define make-raw-table__0
      (lambda (_size-hint59996_ _hash59997_ _test59998_)
        (let ((_seed60000_ '0))
          (make-raw-table__%
           _size-hint59996_
           _hash59997_
           _test59998_
           _seed60000_))))
    (define make-raw-table
      (lambda _g60039_
        (let ((_g60038_ (##length _g60039_)))
          (cond ((##fx= _g60038_ 3)
                 (apply (lambda (_size-hint59996_ _hash59997_ _test59998_)
                          (make-raw-table__0
                           _size-hint59996_
                           _hash59997_
                           _test59998_))
                        _g60039_))
                ((##fx= _g60038_ 4)
                 (apply (lambda (_size-hint60002_
                                 _hash60003_
                                 _test60004_
                                 _seed60005_)
                          (make-raw-table__%
                           _size-hint60002_
                           _hash60003_
                           _test60004_
                           _seed60005_))
                        _g60039_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g60039_))))))
    (define raw-table-ref
      (lambda (_tab59938_ _key59939_ _default59940_)
        (let ((_table59942_ (&raw-table-table _tab59938_))
              (_seed59943_ (&raw-table-seed _tab59938_))
              (_hash59944_ (&raw-table-hash _tab59938_))
              (_test59945_ (&raw-table-test _tab59938_)))
          (let* ((_h59947_ (fxxor (_hash59944_ _key59939_) _seed59943_))
                 (_size59950_ (vector-length _table59942_))
                 (_entries59953_ (fxquotient _size59950_ '2))
                 (_start59956_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59947_ _entries59953_)
                   '1)))
            (let _loop59960_ ((_probe59963_ _start59956_)
                              (_i59965_ '1)
                              (_deleted59967_ '#f))
              (let ((_k59970_ (vector-ref _table59942_ _probe59963_)))
                (if (eq? _k59970_ (macro-unused-obj))
                    _default59940_
                    (if (eq? _k59970_ (macro-deleted-obj))
                        (_loop59960_
                         (let ((_next-probe59973_
                                (fx+ _start59956_
                                     _i59965_
                                     (fx* _i59965_ _i59965_))))
                           (fxmodulo _next-probe59973_ _size59950_))
                         (fx+ _i59965_ '1)
                         (let ((_$e59976_ _deleted59967_))
                           (if _$e59976_ _$e59976_ _probe59963_)))
                        (if (_test59945_ _key59939_ _k59970_)
                            (vector-ref _table59942_ (fx+ _probe59963_ '1))
                            (_loop59960_
                             (let ((_next-probe59979_
                                    (fx+ _start59956_
                                         _i59965_
                                         (fx* _i59965_ _i59965_))))
                               (fxmodulo _next-probe59979_ _size59950_))
                             (fx+ _i59965_ '1)
                             _deleted59967_))))))))))
    (define raw-table-set!
      (lambda (_tab59934_ _key59935_ _value59936_)
        (if (fx< (&raw-table-free _tab59934_)
                 (fxquotient (vector-length (&raw-table-table _tab59934_)) '4))
            (__raw-table-rehash! _tab59934_)
            '#!void)
        (__raw-table-set! _tab59934_ _key59935_ _value59936_)))
    (define raw-table-update!
      (lambda (_tab59929_ _key59930_ _update59931_ _default59932_)
        (if (fx< (&raw-table-free _tab59929_)
                 (fxquotient (vector-length (&raw-table-table _tab59929_)) '4))
            (__raw-table-rehash! _tab59929_)
            '#!void)
        (__raw-table-update!
         _tab59929_
         _key59930_
         _update59931_
         _default59932_)))
    (define raw-table-delete!
      (lambda (_tab59890_ _key59891_)
        (let ((_table59893_ (&raw-table-table _tab59890_))
              (_seed59894_ (&raw-table-seed _tab59890_))
              (_hash59895_ (&raw-table-hash _tab59890_))
              (_test59896_ (&raw-table-test _tab59890_)))
          (let* ((_h59898_ (fxxor (_hash59895_ _key59891_) _seed59894_))
                 (_size59901_ (vector-length _table59893_))
                 (_entries59904_ (fxquotient _size59901_ '2))
                 (_start59907_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59898_ _entries59904_)
                   '1)))
            (let _loop59911_ ((_probe59914_ _start59907_) (_i59916_ '1))
              (let ((_k59919_ (vector-ref _table59893_ _probe59914_)))
                (if (eq? _k59919_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59919_ (macro-deleted-obj))
                        (_loop59911_
                         (let ((_next-probe59922_
                                (fx+ _start59907_
                                     _i59916_
                                     (fx* _i59916_ _i59916_))))
                           (fxmodulo _next-probe59922_ _size59901_))
                         (fx+ _i59916_ '1))
                        (if (_test59896_ _key59891_ _k59919_)
                            (begin
                              (vector-set!
                               _table59893_
                               _probe59914_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59893_
                               (fx+ _probe59914_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59890_
                                  (fx- (&raw-table-count _tab59890_) '1)))))
                            (_loop59911_
                             (let ((_next-probe59926_
                                    (fx+ _start59907_
                                         _i59916_
                                         (fx* _i59916_ _i59916_))))
                               (fxmodulo _next-probe59926_ _size59901_))
                             (fx+ _i59916_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_tab59874_ _proc59875_)
        (let* ((_table59877_ (&raw-table-table _tab59874_))
               (_size59879_ (vector-length _table59877_)))
          (let _loop59882_ ((_i59884_ '0))
            (if (fx< _i59884_ _size59879_)
                (begin
                  (let ((_key59886_ (vector-ref _table59877_ _i59884_)))
                    (if (and (not (eq? _key59886_ (macro-unused-obj)))
                             (not (eq? _key59886_ (macro-deleted-obj))))
                        (let ((_value59888_
                               (vector-ref _table59877_ (fx+ _i59884_ '1))))
                          (_proc59875_ _key59886_ _value59888_))
                        '#!void))
                  (_loop59882_ (fx+ _i59884_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_tab59870_)
        (let ((_new-tab59872_ (##structure-copy _tab59870_)))
          (&raw-table-table-set!
           _new-tab59872_
           (vector-copy (&raw-table-table _tab59870_)))
          _new-tab59872_)))
    (define raw-table-clear!
      (lambda (_tab59868_)
        (vector-fill! (&raw-table-table _tab59868_) (macro-unused-obj))
        (&raw-table-count-set! _tab59868_ '0)
        (&raw-table-free-set!
         _tab59868_
         (fxquotient (vector-length (&raw-table-table _tab59868_)) '2))))
    (define __raw-table-set!
      (lambda (_tab59822_ _key59823_ _value59824_)
        (let ((_table59826_ (&raw-table-table _tab59822_))
              (_seed59827_ (&raw-table-seed _tab59822_))
              (_hash59828_ (&raw-table-hash _tab59822_))
              (_test59829_ (&raw-table-test _tab59822_)))
          (let* ((_h59831_ (fxxor (_hash59828_ _key59823_) _seed59827_))
                 (_size59834_ (vector-length _table59826_))
                 (_entries59837_ (fxquotient _size59834_ '2))
                 (_start59840_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59831_ _entries59837_)
                   '1)))
            (let _loop59844_ ((_probe59847_ _start59840_)
                              (_i59849_ '1)
                              (_deleted59851_ '#f))
              (let ((_k59854_ (vector-ref _table59826_ _probe59847_)))
                (if (eq? _k59854_ (macro-unused-obj))
                    (if _deleted59851_
                        (begin
                          (vector-set! _table59826_ _deleted59851_ _key59823_)
                          (vector-set!
                           _table59826_
                           (fx+ _deleted59851_ '1)
                           _value59824_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59822_
                              (fx+ (&raw-table-count _tab59822_) '1)))))
                        (begin
                          (vector-set! _table59826_ _probe59847_ _key59823_)
                          (vector-set!
                           _table59826_
                           (fx+ _probe59847_ '1)
                           _value59824_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59822_
                              (fx- (&raw-table-free _tab59822_) '1))
                             (&raw-table-count-set!
                              _tab59822_
                              (fx+ (&raw-table-count _tab59822_) '1))))))
                    (if (eq? _k59854_ (macro-deleted-obj))
                        (_loop59844_
                         (let ((_next-probe59859_
                                (fx+ _start59840_
                                     _i59849_
                                     (fx* _i59849_ _i59849_))))
                           (fxmodulo _next-probe59859_ _size59834_))
                         (fx+ _i59849_ '1)
                         (let ((_$e59862_ _deleted59851_))
                           (if _$e59862_ _$e59862_ _probe59847_)))
                        (if (_test59829_ _key59823_ _k59854_)
                            (begin
                              (vector-set!
                               _table59826_
                               _probe59847_
                               _key59823_)
                              (vector-set!
                               _table59826_
                               (fx+ _probe59847_ '1)
                               _value59824_))
                            (_loop59844_
                             (let ((_next-probe59865_
                                    (fx+ _start59840_
                                         _i59849_
                                         (fx* _i59849_ _i59849_))))
                               (fxmodulo _next-probe59865_ _size59834_))
                             (fx+ _i59849_ '1)
                             _deleted59851_))))))))))
    (define __raw-table-update!
      (lambda (_tab59775_ _key59776_ _update59777_ _default59778_)
        (let ((_table59780_ (&raw-table-table _tab59775_))
              (_seed59781_ (&raw-table-seed _tab59775_))
              (_hash59782_ (&raw-table-hash _tab59775_))
              (_test59783_ (&raw-table-test _tab59775_)))
          (let* ((_h59785_ (fxxor (_hash59782_ _key59776_) _seed59781_))
                 (_size59788_ (vector-length _table59780_))
                 (_entries59791_ (fxquotient _size59788_ '2))
                 (_start59794_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59785_ _entries59791_)
                   '1)))
            (let _loop59798_ ((_probe59801_ _start59794_)
                              (_i59803_ '1)
                              (_deleted59805_ '#f))
              (let ((_k59808_ (vector-ref _table59780_ _probe59801_)))
                (if (eq? _k59808_ (macro-unused-obj))
                    (if _deleted59805_
                        (begin
                          (vector-set! _table59780_ _deleted59805_ _key59776_)
                          (vector-set!
                           _table59780_
                           (fx+ _deleted59805_ '1)
                           (_update59777_ _default59778_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59775_
                              (fx+ (&raw-table-count _tab59775_) '1)))))
                        (begin
                          (vector-set! _table59780_ _probe59801_ _key59776_)
                          (vector-set!
                           _table59780_
                           (fx+ _probe59801_ '1)
                           (_update59777_ _default59778_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59775_
                              (fx- (&raw-table-free _tab59775_) '1))
                             (&raw-table-count-set!
                              _tab59775_
                              (fx+ (&raw-table-count _tab59775_) '1))))))
                    (if (eq? _k59808_ (macro-deleted-obj))
                        (_loop59798_
                         (let ((_next-probe59813_
                                (fx+ _start59794_
                                     _i59803_
                                     (fx* _i59803_ _i59803_))))
                           (fxmodulo _next-probe59813_ _size59788_))
                         (fx+ _i59803_ '1)
                         (let ((_$e59816_ _deleted59805_))
                           (if _$e59816_ _$e59816_ _probe59801_)))
                        (if (_test59783_ _key59776_ _k59808_)
                            (begin
                              (vector-set!
                               _table59780_
                               _probe59801_
                               _key59776_)
                              (vector-set!
                               _table59780_
                               (fx+ _probe59801_ '1)
                               (_update59777_
                                (vector-ref
                                 _table59780_
                                 (fx+ _probe59801_ '1)))))
                            (_loop59798_
                             (let ((_next-probe59819_
                                    (fx+ _start59794_
                                         _i59803_
                                         (fx* _i59803_ _i59803_))))
                               (fxmodulo _next-probe59819_ _size59788_))
                             (fx+ _i59803_ '1)
                             _deleted59805_))))))))))
    (define __raw-table-rehash!
      (lambda (_tab59756_)
        (let* ((_old-table59758_ (&raw-table-table _tab59756_))
               (_old-size59760_ (vector-length _old-table59758_))
               (_new-size59762_
                (if (fx< (&raw-table-count _tab59756_)
                         (fxquotient _old-size59760_ '4))
                    (vector-length _old-table59758_)
                    (fx* '2 (vector-length _old-table59758_))))
               (_new-table59764_
                (make-vector _new-size59762_ (macro-unused-obj))))
          (&raw-table-table-set! _tab59756_ _new-table59764_)
          (&raw-table-count-set! _tab59756_ '0)
          (&raw-table-free-set! _tab59756_ (fxquotient _new-size59762_ '2))
          (let _lp59767_ ((_i59769_ '0))
            (if (fx< _i59769_ _old-size59760_)
                (begin
                  (let ((_key59771_ (vector-ref _old-table59758_ _i59769_)))
                    (if (and (not (eq? _key59771_ (macro-unused-obj)))
                             (not (eq? _key59771_ (macro-deleted-obj))))
                        (let ((_value59773_
                               (vector-ref
                                _old-table59758_
                                (fx+ _i59769_ '1))))
                          (__raw-table-set!
                           _tab59756_
                           _key59771_
                           _value59773_))
                        '#!void))
                  (_lp59767_ (fx+ _i59769_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_obj59752_)
        (let ((_t59754_ (##type _obj59752_)))
          (if (fx= (fxand _t59754_ '1) '0)
              (fxand (##type-cast _obj59752_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _obj59752_)
                  (symbolic-hash _obj59752_)
                  (if (procedure? _obj59752_)
                      (procedure-hash _obj59752_)
                      (fxand (__eq-hash _obj59752_) (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_obj59748_)
        (let ((_h59750_
               (if (##closure? _obj59748_)
                   (__eq-hash _obj59748_)
                   (##type-cast _obj59748_ '0))))
          (fxand _h59750_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_obj59745_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _obj59745_)))
    (define eqv-hash
      (lambda (_obj59735_)
        (letrec ((_combine59737_
                  (lambda (_a59742_ _b59743_)
                    (fxand (fx* (fx+ _a59742_
                                     (fxarithmetic-shift-left _b59743_ '1))
                                '331804471)
                           (macro-max-fixnum32))))
                 (_hash59738_
                  (lambda (_obj59740_)
                    (macro-number-dispatch
                     _obj59740_
                     (eq-hash _obj59740_)
                     (fxand _obj59740_ (macro-max-fixnum32))
                     (modulo _obj59740_ '331804481)
                     (_combine59737_
                      (_hash59738_ (macro-ratnum-numerator _obj59740_))
                      (_hash59738_ (macro-ratnum-denominator _obj59740_)))
                     (_combine59737_
                      (##u16vector-ref _obj59740_ '0)
                      (_combine59737_
                       (##u16vector-ref _obj59740_ '1)
                       (_combine59737_
                        (##u16vector-ref _obj59740_ '2)
                        (##u16vector-ref _obj59740_ '3))))
                     (_combine59737_
                      (_hash59738_ (macro-cpxnum-real _obj59740_))
                      (_hash59738_ (macro-cpxnum-imag _obj59740_)))))))
          (_hash59738_ _obj59735_))))
    (define symbolic?
      (lambda (_obj59730_)
        (let ((_$e59732_ (symbol? _obj59730_)))
          (if _$e59732_ _$e59732_ (keyword? _obj59730_)))))
    (define symbolic-hash (lambda (_obj59728_) (macro-slot '1 _obj59728_)))
    (define string-hash (lambda (_obj59726_) (##string=?-hash _obj59726_)))
    (define immediate-hash
      (lambda (_obj59724_) (##type-cast _obj59724_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_size-hint59705_ _seed59707_)
        (make-raw-table__% _size-hint59705_ eq-hash eq? _seed59707_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_size-hint59713_ '#f) (_seed59715_ '0))
          (make-eq-table__% _size-hint59713_ _seed59715_))))
    (define make-eq-table__1
      (lambda (_size-hint59717_)
        (let ((_seed59719_ '0))
          (make-eq-table__% _size-hint59717_ _seed59719_))))
    (define make-eq-table
      (lambda _g60041_
        (let ((_g60040_ (##length _g60041_)))
          (cond ((##fx= _g60040_ 0)
                 (apply (lambda () (make-eq-table__0)) _g60041_))
                ((##fx= _g60040_ 1)
                 (apply (lambda (_size-hint59717_)
                          (make-eq-table__1 _size-hint59717_))
                        _g60041_))
                ((##fx= _g60040_ 2)
                 (apply (lambda (_size-hint59721_ _seed59722_)
                          (make-eq-table__% _size-hint59721_ _seed59722_))
                        _g60041_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g60041_))))))
    (define eq-table-ref
      (lambda (_tab59662_ _key59663_ _default59664_)
        (let ((_table59666_ (&raw-table-table _tab59662_))
              (_seed59667_ (&raw-table-seed _tab59662_)))
          (let* ((_h59669_ (fxxor (eq-hash _key59663_) _seed59667_))
                 (_size59672_ (vector-length _table59666_))
                 (_entries59675_ (fxquotient _size59672_ '2))
                 (_start59678_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59669_ _entries59675_)
                   '1)))
            (let _loop59682_ ((_probe59685_ _start59678_)
                              (_i59687_ '1)
                              (_deleted59689_ '#f))
              (let ((_k59692_ (vector-ref _table59666_ _probe59685_)))
                (if (eq? _k59692_ (macro-unused-obj))
                    _default59664_
                    (if (eq? _k59692_ (macro-deleted-obj))
                        (_loop59682_
                         (let ((_next-probe59695_
                                (fx+ _start59678_
                                     _i59687_
                                     (fx* _i59687_ _i59687_))))
                           (fxmodulo _next-probe59695_ _size59672_))
                         (fx+ _i59687_ '1)
                         (let ((_$e59698_ _deleted59689_))
                           (if _$e59698_ _$e59698_ _probe59685_)))
                        (if (eq? _key59663_ _k59692_)
                            (vector-ref _table59666_ (fx+ _probe59685_ '1))
                            (_loop59682_
                             (let ((_next-probe59701_
                                    (fx+ _start59678_
                                         _i59687_
                                         (fx* _i59687_ _i59687_))))
                               (fxmodulo _next-probe59701_ _size59672_))
                             (fx+ _i59687_ '1)
                             _deleted59689_))))))))))
    (define eq-table-set!
      (lambda (_tab59658_ _key59659_ _value59660_)
        (if (fx< (&raw-table-free _tab59658_)
                 (fxquotient (vector-length (&raw-table-table _tab59658_)) '4))
            (__raw-table-rehash! _tab59658_)
            '#!void)
        (__eq-table-set! _tab59658_ _key59659_ _value59660_)))
    (define __eq-table-set!
      (lambda (_tab59613_ _key59614_ _value59615_)
        (let ((_table59618_ (&raw-table-table _tab59613_))
              (_seed59619_ (&raw-table-seed _tab59613_)))
          (let* ((_h59621_ (fxxor (eq-hash _key59614_) _seed59619_))
                 (_size59624_ (vector-length _table59618_))
                 (_entries59627_ (fxquotient _size59624_ '2))
                 (_start59630_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59621_ _entries59627_)
                   '1)))
            (let _loop59634_ ((_probe59637_ _start59630_)
                              (_i59639_ '1)
                              (_deleted59641_ '#f))
              (let ((_k59644_ (vector-ref _table59618_ _probe59637_)))
                (if (eq? _k59644_ (macro-unused-obj))
                    (if _deleted59641_
                        (begin
                          (vector-set! _table59618_ _deleted59641_ _key59614_)
                          (vector-set!
                           _table59618_
                           (fx+ _deleted59641_ '1)
                           _value59615_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59613_
                              (fx+ (&raw-table-count _tab59613_) '1)))))
                        (begin
                          (vector-set! _table59618_ _probe59637_ _key59614_)
                          (vector-set!
                           _table59618_
                           (fx+ _probe59637_ '1)
                           _value59615_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59613_
                              (fx- (&raw-table-free _tab59613_) '1))
                             (&raw-table-count-set!
                              _tab59613_
                              (fx+ (&raw-table-count _tab59613_) '1))))))
                    (if (eq? _k59644_ (macro-deleted-obj))
                        (_loop59634_
                         (let ((_next-probe59649_
                                (fx+ _start59630_
                                     _i59639_
                                     (fx* _i59639_ _i59639_))))
                           (fxmodulo _next-probe59649_ _size59624_))
                         (fx+ _i59639_ '1)
                         (let ((_$e59652_ _deleted59641_))
                           (if _$e59652_ _$e59652_ _probe59637_)))
                        (if (eq? _key59614_ _k59644_)
                            (begin
                              (vector-set!
                               _table59618_
                               _probe59637_
                               _key59614_)
                              (vector-set!
                               _table59618_
                               (fx+ _probe59637_ '1)
                               _value59615_))
                            (_loop59634_
                             (let ((_next-probe59655_
                                    (fx+ _start59630_
                                         _i59639_
                                         (fx* _i59639_ _i59639_))))
                               (fxmodulo _next-probe59655_ _size59624_))
                             (fx+ _i59639_ '1)
                             _deleted59641_))))))))))
    (define eq-table-update!
      (lambda (_tab59608_ _key59609_ _eq-table-update!59610_ _default59611_)
        (if (fx< (&raw-table-free _tab59608_)
                 (fxquotient (vector-length (&raw-table-table _tab59608_)) '4))
            (__raw-table-rehash! _tab59608_)
            '#!void)
        (__eq-table-update!
         _tab59608_
         _key59609_
         _eq-table-update!59610_
         _default59611_)))
    (define __eq-table-update!
      (lambda (_tab59562_ _key59563_ _eq-table-update!59564_ _default59565_)
        (let ((_table59568_ (&raw-table-table _tab59562_))
              (_seed59569_ (&raw-table-seed _tab59562_)))
          (let* ((_h59571_ (fxxor (eq-hash _key59563_) _seed59569_))
                 (_size59574_ (vector-length _table59568_))
                 (_entries59577_ (fxquotient _size59574_ '2))
                 (_start59580_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59571_ _entries59577_)
                   '1)))
            (let _loop59584_ ((_probe59587_ _start59580_)
                              (_i59589_ '1)
                              (_deleted59591_ '#f))
              (let ((_k59594_ (vector-ref _table59568_ _probe59587_)))
                (if (eq? _k59594_ (macro-unused-obj))
                    (if _deleted59591_
                        (begin
                          (vector-set! _table59568_ _deleted59591_ _key59563_)
                          (vector-set!
                           _table59568_
                           (fx+ _deleted59591_ '1)
                           (_eq-table-update!59564_ _default59565_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59562_
                              (fx+ (&raw-table-count _tab59562_) '1)))))
                        (begin
                          (vector-set! _table59568_ _probe59587_ _key59563_)
                          (vector-set!
                           _table59568_
                           (fx+ _probe59587_ '1)
                           (_eq-table-update!59564_ _default59565_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59562_
                              (fx- (&raw-table-free _tab59562_) '1))
                             (&raw-table-count-set!
                              _tab59562_
                              (fx+ (&raw-table-count _tab59562_) '1))))))
                    (if (eq? _k59594_ (macro-deleted-obj))
                        (_loop59584_
                         (let ((_next-probe59599_
                                (fx+ _start59580_
                                     _i59589_
                                     (fx* _i59589_ _i59589_))))
                           (fxmodulo _next-probe59599_ _size59574_))
                         (fx+ _i59589_ '1)
                         (let ((_$e59602_ _deleted59591_))
                           (if _$e59602_ _$e59602_ _probe59587_)))
                        (if (eq? _key59563_ _k59594_)
                            (begin
                              (vector-set!
                               _table59568_
                               _probe59587_
                               _key59563_)
                              (vector-set!
                               _table59568_
                               (fx+ _probe59587_ '1)
                               (_eq-table-update!59564_
                                (vector-ref
                                 _table59568_
                                 (fx+ _probe59587_ '1)))))
                            (_loop59584_
                             (let ((_next-probe59605_
                                    (fx+ _start59580_
                                         _i59589_
                                         (fx* _i59589_ _i59589_))))
                               (fxmodulo _next-probe59605_ _size59574_))
                             (fx+ _i59589_ '1)
                             _deleted59591_))))))))))
    (define eq-table-delete!
      (lambda (_tab59521_ _key59523_)
        (let ((_table59526_ (&raw-table-table _tab59521_))
              (_seed59528_ (&raw-table-seed _tab59521_)))
          (let* ((_h59531_ (fxxor (eq-hash _key59523_) _seed59528_))
                 (_size59534_ (vector-length _table59526_))
                 (_entries59537_ (fxquotient _size59534_ '2))
                 (_start59540_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59531_ _entries59537_)
                   '1)))
            (let _loop59544_ ((_probe59547_ _start59540_) (_i59549_ '1))
              (let ((_k59552_ (vector-ref _table59526_ _probe59547_)))
                (if (eq? _k59552_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59552_ (macro-deleted-obj))
                        (_loop59544_
                         (let ((_next-probe59555_
                                (fx+ _start59540_
                                     _i59549_
                                     (fx* _i59549_ _i59549_))))
                           (fxmodulo _next-probe59555_ _size59534_))
                         (fx+ _i59549_ '1))
                        (if (eq? _key59523_ _k59552_)
                            (begin
                              (vector-set!
                               _table59526_
                               _probe59547_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59526_
                               (fx+ _probe59547_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59521_
                                  (fx- (&raw-table-count _tab59521_) '1)))))
                            (_loop59544_
                             (let ((_next-probe59559_
                                    (fx+ _start59540_
                                         _i59549_
                                         (fx* _i59549_ _i59549_))))
                               (fxmodulo _next-probe59559_ _size59534_))
                             (fx+ _i59549_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_size-hint59502_ _seed59504_)
        (make-raw-table__% _size-hint59502_ eqv-hash eqv? _seed59504_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_size-hint59510_ '#f) (_seed59512_ '0))
          (make-eqv-table__% _size-hint59510_ _seed59512_))))
    (define make-eqv-table__1
      (lambda (_size-hint59514_)
        (let ((_seed59516_ '0))
          (make-eqv-table__% _size-hint59514_ _seed59516_))))
    (define make-eqv-table
      (lambda _g60043_
        (let ((_g60042_ (##length _g60043_)))
          (cond ((##fx= _g60042_ 0)
                 (apply (lambda () (make-eqv-table__0)) _g60043_))
                ((##fx= _g60042_ 1)
                 (apply (lambda (_size-hint59514_)
                          (make-eqv-table__1 _size-hint59514_))
                        _g60043_))
                ((##fx= _g60042_ 2)
                 (apply (lambda (_size-hint59518_ _seed59519_)
                          (make-eqv-table__% _size-hint59518_ _seed59519_))
                        _g60043_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g60043_))))))
    (define eqv-table-ref
      (lambda (_tab59459_ _key59460_ _default59461_)
        (let ((_table59463_ (&raw-table-table _tab59459_))
              (_seed59464_ (&raw-table-seed _tab59459_)))
          (let* ((_h59466_ (fxxor (eqv-hash _key59460_) _seed59464_))
                 (_size59469_ (vector-length _table59463_))
                 (_entries59472_ (fxquotient _size59469_ '2))
                 (_start59475_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59466_ _entries59472_)
                   '1)))
            (let _loop59479_ ((_probe59482_ _start59475_)
                              (_i59484_ '1)
                              (_deleted59486_ '#f))
              (let ((_k59489_ (vector-ref _table59463_ _probe59482_)))
                (if (eq? _k59489_ (macro-unused-obj))
                    _default59461_
                    (if (eq? _k59489_ (macro-deleted-obj))
                        (_loop59479_
                         (let ((_next-probe59492_
                                (fx+ _start59475_
                                     _i59484_
                                     (fx* _i59484_ _i59484_))))
                           (fxmodulo _next-probe59492_ _size59469_))
                         (fx+ _i59484_ '1)
                         (let ((_$e59495_ _deleted59486_))
                           (if _$e59495_ _$e59495_ _probe59482_)))
                        (if (eqv? _key59460_ _k59489_)
                            (vector-ref _table59463_ (fx+ _probe59482_ '1))
                            (_loop59479_
                             (let ((_next-probe59498_
                                    (fx+ _start59475_
                                         _i59484_
                                         (fx* _i59484_ _i59484_))))
                               (fxmodulo _next-probe59498_ _size59469_))
                             (fx+ _i59484_ '1)
                             _deleted59486_))))))))))
    (define eqv-table-set!
      (lambda (_tab59455_ _key59456_ _value59457_)
        (if (fx< (&raw-table-free _tab59455_)
                 (fxquotient (vector-length (&raw-table-table _tab59455_)) '4))
            (__raw-table-rehash! _tab59455_)
            '#!void)
        (__eqv-table-set! _tab59455_ _key59456_ _value59457_)))
    (define __eqv-table-set!
      (lambda (_tab59410_ _key59411_ _value59412_)
        (let ((_table59415_ (&raw-table-table _tab59410_))
              (_seed59416_ (&raw-table-seed _tab59410_)))
          (let* ((_h59418_ (fxxor (eqv-hash _key59411_) _seed59416_))
                 (_size59421_ (vector-length _table59415_))
                 (_entries59424_ (fxquotient _size59421_ '2))
                 (_start59427_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59418_ _entries59424_)
                   '1)))
            (let _loop59431_ ((_probe59434_ _start59427_)
                              (_i59436_ '1)
                              (_deleted59438_ '#f))
              (let ((_k59441_ (vector-ref _table59415_ _probe59434_)))
                (if (eq? _k59441_ (macro-unused-obj))
                    (if _deleted59438_
                        (begin
                          (vector-set! _table59415_ _deleted59438_ _key59411_)
                          (vector-set!
                           _table59415_
                           (fx+ _deleted59438_ '1)
                           _value59412_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59410_
                              (fx+ (&raw-table-count _tab59410_) '1)))))
                        (begin
                          (vector-set! _table59415_ _probe59434_ _key59411_)
                          (vector-set!
                           _table59415_
                           (fx+ _probe59434_ '1)
                           _value59412_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59410_
                              (fx- (&raw-table-free _tab59410_) '1))
                             (&raw-table-count-set!
                              _tab59410_
                              (fx+ (&raw-table-count _tab59410_) '1))))))
                    (if (eq? _k59441_ (macro-deleted-obj))
                        (_loop59431_
                         (let ((_next-probe59446_
                                (fx+ _start59427_
                                     _i59436_
                                     (fx* _i59436_ _i59436_))))
                           (fxmodulo _next-probe59446_ _size59421_))
                         (fx+ _i59436_ '1)
                         (let ((_$e59449_ _deleted59438_))
                           (if _$e59449_ _$e59449_ _probe59434_)))
                        (if (eqv? _key59411_ _k59441_)
                            (begin
                              (vector-set!
                               _table59415_
                               _probe59434_
                               _key59411_)
                              (vector-set!
                               _table59415_
                               (fx+ _probe59434_ '1)
                               _value59412_))
                            (_loop59431_
                             (let ((_next-probe59452_
                                    (fx+ _start59427_
                                         _i59436_
                                         (fx* _i59436_ _i59436_))))
                               (fxmodulo _next-probe59452_ _size59421_))
                             (fx+ _i59436_ '1)
                             _deleted59438_))))))))))
    (define eqv-table-update!
      (lambda (_tab59405_ _key59406_ _eqv-table-update!59407_ _default59408_)
        (if (fx< (&raw-table-free _tab59405_)
                 (fxquotient (vector-length (&raw-table-table _tab59405_)) '4))
            (__raw-table-rehash! _tab59405_)
            '#!void)
        (__eqv-table-update!
         _tab59405_
         _key59406_
         _eqv-table-update!59407_
         _default59408_)))
    (define __eqv-table-update!
      (lambda (_tab59359_ _key59360_ _eqv-table-update!59361_ _default59362_)
        (let ((_table59365_ (&raw-table-table _tab59359_))
              (_seed59366_ (&raw-table-seed _tab59359_)))
          (let* ((_h59368_ (fxxor (eqv-hash _key59360_) _seed59366_))
                 (_size59371_ (vector-length _table59365_))
                 (_entries59374_ (fxquotient _size59371_ '2))
                 (_start59377_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59368_ _entries59374_)
                   '1)))
            (let _loop59381_ ((_probe59384_ _start59377_)
                              (_i59386_ '1)
                              (_deleted59388_ '#f))
              (let ((_k59391_ (vector-ref _table59365_ _probe59384_)))
                (if (eq? _k59391_ (macro-unused-obj))
                    (if _deleted59388_
                        (begin
                          (vector-set! _table59365_ _deleted59388_ _key59360_)
                          (vector-set!
                           _table59365_
                           (fx+ _deleted59388_ '1)
                           (_eqv-table-update!59361_ _default59362_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59359_
                              (fx+ (&raw-table-count _tab59359_) '1)))))
                        (begin
                          (vector-set! _table59365_ _probe59384_ _key59360_)
                          (vector-set!
                           _table59365_
                           (fx+ _probe59384_ '1)
                           (_eqv-table-update!59361_ _default59362_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59359_
                              (fx- (&raw-table-free _tab59359_) '1))
                             (&raw-table-count-set!
                              _tab59359_
                              (fx+ (&raw-table-count _tab59359_) '1))))))
                    (if (eq? _k59391_ (macro-deleted-obj))
                        (_loop59381_
                         (let ((_next-probe59396_
                                (fx+ _start59377_
                                     _i59386_
                                     (fx* _i59386_ _i59386_))))
                           (fxmodulo _next-probe59396_ _size59371_))
                         (fx+ _i59386_ '1)
                         (let ((_$e59399_ _deleted59388_))
                           (if _$e59399_ _$e59399_ _probe59384_)))
                        (if (eqv? _key59360_ _k59391_)
                            (begin
                              (vector-set!
                               _table59365_
                               _probe59384_
                               _key59360_)
                              (vector-set!
                               _table59365_
                               (fx+ _probe59384_ '1)
                               (_eqv-table-update!59361_
                                (vector-ref
                                 _table59365_
                                 (fx+ _probe59384_ '1)))))
                            (_loop59381_
                             (let ((_next-probe59402_
                                    (fx+ _start59377_
                                         _i59386_
                                         (fx* _i59386_ _i59386_))))
                               (fxmodulo _next-probe59402_ _size59371_))
                             (fx+ _i59386_ '1)
                             _deleted59388_))))))))))
    (define eqv-table-delete!
      (lambda (_tab59318_ _key59320_)
        (let ((_table59323_ (&raw-table-table _tab59318_))
              (_seed59325_ (&raw-table-seed _tab59318_)))
          (let* ((_h59328_ (fxxor (eqv-hash _key59320_) _seed59325_))
                 (_size59331_ (vector-length _table59323_))
                 (_entries59334_ (fxquotient _size59331_ '2))
                 (_start59337_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59328_ _entries59334_)
                   '1)))
            (let _loop59341_ ((_probe59344_ _start59337_) (_i59346_ '1))
              (let ((_k59349_ (vector-ref _table59323_ _probe59344_)))
                (if (eq? _k59349_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59349_ (macro-deleted-obj))
                        (_loop59341_
                         (let ((_next-probe59352_
                                (fx+ _start59337_
                                     _i59346_
                                     (fx* _i59346_ _i59346_))))
                           (fxmodulo _next-probe59352_ _size59331_))
                         (fx+ _i59346_ '1))
                        (if (eqv? _key59320_ _k59349_)
                            (begin
                              (vector-set!
                               _table59323_
                               _probe59344_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59323_
                               (fx+ _probe59344_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59318_
                                  (fx- (&raw-table-count _tab59318_) '1)))))
                            (_loop59341_
                             (let ((_next-probe59356_
                                    (fx+ _start59337_
                                         _i59346_
                                         (fx* _i59346_ _i59346_))))
                               (fxmodulo _next-probe59356_ _size59331_))
                             (fx+ _i59346_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_size-hint59299_ _seed59301_)
        (make-raw-table__% _size-hint59299_ symbolic-hash eq? _seed59301_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_size-hint59307_ '#f) (_seed59309_ '0))
          (make-symbolic-table__% _size-hint59307_ _seed59309_))))
    (define make-symbolic-table__1
      (lambda (_size-hint59311_)
        (let ((_seed59313_ '0))
          (make-symbolic-table__% _size-hint59311_ _seed59313_))))
    (define make-symbolic-table
      (lambda _g60045_
        (let ((_g60044_ (##length _g60045_)))
          (cond ((##fx= _g60044_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g60045_))
                ((##fx= _g60044_ 1)
                 (apply (lambda (_size-hint59311_)
                          (make-symbolic-table__1 _size-hint59311_))
                        _g60045_))
                ((##fx= _g60044_ 2)
                 (apply (lambda (_size-hint59315_ _seed59316_)
                          (make-symbolic-table__%
                           _size-hint59315_
                           _seed59316_))
                        _g60045_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g60045_))))))
    (define symbolic-table-ref
      (lambda (_tab59256_ _key59257_ _default59258_)
        (let ((_table59260_ (&raw-table-table _tab59256_))
              (_seed59261_ (&raw-table-seed _tab59256_)))
          (let* ((_h59263_ (fxxor (symbolic-hash _key59257_) _seed59261_))
                 (_size59266_ (vector-length _table59260_))
                 (_entries59269_ (fxquotient _size59266_ '2))
                 (_start59272_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59263_ _entries59269_)
                   '1)))
            (let _loop59276_ ((_probe59279_ _start59272_)
                              (_i59281_ '1)
                              (_deleted59283_ '#f))
              (let ((_k59286_ (vector-ref _table59260_ _probe59279_)))
                (if (eq? _k59286_ (macro-unused-obj))
                    _default59258_
                    (if (eq? _k59286_ (macro-deleted-obj))
                        (_loop59276_
                         (let ((_next-probe59289_
                                (fx+ _start59272_
                                     _i59281_
                                     (fx* _i59281_ _i59281_))))
                           (fxmodulo _next-probe59289_ _size59266_))
                         (fx+ _i59281_ '1)
                         (let ((_$e59292_ _deleted59283_))
                           (if _$e59292_ _$e59292_ _probe59279_)))
                        (if (eq? _key59257_ _k59286_)
                            (vector-ref _table59260_ (fx+ _probe59279_ '1))
                            (_loop59276_
                             (let ((_next-probe59295_
                                    (fx+ _start59272_
                                         _i59281_
                                         (fx* _i59281_ _i59281_))))
                               (fxmodulo _next-probe59295_ _size59266_))
                             (fx+ _i59281_ '1)
                             _deleted59283_))))))))))
    (define symbolic-table-set!
      (lambda (_tab59252_ _key59253_ _value59254_)
        (if (fx< (&raw-table-free _tab59252_)
                 (fxquotient (vector-length (&raw-table-table _tab59252_)) '4))
            (__raw-table-rehash! _tab59252_)
            '#!void)
        (__symbolic-table-set! _tab59252_ _key59253_ _value59254_)))
    (define __symbolic-table-set!
      (lambda (_tab59207_ _key59208_ _value59209_)
        (let ((_table59212_ (&raw-table-table _tab59207_))
              (_seed59213_ (&raw-table-seed _tab59207_)))
          (let* ((_h59215_ (fxxor (symbolic-hash _key59208_) _seed59213_))
                 (_size59218_ (vector-length _table59212_))
                 (_entries59221_ (fxquotient _size59218_ '2))
                 (_start59224_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59215_ _entries59221_)
                   '1)))
            (let _loop59228_ ((_probe59231_ _start59224_)
                              (_i59233_ '1)
                              (_deleted59235_ '#f))
              (let ((_k59238_ (vector-ref _table59212_ _probe59231_)))
                (if (eq? _k59238_ (macro-unused-obj))
                    (if _deleted59235_
                        (begin
                          (vector-set! _table59212_ _deleted59235_ _key59208_)
                          (vector-set!
                           _table59212_
                           (fx+ _deleted59235_ '1)
                           _value59209_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59207_
                              (fx+ (&raw-table-count _tab59207_) '1)))))
                        (begin
                          (vector-set! _table59212_ _probe59231_ _key59208_)
                          (vector-set!
                           _table59212_
                           (fx+ _probe59231_ '1)
                           _value59209_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59207_
                              (fx- (&raw-table-free _tab59207_) '1))
                             (&raw-table-count-set!
                              _tab59207_
                              (fx+ (&raw-table-count _tab59207_) '1))))))
                    (if (eq? _k59238_ (macro-deleted-obj))
                        (_loop59228_
                         (let ((_next-probe59243_
                                (fx+ _start59224_
                                     _i59233_
                                     (fx* _i59233_ _i59233_))))
                           (fxmodulo _next-probe59243_ _size59218_))
                         (fx+ _i59233_ '1)
                         (let ((_$e59246_ _deleted59235_))
                           (if _$e59246_ _$e59246_ _probe59231_)))
                        (if (eq? _key59208_ _k59238_)
                            (begin
                              (vector-set!
                               _table59212_
                               _probe59231_
                               _key59208_)
                              (vector-set!
                               _table59212_
                               (fx+ _probe59231_ '1)
                               _value59209_))
                            (_loop59228_
                             (let ((_next-probe59249_
                                    (fx+ _start59224_
                                         _i59233_
                                         (fx* _i59233_ _i59233_))))
                               (fxmodulo _next-probe59249_ _size59218_))
                             (fx+ _i59233_ '1)
                             _deleted59235_))))))))))
    (define symbolic-table-update!
      (lambda (_tab59202_
               _key59203_
               _symbolic-table-update!59204_
               _default59205_)
        (if (fx< (&raw-table-free _tab59202_)
                 (fxquotient (vector-length (&raw-table-table _tab59202_)) '4))
            (__raw-table-rehash! _tab59202_)
            '#!void)
        (__symbolic-table-update!
         _tab59202_
         _key59203_
         _symbolic-table-update!59204_
         _default59205_)))
    (define __symbolic-table-update!
      (lambda (_tab59156_
               _key59157_
               _symbolic-table-update!59158_
               _default59159_)
        (let ((_table59162_ (&raw-table-table _tab59156_))
              (_seed59163_ (&raw-table-seed _tab59156_)))
          (let* ((_h59165_ (fxxor (symbolic-hash _key59157_) _seed59163_))
                 (_size59168_ (vector-length _table59162_))
                 (_entries59171_ (fxquotient _size59168_ '2))
                 (_start59174_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59165_ _entries59171_)
                   '1)))
            (let _loop59178_ ((_probe59181_ _start59174_)
                              (_i59183_ '1)
                              (_deleted59185_ '#f))
              (let ((_k59188_ (vector-ref _table59162_ _probe59181_)))
                (if (eq? _k59188_ (macro-unused-obj))
                    (if _deleted59185_
                        (begin
                          (vector-set! _table59162_ _deleted59185_ _key59157_)
                          (vector-set!
                           _table59162_
                           (fx+ _deleted59185_ '1)
                           (_symbolic-table-update!59158_ _default59159_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59156_
                              (fx+ (&raw-table-count _tab59156_) '1)))))
                        (begin
                          (vector-set! _table59162_ _probe59181_ _key59157_)
                          (vector-set!
                           _table59162_
                           (fx+ _probe59181_ '1)
                           (_symbolic-table-update!59158_ _default59159_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59156_
                              (fx- (&raw-table-free _tab59156_) '1))
                             (&raw-table-count-set!
                              _tab59156_
                              (fx+ (&raw-table-count _tab59156_) '1))))))
                    (if (eq? _k59188_ (macro-deleted-obj))
                        (_loop59178_
                         (let ((_next-probe59193_
                                (fx+ _start59174_
                                     _i59183_
                                     (fx* _i59183_ _i59183_))))
                           (fxmodulo _next-probe59193_ _size59168_))
                         (fx+ _i59183_ '1)
                         (let ((_$e59196_ _deleted59185_))
                           (if _$e59196_ _$e59196_ _probe59181_)))
                        (if (eq? _key59157_ _k59188_)
                            (begin
                              (vector-set!
                               _table59162_
                               _probe59181_
                               _key59157_)
                              (vector-set!
                               _table59162_
                               (fx+ _probe59181_ '1)
                               (_symbolic-table-update!59158_
                                (vector-ref
                                 _table59162_
                                 (fx+ _probe59181_ '1)))))
                            (_loop59178_
                             (let ((_next-probe59199_
                                    (fx+ _start59174_
                                         _i59183_
                                         (fx* _i59183_ _i59183_))))
                               (fxmodulo _next-probe59199_ _size59168_))
                             (fx+ _i59183_ '1)
                             _deleted59185_))))))))))
    (define symbolic-table-delete!
      (lambda (_tab59115_ _key59117_)
        (let ((_table59120_ (&raw-table-table _tab59115_))
              (_seed59122_ (&raw-table-seed _tab59115_)))
          (let* ((_h59125_ (fxxor (symbolic-hash _key59117_) _seed59122_))
                 (_size59128_ (vector-length _table59120_))
                 (_entries59131_ (fxquotient _size59128_ '2))
                 (_start59134_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59125_ _entries59131_)
                   '1)))
            (let _loop59138_ ((_probe59141_ _start59134_) (_i59143_ '1))
              (let ((_k59146_ (vector-ref _table59120_ _probe59141_)))
                (if (eq? _k59146_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59146_ (macro-deleted-obj))
                        (_loop59138_
                         (let ((_next-probe59149_
                                (fx+ _start59134_
                                     _i59143_
                                     (fx* _i59143_ _i59143_))))
                           (fxmodulo _next-probe59149_ _size59128_))
                         (fx+ _i59143_ '1))
                        (if (eq? _key59117_ _k59146_)
                            (begin
                              (vector-set!
                               _table59120_
                               _probe59141_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59120_
                               (fx+ _probe59141_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59115_
                                  (fx- (&raw-table-count _tab59115_) '1)))))
                            (_loop59138_
                             (let ((_next-probe59153_
                                    (fx+ _start59134_
                                         _i59143_
                                         (fx* _i59143_ _i59143_))))
                               (fxmodulo _next-probe59153_ _size59128_))
                             (fx+ _i59143_ '1)))))))))))
    (define make-string-table__%
      (lambda (_size-hint59096_ _seed59098_)
        (make-raw-table__%
         _size-hint59096_
         string-hash
         ##string=?
         _seed59098_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_size-hint59104_ '#f) (_seed59106_ '0))
          (make-string-table__% _size-hint59104_ _seed59106_))))
    (define make-string-table__1
      (lambda (_size-hint59108_)
        (let ((_seed59110_ '0))
          (make-string-table__% _size-hint59108_ _seed59110_))))
    (define make-string-table
      (lambda _g60047_
        (let ((_g60046_ (##length _g60047_)))
          (cond ((##fx= _g60046_ 0)
                 (apply (lambda () (make-string-table__0)) _g60047_))
                ((##fx= _g60046_ 1)
                 (apply (lambda (_size-hint59108_)
                          (make-string-table__1 _size-hint59108_))
                        _g60047_))
                ((##fx= _g60046_ 2)
                 (apply (lambda (_size-hint59112_ _seed59113_)
                          (make-string-table__% _size-hint59112_ _seed59113_))
                        _g60047_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g60047_))))))
    (define string-table-ref
      (lambda (_tab59053_ _key59054_ _default59055_)
        (let ((_table59057_ (&raw-table-table _tab59053_))
              (_seed59058_ (&raw-table-seed _tab59053_)))
          (let* ((_h59060_ (fxxor (##string=?-hash _key59054_) _seed59058_))
                 (_size59063_ (vector-length _table59057_))
                 (_entries59066_ (fxquotient _size59063_ '2))
                 (_start59069_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59060_ _entries59066_)
                   '1)))
            (let _loop59073_ ((_probe59076_ _start59069_)
                              (_i59078_ '1)
                              (_deleted59080_ '#f))
              (let ((_k59083_ (vector-ref _table59057_ _probe59076_)))
                (if (eq? _k59083_ (macro-unused-obj))
                    _default59055_
                    (if (eq? _k59083_ (macro-deleted-obj))
                        (_loop59073_
                         (let ((_next-probe59086_
                                (fx+ _start59069_
                                     _i59078_
                                     (fx* _i59078_ _i59078_))))
                           (fxmodulo _next-probe59086_ _size59063_))
                         (fx+ _i59078_ '1)
                         (let ((_$e59089_ _deleted59080_))
                           (if _$e59089_ _$e59089_ _probe59076_)))
                        (if (##string=? _key59054_ _k59083_)
                            (vector-ref _table59057_ (fx+ _probe59076_ '1))
                            (_loop59073_
                             (let ((_next-probe59092_
                                    (fx+ _start59069_
                                         _i59078_
                                         (fx* _i59078_ _i59078_))))
                               (fxmodulo _next-probe59092_ _size59063_))
                             (fx+ _i59078_ '1)
                             _deleted59080_))))))))))
    (define string-table-set!
      (lambda (_tab59049_ _key59050_ _value59051_)
        (if (fx< (&raw-table-free _tab59049_)
                 (fxquotient (vector-length (&raw-table-table _tab59049_)) '4))
            (__raw-table-rehash! _tab59049_)
            '#!void)
        (__string-table-set! _tab59049_ _key59050_ _value59051_)))
    (define __string-table-set!
      (lambda (_tab59004_ _key59005_ _value59006_)
        (let ((_table59009_ (&raw-table-table _tab59004_))
              (_seed59010_ (&raw-table-seed _tab59004_)))
          (let* ((_h59012_ (fxxor (##string=?-hash _key59005_) _seed59010_))
                 (_size59015_ (vector-length _table59009_))
                 (_entries59018_ (fxquotient _size59015_ '2))
                 (_start59021_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59012_ _entries59018_)
                   '1)))
            (let _loop59025_ ((_probe59028_ _start59021_)
                              (_i59030_ '1)
                              (_deleted59032_ '#f))
              (let ((_k59035_ (vector-ref _table59009_ _probe59028_)))
                (if (eq? _k59035_ (macro-unused-obj))
                    (if _deleted59032_
                        (begin
                          (vector-set! _table59009_ _deleted59032_ _key59005_)
                          (vector-set!
                           _table59009_
                           (fx+ _deleted59032_ '1)
                           _value59006_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59004_
                              (fx+ (&raw-table-count _tab59004_) '1)))))
                        (begin
                          (vector-set! _table59009_ _probe59028_ _key59005_)
                          (vector-set!
                           _table59009_
                           (fx+ _probe59028_ '1)
                           _value59006_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59004_
                              (fx- (&raw-table-free _tab59004_) '1))
                             (&raw-table-count-set!
                              _tab59004_
                              (fx+ (&raw-table-count _tab59004_) '1))))))
                    (if (eq? _k59035_ (macro-deleted-obj))
                        (_loop59025_
                         (let ((_next-probe59040_
                                (fx+ _start59021_
                                     _i59030_
                                     (fx* _i59030_ _i59030_))))
                           (fxmodulo _next-probe59040_ _size59015_))
                         (fx+ _i59030_ '1)
                         (let ((_$e59043_ _deleted59032_))
                           (if _$e59043_ _$e59043_ _probe59028_)))
                        (if (##string=? _key59005_ _k59035_)
                            (begin
                              (vector-set!
                               _table59009_
                               _probe59028_
                               _key59005_)
                              (vector-set!
                               _table59009_
                               (fx+ _probe59028_ '1)
                               _value59006_))
                            (_loop59025_
                             (let ((_next-probe59046_
                                    (fx+ _start59021_
                                         _i59030_
                                         (fx* _i59030_ _i59030_))))
                               (fxmodulo _next-probe59046_ _size59015_))
                             (fx+ _i59030_ '1)
                             _deleted59032_))))))))))
    (define string-table-update!
      (lambda (_tab58999_
               _key59000_
               _string-table-update!59001_
               _default59002_)
        (if (fx< (&raw-table-free _tab58999_)
                 (fxquotient (vector-length (&raw-table-table _tab58999_)) '4))
            (__raw-table-rehash! _tab58999_)
            '#!void)
        (__string-table-update!
         _tab58999_
         _key59000_
         _string-table-update!59001_
         _default59002_)))
    (define __string-table-update!
      (lambda (_tab58953_
               _key58954_
               _string-table-update!58955_
               _default58956_)
        (let ((_table58959_ (&raw-table-table _tab58953_))
              (_seed58960_ (&raw-table-seed _tab58953_)))
          (let* ((_h58962_ (fxxor (##string=?-hash _key58954_) _seed58960_))
                 (_size58965_ (vector-length _table58959_))
                 (_entries58968_ (fxquotient _size58965_ '2))
                 (_start58971_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58962_ _entries58968_)
                   '1)))
            (let _loop58975_ ((_probe58978_ _start58971_)
                              (_i58980_ '1)
                              (_deleted58982_ '#f))
              (let ((_k58985_ (vector-ref _table58959_ _probe58978_)))
                (if (eq? _k58985_ (macro-unused-obj))
                    (if _deleted58982_
                        (begin
                          (vector-set! _table58959_ _deleted58982_ _key58954_)
                          (vector-set!
                           _table58959_
                           (fx+ _deleted58982_ '1)
                           (_string-table-update!58955_ _default58956_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58953_
                              (fx+ (&raw-table-count _tab58953_) '1)))))
                        (begin
                          (vector-set! _table58959_ _probe58978_ _key58954_)
                          (vector-set!
                           _table58959_
                           (fx+ _probe58978_ '1)
                           (_string-table-update!58955_ _default58956_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58953_
                              (fx- (&raw-table-free _tab58953_) '1))
                             (&raw-table-count-set!
                              _tab58953_
                              (fx+ (&raw-table-count _tab58953_) '1))))))
                    (if (eq? _k58985_ (macro-deleted-obj))
                        (_loop58975_
                         (let ((_next-probe58990_
                                (fx+ _start58971_
                                     _i58980_
                                     (fx* _i58980_ _i58980_))))
                           (fxmodulo _next-probe58990_ _size58965_))
                         (fx+ _i58980_ '1)
                         (let ((_$e58993_ _deleted58982_))
                           (if _$e58993_ _$e58993_ _probe58978_)))
                        (if (##string=? _key58954_ _k58985_)
                            (begin
                              (vector-set!
                               _table58959_
                               _probe58978_
                               _key58954_)
                              (vector-set!
                               _table58959_
                               (fx+ _probe58978_ '1)
                               (_string-table-update!58955_
                                (vector-ref
                                 _table58959_
                                 (fx+ _probe58978_ '1)))))
                            (_loop58975_
                             (let ((_next-probe58996_
                                    (fx+ _start58971_
                                         _i58980_
                                         (fx* _i58980_ _i58980_))))
                               (fxmodulo _next-probe58996_ _size58965_))
                             (fx+ _i58980_ '1)
                             _deleted58982_))))))))))
    (define string-table-delete!
      (lambda (_tab58912_ _key58914_)
        (let ((_table58917_ (&raw-table-table _tab58912_))
              (_seed58919_ (&raw-table-seed _tab58912_)))
          (let* ((_h58922_ (fxxor (##string=?-hash _key58914_) _seed58919_))
                 (_size58925_ (vector-length _table58917_))
                 (_entries58928_ (fxquotient _size58925_ '2))
                 (_start58931_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58922_ _entries58928_)
                   '1)))
            (let _loop58935_ ((_probe58938_ _start58931_) (_i58940_ '1))
              (let ((_k58943_ (vector-ref _table58917_ _probe58938_)))
                (if (eq? _k58943_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k58943_ (macro-deleted-obj))
                        (_loop58935_
                         (let ((_next-probe58946_
                                (fx+ _start58931_
                                     _i58940_
                                     (fx* _i58940_ _i58940_))))
                           (fxmodulo _next-probe58946_ _size58925_))
                         (fx+ _i58940_ '1))
                        (if (##string=? _key58914_ _k58943_)
                            (begin
                              (vector-set!
                               _table58917_
                               _probe58938_
                               (macro-deleted-obj))
                              (vector-set!
                               _table58917_
                               (fx+ _probe58938_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab58912_
                                  (fx- (&raw-table-count _tab58912_) '1)))))
                            (_loop58935_
                             (let ((_next-probe58950_
                                    (fx+ _start58931_
                                         _i58940_
                                         (fx* _i58940_ _i58940_))))
                               (fxmodulo _next-probe58950_ _size58925_))
                             (fx+ _i58940_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_size-hint58893_ _seed58895_)
        (make-raw-table__% _size-hint58893_ immediate-hash eq? _seed58895_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_size-hint58901_ '#f) (_seed58903_ '0))
          (make-immediate-table__% _size-hint58901_ _seed58903_))))
    (define make-immediate-table__1
      (lambda (_size-hint58905_)
        (let ((_seed58907_ '0))
          (make-immediate-table__% _size-hint58905_ _seed58907_))))
    (define make-immediate-table
      (lambda _g60049_
        (let ((_g60048_ (##length _g60049_)))
          (cond ((##fx= _g60048_ 0)
                 (apply (lambda () (make-immediate-table__0)) _g60049_))
                ((##fx= _g60048_ 1)
                 (apply (lambda (_size-hint58905_)
                          (make-immediate-table__1 _size-hint58905_))
                        _g60049_))
                ((##fx= _g60048_ 2)
                 (apply (lambda (_size-hint58909_ _seed58910_)
                          (make-immediate-table__%
                           _size-hint58909_
                           _seed58910_))
                        _g60049_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g60049_))))))
    (define immediate-table-ref
      (lambda (_tab58850_ _key58851_ _default58852_)
        (let ((_table58854_ (&raw-table-table _tab58850_))
              (_seed58855_ (&raw-table-seed _tab58850_)))
          (let* ((_h58857_ (fxxor (immediate-hash _key58851_) _seed58855_))
                 (_size58860_ (vector-length _table58854_))
                 (_entries58863_ (fxquotient _size58860_ '2))
                 (_start58866_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58857_ _entries58863_)
                   '1)))
            (let _loop58870_ ((_probe58873_ _start58866_)
                              (_i58875_ '1)
                              (_deleted58877_ '#f))
              (let ((_k58880_ (vector-ref _table58854_ _probe58873_)))
                (if (eq? _k58880_ (macro-unused-obj))
                    _default58852_
                    (if (eq? _k58880_ (macro-deleted-obj))
                        (_loop58870_
                         (let ((_next-probe58883_
                                (fx+ _start58866_
                                     _i58875_
                                     (fx* _i58875_ _i58875_))))
                           (fxmodulo _next-probe58883_ _size58860_))
                         (fx+ _i58875_ '1)
                         (let ((_$e58886_ _deleted58877_))
                           (if _$e58886_ _$e58886_ _probe58873_)))
                        (if (eq? _key58851_ _k58880_)
                            (vector-ref _table58854_ (fx+ _probe58873_ '1))
                            (_loop58870_
                             (let ((_next-probe58889_
                                    (fx+ _start58866_
                                         _i58875_
                                         (fx* _i58875_ _i58875_))))
                               (fxmodulo _next-probe58889_ _size58860_))
                             (fx+ _i58875_ '1)
                             _deleted58877_))))))))))
    (define immediate-table-set!
      (lambda (_tab58846_ _key58847_ _value58848_)
        (if (fx< (&raw-table-free _tab58846_)
                 (fxquotient (vector-length (&raw-table-table _tab58846_)) '4))
            (__raw-table-rehash! _tab58846_)
            '#!void)
        (__immediate-table-set! _tab58846_ _key58847_ _value58848_)))
    (define __immediate-table-set!
      (lambda (_tab58801_ _key58802_ _value58803_)
        (let ((_table58806_ (&raw-table-table _tab58801_))
              (_seed58807_ (&raw-table-seed _tab58801_)))
          (let* ((_h58809_ (fxxor (immediate-hash _key58802_) _seed58807_))
                 (_size58812_ (vector-length _table58806_))
                 (_entries58815_ (fxquotient _size58812_ '2))
                 (_start58818_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58809_ _entries58815_)
                   '1)))
            (let _loop58822_ ((_probe58825_ _start58818_)
                              (_i58827_ '1)
                              (_deleted58829_ '#f))
              (let ((_k58832_ (vector-ref _table58806_ _probe58825_)))
                (if (eq? _k58832_ (macro-unused-obj))
                    (if _deleted58829_
                        (begin
                          (vector-set! _table58806_ _deleted58829_ _key58802_)
                          (vector-set!
                           _table58806_
                           (fx+ _deleted58829_ '1)
                           _value58803_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58801_
                              (fx+ (&raw-table-count _tab58801_) '1)))))
                        (begin
                          (vector-set! _table58806_ _probe58825_ _key58802_)
                          (vector-set!
                           _table58806_
                           (fx+ _probe58825_ '1)
                           _value58803_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58801_
                              (fx- (&raw-table-free _tab58801_) '1))
                             (&raw-table-count-set!
                              _tab58801_
                              (fx+ (&raw-table-count _tab58801_) '1))))))
                    (if (eq? _k58832_ (macro-deleted-obj))
                        (_loop58822_
                         (let ((_next-probe58837_
                                (fx+ _start58818_
                                     _i58827_
                                     (fx* _i58827_ _i58827_))))
                           (fxmodulo _next-probe58837_ _size58812_))
                         (fx+ _i58827_ '1)
                         (let ((_$e58840_ _deleted58829_))
                           (if _$e58840_ _$e58840_ _probe58825_)))
                        (if (eq? _key58802_ _k58832_)
                            (begin
                              (vector-set!
                               _table58806_
                               _probe58825_
                               _key58802_)
                              (vector-set!
                               _table58806_
                               (fx+ _probe58825_ '1)
                               _value58803_))
                            (_loop58822_
                             (let ((_next-probe58843_
                                    (fx+ _start58818_
                                         _i58827_
                                         (fx* _i58827_ _i58827_))))
                               (fxmodulo _next-probe58843_ _size58812_))
                             (fx+ _i58827_ '1)
                             _deleted58829_))))))))))
    (define immediate-table-update!
      (lambda (_tab58796_
               _key58797_
               _immediate-table-update!58798_
               _default58799_)
        (if (fx< (&raw-table-free _tab58796_)
                 (fxquotient (vector-length (&raw-table-table _tab58796_)) '4))
            (__raw-table-rehash! _tab58796_)
            '#!void)
        (__immediate-table-update!
         _tab58796_
         _key58797_
         _immediate-table-update!58798_
         _default58799_)))
    (define __immediate-table-update!
      (lambda (_tab58750_
               _key58751_
               _immediate-table-update!58752_
               _default58753_)
        (let ((_table58756_ (&raw-table-table _tab58750_))
              (_seed58757_ (&raw-table-seed _tab58750_)))
          (let* ((_h58759_ (fxxor (immediate-hash _key58751_) _seed58757_))
                 (_size58762_ (vector-length _table58756_))
                 (_entries58765_ (fxquotient _size58762_ '2))
                 (_start58768_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58759_ _entries58765_)
                   '1)))
            (let _loop58772_ ((_probe58775_ _start58768_)
                              (_i58777_ '1)
                              (_deleted58779_ '#f))
              (let ((_k58782_ (vector-ref _table58756_ _probe58775_)))
                (if (eq? _k58782_ (macro-unused-obj))
                    (if _deleted58779_
                        (begin
                          (vector-set! _table58756_ _deleted58779_ _key58751_)
                          (vector-set!
                           _table58756_
                           (fx+ _deleted58779_ '1)
                           (_immediate-table-update!58752_ _default58753_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58750_
                              (fx+ (&raw-table-count _tab58750_) '1)))))
                        (begin
                          (vector-set! _table58756_ _probe58775_ _key58751_)
                          (vector-set!
                           _table58756_
                           (fx+ _probe58775_ '1)
                           (_immediate-table-update!58752_ _default58753_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58750_
                              (fx- (&raw-table-free _tab58750_) '1))
                             (&raw-table-count-set!
                              _tab58750_
                              (fx+ (&raw-table-count _tab58750_) '1))))))
                    (if (eq? _k58782_ (macro-deleted-obj))
                        (_loop58772_
                         (let ((_next-probe58787_
                                (fx+ _start58768_
                                     _i58777_
                                     (fx* _i58777_ _i58777_))))
                           (fxmodulo _next-probe58787_ _size58762_))
                         (fx+ _i58777_ '1)
                         (let ((_$e58790_ _deleted58779_))
                           (if _$e58790_ _$e58790_ _probe58775_)))
                        (if (eq? _key58751_ _k58782_)
                            (begin
                              (vector-set!
                               _table58756_
                               _probe58775_
                               _key58751_)
                              (vector-set!
                               _table58756_
                               (fx+ _probe58775_ '1)
                               (_immediate-table-update!58752_
                                (vector-ref
                                 _table58756_
                                 (fx+ _probe58775_ '1)))))
                            (_loop58772_
                             (let ((_next-probe58793_
                                    (fx+ _start58768_
                                         _i58777_
                                         (fx* _i58777_ _i58777_))))
                               (fxmodulo _next-probe58793_ _size58762_))
                             (fx+ _i58777_ '1)
                             _deleted58779_))))))))))
    (define immediate-table-delete!
      (lambda (_tab58709_ _key58711_)
        (let ((_table58714_ (&raw-table-table _tab58709_))
              (_seed58716_ (&raw-table-seed _tab58709_)))
          (let* ((_h58719_ (fxxor (immediate-hash _key58711_) _seed58716_))
                 (_size58722_ (vector-length _table58714_))
                 (_entries58725_ (fxquotient _size58722_ '2))
                 (_start58728_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58719_ _entries58725_)
                   '1)))
            (let _loop58732_ ((_probe58735_ _start58728_) (_i58737_ '1))
              (let ((_k58740_ (vector-ref _table58714_ _probe58735_)))
                (if (eq? _k58740_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k58740_ (macro-deleted-obj))
                        (_loop58732_
                         (let ((_next-probe58743_
                                (fx+ _start58728_
                                     _i58737_
                                     (fx* _i58737_ _i58737_))))
                           (fxmodulo _next-probe58743_ _size58722_))
                         (fx+ _i58737_ '1))
                        (if (eq? _key58711_ _k58740_)
                            (begin
                              (vector-set!
                               _table58714_
                               _probe58735_
                               (macro-deleted-obj))
                              (vector-set!
                               _table58714_
                               (fx+ _probe58735_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab58709_
                                  (fx- (&raw-table-count _tab58709_) '1)))))
                            (_loop58732_
                             (let ((_next-probe58747_
                                    (fx+ _start58728_
                                         _i58737_
                                         (fx* _i58737_ _i58737_))))
                               (fxmodulo _next-probe58747_ _size58722_))
                             (fx+ _i58737_ '1)))))))))))
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
      (lambda (_tab58707_)
        (##unchecked-structure-ref
         _tab58707_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_tab58705_)
        (##unchecked-structure-ref
         _tab58705_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_tab58702_ _val58703_)
        (##unchecked-structure-set!
         _tab58702_
         _val58703_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_tab58699_ _val58700_)
        (##unchecked-structure-set!
         _tab58699_
         _val58700_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_size-hint58675_ _klass58676_ _flags58677_)
        (let ((_gcht58679_
               (__gc-table-new
                (if (fixnum? _size-hint58675_) _size-hint58675_ '16)
                _flags58677_)))
          (##structure _klass58676_ _gcht58679_ '#f))))
    (define make-gc-table__0
      (lambda (_size-hint58684_)
        (let* ((_klass58686_ __gc-table::t) (_flags58688_ '0))
          (make-gc-table__% _size-hint58684_ _klass58686_ _flags58688_))))
    (define make-gc-table__1
      (lambda (_size-hint58690_ _klass58691_)
        (let ((_flags58693_ '0))
          (make-gc-table__% _size-hint58690_ _klass58691_ _flags58693_))))
    (define make-gc-table
      (lambda _g60051_
        (let ((_g60050_ (##length _g60051_)))
          (cond ((##fx= _g60050_ 1)
                 (apply (lambda (_size-hint58684_)
                          (make-gc-table__0 _size-hint58684_))
                        _g60051_))
                ((##fx= _g60050_ 2)
                 (apply (lambda (_size-hint58690_ _klass58691_)
                          (make-gc-table__1 _size-hint58690_ _klass58691_))
                        _g60051_))
                ((##fx= _g60050_ 3)
                 (apply (lambda (_size-hint58695_ _klass58696_ _flags58697_)
                          (make-gc-table__%
                           _size-hint58695_
                           _klass58696_
                           _flags58697_))
                        _g60051_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g60051_))))))
    (define __gc-table-immediate
      (lambda (_tab58667_)
        (let ((_$e58669_ (&gc-table-immediate _tab58667_)))
          (if _$e58669_
              _$e58669_
              (let ((_immediate58672_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _tab58667_ _immediate58672_)
                _immediate58672_)))))
    (define __gc-table-new
      (lambda (_size58657_ _flags58658_)
        (let* ((_flags58660_
                (fxand _flags58658_
                       (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_flags58662_
                (fxior _flags58660_ (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_gcht58664_
                (##gc-hash-table-allocate
                 _size58657_
                 _flags58662_
                 __gc-table-loads)))
          (macro-gc-hash-table-free-set!
           _gcht58664_
           (macro-gc-hash-table-size _gcht58664_))
          (macro-gc-hash-table-count-set! _gcht58664_ '0)
          _gcht58664_)))
    (define __gc-table-e
      (lambda (_tab58652_)
        (declare (not interrupts-enabled))
        (let ((_gcht58655_ (&gc-table-gcht _tab58652_)))
          (if (fx= '0
                   (fxand (macro-gc-hash-table-flags _gcht58655_)
                          (macro-gc-hash-table-flag-need-rehash)))
              _gcht58655_
              (begin
                (__gc-table-rehash! _tab58652_)
                (&gc-table-gcht _tab58652_))))))
    (define __gc-table-rehash!
      (lambda (_tab58642_)
        (declare (not interrupts-enabled))
        (let* ((_old-table58645_ (&gc-table-gcht _tab58642_))
               (_new-table58647_
                (##gc-hash-table-resize! _old-table58645_ __gc-table-loads))
               (_gcht58649_
                (##gc-hash-table-rehash! _old-table58645_ _new-table58647_)))
          (&gc-table-gcht-set! _tab58642_ _gcht58649_))))
    (define __gc-table-grow!
      (lambda (_tab58632_)
        (declare (not interrupts-enabled))
        (let* ((_old-table58635_ (&gc-table-gcht _tab58632_))
               (_new-table58637_
                (__gc-table-new
                 (fx* '2 (macro-gc-hash-table-size _old-table58635_))
                 (macro-gc-hash-table-flags _old-table58635_)))
               (_gcht58639_
                (##gc-hash-table-rehash! _old-table58635_ _new-table58637_)))
          (&gc-table-gcht-set! _tab58632_ _gcht58639_))))
    (define gc-table-ref
      (lambda (_tab58618_ _key58619_ _default58620_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key58619_)
            (let* ((_gcht58623_ (__gc-table-e _tab58618_))
                   (_value58625_ (##gc-hash-table-ref _gcht58623_ _key58619_)))
              (if (eq? _value58625_ (macro-unused-obj))
                  _default58620_
                  _value58625_))
            (let ((_$e58627_ (&gc-table-immediate _tab58618_)))
              (if _$e58627_
                  ((lambda (_immediate58630_)
                     (immediate-table-ref
                      _immediate58630_
                      _key58619_
                      _default58620_))
                   _$e58627_)
                  _default58620_)))))
    (define gc-table-set!
      (lambda (_tab58608_ _key58609_ _value58610_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key58609_)
            (let* ((_gcht58613_ (__gc-table-e _tab58608_))
                   (_half-full58615_
                    (fxquotient (macro-gc-hash-table-size _gcht58613_) '2)))
              (if (fx< (macro-gc-hash-table-free _gcht58613_) _half-full58615_)
                  (begin
                    (if (fx> (macro-gc-hash-table-count _gcht58613_)
                             _half-full58615_)
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
