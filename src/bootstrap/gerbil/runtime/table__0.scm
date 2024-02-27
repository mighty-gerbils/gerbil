(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1709038441)
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
      (lambda (_tab59662_)
        (##unchecked-structure-ref _tab59662_ '1 __table::t 'raw-table-table)))
    (define &raw-table-count
      (lambda (_tab59660_)
        (##unchecked-structure-ref _tab59660_ '2 __table::t 'raw-table-count)))
    (define &raw-table-free
      (lambda (_tab59658_)
        (##unchecked-structure-ref _tab59658_ '3 __table::t 'raw-table-free)))
    (define &raw-table-hash
      (lambda (_tab59656_)
        (##unchecked-structure-ref _tab59656_ '4 __table::t 'raw-table-hash)))
    (define &raw-table-test
      (lambda (_tab59654_)
        (##unchecked-structure-ref _tab59654_ '5 __table::t 'raw-table-test)))
    (define &raw-table-seed
      (lambda (_tab59652_)
        (##unchecked-structure-ref _tab59652_ '6 __table::t 'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_tab59649_ _val59650_)
        (##unchecked-structure-set!
         _tab59649_
         _val59650_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_tab59646_ _val59647_)
        (##unchecked-structure-set!
         _tab59646_
         _val59647_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_tab59643_ _val59644_)
        (##unchecked-structure-set!
         _tab59643_
         _val59644_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_tab59640_ _val59641_)
        (##unchecked-structure-set!
         _tab59640_
         _val59641_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_tab59637_ _val59638_)
        (##unchecked-structure-set!
         _tab59637_
         _val59638_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_tab59634_ _val59635_)
        (##unchecked-structure-set!
         _tab59634_
         _val59635_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_size-hint59632_)
        (if (and (fixnum? _size-hint59632_) (fx> _size-hint59632_ '0))
            (fx* (fxmax '2 (expt '2 (integer-length _size-hint59632_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_size-hint59608_ _hash59609_ _test59610_ _seed59611_)
        (let* ((_size59613_ (raw-table-size-hint->size _size-hint59608_))
               (_table59615_ (make-vector _size59613_ (macro-unused-obj))))
          (##structure
           __table::t
           _table59615_
           '0
           (fxquotient _size59613_ '2)
           _hash59609_
           _test59610_
           _seed59611_))))
    (define make-raw-table__0
      (lambda (_size-hint59621_ _hash59622_ _test59623_)
        (let ((_seed59625_ '0))
          (make-raw-table__%
           _size-hint59621_
           _hash59622_
           _test59623_
           _seed59625_))))
    (define make-raw-table
      (lambda _g59664_
        (let ((_g59663_ (##length _g59664_)))
          (cond ((##fx= _g59663_ 3)
                 (apply (lambda (_size-hint59621_ _hash59622_ _test59623_)
                          (make-raw-table__0
                           _size-hint59621_
                           _hash59622_
                           _test59623_))
                        _g59664_))
                ((##fx= _g59663_ 4)
                 (apply (lambda (_size-hint59627_
                                 _hash59628_
                                 _test59629_
                                 _seed59630_)
                          (make-raw-table__%
                           _size-hint59627_
                           _hash59628_
                           _test59629_
                           _seed59630_))
                        _g59664_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g59664_))))))
    (define raw-table-ref
      (lambda (_tab59563_ _key59564_ _default59565_)
        (let ((_table59567_ (&raw-table-table _tab59563_))
              (_seed59568_ (&raw-table-seed _tab59563_))
              (_hash59569_ (&raw-table-hash _tab59563_))
              (_test59570_ (&raw-table-test _tab59563_)))
          (let* ((_h59572_ (fxxor (_hash59569_ _key59564_) _seed59568_))
                 (_size59575_ (vector-length _table59567_))
                 (_entries59578_ (fxquotient _size59575_ '2))
                 (_start59581_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59572_ _entries59578_)
                   '1)))
            (let _loop59585_ ((_probe59588_ _start59581_)
                              (_i59590_ '1)
                              (_deleted59592_ '#f))
              (let ((_k59595_ (vector-ref _table59567_ _probe59588_)))
                (if (eq? _k59595_ (macro-unused-obj))
                    _default59565_
                    (if (eq? _k59595_ (macro-deleted-obj))
                        (_loop59585_
                         (let ((_next-probe59598_
                                (fx+ _start59581_
                                     _i59590_
                                     (fx* _i59590_ _i59590_))))
                           (fxmodulo _next-probe59598_ _size59575_))
                         (fx+ _i59590_ '1)
                         (let ((_$e59601_ _deleted59592_))
                           (if _$e59601_ _$e59601_ _probe59588_)))
                        (if (_test59570_ _key59564_ _k59595_)
                            (vector-ref _table59567_ (fx+ _probe59588_ '1))
                            (_loop59585_
                             (let ((_next-probe59604_
                                    (fx+ _start59581_
                                         _i59590_
                                         (fx* _i59590_ _i59590_))))
                               (fxmodulo _next-probe59604_ _size59575_))
                             (fx+ _i59590_ '1)
                             _deleted59592_))))))))))
    (define raw-table-set!
      (lambda (_tab59559_ _key59560_ _value59561_)
        (if (fx< (&raw-table-free _tab59559_)
                 (fxquotient (vector-length (&raw-table-table _tab59559_)) '4))
            (__raw-table-rehash! _tab59559_)
            '#!void)
        (__raw-table-set! _tab59559_ _key59560_ _value59561_)))
    (define raw-table-update!
      (lambda (_tab59554_ _key59555_ _update59556_ _default59557_)
        (if (fx< (&raw-table-free _tab59554_)
                 (fxquotient (vector-length (&raw-table-table _tab59554_)) '4))
            (__raw-table-rehash! _tab59554_)
            '#!void)
        (__raw-table-update!
         _tab59554_
         _key59555_
         _update59556_
         _default59557_)))
    (define raw-table-delete!
      (lambda (_tab59515_ _key59516_)
        (let ((_table59518_ (&raw-table-table _tab59515_))
              (_seed59519_ (&raw-table-seed _tab59515_))
              (_hash59520_ (&raw-table-hash _tab59515_))
              (_test59521_ (&raw-table-test _tab59515_)))
          (let* ((_h59523_ (fxxor (_hash59520_ _key59516_) _seed59519_))
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
                        (if (_test59521_ _key59516_ _k59544_)
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
                                  _tab59515_
                                  (fx- (&raw-table-count _tab59515_) '1)))))
                            (_loop59536_
                             (let ((_next-probe59551_
                                    (fx+ _start59532_
                                         _i59541_
                                         (fx* _i59541_ _i59541_))))
                               (fxmodulo _next-probe59551_ _size59526_))
                             (fx+ _i59541_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_tab59499_ _proc59500_)
        (let* ((_table59502_ (&raw-table-table _tab59499_))
               (_size59504_ (vector-length _table59502_)))
          (let _loop59507_ ((_i59509_ '0))
            (if (fx< _i59509_ _size59504_)
                (begin
                  (let ((_key59511_ (vector-ref _table59502_ _i59509_)))
                    (if (and (not (eq? _key59511_ (macro-unused-obj)))
                             (not (eq? _key59511_ (macro-deleted-obj))))
                        (let ((_value59513_
                               (vector-ref _table59502_ (fx+ _i59509_ '1))))
                          (_proc59500_ _key59511_ _value59513_))
                        '#!void))
                  (_loop59507_ (fx+ _i59509_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_tab59495_)
        (let ((_new-tab59497_ (##structure-copy _tab59495_)))
          (&raw-table-table-set!
           _new-tab59497_
           (vector-copy (&raw-table-table _tab59495_)))
          _new-tab59497_)))
    (define raw-table-clear!
      (lambda (_tab59493_)
        (vector-fill! (&raw-table-table _tab59493_) (macro-unused-obj))
        (&raw-table-count-set! _tab59493_ '0)
        (&raw-table-free-set!
         _tab59493_
         (fxquotient (vector-length (&raw-table-table _tab59493_)) '2))))
    (define __raw-table-set!
      (lambda (_tab59447_ _key59448_ _value59449_)
        (let ((_table59451_ (&raw-table-table _tab59447_))
              (_seed59452_ (&raw-table-seed _tab59447_))
              (_hash59453_ (&raw-table-hash _tab59447_))
              (_test59454_ (&raw-table-test _tab59447_)))
          (let* ((_h59456_ (fxxor (_hash59453_ _key59448_) _seed59452_))
                 (_size59459_ (vector-length _table59451_))
                 (_entries59462_ (fxquotient _size59459_ '2))
                 (_start59465_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59456_ _entries59462_)
                   '1)))
            (let _loop59469_ ((_probe59472_ _start59465_)
                              (_i59474_ '1)
                              (_deleted59476_ '#f))
              (let ((_k59479_ (vector-ref _table59451_ _probe59472_)))
                (if (eq? _k59479_ (macro-unused-obj))
                    (if _deleted59476_
                        (begin
                          (vector-set! _table59451_ _deleted59476_ _key59448_)
                          (vector-set!
                           _table59451_
                           (fx+ _deleted59476_ '1)
                           _value59449_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59447_
                              (fx+ (&raw-table-count _tab59447_) '1)))))
                        (begin
                          (vector-set! _table59451_ _probe59472_ _key59448_)
                          (vector-set!
                           _table59451_
                           (fx+ _probe59472_ '1)
                           _value59449_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59447_
                              (fx- (&raw-table-free _tab59447_) '1))
                             (&raw-table-count-set!
                              _tab59447_
                              (fx+ (&raw-table-count _tab59447_) '1))))))
                    (if (eq? _k59479_ (macro-deleted-obj))
                        (_loop59469_
                         (let ((_next-probe59484_
                                (fx+ _start59465_
                                     _i59474_
                                     (fx* _i59474_ _i59474_))))
                           (fxmodulo _next-probe59484_ _size59459_))
                         (fx+ _i59474_ '1)
                         (let ((_$e59487_ _deleted59476_))
                           (if _$e59487_ _$e59487_ _probe59472_)))
                        (if (_test59454_ _key59448_ _k59479_)
                            (begin
                              (vector-set!
                               _table59451_
                               _probe59472_
                               _key59448_)
                              (vector-set!
                               _table59451_
                               (fx+ _probe59472_ '1)
                               _value59449_))
                            (_loop59469_
                             (let ((_next-probe59490_
                                    (fx+ _start59465_
                                         _i59474_
                                         (fx* _i59474_ _i59474_))))
                               (fxmodulo _next-probe59490_ _size59459_))
                             (fx+ _i59474_ '1)
                             _deleted59476_))))))))))
    (define __raw-table-update!
      (lambda (_tab59400_ _key59401_ _update59402_ _default59403_)
        (let ((_table59405_ (&raw-table-table _tab59400_))
              (_seed59406_ (&raw-table-seed _tab59400_))
              (_hash59407_ (&raw-table-hash _tab59400_))
              (_test59408_ (&raw-table-test _tab59400_)))
          (let* ((_h59410_ (fxxor (_hash59407_ _key59401_) _seed59406_))
                 (_size59413_ (vector-length _table59405_))
                 (_entries59416_ (fxquotient _size59413_ '2))
                 (_start59419_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59410_ _entries59416_)
                   '1)))
            (let _loop59423_ ((_probe59426_ _start59419_)
                              (_i59428_ '1)
                              (_deleted59430_ '#f))
              (let ((_k59433_ (vector-ref _table59405_ _probe59426_)))
                (if (eq? _k59433_ (macro-unused-obj))
                    (if _deleted59430_
                        (begin
                          (vector-set! _table59405_ _deleted59430_ _key59401_)
                          (vector-set!
                           _table59405_
                           (fx+ _deleted59430_ '1)
                           (_update59402_ _default59403_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59400_
                              (fx+ (&raw-table-count _tab59400_) '1)))))
                        (begin
                          (vector-set! _table59405_ _probe59426_ _key59401_)
                          (vector-set!
                           _table59405_
                           (fx+ _probe59426_ '1)
                           (_update59402_ _default59403_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59400_
                              (fx- (&raw-table-free _tab59400_) '1))
                             (&raw-table-count-set!
                              _tab59400_
                              (fx+ (&raw-table-count _tab59400_) '1))))))
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
                        (if (_test59408_ _key59401_ _k59433_)
                            (begin
                              (vector-set!
                               _table59405_
                               _probe59426_
                               _key59401_)
                              (vector-set!
                               _table59405_
                               (fx+ _probe59426_ '1)
                               (_update59402_
                                (vector-ref
                                 _table59405_
                                 (fx+ _probe59426_ '1)))))
                            (_loop59423_
                             (let ((_next-probe59444_
                                    (fx+ _start59419_
                                         _i59428_
                                         (fx* _i59428_ _i59428_))))
                               (fxmodulo _next-probe59444_ _size59413_))
                             (fx+ _i59428_ '1)
                             _deleted59430_))))))))))
    (define __raw-table-rehash!
      (lambda (_tab59381_)
        (let* ((_old-table59383_ (&raw-table-table _tab59381_))
               (_old-size59385_ (vector-length _old-table59383_))
               (_new-size59387_
                (if (fx< (&raw-table-count _tab59381_)
                         (fxquotient _old-size59385_ '4))
                    (vector-length _old-table59383_)
                    (fx* '2 (vector-length _old-table59383_))))
               (_new-table59389_
                (make-vector _new-size59387_ (macro-unused-obj))))
          (&raw-table-table-set! _tab59381_ _new-table59389_)
          (&raw-table-count-set! _tab59381_ '0)
          (&raw-table-free-set! _tab59381_ (fxquotient _new-size59387_ '2))
          (let _lp59392_ ((_i59394_ '0))
            (if (fx< _i59394_ _old-size59385_)
                (begin
                  (let ((_key59396_ (vector-ref _old-table59383_ _i59394_)))
                    (if (and (not (eq? _key59396_ (macro-unused-obj)))
                             (not (eq? _key59396_ (macro-deleted-obj))))
                        (let ((_value59398_
                               (vector-ref
                                _old-table59383_
                                (fx+ _i59394_ '1))))
                          (__raw-table-set!
                           _tab59381_
                           _key59396_
                           _value59398_))
                        '#!void))
                  (_lp59392_ (fx+ _i59394_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_obj59377_)
        (let ((_t59379_ (##type _obj59377_)))
          (if (fx= (fxand _t59379_ '1) '0)
              (fxand (##type-cast _obj59377_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _obj59377_)
                  (symbolic-hash _obj59377_)
                  (fxand (__eq-hash _obj59377_) (macro-max-fixnum32)))))))
    (define __eq-hash
      (lambda (_obj59374_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _obj59374_)))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash-loads '#f64(.25 .75))
    (define __object-eq-hash
      (##gc-hash-table-allocate
       '1024
       (##fxior (macro-gc-hash-table-flag-mem-alloc-keys)
                (macro-gc-hash-table-flag-weak-keys))
       __object-eq-hash-loads))
    (define __object->eq-hash
      (lambda (_obj59362_)
        (declare (not interrupts-enabled))
        (begin
          (if (##fx= '0
                     (##fxand (macro-gc-hash-table-flags __object-eq-hash)
                              (macro-gc-hash-table-flag-need-rehash)))
              '#!void
              (set! __object-eq-hash
                    (##gc-hash-table-rehash!
                     __object-eq-hash
                     (##gc-hash-table-resize!
                      __object-eq-hash
                      __object-eq-hash-loads))))
          (let ((_val59365_ (##gc-hash-table-ref __object-eq-hash _obj59362_)))
            (if (##eq? _val59365_ (macro-unused-obj))
                (let ((_val59367_ __object-eq-hash-next))
                  (set! __object-eq-hash-next
                        (let ((_$e59369_ (##fx+? __object-eq-hash-next '1)))
                          (if _$e59369_ _$e59369_ '0)))
                  (if (##gc-hash-table-set!
                       __object-eq-hash
                       _obj59362_
                       _val59367_)
                      (let ((_new-table59372_
                             (##gc-hash-table-rehash!
                              __object-eq-hash
                              (##gc-hash-table-resize!
                               __object-eq-hash
                               __object-eq-hash-loads))))
                        (##gc-hash-table-set!
                         _new-table59372_
                         _obj59362_
                         _val59367_)
                        (set! __object-eq-hash _new-table59372_))
                      '#!void)
                  _val59367_)
                _val59365_)))))
    (define eqv-hash
      (lambda (_obj59352_)
        (letrec ((_combine59354_
                  (lambda (_a59359_ _b59360_)
                    (fxand (fx* (fx+ _a59359_
                                     (fxarithmetic-shift-left _b59360_ '1))
                                '331804471)
                           (macro-max-fixnum32))))
                 (_hash59355_
                  (lambda (_obj59357_)
                    (macro-number-dispatch
                     _obj59357_
                     (eq-hash _obj59357_)
                     (fxand _obj59357_ (macro-max-fixnum32))
                     (modulo _obj59357_ '331804481)
                     (_combine59354_
                      (_hash59355_ (macro-ratnum-numerator _obj59357_))
                      (_hash59355_ (macro-ratnum-denominator _obj59357_)))
                     (_combine59354_
                      (##u16vector-ref _obj59357_ '0)
                      (_combine59354_
                       (##u16vector-ref _obj59357_ '1)
                       (_combine59354_
                        (##u16vector-ref _obj59357_ '2)
                        (##u16vector-ref _obj59357_ '3))))
                     (_combine59354_
                      (_hash59355_ (macro-cpxnum-real _obj59357_))
                      (_hash59355_ (macro-cpxnum-imag _obj59357_)))))))
          (_hash59355_ _obj59352_))))
    (define symbolic?
      (lambda (_obj59347_)
        (let ((_$e59349_ (symbol? _obj59347_)))
          (if _$e59349_ _$e59349_ (keyword? _obj59347_)))))
    (define symbolic-hash (lambda (_obj59345_) (macro-slot '1 _obj59345_)))
    (define string-hash (lambda (_obj59343_) (##string=?-hash _obj59343_)))
    (define make-eq-table__%
      (lambda (_size-hint59324_ _seed59326_)
        (make-raw-table__% _size-hint59324_ eq-hash eq? _seed59326_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_size-hint59332_ '#f) (_seed59334_ '0))
          (make-eq-table__% _size-hint59332_ _seed59334_))))
    (define make-eq-table__1
      (lambda (_size-hint59336_)
        (let ((_seed59338_ '0))
          (make-eq-table__% _size-hint59336_ _seed59338_))))
    (define make-eq-table
      (lambda _g59666_
        (let ((_g59665_ (##length _g59666_)))
          (cond ((##fx= _g59665_ 0)
                 (apply (lambda () (make-eq-table__0)) _g59666_))
                ((##fx= _g59665_ 1)
                 (apply (lambda (_size-hint59336_)
                          (make-eq-table__1 _size-hint59336_))
                        _g59666_))
                ((##fx= _g59665_ 2)
                 (apply (lambda (_size-hint59340_ _seed59341_)
                          (make-eq-table__% _size-hint59340_ _seed59341_))
                        _g59666_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g59666_))))))
    (define eq-table-ref
      (lambda (_tab59281_ _key59282_ _default59283_)
        (let ((_table59285_ (&raw-table-table _tab59281_))
              (_seed59286_ (&raw-table-seed _tab59281_)))
          (let* ((_h59288_ (fxxor (eq-hash _key59282_) _seed59286_))
                 (_size59291_ (vector-length _table59285_))
                 (_entries59294_ (fxquotient _size59291_ '2))
                 (_start59297_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59288_ _entries59294_)
                   '1)))
            (let _loop59301_ ((_probe59304_ _start59297_)
                              (_i59306_ '1)
                              (_deleted59308_ '#f))
              (let ((_k59311_ (vector-ref _table59285_ _probe59304_)))
                (if (eq? _k59311_ (macro-unused-obj))
                    _default59283_
                    (if (eq? _k59311_ (macro-deleted-obj))
                        (_loop59301_
                         (let ((_next-probe59314_
                                (fx+ _start59297_
                                     _i59306_
                                     (fx* _i59306_ _i59306_))))
                           (fxmodulo _next-probe59314_ _size59291_))
                         (fx+ _i59306_ '1)
                         (let ((_$e59317_ _deleted59308_))
                           (if _$e59317_ _$e59317_ _probe59304_)))
                        (if (eq? _key59282_ _k59311_)
                            (vector-ref _table59285_ (fx+ _probe59304_ '1))
                            (_loop59301_
                             (let ((_next-probe59320_
                                    (fx+ _start59297_
                                         _i59306_
                                         (fx* _i59306_ _i59306_))))
                               (fxmodulo _next-probe59320_ _size59291_))
                             (fx+ _i59306_ '1)
                             _deleted59308_))))))))))
    (define eq-table-set!
      (lambda (_tab59277_ _key59278_ _value59279_)
        (if (fx< (&raw-table-free _tab59277_)
                 (fxquotient (vector-length (&raw-table-table _tab59277_)) '4))
            (__raw-table-rehash! _tab59277_)
            '#!void)
        (__eq-table-set! _tab59277_ _key59278_ _value59279_)))
    (define __eq-table-set!
      (lambda (_tab59232_ _key59233_ _value59234_)
        (let ((_table59237_ (&raw-table-table _tab59232_))
              (_seed59238_ (&raw-table-seed _tab59232_)))
          (let* ((_h59240_ (fxxor (eq-hash _key59233_) _seed59238_))
                 (_size59243_ (vector-length _table59237_))
                 (_entries59246_ (fxquotient _size59243_ '2))
                 (_start59249_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59240_ _entries59246_)
                   '1)))
            (let _loop59253_ ((_probe59256_ _start59249_)
                              (_i59258_ '1)
                              (_deleted59260_ '#f))
              (let ((_k59263_ (vector-ref _table59237_ _probe59256_)))
                (if (eq? _k59263_ (macro-unused-obj))
                    (if _deleted59260_
                        (begin
                          (vector-set! _table59237_ _deleted59260_ _key59233_)
                          (vector-set!
                           _table59237_
                           (fx+ _deleted59260_ '1)
                           _value59234_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59232_
                              (fx+ (&raw-table-count _tab59232_) '1)))))
                        (begin
                          (vector-set! _table59237_ _probe59256_ _key59233_)
                          (vector-set!
                           _table59237_
                           (fx+ _probe59256_ '1)
                           _value59234_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59232_
                              (fx- (&raw-table-free _tab59232_) '1))
                             (&raw-table-count-set!
                              _tab59232_
                              (fx+ (&raw-table-count _tab59232_) '1))))))
                    (if (eq? _k59263_ (macro-deleted-obj))
                        (_loop59253_
                         (let ((_next-probe59268_
                                (fx+ _start59249_
                                     _i59258_
                                     (fx* _i59258_ _i59258_))))
                           (fxmodulo _next-probe59268_ _size59243_))
                         (fx+ _i59258_ '1)
                         (let ((_$e59271_ _deleted59260_))
                           (if _$e59271_ _$e59271_ _probe59256_)))
                        (if (eq? _key59233_ _k59263_)
                            (begin
                              (vector-set!
                               _table59237_
                               _probe59256_
                               _key59233_)
                              (vector-set!
                               _table59237_
                               (fx+ _probe59256_ '1)
                               _value59234_))
                            (_loop59253_
                             (let ((_next-probe59274_
                                    (fx+ _start59249_
                                         _i59258_
                                         (fx* _i59258_ _i59258_))))
                               (fxmodulo _next-probe59274_ _size59243_))
                             (fx+ _i59258_ '1)
                             _deleted59260_))))))))))
    (define eq-table-update!
      (lambda (_tab59227_ _key59228_ _eq-table-update!59229_ _default59230_)
        (if (fx< (&raw-table-free _tab59227_)
                 (fxquotient (vector-length (&raw-table-table _tab59227_)) '4))
            (__raw-table-rehash! _tab59227_)
            '#!void)
        (__eq-table-update!
         _tab59227_
         _key59228_
         _eq-table-update!59229_
         _default59230_)))
    (define __eq-table-update!
      (lambda (_tab59181_ _key59182_ _eq-table-update!59183_ _default59184_)
        (let ((_table59187_ (&raw-table-table _tab59181_))
              (_seed59188_ (&raw-table-seed _tab59181_)))
          (let* ((_h59190_ (fxxor (eq-hash _key59182_) _seed59188_))
                 (_size59193_ (vector-length _table59187_))
                 (_entries59196_ (fxquotient _size59193_ '2))
                 (_start59199_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59190_ _entries59196_)
                   '1)))
            (let _loop59203_ ((_probe59206_ _start59199_)
                              (_i59208_ '1)
                              (_deleted59210_ '#f))
              (let ((_k59213_ (vector-ref _table59187_ _probe59206_)))
                (if (eq? _k59213_ (macro-unused-obj))
                    (if _deleted59210_
                        (begin
                          (vector-set! _table59187_ _deleted59210_ _key59182_)
                          (vector-set!
                           _table59187_
                           (fx+ _deleted59210_ '1)
                           (_eq-table-update!59183_ _default59184_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59181_
                              (fx+ (&raw-table-count _tab59181_) '1)))))
                        (begin
                          (vector-set! _table59187_ _probe59206_ _key59182_)
                          (vector-set!
                           _table59187_
                           (fx+ _probe59206_ '1)
                           (_eq-table-update!59183_ _default59184_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59181_
                              (fx- (&raw-table-free _tab59181_) '1))
                             (&raw-table-count-set!
                              _tab59181_
                              (fx+ (&raw-table-count _tab59181_) '1))))))
                    (if (eq? _k59213_ (macro-deleted-obj))
                        (_loop59203_
                         (let ((_next-probe59218_
                                (fx+ _start59199_
                                     _i59208_
                                     (fx* _i59208_ _i59208_))))
                           (fxmodulo _next-probe59218_ _size59193_))
                         (fx+ _i59208_ '1)
                         (let ((_$e59221_ _deleted59210_))
                           (if _$e59221_ _$e59221_ _probe59206_)))
                        (if (eq? _key59182_ _k59213_)
                            (begin
                              (vector-set!
                               _table59187_
                               _probe59206_
                               _key59182_)
                              (vector-set!
                               _table59187_
                               (fx+ _probe59206_ '1)
                               (_eq-table-update!59183_
                                (vector-ref
                                 _table59187_
                                 (fx+ _probe59206_ '1)))))
                            (_loop59203_
                             (let ((_next-probe59224_
                                    (fx+ _start59199_
                                         _i59208_
                                         (fx* _i59208_ _i59208_))))
                               (fxmodulo _next-probe59224_ _size59193_))
                             (fx+ _i59208_ '1)
                             _deleted59210_))))))))))
    (define eq-table-delete!
      (lambda (_tab59140_ _key59142_)
        (let ((_table59145_ (&raw-table-table _tab59140_))
              (_seed59147_ (&raw-table-seed _tab59140_)))
          (let* ((_h59150_ (fxxor (eq-hash _key59142_) _seed59147_))
                 (_size59153_ (vector-length _table59145_))
                 (_entries59156_ (fxquotient _size59153_ '2))
                 (_start59159_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59150_ _entries59156_)
                   '1)))
            (let _loop59163_ ((_probe59166_ _start59159_) (_i59168_ '1))
              (let ((_k59171_ (vector-ref _table59145_ _probe59166_)))
                (if (eq? _k59171_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59171_ (macro-deleted-obj))
                        (_loop59163_
                         (let ((_next-probe59174_
                                (fx+ _start59159_
                                     _i59168_
                                     (fx* _i59168_ _i59168_))))
                           (fxmodulo _next-probe59174_ _size59153_))
                         (fx+ _i59168_ '1))
                        (if (eq? _key59142_ _k59171_)
                            (begin
                              (vector-set!
                               _table59145_
                               _probe59166_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59145_
                               (fx+ _probe59166_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59140_
                                  (fx- (&raw-table-count _tab59140_) '1)))))
                            (_loop59163_
                             (let ((_next-probe59178_
                                    (fx+ _start59159_
                                         _i59168_
                                         (fx* _i59168_ _i59168_))))
                               (fxmodulo _next-probe59178_ _size59153_))
                             (fx+ _i59168_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_size-hint59121_ _seed59123_)
        (make-raw-table__% _size-hint59121_ eqv-hash eqv? _seed59123_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_size-hint59129_ '#f) (_seed59131_ '0))
          (make-eqv-table__% _size-hint59129_ _seed59131_))))
    (define make-eqv-table__1
      (lambda (_size-hint59133_)
        (let ((_seed59135_ '0))
          (make-eqv-table__% _size-hint59133_ _seed59135_))))
    (define make-eqv-table
      (lambda _g59668_
        (let ((_g59667_ (##length _g59668_)))
          (cond ((##fx= _g59667_ 0)
                 (apply (lambda () (make-eqv-table__0)) _g59668_))
                ((##fx= _g59667_ 1)
                 (apply (lambda (_size-hint59133_)
                          (make-eqv-table__1 _size-hint59133_))
                        _g59668_))
                ((##fx= _g59667_ 2)
                 (apply (lambda (_size-hint59137_ _seed59138_)
                          (make-eqv-table__% _size-hint59137_ _seed59138_))
                        _g59668_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g59668_))))))
    (define eqv-table-ref
      (lambda (_tab59078_ _key59079_ _default59080_)
        (let ((_table59082_ (&raw-table-table _tab59078_))
              (_seed59083_ (&raw-table-seed _tab59078_)))
          (let* ((_h59085_ (fxxor (eqv-hash _key59079_) _seed59083_))
                 (_size59088_ (vector-length _table59082_))
                 (_entries59091_ (fxquotient _size59088_ '2))
                 (_start59094_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59085_ _entries59091_)
                   '1)))
            (let _loop59098_ ((_probe59101_ _start59094_)
                              (_i59103_ '1)
                              (_deleted59105_ '#f))
              (let ((_k59108_ (vector-ref _table59082_ _probe59101_)))
                (if (eq? _k59108_ (macro-unused-obj))
                    _default59080_
                    (if (eq? _k59108_ (macro-deleted-obj))
                        (_loop59098_
                         (let ((_next-probe59111_
                                (fx+ _start59094_
                                     _i59103_
                                     (fx* _i59103_ _i59103_))))
                           (fxmodulo _next-probe59111_ _size59088_))
                         (fx+ _i59103_ '1)
                         (let ((_$e59114_ _deleted59105_))
                           (if _$e59114_ _$e59114_ _probe59101_)))
                        (if (eqv? _key59079_ _k59108_)
                            (vector-ref _table59082_ (fx+ _probe59101_ '1))
                            (_loop59098_
                             (let ((_next-probe59117_
                                    (fx+ _start59094_
                                         _i59103_
                                         (fx* _i59103_ _i59103_))))
                               (fxmodulo _next-probe59117_ _size59088_))
                             (fx+ _i59103_ '1)
                             _deleted59105_))))))))))
    (define eqv-table-set!
      (lambda (_tab59074_ _key59075_ _value59076_)
        (if (fx< (&raw-table-free _tab59074_)
                 (fxquotient (vector-length (&raw-table-table _tab59074_)) '4))
            (__raw-table-rehash! _tab59074_)
            '#!void)
        (__eqv-table-set! _tab59074_ _key59075_ _value59076_)))
    (define __eqv-table-set!
      (lambda (_tab59029_ _key59030_ _value59031_)
        (let ((_table59034_ (&raw-table-table _tab59029_))
              (_seed59035_ (&raw-table-seed _tab59029_)))
          (let* ((_h59037_ (fxxor (eqv-hash _key59030_) _seed59035_))
                 (_size59040_ (vector-length _table59034_))
                 (_entries59043_ (fxquotient _size59040_ '2))
                 (_start59046_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59037_ _entries59043_)
                   '1)))
            (let _loop59050_ ((_probe59053_ _start59046_)
                              (_i59055_ '1)
                              (_deleted59057_ '#f))
              (let ((_k59060_ (vector-ref _table59034_ _probe59053_)))
                (if (eq? _k59060_ (macro-unused-obj))
                    (if _deleted59057_
                        (begin
                          (vector-set! _table59034_ _deleted59057_ _key59030_)
                          (vector-set!
                           _table59034_
                           (fx+ _deleted59057_ '1)
                           _value59031_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59029_
                              (fx+ (&raw-table-count _tab59029_) '1)))))
                        (begin
                          (vector-set! _table59034_ _probe59053_ _key59030_)
                          (vector-set!
                           _table59034_
                           (fx+ _probe59053_ '1)
                           _value59031_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59029_
                              (fx- (&raw-table-free _tab59029_) '1))
                             (&raw-table-count-set!
                              _tab59029_
                              (fx+ (&raw-table-count _tab59029_) '1))))))
                    (if (eq? _k59060_ (macro-deleted-obj))
                        (_loop59050_
                         (let ((_next-probe59065_
                                (fx+ _start59046_
                                     _i59055_
                                     (fx* _i59055_ _i59055_))))
                           (fxmodulo _next-probe59065_ _size59040_))
                         (fx+ _i59055_ '1)
                         (let ((_$e59068_ _deleted59057_))
                           (if _$e59068_ _$e59068_ _probe59053_)))
                        (if (eqv? _key59030_ _k59060_)
                            (begin
                              (vector-set!
                               _table59034_
                               _probe59053_
                               _key59030_)
                              (vector-set!
                               _table59034_
                               (fx+ _probe59053_ '1)
                               _value59031_))
                            (_loop59050_
                             (let ((_next-probe59071_
                                    (fx+ _start59046_
                                         _i59055_
                                         (fx* _i59055_ _i59055_))))
                               (fxmodulo _next-probe59071_ _size59040_))
                             (fx+ _i59055_ '1)
                             _deleted59057_))))))))))
    (define eqv-table-update!
      (lambda (_tab59024_ _key59025_ _eqv-table-update!59026_ _default59027_)
        (if (fx< (&raw-table-free _tab59024_)
                 (fxquotient (vector-length (&raw-table-table _tab59024_)) '4))
            (__raw-table-rehash! _tab59024_)
            '#!void)
        (__eqv-table-update!
         _tab59024_
         _key59025_
         _eqv-table-update!59026_
         _default59027_)))
    (define __eqv-table-update!
      (lambda (_tab58978_ _key58979_ _eqv-table-update!58980_ _default58981_)
        (let ((_table58984_ (&raw-table-table _tab58978_))
              (_seed58985_ (&raw-table-seed _tab58978_)))
          (let* ((_h58987_ (fxxor (eqv-hash _key58979_) _seed58985_))
                 (_size58990_ (vector-length _table58984_))
                 (_entries58993_ (fxquotient _size58990_ '2))
                 (_start58996_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58987_ _entries58993_)
                   '1)))
            (let _loop59000_ ((_probe59003_ _start58996_)
                              (_i59005_ '1)
                              (_deleted59007_ '#f))
              (let ((_k59010_ (vector-ref _table58984_ _probe59003_)))
                (if (eq? _k59010_ (macro-unused-obj))
                    (if _deleted59007_
                        (begin
                          (vector-set! _table58984_ _deleted59007_ _key58979_)
                          (vector-set!
                           _table58984_
                           (fx+ _deleted59007_ '1)
                           (_eqv-table-update!58980_ _default58981_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58978_
                              (fx+ (&raw-table-count _tab58978_) '1)))))
                        (begin
                          (vector-set! _table58984_ _probe59003_ _key58979_)
                          (vector-set!
                           _table58984_
                           (fx+ _probe59003_ '1)
                           (_eqv-table-update!58980_ _default58981_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58978_
                              (fx- (&raw-table-free _tab58978_) '1))
                             (&raw-table-count-set!
                              _tab58978_
                              (fx+ (&raw-table-count _tab58978_) '1))))))
                    (if (eq? _k59010_ (macro-deleted-obj))
                        (_loop59000_
                         (let ((_next-probe59015_
                                (fx+ _start58996_
                                     _i59005_
                                     (fx* _i59005_ _i59005_))))
                           (fxmodulo _next-probe59015_ _size58990_))
                         (fx+ _i59005_ '1)
                         (let ((_$e59018_ _deleted59007_))
                           (if _$e59018_ _$e59018_ _probe59003_)))
                        (if (eqv? _key58979_ _k59010_)
                            (begin
                              (vector-set!
                               _table58984_
                               _probe59003_
                               _key58979_)
                              (vector-set!
                               _table58984_
                               (fx+ _probe59003_ '1)
                               (_eqv-table-update!58980_
                                (vector-ref
                                 _table58984_
                                 (fx+ _probe59003_ '1)))))
                            (_loop59000_
                             (let ((_next-probe59021_
                                    (fx+ _start58996_
                                         _i59005_
                                         (fx* _i59005_ _i59005_))))
                               (fxmodulo _next-probe59021_ _size58990_))
                             (fx+ _i59005_ '1)
                             _deleted59007_))))))))))
    (define eqv-table-delete!
      (lambda (_tab58937_ _key58939_)
        (let ((_table58942_ (&raw-table-table _tab58937_))
              (_seed58944_ (&raw-table-seed _tab58937_)))
          (let* ((_h58947_ (fxxor (eqv-hash _key58939_) _seed58944_))
                 (_size58950_ (vector-length _table58942_))
                 (_entries58953_ (fxquotient _size58950_ '2))
                 (_start58956_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58947_ _entries58953_)
                   '1)))
            (let _loop58960_ ((_probe58963_ _start58956_) (_i58965_ '1))
              (let ((_k58968_ (vector-ref _table58942_ _probe58963_)))
                (if (eq? _k58968_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k58968_ (macro-deleted-obj))
                        (_loop58960_
                         (let ((_next-probe58971_
                                (fx+ _start58956_
                                     _i58965_
                                     (fx* _i58965_ _i58965_))))
                           (fxmodulo _next-probe58971_ _size58950_))
                         (fx+ _i58965_ '1))
                        (if (eqv? _key58939_ _k58968_)
                            (begin
                              (vector-set!
                               _table58942_
                               _probe58963_
                               (macro-deleted-obj))
                              (vector-set!
                               _table58942_
                               (fx+ _probe58963_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab58937_
                                  (fx- (&raw-table-count _tab58937_) '1)))))
                            (_loop58960_
                             (let ((_next-probe58975_
                                    (fx+ _start58956_
                                         _i58965_
                                         (fx* _i58965_ _i58965_))))
                               (fxmodulo _next-probe58975_ _size58950_))
                             (fx+ _i58965_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_size-hint58918_ _seed58920_)
        (make-raw-table__% _size-hint58918_ symbolic-hash eq? _seed58920_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_size-hint58926_ '#f) (_seed58928_ '0))
          (make-symbolic-table__% _size-hint58926_ _seed58928_))))
    (define make-symbolic-table__1
      (lambda (_size-hint58930_)
        (let ((_seed58932_ '0))
          (make-symbolic-table__% _size-hint58930_ _seed58932_))))
    (define make-symbolic-table
      (lambda _g59670_
        (let ((_g59669_ (##length _g59670_)))
          (cond ((##fx= _g59669_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g59670_))
                ((##fx= _g59669_ 1)
                 (apply (lambda (_size-hint58930_)
                          (make-symbolic-table__1 _size-hint58930_))
                        _g59670_))
                ((##fx= _g59669_ 2)
                 (apply (lambda (_size-hint58934_ _seed58935_)
                          (make-symbolic-table__%
                           _size-hint58934_
                           _seed58935_))
                        _g59670_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g59670_))))))
    (define symbolic-table-ref
      (lambda (_tab58875_ _key58876_ _default58877_)
        (let ((_table58879_ (&raw-table-table _tab58875_))
              (_seed58880_ (&raw-table-seed _tab58875_)))
          (let* ((_h58882_ (fxxor (symbolic-hash _key58876_) _seed58880_))
                 (_size58885_ (vector-length _table58879_))
                 (_entries58888_ (fxquotient _size58885_ '2))
                 (_start58891_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58882_ _entries58888_)
                   '1)))
            (let _loop58895_ ((_probe58898_ _start58891_)
                              (_i58900_ '1)
                              (_deleted58902_ '#f))
              (let ((_k58905_ (vector-ref _table58879_ _probe58898_)))
                (if (eq? _k58905_ (macro-unused-obj))
                    _default58877_
                    (if (eq? _k58905_ (macro-deleted-obj))
                        (_loop58895_
                         (let ((_next-probe58908_
                                (fx+ _start58891_
                                     _i58900_
                                     (fx* _i58900_ _i58900_))))
                           (fxmodulo _next-probe58908_ _size58885_))
                         (fx+ _i58900_ '1)
                         (let ((_$e58911_ _deleted58902_))
                           (if _$e58911_ _$e58911_ _probe58898_)))
                        (if (eq? _key58876_ _k58905_)
                            (vector-ref _table58879_ (fx+ _probe58898_ '1))
                            (_loop58895_
                             (let ((_next-probe58914_
                                    (fx+ _start58891_
                                         _i58900_
                                         (fx* _i58900_ _i58900_))))
                               (fxmodulo _next-probe58914_ _size58885_))
                             (fx+ _i58900_ '1)
                             _deleted58902_))))))))))
    (define symbolic-table-set!
      (lambda (_tab58871_ _key58872_ _value58873_)
        (if (fx< (&raw-table-free _tab58871_)
                 (fxquotient (vector-length (&raw-table-table _tab58871_)) '4))
            (__raw-table-rehash! _tab58871_)
            '#!void)
        (__symbolic-table-set! _tab58871_ _key58872_ _value58873_)))
    (define __symbolic-table-set!
      (lambda (_tab58826_ _key58827_ _value58828_)
        (let ((_table58831_ (&raw-table-table _tab58826_))
              (_seed58832_ (&raw-table-seed _tab58826_)))
          (let* ((_h58834_ (fxxor (symbolic-hash _key58827_) _seed58832_))
                 (_size58837_ (vector-length _table58831_))
                 (_entries58840_ (fxquotient _size58837_ '2))
                 (_start58843_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58834_ _entries58840_)
                   '1)))
            (let _loop58847_ ((_probe58850_ _start58843_)
                              (_i58852_ '1)
                              (_deleted58854_ '#f))
              (let ((_k58857_ (vector-ref _table58831_ _probe58850_)))
                (if (eq? _k58857_ (macro-unused-obj))
                    (if _deleted58854_
                        (begin
                          (vector-set! _table58831_ _deleted58854_ _key58827_)
                          (vector-set!
                           _table58831_
                           (fx+ _deleted58854_ '1)
                           _value58828_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58826_
                              (fx+ (&raw-table-count _tab58826_) '1)))))
                        (begin
                          (vector-set! _table58831_ _probe58850_ _key58827_)
                          (vector-set!
                           _table58831_
                           (fx+ _probe58850_ '1)
                           _value58828_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58826_
                              (fx- (&raw-table-free _tab58826_) '1))
                             (&raw-table-count-set!
                              _tab58826_
                              (fx+ (&raw-table-count _tab58826_) '1))))))
                    (if (eq? _k58857_ (macro-deleted-obj))
                        (_loop58847_
                         (let ((_next-probe58862_
                                (fx+ _start58843_
                                     _i58852_
                                     (fx* _i58852_ _i58852_))))
                           (fxmodulo _next-probe58862_ _size58837_))
                         (fx+ _i58852_ '1)
                         (let ((_$e58865_ _deleted58854_))
                           (if _$e58865_ _$e58865_ _probe58850_)))
                        (if (eq? _key58827_ _k58857_)
                            (begin
                              (vector-set!
                               _table58831_
                               _probe58850_
                               _key58827_)
                              (vector-set!
                               _table58831_
                               (fx+ _probe58850_ '1)
                               _value58828_))
                            (_loop58847_
                             (let ((_next-probe58868_
                                    (fx+ _start58843_
                                         _i58852_
                                         (fx* _i58852_ _i58852_))))
                               (fxmodulo _next-probe58868_ _size58837_))
                             (fx+ _i58852_ '1)
                             _deleted58854_))))))))))
    (define symbolic-table-update!
      (lambda (_tab58821_
               _key58822_
               _symbolic-table-update!58823_
               _default58824_)
        (if (fx< (&raw-table-free _tab58821_)
                 (fxquotient (vector-length (&raw-table-table _tab58821_)) '4))
            (__raw-table-rehash! _tab58821_)
            '#!void)
        (__symbolic-table-update!
         _tab58821_
         _key58822_
         _symbolic-table-update!58823_
         _default58824_)))
    (define __symbolic-table-update!
      (lambda (_tab58775_
               _key58776_
               _symbolic-table-update!58777_
               _default58778_)
        (let ((_table58781_ (&raw-table-table _tab58775_))
              (_seed58782_ (&raw-table-seed _tab58775_)))
          (let* ((_h58784_ (fxxor (symbolic-hash _key58776_) _seed58782_))
                 (_size58787_ (vector-length _table58781_))
                 (_entries58790_ (fxquotient _size58787_ '2))
                 (_start58793_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58784_ _entries58790_)
                   '1)))
            (let _loop58797_ ((_probe58800_ _start58793_)
                              (_i58802_ '1)
                              (_deleted58804_ '#f))
              (let ((_k58807_ (vector-ref _table58781_ _probe58800_)))
                (if (eq? _k58807_ (macro-unused-obj))
                    (if _deleted58804_
                        (begin
                          (vector-set! _table58781_ _deleted58804_ _key58776_)
                          (vector-set!
                           _table58781_
                           (fx+ _deleted58804_ '1)
                           (_symbolic-table-update!58777_ _default58778_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58775_
                              (fx+ (&raw-table-count _tab58775_) '1)))))
                        (begin
                          (vector-set! _table58781_ _probe58800_ _key58776_)
                          (vector-set!
                           _table58781_
                           (fx+ _probe58800_ '1)
                           (_symbolic-table-update!58777_ _default58778_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58775_
                              (fx- (&raw-table-free _tab58775_) '1))
                             (&raw-table-count-set!
                              _tab58775_
                              (fx+ (&raw-table-count _tab58775_) '1))))))
                    (if (eq? _k58807_ (macro-deleted-obj))
                        (_loop58797_
                         (let ((_next-probe58812_
                                (fx+ _start58793_
                                     _i58802_
                                     (fx* _i58802_ _i58802_))))
                           (fxmodulo _next-probe58812_ _size58787_))
                         (fx+ _i58802_ '1)
                         (let ((_$e58815_ _deleted58804_))
                           (if _$e58815_ _$e58815_ _probe58800_)))
                        (if (eq? _key58776_ _k58807_)
                            (begin
                              (vector-set!
                               _table58781_
                               _probe58800_
                               _key58776_)
                              (vector-set!
                               _table58781_
                               (fx+ _probe58800_ '1)
                               (_symbolic-table-update!58777_
                                (vector-ref
                                 _table58781_
                                 (fx+ _probe58800_ '1)))))
                            (_loop58797_
                             (let ((_next-probe58818_
                                    (fx+ _start58793_
                                         _i58802_
                                         (fx* _i58802_ _i58802_))))
                               (fxmodulo _next-probe58818_ _size58787_))
                             (fx+ _i58802_ '1)
                             _deleted58804_))))))))))
    (define symbolic-table-delete!
      (lambda (_tab58734_ _key58736_)
        (let ((_table58739_ (&raw-table-table _tab58734_))
              (_seed58741_ (&raw-table-seed _tab58734_)))
          (let* ((_h58744_ (fxxor (symbolic-hash _key58736_) _seed58741_))
                 (_size58747_ (vector-length _table58739_))
                 (_entries58750_ (fxquotient _size58747_ '2))
                 (_start58753_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58744_ _entries58750_)
                   '1)))
            (let _loop58757_ ((_probe58760_ _start58753_) (_i58762_ '1))
              (let ((_k58765_ (vector-ref _table58739_ _probe58760_)))
                (if (eq? _k58765_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k58765_ (macro-deleted-obj))
                        (_loop58757_
                         (let ((_next-probe58768_
                                (fx+ _start58753_
                                     _i58762_
                                     (fx* _i58762_ _i58762_))))
                           (fxmodulo _next-probe58768_ _size58747_))
                         (fx+ _i58762_ '1))
                        (if (eq? _key58736_ _k58765_)
                            (begin
                              (vector-set!
                               _table58739_
                               _probe58760_
                               (macro-deleted-obj))
                              (vector-set!
                               _table58739_
                               (fx+ _probe58760_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab58734_
                                  (fx- (&raw-table-count _tab58734_) '1)))))
                            (_loop58757_
                             (let ((_next-probe58772_
                                    (fx+ _start58753_
                                         _i58762_
                                         (fx* _i58762_ _i58762_))))
                               (fxmodulo _next-probe58772_ _size58747_))
                             (fx+ _i58762_ '1)))))))))))
    (define make-string-table__%
      (lambda (_size-hint58715_ _seed58717_)
        (make-raw-table__%
         _size-hint58715_
         string-hash
         ##string=?
         _seed58717_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_size-hint58723_ '#f) (_seed58725_ '0))
          (make-string-table__% _size-hint58723_ _seed58725_))))
    (define make-string-table__1
      (lambda (_size-hint58727_)
        (let ((_seed58729_ '0))
          (make-string-table__% _size-hint58727_ _seed58729_))))
    (define make-string-table
      (lambda _g59672_
        (let ((_g59671_ (##length _g59672_)))
          (cond ((##fx= _g59671_ 0)
                 (apply (lambda () (make-string-table__0)) _g59672_))
                ((##fx= _g59671_ 1)
                 (apply (lambda (_size-hint58727_)
                          (make-string-table__1 _size-hint58727_))
                        _g59672_))
                ((##fx= _g59671_ 2)
                 (apply (lambda (_size-hint58731_ _seed58732_)
                          (make-string-table__% _size-hint58731_ _seed58732_))
                        _g59672_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g59672_))))))
    (define string-table-ref
      (lambda (_tab58672_ _key58673_ _default58674_)
        (let ((_table58676_ (&raw-table-table _tab58672_))
              (_seed58677_ (&raw-table-seed _tab58672_)))
          (let* ((_h58679_ (fxxor (##string=?-hash _key58673_) _seed58677_))
                 (_size58682_ (vector-length _table58676_))
                 (_entries58685_ (fxquotient _size58682_ '2))
                 (_start58688_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58679_ _entries58685_)
                   '1)))
            (let _loop58692_ ((_probe58695_ _start58688_)
                              (_i58697_ '1)
                              (_deleted58699_ '#f))
              (let ((_k58702_ (vector-ref _table58676_ _probe58695_)))
                (if (eq? _k58702_ (macro-unused-obj))
                    _default58674_
                    (if (eq? _k58702_ (macro-deleted-obj))
                        (_loop58692_
                         (let ((_next-probe58705_
                                (fx+ _start58688_
                                     _i58697_
                                     (fx* _i58697_ _i58697_))))
                           (fxmodulo _next-probe58705_ _size58682_))
                         (fx+ _i58697_ '1)
                         (let ((_$e58708_ _deleted58699_))
                           (if _$e58708_ _$e58708_ _probe58695_)))
                        (if (##string=? _key58673_ _k58702_)
                            (vector-ref _table58676_ (fx+ _probe58695_ '1))
                            (_loop58692_
                             (let ((_next-probe58711_
                                    (fx+ _start58688_
                                         _i58697_
                                         (fx* _i58697_ _i58697_))))
                               (fxmodulo _next-probe58711_ _size58682_))
                             (fx+ _i58697_ '1)
                             _deleted58699_))))))))))
    (define string-table-set!
      (lambda (_tab58668_ _key58669_ _value58670_)
        (if (fx< (&raw-table-free _tab58668_)
                 (fxquotient (vector-length (&raw-table-table _tab58668_)) '4))
            (__raw-table-rehash! _tab58668_)
            '#!void)
        (__string-table-set! _tab58668_ _key58669_ _value58670_)))
    (define __string-table-set!
      (lambda (_tab58623_ _key58624_ _value58625_)
        (let ((_table58628_ (&raw-table-table _tab58623_))
              (_seed58629_ (&raw-table-seed _tab58623_)))
          (let* ((_h58631_ (fxxor (##string=?-hash _key58624_) _seed58629_))
                 (_size58634_ (vector-length _table58628_))
                 (_entries58637_ (fxquotient _size58634_ '2))
                 (_start58640_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58631_ _entries58637_)
                   '1)))
            (let _loop58644_ ((_probe58647_ _start58640_)
                              (_i58649_ '1)
                              (_deleted58651_ '#f))
              (let ((_k58654_ (vector-ref _table58628_ _probe58647_)))
                (if (eq? _k58654_ (macro-unused-obj))
                    (if _deleted58651_
                        (begin
                          (vector-set! _table58628_ _deleted58651_ _key58624_)
                          (vector-set!
                           _table58628_
                           (fx+ _deleted58651_ '1)
                           _value58625_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58623_
                              (fx+ (&raw-table-count _tab58623_) '1)))))
                        (begin
                          (vector-set! _table58628_ _probe58647_ _key58624_)
                          (vector-set!
                           _table58628_
                           (fx+ _probe58647_ '1)
                           _value58625_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58623_
                              (fx- (&raw-table-free _tab58623_) '1))
                             (&raw-table-count-set!
                              _tab58623_
                              (fx+ (&raw-table-count _tab58623_) '1))))))
                    (if (eq? _k58654_ (macro-deleted-obj))
                        (_loop58644_
                         (let ((_next-probe58659_
                                (fx+ _start58640_
                                     _i58649_
                                     (fx* _i58649_ _i58649_))))
                           (fxmodulo _next-probe58659_ _size58634_))
                         (fx+ _i58649_ '1)
                         (let ((_$e58662_ _deleted58651_))
                           (if _$e58662_ _$e58662_ _probe58647_)))
                        (if (##string=? _key58624_ _k58654_)
                            (begin
                              (vector-set!
                               _table58628_
                               _probe58647_
                               _key58624_)
                              (vector-set!
                               _table58628_
                               (fx+ _probe58647_ '1)
                               _value58625_))
                            (_loop58644_
                             (let ((_next-probe58665_
                                    (fx+ _start58640_
                                         _i58649_
                                         (fx* _i58649_ _i58649_))))
                               (fxmodulo _next-probe58665_ _size58634_))
                             (fx+ _i58649_ '1)
                             _deleted58651_))))))))))
    (define string-table-update!
      (lambda (_tab58618_
               _key58619_
               _string-table-update!58620_
               _default58621_)
        (if (fx< (&raw-table-free _tab58618_)
                 (fxquotient (vector-length (&raw-table-table _tab58618_)) '4))
            (__raw-table-rehash! _tab58618_)
            '#!void)
        (__string-table-update!
         _tab58618_
         _key58619_
         _string-table-update!58620_
         _default58621_)))
    (define __string-table-update!
      (lambda (_tab58572_
               _key58573_
               _string-table-update!58574_
               _default58575_)
        (let ((_table58578_ (&raw-table-table _tab58572_))
              (_seed58579_ (&raw-table-seed _tab58572_)))
          (let* ((_h58581_ (fxxor (##string=?-hash _key58573_) _seed58579_))
                 (_size58584_ (vector-length _table58578_))
                 (_entries58587_ (fxquotient _size58584_ '2))
                 (_start58590_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58581_ _entries58587_)
                   '1)))
            (let _loop58594_ ((_probe58597_ _start58590_)
                              (_i58599_ '1)
                              (_deleted58601_ '#f))
              (let ((_k58604_ (vector-ref _table58578_ _probe58597_)))
                (if (eq? _k58604_ (macro-unused-obj))
                    (if _deleted58601_
                        (begin
                          (vector-set! _table58578_ _deleted58601_ _key58573_)
                          (vector-set!
                           _table58578_
                           (fx+ _deleted58601_ '1)
                           (_string-table-update!58574_ _default58575_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58572_
                              (fx+ (&raw-table-count _tab58572_) '1)))))
                        (begin
                          (vector-set! _table58578_ _probe58597_ _key58573_)
                          (vector-set!
                           _table58578_
                           (fx+ _probe58597_ '1)
                           (_string-table-update!58574_ _default58575_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58572_
                              (fx- (&raw-table-free _tab58572_) '1))
                             (&raw-table-count-set!
                              _tab58572_
                              (fx+ (&raw-table-count _tab58572_) '1))))))
                    (if (eq? _k58604_ (macro-deleted-obj))
                        (_loop58594_
                         (let ((_next-probe58609_
                                (fx+ _start58590_
                                     _i58599_
                                     (fx* _i58599_ _i58599_))))
                           (fxmodulo _next-probe58609_ _size58584_))
                         (fx+ _i58599_ '1)
                         (let ((_$e58612_ _deleted58601_))
                           (if _$e58612_ _$e58612_ _probe58597_)))
                        (if (##string=? _key58573_ _k58604_)
                            (begin
                              (vector-set!
                               _table58578_
                               _probe58597_
                               _key58573_)
                              (vector-set!
                               _table58578_
                               (fx+ _probe58597_ '1)
                               (_string-table-update!58574_
                                (vector-ref
                                 _table58578_
                                 (fx+ _probe58597_ '1)))))
                            (_loop58594_
                             (let ((_next-probe58615_
                                    (fx+ _start58590_
                                         _i58599_
                                         (fx* _i58599_ _i58599_))))
                               (fxmodulo _next-probe58615_ _size58584_))
                             (fx+ _i58599_ '1)
                             _deleted58601_))))))))))
    (define string-table-delete!
      (lambda (_tab58531_ _key58533_)
        (let ((_table58536_ (&raw-table-table _tab58531_))
              (_seed58538_ (&raw-table-seed _tab58531_)))
          (let* ((_h58541_ (fxxor (##string=?-hash _key58533_) _seed58538_))
                 (_size58544_ (vector-length _table58536_))
                 (_entries58547_ (fxquotient _size58544_ '2))
                 (_start58550_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58541_ _entries58547_)
                   '1)))
            (let _loop58554_ ((_probe58557_ _start58550_) (_i58559_ '1))
              (let ((_k58562_ (vector-ref _table58536_ _probe58557_)))
                (if (eq? _k58562_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k58562_ (macro-deleted-obj))
                        (_loop58554_
                         (let ((_next-probe58565_
                                (fx+ _start58550_
                                     _i58559_
                                     (fx* _i58559_ _i58559_))))
                           (fxmodulo _next-probe58565_ _size58544_))
                         (fx+ _i58559_ '1))
                        (if (##string=? _key58533_ _k58562_)
                            (begin
                              (vector-set!
                               _table58536_
                               _probe58557_
                               (macro-deleted-obj))
                              (vector-set!
                               _table58536_
                               (fx+ _probe58557_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab58531_
                                  (fx- (&raw-table-count _tab58531_) '1)))))
                            (_loop58554_
                             (let ((_next-probe58569_
                                    (fx+ _start58550_
                                         _i58559_
                                         (fx* _i58559_ _i58559_))))
                               (fxmodulo _next-probe58569_ _size58544_))
                             (fx+ _i58559_ '1)))))))))))))
