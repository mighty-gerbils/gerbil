(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1710170106)
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
      (lambda (_tab59610_)
        (##unchecked-structure-ref _tab59610_ '1 __table::t 'raw-table-table)))
    (define &raw-table-count
      (lambda (_tab59608_)
        (##unchecked-structure-ref _tab59608_ '2 __table::t 'raw-table-count)))
    (define &raw-table-free
      (lambda (_tab59606_)
        (##unchecked-structure-ref _tab59606_ '3 __table::t 'raw-table-free)))
    (define &raw-table-hash
      (lambda (_tab59604_)
        (##unchecked-structure-ref _tab59604_ '4 __table::t 'raw-table-hash)))
    (define &raw-table-test
      (lambda (_tab59602_)
        (##unchecked-structure-ref _tab59602_ '5 __table::t 'raw-table-test)))
    (define &raw-table-seed
      (lambda (_tab59600_)
        (##unchecked-structure-ref _tab59600_ '6 __table::t 'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_tab59597_ _val59598_)
        (##unchecked-structure-set!
         _tab59597_
         _val59598_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_tab59594_ _val59595_)
        (##unchecked-structure-set!
         _tab59594_
         _val59595_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_tab59591_ _val59592_)
        (##unchecked-structure-set!
         _tab59591_
         _val59592_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_tab59588_ _val59589_)
        (##unchecked-structure-set!
         _tab59588_
         _val59589_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_tab59585_ _val59586_)
        (##unchecked-structure-set!
         _tab59585_
         _val59586_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_tab59582_ _val59583_)
        (##unchecked-structure-set!
         _tab59582_
         _val59583_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_size-hint59580_)
        (if (and (fixnum? _size-hint59580_) (fx> _size-hint59580_ '0))
            (fx* (fxmax '2 (expt '2 (integer-length _size-hint59580_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_size-hint59556_ _hash59557_ _test59558_ _seed59559_)
        (let* ((_size59561_ (raw-table-size-hint->size _size-hint59556_))
               (_table59563_ (make-vector _size59561_ (macro-unused-obj))))
          (##structure
           __table::t
           _table59563_
           '0
           (fxquotient _size59561_ '2)
           _hash59557_
           _test59558_
           _seed59559_))))
    (define make-raw-table__0
      (lambda (_size-hint59569_ _hash59570_ _test59571_)
        (let ((_seed59573_ '0))
          (make-raw-table__%
           _size-hint59569_
           _hash59570_
           _test59571_
           _seed59573_))))
    (define make-raw-table
      (lambda _g59612_
        (let ((_g59611_ (##length _g59612_)))
          (cond ((##fx= _g59611_ 3)
                 (apply (lambda (_size-hint59569_ _hash59570_ _test59571_)
                          (make-raw-table__0
                           _size-hint59569_
                           _hash59570_
                           _test59571_))
                        _g59612_))
                ((##fx= _g59611_ 4)
                 (apply (lambda (_size-hint59575_
                                 _hash59576_
                                 _test59577_
                                 _seed59578_)
                          (make-raw-table__%
                           _size-hint59575_
                           _hash59576_
                           _test59577_
                           _seed59578_))
                        _g59612_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g59612_))))))
    (define raw-table-ref
      (lambda (_tab59511_ _key59512_ _default59513_)
        (let ((_table59515_ (&raw-table-table _tab59511_))
              (_seed59516_ (&raw-table-seed _tab59511_))
              (_hash59517_ (&raw-table-hash _tab59511_))
              (_test59518_ (&raw-table-test _tab59511_)))
          (let* ((_h59520_ (fxxor (_hash59517_ _key59512_) _seed59516_))
                 (_size59523_ (vector-length _table59515_))
                 (_entries59526_ (fxquotient _size59523_ '2))
                 (_start59529_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59520_ _entries59526_)
                   '1)))
            (let _loop59533_ ((_probe59536_ _start59529_)
                              (_i59538_ '1)
                              (_deleted59540_ '#f))
              (let ((_k59543_ (vector-ref _table59515_ _probe59536_)))
                (if (eq? _k59543_ (macro-unused-obj))
                    _default59513_
                    (if (eq? _k59543_ (macro-deleted-obj))
                        (_loop59533_
                         (let ((_next-probe59546_
                                (fx+ _start59529_
                                     _i59538_
                                     (fx* _i59538_ _i59538_))))
                           (fxmodulo _next-probe59546_ _size59523_))
                         (fx+ _i59538_ '1)
                         (let ((_$e59549_ _deleted59540_))
                           (if _$e59549_ _$e59549_ _probe59536_)))
                        (if (_test59518_ _key59512_ _k59543_)
                            (vector-ref _table59515_ (fx+ _probe59536_ '1))
                            (_loop59533_
                             (let ((_next-probe59552_
                                    (fx+ _start59529_
                                         _i59538_
                                         (fx* _i59538_ _i59538_))))
                               (fxmodulo _next-probe59552_ _size59523_))
                             (fx+ _i59538_ '1)
                             _deleted59540_))))))))))
    (define raw-table-set!
      (lambda (_tab59507_ _key59508_ _value59509_)
        (if (fx< (&raw-table-free _tab59507_)
                 (fxquotient (vector-length (&raw-table-table _tab59507_)) '4))
            (__raw-table-rehash! _tab59507_)
            '#!void)
        (__raw-table-set! _tab59507_ _key59508_ _value59509_)))
    (define raw-table-update!
      (lambda (_tab59502_ _key59503_ _update59504_ _default59505_)
        (if (fx< (&raw-table-free _tab59502_)
                 (fxquotient (vector-length (&raw-table-table _tab59502_)) '4))
            (__raw-table-rehash! _tab59502_)
            '#!void)
        (__raw-table-update!
         _tab59502_
         _key59503_
         _update59504_
         _default59505_)))
    (define raw-table-delete!
      (lambda (_tab59463_ _key59464_)
        (let ((_table59466_ (&raw-table-table _tab59463_))
              (_seed59467_ (&raw-table-seed _tab59463_))
              (_hash59468_ (&raw-table-hash _tab59463_))
              (_test59469_ (&raw-table-test _tab59463_)))
          (let* ((_h59471_ (fxxor (_hash59468_ _key59464_) _seed59467_))
                 (_size59474_ (vector-length _table59466_))
                 (_entries59477_ (fxquotient _size59474_ '2))
                 (_start59480_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59471_ _entries59477_)
                   '1)))
            (let _loop59484_ ((_probe59487_ _start59480_) (_i59489_ '1))
              (let ((_k59492_ (vector-ref _table59466_ _probe59487_)))
                (if (eq? _k59492_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59492_ (macro-deleted-obj))
                        (_loop59484_
                         (let ((_next-probe59495_
                                (fx+ _start59480_
                                     _i59489_
                                     (fx* _i59489_ _i59489_))))
                           (fxmodulo _next-probe59495_ _size59474_))
                         (fx+ _i59489_ '1))
                        (if (_test59469_ _key59464_ _k59492_)
                            (begin
                              (vector-set!
                               _table59466_
                               _probe59487_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59466_
                               (fx+ _probe59487_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59463_
                                  (fx- (&raw-table-count _tab59463_) '1)))))
                            (_loop59484_
                             (let ((_next-probe59499_
                                    (fx+ _start59480_
                                         _i59489_
                                         (fx* _i59489_ _i59489_))))
                               (fxmodulo _next-probe59499_ _size59474_))
                             (fx+ _i59489_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_tab59447_ _proc59448_)
        (let* ((_table59450_ (&raw-table-table _tab59447_))
               (_size59452_ (vector-length _table59450_)))
          (let _loop59455_ ((_i59457_ '0))
            (if (fx< _i59457_ _size59452_)
                (begin
                  (let ((_key59459_ (vector-ref _table59450_ _i59457_)))
                    (if (and (not (eq? _key59459_ (macro-unused-obj)))
                             (not (eq? _key59459_ (macro-deleted-obj))))
                        (let ((_value59461_
                               (vector-ref _table59450_ (fx+ _i59457_ '1))))
                          (_proc59448_ _key59459_ _value59461_))
                        '#!void))
                  (_loop59455_ (fx+ _i59457_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_tab59443_)
        (let ((_new-tab59445_ (##structure-copy _tab59443_)))
          (&raw-table-table-set!
           _new-tab59445_
           (vector-copy (&raw-table-table _tab59443_)))
          _new-tab59445_)))
    (define raw-table-clear!
      (lambda (_tab59441_)
        (vector-fill! (&raw-table-table _tab59441_) (macro-unused-obj))
        (&raw-table-count-set! _tab59441_ '0)
        (&raw-table-free-set!
         _tab59441_
         (fxquotient (vector-length (&raw-table-table _tab59441_)) '2))))
    (define __raw-table-set!
      (lambda (_tab59395_ _key59396_ _value59397_)
        (let ((_table59399_ (&raw-table-table _tab59395_))
              (_seed59400_ (&raw-table-seed _tab59395_))
              (_hash59401_ (&raw-table-hash _tab59395_))
              (_test59402_ (&raw-table-test _tab59395_)))
          (let* ((_h59404_ (fxxor (_hash59401_ _key59396_) _seed59400_))
                 (_size59407_ (vector-length _table59399_))
                 (_entries59410_ (fxquotient _size59407_ '2))
                 (_start59413_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59404_ _entries59410_)
                   '1)))
            (let _loop59417_ ((_probe59420_ _start59413_)
                              (_i59422_ '1)
                              (_deleted59424_ '#f))
              (let ((_k59427_ (vector-ref _table59399_ _probe59420_)))
                (if (eq? _k59427_ (macro-unused-obj))
                    (if _deleted59424_
                        (begin
                          (vector-set! _table59399_ _deleted59424_ _key59396_)
                          (vector-set!
                           _table59399_
                           (fx+ _deleted59424_ '1)
                           _value59397_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59395_
                              (fx+ (&raw-table-count _tab59395_) '1)))))
                        (begin
                          (vector-set! _table59399_ _probe59420_ _key59396_)
                          (vector-set!
                           _table59399_
                           (fx+ _probe59420_ '1)
                           _value59397_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59395_
                              (fx- (&raw-table-free _tab59395_) '1))
                             (&raw-table-count-set!
                              _tab59395_
                              (fx+ (&raw-table-count _tab59395_) '1))))))
                    (if (eq? _k59427_ (macro-deleted-obj))
                        (_loop59417_
                         (let ((_next-probe59432_
                                (fx+ _start59413_
                                     _i59422_
                                     (fx* _i59422_ _i59422_))))
                           (fxmodulo _next-probe59432_ _size59407_))
                         (fx+ _i59422_ '1)
                         (let ((_$e59435_ _deleted59424_))
                           (if _$e59435_ _$e59435_ _probe59420_)))
                        (if (_test59402_ _key59396_ _k59427_)
                            (begin
                              (vector-set!
                               _table59399_
                               _probe59420_
                               _key59396_)
                              (vector-set!
                               _table59399_
                               (fx+ _probe59420_ '1)
                               _value59397_))
                            (_loop59417_
                             (let ((_next-probe59438_
                                    (fx+ _start59413_
                                         _i59422_
                                         (fx* _i59422_ _i59422_))))
                               (fxmodulo _next-probe59438_ _size59407_))
                             (fx+ _i59422_ '1)
                             _deleted59424_))))))))))
    (define __raw-table-update!
      (lambda (_tab59348_ _key59349_ _update59350_ _default59351_)
        (let ((_table59353_ (&raw-table-table _tab59348_))
              (_seed59354_ (&raw-table-seed _tab59348_))
              (_hash59355_ (&raw-table-hash _tab59348_))
              (_test59356_ (&raw-table-test _tab59348_)))
          (let* ((_h59358_ (fxxor (_hash59355_ _key59349_) _seed59354_))
                 (_size59361_ (vector-length _table59353_))
                 (_entries59364_ (fxquotient _size59361_ '2))
                 (_start59367_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59358_ _entries59364_)
                   '1)))
            (let _loop59371_ ((_probe59374_ _start59367_)
                              (_i59376_ '1)
                              (_deleted59378_ '#f))
              (let ((_k59381_ (vector-ref _table59353_ _probe59374_)))
                (if (eq? _k59381_ (macro-unused-obj))
                    (if _deleted59378_
                        (begin
                          (vector-set! _table59353_ _deleted59378_ _key59349_)
                          (vector-set!
                           _table59353_
                           (fx+ _deleted59378_ '1)
                           (_update59350_ _default59351_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59348_
                              (fx+ (&raw-table-count _tab59348_) '1)))))
                        (begin
                          (vector-set! _table59353_ _probe59374_ _key59349_)
                          (vector-set!
                           _table59353_
                           (fx+ _probe59374_ '1)
                           (_update59350_ _default59351_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59348_
                              (fx- (&raw-table-free _tab59348_) '1))
                             (&raw-table-count-set!
                              _tab59348_
                              (fx+ (&raw-table-count _tab59348_) '1))))))
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
                        (if (_test59356_ _key59349_ _k59381_)
                            (begin
                              (vector-set!
                               _table59353_
                               _probe59374_
                               _key59349_)
                              (vector-set!
                               _table59353_
                               (fx+ _probe59374_ '1)
                               (_update59350_
                                (vector-ref
                                 _table59353_
                                 (fx+ _probe59374_ '1)))))
                            (_loop59371_
                             (let ((_next-probe59392_
                                    (fx+ _start59367_
                                         _i59376_
                                         (fx* _i59376_ _i59376_))))
                               (fxmodulo _next-probe59392_ _size59361_))
                             (fx+ _i59376_ '1)
                             _deleted59378_))))))))))
    (define __raw-table-rehash!
      (lambda (_tab59329_)
        (let* ((_old-table59331_ (&raw-table-table _tab59329_))
               (_old-size59333_ (vector-length _old-table59331_))
               (_new-size59335_
                (if (fx< (&raw-table-count _tab59329_)
                         (fxquotient _old-size59333_ '4))
                    (vector-length _old-table59331_)
                    (fx* '2 (vector-length _old-table59331_))))
               (_new-table59337_
                (make-vector _new-size59335_ (macro-unused-obj))))
          (&raw-table-table-set! _tab59329_ _new-table59337_)
          (&raw-table-count-set! _tab59329_ '0)
          (&raw-table-free-set! _tab59329_ (fxquotient _new-size59335_ '2))
          (let _lp59340_ ((_i59342_ '0))
            (if (fx< _i59342_ _old-size59333_)
                (begin
                  (let ((_key59344_ (vector-ref _old-table59331_ _i59342_)))
                    (if (and (not (eq? _key59344_ (macro-unused-obj)))
                             (not (eq? _key59344_ (macro-deleted-obj))))
                        (let ((_value59346_
                               (vector-ref
                                _old-table59331_
                                (fx+ _i59342_ '1))))
                          (__raw-table-set!
                           _tab59329_
                           _key59344_
                           _value59346_))
                        '#!void))
                  (_lp59340_ (fx+ _i59342_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_obj59325_)
        (let ((_t59327_ (##type _obj59325_)))
          (if (fx= (fxand _t59327_ '1) '0)
              (fxand (##type-cast _obj59325_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _obj59325_)
                  (symbolic-hash _obj59325_)
                  (if (procedure? _obj59325_)
                      (procedure-hash _obj59325_)
                      (fxand (__eq-hash _obj59325_) (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_obj59321_)
        (let ((_h59323_
               (if (##closure? _obj59321_)
                   (__eq-hash _obj59321_)
                   (##type-cast _obj59321_ '0))))
          (fxand _h59323_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_obj59318_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _obj59318_)))
    (define eqv-hash
      (lambda (_obj59308_)
        (letrec ((_combine59310_
                  (lambda (_a59315_ _b59316_)
                    (fxand (fx* (fx+ _a59315_
                                     (fxarithmetic-shift-left _b59316_ '1))
                                '331804471)
                           (macro-max-fixnum32))))
                 (_hash59311_
                  (lambda (_obj59313_)
                    (macro-number-dispatch
                     _obj59313_
                     (eq-hash _obj59313_)
                     (fxand _obj59313_ (macro-max-fixnum32))
                     (modulo _obj59313_ '331804481)
                     (_combine59310_
                      (_hash59311_ (macro-ratnum-numerator _obj59313_))
                      (_hash59311_ (macro-ratnum-denominator _obj59313_)))
                     (_combine59310_
                      (##u16vector-ref _obj59313_ '0)
                      (_combine59310_
                       (##u16vector-ref _obj59313_ '1)
                       (_combine59310_
                        (##u16vector-ref _obj59313_ '2)
                        (##u16vector-ref _obj59313_ '3))))
                     (_combine59310_
                      (_hash59311_ (macro-cpxnum-real _obj59313_))
                      (_hash59311_ (macro-cpxnum-imag _obj59313_)))))))
          (_hash59311_ _obj59308_))))
    (define symbolic?
      (lambda (_obj59303_)
        (let ((_$e59305_ (symbol? _obj59303_)))
          (if _$e59305_ _$e59305_ (keyword? _obj59303_)))))
    (define symbolic-hash (lambda (_obj59301_) (macro-slot '1 _obj59301_)))
    (define string-hash (lambda (_obj59299_) (##string=?-hash _obj59299_)))
    (define immediate-hash
      (lambda (_obj59297_) (##type-cast _obj59297_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_size-hint59278_ _seed59280_)
        (make-raw-table__% _size-hint59278_ eq-hash eq? _seed59280_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_size-hint59286_ '#f) (_seed59288_ '0))
          (make-eq-table__% _size-hint59286_ _seed59288_))))
    (define make-eq-table__1
      (lambda (_size-hint59290_)
        (let ((_seed59292_ '0))
          (make-eq-table__% _size-hint59290_ _seed59292_))))
    (define make-eq-table
      (lambda _g59614_
        (let ((_g59613_ (##length _g59614_)))
          (cond ((##fx= _g59613_ 0)
                 (apply (lambda () (make-eq-table__0)) _g59614_))
                ((##fx= _g59613_ 1)
                 (apply (lambda (_size-hint59290_)
                          (make-eq-table__1 _size-hint59290_))
                        _g59614_))
                ((##fx= _g59613_ 2)
                 (apply (lambda (_size-hint59294_ _seed59295_)
                          (make-eq-table__% _size-hint59294_ _seed59295_))
                        _g59614_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g59614_))))))
    (define eq-table-ref
      (lambda (_tab59235_ _key59236_ _default59237_)
        (let ((_table59239_ (&raw-table-table _tab59235_))
              (_seed59240_ (&raw-table-seed _tab59235_)))
          (let* ((_h59242_ (fxxor (eq-hash _key59236_) _seed59240_))
                 (_size59245_ (vector-length _table59239_))
                 (_entries59248_ (fxquotient _size59245_ '2))
                 (_start59251_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59242_ _entries59248_)
                   '1)))
            (let _loop59255_ ((_probe59258_ _start59251_)
                              (_i59260_ '1)
                              (_deleted59262_ '#f))
              (let ((_k59265_ (vector-ref _table59239_ _probe59258_)))
                (if (eq? _k59265_ (macro-unused-obj))
                    _default59237_
                    (if (eq? _k59265_ (macro-deleted-obj))
                        (_loop59255_
                         (let ((_next-probe59268_
                                (fx+ _start59251_
                                     _i59260_
                                     (fx* _i59260_ _i59260_))))
                           (fxmodulo _next-probe59268_ _size59245_))
                         (fx+ _i59260_ '1)
                         (let ((_$e59271_ _deleted59262_))
                           (if _$e59271_ _$e59271_ _probe59258_)))
                        (if (eq? _key59236_ _k59265_)
                            (vector-ref _table59239_ (fx+ _probe59258_ '1))
                            (_loop59255_
                             (let ((_next-probe59274_
                                    (fx+ _start59251_
                                         _i59260_
                                         (fx* _i59260_ _i59260_))))
                               (fxmodulo _next-probe59274_ _size59245_))
                             (fx+ _i59260_ '1)
                             _deleted59262_))))))))))
    (define eq-table-set!
      (lambda (_tab59231_ _key59232_ _value59233_)
        (if (fx< (&raw-table-free _tab59231_)
                 (fxquotient (vector-length (&raw-table-table _tab59231_)) '4))
            (__raw-table-rehash! _tab59231_)
            '#!void)
        (__eq-table-set! _tab59231_ _key59232_ _value59233_)))
    (define __eq-table-set!
      (lambda (_tab59186_ _key59187_ _value59188_)
        (let ((_table59191_ (&raw-table-table _tab59186_))
              (_seed59192_ (&raw-table-seed _tab59186_)))
          (let* ((_h59194_ (fxxor (eq-hash _key59187_) _seed59192_))
                 (_size59197_ (vector-length _table59191_))
                 (_entries59200_ (fxquotient _size59197_ '2))
                 (_start59203_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59194_ _entries59200_)
                   '1)))
            (let _loop59207_ ((_probe59210_ _start59203_)
                              (_i59212_ '1)
                              (_deleted59214_ '#f))
              (let ((_k59217_ (vector-ref _table59191_ _probe59210_)))
                (if (eq? _k59217_ (macro-unused-obj))
                    (if _deleted59214_
                        (begin
                          (vector-set! _table59191_ _deleted59214_ _key59187_)
                          (vector-set!
                           _table59191_
                           (fx+ _deleted59214_ '1)
                           _value59188_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59186_
                              (fx+ (&raw-table-count _tab59186_) '1)))))
                        (begin
                          (vector-set! _table59191_ _probe59210_ _key59187_)
                          (vector-set!
                           _table59191_
                           (fx+ _probe59210_ '1)
                           _value59188_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59186_
                              (fx- (&raw-table-free _tab59186_) '1))
                             (&raw-table-count-set!
                              _tab59186_
                              (fx+ (&raw-table-count _tab59186_) '1))))))
                    (if (eq? _k59217_ (macro-deleted-obj))
                        (_loop59207_
                         (let ((_next-probe59222_
                                (fx+ _start59203_
                                     _i59212_
                                     (fx* _i59212_ _i59212_))))
                           (fxmodulo _next-probe59222_ _size59197_))
                         (fx+ _i59212_ '1)
                         (let ((_$e59225_ _deleted59214_))
                           (if _$e59225_ _$e59225_ _probe59210_)))
                        (if (eq? _key59187_ _k59217_)
                            (begin
                              (vector-set!
                               _table59191_
                               _probe59210_
                               _key59187_)
                              (vector-set!
                               _table59191_
                               (fx+ _probe59210_ '1)
                               _value59188_))
                            (_loop59207_
                             (let ((_next-probe59228_
                                    (fx+ _start59203_
                                         _i59212_
                                         (fx* _i59212_ _i59212_))))
                               (fxmodulo _next-probe59228_ _size59197_))
                             (fx+ _i59212_ '1)
                             _deleted59214_))))))))))
    (define eq-table-update!
      (lambda (_tab59181_ _key59182_ _eq-table-update!59183_ _default59184_)
        (if (fx< (&raw-table-free _tab59181_)
                 (fxquotient (vector-length (&raw-table-table _tab59181_)) '4))
            (__raw-table-rehash! _tab59181_)
            '#!void)
        (__eq-table-update!
         _tab59181_
         _key59182_
         _eq-table-update!59183_
         _default59184_)))
    (define __eq-table-update!
      (lambda (_tab59135_ _key59136_ _eq-table-update!59137_ _default59138_)
        (let ((_table59141_ (&raw-table-table _tab59135_))
              (_seed59142_ (&raw-table-seed _tab59135_)))
          (let* ((_h59144_ (fxxor (eq-hash _key59136_) _seed59142_))
                 (_size59147_ (vector-length _table59141_))
                 (_entries59150_ (fxquotient _size59147_ '2))
                 (_start59153_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59144_ _entries59150_)
                   '1)))
            (let _loop59157_ ((_probe59160_ _start59153_)
                              (_i59162_ '1)
                              (_deleted59164_ '#f))
              (let ((_k59167_ (vector-ref _table59141_ _probe59160_)))
                (if (eq? _k59167_ (macro-unused-obj))
                    (if _deleted59164_
                        (begin
                          (vector-set! _table59141_ _deleted59164_ _key59136_)
                          (vector-set!
                           _table59141_
                           (fx+ _deleted59164_ '1)
                           (_eq-table-update!59137_ _default59138_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59135_
                              (fx+ (&raw-table-count _tab59135_) '1)))))
                        (begin
                          (vector-set! _table59141_ _probe59160_ _key59136_)
                          (vector-set!
                           _table59141_
                           (fx+ _probe59160_ '1)
                           (_eq-table-update!59137_ _default59138_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59135_
                              (fx- (&raw-table-free _tab59135_) '1))
                             (&raw-table-count-set!
                              _tab59135_
                              (fx+ (&raw-table-count _tab59135_) '1))))))
                    (if (eq? _k59167_ (macro-deleted-obj))
                        (_loop59157_
                         (let ((_next-probe59172_
                                (fx+ _start59153_
                                     _i59162_
                                     (fx* _i59162_ _i59162_))))
                           (fxmodulo _next-probe59172_ _size59147_))
                         (fx+ _i59162_ '1)
                         (let ((_$e59175_ _deleted59164_))
                           (if _$e59175_ _$e59175_ _probe59160_)))
                        (if (eq? _key59136_ _k59167_)
                            (begin
                              (vector-set!
                               _table59141_
                               _probe59160_
                               _key59136_)
                              (vector-set!
                               _table59141_
                               (fx+ _probe59160_ '1)
                               (_eq-table-update!59137_
                                (vector-ref
                                 _table59141_
                                 (fx+ _probe59160_ '1)))))
                            (_loop59157_
                             (let ((_next-probe59178_
                                    (fx+ _start59153_
                                         _i59162_
                                         (fx* _i59162_ _i59162_))))
                               (fxmodulo _next-probe59178_ _size59147_))
                             (fx+ _i59162_ '1)
                             _deleted59164_))))))))))
    (define eq-table-delete!
      (lambda (_tab59094_ _key59096_)
        (let ((_table59099_ (&raw-table-table _tab59094_))
              (_seed59101_ (&raw-table-seed _tab59094_)))
          (let* ((_h59104_ (fxxor (eq-hash _key59096_) _seed59101_))
                 (_size59107_ (vector-length _table59099_))
                 (_entries59110_ (fxquotient _size59107_ '2))
                 (_start59113_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59104_ _entries59110_)
                   '1)))
            (let _loop59117_ ((_probe59120_ _start59113_) (_i59122_ '1))
              (let ((_k59125_ (vector-ref _table59099_ _probe59120_)))
                (if (eq? _k59125_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59125_ (macro-deleted-obj))
                        (_loop59117_
                         (let ((_next-probe59128_
                                (fx+ _start59113_
                                     _i59122_
                                     (fx* _i59122_ _i59122_))))
                           (fxmodulo _next-probe59128_ _size59107_))
                         (fx+ _i59122_ '1))
                        (if (eq? _key59096_ _k59125_)
                            (begin
                              (vector-set!
                               _table59099_
                               _probe59120_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59099_
                               (fx+ _probe59120_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59094_
                                  (fx- (&raw-table-count _tab59094_) '1)))))
                            (_loop59117_
                             (let ((_next-probe59132_
                                    (fx+ _start59113_
                                         _i59122_
                                         (fx* _i59122_ _i59122_))))
                               (fxmodulo _next-probe59132_ _size59107_))
                             (fx+ _i59122_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_size-hint59075_ _seed59077_)
        (make-raw-table__% _size-hint59075_ eqv-hash eqv? _seed59077_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_size-hint59083_ '#f) (_seed59085_ '0))
          (make-eqv-table__% _size-hint59083_ _seed59085_))))
    (define make-eqv-table__1
      (lambda (_size-hint59087_)
        (let ((_seed59089_ '0))
          (make-eqv-table__% _size-hint59087_ _seed59089_))))
    (define make-eqv-table
      (lambda _g59616_
        (let ((_g59615_ (##length _g59616_)))
          (cond ((##fx= _g59615_ 0)
                 (apply (lambda () (make-eqv-table__0)) _g59616_))
                ((##fx= _g59615_ 1)
                 (apply (lambda (_size-hint59087_)
                          (make-eqv-table__1 _size-hint59087_))
                        _g59616_))
                ((##fx= _g59615_ 2)
                 (apply (lambda (_size-hint59091_ _seed59092_)
                          (make-eqv-table__% _size-hint59091_ _seed59092_))
                        _g59616_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g59616_))))))
    (define eqv-table-ref
      (lambda (_tab59032_ _key59033_ _default59034_)
        (let ((_table59036_ (&raw-table-table _tab59032_))
              (_seed59037_ (&raw-table-seed _tab59032_)))
          (let* ((_h59039_ (fxxor (eqv-hash _key59033_) _seed59037_))
                 (_size59042_ (vector-length _table59036_))
                 (_entries59045_ (fxquotient _size59042_ '2))
                 (_start59048_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59039_ _entries59045_)
                   '1)))
            (let _loop59052_ ((_probe59055_ _start59048_)
                              (_i59057_ '1)
                              (_deleted59059_ '#f))
              (let ((_k59062_ (vector-ref _table59036_ _probe59055_)))
                (if (eq? _k59062_ (macro-unused-obj))
                    _default59034_
                    (if (eq? _k59062_ (macro-deleted-obj))
                        (_loop59052_
                         (let ((_next-probe59065_
                                (fx+ _start59048_
                                     _i59057_
                                     (fx* _i59057_ _i59057_))))
                           (fxmodulo _next-probe59065_ _size59042_))
                         (fx+ _i59057_ '1)
                         (let ((_$e59068_ _deleted59059_))
                           (if _$e59068_ _$e59068_ _probe59055_)))
                        (if (eqv? _key59033_ _k59062_)
                            (vector-ref _table59036_ (fx+ _probe59055_ '1))
                            (_loop59052_
                             (let ((_next-probe59071_
                                    (fx+ _start59048_
                                         _i59057_
                                         (fx* _i59057_ _i59057_))))
                               (fxmodulo _next-probe59071_ _size59042_))
                             (fx+ _i59057_ '1)
                             _deleted59059_))))))))))
    (define eqv-table-set!
      (lambda (_tab59028_ _key59029_ _value59030_)
        (if (fx< (&raw-table-free _tab59028_)
                 (fxquotient (vector-length (&raw-table-table _tab59028_)) '4))
            (__raw-table-rehash! _tab59028_)
            '#!void)
        (__eqv-table-set! _tab59028_ _key59029_ _value59030_)))
    (define __eqv-table-set!
      (lambda (_tab58983_ _key58984_ _value58985_)
        (let ((_table58988_ (&raw-table-table _tab58983_))
              (_seed58989_ (&raw-table-seed _tab58983_)))
          (let* ((_h58991_ (fxxor (eqv-hash _key58984_) _seed58989_))
                 (_size58994_ (vector-length _table58988_))
                 (_entries58997_ (fxquotient _size58994_ '2))
                 (_start59000_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58991_ _entries58997_)
                   '1)))
            (let _loop59004_ ((_probe59007_ _start59000_)
                              (_i59009_ '1)
                              (_deleted59011_ '#f))
              (let ((_k59014_ (vector-ref _table58988_ _probe59007_)))
                (if (eq? _k59014_ (macro-unused-obj))
                    (if _deleted59011_
                        (begin
                          (vector-set! _table58988_ _deleted59011_ _key58984_)
                          (vector-set!
                           _table58988_
                           (fx+ _deleted59011_ '1)
                           _value58985_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58983_
                              (fx+ (&raw-table-count _tab58983_) '1)))))
                        (begin
                          (vector-set! _table58988_ _probe59007_ _key58984_)
                          (vector-set!
                           _table58988_
                           (fx+ _probe59007_ '1)
                           _value58985_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58983_
                              (fx- (&raw-table-free _tab58983_) '1))
                             (&raw-table-count-set!
                              _tab58983_
                              (fx+ (&raw-table-count _tab58983_) '1))))))
                    (if (eq? _k59014_ (macro-deleted-obj))
                        (_loop59004_
                         (let ((_next-probe59019_
                                (fx+ _start59000_
                                     _i59009_
                                     (fx* _i59009_ _i59009_))))
                           (fxmodulo _next-probe59019_ _size58994_))
                         (fx+ _i59009_ '1)
                         (let ((_$e59022_ _deleted59011_))
                           (if _$e59022_ _$e59022_ _probe59007_)))
                        (if (eqv? _key58984_ _k59014_)
                            (begin
                              (vector-set!
                               _table58988_
                               _probe59007_
                               _key58984_)
                              (vector-set!
                               _table58988_
                               (fx+ _probe59007_ '1)
                               _value58985_))
                            (_loop59004_
                             (let ((_next-probe59025_
                                    (fx+ _start59000_
                                         _i59009_
                                         (fx* _i59009_ _i59009_))))
                               (fxmodulo _next-probe59025_ _size58994_))
                             (fx+ _i59009_ '1)
                             _deleted59011_))))))))))
    (define eqv-table-update!
      (lambda (_tab58978_ _key58979_ _eqv-table-update!58980_ _default58981_)
        (if (fx< (&raw-table-free _tab58978_)
                 (fxquotient (vector-length (&raw-table-table _tab58978_)) '4))
            (__raw-table-rehash! _tab58978_)
            '#!void)
        (__eqv-table-update!
         _tab58978_
         _key58979_
         _eqv-table-update!58980_
         _default58981_)))
    (define __eqv-table-update!
      (lambda (_tab58932_ _key58933_ _eqv-table-update!58934_ _default58935_)
        (let ((_table58938_ (&raw-table-table _tab58932_))
              (_seed58939_ (&raw-table-seed _tab58932_)))
          (let* ((_h58941_ (fxxor (eqv-hash _key58933_) _seed58939_))
                 (_size58944_ (vector-length _table58938_))
                 (_entries58947_ (fxquotient _size58944_ '2))
                 (_start58950_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58941_ _entries58947_)
                   '1)))
            (let _loop58954_ ((_probe58957_ _start58950_)
                              (_i58959_ '1)
                              (_deleted58961_ '#f))
              (let ((_k58964_ (vector-ref _table58938_ _probe58957_)))
                (if (eq? _k58964_ (macro-unused-obj))
                    (if _deleted58961_
                        (begin
                          (vector-set! _table58938_ _deleted58961_ _key58933_)
                          (vector-set!
                           _table58938_
                           (fx+ _deleted58961_ '1)
                           (_eqv-table-update!58934_ _default58935_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58932_
                              (fx+ (&raw-table-count _tab58932_) '1)))))
                        (begin
                          (vector-set! _table58938_ _probe58957_ _key58933_)
                          (vector-set!
                           _table58938_
                           (fx+ _probe58957_ '1)
                           (_eqv-table-update!58934_ _default58935_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58932_
                              (fx- (&raw-table-free _tab58932_) '1))
                             (&raw-table-count-set!
                              _tab58932_
                              (fx+ (&raw-table-count _tab58932_) '1))))))
                    (if (eq? _k58964_ (macro-deleted-obj))
                        (_loop58954_
                         (let ((_next-probe58969_
                                (fx+ _start58950_
                                     _i58959_
                                     (fx* _i58959_ _i58959_))))
                           (fxmodulo _next-probe58969_ _size58944_))
                         (fx+ _i58959_ '1)
                         (let ((_$e58972_ _deleted58961_))
                           (if _$e58972_ _$e58972_ _probe58957_)))
                        (if (eqv? _key58933_ _k58964_)
                            (begin
                              (vector-set!
                               _table58938_
                               _probe58957_
                               _key58933_)
                              (vector-set!
                               _table58938_
                               (fx+ _probe58957_ '1)
                               (_eqv-table-update!58934_
                                (vector-ref
                                 _table58938_
                                 (fx+ _probe58957_ '1)))))
                            (_loop58954_
                             (let ((_next-probe58975_
                                    (fx+ _start58950_
                                         _i58959_
                                         (fx* _i58959_ _i58959_))))
                               (fxmodulo _next-probe58975_ _size58944_))
                             (fx+ _i58959_ '1)
                             _deleted58961_))))))))))
    (define eqv-table-delete!
      (lambda (_tab58891_ _key58893_)
        (let ((_table58896_ (&raw-table-table _tab58891_))
              (_seed58898_ (&raw-table-seed _tab58891_)))
          (let* ((_h58901_ (fxxor (eqv-hash _key58893_) _seed58898_))
                 (_size58904_ (vector-length _table58896_))
                 (_entries58907_ (fxquotient _size58904_ '2))
                 (_start58910_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58901_ _entries58907_)
                   '1)))
            (let _loop58914_ ((_probe58917_ _start58910_) (_i58919_ '1))
              (let ((_k58922_ (vector-ref _table58896_ _probe58917_)))
                (if (eq? _k58922_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k58922_ (macro-deleted-obj))
                        (_loop58914_
                         (let ((_next-probe58925_
                                (fx+ _start58910_
                                     _i58919_
                                     (fx* _i58919_ _i58919_))))
                           (fxmodulo _next-probe58925_ _size58904_))
                         (fx+ _i58919_ '1))
                        (if (eqv? _key58893_ _k58922_)
                            (begin
                              (vector-set!
                               _table58896_
                               _probe58917_
                               (macro-deleted-obj))
                              (vector-set!
                               _table58896_
                               (fx+ _probe58917_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab58891_
                                  (fx- (&raw-table-count _tab58891_) '1)))))
                            (_loop58914_
                             (let ((_next-probe58929_
                                    (fx+ _start58910_
                                         _i58919_
                                         (fx* _i58919_ _i58919_))))
                               (fxmodulo _next-probe58929_ _size58904_))
                             (fx+ _i58919_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_size-hint58872_ _seed58874_)
        (make-raw-table__% _size-hint58872_ symbolic-hash eq? _seed58874_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_size-hint58880_ '#f) (_seed58882_ '0))
          (make-symbolic-table__% _size-hint58880_ _seed58882_))))
    (define make-symbolic-table__1
      (lambda (_size-hint58884_)
        (let ((_seed58886_ '0))
          (make-symbolic-table__% _size-hint58884_ _seed58886_))))
    (define make-symbolic-table
      (lambda _g59618_
        (let ((_g59617_ (##length _g59618_)))
          (cond ((##fx= _g59617_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g59618_))
                ((##fx= _g59617_ 1)
                 (apply (lambda (_size-hint58884_)
                          (make-symbolic-table__1 _size-hint58884_))
                        _g59618_))
                ((##fx= _g59617_ 2)
                 (apply (lambda (_size-hint58888_ _seed58889_)
                          (make-symbolic-table__%
                           _size-hint58888_
                           _seed58889_))
                        _g59618_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g59618_))))))
    (define symbolic-table-ref
      (lambda (_tab58829_ _key58830_ _default58831_)
        (let ((_table58833_ (&raw-table-table _tab58829_))
              (_seed58834_ (&raw-table-seed _tab58829_)))
          (let* ((_h58836_ (fxxor (symbolic-hash _key58830_) _seed58834_))
                 (_size58839_ (vector-length _table58833_))
                 (_entries58842_ (fxquotient _size58839_ '2))
                 (_start58845_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58836_ _entries58842_)
                   '1)))
            (let _loop58849_ ((_probe58852_ _start58845_)
                              (_i58854_ '1)
                              (_deleted58856_ '#f))
              (let ((_k58859_ (vector-ref _table58833_ _probe58852_)))
                (if (eq? _k58859_ (macro-unused-obj))
                    _default58831_
                    (if (eq? _k58859_ (macro-deleted-obj))
                        (_loop58849_
                         (let ((_next-probe58862_
                                (fx+ _start58845_
                                     _i58854_
                                     (fx* _i58854_ _i58854_))))
                           (fxmodulo _next-probe58862_ _size58839_))
                         (fx+ _i58854_ '1)
                         (let ((_$e58865_ _deleted58856_))
                           (if _$e58865_ _$e58865_ _probe58852_)))
                        (if (eq? _key58830_ _k58859_)
                            (vector-ref _table58833_ (fx+ _probe58852_ '1))
                            (_loop58849_
                             (let ((_next-probe58868_
                                    (fx+ _start58845_
                                         _i58854_
                                         (fx* _i58854_ _i58854_))))
                               (fxmodulo _next-probe58868_ _size58839_))
                             (fx+ _i58854_ '1)
                             _deleted58856_))))))))))
    (define symbolic-table-set!
      (lambda (_tab58825_ _key58826_ _value58827_)
        (if (fx< (&raw-table-free _tab58825_)
                 (fxquotient (vector-length (&raw-table-table _tab58825_)) '4))
            (__raw-table-rehash! _tab58825_)
            '#!void)
        (__symbolic-table-set! _tab58825_ _key58826_ _value58827_)))
    (define __symbolic-table-set!
      (lambda (_tab58780_ _key58781_ _value58782_)
        (let ((_table58785_ (&raw-table-table _tab58780_))
              (_seed58786_ (&raw-table-seed _tab58780_)))
          (let* ((_h58788_ (fxxor (symbolic-hash _key58781_) _seed58786_))
                 (_size58791_ (vector-length _table58785_))
                 (_entries58794_ (fxquotient _size58791_ '2))
                 (_start58797_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58788_ _entries58794_)
                   '1)))
            (let _loop58801_ ((_probe58804_ _start58797_)
                              (_i58806_ '1)
                              (_deleted58808_ '#f))
              (let ((_k58811_ (vector-ref _table58785_ _probe58804_)))
                (if (eq? _k58811_ (macro-unused-obj))
                    (if _deleted58808_
                        (begin
                          (vector-set! _table58785_ _deleted58808_ _key58781_)
                          (vector-set!
                           _table58785_
                           (fx+ _deleted58808_ '1)
                           _value58782_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58780_
                              (fx+ (&raw-table-count _tab58780_) '1)))))
                        (begin
                          (vector-set! _table58785_ _probe58804_ _key58781_)
                          (vector-set!
                           _table58785_
                           (fx+ _probe58804_ '1)
                           _value58782_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58780_
                              (fx- (&raw-table-free _tab58780_) '1))
                             (&raw-table-count-set!
                              _tab58780_
                              (fx+ (&raw-table-count _tab58780_) '1))))))
                    (if (eq? _k58811_ (macro-deleted-obj))
                        (_loop58801_
                         (let ((_next-probe58816_
                                (fx+ _start58797_
                                     _i58806_
                                     (fx* _i58806_ _i58806_))))
                           (fxmodulo _next-probe58816_ _size58791_))
                         (fx+ _i58806_ '1)
                         (let ((_$e58819_ _deleted58808_))
                           (if _$e58819_ _$e58819_ _probe58804_)))
                        (if (eq? _key58781_ _k58811_)
                            (begin
                              (vector-set!
                               _table58785_
                               _probe58804_
                               _key58781_)
                              (vector-set!
                               _table58785_
                               (fx+ _probe58804_ '1)
                               _value58782_))
                            (_loop58801_
                             (let ((_next-probe58822_
                                    (fx+ _start58797_
                                         _i58806_
                                         (fx* _i58806_ _i58806_))))
                               (fxmodulo _next-probe58822_ _size58791_))
                             (fx+ _i58806_ '1)
                             _deleted58808_))))))))))
    (define symbolic-table-update!
      (lambda (_tab58775_
               _key58776_
               _symbolic-table-update!58777_
               _default58778_)
        (if (fx< (&raw-table-free _tab58775_)
                 (fxquotient (vector-length (&raw-table-table _tab58775_)) '4))
            (__raw-table-rehash! _tab58775_)
            '#!void)
        (__symbolic-table-update!
         _tab58775_
         _key58776_
         _symbolic-table-update!58777_
         _default58778_)))
    (define __symbolic-table-update!
      (lambda (_tab58729_
               _key58730_
               _symbolic-table-update!58731_
               _default58732_)
        (let ((_table58735_ (&raw-table-table _tab58729_))
              (_seed58736_ (&raw-table-seed _tab58729_)))
          (let* ((_h58738_ (fxxor (symbolic-hash _key58730_) _seed58736_))
                 (_size58741_ (vector-length _table58735_))
                 (_entries58744_ (fxquotient _size58741_ '2))
                 (_start58747_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58738_ _entries58744_)
                   '1)))
            (let _loop58751_ ((_probe58754_ _start58747_)
                              (_i58756_ '1)
                              (_deleted58758_ '#f))
              (let ((_k58761_ (vector-ref _table58735_ _probe58754_)))
                (if (eq? _k58761_ (macro-unused-obj))
                    (if _deleted58758_
                        (begin
                          (vector-set! _table58735_ _deleted58758_ _key58730_)
                          (vector-set!
                           _table58735_
                           (fx+ _deleted58758_ '1)
                           (_symbolic-table-update!58731_ _default58732_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58729_
                              (fx+ (&raw-table-count _tab58729_) '1)))))
                        (begin
                          (vector-set! _table58735_ _probe58754_ _key58730_)
                          (vector-set!
                           _table58735_
                           (fx+ _probe58754_ '1)
                           (_symbolic-table-update!58731_ _default58732_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58729_
                              (fx- (&raw-table-free _tab58729_) '1))
                             (&raw-table-count-set!
                              _tab58729_
                              (fx+ (&raw-table-count _tab58729_) '1))))))
                    (if (eq? _k58761_ (macro-deleted-obj))
                        (_loop58751_
                         (let ((_next-probe58766_
                                (fx+ _start58747_
                                     _i58756_
                                     (fx* _i58756_ _i58756_))))
                           (fxmodulo _next-probe58766_ _size58741_))
                         (fx+ _i58756_ '1)
                         (let ((_$e58769_ _deleted58758_))
                           (if _$e58769_ _$e58769_ _probe58754_)))
                        (if (eq? _key58730_ _k58761_)
                            (begin
                              (vector-set!
                               _table58735_
                               _probe58754_
                               _key58730_)
                              (vector-set!
                               _table58735_
                               (fx+ _probe58754_ '1)
                               (_symbolic-table-update!58731_
                                (vector-ref
                                 _table58735_
                                 (fx+ _probe58754_ '1)))))
                            (_loop58751_
                             (let ((_next-probe58772_
                                    (fx+ _start58747_
                                         _i58756_
                                         (fx* _i58756_ _i58756_))))
                               (fxmodulo _next-probe58772_ _size58741_))
                             (fx+ _i58756_ '1)
                             _deleted58758_))))))))))
    (define symbolic-table-delete!
      (lambda (_tab58688_ _key58690_)
        (let ((_table58693_ (&raw-table-table _tab58688_))
              (_seed58695_ (&raw-table-seed _tab58688_)))
          (let* ((_h58698_ (fxxor (symbolic-hash _key58690_) _seed58695_))
                 (_size58701_ (vector-length _table58693_))
                 (_entries58704_ (fxquotient _size58701_ '2))
                 (_start58707_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58698_ _entries58704_)
                   '1)))
            (let _loop58711_ ((_probe58714_ _start58707_) (_i58716_ '1))
              (let ((_k58719_ (vector-ref _table58693_ _probe58714_)))
                (if (eq? _k58719_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k58719_ (macro-deleted-obj))
                        (_loop58711_
                         (let ((_next-probe58722_
                                (fx+ _start58707_
                                     _i58716_
                                     (fx* _i58716_ _i58716_))))
                           (fxmodulo _next-probe58722_ _size58701_))
                         (fx+ _i58716_ '1))
                        (if (eq? _key58690_ _k58719_)
                            (begin
                              (vector-set!
                               _table58693_
                               _probe58714_
                               (macro-deleted-obj))
                              (vector-set!
                               _table58693_
                               (fx+ _probe58714_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab58688_
                                  (fx- (&raw-table-count _tab58688_) '1)))))
                            (_loop58711_
                             (let ((_next-probe58726_
                                    (fx+ _start58707_
                                         _i58716_
                                         (fx* _i58716_ _i58716_))))
                               (fxmodulo _next-probe58726_ _size58701_))
                             (fx+ _i58716_ '1)))))))))))
    (define make-string-table__%
      (lambda (_size-hint58669_ _seed58671_)
        (make-raw-table__%
         _size-hint58669_
         string-hash
         ##string=?
         _seed58671_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_size-hint58677_ '#f) (_seed58679_ '0))
          (make-string-table__% _size-hint58677_ _seed58679_))))
    (define make-string-table__1
      (lambda (_size-hint58681_)
        (let ((_seed58683_ '0))
          (make-string-table__% _size-hint58681_ _seed58683_))))
    (define make-string-table
      (lambda _g59620_
        (let ((_g59619_ (##length _g59620_)))
          (cond ((##fx= _g59619_ 0)
                 (apply (lambda () (make-string-table__0)) _g59620_))
                ((##fx= _g59619_ 1)
                 (apply (lambda (_size-hint58681_)
                          (make-string-table__1 _size-hint58681_))
                        _g59620_))
                ((##fx= _g59619_ 2)
                 (apply (lambda (_size-hint58685_ _seed58686_)
                          (make-string-table__% _size-hint58685_ _seed58686_))
                        _g59620_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g59620_))))))
    (define string-table-ref
      (lambda (_tab58626_ _key58627_ _default58628_)
        (let ((_table58630_ (&raw-table-table _tab58626_))
              (_seed58631_ (&raw-table-seed _tab58626_)))
          (let* ((_h58633_ (fxxor (##string=?-hash _key58627_) _seed58631_))
                 (_size58636_ (vector-length _table58630_))
                 (_entries58639_ (fxquotient _size58636_ '2))
                 (_start58642_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58633_ _entries58639_)
                   '1)))
            (let _loop58646_ ((_probe58649_ _start58642_)
                              (_i58651_ '1)
                              (_deleted58653_ '#f))
              (let ((_k58656_ (vector-ref _table58630_ _probe58649_)))
                (if (eq? _k58656_ (macro-unused-obj))
                    _default58628_
                    (if (eq? _k58656_ (macro-deleted-obj))
                        (_loop58646_
                         (let ((_next-probe58659_
                                (fx+ _start58642_
                                     _i58651_
                                     (fx* _i58651_ _i58651_))))
                           (fxmodulo _next-probe58659_ _size58636_))
                         (fx+ _i58651_ '1)
                         (let ((_$e58662_ _deleted58653_))
                           (if _$e58662_ _$e58662_ _probe58649_)))
                        (if (##string=? _key58627_ _k58656_)
                            (vector-ref _table58630_ (fx+ _probe58649_ '1))
                            (_loop58646_
                             (let ((_next-probe58665_
                                    (fx+ _start58642_
                                         _i58651_
                                         (fx* _i58651_ _i58651_))))
                               (fxmodulo _next-probe58665_ _size58636_))
                             (fx+ _i58651_ '1)
                             _deleted58653_))))))))))
    (define string-table-set!
      (lambda (_tab58622_ _key58623_ _value58624_)
        (if (fx< (&raw-table-free _tab58622_)
                 (fxquotient (vector-length (&raw-table-table _tab58622_)) '4))
            (__raw-table-rehash! _tab58622_)
            '#!void)
        (__string-table-set! _tab58622_ _key58623_ _value58624_)))
    (define __string-table-set!
      (lambda (_tab58577_ _key58578_ _value58579_)
        (let ((_table58582_ (&raw-table-table _tab58577_))
              (_seed58583_ (&raw-table-seed _tab58577_)))
          (let* ((_h58585_ (fxxor (##string=?-hash _key58578_) _seed58583_))
                 (_size58588_ (vector-length _table58582_))
                 (_entries58591_ (fxquotient _size58588_ '2))
                 (_start58594_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58585_ _entries58591_)
                   '1)))
            (let _loop58598_ ((_probe58601_ _start58594_)
                              (_i58603_ '1)
                              (_deleted58605_ '#f))
              (let ((_k58608_ (vector-ref _table58582_ _probe58601_)))
                (if (eq? _k58608_ (macro-unused-obj))
                    (if _deleted58605_
                        (begin
                          (vector-set! _table58582_ _deleted58605_ _key58578_)
                          (vector-set!
                           _table58582_
                           (fx+ _deleted58605_ '1)
                           _value58579_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58577_
                              (fx+ (&raw-table-count _tab58577_) '1)))))
                        (begin
                          (vector-set! _table58582_ _probe58601_ _key58578_)
                          (vector-set!
                           _table58582_
                           (fx+ _probe58601_ '1)
                           _value58579_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58577_
                              (fx- (&raw-table-free _tab58577_) '1))
                             (&raw-table-count-set!
                              _tab58577_
                              (fx+ (&raw-table-count _tab58577_) '1))))))
                    (if (eq? _k58608_ (macro-deleted-obj))
                        (_loop58598_
                         (let ((_next-probe58613_
                                (fx+ _start58594_
                                     _i58603_
                                     (fx* _i58603_ _i58603_))))
                           (fxmodulo _next-probe58613_ _size58588_))
                         (fx+ _i58603_ '1)
                         (let ((_$e58616_ _deleted58605_))
                           (if _$e58616_ _$e58616_ _probe58601_)))
                        (if (##string=? _key58578_ _k58608_)
                            (begin
                              (vector-set!
                               _table58582_
                               _probe58601_
                               _key58578_)
                              (vector-set!
                               _table58582_
                               (fx+ _probe58601_ '1)
                               _value58579_))
                            (_loop58598_
                             (let ((_next-probe58619_
                                    (fx+ _start58594_
                                         _i58603_
                                         (fx* _i58603_ _i58603_))))
                               (fxmodulo _next-probe58619_ _size58588_))
                             (fx+ _i58603_ '1)
                             _deleted58605_))))))))))
    (define string-table-update!
      (lambda (_tab58572_
               _key58573_
               _string-table-update!58574_
               _default58575_)
        (if (fx< (&raw-table-free _tab58572_)
                 (fxquotient (vector-length (&raw-table-table _tab58572_)) '4))
            (__raw-table-rehash! _tab58572_)
            '#!void)
        (__string-table-update!
         _tab58572_
         _key58573_
         _string-table-update!58574_
         _default58575_)))
    (define __string-table-update!
      (lambda (_tab58526_
               _key58527_
               _string-table-update!58528_
               _default58529_)
        (let ((_table58532_ (&raw-table-table _tab58526_))
              (_seed58533_ (&raw-table-seed _tab58526_)))
          (let* ((_h58535_ (fxxor (##string=?-hash _key58527_) _seed58533_))
                 (_size58538_ (vector-length _table58532_))
                 (_entries58541_ (fxquotient _size58538_ '2))
                 (_start58544_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58535_ _entries58541_)
                   '1)))
            (let _loop58548_ ((_probe58551_ _start58544_)
                              (_i58553_ '1)
                              (_deleted58555_ '#f))
              (let ((_k58558_ (vector-ref _table58532_ _probe58551_)))
                (if (eq? _k58558_ (macro-unused-obj))
                    (if _deleted58555_
                        (begin
                          (vector-set! _table58532_ _deleted58555_ _key58527_)
                          (vector-set!
                           _table58532_
                           (fx+ _deleted58555_ '1)
                           (_string-table-update!58528_ _default58529_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58526_
                              (fx+ (&raw-table-count _tab58526_) '1)))))
                        (begin
                          (vector-set! _table58532_ _probe58551_ _key58527_)
                          (vector-set!
                           _table58532_
                           (fx+ _probe58551_ '1)
                           (_string-table-update!58528_ _default58529_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58526_
                              (fx- (&raw-table-free _tab58526_) '1))
                             (&raw-table-count-set!
                              _tab58526_
                              (fx+ (&raw-table-count _tab58526_) '1))))))
                    (if (eq? _k58558_ (macro-deleted-obj))
                        (_loop58548_
                         (let ((_next-probe58563_
                                (fx+ _start58544_
                                     _i58553_
                                     (fx* _i58553_ _i58553_))))
                           (fxmodulo _next-probe58563_ _size58538_))
                         (fx+ _i58553_ '1)
                         (let ((_$e58566_ _deleted58555_))
                           (if _$e58566_ _$e58566_ _probe58551_)))
                        (if (##string=? _key58527_ _k58558_)
                            (begin
                              (vector-set!
                               _table58532_
                               _probe58551_
                               _key58527_)
                              (vector-set!
                               _table58532_
                               (fx+ _probe58551_ '1)
                               (_string-table-update!58528_
                                (vector-ref
                                 _table58532_
                                 (fx+ _probe58551_ '1)))))
                            (_loop58548_
                             (let ((_next-probe58569_
                                    (fx+ _start58544_
                                         _i58553_
                                         (fx* _i58553_ _i58553_))))
                               (fxmodulo _next-probe58569_ _size58538_))
                             (fx+ _i58553_ '1)
                             _deleted58555_))))))))))
    (define string-table-delete!
      (lambda (_tab58485_ _key58487_)
        (let ((_table58490_ (&raw-table-table _tab58485_))
              (_seed58492_ (&raw-table-seed _tab58485_)))
          (let* ((_h58495_ (fxxor (##string=?-hash _key58487_) _seed58492_))
                 (_size58498_ (vector-length _table58490_))
                 (_entries58501_ (fxquotient _size58498_ '2))
                 (_start58504_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58495_ _entries58501_)
                   '1)))
            (let _loop58508_ ((_probe58511_ _start58504_) (_i58513_ '1))
              (let ((_k58516_ (vector-ref _table58490_ _probe58511_)))
                (if (eq? _k58516_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k58516_ (macro-deleted-obj))
                        (_loop58508_
                         (let ((_next-probe58519_
                                (fx+ _start58504_
                                     _i58513_
                                     (fx* _i58513_ _i58513_))))
                           (fxmodulo _next-probe58519_ _size58498_))
                         (fx+ _i58513_ '1))
                        (if (##string=? _key58487_ _k58516_)
                            (begin
                              (vector-set!
                               _table58490_
                               _probe58511_
                               (macro-deleted-obj))
                              (vector-set!
                               _table58490_
                               (fx+ _probe58511_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab58485_
                                  (fx- (&raw-table-count _tab58485_) '1)))))
                            (_loop58508_
                             (let ((_next-probe58523_
                                    (fx+ _start58504_
                                         _i58513_
                                         (fx* _i58513_ _i58513_))))
                               (fxmodulo _next-probe58523_ _size58498_))
                             (fx+ _i58513_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_size-hint58466_ _seed58468_)
        (make-raw-table__% _size-hint58466_ immediate-hash eq? _seed58468_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_size-hint58474_ '#f) (_seed58476_ '0))
          (make-immediate-table__% _size-hint58474_ _seed58476_))))
    (define make-immediate-table__1
      (lambda (_size-hint58478_)
        (let ((_seed58480_ '0))
          (make-immediate-table__% _size-hint58478_ _seed58480_))))
    (define make-immediate-table
      (lambda _g59622_
        (let ((_g59621_ (##length _g59622_)))
          (cond ((##fx= _g59621_ 0)
                 (apply (lambda () (make-immediate-table__0)) _g59622_))
                ((##fx= _g59621_ 1)
                 (apply (lambda (_size-hint58478_)
                          (make-immediate-table__1 _size-hint58478_))
                        _g59622_))
                ((##fx= _g59621_ 2)
                 (apply (lambda (_size-hint58482_ _seed58483_)
                          (make-immediate-table__%
                           _size-hint58482_
                           _seed58483_))
                        _g59622_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g59622_))))))
    (define immediate-table-ref
      (lambda (_tab58423_ _key58424_ _default58425_)
        (let ((_table58427_ (&raw-table-table _tab58423_))
              (_seed58428_ (&raw-table-seed _tab58423_)))
          (let* ((_h58430_ (fxxor (immediate-hash _key58424_) _seed58428_))
                 (_size58433_ (vector-length _table58427_))
                 (_entries58436_ (fxquotient _size58433_ '2))
                 (_start58439_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58430_ _entries58436_)
                   '1)))
            (let _loop58443_ ((_probe58446_ _start58439_)
                              (_i58448_ '1)
                              (_deleted58450_ '#f))
              (let ((_k58453_ (vector-ref _table58427_ _probe58446_)))
                (if (eq? _k58453_ (macro-unused-obj))
                    _default58425_
                    (if (eq? _k58453_ (macro-deleted-obj))
                        (_loop58443_
                         (let ((_next-probe58456_
                                (fx+ _start58439_
                                     _i58448_
                                     (fx* _i58448_ _i58448_))))
                           (fxmodulo _next-probe58456_ _size58433_))
                         (fx+ _i58448_ '1)
                         (let ((_$e58459_ _deleted58450_))
                           (if _$e58459_ _$e58459_ _probe58446_)))
                        (if (eq? _key58424_ _k58453_)
                            (vector-ref _table58427_ (fx+ _probe58446_ '1))
                            (_loop58443_
                             (let ((_next-probe58462_
                                    (fx+ _start58439_
                                         _i58448_
                                         (fx* _i58448_ _i58448_))))
                               (fxmodulo _next-probe58462_ _size58433_))
                             (fx+ _i58448_ '1)
                             _deleted58450_))))))))))
    (define immediate-table-set!
      (lambda (_tab58419_ _key58420_ _value58421_)
        (if (fx< (&raw-table-free _tab58419_)
                 (fxquotient (vector-length (&raw-table-table _tab58419_)) '4))
            (__raw-table-rehash! _tab58419_)
            '#!void)
        (__immediate-table-set! _tab58419_ _key58420_ _value58421_)))
    (define __immediate-table-set!
      (lambda (_tab58374_ _key58375_ _value58376_)
        (let ((_table58379_ (&raw-table-table _tab58374_))
              (_seed58380_ (&raw-table-seed _tab58374_)))
          (let* ((_h58382_ (fxxor (immediate-hash _key58375_) _seed58380_))
                 (_size58385_ (vector-length _table58379_))
                 (_entries58388_ (fxquotient _size58385_ '2))
                 (_start58391_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58382_ _entries58388_)
                   '1)))
            (let _loop58395_ ((_probe58398_ _start58391_)
                              (_i58400_ '1)
                              (_deleted58402_ '#f))
              (let ((_k58405_ (vector-ref _table58379_ _probe58398_)))
                (if (eq? _k58405_ (macro-unused-obj))
                    (if _deleted58402_
                        (begin
                          (vector-set! _table58379_ _deleted58402_ _key58375_)
                          (vector-set!
                           _table58379_
                           (fx+ _deleted58402_ '1)
                           _value58376_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58374_
                              (fx+ (&raw-table-count _tab58374_) '1)))))
                        (begin
                          (vector-set! _table58379_ _probe58398_ _key58375_)
                          (vector-set!
                           _table58379_
                           (fx+ _probe58398_ '1)
                           _value58376_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58374_
                              (fx- (&raw-table-free _tab58374_) '1))
                             (&raw-table-count-set!
                              _tab58374_
                              (fx+ (&raw-table-count _tab58374_) '1))))))
                    (if (eq? _k58405_ (macro-deleted-obj))
                        (_loop58395_
                         (let ((_next-probe58410_
                                (fx+ _start58391_
                                     _i58400_
                                     (fx* _i58400_ _i58400_))))
                           (fxmodulo _next-probe58410_ _size58385_))
                         (fx+ _i58400_ '1)
                         (let ((_$e58413_ _deleted58402_))
                           (if _$e58413_ _$e58413_ _probe58398_)))
                        (if (eq? _key58375_ _k58405_)
                            (begin
                              (vector-set!
                               _table58379_
                               _probe58398_
                               _key58375_)
                              (vector-set!
                               _table58379_
                               (fx+ _probe58398_ '1)
                               _value58376_))
                            (_loop58395_
                             (let ((_next-probe58416_
                                    (fx+ _start58391_
                                         _i58400_
                                         (fx* _i58400_ _i58400_))))
                               (fxmodulo _next-probe58416_ _size58385_))
                             (fx+ _i58400_ '1)
                             _deleted58402_))))))))))
    (define immediate-table-update!
      (lambda (_tab58369_
               _key58370_
               _immediate-table-update!58371_
               _default58372_)
        (if (fx< (&raw-table-free _tab58369_)
                 (fxquotient (vector-length (&raw-table-table _tab58369_)) '4))
            (__raw-table-rehash! _tab58369_)
            '#!void)
        (__immediate-table-update!
         _tab58369_
         _key58370_
         _immediate-table-update!58371_
         _default58372_)))
    (define __immediate-table-update!
      (lambda (_tab58323_
               _key58324_
               _immediate-table-update!58325_
               _default58326_)
        (let ((_table58329_ (&raw-table-table _tab58323_))
              (_seed58330_ (&raw-table-seed _tab58323_)))
          (let* ((_h58332_ (fxxor (immediate-hash _key58324_) _seed58330_))
                 (_size58335_ (vector-length _table58329_))
                 (_entries58338_ (fxquotient _size58335_ '2))
                 (_start58341_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58332_ _entries58338_)
                   '1)))
            (let _loop58345_ ((_probe58348_ _start58341_)
                              (_i58350_ '1)
                              (_deleted58352_ '#f))
              (let ((_k58355_ (vector-ref _table58329_ _probe58348_)))
                (if (eq? _k58355_ (macro-unused-obj))
                    (if _deleted58352_
                        (begin
                          (vector-set! _table58329_ _deleted58352_ _key58324_)
                          (vector-set!
                           _table58329_
                           (fx+ _deleted58352_ '1)
                           (_immediate-table-update!58325_ _default58326_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58323_
                              (fx+ (&raw-table-count _tab58323_) '1)))))
                        (begin
                          (vector-set! _table58329_ _probe58348_ _key58324_)
                          (vector-set!
                           _table58329_
                           (fx+ _probe58348_ '1)
                           (_immediate-table-update!58325_ _default58326_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58323_
                              (fx- (&raw-table-free _tab58323_) '1))
                             (&raw-table-count-set!
                              _tab58323_
                              (fx+ (&raw-table-count _tab58323_) '1))))))
                    (if (eq? _k58355_ (macro-deleted-obj))
                        (_loop58345_
                         (let ((_next-probe58360_
                                (fx+ _start58341_
                                     _i58350_
                                     (fx* _i58350_ _i58350_))))
                           (fxmodulo _next-probe58360_ _size58335_))
                         (fx+ _i58350_ '1)
                         (let ((_$e58363_ _deleted58352_))
                           (if _$e58363_ _$e58363_ _probe58348_)))
                        (if (eq? _key58324_ _k58355_)
                            (begin
                              (vector-set!
                               _table58329_
                               _probe58348_
                               _key58324_)
                              (vector-set!
                               _table58329_
                               (fx+ _probe58348_ '1)
                               (_immediate-table-update!58325_
                                (vector-ref
                                 _table58329_
                                 (fx+ _probe58348_ '1)))))
                            (_loop58345_
                             (let ((_next-probe58366_
                                    (fx+ _start58341_
                                         _i58350_
                                         (fx* _i58350_ _i58350_))))
                               (fxmodulo _next-probe58366_ _size58335_))
                             (fx+ _i58350_ '1)
                             _deleted58352_))))))))))
    (define immediate-table-delete!
      (lambda (_tab58282_ _key58284_)
        (let ((_table58287_ (&raw-table-table _tab58282_))
              (_seed58289_ (&raw-table-seed _tab58282_)))
          (let* ((_h58292_ (fxxor (immediate-hash _key58284_) _seed58289_))
                 (_size58295_ (vector-length _table58287_))
                 (_entries58298_ (fxquotient _size58295_ '2))
                 (_start58301_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58292_ _entries58298_)
                   '1)))
            (let _loop58305_ ((_probe58308_ _start58301_) (_i58310_ '1))
              (let ((_k58313_ (vector-ref _table58287_ _probe58308_)))
                (if (eq? _k58313_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k58313_ (macro-deleted-obj))
                        (_loop58305_
                         (let ((_next-probe58316_
                                (fx+ _start58301_
                                     _i58310_
                                     (fx* _i58310_ _i58310_))))
                           (fxmodulo _next-probe58316_ _size58295_))
                         (fx+ _i58310_ '1))
                        (if (eq? _key58284_ _k58313_)
                            (begin
                              (vector-set!
                               _table58287_
                               _probe58308_
                               (macro-deleted-obj))
                              (vector-set!
                               _table58287_
                               (fx+ _probe58308_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab58282_
                                  (fx- (&raw-table-count _tab58282_) '1)))))
                            (_loop58305_
                             (let ((_next-probe58320_
                                    (fx+ _start58301_
                                         _i58310_
                                         (fx* _i58310_ _i58310_))))
                               (fxmodulo _next-probe58320_ _size58295_))
                             (fx+ _i58310_ '1)))))))))))
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
      (lambda (_tab58280_)
        (##unchecked-structure-ref
         _tab58280_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_tab58278_)
        (##unchecked-structure-ref
         _tab58278_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_tab58275_ _val58276_)
        (##unchecked-structure-set!
         _tab58275_
         _val58276_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_tab58272_ _val58273_)
        (##unchecked-structure-set!
         _tab58272_
         _val58273_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_size-hint58248_ _klass58249_ _flags58250_)
        (let ((_gcht58252_
               (__gc-table-new
                (if (fixnum? _size-hint58248_) _size-hint58248_ '16)
                _flags58250_)))
          (##structure _klass58249_ _gcht58252_ '#f))))
    (define make-gc-table__0
      (lambda (_size-hint58257_)
        (let* ((_klass58259_ __gc-table::t) (_flags58261_ '0))
          (make-gc-table__% _size-hint58257_ _klass58259_ _flags58261_))))
    (define make-gc-table__1
      (lambda (_size-hint58263_ _klass58264_)
        (let ((_flags58266_ '0))
          (make-gc-table__% _size-hint58263_ _klass58264_ _flags58266_))))
    (define make-gc-table
      (lambda _g59624_
        (let ((_g59623_ (##length _g59624_)))
          (cond ((##fx= _g59623_ 1)
                 (apply (lambda (_size-hint58257_)
                          (make-gc-table__0 _size-hint58257_))
                        _g59624_))
                ((##fx= _g59623_ 2)
                 (apply (lambda (_size-hint58263_ _klass58264_)
                          (make-gc-table__1 _size-hint58263_ _klass58264_))
                        _g59624_))
                ((##fx= _g59623_ 3)
                 (apply (lambda (_size-hint58268_ _klass58269_ _flags58270_)
                          (make-gc-table__%
                           _size-hint58268_
                           _klass58269_
                           _flags58270_))
                        _g59624_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g59624_))))))
    (define __gc-table-immediate
      (lambda (_tab58240_)
        (let ((_$e58242_ (&gc-table-immediate _tab58240_)))
          (if _$e58242_
              _$e58242_
              (let ((_immediate58245_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _tab58240_ _immediate58245_)
                _immediate58245_)))))
    (define __gc-table-new
      (lambda (_size58230_ _flags58231_)
        (let* ((_flags58233_
                (fxand _flags58231_
                       (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_flags58235_
                (fxior _flags58233_ (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_gcht58237_
                (##gc-hash-table-allocate
                 _size58230_
                 _flags58235_
                 __gc-table-loads)))
          _gcht58237_)))
    (define __gc-table-e
      (lambda (_tab58225_)
        (declare (not interrupts-enabled))
        (let ((_gcht58228_ (&gc-table-gcht _tab58225_)))
          (if (fx= '0
                   (fxand (macro-gc-hash-table-flags _gcht58228_)
                          (macro-gc-hash-table-flag-need-rehash)))
              _gcht58228_
              (begin
                (__gc-table-rehash! _tab58225_)
                (&gc-table-gcht _tab58225_))))))
    (define __gc-table-rehash!
      (lambda (_tab58216_)
        (let* ((_old-table58218_ (&gc-table-gcht _tab58216_))
               (_new-table58220_
                (##gc-hash-table-resize! _old-table58218_ __gc-table-loads))
               (_gcht58222_
                (##gc-hash-table-rehash! _old-table58218_ _new-table58220_)))
          (&gc-table-gcht-set! _tab58216_ _gcht58222_))))
    (define gc-table-ref
      (lambda (_tab58202_ _key58203_ _default58204_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key58203_)
            (let* ((_gcht58207_ (__gc-table-e _tab58202_))
                   (_value58209_ (##gc-hash-table-ref _gcht58207_ _key58203_)))
              (if (eq? _value58209_ (macro-unused-obj))
                  _default58204_
                  _value58209_))
            (let ((_$e58211_ (&gc-table-immediate _tab58202_)))
              (if _$e58211_
                  ((lambda (_immediate58214_)
                     (immediate-table-ref
                      _immediate58214_
                      _key58203_
                      _default58204_))
                   _$e58211_)
                  _default58204_)))))
    (define gc-table-set!
      (lambda (_tab58195_ _key58196_ _value58197_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key58196_)
            (let ((_gcht58200_ (__gc-table-e _tab58195_)))
              (if (##gc-hash-table-set! _gcht58200_ _key58196_ _value58197_)
                  (begin
                    (__gc-table-rehash! _tab58195_)
                    (gc-table-set! _tab58195_ _key58196_ _value58197_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _tab58195_)
             _key58196_
             _value58197_))))
    (define gc-table-update!
      (lambda (_tab58188_ _key58189_ _update58190_ _default58191_)
        (if (##mem-allocated? _key58189_)
            (let ((_value58193_
                   (gc-table-ref _tab58188_ _key58189_ _default58191_)))
              (gc-table-set!
               _tab58188_
               _key58189_
               (_update58190_ _value58193_)))
            (immediate-table-update!
             (__gc-table-immediate _tab58188_)
             _key58189_
             _update58190_
             _default58191_))))
    (define gc-table-delete!
      (lambda (_tab58177_ _key58178_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key58178_)
            (let ((_gcht58181_ (__gc-table-e _tab58177_)))
              (if (##gc-hash-table-set!
                   _gcht58181_
                   _key58178_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _tab58177_)
                    (gc-table-delete! _tab58177_ _key58178_))
                  '#!void))
            (let ((_$e58183_ (&gc-table-immediate _tab58177_)))
              (if _$e58183_
                  ((lambda (_immediate58186_)
                     (immediate-table-delete! _immediate58186_ _key58178_))
                   _$e58183_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_tab58158_ _proc58159_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_gcht58162_ (__gc-table-e _tab58158_)))
            (let _loop58164_ ((_i58166_ (macro-gc-hash-table-key0)))
              (if (fx< _i58166_ (##vector-length _gcht58162_))
                  (let ((_key58168_ (##vector-ref _gcht58162_ _i58166_)))
                    (if (and (not (eq? _key58168_ (macro-unused-obj)))
                             (not (eq? _key58168_ (macro-deleted-obj))))
                        (_proc58159_
                         _key58168_
                         (##vector-ref _gcht58162_ (fx+ _i58166_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_loop58164_ (fx+ _i58166_ '2))))
                  '#!void)))
          (let ((_$e58172_ (&gc-table-immediate _tab58158_)))
            (if _$e58172_
                ((lambda (_immediate58175_)
                   (raw-table-for-each _immediate58175_ _proc58159_))
                 _$e58172_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_tab58146_)
        (let* ((_gcht58148_ (__gc-table-e _tab58146_))
               (_new-table58150_
                (__gc-table-new
                 (macro-gc-hash-table-count _gcht58148_)
                 (macro-gc-hash-table-flags _gcht58148_)))
               (_result58152_
                (##structure
                 (##structure-type _tab58146_)
                 _new-table58150_
                 '#f)))
          (gc-table-for-each
           _tab58146_
           (lambda (_k58155_ _v58156_)
             (gc-table-set! _result58152_ _k58155_ _v58156_)))
          _result58152_)))
    (define gc-table-clear!
      (lambda (_tab58139_)
        (let* ((_gcht58141_ (__gc-table-e _tab58139_))
               (_new-table58143_
                (__gc-table-new '16 (macro-gc-hash-table-flags _gcht58141_))))
          (&gc-table-gcht-set! _tab58139_ _new-table58143_)
          (&gc-table-immediate-set! _tab58139_ '#f))))
    (define gc-table-length
      (lambda (_tab58132_)
        (let ((_gcht58134_ (__gc-table-e _tab58132_)))
          (fx+ (macro-gc-hash-table-count _gcht58134_)
               (let ((_$e58136_ (&gc-table-immediate _tab58132_)))
                 (if _$e58136_ (&raw-table-count _$e58136_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_obj58117_)
        (declare (not interrupts-enabled))
        (let ((_val58120_ (gc-table-ref __object-eq-hash _obj58117_ '#f)))
          (if _val58120_
              _val58120_
              (let* ((_mix58122_ __object-eq-hash-next)
                     (_ptr58124_ (##type-cast _obj58117_ '0))
                     (_h58126_
                      (fxand (fxxor _mix58122_ _ptr58124_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_$e58129_ (##fx+? __object-eq-hash-next '1)))
                        (if _$e58129_ _$e58129_ '0)))
                (gc-table-set! __object-eq-hash _obj58117_ _h58126_)
                _h58126_)))))))
