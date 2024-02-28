(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1709125254)
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
      (lambda (_tab60017_)
        (##unchecked-structure-ref _tab60017_ '1 __table::t 'raw-table-table)))
    (define &raw-table-count
      (lambda (_tab60015_)
        (##unchecked-structure-ref _tab60015_ '2 __table::t 'raw-table-count)))
    (define &raw-table-free
      (lambda (_tab60013_)
        (##unchecked-structure-ref _tab60013_ '3 __table::t 'raw-table-free)))
    (define &raw-table-hash
      (lambda (_tab60011_)
        (##unchecked-structure-ref _tab60011_ '4 __table::t 'raw-table-hash)))
    (define &raw-table-test
      (lambda (_tab60009_)
        (##unchecked-structure-ref _tab60009_ '5 __table::t 'raw-table-test)))
    (define &raw-table-seed
      (lambda (_tab60007_)
        (##unchecked-structure-ref _tab60007_ '6 __table::t 'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_tab60004_ _val60005_)
        (##unchecked-structure-set!
         _tab60004_
         _val60005_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_tab60001_ _val60002_)
        (##unchecked-structure-set!
         _tab60001_
         _val60002_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_tab59998_ _val59999_)
        (##unchecked-structure-set!
         _tab59998_
         _val59999_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_tab59995_ _val59996_)
        (##unchecked-structure-set!
         _tab59995_
         _val59996_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_tab59992_ _val59993_)
        (##unchecked-structure-set!
         _tab59992_
         _val59993_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_tab59989_ _val59990_)
        (##unchecked-structure-set!
         _tab59989_
         _val59990_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_size-hint59987_)
        (if (and (fixnum? _size-hint59987_) (fx> _size-hint59987_ '0))
            (fx* (fxmax '2 (expt '2 (integer-length _size-hint59987_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_size-hint59963_ _hash59964_ _test59965_ _seed59966_)
        (let* ((_size59968_ (raw-table-size-hint->size _size-hint59963_))
               (_table59970_ (make-vector _size59968_ (macro-unused-obj))))
          (##structure
           __table::t
           _table59970_
           '0
           (fxquotient _size59968_ '2)
           _hash59964_
           _test59965_
           _seed59966_))))
    (define make-raw-table__0
      (lambda (_size-hint59976_ _hash59977_ _test59978_)
        (let ((_seed59980_ '0))
          (make-raw-table__%
           _size-hint59976_
           _hash59977_
           _test59978_
           _seed59980_))))
    (define make-raw-table
      (lambda _g60019_
        (let ((_g60018_ (##length _g60019_)))
          (cond ((##fx= _g60018_ 3)
                 (apply (lambda (_size-hint59976_ _hash59977_ _test59978_)
                          (make-raw-table__0
                           _size-hint59976_
                           _hash59977_
                           _test59978_))
                        _g60019_))
                ((##fx= _g60018_ 4)
                 (apply (lambda (_size-hint59982_
                                 _hash59983_
                                 _test59984_
                                 _seed59985_)
                          (make-raw-table__%
                           _size-hint59982_
                           _hash59983_
                           _test59984_
                           _seed59985_))
                        _g60019_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g60019_))))))
    (define raw-table-ref
      (lambda (_tab59918_ _key59919_ _default59920_)
        (let ((_table59922_ (&raw-table-table _tab59918_))
              (_seed59923_ (&raw-table-seed _tab59918_))
              (_hash59924_ (&raw-table-hash _tab59918_))
              (_test59925_ (&raw-table-test _tab59918_)))
          (let* ((_h59927_ (fxxor (_hash59924_ _key59919_) _seed59923_))
                 (_size59930_ (vector-length _table59922_))
                 (_entries59933_ (fxquotient _size59930_ '2))
                 (_start59936_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59927_ _entries59933_)
                   '1)))
            (let _loop59940_ ((_probe59943_ _start59936_)
                              (_i59945_ '1)
                              (_deleted59947_ '#f))
              (let ((_k59950_ (vector-ref _table59922_ _probe59943_)))
                (if (eq? _k59950_ (macro-unused-obj))
                    _default59920_
                    (if (eq? _k59950_ (macro-deleted-obj))
                        (_loop59940_
                         (let ((_next-probe59953_
                                (fx+ _start59936_
                                     _i59945_
                                     (fx* _i59945_ _i59945_))))
                           (fxmodulo _next-probe59953_ _size59930_))
                         (fx+ _i59945_ '1)
                         (let ((_$e59956_ _deleted59947_))
                           (if _$e59956_ _$e59956_ _probe59943_)))
                        (if (_test59925_ _key59919_ _k59950_)
                            (vector-ref _table59922_ (fx+ _probe59943_ '1))
                            (_loop59940_
                             (let ((_next-probe59959_
                                    (fx+ _start59936_
                                         _i59945_
                                         (fx* _i59945_ _i59945_))))
                               (fxmodulo _next-probe59959_ _size59930_))
                             (fx+ _i59945_ '1)
                             _deleted59947_))))))))))
    (define raw-table-set!
      (lambda (_tab59914_ _key59915_ _value59916_)
        (if (fx< (&raw-table-free _tab59914_)
                 (fxquotient (vector-length (&raw-table-table _tab59914_)) '4))
            (__raw-table-rehash! _tab59914_)
            '#!void)
        (__raw-table-set! _tab59914_ _key59915_ _value59916_)))
    (define raw-table-update!
      (lambda (_tab59909_ _key59910_ _update59911_ _default59912_)
        (if (fx< (&raw-table-free _tab59909_)
                 (fxquotient (vector-length (&raw-table-table _tab59909_)) '4))
            (__raw-table-rehash! _tab59909_)
            '#!void)
        (__raw-table-update!
         _tab59909_
         _key59910_
         _update59911_
         _default59912_)))
    (define raw-table-delete!
      (lambda (_tab59870_ _key59871_)
        (let ((_table59873_ (&raw-table-table _tab59870_))
              (_seed59874_ (&raw-table-seed _tab59870_))
              (_hash59875_ (&raw-table-hash _tab59870_))
              (_test59876_ (&raw-table-test _tab59870_)))
          (let* ((_h59878_ (fxxor (_hash59875_ _key59871_) _seed59874_))
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
                        (if (_test59876_ _key59871_ _k59899_)
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
                                  _tab59870_
                                  (fx- (&raw-table-count _tab59870_) '1)))))
                            (_loop59891_
                             (let ((_next-probe59906_
                                    (fx+ _start59887_
                                         _i59896_
                                         (fx* _i59896_ _i59896_))))
                               (fxmodulo _next-probe59906_ _size59881_))
                             (fx+ _i59896_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_tab59854_ _proc59855_)
        (let* ((_table59857_ (&raw-table-table _tab59854_))
               (_size59859_ (vector-length _table59857_)))
          (let _loop59862_ ((_i59864_ '0))
            (if (fx< _i59864_ _size59859_)
                (begin
                  (let ((_key59866_ (vector-ref _table59857_ _i59864_)))
                    (if (and (not (eq? _key59866_ (macro-unused-obj)))
                             (not (eq? _key59866_ (macro-deleted-obj))))
                        (let ((_value59868_
                               (vector-ref _table59857_ (fx+ _i59864_ '1))))
                          (_proc59855_ _key59866_ _value59868_))
                        '#!void))
                  (_loop59862_ (fx+ _i59864_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_tab59850_)
        (let ((_new-tab59852_ (##structure-copy _tab59850_)))
          (&raw-table-table-set!
           _new-tab59852_
           (vector-copy (&raw-table-table _tab59850_)))
          _new-tab59852_)))
    (define raw-table-clear!
      (lambda (_tab59848_)
        (vector-fill! (&raw-table-table _tab59848_) (macro-unused-obj))
        (&raw-table-count-set! _tab59848_ '0)
        (&raw-table-free-set!
         _tab59848_
         (fxquotient (vector-length (&raw-table-table _tab59848_)) '2))))
    (define __raw-table-set!
      (lambda (_tab59802_ _key59803_ _value59804_)
        (let ((_table59806_ (&raw-table-table _tab59802_))
              (_seed59807_ (&raw-table-seed _tab59802_))
              (_hash59808_ (&raw-table-hash _tab59802_))
              (_test59809_ (&raw-table-test _tab59802_)))
          (let* ((_h59811_ (fxxor (_hash59808_ _key59803_) _seed59807_))
                 (_size59814_ (vector-length _table59806_))
                 (_entries59817_ (fxquotient _size59814_ '2))
                 (_start59820_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59811_ _entries59817_)
                   '1)))
            (let _loop59824_ ((_probe59827_ _start59820_)
                              (_i59829_ '1)
                              (_deleted59831_ '#f))
              (let ((_k59834_ (vector-ref _table59806_ _probe59827_)))
                (if (eq? _k59834_ (macro-unused-obj))
                    (if _deleted59831_
                        (begin
                          (vector-set! _table59806_ _deleted59831_ _key59803_)
                          (vector-set!
                           _table59806_
                           (fx+ _deleted59831_ '1)
                           _value59804_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59802_
                              (fx+ (&raw-table-count _tab59802_) '1)))))
                        (begin
                          (vector-set! _table59806_ _probe59827_ _key59803_)
                          (vector-set!
                           _table59806_
                           (fx+ _probe59827_ '1)
                           _value59804_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59802_
                              (fx- (&raw-table-free _tab59802_) '1))
                             (&raw-table-count-set!
                              _tab59802_
                              (fx+ (&raw-table-count _tab59802_) '1))))))
                    (if (eq? _k59834_ (macro-deleted-obj))
                        (_loop59824_
                         (let ((_next-probe59839_
                                (fx+ _start59820_
                                     _i59829_
                                     (fx* _i59829_ _i59829_))))
                           (fxmodulo _next-probe59839_ _size59814_))
                         (fx+ _i59829_ '1)
                         (let ((_$e59842_ _deleted59831_))
                           (if _$e59842_ _$e59842_ _probe59827_)))
                        (if (_test59809_ _key59803_ _k59834_)
                            (begin
                              (vector-set!
                               _table59806_
                               _probe59827_
                               _key59803_)
                              (vector-set!
                               _table59806_
                               (fx+ _probe59827_ '1)
                               _value59804_))
                            (_loop59824_
                             (let ((_next-probe59845_
                                    (fx+ _start59820_
                                         _i59829_
                                         (fx* _i59829_ _i59829_))))
                               (fxmodulo _next-probe59845_ _size59814_))
                             (fx+ _i59829_ '1)
                             _deleted59831_))))))))))
    (define __raw-table-update!
      (lambda (_tab59755_ _key59756_ _update59757_ _default59758_)
        (let ((_table59760_ (&raw-table-table _tab59755_))
              (_seed59761_ (&raw-table-seed _tab59755_))
              (_hash59762_ (&raw-table-hash _tab59755_))
              (_test59763_ (&raw-table-test _tab59755_)))
          (let* ((_h59765_ (fxxor (_hash59762_ _key59756_) _seed59761_))
                 (_size59768_ (vector-length _table59760_))
                 (_entries59771_ (fxquotient _size59768_ '2))
                 (_start59774_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59765_ _entries59771_)
                   '1)))
            (let _loop59778_ ((_probe59781_ _start59774_)
                              (_i59783_ '1)
                              (_deleted59785_ '#f))
              (let ((_k59788_ (vector-ref _table59760_ _probe59781_)))
                (if (eq? _k59788_ (macro-unused-obj))
                    (if _deleted59785_
                        (begin
                          (vector-set! _table59760_ _deleted59785_ _key59756_)
                          (vector-set!
                           _table59760_
                           (fx+ _deleted59785_ '1)
                           (_update59757_ _default59758_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59755_
                              (fx+ (&raw-table-count _tab59755_) '1)))))
                        (begin
                          (vector-set! _table59760_ _probe59781_ _key59756_)
                          (vector-set!
                           _table59760_
                           (fx+ _probe59781_ '1)
                           (_update59757_ _default59758_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59755_
                              (fx- (&raw-table-free _tab59755_) '1))
                             (&raw-table-count-set!
                              _tab59755_
                              (fx+ (&raw-table-count _tab59755_) '1))))))
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
                        (if (_test59763_ _key59756_ _k59788_)
                            (begin
                              (vector-set!
                               _table59760_
                               _probe59781_
                               _key59756_)
                              (vector-set!
                               _table59760_
                               (fx+ _probe59781_ '1)
                               (_update59757_
                                (vector-ref
                                 _table59760_
                                 (fx+ _probe59781_ '1)))))
                            (_loop59778_
                             (let ((_next-probe59799_
                                    (fx+ _start59774_
                                         _i59783_
                                         (fx* _i59783_ _i59783_))))
                               (fxmodulo _next-probe59799_ _size59768_))
                             (fx+ _i59783_ '1)
                             _deleted59785_))))))))))
    (define __raw-table-rehash!
      (lambda (_tab59736_)
        (let* ((_old-table59738_ (&raw-table-table _tab59736_))
               (_old-size59740_ (vector-length _old-table59738_))
               (_new-size59742_
                (if (fx< (&raw-table-count _tab59736_)
                         (fxquotient _old-size59740_ '4))
                    (vector-length _old-table59738_)
                    (fx* '2 (vector-length _old-table59738_))))
               (_new-table59744_
                (make-vector _new-size59742_ (macro-unused-obj))))
          (&raw-table-table-set! _tab59736_ _new-table59744_)
          (&raw-table-count-set! _tab59736_ '0)
          (&raw-table-free-set! _tab59736_ (fxquotient _new-size59742_ '2))
          (let _lp59747_ ((_i59749_ '0))
            (if (fx< _i59749_ _old-size59740_)
                (begin
                  (let ((_key59751_ (vector-ref _old-table59738_ _i59749_)))
                    (if (and (not (eq? _key59751_ (macro-unused-obj)))
                             (not (eq? _key59751_ (macro-deleted-obj))))
                        (let ((_value59753_
                               (vector-ref
                                _old-table59738_
                                (fx+ _i59749_ '1))))
                          (__raw-table-set!
                           _tab59736_
                           _key59751_
                           _value59753_))
                        '#!void))
                  (_lp59747_ (fx+ _i59749_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_obj59732_)
        (let ((_t59734_ (##type _obj59732_)))
          (if (fx= (fxand _t59734_ '1) '0)
              (fxand (##type-cast _obj59732_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _obj59732_)
                  (symbolic-hash _obj59732_)
                  (if (procedure? _obj59732_)
                      (procedure-hash _obj59732_)
                      (fxand (__eq-hash _obj59732_) (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_obj59728_)
        (let ((_h59730_
               (if (##closure? _obj59728_)
                   (__eq-hash _obj59728_)
                   (##type-cast _obj59728_ '0))))
          (fxand _h59730_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_obj59725_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _obj59725_)))
    (define eqv-hash
      (lambda (_obj59715_)
        (letrec ((_combine59717_
                  (lambda (_a59722_ _b59723_)
                    (fxand (fx* (fx+ _a59722_
                                     (fxarithmetic-shift-left _b59723_ '1))
                                '331804471)
                           (macro-max-fixnum32))))
                 (_hash59718_
                  (lambda (_obj59720_)
                    (macro-number-dispatch
                     _obj59720_
                     (eq-hash _obj59720_)
                     (fxand _obj59720_ (macro-max-fixnum32))
                     (modulo _obj59720_ '331804481)
                     (_combine59717_
                      (_hash59718_ (macro-ratnum-numerator _obj59720_))
                      (_hash59718_ (macro-ratnum-denominator _obj59720_)))
                     (_combine59717_
                      (##u16vector-ref _obj59720_ '0)
                      (_combine59717_
                       (##u16vector-ref _obj59720_ '1)
                       (_combine59717_
                        (##u16vector-ref _obj59720_ '2)
                        (##u16vector-ref _obj59720_ '3))))
                     (_combine59717_
                      (_hash59718_ (macro-cpxnum-real _obj59720_))
                      (_hash59718_ (macro-cpxnum-imag _obj59720_)))))))
          (_hash59718_ _obj59715_))))
    (define symbolic?
      (lambda (_obj59710_)
        (let ((_$e59712_ (symbol? _obj59710_)))
          (if _$e59712_ _$e59712_ (keyword? _obj59710_)))))
    (define symbolic-hash (lambda (_obj59708_) (macro-slot '1 _obj59708_)))
    (define string-hash (lambda (_obj59706_) (##string=?-hash _obj59706_)))
    (define immediate-hash
      (lambda (_obj59704_) (##type-cast _obj59704_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_size-hint59685_ _seed59687_)
        (make-raw-table__% _size-hint59685_ eq-hash eq? _seed59687_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_size-hint59693_ '#f) (_seed59695_ '0))
          (make-eq-table__% _size-hint59693_ _seed59695_))))
    (define make-eq-table__1
      (lambda (_size-hint59697_)
        (let ((_seed59699_ '0))
          (make-eq-table__% _size-hint59697_ _seed59699_))))
    (define make-eq-table
      (lambda _g60021_
        (let ((_g60020_ (##length _g60021_)))
          (cond ((##fx= _g60020_ 0)
                 (apply (lambda () (make-eq-table__0)) _g60021_))
                ((##fx= _g60020_ 1)
                 (apply (lambda (_size-hint59697_)
                          (make-eq-table__1 _size-hint59697_))
                        _g60021_))
                ((##fx= _g60020_ 2)
                 (apply (lambda (_size-hint59701_ _seed59702_)
                          (make-eq-table__% _size-hint59701_ _seed59702_))
                        _g60021_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g60021_))))))
    (define eq-table-ref
      (lambda (_tab59642_ _key59643_ _default59644_)
        (let ((_table59646_ (&raw-table-table _tab59642_))
              (_seed59647_ (&raw-table-seed _tab59642_)))
          (let* ((_h59649_ (fxxor (eq-hash _key59643_) _seed59647_))
                 (_size59652_ (vector-length _table59646_))
                 (_entries59655_ (fxquotient _size59652_ '2))
                 (_start59658_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59649_ _entries59655_)
                   '1)))
            (let _loop59662_ ((_probe59665_ _start59658_)
                              (_i59667_ '1)
                              (_deleted59669_ '#f))
              (let ((_k59672_ (vector-ref _table59646_ _probe59665_)))
                (if (eq? _k59672_ (macro-unused-obj))
                    _default59644_
                    (if (eq? _k59672_ (macro-deleted-obj))
                        (_loop59662_
                         (let ((_next-probe59675_
                                (fx+ _start59658_
                                     _i59667_
                                     (fx* _i59667_ _i59667_))))
                           (fxmodulo _next-probe59675_ _size59652_))
                         (fx+ _i59667_ '1)
                         (let ((_$e59678_ _deleted59669_))
                           (if _$e59678_ _$e59678_ _probe59665_)))
                        (if (eq? _key59643_ _k59672_)
                            (vector-ref _table59646_ (fx+ _probe59665_ '1))
                            (_loop59662_
                             (let ((_next-probe59681_
                                    (fx+ _start59658_
                                         _i59667_
                                         (fx* _i59667_ _i59667_))))
                               (fxmodulo _next-probe59681_ _size59652_))
                             (fx+ _i59667_ '1)
                             _deleted59669_))))))))))
    (define eq-table-set!
      (lambda (_tab59638_ _key59639_ _value59640_)
        (if (fx< (&raw-table-free _tab59638_)
                 (fxquotient (vector-length (&raw-table-table _tab59638_)) '4))
            (__raw-table-rehash! _tab59638_)
            '#!void)
        (__eq-table-set! _tab59638_ _key59639_ _value59640_)))
    (define __eq-table-set!
      (lambda (_tab59593_ _key59594_ _value59595_)
        (let ((_table59598_ (&raw-table-table _tab59593_))
              (_seed59599_ (&raw-table-seed _tab59593_)))
          (let* ((_h59601_ (fxxor (eq-hash _key59594_) _seed59599_))
                 (_size59604_ (vector-length _table59598_))
                 (_entries59607_ (fxquotient _size59604_ '2))
                 (_start59610_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59601_ _entries59607_)
                   '1)))
            (let _loop59614_ ((_probe59617_ _start59610_)
                              (_i59619_ '1)
                              (_deleted59621_ '#f))
              (let ((_k59624_ (vector-ref _table59598_ _probe59617_)))
                (if (eq? _k59624_ (macro-unused-obj))
                    (if _deleted59621_
                        (begin
                          (vector-set! _table59598_ _deleted59621_ _key59594_)
                          (vector-set!
                           _table59598_
                           (fx+ _deleted59621_ '1)
                           _value59595_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59593_
                              (fx+ (&raw-table-count _tab59593_) '1)))))
                        (begin
                          (vector-set! _table59598_ _probe59617_ _key59594_)
                          (vector-set!
                           _table59598_
                           (fx+ _probe59617_ '1)
                           _value59595_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59593_
                              (fx- (&raw-table-free _tab59593_) '1))
                             (&raw-table-count-set!
                              _tab59593_
                              (fx+ (&raw-table-count _tab59593_) '1))))))
                    (if (eq? _k59624_ (macro-deleted-obj))
                        (_loop59614_
                         (let ((_next-probe59629_
                                (fx+ _start59610_
                                     _i59619_
                                     (fx* _i59619_ _i59619_))))
                           (fxmodulo _next-probe59629_ _size59604_))
                         (fx+ _i59619_ '1)
                         (let ((_$e59632_ _deleted59621_))
                           (if _$e59632_ _$e59632_ _probe59617_)))
                        (if (eq? _key59594_ _k59624_)
                            (begin
                              (vector-set!
                               _table59598_
                               _probe59617_
                               _key59594_)
                              (vector-set!
                               _table59598_
                               (fx+ _probe59617_ '1)
                               _value59595_))
                            (_loop59614_
                             (let ((_next-probe59635_
                                    (fx+ _start59610_
                                         _i59619_
                                         (fx* _i59619_ _i59619_))))
                               (fxmodulo _next-probe59635_ _size59604_))
                             (fx+ _i59619_ '1)
                             _deleted59621_))))))))))
    (define eq-table-update!
      (lambda (_tab59588_ _key59589_ _eq-table-update!59590_ _default59591_)
        (if (fx< (&raw-table-free _tab59588_)
                 (fxquotient (vector-length (&raw-table-table _tab59588_)) '4))
            (__raw-table-rehash! _tab59588_)
            '#!void)
        (__eq-table-update!
         _tab59588_
         _key59589_
         _eq-table-update!59590_
         _default59591_)))
    (define __eq-table-update!
      (lambda (_tab59542_ _key59543_ _eq-table-update!59544_ _default59545_)
        (let ((_table59548_ (&raw-table-table _tab59542_))
              (_seed59549_ (&raw-table-seed _tab59542_)))
          (let* ((_h59551_ (fxxor (eq-hash _key59543_) _seed59549_))
                 (_size59554_ (vector-length _table59548_))
                 (_entries59557_ (fxquotient _size59554_ '2))
                 (_start59560_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59551_ _entries59557_)
                   '1)))
            (let _loop59564_ ((_probe59567_ _start59560_)
                              (_i59569_ '1)
                              (_deleted59571_ '#f))
              (let ((_k59574_ (vector-ref _table59548_ _probe59567_)))
                (if (eq? _k59574_ (macro-unused-obj))
                    (if _deleted59571_
                        (begin
                          (vector-set! _table59548_ _deleted59571_ _key59543_)
                          (vector-set!
                           _table59548_
                           (fx+ _deleted59571_ '1)
                           (_eq-table-update!59544_ _default59545_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59542_
                              (fx+ (&raw-table-count _tab59542_) '1)))))
                        (begin
                          (vector-set! _table59548_ _probe59567_ _key59543_)
                          (vector-set!
                           _table59548_
                           (fx+ _probe59567_ '1)
                           (_eq-table-update!59544_ _default59545_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59542_
                              (fx- (&raw-table-free _tab59542_) '1))
                             (&raw-table-count-set!
                              _tab59542_
                              (fx+ (&raw-table-count _tab59542_) '1))))))
                    (if (eq? _k59574_ (macro-deleted-obj))
                        (_loop59564_
                         (let ((_next-probe59579_
                                (fx+ _start59560_
                                     _i59569_
                                     (fx* _i59569_ _i59569_))))
                           (fxmodulo _next-probe59579_ _size59554_))
                         (fx+ _i59569_ '1)
                         (let ((_$e59582_ _deleted59571_))
                           (if _$e59582_ _$e59582_ _probe59567_)))
                        (if (eq? _key59543_ _k59574_)
                            (begin
                              (vector-set!
                               _table59548_
                               _probe59567_
                               _key59543_)
                              (vector-set!
                               _table59548_
                               (fx+ _probe59567_ '1)
                               (_eq-table-update!59544_
                                (vector-ref
                                 _table59548_
                                 (fx+ _probe59567_ '1)))))
                            (_loop59564_
                             (let ((_next-probe59585_
                                    (fx+ _start59560_
                                         _i59569_
                                         (fx* _i59569_ _i59569_))))
                               (fxmodulo _next-probe59585_ _size59554_))
                             (fx+ _i59569_ '1)
                             _deleted59571_))))))))))
    (define eq-table-delete!
      (lambda (_tab59501_ _key59503_)
        (let ((_table59506_ (&raw-table-table _tab59501_))
              (_seed59508_ (&raw-table-seed _tab59501_)))
          (let* ((_h59511_ (fxxor (eq-hash _key59503_) _seed59508_))
                 (_size59514_ (vector-length _table59506_))
                 (_entries59517_ (fxquotient _size59514_ '2))
                 (_start59520_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59511_ _entries59517_)
                   '1)))
            (let _loop59524_ ((_probe59527_ _start59520_) (_i59529_ '1))
              (let ((_k59532_ (vector-ref _table59506_ _probe59527_)))
                (if (eq? _k59532_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59532_ (macro-deleted-obj))
                        (_loop59524_
                         (let ((_next-probe59535_
                                (fx+ _start59520_
                                     _i59529_
                                     (fx* _i59529_ _i59529_))))
                           (fxmodulo _next-probe59535_ _size59514_))
                         (fx+ _i59529_ '1))
                        (if (eq? _key59503_ _k59532_)
                            (begin
                              (vector-set!
                               _table59506_
                               _probe59527_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59506_
                               (fx+ _probe59527_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59501_
                                  (fx- (&raw-table-count _tab59501_) '1)))))
                            (_loop59524_
                             (let ((_next-probe59539_
                                    (fx+ _start59520_
                                         _i59529_
                                         (fx* _i59529_ _i59529_))))
                               (fxmodulo _next-probe59539_ _size59514_))
                             (fx+ _i59529_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_size-hint59482_ _seed59484_)
        (make-raw-table__% _size-hint59482_ eqv-hash eqv? _seed59484_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_size-hint59490_ '#f) (_seed59492_ '0))
          (make-eqv-table__% _size-hint59490_ _seed59492_))))
    (define make-eqv-table__1
      (lambda (_size-hint59494_)
        (let ((_seed59496_ '0))
          (make-eqv-table__% _size-hint59494_ _seed59496_))))
    (define make-eqv-table
      (lambda _g60023_
        (let ((_g60022_ (##length _g60023_)))
          (cond ((##fx= _g60022_ 0)
                 (apply (lambda () (make-eqv-table__0)) _g60023_))
                ((##fx= _g60022_ 1)
                 (apply (lambda (_size-hint59494_)
                          (make-eqv-table__1 _size-hint59494_))
                        _g60023_))
                ((##fx= _g60022_ 2)
                 (apply (lambda (_size-hint59498_ _seed59499_)
                          (make-eqv-table__% _size-hint59498_ _seed59499_))
                        _g60023_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g60023_))))))
    (define eqv-table-ref
      (lambda (_tab59439_ _key59440_ _default59441_)
        (let ((_table59443_ (&raw-table-table _tab59439_))
              (_seed59444_ (&raw-table-seed _tab59439_)))
          (let* ((_h59446_ (fxxor (eqv-hash _key59440_) _seed59444_))
                 (_size59449_ (vector-length _table59443_))
                 (_entries59452_ (fxquotient _size59449_ '2))
                 (_start59455_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59446_ _entries59452_)
                   '1)))
            (let _loop59459_ ((_probe59462_ _start59455_)
                              (_i59464_ '1)
                              (_deleted59466_ '#f))
              (let ((_k59469_ (vector-ref _table59443_ _probe59462_)))
                (if (eq? _k59469_ (macro-unused-obj))
                    _default59441_
                    (if (eq? _k59469_ (macro-deleted-obj))
                        (_loop59459_
                         (let ((_next-probe59472_
                                (fx+ _start59455_
                                     _i59464_
                                     (fx* _i59464_ _i59464_))))
                           (fxmodulo _next-probe59472_ _size59449_))
                         (fx+ _i59464_ '1)
                         (let ((_$e59475_ _deleted59466_))
                           (if _$e59475_ _$e59475_ _probe59462_)))
                        (if (eqv? _key59440_ _k59469_)
                            (vector-ref _table59443_ (fx+ _probe59462_ '1))
                            (_loop59459_
                             (let ((_next-probe59478_
                                    (fx+ _start59455_
                                         _i59464_
                                         (fx* _i59464_ _i59464_))))
                               (fxmodulo _next-probe59478_ _size59449_))
                             (fx+ _i59464_ '1)
                             _deleted59466_))))))))))
    (define eqv-table-set!
      (lambda (_tab59435_ _key59436_ _value59437_)
        (if (fx< (&raw-table-free _tab59435_)
                 (fxquotient (vector-length (&raw-table-table _tab59435_)) '4))
            (__raw-table-rehash! _tab59435_)
            '#!void)
        (__eqv-table-set! _tab59435_ _key59436_ _value59437_)))
    (define __eqv-table-set!
      (lambda (_tab59390_ _key59391_ _value59392_)
        (let ((_table59395_ (&raw-table-table _tab59390_))
              (_seed59396_ (&raw-table-seed _tab59390_)))
          (let* ((_h59398_ (fxxor (eqv-hash _key59391_) _seed59396_))
                 (_size59401_ (vector-length _table59395_))
                 (_entries59404_ (fxquotient _size59401_ '2))
                 (_start59407_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59398_ _entries59404_)
                   '1)))
            (let _loop59411_ ((_probe59414_ _start59407_)
                              (_i59416_ '1)
                              (_deleted59418_ '#f))
              (let ((_k59421_ (vector-ref _table59395_ _probe59414_)))
                (if (eq? _k59421_ (macro-unused-obj))
                    (if _deleted59418_
                        (begin
                          (vector-set! _table59395_ _deleted59418_ _key59391_)
                          (vector-set!
                           _table59395_
                           (fx+ _deleted59418_ '1)
                           _value59392_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59390_
                              (fx+ (&raw-table-count _tab59390_) '1)))))
                        (begin
                          (vector-set! _table59395_ _probe59414_ _key59391_)
                          (vector-set!
                           _table59395_
                           (fx+ _probe59414_ '1)
                           _value59392_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59390_
                              (fx- (&raw-table-free _tab59390_) '1))
                             (&raw-table-count-set!
                              _tab59390_
                              (fx+ (&raw-table-count _tab59390_) '1))))))
                    (if (eq? _k59421_ (macro-deleted-obj))
                        (_loop59411_
                         (let ((_next-probe59426_
                                (fx+ _start59407_
                                     _i59416_
                                     (fx* _i59416_ _i59416_))))
                           (fxmodulo _next-probe59426_ _size59401_))
                         (fx+ _i59416_ '1)
                         (let ((_$e59429_ _deleted59418_))
                           (if _$e59429_ _$e59429_ _probe59414_)))
                        (if (eqv? _key59391_ _k59421_)
                            (begin
                              (vector-set!
                               _table59395_
                               _probe59414_
                               _key59391_)
                              (vector-set!
                               _table59395_
                               (fx+ _probe59414_ '1)
                               _value59392_))
                            (_loop59411_
                             (let ((_next-probe59432_
                                    (fx+ _start59407_
                                         _i59416_
                                         (fx* _i59416_ _i59416_))))
                               (fxmodulo _next-probe59432_ _size59401_))
                             (fx+ _i59416_ '1)
                             _deleted59418_))))))))))
    (define eqv-table-update!
      (lambda (_tab59385_ _key59386_ _eqv-table-update!59387_ _default59388_)
        (if (fx< (&raw-table-free _tab59385_)
                 (fxquotient (vector-length (&raw-table-table _tab59385_)) '4))
            (__raw-table-rehash! _tab59385_)
            '#!void)
        (__eqv-table-update!
         _tab59385_
         _key59386_
         _eqv-table-update!59387_
         _default59388_)))
    (define __eqv-table-update!
      (lambda (_tab59339_ _key59340_ _eqv-table-update!59341_ _default59342_)
        (let ((_table59345_ (&raw-table-table _tab59339_))
              (_seed59346_ (&raw-table-seed _tab59339_)))
          (let* ((_h59348_ (fxxor (eqv-hash _key59340_) _seed59346_))
                 (_size59351_ (vector-length _table59345_))
                 (_entries59354_ (fxquotient _size59351_ '2))
                 (_start59357_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59348_ _entries59354_)
                   '1)))
            (let _loop59361_ ((_probe59364_ _start59357_)
                              (_i59366_ '1)
                              (_deleted59368_ '#f))
              (let ((_k59371_ (vector-ref _table59345_ _probe59364_)))
                (if (eq? _k59371_ (macro-unused-obj))
                    (if _deleted59368_
                        (begin
                          (vector-set! _table59345_ _deleted59368_ _key59340_)
                          (vector-set!
                           _table59345_
                           (fx+ _deleted59368_ '1)
                           (_eqv-table-update!59341_ _default59342_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59339_
                              (fx+ (&raw-table-count _tab59339_) '1)))))
                        (begin
                          (vector-set! _table59345_ _probe59364_ _key59340_)
                          (vector-set!
                           _table59345_
                           (fx+ _probe59364_ '1)
                           (_eqv-table-update!59341_ _default59342_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59339_
                              (fx- (&raw-table-free _tab59339_) '1))
                             (&raw-table-count-set!
                              _tab59339_
                              (fx+ (&raw-table-count _tab59339_) '1))))))
                    (if (eq? _k59371_ (macro-deleted-obj))
                        (_loop59361_
                         (let ((_next-probe59376_
                                (fx+ _start59357_
                                     _i59366_
                                     (fx* _i59366_ _i59366_))))
                           (fxmodulo _next-probe59376_ _size59351_))
                         (fx+ _i59366_ '1)
                         (let ((_$e59379_ _deleted59368_))
                           (if _$e59379_ _$e59379_ _probe59364_)))
                        (if (eqv? _key59340_ _k59371_)
                            (begin
                              (vector-set!
                               _table59345_
                               _probe59364_
                               _key59340_)
                              (vector-set!
                               _table59345_
                               (fx+ _probe59364_ '1)
                               (_eqv-table-update!59341_
                                (vector-ref
                                 _table59345_
                                 (fx+ _probe59364_ '1)))))
                            (_loop59361_
                             (let ((_next-probe59382_
                                    (fx+ _start59357_
                                         _i59366_
                                         (fx* _i59366_ _i59366_))))
                               (fxmodulo _next-probe59382_ _size59351_))
                             (fx+ _i59366_ '1)
                             _deleted59368_))))))))))
    (define eqv-table-delete!
      (lambda (_tab59298_ _key59300_)
        (let ((_table59303_ (&raw-table-table _tab59298_))
              (_seed59305_ (&raw-table-seed _tab59298_)))
          (let* ((_h59308_ (fxxor (eqv-hash _key59300_) _seed59305_))
                 (_size59311_ (vector-length _table59303_))
                 (_entries59314_ (fxquotient _size59311_ '2))
                 (_start59317_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59308_ _entries59314_)
                   '1)))
            (let _loop59321_ ((_probe59324_ _start59317_) (_i59326_ '1))
              (let ((_k59329_ (vector-ref _table59303_ _probe59324_)))
                (if (eq? _k59329_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59329_ (macro-deleted-obj))
                        (_loop59321_
                         (let ((_next-probe59332_
                                (fx+ _start59317_
                                     _i59326_
                                     (fx* _i59326_ _i59326_))))
                           (fxmodulo _next-probe59332_ _size59311_))
                         (fx+ _i59326_ '1))
                        (if (eqv? _key59300_ _k59329_)
                            (begin
                              (vector-set!
                               _table59303_
                               _probe59324_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59303_
                               (fx+ _probe59324_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59298_
                                  (fx- (&raw-table-count _tab59298_) '1)))))
                            (_loop59321_
                             (let ((_next-probe59336_
                                    (fx+ _start59317_
                                         _i59326_
                                         (fx* _i59326_ _i59326_))))
                               (fxmodulo _next-probe59336_ _size59311_))
                             (fx+ _i59326_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_size-hint59279_ _seed59281_)
        (make-raw-table__% _size-hint59279_ symbolic-hash eq? _seed59281_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_size-hint59287_ '#f) (_seed59289_ '0))
          (make-symbolic-table__% _size-hint59287_ _seed59289_))))
    (define make-symbolic-table__1
      (lambda (_size-hint59291_)
        (let ((_seed59293_ '0))
          (make-symbolic-table__% _size-hint59291_ _seed59293_))))
    (define make-symbolic-table
      (lambda _g60025_
        (let ((_g60024_ (##length _g60025_)))
          (cond ((##fx= _g60024_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g60025_))
                ((##fx= _g60024_ 1)
                 (apply (lambda (_size-hint59291_)
                          (make-symbolic-table__1 _size-hint59291_))
                        _g60025_))
                ((##fx= _g60024_ 2)
                 (apply (lambda (_size-hint59295_ _seed59296_)
                          (make-symbolic-table__%
                           _size-hint59295_
                           _seed59296_))
                        _g60025_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g60025_))))))
    (define symbolic-table-ref
      (lambda (_tab59236_ _key59237_ _default59238_)
        (let ((_table59240_ (&raw-table-table _tab59236_))
              (_seed59241_ (&raw-table-seed _tab59236_)))
          (let* ((_h59243_ (fxxor (symbolic-hash _key59237_) _seed59241_))
                 (_size59246_ (vector-length _table59240_))
                 (_entries59249_ (fxquotient _size59246_ '2))
                 (_start59252_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59243_ _entries59249_)
                   '1)))
            (let _loop59256_ ((_probe59259_ _start59252_)
                              (_i59261_ '1)
                              (_deleted59263_ '#f))
              (let ((_k59266_ (vector-ref _table59240_ _probe59259_)))
                (if (eq? _k59266_ (macro-unused-obj))
                    _default59238_
                    (if (eq? _k59266_ (macro-deleted-obj))
                        (_loop59256_
                         (let ((_next-probe59269_
                                (fx+ _start59252_
                                     _i59261_
                                     (fx* _i59261_ _i59261_))))
                           (fxmodulo _next-probe59269_ _size59246_))
                         (fx+ _i59261_ '1)
                         (let ((_$e59272_ _deleted59263_))
                           (if _$e59272_ _$e59272_ _probe59259_)))
                        (if (eq? _key59237_ _k59266_)
                            (vector-ref _table59240_ (fx+ _probe59259_ '1))
                            (_loop59256_
                             (let ((_next-probe59275_
                                    (fx+ _start59252_
                                         _i59261_
                                         (fx* _i59261_ _i59261_))))
                               (fxmodulo _next-probe59275_ _size59246_))
                             (fx+ _i59261_ '1)
                             _deleted59263_))))))))))
    (define symbolic-table-set!
      (lambda (_tab59232_ _key59233_ _value59234_)
        (if (fx< (&raw-table-free _tab59232_)
                 (fxquotient (vector-length (&raw-table-table _tab59232_)) '4))
            (__raw-table-rehash! _tab59232_)
            '#!void)
        (__symbolic-table-set! _tab59232_ _key59233_ _value59234_)))
    (define __symbolic-table-set!
      (lambda (_tab59187_ _key59188_ _value59189_)
        (let ((_table59192_ (&raw-table-table _tab59187_))
              (_seed59193_ (&raw-table-seed _tab59187_)))
          (let* ((_h59195_ (fxxor (symbolic-hash _key59188_) _seed59193_))
                 (_size59198_ (vector-length _table59192_))
                 (_entries59201_ (fxquotient _size59198_ '2))
                 (_start59204_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59195_ _entries59201_)
                   '1)))
            (let _loop59208_ ((_probe59211_ _start59204_)
                              (_i59213_ '1)
                              (_deleted59215_ '#f))
              (let ((_k59218_ (vector-ref _table59192_ _probe59211_)))
                (if (eq? _k59218_ (macro-unused-obj))
                    (if _deleted59215_
                        (begin
                          (vector-set! _table59192_ _deleted59215_ _key59188_)
                          (vector-set!
                           _table59192_
                           (fx+ _deleted59215_ '1)
                           _value59189_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59187_
                              (fx+ (&raw-table-count _tab59187_) '1)))))
                        (begin
                          (vector-set! _table59192_ _probe59211_ _key59188_)
                          (vector-set!
                           _table59192_
                           (fx+ _probe59211_ '1)
                           _value59189_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59187_
                              (fx- (&raw-table-free _tab59187_) '1))
                             (&raw-table-count-set!
                              _tab59187_
                              (fx+ (&raw-table-count _tab59187_) '1))))))
                    (if (eq? _k59218_ (macro-deleted-obj))
                        (_loop59208_
                         (let ((_next-probe59223_
                                (fx+ _start59204_
                                     _i59213_
                                     (fx* _i59213_ _i59213_))))
                           (fxmodulo _next-probe59223_ _size59198_))
                         (fx+ _i59213_ '1)
                         (let ((_$e59226_ _deleted59215_))
                           (if _$e59226_ _$e59226_ _probe59211_)))
                        (if (eq? _key59188_ _k59218_)
                            (begin
                              (vector-set!
                               _table59192_
                               _probe59211_
                               _key59188_)
                              (vector-set!
                               _table59192_
                               (fx+ _probe59211_ '1)
                               _value59189_))
                            (_loop59208_
                             (let ((_next-probe59229_
                                    (fx+ _start59204_
                                         _i59213_
                                         (fx* _i59213_ _i59213_))))
                               (fxmodulo _next-probe59229_ _size59198_))
                             (fx+ _i59213_ '1)
                             _deleted59215_))))))))))
    (define symbolic-table-update!
      (lambda (_tab59182_
               _key59183_
               _symbolic-table-update!59184_
               _default59185_)
        (if (fx< (&raw-table-free _tab59182_)
                 (fxquotient (vector-length (&raw-table-table _tab59182_)) '4))
            (__raw-table-rehash! _tab59182_)
            '#!void)
        (__symbolic-table-update!
         _tab59182_
         _key59183_
         _symbolic-table-update!59184_
         _default59185_)))
    (define __symbolic-table-update!
      (lambda (_tab59136_
               _key59137_
               _symbolic-table-update!59138_
               _default59139_)
        (let ((_table59142_ (&raw-table-table _tab59136_))
              (_seed59143_ (&raw-table-seed _tab59136_)))
          (let* ((_h59145_ (fxxor (symbolic-hash _key59137_) _seed59143_))
                 (_size59148_ (vector-length _table59142_))
                 (_entries59151_ (fxquotient _size59148_ '2))
                 (_start59154_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59145_ _entries59151_)
                   '1)))
            (let _loop59158_ ((_probe59161_ _start59154_)
                              (_i59163_ '1)
                              (_deleted59165_ '#f))
              (let ((_k59168_ (vector-ref _table59142_ _probe59161_)))
                (if (eq? _k59168_ (macro-unused-obj))
                    (if _deleted59165_
                        (begin
                          (vector-set! _table59142_ _deleted59165_ _key59137_)
                          (vector-set!
                           _table59142_
                           (fx+ _deleted59165_ '1)
                           (_symbolic-table-update!59138_ _default59139_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59136_
                              (fx+ (&raw-table-count _tab59136_) '1)))))
                        (begin
                          (vector-set! _table59142_ _probe59161_ _key59137_)
                          (vector-set!
                           _table59142_
                           (fx+ _probe59161_ '1)
                           (_symbolic-table-update!59138_ _default59139_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59136_
                              (fx- (&raw-table-free _tab59136_) '1))
                             (&raw-table-count-set!
                              _tab59136_
                              (fx+ (&raw-table-count _tab59136_) '1))))))
                    (if (eq? _k59168_ (macro-deleted-obj))
                        (_loop59158_
                         (let ((_next-probe59173_
                                (fx+ _start59154_
                                     _i59163_
                                     (fx* _i59163_ _i59163_))))
                           (fxmodulo _next-probe59173_ _size59148_))
                         (fx+ _i59163_ '1)
                         (let ((_$e59176_ _deleted59165_))
                           (if _$e59176_ _$e59176_ _probe59161_)))
                        (if (eq? _key59137_ _k59168_)
                            (begin
                              (vector-set!
                               _table59142_
                               _probe59161_
                               _key59137_)
                              (vector-set!
                               _table59142_
                               (fx+ _probe59161_ '1)
                               (_symbolic-table-update!59138_
                                (vector-ref
                                 _table59142_
                                 (fx+ _probe59161_ '1)))))
                            (_loop59158_
                             (let ((_next-probe59179_
                                    (fx+ _start59154_
                                         _i59163_
                                         (fx* _i59163_ _i59163_))))
                               (fxmodulo _next-probe59179_ _size59148_))
                             (fx+ _i59163_ '1)
                             _deleted59165_))))))))))
    (define symbolic-table-delete!
      (lambda (_tab59095_ _key59097_)
        (let ((_table59100_ (&raw-table-table _tab59095_))
              (_seed59102_ (&raw-table-seed _tab59095_)))
          (let* ((_h59105_ (fxxor (symbolic-hash _key59097_) _seed59102_))
                 (_size59108_ (vector-length _table59100_))
                 (_entries59111_ (fxquotient _size59108_ '2))
                 (_start59114_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59105_ _entries59111_)
                   '1)))
            (let _loop59118_ ((_probe59121_ _start59114_) (_i59123_ '1))
              (let ((_k59126_ (vector-ref _table59100_ _probe59121_)))
                (if (eq? _k59126_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59126_ (macro-deleted-obj))
                        (_loop59118_
                         (let ((_next-probe59129_
                                (fx+ _start59114_
                                     _i59123_
                                     (fx* _i59123_ _i59123_))))
                           (fxmodulo _next-probe59129_ _size59108_))
                         (fx+ _i59123_ '1))
                        (if (eq? _key59097_ _k59126_)
                            (begin
                              (vector-set!
                               _table59100_
                               _probe59121_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59100_
                               (fx+ _probe59121_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59095_
                                  (fx- (&raw-table-count _tab59095_) '1)))))
                            (_loop59118_
                             (let ((_next-probe59133_
                                    (fx+ _start59114_
                                         _i59123_
                                         (fx* _i59123_ _i59123_))))
                               (fxmodulo _next-probe59133_ _size59108_))
                             (fx+ _i59123_ '1)))))))))))
    (define make-string-table__%
      (lambda (_size-hint59076_ _seed59078_)
        (make-raw-table__%
         _size-hint59076_
         string-hash
         ##string=?
         _seed59078_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_size-hint59084_ '#f) (_seed59086_ '0))
          (make-string-table__% _size-hint59084_ _seed59086_))))
    (define make-string-table__1
      (lambda (_size-hint59088_)
        (let ((_seed59090_ '0))
          (make-string-table__% _size-hint59088_ _seed59090_))))
    (define make-string-table
      (lambda _g60027_
        (let ((_g60026_ (##length _g60027_)))
          (cond ((##fx= _g60026_ 0)
                 (apply (lambda () (make-string-table__0)) _g60027_))
                ((##fx= _g60026_ 1)
                 (apply (lambda (_size-hint59088_)
                          (make-string-table__1 _size-hint59088_))
                        _g60027_))
                ((##fx= _g60026_ 2)
                 (apply (lambda (_size-hint59092_ _seed59093_)
                          (make-string-table__% _size-hint59092_ _seed59093_))
                        _g60027_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g60027_))))))
    (define string-table-ref
      (lambda (_tab59033_ _key59034_ _default59035_)
        (let ((_table59037_ (&raw-table-table _tab59033_))
              (_seed59038_ (&raw-table-seed _tab59033_)))
          (let* ((_h59040_ (fxxor (##string=?-hash _key59034_) _seed59038_))
                 (_size59043_ (vector-length _table59037_))
                 (_entries59046_ (fxquotient _size59043_ '2))
                 (_start59049_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59040_ _entries59046_)
                   '1)))
            (let _loop59053_ ((_probe59056_ _start59049_)
                              (_i59058_ '1)
                              (_deleted59060_ '#f))
              (let ((_k59063_ (vector-ref _table59037_ _probe59056_)))
                (if (eq? _k59063_ (macro-unused-obj))
                    _default59035_
                    (if (eq? _k59063_ (macro-deleted-obj))
                        (_loop59053_
                         (let ((_next-probe59066_
                                (fx+ _start59049_
                                     _i59058_
                                     (fx* _i59058_ _i59058_))))
                           (fxmodulo _next-probe59066_ _size59043_))
                         (fx+ _i59058_ '1)
                         (let ((_$e59069_ _deleted59060_))
                           (if _$e59069_ _$e59069_ _probe59056_)))
                        (if (##string=? _key59034_ _k59063_)
                            (vector-ref _table59037_ (fx+ _probe59056_ '1))
                            (_loop59053_
                             (let ((_next-probe59072_
                                    (fx+ _start59049_
                                         _i59058_
                                         (fx* _i59058_ _i59058_))))
                               (fxmodulo _next-probe59072_ _size59043_))
                             (fx+ _i59058_ '1)
                             _deleted59060_))))))))))
    (define string-table-set!
      (lambda (_tab59029_ _key59030_ _value59031_)
        (if (fx< (&raw-table-free _tab59029_)
                 (fxquotient (vector-length (&raw-table-table _tab59029_)) '4))
            (__raw-table-rehash! _tab59029_)
            '#!void)
        (__string-table-set! _tab59029_ _key59030_ _value59031_)))
    (define __string-table-set!
      (lambda (_tab58984_ _key58985_ _value58986_)
        (let ((_table58989_ (&raw-table-table _tab58984_))
              (_seed58990_ (&raw-table-seed _tab58984_)))
          (let* ((_h58992_ (fxxor (##string=?-hash _key58985_) _seed58990_))
                 (_size58995_ (vector-length _table58989_))
                 (_entries58998_ (fxquotient _size58995_ '2))
                 (_start59001_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58992_ _entries58998_)
                   '1)))
            (let _loop59005_ ((_probe59008_ _start59001_)
                              (_i59010_ '1)
                              (_deleted59012_ '#f))
              (let ((_k59015_ (vector-ref _table58989_ _probe59008_)))
                (if (eq? _k59015_ (macro-unused-obj))
                    (if _deleted59012_
                        (begin
                          (vector-set! _table58989_ _deleted59012_ _key58985_)
                          (vector-set!
                           _table58989_
                           (fx+ _deleted59012_ '1)
                           _value58986_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58984_
                              (fx+ (&raw-table-count _tab58984_) '1)))))
                        (begin
                          (vector-set! _table58989_ _probe59008_ _key58985_)
                          (vector-set!
                           _table58989_
                           (fx+ _probe59008_ '1)
                           _value58986_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58984_
                              (fx- (&raw-table-free _tab58984_) '1))
                             (&raw-table-count-set!
                              _tab58984_
                              (fx+ (&raw-table-count _tab58984_) '1))))))
                    (if (eq? _k59015_ (macro-deleted-obj))
                        (_loop59005_
                         (let ((_next-probe59020_
                                (fx+ _start59001_
                                     _i59010_
                                     (fx* _i59010_ _i59010_))))
                           (fxmodulo _next-probe59020_ _size58995_))
                         (fx+ _i59010_ '1)
                         (let ((_$e59023_ _deleted59012_))
                           (if _$e59023_ _$e59023_ _probe59008_)))
                        (if (##string=? _key58985_ _k59015_)
                            (begin
                              (vector-set!
                               _table58989_
                               _probe59008_
                               _key58985_)
                              (vector-set!
                               _table58989_
                               (fx+ _probe59008_ '1)
                               _value58986_))
                            (_loop59005_
                             (let ((_next-probe59026_
                                    (fx+ _start59001_
                                         _i59010_
                                         (fx* _i59010_ _i59010_))))
                               (fxmodulo _next-probe59026_ _size58995_))
                             (fx+ _i59010_ '1)
                             _deleted59012_))))))))))
    (define string-table-update!
      (lambda (_tab58979_
               _key58980_
               _string-table-update!58981_
               _default58982_)
        (if (fx< (&raw-table-free _tab58979_)
                 (fxquotient (vector-length (&raw-table-table _tab58979_)) '4))
            (__raw-table-rehash! _tab58979_)
            '#!void)
        (__string-table-update!
         _tab58979_
         _key58980_
         _string-table-update!58981_
         _default58982_)))
    (define __string-table-update!
      (lambda (_tab58933_
               _key58934_
               _string-table-update!58935_
               _default58936_)
        (let ((_table58939_ (&raw-table-table _tab58933_))
              (_seed58940_ (&raw-table-seed _tab58933_)))
          (let* ((_h58942_ (fxxor (##string=?-hash _key58934_) _seed58940_))
                 (_size58945_ (vector-length _table58939_))
                 (_entries58948_ (fxquotient _size58945_ '2))
                 (_start58951_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58942_ _entries58948_)
                   '1)))
            (let _loop58955_ ((_probe58958_ _start58951_)
                              (_i58960_ '1)
                              (_deleted58962_ '#f))
              (let ((_k58965_ (vector-ref _table58939_ _probe58958_)))
                (if (eq? _k58965_ (macro-unused-obj))
                    (if _deleted58962_
                        (begin
                          (vector-set! _table58939_ _deleted58962_ _key58934_)
                          (vector-set!
                           _table58939_
                           (fx+ _deleted58962_ '1)
                           (_string-table-update!58935_ _default58936_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58933_
                              (fx+ (&raw-table-count _tab58933_) '1)))))
                        (begin
                          (vector-set! _table58939_ _probe58958_ _key58934_)
                          (vector-set!
                           _table58939_
                           (fx+ _probe58958_ '1)
                           (_string-table-update!58935_ _default58936_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58933_
                              (fx- (&raw-table-free _tab58933_) '1))
                             (&raw-table-count-set!
                              _tab58933_
                              (fx+ (&raw-table-count _tab58933_) '1))))))
                    (if (eq? _k58965_ (macro-deleted-obj))
                        (_loop58955_
                         (let ((_next-probe58970_
                                (fx+ _start58951_
                                     _i58960_
                                     (fx* _i58960_ _i58960_))))
                           (fxmodulo _next-probe58970_ _size58945_))
                         (fx+ _i58960_ '1)
                         (let ((_$e58973_ _deleted58962_))
                           (if _$e58973_ _$e58973_ _probe58958_)))
                        (if (##string=? _key58934_ _k58965_)
                            (begin
                              (vector-set!
                               _table58939_
                               _probe58958_
                               _key58934_)
                              (vector-set!
                               _table58939_
                               (fx+ _probe58958_ '1)
                               (_string-table-update!58935_
                                (vector-ref
                                 _table58939_
                                 (fx+ _probe58958_ '1)))))
                            (_loop58955_
                             (let ((_next-probe58976_
                                    (fx+ _start58951_
                                         _i58960_
                                         (fx* _i58960_ _i58960_))))
                               (fxmodulo _next-probe58976_ _size58945_))
                             (fx+ _i58960_ '1)
                             _deleted58962_))))))))))
    (define string-table-delete!
      (lambda (_tab58892_ _key58894_)
        (let ((_table58897_ (&raw-table-table _tab58892_))
              (_seed58899_ (&raw-table-seed _tab58892_)))
          (let* ((_h58902_ (fxxor (##string=?-hash _key58894_) _seed58899_))
                 (_size58905_ (vector-length _table58897_))
                 (_entries58908_ (fxquotient _size58905_ '2))
                 (_start58911_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58902_ _entries58908_)
                   '1)))
            (let _loop58915_ ((_probe58918_ _start58911_) (_i58920_ '1))
              (let ((_k58923_ (vector-ref _table58897_ _probe58918_)))
                (if (eq? _k58923_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k58923_ (macro-deleted-obj))
                        (_loop58915_
                         (let ((_next-probe58926_
                                (fx+ _start58911_
                                     _i58920_
                                     (fx* _i58920_ _i58920_))))
                           (fxmodulo _next-probe58926_ _size58905_))
                         (fx+ _i58920_ '1))
                        (if (##string=? _key58894_ _k58923_)
                            (begin
                              (vector-set!
                               _table58897_
                               _probe58918_
                               (macro-deleted-obj))
                              (vector-set!
                               _table58897_
                               (fx+ _probe58918_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab58892_
                                  (fx- (&raw-table-count _tab58892_) '1)))))
                            (_loop58915_
                             (let ((_next-probe58930_
                                    (fx+ _start58911_
                                         _i58920_
                                         (fx* _i58920_ _i58920_))))
                               (fxmodulo _next-probe58930_ _size58905_))
                             (fx+ _i58920_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_size-hint58873_ _seed58875_)
        (make-raw-table__% _size-hint58873_ immediate-hash eq? _seed58875_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_size-hint58881_ '#f) (_seed58883_ '0))
          (make-immediate-table__% _size-hint58881_ _seed58883_))))
    (define make-immediate-table__1
      (lambda (_size-hint58885_)
        (let ((_seed58887_ '0))
          (make-immediate-table__% _size-hint58885_ _seed58887_))))
    (define make-immediate-table
      (lambda _g60029_
        (let ((_g60028_ (##length _g60029_)))
          (cond ((##fx= _g60028_ 0)
                 (apply (lambda () (make-immediate-table__0)) _g60029_))
                ((##fx= _g60028_ 1)
                 (apply (lambda (_size-hint58885_)
                          (make-immediate-table__1 _size-hint58885_))
                        _g60029_))
                ((##fx= _g60028_ 2)
                 (apply (lambda (_size-hint58889_ _seed58890_)
                          (make-immediate-table__%
                           _size-hint58889_
                           _seed58890_))
                        _g60029_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g60029_))))))
    (define immediate-table-ref
      (lambda (_tab58830_ _key58831_ _default58832_)
        (let ((_table58834_ (&raw-table-table _tab58830_))
              (_seed58835_ (&raw-table-seed _tab58830_)))
          (let* ((_h58837_ (fxxor (immediate-hash _key58831_) _seed58835_))
                 (_size58840_ (vector-length _table58834_))
                 (_entries58843_ (fxquotient _size58840_ '2))
                 (_start58846_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58837_ _entries58843_)
                   '1)))
            (let _loop58850_ ((_probe58853_ _start58846_)
                              (_i58855_ '1)
                              (_deleted58857_ '#f))
              (let ((_k58860_ (vector-ref _table58834_ _probe58853_)))
                (if (eq? _k58860_ (macro-unused-obj))
                    _default58832_
                    (if (eq? _k58860_ (macro-deleted-obj))
                        (_loop58850_
                         (let ((_next-probe58863_
                                (fx+ _start58846_
                                     _i58855_
                                     (fx* _i58855_ _i58855_))))
                           (fxmodulo _next-probe58863_ _size58840_))
                         (fx+ _i58855_ '1)
                         (let ((_$e58866_ _deleted58857_))
                           (if _$e58866_ _$e58866_ _probe58853_)))
                        (if (eq? _key58831_ _k58860_)
                            (vector-ref _table58834_ (fx+ _probe58853_ '1))
                            (_loop58850_
                             (let ((_next-probe58869_
                                    (fx+ _start58846_
                                         _i58855_
                                         (fx* _i58855_ _i58855_))))
                               (fxmodulo _next-probe58869_ _size58840_))
                             (fx+ _i58855_ '1)
                             _deleted58857_))))))))))
    (define immediate-table-set!
      (lambda (_tab58826_ _key58827_ _value58828_)
        (if (fx< (&raw-table-free _tab58826_)
                 (fxquotient (vector-length (&raw-table-table _tab58826_)) '4))
            (__raw-table-rehash! _tab58826_)
            '#!void)
        (__immediate-table-set! _tab58826_ _key58827_ _value58828_)))
    (define __immediate-table-set!
      (lambda (_tab58781_ _key58782_ _value58783_)
        (let ((_table58786_ (&raw-table-table _tab58781_))
              (_seed58787_ (&raw-table-seed _tab58781_)))
          (let* ((_h58789_ (fxxor (immediate-hash _key58782_) _seed58787_))
                 (_size58792_ (vector-length _table58786_))
                 (_entries58795_ (fxquotient _size58792_ '2))
                 (_start58798_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58789_ _entries58795_)
                   '1)))
            (let _loop58802_ ((_probe58805_ _start58798_)
                              (_i58807_ '1)
                              (_deleted58809_ '#f))
              (let ((_k58812_ (vector-ref _table58786_ _probe58805_)))
                (if (eq? _k58812_ (macro-unused-obj))
                    (if _deleted58809_
                        (begin
                          (vector-set! _table58786_ _deleted58809_ _key58782_)
                          (vector-set!
                           _table58786_
                           (fx+ _deleted58809_ '1)
                           _value58783_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58781_
                              (fx+ (&raw-table-count _tab58781_) '1)))))
                        (begin
                          (vector-set! _table58786_ _probe58805_ _key58782_)
                          (vector-set!
                           _table58786_
                           (fx+ _probe58805_ '1)
                           _value58783_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58781_
                              (fx- (&raw-table-free _tab58781_) '1))
                             (&raw-table-count-set!
                              _tab58781_
                              (fx+ (&raw-table-count _tab58781_) '1))))))
                    (if (eq? _k58812_ (macro-deleted-obj))
                        (_loop58802_
                         (let ((_next-probe58817_
                                (fx+ _start58798_
                                     _i58807_
                                     (fx* _i58807_ _i58807_))))
                           (fxmodulo _next-probe58817_ _size58792_))
                         (fx+ _i58807_ '1)
                         (let ((_$e58820_ _deleted58809_))
                           (if _$e58820_ _$e58820_ _probe58805_)))
                        (if (eq? _key58782_ _k58812_)
                            (begin
                              (vector-set!
                               _table58786_
                               _probe58805_
                               _key58782_)
                              (vector-set!
                               _table58786_
                               (fx+ _probe58805_ '1)
                               _value58783_))
                            (_loop58802_
                             (let ((_next-probe58823_
                                    (fx+ _start58798_
                                         _i58807_
                                         (fx* _i58807_ _i58807_))))
                               (fxmodulo _next-probe58823_ _size58792_))
                             (fx+ _i58807_ '1)
                             _deleted58809_))))))))))
    (define immediate-table-update!
      (lambda (_tab58776_
               _key58777_
               _immediate-table-update!58778_
               _default58779_)
        (if (fx< (&raw-table-free _tab58776_)
                 (fxquotient (vector-length (&raw-table-table _tab58776_)) '4))
            (__raw-table-rehash! _tab58776_)
            '#!void)
        (__immediate-table-update!
         _tab58776_
         _key58777_
         _immediate-table-update!58778_
         _default58779_)))
    (define __immediate-table-update!
      (lambda (_tab58730_
               _key58731_
               _immediate-table-update!58732_
               _default58733_)
        (let ((_table58736_ (&raw-table-table _tab58730_))
              (_seed58737_ (&raw-table-seed _tab58730_)))
          (let* ((_h58739_ (fxxor (immediate-hash _key58731_) _seed58737_))
                 (_size58742_ (vector-length _table58736_))
                 (_entries58745_ (fxquotient _size58742_ '2))
                 (_start58748_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58739_ _entries58745_)
                   '1)))
            (let _loop58752_ ((_probe58755_ _start58748_)
                              (_i58757_ '1)
                              (_deleted58759_ '#f))
              (let ((_k58762_ (vector-ref _table58736_ _probe58755_)))
                (if (eq? _k58762_ (macro-unused-obj))
                    (if _deleted58759_
                        (begin
                          (vector-set! _table58736_ _deleted58759_ _key58731_)
                          (vector-set!
                           _table58736_
                           (fx+ _deleted58759_ '1)
                           (_immediate-table-update!58732_ _default58733_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58730_
                              (fx+ (&raw-table-count _tab58730_) '1)))))
                        (begin
                          (vector-set! _table58736_ _probe58755_ _key58731_)
                          (vector-set!
                           _table58736_
                           (fx+ _probe58755_ '1)
                           (_immediate-table-update!58732_ _default58733_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58730_
                              (fx- (&raw-table-free _tab58730_) '1))
                             (&raw-table-count-set!
                              _tab58730_
                              (fx+ (&raw-table-count _tab58730_) '1))))))
                    (if (eq? _k58762_ (macro-deleted-obj))
                        (_loop58752_
                         (let ((_next-probe58767_
                                (fx+ _start58748_
                                     _i58757_
                                     (fx* _i58757_ _i58757_))))
                           (fxmodulo _next-probe58767_ _size58742_))
                         (fx+ _i58757_ '1)
                         (let ((_$e58770_ _deleted58759_))
                           (if _$e58770_ _$e58770_ _probe58755_)))
                        (if (eq? _key58731_ _k58762_)
                            (begin
                              (vector-set!
                               _table58736_
                               _probe58755_
                               _key58731_)
                              (vector-set!
                               _table58736_
                               (fx+ _probe58755_ '1)
                               (_immediate-table-update!58732_
                                (vector-ref
                                 _table58736_
                                 (fx+ _probe58755_ '1)))))
                            (_loop58752_
                             (let ((_next-probe58773_
                                    (fx+ _start58748_
                                         _i58757_
                                         (fx* _i58757_ _i58757_))))
                               (fxmodulo _next-probe58773_ _size58742_))
                             (fx+ _i58757_ '1)
                             _deleted58759_))))))))))
    (define immediate-table-delete!
      (lambda (_tab58689_ _key58691_)
        (let ((_table58694_ (&raw-table-table _tab58689_))
              (_seed58696_ (&raw-table-seed _tab58689_)))
          (let* ((_h58699_ (fxxor (immediate-hash _key58691_) _seed58696_))
                 (_size58702_ (vector-length _table58694_))
                 (_entries58705_ (fxquotient _size58702_ '2))
                 (_start58708_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58699_ _entries58705_)
                   '1)))
            (let _loop58712_ ((_probe58715_ _start58708_) (_i58717_ '1))
              (let ((_k58720_ (vector-ref _table58694_ _probe58715_)))
                (if (eq? _k58720_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k58720_ (macro-deleted-obj))
                        (_loop58712_
                         (let ((_next-probe58723_
                                (fx+ _start58708_
                                     _i58717_
                                     (fx* _i58717_ _i58717_))))
                           (fxmodulo _next-probe58723_ _size58702_))
                         (fx+ _i58717_ '1))
                        (if (eq? _key58691_ _k58720_)
                            (begin
                              (vector-set!
                               _table58694_
                               _probe58715_
                               (macro-deleted-obj))
                              (vector-set!
                               _table58694_
                               (fx+ _probe58715_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab58689_
                                  (fx- (&raw-table-count _tab58689_) '1)))))
                            (_loop58712_
                             (let ((_next-probe58727_
                                    (fx+ _start58708_
                                         _i58717_
                                         (fx* _i58717_ _i58717_))))
                               (fxmodulo _next-probe58727_ _size58702_))
                             (fx+ _i58717_ '1)))))))))))
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
      (lambda (_tab58687_)
        (##unchecked-structure-ref
         _tab58687_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_tab58685_)
        (##unchecked-structure-ref
         _tab58685_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_tab58682_ _val58683_)
        (##unchecked-structure-set!
         _tab58682_
         _val58683_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_tab58679_ _val58680_)
        (##unchecked-structure-set!
         _tab58679_
         _val58680_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_size-hint58664_ _klass58665_)
        (let ((_gcht58667_
               (__gc-table-new
                (if (fixnum? _size-hint58664_) _size-hint58664_ '16))))
          (##structure _klass58665_ _gcht58667_ '#f))))
    (define make-gc-table__0
      (lambda (_size-hint58672_)
        (let ((_klass58674_ __gc-table::t))
          (make-gc-table__% _size-hint58672_ _klass58674_))))
    (define make-gc-table
      (lambda _g60031_
        (let ((_g60030_ (##length _g60031_)))
          (cond ((##fx= _g60030_ 1)
                 (apply (lambda (_size-hint58672_)
                          (make-gc-table__0 _size-hint58672_))
                        _g60031_))
                ((##fx= _g60030_ 2)
                 (apply (lambda (_size-hint58676_ _klass58677_)
                          (make-gc-table__% _size-hint58676_ _klass58677_))
                        _g60031_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g60031_))))))
    (define __gc-table-immediate
      (lambda (_tab58656_)
        (let ((_$e58658_ (&gc-table-immediate _tab58656_)))
          (if _$e58658_
              _$e58658_
              (let ((_immediate58661_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _tab58656_ _immediate58661_)
                _immediate58661_)))))
    (define __gc-table-new
      (lambda (_size58652_)
        (let ((_gcht58654_
               (##gc-hash-table-allocate
                _size58652_
                (macro-gc-hash-table-flag-mem-alloc-keys)
                __gc-table-loads)))
          (macro-gc-hash-table-free-set!
           _gcht58654_
           (macro-gc-hash-table-size _gcht58654_))
          (macro-gc-hash-table-count-set! _gcht58654_ '0)
          _gcht58654_)))
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
                 (fx* '2 (macro-gc-hash-table-size _old-table58630_))))
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
                (##gc-hash-table-allocate
                 (macro-gc-hash-table-count _gcht58562_)
                 (macro-gc-hash-table-flag-mem-alloc-keys)
                 __gc-table-loads))
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
                (##gc-hash-table-allocate
                 (macro-gc-hash-table-count _gcht58555_)
                 (macro-gc-hash-table-flag-mem-alloc-keys)
                 __gc-table-loads)))
          (&gc-table-gcht-set! _tab58553_ _new-table58557_)
          (&gc-table-immediate-set! _tab58553_ '#f))))
    (define gc-table-length
      (lambda (_tab58546_)
        (let ((_gcht58548_ (__gc-table-e _tab58546_)))
          (fx+ (macro-gc-hash-table-count _gcht58548_)
               (let ((_$e58550_ (&gc-table-immediate _tab58546_)))
                 (if _$e58550_ (&raw-table-count _$e58550_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash (make-gc-table__0 '1024))
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
