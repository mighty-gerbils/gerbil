(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1708165427)
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
       '#(keys 5 #f values 5 #f count 5 #f free 5 #f hash 5 #f test 5 #f)))
    (define &raw-table-keys
      (lambda (_tab65931_)
        (##unchecked-structure-ref _tab65931_ '1 __table::t 'raw-table-keys)))
    (define &raw-table-values
      (lambda (_tab65929_)
        (##unchecked-structure-ref
         _tab65929_
         '2
         __table::t
         'raw-table-values)))
    (define &raw-table-count
      (lambda (_tab65927_)
        (##unchecked-structure-ref _tab65927_ '3 __table::t 'raw-table-count)))
    (define &raw-table-free
      (lambda (_tab65925_)
        (##unchecked-structure-ref _tab65925_ '4 __table::t 'raw-table-free)))
    (define &raw-table-hash
      (lambda (_tab65923_)
        (##unchecked-structure-ref _tab65923_ '5 __table::t 'raw-table-hash)))
    (define &raw-table-test
      (lambda (_tab65921_)
        (##unchecked-structure-ref _tab65921_ '6 __table::t 'raw-table-test)))
    (define &raw-table-keys-set!
      (lambda (_tab65918_ _val65919_)
        (##unchecked-structure-set!
         _tab65918_
         _val65919_
         '1
         __table::t
         'raw-table-keys-set!)))
    (define &raw-table-values-set!
      (lambda (_tab65915_ _val65916_)
        (##unchecked-structure-set!
         _tab65915_
         _val65916_
         '2
         __table::t
         'raw-table-values-set!)))
    (define &raw-table-count-set!
      (lambda (_tab65912_ _val65913_)
        (##unchecked-structure-set!
         _tab65912_
         _val65913_
         '3
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_tab65909_ _val65910_)
        (##unchecked-structure-set!
         _tab65909_
         _val65910_
         '4
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_tab65906_ _val65907_)
        (##unchecked-structure-set!
         _tab65906_
         _val65907_
         '5
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_tab65903_ _val65904_)
        (##unchecked-structure-set!
         _tab65903_
         _val65904_
         '6
         __table::t
         'raw-table-test-set!)))
    (define make-raw-table
      (lambda (_size-hint65892_ _hash65893_ _test65894_)
        (let* ((_size65896_
                (if (and (fixnum? _size-hint65892_) (fx> _size-hint65892_ '0))
                    (max _size-hint65892_ '2)
                    '10))
               (_keys65898_ (make-vector _size65896_ (macro-unused-obj)))
               (_values65900_ (make-vector _size65896_ (macro-absent-obj))))
          (##structure
           __table::t
           _keys65898_
           _values65900_
           '0
           _size65896_
           _hash65893_
           _test65894_))))
    (define raw-table-ref
      (lambda (_tab65851_ _key65852_ _default65853_)
        (let ((_keys65855_ (&raw-table-keys _tab65851_))
              (_values65856_ (&raw-table-values _tab65851_))
              (_hash65857_ (&raw-table-hash _tab65851_))
              (_test65858_ (&raw-table-test _tab65851_)))
          (let* ((_size65860_ (vector-length _keys65855_))
                 (_h65863_ (_hash65857_ _key65852_))
                 (_start65866_ (fxmodulo _h65863_ _size65860_)))
            (let _loop65870_ ((_probe65873_ _start65866_)
                              (_i65875_ '1)
                              (_deleted65877_ '#f))
              (let ((_k65880_ (vector-ref _keys65855_ _probe65873_)))
                (if (eq? _k65880_ (macro-unused-obj))
                    _default65853_
                    (if (eq? _k65880_ (macro-deleted-obj))
                        (_loop65870_
                         (let ((_next-probe65883_
                                (fx+ _start65866_
                                     (fxquotient
                                      (fx+ _i65875_ (fx* _i65875_ _i65875_))
                                      '2))))
                           (fxmodulo _next-probe65883_ _size65860_))
                         (fx+ _i65875_ '1)
                         (let ((_$e65886_ _deleted65877_))
                           (if _$e65886_ _$e65886_ _probe65873_)))
                        (if (_test65858_ _key65852_ _k65880_)
                            (vector-ref _values65856_ _probe65873_)
                            (_loop65870_
                             (let ((_next-probe65889_
                                    (fx+ _start65866_
                                         (fxquotient
                                          (fx+ _i65875_
                                               (fx* _i65875_ _i65875_))
                                          '2))))
                               (fxmodulo _next-probe65889_ _size65860_))
                             (fx+ _i65875_ '1)
                             _deleted65877_))))))))))
    (define raw-table-set!
      (lambda (_tab65847_ _key65848_ _value65849_)
        (if (fx< (&raw-table-free _tab65847_)
                 (fxquotient (vector-length (&raw-table-keys _tab65847_)) '2))
            (__raw-table-rehash! _tab65847_)
            '#!void)
        (__raw-table-set! _tab65847_ _key65848_ _value65849_)))
    (define raw-table-delete!
      (lambda (_tab65811_ _key65812_)
        (let ((_keys65814_ (&raw-table-keys _tab65811_))
              (_values65815_ (&raw-table-values _tab65811_))
              (_hash65816_ (&raw-table-hash _tab65811_))
              (_test65817_ (&raw-table-test _tab65811_)))
          (let* ((_size65819_ (vector-length _keys65814_))
                 (_h65822_ (_hash65816_ _key65812_))
                 (_start65825_ (fxmodulo _h65822_ _size65819_)))
            (let _loop65829_ ((_probe65832_ _start65825_) (_i65834_ '1))
              (let ((_k65837_ (vector-ref _keys65814_ _probe65832_)))
                (if (eq? _k65837_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k65837_ (macro-deleted-obj))
                        (_loop65829_
                         (let ((_next-probe65840_
                                (fx+ _start65825_
                                     (fxquotient
                                      (fx+ _i65834_ (fx* _i65834_ _i65834_))
                                      '2))))
                           (fxmodulo _next-probe65840_ _size65819_))
                         (fx+ _i65834_ '1))
                        (if (_test65817_ _key65812_ _k65837_)
                            (begin
                              (vector-set!
                               _keys65814_
                               _probe65832_
                               (macro-deleted-obj))
                              (vector-set!
                               _values65815_
                               _probe65832_
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab65811_
                                  (fx- (&raw-table-count _tab65811_) '1)))))
                            (_loop65829_
                             (let ((_next-probe65844_
                                    (fx+ _start65825_
                                         (fxquotient
                                          (fx+ _i65834_
                                               (fx* _i65834_ _i65834_))
                                          '2))))
                               (fxmodulo _next-probe65844_ _size65819_))
                             (fx+ _i65834_ '1)))))))))))
    (define __raw-table-set!
      (lambda (_tab65768_ _key65769_ _value65770_)
        (let ((_keys65772_ (&raw-table-keys _tab65768_))
              (_values65773_ (&raw-table-values _tab65768_))
              (_hash65774_ (&raw-table-hash _tab65768_))
              (_test65775_ (&raw-table-test _tab65768_)))
          (let* ((_size65777_ (vector-length _keys65772_))
                 (_h65780_ (_hash65774_ _key65769_))
                 (_start65783_ (fxmodulo _h65780_ _size65777_)))
            (let _loop65787_ ((_probe65790_ _start65783_)
                              (_i65792_ '1)
                              (_deleted65794_ '#f))
              (let ((_k65797_ (vector-ref _keys65772_ _probe65790_)))
                (if (eq? _k65797_ (macro-unused-obj))
                    (if _deleted65794_
                        (begin
                          (vector-set! _keys65772_ _deleted65794_ _key65769_)
                          (vector-set!
                           _values65773_
                           _deleted65794_
                           _value65770_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab65768_
                              (fx+ (&raw-table-count _tab65768_) '1)))))
                        (begin
                          (vector-set! _keys65772_ _probe65790_ _key65769_)
                          (vector-set! _values65773_ _probe65790_ _value65770_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab65768_
                              (fx- (&raw-table-free _tab65768_) '1))
                             (&raw-table-count-set!
                              _tab65768_
                              (fx+ (&raw-table-count _tab65768_) '1))))))
                    (if (eq? _k65797_ (macro-deleted-obj))
                        (_loop65787_
                         (let ((_next-probe65802_
                                (fx+ _start65783_
                                     (fxquotient
                                      (fx+ _i65792_ (fx* _i65792_ _i65792_))
                                      '2))))
                           (fxmodulo _next-probe65802_ _size65777_))
                         (fx+ _i65792_ '1)
                         (let ((_$e65805_ _deleted65794_))
                           (if _$e65805_ _$e65805_ _probe65790_)))
                        (if (_test65775_ _key65769_ _k65797_)
                            (begin
                              (vector-set! _keys65772_ _probe65790_ _key65769_)
                              (vector-set!
                               _values65773_
                               _probe65790_
                               _value65770_))
                            (_loop65787_
                             (let ((_next-probe65808_
                                    (fx+ _start65783_
                                         (fxquotient
                                          (fx+ _i65792_
                                               (fx* _i65792_ _i65792_))
                                          '2))))
                               (fxmodulo _next-probe65808_ _size65777_))
                             (fx+ _i65792_ '1)
                             _deleted65794_))))))))))
    (define __raw-table-rehash!
      (lambda (_tab65747_)
        (let* ((_old-keys65749_ (&raw-table-keys _tab65747_))
               (_old-values65751_ (&raw-table-values _tab65747_))
               (_new-size65753_
                (if (fx< (&raw-table-count _tab65747_)
                         (fxquotient (vector-length _old-keys65749_) '2))
                    (vector-length _old-keys65749_)
                    (fx* '2 (vector-length _old-keys65749_))))
               (_new-keys65755_
                (make-vector _new-size65753_ (macro-unused-obj)))
               (_new-values65757_
                (make-vector _new-size65753_ (macro-absent-obj))))
          (&raw-table-keys-set! _tab65747_ _new-keys65755_)
          (&raw-table-values-set! _tab65747_ _new-values65757_)
          (&raw-table-count-set! _tab65747_ '0)
          (&raw-table-free-set! _tab65747_ _new-size65753_)
          (let _lp65760_ ((_i65762_ (fx- (vector-length _old-keys65749_) '1)))
            (if (fx< _i65762_ '0)
                '#!void
                (begin
                  (let ((_key65764_ (vector-ref _old-keys65749_ _i65762_)))
                    (if (and (not (eq? _key65764_ (macro-unused-obj)))
                             (not (eq? _key65764_ (macro-deleted-obj))))
                        (let ((_value65766_
                               (vector-ref _old-values65751_ _i65762_)))
                          (__raw-table-set!
                           _tab65747_
                           _key65764_
                           _value65766_))
                        '#!void))
                  (_lp65760_ (fx- _i65762_ '1))))))))
    (define eq-hash
      (lambda (_obj65738_)
        (let ((_t65740_ (##type _obj65738_)))
          (if (fx= (fxand _t65740_ '1) '0)
              (fxand (##type-cast _obj65738_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (or (symbol? _obj65738_) (keyword? _obj65738_))
                  (symbolic-hash _obj65738_)
                  (fxand (let ((_sn65745_ (object->serial-number _obj65738_)))
                           (if (fixnum? _sn65745_)
                               _sn65745_
                               (fxarithmetic-shift-left
                                (##bignum.mdigit-ref _sn65745_ '0)
                                '10)))
                         (macro-max-fixnum32)))))))
    (define symbolic-hash (lambda (_obj65736_) (macro-slot '1 _obj65736_)))
    (define make-eq-table__%
      (lambda (_size-hint65726_)
        (make-raw-table _size-hint65726_ eq-hash eq?)))
    (define make-eq-table__0
      (lambda ()
        (let ((_size-hint65732_ '#f)) (make-eq-table__% _size-hint65732_))))
    (define make-eq-table
      (lambda _g70501_
        (let ((_g70500_ (##length _g70501_)))
          (cond ((##fx= _g70500_ 0)
                 (apply (lambda () (make-eq-table__0)) _g70501_))
                ((##fx= _g70500_ 1)
                 (apply (lambda (_size-hint65734_)
                          (make-eq-table__% _size-hint65734_))
                        _g70501_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g70501_))))))
    (define eq-table-ref
      (lambda (_tab65686_ _key65687_ _default65688_)
        (let ((_keys65690_ (&raw-table-keys _tab65686_))
              (_values65691_ (&raw-table-values _tab65686_)))
          (let* ((_size65693_ (vector-length _keys65690_))
                 (_h65696_ (eq-hash _key65687_))
                 (_start65699_ (fxmodulo _h65696_ _size65693_)))
            (let _loop65703_ ((_probe65706_ _start65699_)
                              (_i65708_ '1)
                              (_deleted65710_ '#f))
              (let ((_k65713_ (vector-ref _keys65690_ _probe65706_)))
                (if (eq? _k65713_ (macro-unused-obj))
                    _default65688_
                    (if (eq? _k65713_ (macro-deleted-obj))
                        (_loop65703_
                         (let ((_next-probe65716_
                                (fx+ _start65699_
                                     (fxquotient
                                      (fx+ _i65708_ (fx* _i65708_ _i65708_))
                                      '2))))
                           (fxmodulo _next-probe65716_ _size65693_))
                         (fx+ _i65708_ '1)
                         (let ((_$e65719_ _deleted65710_))
                           (if _$e65719_ _$e65719_ _probe65706_)))
                        (if (eq? _key65687_ _k65713_)
                            (vector-ref _values65691_ _probe65706_)
                            (_loop65703_
                             (let ((_next-probe65722_
                                    (fx+ _start65699_
                                         (fxquotient
                                          (fx+ _i65708_
                                               (fx* _i65708_ _i65708_))
                                          '2))))
                               (fxmodulo _next-probe65722_ _size65693_))
                             (fx+ _i65708_ '1)
                             _deleted65710_))))))))))
    (define eq-table-set!
      (lambda (_tab65682_ _key65683_ _value65684_)
        (if (fx< (&raw-table-free _tab65682_)
                 (fxquotient (vector-length (&raw-table-keys _tab65682_)) '2))
            (__raw-table-rehash! _tab65682_)
            '#!void)
        (__eq-table-set! _tab65682_ _key65683_ _value65684_)))
    (define __eq-table-set!
      (lambda (_tab65641_ _key65642_ _value65643_)
        (let ((_keys65645_ (&raw-table-keys _tab65641_))
              (_values65646_ (&raw-table-values _tab65641_)))
          (let* ((_size65648_ (vector-length _keys65645_))
                 (_h65651_ (eq-hash _key65642_))
                 (_start65654_ (fxmodulo _h65651_ _size65648_)))
            (let _loop65658_ ((_probe65661_ _start65654_)
                              (_i65663_ '1)
                              (_deleted65665_ '#f))
              (let ((_k65668_ (vector-ref _keys65645_ _probe65661_)))
                (if (eq? _k65668_ (macro-unused-obj))
                    (if _deleted65665_
                        (begin
                          (vector-set! _keys65645_ _deleted65665_ _key65642_)
                          (vector-set!
                           _values65646_
                           _deleted65665_
                           _value65643_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab65641_
                              (fx+ (&raw-table-count _tab65641_) '1)))))
                        (begin
                          (vector-set! _keys65645_ _probe65661_ _key65642_)
                          (vector-set! _values65646_ _probe65661_ _value65643_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab65641_
                              (fx- (&raw-table-free _tab65641_) '1))
                             (&raw-table-count-set!
                              _tab65641_
                              (fx+ (&raw-table-count _tab65641_) '1))))))
                    (if (eq? _k65668_ (macro-deleted-obj))
                        (_loop65658_
                         (let ((_next-probe65673_
                                (fx+ _start65654_
                                     (fxquotient
                                      (fx+ _i65663_ (fx* _i65663_ _i65663_))
                                      '2))))
                           (fxmodulo _next-probe65673_ _size65648_))
                         (fx+ _i65663_ '1)
                         (let ((_$e65676_ _deleted65665_))
                           (if _$e65676_ _$e65676_ _probe65661_)))
                        (if (eq? _key65642_ _k65668_)
                            (begin
                              (vector-set! _keys65645_ _probe65661_ _key65642_)
                              (vector-set!
                               _values65646_
                               _probe65661_
                               _value65643_))
                            (_loop65658_
                             (let ((_next-probe65679_
                                    (fx+ _start65654_
                                         (fxquotient
                                          (fx+ _i65663_
                                               (fx* _i65663_ _i65663_))
                                          '2))))
                               (fxmodulo _next-probe65679_ _size65648_))
                             (fx+ _i65663_ '1)
                             _deleted65665_))))))))))
    (define eq-table-delete!
      (lambda (_tab65607_ _key65608_)
        (let ((_keys65610_ (&raw-table-keys _tab65607_))
              (_values65611_ (&raw-table-values _tab65607_)))
          (let* ((_size65613_ (vector-length _keys65610_))
                 (_h65616_ (eq-hash _key65608_))
                 (_start65619_ (fxmodulo _h65616_ _size65613_)))
            (let _loop65623_ ((_probe65626_ _start65619_) (_i65628_ '1))
              (let ((_k65631_ (vector-ref _keys65610_ _probe65626_)))
                (if (eq? _k65631_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k65631_ (macro-deleted-obj))
                        (_loop65623_
                         (let ((_next-probe65634_
                                (fx+ _start65619_
                                     (fxquotient
                                      (fx+ _i65628_ (fx* _i65628_ _i65628_))
                                      '2))))
                           (fxmodulo _next-probe65634_ _size65613_))
                         (fx+ _i65628_ '1))
                        (if (eq? _key65608_ _k65631_)
                            (begin
                              (vector-set!
                               _keys65610_
                               _probe65626_
                               (macro-deleted-obj))
                              (vector-set!
                               _values65611_
                               _probe65626_
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab65607_
                                  (fx- (&raw-table-count _tab65607_) '1)))))
                            (_loop65623_
                             (let ((_next-probe65638_
                                    (fx+ _start65619_
                                         (fxquotient
                                          (fx+ _i65628_
                                               (fx* _i65628_ _i65628_))
                                          '2))))
                               (fxmodulo _next-probe65638_ _size65613_))
                             (fx+ _i65628_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_size-hint65597_)
        (make-raw-table _size-hint65597_ symbolic-hash eq?)))
    (define make-symbolic-table__0
      (lambda ()
        (let ((_size-hint65603_ '#f))
          (make-symbolic-table__% _size-hint65603_))))
    (define make-symbolic-table
      (lambda _g70503_
        (let ((_g70502_ (##length _g70503_)))
          (cond ((##fx= _g70502_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g70503_))
                ((##fx= _g70502_ 1)
                 (apply (lambda (_size-hint65605_)
                          (make-symbolic-table__% _size-hint65605_))
                        _g70503_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g70503_))))))
    (define symbolic-table-ref
      (lambda (_tab65557_ _key65558_ _default65559_)
        (let ((_keys65561_ (&raw-table-keys _tab65557_))
              (_values65562_ (&raw-table-values _tab65557_)))
          (let* ((_size65564_ (vector-length _keys65561_))
                 (_h65567_ (symbolic-hash _key65558_))
                 (_start65570_ (fxmodulo _h65567_ _size65564_)))
            (let _loop65574_ ((_probe65577_ _start65570_)
                              (_i65579_ '1)
                              (_deleted65581_ '#f))
              (let ((_k65584_ (vector-ref _keys65561_ _probe65577_)))
                (if (eq? _k65584_ (macro-unused-obj))
                    _default65559_
                    (if (eq? _k65584_ (macro-deleted-obj))
                        (_loop65574_
                         (let ((_next-probe65587_
                                (fx+ _start65570_
                                     (fxquotient
                                      (fx+ _i65579_ (fx* _i65579_ _i65579_))
                                      '2))))
                           (fxmodulo _next-probe65587_ _size65564_))
                         (fx+ _i65579_ '1)
                         (let ((_$e65590_ _deleted65581_))
                           (if _$e65590_ _$e65590_ _probe65577_)))
                        (if (eq? _key65558_ _k65584_)
                            (vector-ref _values65562_ _probe65577_)
                            (_loop65574_
                             (let ((_next-probe65593_
                                    (fx+ _start65570_
                                         (fxquotient
                                          (fx+ _i65579_
                                               (fx* _i65579_ _i65579_))
                                          '2))))
                               (fxmodulo _next-probe65593_ _size65564_))
                             (fx+ _i65579_ '1)
                             _deleted65581_))))))))))
    (define symbolic-table-set!
      (lambda (_tab65553_ _key65554_ _value65555_)
        (if (fx< (&raw-table-free _tab65553_)
                 (fxquotient (vector-length (&raw-table-keys _tab65553_)) '2))
            (__raw-table-rehash! _tab65553_)
            '#!void)
        (__symbolic-table-set! _tab65553_ _key65554_ _value65555_)))
    (define __symbolic-table-set!
      (lambda (_tab65512_ _key65513_ _value65514_)
        (let ((_keys65516_ (&raw-table-keys _tab65512_))
              (_values65517_ (&raw-table-values _tab65512_)))
          (let* ((_size65519_ (vector-length _keys65516_))
                 (_h65522_ (symbolic-hash _key65513_))
                 (_start65525_ (fxmodulo _h65522_ _size65519_)))
            (let _loop65529_ ((_probe65532_ _start65525_)
                              (_i65534_ '1)
                              (_deleted65536_ '#f))
              (let ((_k65539_ (vector-ref _keys65516_ _probe65532_)))
                (if (eq? _k65539_ (macro-unused-obj))
                    (if _deleted65536_
                        (begin
                          (vector-set! _keys65516_ _deleted65536_ _key65513_)
                          (vector-set!
                           _values65517_
                           _deleted65536_
                           _value65514_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab65512_
                              (fx+ (&raw-table-count _tab65512_) '1)))))
                        (begin
                          (vector-set! _keys65516_ _probe65532_ _key65513_)
                          (vector-set! _values65517_ _probe65532_ _value65514_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab65512_
                              (fx- (&raw-table-free _tab65512_) '1))
                             (&raw-table-count-set!
                              _tab65512_
                              (fx+ (&raw-table-count _tab65512_) '1))))))
                    (if (eq? _k65539_ (macro-deleted-obj))
                        (_loop65529_
                         (let ((_next-probe65544_
                                (fx+ _start65525_
                                     (fxquotient
                                      (fx+ _i65534_ (fx* _i65534_ _i65534_))
                                      '2))))
                           (fxmodulo _next-probe65544_ _size65519_))
                         (fx+ _i65534_ '1)
                         (let ((_$e65547_ _deleted65536_))
                           (if _$e65547_ _$e65547_ _probe65532_)))
                        (if (eq? _key65513_ _k65539_)
                            (begin
                              (vector-set! _keys65516_ _probe65532_ _key65513_)
                              (vector-set!
                               _values65517_
                               _probe65532_
                               _value65514_))
                            (_loop65529_
                             (let ((_next-probe65550_
                                    (fx+ _start65525_
                                         (fxquotient
                                          (fx+ _i65534_
                                               (fx* _i65534_ _i65534_))
                                          '2))))
                               (fxmodulo _next-probe65550_ _size65519_))
                             (fx+ _i65534_ '1)
                             _deleted65536_))))))))))
    (define symbolic-table-delete!
      (lambda (_tab65478_ _key65479_)
        (let ((_keys65481_ (&raw-table-keys _tab65478_))
              (_values65482_ (&raw-table-values _tab65478_)))
          (let* ((_size65484_ (vector-length _keys65481_))
                 (_h65487_ (symbolic-hash _key65479_))
                 (_start65490_ (fxmodulo _h65487_ _size65484_)))
            (let _loop65494_ ((_probe65497_ _start65490_) (_i65499_ '1))
              (let ((_k65502_ (vector-ref _keys65481_ _probe65497_)))
                (if (eq? _k65502_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k65502_ (macro-deleted-obj))
                        (_loop65494_
                         (let ((_next-probe65505_
                                (fx+ _start65490_
                                     (fxquotient
                                      (fx+ _i65499_ (fx* _i65499_ _i65499_))
                                      '2))))
                           (fxmodulo _next-probe65505_ _size65484_))
                         (fx+ _i65499_ '1))
                        (if (eq? _key65479_ _k65502_)
                            (begin
                              (vector-set!
                               _keys65481_
                               _probe65497_
                               (macro-deleted-obj))
                              (vector-set!
                               _values65482_
                               _probe65497_
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab65478_
                                  (fx- (&raw-table-count _tab65478_) '1)))))
                            (_loop65494_
                             (let ((_next-probe65509_
                                    (fx+ _start65490_
                                         (fxquotient
                                          (fx+ _i65499_
                                               (fx* _i65499_ _i65499_))
                                          '2))))
                               (fxmodulo _next-probe65509_ _size65484_))
                             (fx+ _i65499_ '1)))))))))))
    (define make-string-table__%
      (lambda (_size-hint65468_)
        (make-raw-table _size-hint65468_ string-hash ##string=?)))
    (define make-string-table__0
      (lambda ()
        (let ((_size-hint65474_ '#f))
          (make-string-table__% _size-hint65474_))))
    (define make-string-table
      (lambda _g70505_
        (let ((_g70504_ (##length _g70505_)))
          (cond ((##fx= _g70504_ 0)
                 (apply (lambda () (make-string-table__0)) _g70505_))
                ((##fx= _g70504_ 1)
                 (apply (lambda (_size-hint65476_)
                          (make-string-table__% _size-hint65476_))
                        _g70505_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g70505_))))))
    (define string-hash (lambda (_obj65465_) (##string=?-hash _obj65465_)))
    (define string-table-ref
      (lambda (_tab65426_ _key65427_ _default65428_)
        (let ((_keys65430_ (&raw-table-keys _tab65426_))
              (_values65431_ (&raw-table-values _tab65426_)))
          (let* ((_size65433_ (vector-length _keys65430_))
                 (_h65436_ (##string=?-hash _key65427_))
                 (_start65439_ (fxmodulo _h65436_ _size65433_)))
            (let _loop65443_ ((_probe65446_ _start65439_)
                              (_i65448_ '1)
                              (_deleted65450_ '#f))
              (let ((_k65453_ (vector-ref _keys65430_ _probe65446_)))
                (if (eq? _k65453_ (macro-unused-obj))
                    _default65428_
                    (if (eq? _k65453_ (macro-deleted-obj))
                        (_loop65443_
                         (let ((_next-probe65456_
                                (fx+ _start65439_
                                     (fxquotient
                                      (fx+ _i65448_ (fx* _i65448_ _i65448_))
                                      '2))))
                           (fxmodulo _next-probe65456_ _size65433_))
                         (fx+ _i65448_ '1)
                         (let ((_$e65459_ _deleted65450_))
                           (if _$e65459_ _$e65459_ _probe65446_)))
                        (if (##string=? _key65427_ _k65453_)
                            (vector-ref _values65431_ _probe65446_)
                            (_loop65443_
                             (let ((_next-probe65462_
                                    (fx+ _start65439_
                                         (fxquotient
                                          (fx+ _i65448_
                                               (fx* _i65448_ _i65448_))
                                          '2))))
                               (fxmodulo _next-probe65462_ _size65433_))
                             (fx+ _i65448_ '1)
                             _deleted65450_))))))))))
    (define string-table-set!
      (lambda (_tab65422_ _key65423_ _value65424_)
        (if (fx< (&raw-table-free _tab65422_)
                 (fxquotient (vector-length (&raw-table-keys _tab65422_)) '2))
            (__raw-table-rehash! _tab65422_)
            '#!void)
        (__string-table-set! _tab65422_ _key65423_ _value65424_)))
    (define __string-table-set!
      (lambda (_tab65381_ _key65382_ _value65383_)
        (let ((_keys65385_ (&raw-table-keys _tab65381_))
              (_values65386_ (&raw-table-values _tab65381_)))
          (let* ((_size65388_ (vector-length _keys65385_))
                 (_h65391_ (##string=?-hash _key65382_))
                 (_start65394_ (fxmodulo _h65391_ _size65388_)))
            (let _loop65398_ ((_probe65401_ _start65394_)
                              (_i65403_ '1)
                              (_deleted65405_ '#f))
              (let ((_k65408_ (vector-ref _keys65385_ _probe65401_)))
                (if (eq? _k65408_ (macro-unused-obj))
                    (if _deleted65405_
                        (begin
                          (vector-set! _keys65385_ _deleted65405_ _key65382_)
                          (vector-set!
                           _values65386_
                           _deleted65405_
                           _value65383_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab65381_
                              (fx+ (&raw-table-count _tab65381_) '1)))))
                        (begin
                          (vector-set! _keys65385_ _probe65401_ _key65382_)
                          (vector-set! _values65386_ _probe65401_ _value65383_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab65381_
                              (fx- (&raw-table-free _tab65381_) '1))
                             (&raw-table-count-set!
                              _tab65381_
                              (fx+ (&raw-table-count _tab65381_) '1))))))
                    (if (eq? _k65408_ (macro-deleted-obj))
                        (_loop65398_
                         (let ((_next-probe65413_
                                (fx+ _start65394_
                                     (fxquotient
                                      (fx+ _i65403_ (fx* _i65403_ _i65403_))
                                      '2))))
                           (fxmodulo _next-probe65413_ _size65388_))
                         (fx+ _i65403_ '1)
                         (let ((_$e65416_ _deleted65405_))
                           (if _$e65416_ _$e65416_ _probe65401_)))
                        (if (##string=? _key65382_ _k65408_)
                            (begin
                              (vector-set! _keys65385_ _probe65401_ _key65382_)
                              (vector-set!
                               _values65386_
                               _probe65401_
                               _value65383_))
                            (_loop65398_
                             (let ((_next-probe65419_
                                    (fx+ _start65394_
                                         (fxquotient
                                          (fx+ _i65403_
                                               (fx* _i65403_ _i65403_))
                                          '2))))
                               (fxmodulo _next-probe65419_ _size65388_))
                             (fx+ _i65403_ '1)
                             _deleted65405_))))))))))
    (define string-table-delete!
      (lambda (_tab65347_ _key65348_)
        (let ((_keys65350_ (&raw-table-keys _tab65347_))
              (_values65351_ (&raw-table-values _tab65347_)))
          (let* ((_size65353_ (vector-length _keys65350_))
                 (_h65356_ (##string=?-hash _key65348_))
                 (_start65359_ (fxmodulo _h65356_ _size65353_)))
            (let _loop65363_ ((_probe65366_ _start65359_) (_i65368_ '1))
              (let ((_k65371_ (vector-ref _keys65350_ _probe65366_)))
                (if (eq? _k65371_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k65371_ (macro-deleted-obj))
                        (_loop65363_
                         (let ((_next-probe65374_
                                (fx+ _start65359_
                                     (fxquotient
                                      (fx+ _i65368_ (fx* _i65368_ _i65368_))
                                      '2))))
                           (fxmodulo _next-probe65374_ _size65353_))
                         (fx+ _i65368_ '1))
                        (if (##string=? _key65348_ _k65371_)
                            (begin
                              (vector-set!
                               _keys65350_
                               _probe65366_
                               (macro-deleted-obj))
                              (vector-set!
                               _values65351_
                               _probe65366_
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab65347_
                                  (fx- (&raw-table-count _tab65347_) '1)))))
                            (_loop65363_
                             (let ((_next-probe65378_
                                    (fx+ _start65359_
                                         (fxquotient
                                          (fx+ _i65368_
                                               (fx* _i65368_ _i65368_))
                                          '2))))
                               (fxmodulo _next-probe65378_ _size65353_))
                             (fx+ _i65368_ '1)))))))))))))
