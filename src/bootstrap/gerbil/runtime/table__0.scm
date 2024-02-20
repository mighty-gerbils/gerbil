(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1708418154)
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
      (lambda (_tab59620_)
        (##unchecked-structure-ref _tab59620_ '1 __table::t 'raw-table-table)))
    (define &raw-table-count
      (lambda (_tab59618_)
        (##unchecked-structure-ref _tab59618_ '2 __table::t 'raw-table-count)))
    (define &raw-table-free
      (lambda (_tab59616_)
        (##unchecked-structure-ref _tab59616_ '3 __table::t 'raw-table-free)))
    (define &raw-table-hash
      (lambda (_tab59614_)
        (##unchecked-structure-ref _tab59614_ '4 __table::t 'raw-table-hash)))
    (define &raw-table-test
      (lambda (_tab59612_)
        (##unchecked-structure-ref _tab59612_ '5 __table::t 'raw-table-test)))
    (define &raw-table-seed
      (lambda (_tab59610_)
        (##unchecked-structure-ref _tab59610_ '6 __table::t 'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_tab59607_ _val59608_)
        (##unchecked-structure-set!
         _tab59607_
         _val59608_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_tab59604_ _val59605_)
        (##unchecked-structure-set!
         _tab59604_
         _val59605_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_tab59601_ _val59602_)
        (##unchecked-structure-set!
         _tab59601_
         _val59602_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_tab59598_ _val59599_)
        (##unchecked-structure-set!
         _tab59598_
         _val59599_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_tab59595_ _val59596_)
        (##unchecked-structure-set!
         _tab59595_
         _val59596_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_tab59592_ _val59593_)
        (##unchecked-structure-set!
         _tab59592_
         _val59593_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_size-hint59590_)
        (if (and (fixnum? _size-hint59590_) (fx> _size-hint59590_ '0))
            (fx* (fxmax '2 (expt '2 (integer-length _size-hint59590_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_size-hint59566_ _hash59567_ _test59568_ _seed59569_)
        (let* ((_size59571_ (raw-table-size-hint->size _size-hint59566_))
               (_table59573_ (make-vector _size59571_ (macro-unused-obj))))
          (##structure
           __table::t
           _table59573_
           '0
           (fxquotient _size59571_ '2)
           _hash59567_
           _test59568_
           _seed59569_))))
    (define make-raw-table__0
      (lambda (_size-hint59579_ _hash59580_ _test59581_)
        (let ((_seed59583_ '0))
          (make-raw-table__%
           _size-hint59579_
           _hash59580_
           _test59581_
           _seed59583_))))
    (define make-raw-table
      (lambda _g59622_
        (let ((_g59621_ (##length _g59622_)))
          (cond ((##fx= _g59621_ 3)
                 (apply (lambda (_size-hint59579_ _hash59580_ _test59581_)
                          (make-raw-table__0
                           _size-hint59579_
                           _hash59580_
                           _test59581_))
                        _g59622_))
                ((##fx= _g59621_ 4)
                 (apply (lambda (_size-hint59585_
                                 _hash59586_
                                 _test59587_
                                 _seed59588_)
                          (make-raw-table__%
                           _size-hint59585_
                           _hash59586_
                           _test59587_
                           _seed59588_))
                        _g59622_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g59622_))))))
    (define raw-table-ref
      (lambda (_tab59521_ _key59522_ _default59523_)
        (let ((_table59525_ (&raw-table-table _tab59521_))
              (_seed59526_ (&raw-table-seed _tab59521_))
              (_hash59527_ (&raw-table-hash _tab59521_))
              (_test59528_ (&raw-table-test _tab59521_)))
          (let* ((_h59530_ (fxxor (_hash59527_ _key59522_) _seed59526_))
                 (_size59533_ (vector-length _table59525_))
                 (_entries59536_ (fxquotient _size59533_ '2))
                 (_start59539_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59530_ _entries59536_)
                   '1)))
            (let _loop59543_ ((_probe59546_ _start59539_)
                              (_i59548_ '1)
                              (_deleted59550_ '#f))
              (let ((_k59553_ (vector-ref _table59525_ _probe59546_)))
                (if (eq? _k59553_ (macro-unused-obj))
                    _default59523_
                    (if (eq? _k59553_ (macro-deleted-obj))
                        (_loop59543_
                         (let ((_next-probe59556_
                                (fx+ _start59539_
                                     _i59548_
                                     (fx* _i59548_ _i59548_))))
                           (fxmodulo _next-probe59556_ _size59533_))
                         (fx+ _i59548_ '1)
                         (let ((_$e59559_ _deleted59550_))
                           (if _$e59559_ _$e59559_ _probe59546_)))
                        (if (_test59528_ _key59522_ _k59553_)
                            (vector-ref _table59525_ (fx+ _probe59546_ '1))
                            (_loop59543_
                             (let ((_next-probe59562_
                                    (fx+ _start59539_
                                         _i59548_
                                         (fx* _i59548_ _i59548_))))
                               (fxmodulo _next-probe59562_ _size59533_))
                             (fx+ _i59548_ '1)
                             _deleted59550_))))))))))
    (define raw-table-set!
      (lambda (_tab59517_ _key59518_ _value59519_)
        (if (fx< (&raw-table-free _tab59517_)
                 (fxquotient (vector-length (&raw-table-table _tab59517_)) '4))
            (__raw-table-rehash! _tab59517_)
            '#!void)
        (__raw-table-set! _tab59517_ _key59518_ _value59519_)))
    (define raw-table-update!
      (lambda (_tab59512_ _key59513_ _update59514_ _default59515_)
        (if (fx< (&raw-table-free _tab59512_)
                 (fxquotient (vector-length (&raw-table-table _tab59512_)) '4))
            (__raw-table-rehash! _tab59512_)
            '#!void)
        (__raw-table-update!
         _tab59512_
         _key59513_
         _update59514_
         _default59515_)))
    (define raw-table-delete!
      (lambda (_tab59473_ _key59474_)
        (let ((_table59476_ (&raw-table-table _tab59473_))
              (_seed59477_ (&raw-table-seed _tab59473_))
              (_hash59478_ (&raw-table-hash _tab59473_))
              (_test59479_ (&raw-table-test _tab59473_)))
          (let* ((_h59481_ (fxxor (_hash59478_ _key59474_) _seed59477_))
                 (_size59484_ (vector-length _table59476_))
                 (_entries59487_ (fxquotient _size59484_ '2))
                 (_start59490_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59481_ _entries59487_)
                   '1)))
            (let _loop59494_ ((_probe59497_ _start59490_) (_i59499_ '1))
              (let ((_k59502_ (vector-ref _table59476_ _probe59497_)))
                (if (eq? _k59502_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59502_ (macro-deleted-obj))
                        (_loop59494_
                         (let ((_next-probe59505_
                                (fx+ _start59490_
                                     _i59499_
                                     (fx* _i59499_ _i59499_))))
                           (fxmodulo _next-probe59505_ _size59484_))
                         (fx+ _i59499_ '1))
                        (if (_test59479_ _key59474_ _k59502_)
                            (begin
                              (vector-set!
                               _table59476_
                               _probe59497_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59476_
                               (fx+ _probe59497_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59473_
                                  (fx- (&raw-table-count _tab59473_) '1)))))
                            (_loop59494_
                             (let ((_next-probe59509_
                                    (fx+ _start59490_
                                         _i59499_
                                         (fx* _i59499_ _i59499_))))
                               (fxmodulo _next-probe59509_ _size59484_))
                             (fx+ _i59499_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_tab59457_ _proc59458_)
        (let* ((_table59460_ (&raw-table-table _tab59457_))
               (_size59462_ (vector-length _table59460_)))
          (let _loop59465_ ((_i59467_ '0))
            (if (fx< _i59467_ _size59462_)
                (begin
                  (let ((_key59469_ (vector-ref _table59460_ _i59467_)))
                    (if (and (not (eq? _key59469_ (macro-unused-obj)))
                             (not (eq? _key59469_ (macro-deleted-obj))))
                        (let ((_value59471_
                               (vector-ref _table59460_ (fx+ _i59467_ '1))))
                          (_proc59458_ _key59469_ _value59471_))
                        '#!void))
                  (_loop59465_ (fx+ _i59467_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_tab59453_)
        (let ((_new-tab59455_ (##structure-copy _tab59453_)))
          (&raw-table-table-set!
           _new-tab59455_
           (vector-copy (&raw-table-table _tab59453_)))
          _new-tab59455_)))
    (define raw-table-clear!
      (lambda (_tab59451_)
        (vector-fill! (&raw-table-table _tab59451_) (macro-unused-obj))
        (&raw-table-count-set! _tab59451_ '0)
        (&raw-table-free-set!
         _tab59451_
         (fxquotient (vector-length (&raw-table-table _tab59451_)) '2))))
    (define __raw-table-set!
      (lambda (_tab59405_ _key59406_ _value59407_)
        (let ((_table59409_ (&raw-table-table _tab59405_))
              (_seed59410_ (&raw-table-seed _tab59405_))
              (_hash59411_ (&raw-table-hash _tab59405_))
              (_test59412_ (&raw-table-test _tab59405_)))
          (let* ((_h59414_ (fxxor (_hash59411_ _key59406_) _seed59410_))
                 (_size59417_ (vector-length _table59409_))
                 (_entries59420_ (fxquotient _size59417_ '2))
                 (_start59423_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59414_ _entries59420_)
                   '1)))
            (let _loop59427_ ((_probe59430_ _start59423_)
                              (_i59432_ '1)
                              (_deleted59434_ '#f))
              (let ((_k59437_ (vector-ref _table59409_ _probe59430_)))
                (if (eq? _k59437_ (macro-unused-obj))
                    (if _deleted59434_
                        (begin
                          (vector-set! _table59409_ _deleted59434_ _key59406_)
                          (vector-set!
                           _table59409_
                           (fx+ _deleted59434_ '1)
                           _value59407_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59405_
                              (fx+ (&raw-table-count _tab59405_) '1)))))
                        (begin
                          (vector-set! _table59409_ _probe59430_ _key59406_)
                          (vector-set!
                           _table59409_
                           (fx+ _probe59430_ '1)
                           _value59407_)
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
                        (if (_test59412_ _key59406_ _k59437_)
                            (begin
                              (vector-set!
                               _table59409_
                               _probe59430_
                               _key59406_)
                              (vector-set!
                               _table59409_
                               (fx+ _probe59430_ '1)
                               _value59407_))
                            (_loop59427_
                             (let ((_next-probe59448_
                                    (fx+ _start59423_
                                         _i59432_
                                         (fx* _i59432_ _i59432_))))
                               (fxmodulo _next-probe59448_ _size59417_))
                             (fx+ _i59432_ '1)
                             _deleted59434_))))))))))
    (define __raw-table-update!
      (lambda (_tab59358_ _key59359_ _update59360_ _default59361_)
        (let ((_table59363_ (&raw-table-table _tab59358_))
              (_seed59364_ (&raw-table-seed _tab59358_))
              (_hash59365_ (&raw-table-hash _tab59358_))
              (_test59366_ (&raw-table-test _tab59358_)))
          (let* ((_h59368_ (fxxor (_hash59365_ _key59359_) _seed59364_))
                 (_size59371_ (vector-length _table59363_))
                 (_entries59374_ (fxquotient _size59371_ '2))
                 (_start59377_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59368_ _entries59374_)
                   '1)))
            (let _loop59381_ ((_probe59384_ _start59377_)
                              (_i59386_ '1)
                              (_deleted59388_ '#f))
              (let ((_k59391_ (vector-ref _table59363_ _probe59384_)))
                (if (eq? _k59391_ (macro-unused-obj))
                    (if _deleted59388_
                        (begin
                          (vector-set! _table59363_ _deleted59388_ _key59359_)
                          (vector-set!
                           _table59363_
                           (fx+ _deleted59388_ '1)
                           (_update59360_ _default59361_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59358_
                              (fx+ (&raw-table-count _tab59358_) '1)))))
                        (begin
                          (vector-set! _table59363_ _probe59384_ _key59359_)
                          (vector-set!
                           _table59363_
                           (fx+ _probe59384_ '1)
                           (_update59360_ _default59361_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59358_
                              (fx- (&raw-table-free _tab59358_) '1))
                             (&raw-table-count-set!
                              _tab59358_
                              (fx+ (&raw-table-count _tab59358_) '1))))))
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
                        (if (_test59366_ _key59359_ _k59391_)
                            (begin
                              (vector-set!
                               _table59363_
                               _probe59384_
                               _key59359_)
                              (vector-set!
                               _table59363_
                               (fx+ _probe59384_ '1)
                               (_update59360_
                                (vector-ref
                                 _table59363_
                                 (fx+ _probe59384_ '1)))))
                            (_loop59381_
                             (let ((_next-probe59402_
                                    (fx+ _start59377_
                                         _i59386_
                                         (fx* _i59386_ _i59386_))))
                               (fxmodulo _next-probe59402_ _size59371_))
                             (fx+ _i59386_ '1)
                             _deleted59388_))))))))))
    (define __raw-table-rehash!
      (lambda (_tab59339_)
        (let* ((_old-table59341_ (&raw-table-table _tab59339_))
               (_old-size59343_ (vector-length _old-table59341_))
               (_new-size59345_
                (if (fx< (&raw-table-count _tab59339_)
                         (fxquotient _old-size59343_ '4))
                    (vector-length _old-table59341_)
                    (fx* '2 (vector-length _old-table59341_))))
               (_new-table59347_
                (make-vector _new-size59345_ (macro-unused-obj))))
          (&raw-table-table-set! _tab59339_ _new-table59347_)
          (&raw-table-count-set! _tab59339_ '0)
          (&raw-table-free-set! _tab59339_ (fxquotient _new-size59345_ '2))
          (let _lp59350_ ((_i59352_ '0))
            (if (fx< _i59352_ _old-size59343_)
                (begin
                  (let ((_key59354_ (vector-ref _old-table59341_ _i59352_)))
                    (if (and (not (eq? _key59354_ (macro-unused-obj)))
                             (not (eq? _key59354_ (macro-deleted-obj))))
                        (let ((_value59356_
                               (vector-ref
                                _old-table59341_
                                (fx+ _i59352_ '1))))
                          (__raw-table-set!
                           _tab59339_
                           _key59354_
                           _value59356_))
                        '#!void))
                  (_lp59350_ (fx+ _i59352_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_obj59335_)
        (let ((_t59337_ (##type _obj59335_)))
          (if (fx= (fxand _t59337_ '1) '0)
              (fxand (##type-cast _obj59335_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _obj59335_)
                  (symbolic-hash _obj59335_)
                  (fxand (__object->eq-hash _obj59335_)
                         (macro-max-fixnum32)))))))
    (define __eq-hash
      (lambda (_obj59332_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _obj59332_)))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash-loads '#f64(.25 .75))
    (define __object-eq-hash
      (##gc-hash-table-allocate
       '1024
       (##fxior (macro-gc-hash-table-flag-mem-alloc-keys)
                (macro-gc-hash-table-flag-weak-keys))
       __object-eq-hash-loads))
    (define __object->eq-hash
      (lambda (_obj59320_)
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
          (let ((_val59323_ (##gc-hash-table-ref __object-eq-hash _obj59320_)))
            (if (##eq? _val59323_ (macro-unused-obj))
                (let ((_val59325_ __object-eq-hash-next))
                  (set! __object-eq-hash-next
                        (let ((_$e59327_ (##fx+? __object-eq-hash-next '1)))
                          (if _$e59327_ _$e59327_ '0)))
                  (if (##gc-hash-table-set!
                       __object-eq-hash
                       _obj59320_
                       _val59325_)
                      (let ((_new-table59330_
                             (##gc-hash-table-rehash!
                              __object-eq-hash
                              (##gc-hash-table-resize!
                               __object-eq-hash
                               __object-eq-hash-loads))))
                        (##gc-hash-table-set!
                         _new-table59330_
                         _obj59320_
                         _val59325_)
                        (set! __object-eq-hash _new-table59330_))
                      '#!void)
                  _val59325_)
                _val59323_)))))
    (define eqv-hash
      (lambda (_obj59310_)
        (letrec ((_combine59312_
                  (lambda (_a59317_ _b59318_)
                    (fxand (fx* (fx+ _a59317_
                                     (fxarithmetic-shift-left _b59318_ '1))
                                '331804471)
                           (macro-max-fixnum32))))
                 (_hash59313_
                  (lambda (_obj59315_)
                    (macro-number-dispatch
                     _obj59315_
                     (eq-hash _obj59315_)
                     (fxand _obj59315_ (macro-max-fixnum32))
                     (modulo _obj59315_ '331804481)
                     (_combine59312_
                      (_hash59313_ (macro-ratnum-numerator _obj59315_))
                      (_hash59313_ (macro-ratnum-denominator _obj59315_)))
                     (_combine59312_
                      (##u16vector-ref _obj59315_ '0)
                      (_combine59312_
                       (##u16vector-ref _obj59315_ '1)
                       (_combine59312_
                        (##u16vector-ref _obj59315_ '2)
                        (##u16vector-ref _obj59315_ '3))))
                     (_combine59312_
                      (_hash59313_ (macro-cpxnum-real _obj59315_))
                      (_hash59313_ (macro-cpxnum-imag _obj59315_)))))))
          (_hash59313_ _obj59310_))))
    (define symbolic?
      (lambda (_obj59305_)
        (let ((_$e59307_ (symbol? _obj59305_)))
          (if _$e59307_ _$e59307_ (keyword? _obj59305_)))))
    (define symbolic-hash (lambda (_obj59303_) (macro-slot '1 _obj59303_)))
    (define string-hash (lambda (_obj59301_) (##string=?-hash _obj59301_)))
    (define make-eq-table__%
      (lambda (_size-hint59282_ _seed59284_)
        (make-raw-table__% _size-hint59282_ eq-hash eq? _seed59284_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_size-hint59290_ '#f) (_seed59292_ '0))
          (make-eq-table__% _size-hint59290_ _seed59292_))))
    (define make-eq-table__1
      (lambda (_size-hint59294_)
        (let ((_seed59296_ '0))
          (make-eq-table__% _size-hint59294_ _seed59296_))))
    (define make-eq-table
      (lambda _g59624_
        (let ((_g59623_ (##length _g59624_)))
          (cond ((##fx= _g59623_ 0)
                 (apply (lambda () (make-eq-table__0)) _g59624_))
                ((##fx= _g59623_ 1)
                 (apply (lambda (_size-hint59294_)
                          (make-eq-table__1 _size-hint59294_))
                        _g59624_))
                ((##fx= _g59623_ 2)
                 (apply (lambda (_size-hint59298_ _seed59299_)
                          (make-eq-table__% _size-hint59298_ _seed59299_))
                        _g59624_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g59624_))))))
    (define eq-table-ref
      (lambda (_tab59239_ _key59240_ _default59241_)
        (let ((_table59243_ (&raw-table-table _tab59239_))
              (_seed59244_ (&raw-table-seed _tab59239_)))
          (let* ((_h59246_ (fxxor (eq-hash _key59240_) _seed59244_))
                 (_size59249_ (vector-length _table59243_))
                 (_entries59252_ (fxquotient _size59249_ '2))
                 (_start59255_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59246_ _entries59252_)
                   '1)))
            (let _loop59259_ ((_probe59262_ _start59255_)
                              (_i59264_ '1)
                              (_deleted59266_ '#f))
              (let ((_k59269_ (vector-ref _table59243_ _probe59262_)))
                (if (eq? _k59269_ (macro-unused-obj))
                    _default59241_
                    (if (eq? _k59269_ (macro-deleted-obj))
                        (_loop59259_
                         (let ((_next-probe59272_
                                (fx+ _start59255_
                                     _i59264_
                                     (fx* _i59264_ _i59264_))))
                           (fxmodulo _next-probe59272_ _size59249_))
                         (fx+ _i59264_ '1)
                         (let ((_$e59275_ _deleted59266_))
                           (if _$e59275_ _$e59275_ _probe59262_)))
                        (if (eq? _key59240_ _k59269_)
                            (vector-ref _table59243_ (fx+ _probe59262_ '1))
                            (_loop59259_
                             (let ((_next-probe59278_
                                    (fx+ _start59255_
                                         _i59264_
                                         (fx* _i59264_ _i59264_))))
                               (fxmodulo _next-probe59278_ _size59249_))
                             (fx+ _i59264_ '1)
                             _deleted59266_))))))))))
    (define eq-table-set!
      (lambda (_tab59235_ _key59236_ _value59237_)
        (if (fx< (&raw-table-free _tab59235_)
                 (fxquotient (vector-length (&raw-table-table _tab59235_)) '4))
            (__raw-table-rehash! _tab59235_)
            '#!void)
        (__eq-table-set! _tab59235_ _key59236_ _value59237_)))
    (define __eq-table-set!
      (lambda (_tab59190_ _key59191_ _value59192_)
        (let ((_table59195_ (&raw-table-table _tab59190_))
              (_seed59196_ (&raw-table-seed _tab59190_)))
          (let* ((_h59198_ (fxxor (eq-hash _key59191_) _seed59196_))
                 (_size59201_ (vector-length _table59195_))
                 (_entries59204_ (fxquotient _size59201_ '2))
                 (_start59207_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59198_ _entries59204_)
                   '1)))
            (let _loop59211_ ((_probe59214_ _start59207_)
                              (_i59216_ '1)
                              (_deleted59218_ '#f))
              (let ((_k59221_ (vector-ref _table59195_ _probe59214_)))
                (if (eq? _k59221_ (macro-unused-obj))
                    (if _deleted59218_
                        (begin
                          (vector-set! _table59195_ _deleted59218_ _key59191_)
                          (vector-set!
                           _table59195_
                           (fx+ _deleted59218_ '1)
                           _value59192_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59190_
                              (fx+ (&raw-table-count _tab59190_) '1)))))
                        (begin
                          (vector-set! _table59195_ _probe59214_ _key59191_)
                          (vector-set!
                           _table59195_
                           (fx+ _probe59214_ '1)
                           _value59192_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59190_
                              (fx- (&raw-table-free _tab59190_) '1))
                             (&raw-table-count-set!
                              _tab59190_
                              (fx+ (&raw-table-count _tab59190_) '1))))))
                    (if (eq? _k59221_ (macro-deleted-obj))
                        (_loop59211_
                         (let ((_next-probe59226_
                                (fx+ _start59207_
                                     _i59216_
                                     (fx* _i59216_ _i59216_))))
                           (fxmodulo _next-probe59226_ _size59201_))
                         (fx+ _i59216_ '1)
                         (let ((_$e59229_ _deleted59218_))
                           (if _$e59229_ _$e59229_ _probe59214_)))
                        (if (eq? _key59191_ _k59221_)
                            (begin
                              (vector-set!
                               _table59195_
                               _probe59214_
                               _key59191_)
                              (vector-set!
                               _table59195_
                               (fx+ _probe59214_ '1)
                               _value59192_))
                            (_loop59211_
                             (let ((_next-probe59232_
                                    (fx+ _start59207_
                                         _i59216_
                                         (fx* _i59216_ _i59216_))))
                               (fxmodulo _next-probe59232_ _size59201_))
                             (fx+ _i59216_ '1)
                             _deleted59218_))))))))))
    (define eq-table-update!
      (lambda (_tab59185_ _key59186_ _eq-table-update!59187_ _default59188_)
        (if (fx< (&raw-table-free _tab59185_)
                 (fxquotient (vector-length (&raw-table-table _tab59185_)) '4))
            (__raw-table-rehash! _tab59185_)
            '#!void)
        (__eq-table-update!
         _tab59185_
         _key59186_
         _eq-table-update!59187_
         _default59188_)))
    (define __eq-table-update!
      (lambda (_tab59139_ _key59140_ _eq-table-update!59141_ _default59142_)
        (let ((_table59145_ (&raw-table-table _tab59139_))
              (_seed59146_ (&raw-table-seed _tab59139_)))
          (let* ((_h59148_ (fxxor (eq-hash _key59140_) _seed59146_))
                 (_size59151_ (vector-length _table59145_))
                 (_entries59154_ (fxquotient _size59151_ '2))
                 (_start59157_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59148_ _entries59154_)
                   '1)))
            (let _loop59161_ ((_probe59164_ _start59157_)
                              (_i59166_ '1)
                              (_deleted59168_ '#f))
              (let ((_k59171_ (vector-ref _table59145_ _probe59164_)))
                (if (eq? _k59171_ (macro-unused-obj))
                    (if _deleted59168_
                        (begin
                          (vector-set! _table59145_ _deleted59168_ _key59140_)
                          (vector-set!
                           _table59145_
                           (fx+ _deleted59168_ '1)
                           (_eq-table-update!59141_ _default59142_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59139_
                              (fx+ (&raw-table-count _tab59139_) '1)))))
                        (begin
                          (vector-set! _table59145_ _probe59164_ _key59140_)
                          (vector-set!
                           _table59145_
                           (fx+ _probe59164_ '1)
                           (_eq-table-update!59141_ _default59142_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59139_
                              (fx- (&raw-table-free _tab59139_) '1))
                             (&raw-table-count-set!
                              _tab59139_
                              (fx+ (&raw-table-count _tab59139_) '1))))))
                    (if (eq? _k59171_ (macro-deleted-obj))
                        (_loop59161_
                         (let ((_next-probe59176_
                                (fx+ _start59157_
                                     _i59166_
                                     (fx* _i59166_ _i59166_))))
                           (fxmodulo _next-probe59176_ _size59151_))
                         (fx+ _i59166_ '1)
                         (let ((_$e59179_ _deleted59168_))
                           (if _$e59179_ _$e59179_ _probe59164_)))
                        (if (eq? _key59140_ _k59171_)
                            (begin
                              (vector-set!
                               _table59145_
                               _probe59164_
                               _key59140_)
                              (vector-set!
                               _table59145_
                               (fx+ _probe59164_ '1)
                               (_eq-table-update!59141_
                                (vector-ref
                                 _table59145_
                                 (fx+ _probe59164_ '1)))))
                            (_loop59161_
                             (let ((_next-probe59182_
                                    (fx+ _start59157_
                                         _i59166_
                                         (fx* _i59166_ _i59166_))))
                               (fxmodulo _next-probe59182_ _size59151_))
                             (fx+ _i59166_ '1)
                             _deleted59168_))))))))))
    (define eq-table-delete!
      (lambda (_tab59098_ _key59100_)
        (let ((_table59103_ (&raw-table-table _tab59098_))
              (_seed59105_ (&raw-table-seed _tab59098_)))
          (let* ((_h59108_ (fxxor (eq-hash _key59100_) _seed59105_))
                 (_size59111_ (vector-length _table59103_))
                 (_entries59114_ (fxquotient _size59111_ '2))
                 (_start59117_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59108_ _entries59114_)
                   '1)))
            (let _loop59121_ ((_probe59124_ _start59117_) (_i59126_ '1))
              (let ((_k59129_ (vector-ref _table59103_ _probe59124_)))
                (if (eq? _k59129_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59129_ (macro-deleted-obj))
                        (_loop59121_
                         (let ((_next-probe59132_
                                (fx+ _start59117_
                                     _i59126_
                                     (fx* _i59126_ _i59126_))))
                           (fxmodulo _next-probe59132_ _size59111_))
                         (fx+ _i59126_ '1))
                        (if (eq? _key59100_ _k59129_)
                            (begin
                              (vector-set!
                               _table59103_
                               _probe59124_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59103_
                               (fx+ _probe59124_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59098_
                                  (fx- (&raw-table-count _tab59098_) '1)))))
                            (_loop59121_
                             (let ((_next-probe59136_
                                    (fx+ _start59117_
                                         _i59126_
                                         (fx* _i59126_ _i59126_))))
                               (fxmodulo _next-probe59136_ _size59111_))
                             (fx+ _i59126_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_size-hint59079_ _seed59081_)
        (make-raw-table__% _size-hint59079_ eqv-hash eqv? _seed59081_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_size-hint59087_ '#f) (_seed59089_ '0))
          (make-eqv-table__% _size-hint59087_ _seed59089_))))
    (define make-eqv-table__1
      (lambda (_size-hint59091_)
        (let ((_seed59093_ '0))
          (make-eqv-table__% _size-hint59091_ _seed59093_))))
    (define make-eqv-table
      (lambda _g59626_
        (let ((_g59625_ (##length _g59626_)))
          (cond ((##fx= _g59625_ 0)
                 (apply (lambda () (make-eqv-table__0)) _g59626_))
                ((##fx= _g59625_ 1)
                 (apply (lambda (_size-hint59091_)
                          (make-eqv-table__1 _size-hint59091_))
                        _g59626_))
                ((##fx= _g59625_ 2)
                 (apply (lambda (_size-hint59095_ _seed59096_)
                          (make-eqv-table__% _size-hint59095_ _seed59096_))
                        _g59626_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g59626_))))))
    (define eqv-table-ref
      (lambda (_tab59036_ _key59037_ _default59038_)
        (let ((_table59040_ (&raw-table-table _tab59036_))
              (_seed59041_ (&raw-table-seed _tab59036_)))
          (let* ((_h59043_ (fxxor (eqv-hash _key59037_) _seed59041_))
                 (_size59046_ (vector-length _table59040_))
                 (_entries59049_ (fxquotient _size59046_ '2))
                 (_start59052_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59043_ _entries59049_)
                   '1)))
            (let _loop59056_ ((_probe59059_ _start59052_)
                              (_i59061_ '1)
                              (_deleted59063_ '#f))
              (let ((_k59066_ (vector-ref _table59040_ _probe59059_)))
                (if (eq? _k59066_ (macro-unused-obj))
                    _default59038_
                    (if (eq? _k59066_ (macro-deleted-obj))
                        (_loop59056_
                         (let ((_next-probe59069_
                                (fx+ _start59052_
                                     _i59061_
                                     (fx* _i59061_ _i59061_))))
                           (fxmodulo _next-probe59069_ _size59046_))
                         (fx+ _i59061_ '1)
                         (let ((_$e59072_ _deleted59063_))
                           (if _$e59072_ _$e59072_ _probe59059_)))
                        (if (eqv? _key59037_ _k59066_)
                            (vector-ref _table59040_ (fx+ _probe59059_ '1))
                            (_loop59056_
                             (let ((_next-probe59075_
                                    (fx+ _start59052_
                                         _i59061_
                                         (fx* _i59061_ _i59061_))))
                               (fxmodulo _next-probe59075_ _size59046_))
                             (fx+ _i59061_ '1)
                             _deleted59063_))))))))))
    (define eqv-table-set!
      (lambda (_tab59032_ _key59033_ _value59034_)
        (if (fx< (&raw-table-free _tab59032_)
                 (fxquotient (vector-length (&raw-table-table _tab59032_)) '4))
            (__raw-table-rehash! _tab59032_)
            '#!void)
        (__eqv-table-set! _tab59032_ _key59033_ _value59034_)))
    (define __eqv-table-set!
      (lambda (_tab58987_ _key58988_ _value58989_)
        (let ((_table58992_ (&raw-table-table _tab58987_))
              (_seed58993_ (&raw-table-seed _tab58987_)))
          (let* ((_h58995_ (fxxor (eqv-hash _key58988_) _seed58993_))
                 (_size58998_ (vector-length _table58992_))
                 (_entries59001_ (fxquotient _size58998_ '2))
                 (_start59004_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58995_ _entries59001_)
                   '1)))
            (let _loop59008_ ((_probe59011_ _start59004_)
                              (_i59013_ '1)
                              (_deleted59015_ '#f))
              (let ((_k59018_ (vector-ref _table58992_ _probe59011_)))
                (if (eq? _k59018_ (macro-unused-obj))
                    (if _deleted59015_
                        (begin
                          (vector-set! _table58992_ _deleted59015_ _key58988_)
                          (vector-set!
                           _table58992_
                           (fx+ _deleted59015_ '1)
                           _value58989_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58987_
                              (fx+ (&raw-table-count _tab58987_) '1)))))
                        (begin
                          (vector-set! _table58992_ _probe59011_ _key58988_)
                          (vector-set!
                           _table58992_
                           (fx+ _probe59011_ '1)
                           _value58989_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58987_
                              (fx- (&raw-table-free _tab58987_) '1))
                             (&raw-table-count-set!
                              _tab58987_
                              (fx+ (&raw-table-count _tab58987_) '1))))))
                    (if (eq? _k59018_ (macro-deleted-obj))
                        (_loop59008_
                         (let ((_next-probe59023_
                                (fx+ _start59004_
                                     _i59013_
                                     (fx* _i59013_ _i59013_))))
                           (fxmodulo _next-probe59023_ _size58998_))
                         (fx+ _i59013_ '1)
                         (let ((_$e59026_ _deleted59015_))
                           (if _$e59026_ _$e59026_ _probe59011_)))
                        (if (eqv? _key58988_ _k59018_)
                            (begin
                              (vector-set!
                               _table58992_
                               _probe59011_
                               _key58988_)
                              (vector-set!
                               _table58992_
                               (fx+ _probe59011_ '1)
                               _value58989_))
                            (_loop59008_
                             (let ((_next-probe59029_
                                    (fx+ _start59004_
                                         _i59013_
                                         (fx* _i59013_ _i59013_))))
                               (fxmodulo _next-probe59029_ _size58998_))
                             (fx+ _i59013_ '1)
                             _deleted59015_))))))))))
    (define eqv-table-update!
      (lambda (_tab58982_ _key58983_ _eqv-table-update!58984_ _default58985_)
        (if (fx< (&raw-table-free _tab58982_)
                 (fxquotient (vector-length (&raw-table-table _tab58982_)) '4))
            (__raw-table-rehash! _tab58982_)
            '#!void)
        (__eqv-table-update!
         _tab58982_
         _key58983_
         _eqv-table-update!58984_
         _default58985_)))
    (define __eqv-table-update!
      (lambda (_tab58936_ _key58937_ _eqv-table-update!58938_ _default58939_)
        (let ((_table58942_ (&raw-table-table _tab58936_))
              (_seed58943_ (&raw-table-seed _tab58936_)))
          (let* ((_h58945_ (fxxor (eqv-hash _key58937_) _seed58943_))
                 (_size58948_ (vector-length _table58942_))
                 (_entries58951_ (fxquotient _size58948_ '2))
                 (_start58954_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58945_ _entries58951_)
                   '1)))
            (let _loop58958_ ((_probe58961_ _start58954_)
                              (_i58963_ '1)
                              (_deleted58965_ '#f))
              (let ((_k58968_ (vector-ref _table58942_ _probe58961_)))
                (if (eq? _k58968_ (macro-unused-obj))
                    (if _deleted58965_
                        (begin
                          (vector-set! _table58942_ _deleted58965_ _key58937_)
                          (vector-set!
                           _table58942_
                           (fx+ _deleted58965_ '1)
                           (_eqv-table-update!58938_ _default58939_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58936_
                              (fx+ (&raw-table-count _tab58936_) '1)))))
                        (begin
                          (vector-set! _table58942_ _probe58961_ _key58937_)
                          (vector-set!
                           _table58942_
                           (fx+ _probe58961_ '1)
                           (_eqv-table-update!58938_ _default58939_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58936_
                              (fx- (&raw-table-free _tab58936_) '1))
                             (&raw-table-count-set!
                              _tab58936_
                              (fx+ (&raw-table-count _tab58936_) '1))))))
                    (if (eq? _k58968_ (macro-deleted-obj))
                        (_loop58958_
                         (let ((_next-probe58973_
                                (fx+ _start58954_
                                     _i58963_
                                     (fx* _i58963_ _i58963_))))
                           (fxmodulo _next-probe58973_ _size58948_))
                         (fx+ _i58963_ '1)
                         (let ((_$e58976_ _deleted58965_))
                           (if _$e58976_ _$e58976_ _probe58961_)))
                        (if (eqv? _key58937_ _k58968_)
                            (begin
                              (vector-set!
                               _table58942_
                               _probe58961_
                               _key58937_)
                              (vector-set!
                               _table58942_
                               (fx+ _probe58961_ '1)
                               (_eqv-table-update!58938_
                                (vector-ref
                                 _table58942_
                                 (fx+ _probe58961_ '1)))))
                            (_loop58958_
                             (let ((_next-probe58979_
                                    (fx+ _start58954_
                                         _i58963_
                                         (fx* _i58963_ _i58963_))))
                               (fxmodulo _next-probe58979_ _size58948_))
                             (fx+ _i58963_ '1)
                             _deleted58965_))))))))))
    (define eqv-table-delete!
      (lambda (_tab58895_ _key58897_)
        (let ((_table58900_ (&raw-table-table _tab58895_))
              (_seed58902_ (&raw-table-seed _tab58895_)))
          (let* ((_h58905_ (fxxor (eqv-hash _key58897_) _seed58902_))
                 (_size58908_ (vector-length _table58900_))
                 (_entries58911_ (fxquotient _size58908_ '2))
                 (_start58914_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58905_ _entries58911_)
                   '1)))
            (let _loop58918_ ((_probe58921_ _start58914_) (_i58923_ '1))
              (let ((_k58926_ (vector-ref _table58900_ _probe58921_)))
                (if (eq? _k58926_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k58926_ (macro-deleted-obj))
                        (_loop58918_
                         (let ((_next-probe58929_
                                (fx+ _start58914_
                                     _i58923_
                                     (fx* _i58923_ _i58923_))))
                           (fxmodulo _next-probe58929_ _size58908_))
                         (fx+ _i58923_ '1))
                        (if (eqv? _key58897_ _k58926_)
                            (begin
                              (vector-set!
                               _table58900_
                               _probe58921_
                               (macro-deleted-obj))
                              (vector-set!
                               _table58900_
                               (fx+ _probe58921_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab58895_
                                  (fx- (&raw-table-count _tab58895_) '1)))))
                            (_loop58918_
                             (let ((_next-probe58933_
                                    (fx+ _start58914_
                                         _i58923_
                                         (fx* _i58923_ _i58923_))))
                               (fxmodulo _next-probe58933_ _size58908_))
                             (fx+ _i58923_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_size-hint58876_ _seed58878_)
        (make-raw-table__% _size-hint58876_ symbolic-hash eq? _seed58878_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_size-hint58884_ '#f) (_seed58886_ '0))
          (make-symbolic-table__% _size-hint58884_ _seed58886_))))
    (define make-symbolic-table__1
      (lambda (_size-hint58888_)
        (let ((_seed58890_ '0))
          (make-symbolic-table__% _size-hint58888_ _seed58890_))))
    (define make-symbolic-table
      (lambda _g59628_
        (let ((_g59627_ (##length _g59628_)))
          (cond ((##fx= _g59627_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g59628_))
                ((##fx= _g59627_ 1)
                 (apply (lambda (_size-hint58888_)
                          (make-symbolic-table__1 _size-hint58888_))
                        _g59628_))
                ((##fx= _g59627_ 2)
                 (apply (lambda (_size-hint58892_ _seed58893_)
                          (make-symbolic-table__%
                           _size-hint58892_
                           _seed58893_))
                        _g59628_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g59628_))))))
    (define symbolic-table-ref
      (lambda (_tab58833_ _key58834_ _default58835_)
        (let ((_table58837_ (&raw-table-table _tab58833_))
              (_seed58838_ (&raw-table-seed _tab58833_)))
          (let* ((_h58840_ (fxxor (symbolic-hash _key58834_) _seed58838_))
                 (_size58843_ (vector-length _table58837_))
                 (_entries58846_ (fxquotient _size58843_ '2))
                 (_start58849_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58840_ _entries58846_)
                   '1)))
            (let _loop58853_ ((_probe58856_ _start58849_)
                              (_i58858_ '1)
                              (_deleted58860_ '#f))
              (let ((_k58863_ (vector-ref _table58837_ _probe58856_)))
                (if (eq? _k58863_ (macro-unused-obj))
                    _default58835_
                    (if (eq? _k58863_ (macro-deleted-obj))
                        (_loop58853_
                         (let ((_next-probe58866_
                                (fx+ _start58849_
                                     _i58858_
                                     (fx* _i58858_ _i58858_))))
                           (fxmodulo _next-probe58866_ _size58843_))
                         (fx+ _i58858_ '1)
                         (let ((_$e58869_ _deleted58860_))
                           (if _$e58869_ _$e58869_ _probe58856_)))
                        (if (eq? _key58834_ _k58863_)
                            (vector-ref _table58837_ (fx+ _probe58856_ '1))
                            (_loop58853_
                             (let ((_next-probe58872_
                                    (fx+ _start58849_
                                         _i58858_
                                         (fx* _i58858_ _i58858_))))
                               (fxmodulo _next-probe58872_ _size58843_))
                             (fx+ _i58858_ '1)
                             _deleted58860_))))))))))
    (define symbolic-table-set!
      (lambda (_tab58829_ _key58830_ _value58831_)
        (if (fx< (&raw-table-free _tab58829_)
                 (fxquotient (vector-length (&raw-table-table _tab58829_)) '4))
            (__raw-table-rehash! _tab58829_)
            '#!void)
        (__symbolic-table-set! _tab58829_ _key58830_ _value58831_)))
    (define __symbolic-table-set!
      (lambda (_tab58784_ _key58785_ _value58786_)
        (let ((_table58789_ (&raw-table-table _tab58784_))
              (_seed58790_ (&raw-table-seed _tab58784_)))
          (let* ((_h58792_ (fxxor (symbolic-hash _key58785_) _seed58790_))
                 (_size58795_ (vector-length _table58789_))
                 (_entries58798_ (fxquotient _size58795_ '2))
                 (_start58801_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58792_ _entries58798_)
                   '1)))
            (let _loop58805_ ((_probe58808_ _start58801_)
                              (_i58810_ '1)
                              (_deleted58812_ '#f))
              (let ((_k58815_ (vector-ref _table58789_ _probe58808_)))
                (if (eq? _k58815_ (macro-unused-obj))
                    (if _deleted58812_
                        (begin
                          (vector-set! _table58789_ _deleted58812_ _key58785_)
                          (vector-set!
                           _table58789_
                           (fx+ _deleted58812_ '1)
                           _value58786_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58784_
                              (fx+ (&raw-table-count _tab58784_) '1)))))
                        (begin
                          (vector-set! _table58789_ _probe58808_ _key58785_)
                          (vector-set!
                           _table58789_
                           (fx+ _probe58808_ '1)
                           _value58786_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58784_
                              (fx- (&raw-table-free _tab58784_) '1))
                             (&raw-table-count-set!
                              _tab58784_
                              (fx+ (&raw-table-count _tab58784_) '1))))))
                    (if (eq? _k58815_ (macro-deleted-obj))
                        (_loop58805_
                         (let ((_next-probe58820_
                                (fx+ _start58801_
                                     _i58810_
                                     (fx* _i58810_ _i58810_))))
                           (fxmodulo _next-probe58820_ _size58795_))
                         (fx+ _i58810_ '1)
                         (let ((_$e58823_ _deleted58812_))
                           (if _$e58823_ _$e58823_ _probe58808_)))
                        (if (eq? _key58785_ _k58815_)
                            (begin
                              (vector-set!
                               _table58789_
                               _probe58808_
                               _key58785_)
                              (vector-set!
                               _table58789_
                               (fx+ _probe58808_ '1)
                               _value58786_))
                            (_loop58805_
                             (let ((_next-probe58826_
                                    (fx+ _start58801_
                                         _i58810_
                                         (fx* _i58810_ _i58810_))))
                               (fxmodulo _next-probe58826_ _size58795_))
                             (fx+ _i58810_ '1)
                             _deleted58812_))))))))))
    (define symbolic-table-update!
      (lambda (_tab58779_
               _key58780_
               _symbolic-table-update!58781_
               _default58782_)
        (if (fx< (&raw-table-free _tab58779_)
                 (fxquotient (vector-length (&raw-table-table _tab58779_)) '4))
            (__raw-table-rehash! _tab58779_)
            '#!void)
        (__symbolic-table-update!
         _tab58779_
         _key58780_
         _symbolic-table-update!58781_
         _default58782_)))
    (define __symbolic-table-update!
      (lambda (_tab58733_
               _key58734_
               _symbolic-table-update!58735_
               _default58736_)
        (let ((_table58739_ (&raw-table-table _tab58733_))
              (_seed58740_ (&raw-table-seed _tab58733_)))
          (let* ((_h58742_ (fxxor (symbolic-hash _key58734_) _seed58740_))
                 (_size58745_ (vector-length _table58739_))
                 (_entries58748_ (fxquotient _size58745_ '2))
                 (_start58751_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58742_ _entries58748_)
                   '1)))
            (let _loop58755_ ((_probe58758_ _start58751_)
                              (_i58760_ '1)
                              (_deleted58762_ '#f))
              (let ((_k58765_ (vector-ref _table58739_ _probe58758_)))
                (if (eq? _k58765_ (macro-unused-obj))
                    (if _deleted58762_
                        (begin
                          (vector-set! _table58739_ _deleted58762_ _key58734_)
                          (vector-set!
                           _table58739_
                           (fx+ _deleted58762_ '1)
                           (_symbolic-table-update!58735_ _default58736_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58733_
                              (fx+ (&raw-table-count _tab58733_) '1)))))
                        (begin
                          (vector-set! _table58739_ _probe58758_ _key58734_)
                          (vector-set!
                           _table58739_
                           (fx+ _probe58758_ '1)
                           (_symbolic-table-update!58735_ _default58736_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58733_
                              (fx- (&raw-table-free _tab58733_) '1))
                             (&raw-table-count-set!
                              _tab58733_
                              (fx+ (&raw-table-count _tab58733_) '1))))))
                    (if (eq? _k58765_ (macro-deleted-obj))
                        (_loop58755_
                         (let ((_next-probe58770_
                                (fx+ _start58751_
                                     _i58760_
                                     (fx* _i58760_ _i58760_))))
                           (fxmodulo _next-probe58770_ _size58745_))
                         (fx+ _i58760_ '1)
                         (let ((_$e58773_ _deleted58762_))
                           (if _$e58773_ _$e58773_ _probe58758_)))
                        (if (eq? _key58734_ _k58765_)
                            (begin
                              (vector-set!
                               _table58739_
                               _probe58758_
                               _key58734_)
                              (vector-set!
                               _table58739_
                               (fx+ _probe58758_ '1)
                               (_symbolic-table-update!58735_
                                (vector-ref
                                 _table58739_
                                 (fx+ _probe58758_ '1)))))
                            (_loop58755_
                             (let ((_next-probe58776_
                                    (fx+ _start58751_
                                         _i58760_
                                         (fx* _i58760_ _i58760_))))
                               (fxmodulo _next-probe58776_ _size58745_))
                             (fx+ _i58760_ '1)
                             _deleted58762_))))))))))
    (define symbolic-table-delete!
      (lambda (_tab58692_ _key58694_)
        (let ((_table58697_ (&raw-table-table _tab58692_))
              (_seed58699_ (&raw-table-seed _tab58692_)))
          (let* ((_h58702_ (fxxor (symbolic-hash _key58694_) _seed58699_))
                 (_size58705_ (vector-length _table58697_))
                 (_entries58708_ (fxquotient _size58705_ '2))
                 (_start58711_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58702_ _entries58708_)
                   '1)))
            (let _loop58715_ ((_probe58718_ _start58711_) (_i58720_ '1))
              (let ((_k58723_ (vector-ref _table58697_ _probe58718_)))
                (if (eq? _k58723_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k58723_ (macro-deleted-obj))
                        (_loop58715_
                         (let ((_next-probe58726_
                                (fx+ _start58711_
                                     _i58720_
                                     (fx* _i58720_ _i58720_))))
                           (fxmodulo _next-probe58726_ _size58705_))
                         (fx+ _i58720_ '1))
                        (if (eq? _key58694_ _k58723_)
                            (begin
                              (vector-set!
                               _table58697_
                               _probe58718_
                               (macro-deleted-obj))
                              (vector-set!
                               _table58697_
                               (fx+ _probe58718_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab58692_
                                  (fx- (&raw-table-count _tab58692_) '1)))))
                            (_loop58715_
                             (let ((_next-probe58730_
                                    (fx+ _start58711_
                                         _i58720_
                                         (fx* _i58720_ _i58720_))))
                               (fxmodulo _next-probe58730_ _size58705_))
                             (fx+ _i58720_ '1)))))))))))
    (define make-string-table__%
      (lambda (_size-hint58673_ _seed58675_)
        (make-raw-table__%
         _size-hint58673_
         string-hash
         ##string=?
         _seed58675_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_size-hint58681_ '#f) (_seed58683_ '0))
          (make-string-table__% _size-hint58681_ _seed58683_))))
    (define make-string-table__1
      (lambda (_size-hint58685_)
        (let ((_seed58687_ '0))
          (make-string-table__% _size-hint58685_ _seed58687_))))
    (define make-string-table
      (lambda _g59630_
        (let ((_g59629_ (##length _g59630_)))
          (cond ((##fx= _g59629_ 0)
                 (apply (lambda () (make-string-table__0)) _g59630_))
                ((##fx= _g59629_ 1)
                 (apply (lambda (_size-hint58685_)
                          (make-string-table__1 _size-hint58685_))
                        _g59630_))
                ((##fx= _g59629_ 2)
                 (apply (lambda (_size-hint58689_ _seed58690_)
                          (make-string-table__% _size-hint58689_ _seed58690_))
                        _g59630_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g59630_))))))
    (define string-table-ref
      (lambda (_tab58630_ _key58631_ _default58632_)
        (let ((_table58634_ (&raw-table-table _tab58630_))
              (_seed58635_ (&raw-table-seed _tab58630_)))
          (let* ((_h58637_ (fxxor (##string=?-hash _key58631_) _seed58635_))
                 (_size58640_ (vector-length _table58634_))
                 (_entries58643_ (fxquotient _size58640_ '2))
                 (_start58646_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58637_ _entries58643_)
                   '1)))
            (let _loop58650_ ((_probe58653_ _start58646_)
                              (_i58655_ '1)
                              (_deleted58657_ '#f))
              (let ((_k58660_ (vector-ref _table58634_ _probe58653_)))
                (if (eq? _k58660_ (macro-unused-obj))
                    _default58632_
                    (if (eq? _k58660_ (macro-deleted-obj))
                        (_loop58650_
                         (let ((_next-probe58663_
                                (fx+ _start58646_
                                     _i58655_
                                     (fx* _i58655_ _i58655_))))
                           (fxmodulo _next-probe58663_ _size58640_))
                         (fx+ _i58655_ '1)
                         (let ((_$e58666_ _deleted58657_))
                           (if _$e58666_ _$e58666_ _probe58653_)))
                        (if (##string=? _key58631_ _k58660_)
                            (vector-ref _table58634_ (fx+ _probe58653_ '1))
                            (_loop58650_
                             (let ((_next-probe58669_
                                    (fx+ _start58646_
                                         _i58655_
                                         (fx* _i58655_ _i58655_))))
                               (fxmodulo _next-probe58669_ _size58640_))
                             (fx+ _i58655_ '1)
                             _deleted58657_))))))))))
    (define string-table-set!
      (lambda (_tab58626_ _key58627_ _value58628_)
        (if (fx< (&raw-table-free _tab58626_)
                 (fxquotient (vector-length (&raw-table-table _tab58626_)) '4))
            (__raw-table-rehash! _tab58626_)
            '#!void)
        (__string-table-set! _tab58626_ _key58627_ _value58628_)))
    (define __string-table-set!
      (lambda (_tab58581_ _key58582_ _value58583_)
        (let ((_table58586_ (&raw-table-table _tab58581_))
              (_seed58587_ (&raw-table-seed _tab58581_)))
          (let* ((_h58589_ (fxxor (##string=?-hash _key58582_) _seed58587_))
                 (_size58592_ (vector-length _table58586_))
                 (_entries58595_ (fxquotient _size58592_ '2))
                 (_start58598_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58589_ _entries58595_)
                   '1)))
            (let _loop58602_ ((_probe58605_ _start58598_)
                              (_i58607_ '1)
                              (_deleted58609_ '#f))
              (let ((_k58612_ (vector-ref _table58586_ _probe58605_)))
                (if (eq? _k58612_ (macro-unused-obj))
                    (if _deleted58609_
                        (begin
                          (vector-set! _table58586_ _deleted58609_ _key58582_)
                          (vector-set!
                           _table58586_
                           (fx+ _deleted58609_ '1)
                           _value58583_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58581_
                              (fx+ (&raw-table-count _tab58581_) '1)))))
                        (begin
                          (vector-set! _table58586_ _probe58605_ _key58582_)
                          (vector-set!
                           _table58586_
                           (fx+ _probe58605_ '1)
                           _value58583_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58581_
                              (fx- (&raw-table-free _tab58581_) '1))
                             (&raw-table-count-set!
                              _tab58581_
                              (fx+ (&raw-table-count _tab58581_) '1))))))
                    (if (eq? _k58612_ (macro-deleted-obj))
                        (_loop58602_
                         (let ((_next-probe58617_
                                (fx+ _start58598_
                                     _i58607_
                                     (fx* _i58607_ _i58607_))))
                           (fxmodulo _next-probe58617_ _size58592_))
                         (fx+ _i58607_ '1)
                         (let ((_$e58620_ _deleted58609_))
                           (if _$e58620_ _$e58620_ _probe58605_)))
                        (if (##string=? _key58582_ _k58612_)
                            (begin
                              (vector-set!
                               _table58586_
                               _probe58605_
                               _key58582_)
                              (vector-set!
                               _table58586_
                               (fx+ _probe58605_ '1)
                               _value58583_))
                            (_loop58602_
                             (let ((_next-probe58623_
                                    (fx+ _start58598_
                                         _i58607_
                                         (fx* _i58607_ _i58607_))))
                               (fxmodulo _next-probe58623_ _size58592_))
                             (fx+ _i58607_ '1)
                             _deleted58609_))))))))))
    (define string-table-update!
      (lambda (_tab58576_
               _key58577_
               _string-table-update!58578_
               _default58579_)
        (if (fx< (&raw-table-free _tab58576_)
                 (fxquotient (vector-length (&raw-table-table _tab58576_)) '4))
            (__raw-table-rehash! _tab58576_)
            '#!void)
        (__string-table-update!
         _tab58576_
         _key58577_
         _string-table-update!58578_
         _default58579_)))
    (define __string-table-update!
      (lambda (_tab58530_
               _key58531_
               _string-table-update!58532_
               _default58533_)
        (let ((_table58536_ (&raw-table-table _tab58530_))
              (_seed58537_ (&raw-table-seed _tab58530_)))
          (let* ((_h58539_ (fxxor (##string=?-hash _key58531_) _seed58537_))
                 (_size58542_ (vector-length _table58536_))
                 (_entries58545_ (fxquotient _size58542_ '2))
                 (_start58548_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58539_ _entries58545_)
                   '1)))
            (let _loop58552_ ((_probe58555_ _start58548_)
                              (_i58557_ '1)
                              (_deleted58559_ '#f))
              (let ((_k58562_ (vector-ref _table58536_ _probe58555_)))
                (if (eq? _k58562_ (macro-unused-obj))
                    (if _deleted58559_
                        (begin
                          (vector-set! _table58536_ _deleted58559_ _key58531_)
                          (vector-set!
                           _table58536_
                           (fx+ _deleted58559_ '1)
                           (_string-table-update!58532_ _default58533_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab58530_
                              (fx+ (&raw-table-count _tab58530_) '1)))))
                        (begin
                          (vector-set! _table58536_ _probe58555_ _key58531_)
                          (vector-set!
                           _table58536_
                           (fx+ _probe58555_ '1)
                           (_string-table-update!58532_ _default58533_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab58530_
                              (fx- (&raw-table-free _tab58530_) '1))
                             (&raw-table-count-set!
                              _tab58530_
                              (fx+ (&raw-table-count _tab58530_) '1))))))
                    (if (eq? _k58562_ (macro-deleted-obj))
                        (_loop58552_
                         (let ((_next-probe58567_
                                (fx+ _start58548_
                                     _i58557_
                                     (fx* _i58557_ _i58557_))))
                           (fxmodulo _next-probe58567_ _size58542_))
                         (fx+ _i58557_ '1)
                         (let ((_$e58570_ _deleted58559_))
                           (if _$e58570_ _$e58570_ _probe58555_)))
                        (if (##string=? _key58531_ _k58562_)
                            (begin
                              (vector-set!
                               _table58536_
                               _probe58555_
                               _key58531_)
                              (vector-set!
                               _table58536_
                               (fx+ _probe58555_ '1)
                               (_string-table-update!58532_
                                (vector-ref
                                 _table58536_
                                 (fx+ _probe58555_ '1)))))
                            (_loop58552_
                             (let ((_next-probe58573_
                                    (fx+ _start58548_
                                         _i58557_
                                         (fx* _i58557_ _i58557_))))
                               (fxmodulo _next-probe58573_ _size58542_))
                             (fx+ _i58557_ '1)
                             _deleted58559_))))))))))
    (define string-table-delete!
      (lambda (_tab58489_ _key58491_)
        (let ((_table58494_ (&raw-table-table _tab58489_))
              (_seed58496_ (&raw-table-seed _tab58489_)))
          (let* ((_h58499_ (fxxor (##string=?-hash _key58491_) _seed58496_))
                 (_size58502_ (vector-length _table58494_))
                 (_entries58505_ (fxquotient _size58502_ '2))
                 (_start58508_
                  (fxarithmetic-shift-left
                   (fxmodulo _h58499_ _entries58505_)
                   '1)))
            (let _loop58512_ ((_probe58515_ _start58508_) (_i58517_ '1))
              (let ((_k58520_ (vector-ref _table58494_ _probe58515_)))
                (if (eq? _k58520_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k58520_ (macro-deleted-obj))
                        (_loop58512_
                         (let ((_next-probe58523_
                                (fx+ _start58508_
                                     _i58517_
                                     (fx* _i58517_ _i58517_))))
                           (fxmodulo _next-probe58523_ _size58502_))
                         (fx+ _i58517_ '1))
                        (if (##string=? _key58491_ _k58520_)
                            (begin
                              (vector-set!
                               _table58494_
                               _probe58515_
                               (macro-deleted-obj))
                              (vector-set!
                               _table58494_
                               (fx+ _probe58515_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab58489_
                                  (fx- (&raw-table-count _tab58489_) '1)))))
                            (_loop58512_
                             (let ((_next-probe58527_
                                    (fx+ _start58508_
                                         _i58517_
                                         (fx* _i58517_ _i58517_))))
                               (fxmodulo _next-probe58527_ _size58502_))
                             (fx+ _i58517_ '1)))))))))))))
