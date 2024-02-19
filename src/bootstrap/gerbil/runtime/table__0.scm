(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1708337962)
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
      (lambda (_tab64711_)
        (##unchecked-structure-ref _tab64711_ '1 __table::t 'raw-table-table)))
    (define &raw-table-count
      (lambda (_tab64709_)
        (##unchecked-structure-ref _tab64709_ '2 __table::t 'raw-table-count)))
    (define &raw-table-free
      (lambda (_tab64707_)
        (##unchecked-structure-ref _tab64707_ '3 __table::t 'raw-table-free)))
    (define &raw-table-hash
      (lambda (_tab64705_)
        (##unchecked-structure-ref _tab64705_ '4 __table::t 'raw-table-hash)))
    (define &raw-table-test
      (lambda (_tab64703_)
        (##unchecked-structure-ref _tab64703_ '5 __table::t 'raw-table-test)))
    (define &raw-table-seed
      (lambda (_tab64701_)
        (##unchecked-structure-ref _tab64701_ '6 __table::t 'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_tab64698_ _val64699_)
        (##unchecked-structure-set!
         _tab64698_
         _val64699_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_tab64695_ _val64696_)
        (##unchecked-structure-set!
         _tab64695_
         _val64696_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_tab64692_ _val64693_)
        (##unchecked-structure-set!
         _tab64692_
         _val64693_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_tab64689_ _val64690_)
        (##unchecked-structure-set!
         _tab64689_
         _val64690_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_tab64686_ _val64687_)
        (##unchecked-structure-set!
         _tab64686_
         _val64687_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_tab64683_ _val64684_)
        (##unchecked-structure-set!
         _tab64683_
         _val64684_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_size-hint64681_)
        (if (and (fixnum? _size-hint64681_) (fx> _size-hint64681_ '0))
            (fx* (fxmax '2 (expt '2 (integer-length _size-hint64681_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_size-hint64657_ _hash64658_ _test64659_ _seed64660_)
        (let* ((_size64662_ (raw-table-size-hint->size _size-hint64657_))
               (_table64664_ (make-vector _size64662_ (macro-unused-obj))))
          (##structure
           __table::t
           _table64664_
           '0
           (fxquotient _size64662_ '2)
           _hash64658_
           _test64659_
           _seed64660_))))
    (define make-raw-table__0
      (lambda (_size-hint64670_ _hash64671_ _test64672_)
        (let ((_seed64674_ '0))
          (make-raw-table__%
           _size-hint64670_
           _hash64671_
           _test64672_
           _seed64674_))))
    (define make-raw-table
      (lambda _g68699_
        (let ((_g68698_ (##length _g68699_)))
          (cond ((##fx= _g68698_ 3)
                 (apply (lambda (_size-hint64670_ _hash64671_ _test64672_)
                          (make-raw-table__0
                           _size-hint64670_
                           _hash64671_
                           _test64672_))
                        _g68699_))
                ((##fx= _g68698_ 4)
                 (apply (lambda (_size-hint64676_
                                 _hash64677_
                                 _test64678_
                                 _seed64679_)
                          (make-raw-table__%
                           _size-hint64676_
                           _hash64677_
                           _test64678_
                           _seed64679_))
                        _g68699_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g68699_))))))
    (define raw-table-ref
      (lambda (_tab64612_ _key64613_ _default64614_)
        (let ((_table64616_ (&raw-table-table _tab64612_))
              (_seed64617_ (&raw-table-seed _tab64612_))
              (_hash64618_ (&raw-table-hash _tab64612_))
              (_test64619_ (&raw-table-test _tab64612_)))
          (let* ((_h64621_ (fxxor (_hash64618_ _key64613_) _seed64617_))
                 (_size64624_ (vector-length _table64616_))
                 (_entries64627_ (fxquotient _size64624_ '2))
                 (_start64630_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64621_ _entries64627_)
                   '1)))
            (let _loop64634_ ((_probe64637_ _start64630_)
                              (_i64639_ '1)
                              (_deleted64641_ '#f))
              (let ((_k64644_ (vector-ref _table64616_ _probe64637_)))
                (if (eq? _k64644_ (macro-unused-obj))
                    _default64614_
                    (if (eq? _k64644_ (macro-deleted-obj))
                        (_loop64634_
                         (let ((_next-probe64647_
                                (fx+ _start64630_
                                     _i64639_
                                     (fx* _i64639_ _i64639_))))
                           (fxmodulo _next-probe64647_ _size64624_))
                         (fx+ _i64639_ '1)
                         (let ((_$e64650_ _deleted64641_))
                           (if _$e64650_ _$e64650_ _probe64637_)))
                        (if (_test64619_ _key64613_ _k64644_)
                            (vector-ref _table64616_ (fx+ _probe64637_ '1))
                            (_loop64634_
                             (let ((_next-probe64653_
                                    (fx+ _start64630_
                                         _i64639_
                                         (fx* _i64639_ _i64639_))))
                               (fxmodulo _next-probe64653_ _size64624_))
                             (fx+ _i64639_ '1)
                             _deleted64641_))))))))))
    (define raw-table-set!
      (lambda (_tab64608_ _key64609_ _value64610_)
        (if (fx< (&raw-table-free _tab64608_)
                 (fxquotient (vector-length (&raw-table-table _tab64608_)) '4))
            (__raw-table-rehash! _tab64608_)
            '#!void)
        (__raw-table-set! _tab64608_ _key64609_ _value64610_)))
    (define raw-table-update!
      (lambda (_tab64603_ _key64604_ _update64605_ _default64606_)
        (if (fx< (&raw-table-free _tab64603_)
                 (fxquotient (vector-length (&raw-table-table _tab64603_)) '4))
            (__raw-table-rehash! _tab64603_)
            '#!void)
        (__raw-table-update!
         _tab64603_
         _key64604_
         _update64605_
         _default64606_)))
    (define raw-table-delete!
      (lambda (_tab64564_ _key64565_)
        (let ((_table64567_ (&raw-table-table _tab64564_))
              (_seed64568_ (&raw-table-seed _tab64564_))
              (_hash64569_ (&raw-table-hash _tab64564_))
              (_test64570_ (&raw-table-test _tab64564_)))
          (let* ((_h64572_ (fxxor (_hash64569_ _key64565_) _seed64568_))
                 (_size64575_ (vector-length _table64567_))
                 (_entries64578_ (fxquotient _size64575_ '2))
                 (_start64581_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64572_ _entries64578_)
                   '1)))
            (let _loop64585_ ((_probe64588_ _start64581_) (_i64590_ '1))
              (let ((_k64593_ (vector-ref _table64567_ _probe64588_)))
                (if (eq? _k64593_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k64593_ (macro-deleted-obj))
                        (_loop64585_
                         (let ((_next-probe64596_
                                (fx+ _start64581_
                                     _i64590_
                                     (fx* _i64590_ _i64590_))))
                           (fxmodulo _next-probe64596_ _size64575_))
                         (fx+ _i64590_ '1))
                        (if (_test64570_ _key64565_ _k64593_)
                            (begin
                              (vector-set!
                               _table64567_
                               _probe64588_
                               (macro-deleted-obj))
                              (vector-set!
                               _table64567_
                               (fx+ _probe64588_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab64564_
                                  (fx- (&raw-table-count _tab64564_) '1)))))
                            (_loop64585_
                             (let ((_next-probe64600_
                                    (fx+ _start64581_
                                         _i64590_
                                         (fx* _i64590_ _i64590_))))
                               (fxmodulo _next-probe64600_ _size64575_))
                             (fx+ _i64590_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_tab64548_ _proc64549_)
        (let* ((_table64551_ (&raw-table-table _tab64548_))
               (_size64553_ (vector-length _table64551_)))
          (let _loop64556_ ((_i64558_ '0))
            (if (fx< _i64558_ _size64553_)
                (begin
                  (let ((_key64560_ (vector-ref _table64551_ _i64558_)))
                    (if (and (not (eq? _key64560_ (macro-unused-obj)))
                             (not (eq? _key64560_ (macro-deleted-obj))))
                        (let ((_value64562_
                               (vector-ref _table64551_ (fx+ _i64558_ '1))))
                          (_proc64549_ _key64560_ _value64562_))
                        '#!void))
                  (_loop64556_ (fx+ _i64558_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_tab64544_)
        (let ((_new-tab64546_ (##structure-copy _tab64544_)))
          (&raw-table-table-set!
           _new-tab64546_
           (vector-copy (&raw-table-table _tab64544_)))
          _new-tab64546_)))
    (define raw-table-clear!
      (lambda (_tab64542_)
        (vector-fill! (&raw-table-table _tab64542_) (macro-unused-obj))
        (&raw-table-count-set! _tab64542_ '0)
        (&raw-table-free-set!
         _tab64542_
         (fxquotient (vector-length (&raw-table-table _tab64542_)) '2))))
    (define __raw-table-set!
      (lambda (_tab64496_ _key64497_ _value64498_)
        (let ((_table64500_ (&raw-table-table _tab64496_))
              (_seed64501_ (&raw-table-seed _tab64496_))
              (_hash64502_ (&raw-table-hash _tab64496_))
              (_test64503_ (&raw-table-test _tab64496_)))
          (let* ((_h64505_ (fxxor (_hash64502_ _key64497_) _seed64501_))
                 (_size64508_ (vector-length _table64500_))
                 (_entries64511_ (fxquotient _size64508_ '2))
                 (_start64514_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64505_ _entries64511_)
                   '1)))
            (let _loop64518_ ((_probe64521_ _start64514_)
                              (_i64523_ '1)
                              (_deleted64525_ '#f))
              (let ((_k64528_ (vector-ref _table64500_ _probe64521_)))
                (if (eq? _k64528_ (macro-unused-obj))
                    (if _deleted64525_
                        (begin
                          (vector-set! _table64500_ _deleted64525_ _key64497_)
                          (vector-set!
                           _table64500_
                           (fx+ _deleted64525_ '1)
                           _value64498_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab64496_
                              (fx+ (&raw-table-count _tab64496_) '1)))))
                        (begin
                          (vector-set! _table64500_ _probe64521_ _key64497_)
                          (vector-set!
                           _table64500_
                           (fx+ _probe64521_ '1)
                           _value64498_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab64496_
                              (fx- (&raw-table-free _tab64496_) '1))
                             (&raw-table-count-set!
                              _tab64496_
                              (fx+ (&raw-table-count _tab64496_) '1))))))
                    (if (eq? _k64528_ (macro-deleted-obj))
                        (_loop64518_
                         (let ((_next-probe64533_
                                (fx+ _start64514_
                                     _i64523_
                                     (fx* _i64523_ _i64523_))))
                           (fxmodulo _next-probe64533_ _size64508_))
                         (fx+ _i64523_ '1)
                         (let ((_$e64536_ _deleted64525_))
                           (if _$e64536_ _$e64536_ _probe64521_)))
                        (if (_test64503_ _key64497_ _k64528_)
                            (begin
                              (vector-set!
                               _table64500_
                               _probe64521_
                               _key64497_)
                              (vector-set!
                               _table64500_
                               (fx+ _probe64521_ '1)
                               _value64498_))
                            (_loop64518_
                             (let ((_next-probe64539_
                                    (fx+ _start64514_
                                         _i64523_
                                         (fx* _i64523_ _i64523_))))
                               (fxmodulo _next-probe64539_ _size64508_))
                             (fx+ _i64523_ '1)
                             _deleted64525_))))))))))
    (define __raw-table-update!
      (lambda (_tab64449_ _key64450_ _update64451_ _default64452_)
        (let ((_table64454_ (&raw-table-table _tab64449_))
              (_seed64455_ (&raw-table-seed _tab64449_))
              (_hash64456_ (&raw-table-hash _tab64449_))
              (_test64457_ (&raw-table-test _tab64449_)))
          (let* ((_h64459_ (fxxor (_hash64456_ _key64450_) _seed64455_))
                 (_size64462_ (vector-length _table64454_))
                 (_entries64465_ (fxquotient _size64462_ '2))
                 (_start64468_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64459_ _entries64465_)
                   '1)))
            (let _loop64472_ ((_probe64475_ _start64468_)
                              (_i64477_ '1)
                              (_deleted64479_ '#f))
              (let ((_k64482_ (vector-ref _table64454_ _probe64475_)))
                (if (eq? _k64482_ (macro-unused-obj))
                    (if _deleted64479_
                        (begin
                          (vector-set! _table64454_ _deleted64479_ _key64450_)
                          (vector-set!
                           _table64454_
                           (fx+ _deleted64479_ '1)
                           (_update64451_ _default64452_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab64449_
                              (fx+ (&raw-table-count _tab64449_) '1)))))
                        (begin
                          (vector-set! _table64454_ _probe64475_ _key64450_)
                          (vector-set!
                           _table64454_
                           (fx+ _probe64475_ '1)
                           (_update64451_ _default64452_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab64449_
                              (fx- (&raw-table-free _tab64449_) '1))
                             (&raw-table-count-set!
                              _tab64449_
                              (fx+ (&raw-table-count _tab64449_) '1))))))
                    (if (eq? _k64482_ (macro-deleted-obj))
                        (_loop64472_
                         (let ((_next-probe64487_
                                (fx+ _start64468_
                                     _i64477_
                                     (fx* _i64477_ _i64477_))))
                           (fxmodulo _next-probe64487_ _size64462_))
                         (fx+ _i64477_ '1)
                         (let ((_$e64490_ _deleted64479_))
                           (if _$e64490_ _$e64490_ _probe64475_)))
                        (if (_test64457_ _key64450_ _k64482_)
                            (begin
                              (vector-set!
                               _table64454_
                               _probe64475_
                               _key64450_)
                              (vector-set!
                               _table64454_
                               (fx+ _probe64475_ '1)
                               (_update64451_
                                (vector-ref
                                 _table64454_
                                 (fx+ _probe64475_ '1)))))
                            (_loop64472_
                             (let ((_next-probe64493_
                                    (fx+ _start64468_
                                         _i64477_
                                         (fx* _i64477_ _i64477_))))
                               (fxmodulo _next-probe64493_ _size64462_))
                             (fx+ _i64477_ '1)
                             _deleted64479_))))))))))
    (define __raw-table-rehash!
      (lambda (_tab64430_)
        (let* ((_old-table64432_ (&raw-table-table _tab64430_))
               (_old-size64434_ (vector-length _old-table64432_))
               (_new-size64436_
                (if (fx< (&raw-table-count _tab64430_)
                         (fxquotient _old-size64434_ '4))
                    (vector-length _old-table64432_)
                    (fx* '2 (vector-length _old-table64432_))))
               (_new-table64438_
                (make-vector _new-size64436_ (macro-unused-obj))))
          (&raw-table-table-set! _tab64430_ _new-table64438_)
          (&raw-table-count-set! _tab64430_ '0)
          (&raw-table-free-set! _tab64430_ (fxquotient _new-size64436_ '2))
          (let _lp64441_ ((_i64443_ '0))
            (if (fx< _i64443_ _old-size64434_)
                (begin
                  (let ((_key64445_ (vector-ref _old-table64432_ _i64443_)))
                    (if (and (not (eq? _key64445_ (macro-unused-obj)))
                             (not (eq? _key64445_ (macro-deleted-obj))))
                        (let ((_value64447_
                               (vector-ref
                                _old-table64432_
                                (fx+ _i64443_ '1))))
                          (__raw-table-set!
                           _tab64430_
                           _key64445_
                           _value64447_))
                        '#!void))
                  (_lp64441_ (fx+ _i64443_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_obj64424_)
        (let ((_t64426_ (##type _obj64424_)))
          (if (fx= (fxand _t64426_ '1) '0)
              (fxand (##type-cast _obj64424_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _obj64424_)
                  (symbolic-hash _obj64424_)
                  (fxand (let ((_sn64428_ (object->serial-number _obj64424_)))
                           (if (fixnum? _sn64428_)
                               _sn64428_
                               (fxarithmetic-shift-left
                                (##bignum.mdigit-ref _sn64428_ '0)
                                '10)))
                         (macro-max-fixnum32)))))))
    (define eqv-hash
      (lambda (_obj64414_)
        (letrec ((_combine64416_
                  (lambda (_a64421_ _b64422_)
                    (fxand (fx* (fx+ _a64421_
                                     (fxarithmetic-shift-left _b64422_ '1))
                                '331804471)
                           (macro-max-fixnum32))))
                 (_hash64417_
                  (lambda (_obj64419_)
                    (macro-number-dispatch
                     _obj64419_
                     (eq-hash _obj64419_)
                     (fxand _obj64419_ (macro-max-fixnum32))
                     (modulo _obj64419_ '331804481)
                     (_combine64416_
                      (_hash64417_ (macro-ratnum-numerator _obj64419_))
                      (_hash64417_ (macro-ratnum-denominator _obj64419_)))
                     (_combine64416_
                      (##u16vector-ref _obj64419_ '0)
                      (_combine64416_
                       (##u16vector-ref _obj64419_ '1)
                       (_combine64416_
                        (##u16vector-ref _obj64419_ '2)
                        (##u16vector-ref _obj64419_ '3))))
                     (_combine64416_
                      (_hash64417_ (macro-cpxnum-real _obj64419_))
                      (_hash64417_ (macro-cpxnum-imag _obj64419_)))))))
          (_hash64417_ _obj64414_))))
    (define symbolic?
      (lambda (_obj64409_)
        (let ((_$e64411_ (symbol? _obj64409_)))
          (if _$e64411_ _$e64411_ (keyword? _obj64409_)))))
    (define symbolic-hash (lambda (_obj64407_) (macro-slot '1 _obj64407_)))
    (define string-hash (lambda (_obj64405_) (##string=?-hash _obj64405_)))
    (define make-eq-table__%
      (lambda (_size-hint64386_ _seed64388_)
        (make-raw-table__% _size-hint64386_ eq-hash eq? _seed64388_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_size-hint64394_ '#f) (_seed64396_ '0))
          (make-eq-table__% _size-hint64394_ _seed64396_))))
    (define make-eq-table__1
      (lambda (_size-hint64398_)
        (let ((_seed64400_ '0))
          (make-eq-table__% _size-hint64398_ _seed64400_))))
    (define make-eq-table
      (lambda _g68701_
        (let ((_g68700_ (##length _g68701_)))
          (cond ((##fx= _g68700_ 0)
                 (apply (lambda () (make-eq-table__0)) _g68701_))
                ((##fx= _g68700_ 1)
                 (apply (lambda (_size-hint64398_)
                          (make-eq-table__1 _size-hint64398_))
                        _g68701_))
                ((##fx= _g68700_ 2)
                 (apply (lambda (_size-hint64402_ _seed64403_)
                          (make-eq-table__% _size-hint64402_ _seed64403_))
                        _g68701_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g68701_))))))
    (define eq-table-ref
      (lambda (_tab64343_ _key64344_ _default64345_)
        (let ((_table64347_ (&raw-table-table _tab64343_))
              (_seed64348_ (&raw-table-seed _tab64343_)))
          (let* ((_h64350_ (fxxor (eq-hash _key64344_) _seed64348_))
                 (_size64353_ (vector-length _table64347_))
                 (_entries64356_ (fxquotient _size64353_ '2))
                 (_start64359_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64350_ _entries64356_)
                   '1)))
            (let _loop64363_ ((_probe64366_ _start64359_)
                              (_i64368_ '1)
                              (_deleted64370_ '#f))
              (let ((_k64373_ (vector-ref _table64347_ _probe64366_)))
                (if (eq? _k64373_ (macro-unused-obj))
                    _default64345_
                    (if (eq? _k64373_ (macro-deleted-obj))
                        (_loop64363_
                         (let ((_next-probe64376_
                                (fx+ _start64359_
                                     _i64368_
                                     (fx* _i64368_ _i64368_))))
                           (fxmodulo _next-probe64376_ _size64353_))
                         (fx+ _i64368_ '1)
                         (let ((_$e64379_ _deleted64370_))
                           (if _$e64379_ _$e64379_ _probe64366_)))
                        (if (eq? _key64344_ _k64373_)
                            (vector-ref _table64347_ (fx+ _probe64366_ '1))
                            (_loop64363_
                             (let ((_next-probe64382_
                                    (fx+ _start64359_
                                         _i64368_
                                         (fx* _i64368_ _i64368_))))
                               (fxmodulo _next-probe64382_ _size64353_))
                             (fx+ _i64368_ '1)
                             _deleted64370_))))))))))
    (define eq-table-set!
      (lambda (_tab64339_ _key64340_ _value64341_)
        (if (fx< (&raw-table-free _tab64339_)
                 (fxquotient (vector-length (&raw-table-table _tab64339_)) '4))
            (__raw-table-rehash! _tab64339_)
            '#!void)
        (__eq-table-set! _tab64339_ _key64340_ _value64341_)))
    (define __eq-table-set!
      (lambda (_tab64294_ _key64295_ _value64296_)
        (let ((_table64299_ (&raw-table-table _tab64294_))
              (_seed64300_ (&raw-table-seed _tab64294_)))
          (let* ((_h64302_ (fxxor (eq-hash _key64295_) _seed64300_))
                 (_size64305_ (vector-length _table64299_))
                 (_entries64308_ (fxquotient _size64305_ '2))
                 (_start64311_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64302_ _entries64308_)
                   '1)))
            (let _loop64315_ ((_probe64318_ _start64311_)
                              (_i64320_ '1)
                              (_deleted64322_ '#f))
              (let ((_k64325_ (vector-ref _table64299_ _probe64318_)))
                (if (eq? _k64325_ (macro-unused-obj))
                    (if _deleted64322_
                        (begin
                          (vector-set! _table64299_ _deleted64322_ _key64295_)
                          (vector-set!
                           _table64299_
                           (fx+ _deleted64322_ '1)
                           _value64296_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab64294_
                              (fx+ (&raw-table-count _tab64294_) '1)))))
                        (begin
                          (vector-set! _table64299_ _probe64318_ _key64295_)
                          (vector-set!
                           _table64299_
                           (fx+ _probe64318_ '1)
                           _value64296_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab64294_
                              (fx- (&raw-table-free _tab64294_) '1))
                             (&raw-table-count-set!
                              _tab64294_
                              (fx+ (&raw-table-count _tab64294_) '1))))))
                    (if (eq? _k64325_ (macro-deleted-obj))
                        (_loop64315_
                         (let ((_next-probe64330_
                                (fx+ _start64311_
                                     _i64320_
                                     (fx* _i64320_ _i64320_))))
                           (fxmodulo _next-probe64330_ _size64305_))
                         (fx+ _i64320_ '1)
                         (let ((_$e64333_ _deleted64322_))
                           (if _$e64333_ _$e64333_ _probe64318_)))
                        (if (eq? _key64295_ _k64325_)
                            (begin
                              (vector-set!
                               _table64299_
                               _probe64318_
                               _key64295_)
                              (vector-set!
                               _table64299_
                               (fx+ _probe64318_ '1)
                               _value64296_))
                            (_loop64315_
                             (let ((_next-probe64336_
                                    (fx+ _start64311_
                                         _i64320_
                                         (fx* _i64320_ _i64320_))))
                               (fxmodulo _next-probe64336_ _size64305_))
                             (fx+ _i64320_ '1)
                             _deleted64322_))))))))))
    (define eq-table-update!
      (lambda (_tab64289_ _key64290_ _eq-table-update!64291_ _default64292_)
        (if (fx< (&raw-table-free _tab64289_)
                 (fxquotient (vector-length (&raw-table-table _tab64289_)) '4))
            (__raw-table-rehash! _tab64289_)
            '#!void)
        (__eq-table-update!
         _tab64289_
         _key64290_
         _eq-table-update!64291_
         _default64292_)))
    (define __eq-table-update!
      (lambda (_tab64243_ _key64244_ _eq-table-update!64245_ _default64246_)
        (let ((_table64249_ (&raw-table-table _tab64243_))
              (_seed64250_ (&raw-table-seed _tab64243_)))
          (let* ((_h64252_ (fxxor (eq-hash _key64244_) _seed64250_))
                 (_size64255_ (vector-length _table64249_))
                 (_entries64258_ (fxquotient _size64255_ '2))
                 (_start64261_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64252_ _entries64258_)
                   '1)))
            (let _loop64265_ ((_probe64268_ _start64261_)
                              (_i64270_ '1)
                              (_deleted64272_ '#f))
              (let ((_k64275_ (vector-ref _table64249_ _probe64268_)))
                (if (eq? _k64275_ (macro-unused-obj))
                    (if _deleted64272_
                        (begin
                          (vector-set! _table64249_ _deleted64272_ _key64244_)
                          (vector-set!
                           _table64249_
                           (fx+ _deleted64272_ '1)
                           (_eq-table-update!64245_ _default64246_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab64243_
                              (fx+ (&raw-table-count _tab64243_) '1)))))
                        (begin
                          (vector-set! _table64249_ _probe64268_ _key64244_)
                          (vector-set!
                           _table64249_
                           (fx+ _probe64268_ '1)
                           (_eq-table-update!64245_ _default64246_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab64243_
                              (fx- (&raw-table-free _tab64243_) '1))
                             (&raw-table-count-set!
                              _tab64243_
                              (fx+ (&raw-table-count _tab64243_) '1))))))
                    (if (eq? _k64275_ (macro-deleted-obj))
                        (_loop64265_
                         (let ((_next-probe64280_
                                (fx+ _start64261_
                                     _i64270_
                                     (fx* _i64270_ _i64270_))))
                           (fxmodulo _next-probe64280_ _size64255_))
                         (fx+ _i64270_ '1)
                         (let ((_$e64283_ _deleted64272_))
                           (if _$e64283_ _$e64283_ _probe64268_)))
                        (if (eq? _key64244_ _k64275_)
                            (begin
                              (vector-set!
                               _table64249_
                               _probe64268_
                               _key64244_)
                              (vector-set!
                               _table64249_
                               (fx+ _probe64268_ '1)
                               (_eq-table-update!64245_
                                (vector-ref
                                 _table64249_
                                 (fx+ _probe64268_ '1)))))
                            (_loop64265_
                             (let ((_next-probe64286_
                                    (fx+ _start64261_
                                         _i64270_
                                         (fx* _i64270_ _i64270_))))
                               (fxmodulo _next-probe64286_ _size64255_))
                             (fx+ _i64270_ '1)
                             _deleted64272_))))))))))
    (define eq-table-delete!
      (lambda (_tab64202_ _key64204_)
        (let ((_table64207_ (&raw-table-table _tab64202_))
              (_seed64209_ (&raw-table-seed _tab64202_)))
          (let* ((_h64212_ (fxxor (eq-hash _key64204_) _seed64209_))
                 (_size64215_ (vector-length _table64207_))
                 (_entries64218_ (fxquotient _size64215_ '2))
                 (_start64221_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64212_ _entries64218_)
                   '1)))
            (let _loop64225_ ((_probe64228_ _start64221_) (_i64230_ '1))
              (let ((_k64233_ (vector-ref _table64207_ _probe64228_)))
                (if (eq? _k64233_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k64233_ (macro-deleted-obj))
                        (_loop64225_
                         (let ((_next-probe64236_
                                (fx+ _start64221_
                                     _i64230_
                                     (fx* _i64230_ _i64230_))))
                           (fxmodulo _next-probe64236_ _size64215_))
                         (fx+ _i64230_ '1))
                        (if (eq? _key64204_ _k64233_)
                            (begin
                              (vector-set!
                               _table64207_
                               _probe64228_
                               (macro-deleted-obj))
                              (vector-set!
                               _table64207_
                               (fx+ _probe64228_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab64202_
                                  (fx- (&raw-table-count _tab64202_) '1)))))
                            (_loop64225_
                             (let ((_next-probe64240_
                                    (fx+ _start64221_
                                         _i64230_
                                         (fx* _i64230_ _i64230_))))
                               (fxmodulo _next-probe64240_ _size64215_))
                             (fx+ _i64230_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_size-hint64183_ _seed64185_)
        (make-raw-table__% _size-hint64183_ eqv-hash eqv? _seed64185_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_size-hint64191_ '#f) (_seed64193_ '0))
          (make-eqv-table__% _size-hint64191_ _seed64193_))))
    (define make-eqv-table__1
      (lambda (_size-hint64195_)
        (let ((_seed64197_ '0))
          (make-eqv-table__% _size-hint64195_ _seed64197_))))
    (define make-eqv-table
      (lambda _g68703_
        (let ((_g68702_ (##length _g68703_)))
          (cond ((##fx= _g68702_ 0)
                 (apply (lambda () (make-eqv-table__0)) _g68703_))
                ((##fx= _g68702_ 1)
                 (apply (lambda (_size-hint64195_)
                          (make-eqv-table__1 _size-hint64195_))
                        _g68703_))
                ((##fx= _g68702_ 2)
                 (apply (lambda (_size-hint64199_ _seed64200_)
                          (make-eqv-table__% _size-hint64199_ _seed64200_))
                        _g68703_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g68703_))))))
    (define eqv-table-ref
      (lambda (_tab64140_ _key64141_ _default64142_)
        (let ((_table64144_ (&raw-table-table _tab64140_))
              (_seed64145_ (&raw-table-seed _tab64140_)))
          (let* ((_h64147_ (fxxor (eqv-hash _key64141_) _seed64145_))
                 (_size64150_ (vector-length _table64144_))
                 (_entries64153_ (fxquotient _size64150_ '2))
                 (_start64156_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64147_ _entries64153_)
                   '1)))
            (let _loop64160_ ((_probe64163_ _start64156_)
                              (_i64165_ '1)
                              (_deleted64167_ '#f))
              (let ((_k64170_ (vector-ref _table64144_ _probe64163_)))
                (if (eq? _k64170_ (macro-unused-obj))
                    _default64142_
                    (if (eq? _k64170_ (macro-deleted-obj))
                        (_loop64160_
                         (let ((_next-probe64173_
                                (fx+ _start64156_
                                     _i64165_
                                     (fx* _i64165_ _i64165_))))
                           (fxmodulo _next-probe64173_ _size64150_))
                         (fx+ _i64165_ '1)
                         (let ((_$e64176_ _deleted64167_))
                           (if _$e64176_ _$e64176_ _probe64163_)))
                        (if (eqv? _key64141_ _k64170_)
                            (vector-ref _table64144_ (fx+ _probe64163_ '1))
                            (_loop64160_
                             (let ((_next-probe64179_
                                    (fx+ _start64156_
                                         _i64165_
                                         (fx* _i64165_ _i64165_))))
                               (fxmodulo _next-probe64179_ _size64150_))
                             (fx+ _i64165_ '1)
                             _deleted64167_))))))))))
    (define eqv-table-set!
      (lambda (_tab64136_ _key64137_ _value64138_)
        (if (fx< (&raw-table-free _tab64136_)
                 (fxquotient (vector-length (&raw-table-table _tab64136_)) '4))
            (__raw-table-rehash! _tab64136_)
            '#!void)
        (__eqv-table-set! _tab64136_ _key64137_ _value64138_)))
    (define __eqv-table-set!
      (lambda (_tab64091_ _key64092_ _value64093_)
        (let ((_table64096_ (&raw-table-table _tab64091_))
              (_seed64097_ (&raw-table-seed _tab64091_)))
          (let* ((_h64099_ (fxxor (eqv-hash _key64092_) _seed64097_))
                 (_size64102_ (vector-length _table64096_))
                 (_entries64105_ (fxquotient _size64102_ '2))
                 (_start64108_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64099_ _entries64105_)
                   '1)))
            (let _loop64112_ ((_probe64115_ _start64108_)
                              (_i64117_ '1)
                              (_deleted64119_ '#f))
              (let ((_k64122_ (vector-ref _table64096_ _probe64115_)))
                (if (eq? _k64122_ (macro-unused-obj))
                    (if _deleted64119_
                        (begin
                          (vector-set! _table64096_ _deleted64119_ _key64092_)
                          (vector-set!
                           _table64096_
                           (fx+ _deleted64119_ '1)
                           _value64093_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab64091_
                              (fx+ (&raw-table-count _tab64091_) '1)))))
                        (begin
                          (vector-set! _table64096_ _probe64115_ _key64092_)
                          (vector-set!
                           _table64096_
                           (fx+ _probe64115_ '1)
                           _value64093_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab64091_
                              (fx- (&raw-table-free _tab64091_) '1))
                             (&raw-table-count-set!
                              _tab64091_
                              (fx+ (&raw-table-count _tab64091_) '1))))))
                    (if (eq? _k64122_ (macro-deleted-obj))
                        (_loop64112_
                         (let ((_next-probe64127_
                                (fx+ _start64108_
                                     _i64117_
                                     (fx* _i64117_ _i64117_))))
                           (fxmodulo _next-probe64127_ _size64102_))
                         (fx+ _i64117_ '1)
                         (let ((_$e64130_ _deleted64119_))
                           (if _$e64130_ _$e64130_ _probe64115_)))
                        (if (eqv? _key64092_ _k64122_)
                            (begin
                              (vector-set!
                               _table64096_
                               _probe64115_
                               _key64092_)
                              (vector-set!
                               _table64096_
                               (fx+ _probe64115_ '1)
                               _value64093_))
                            (_loop64112_
                             (let ((_next-probe64133_
                                    (fx+ _start64108_
                                         _i64117_
                                         (fx* _i64117_ _i64117_))))
                               (fxmodulo _next-probe64133_ _size64102_))
                             (fx+ _i64117_ '1)
                             _deleted64119_))))))))))
    (define eqv-table-update!
      (lambda (_tab64086_ _key64087_ _eqv-table-update!64088_ _default64089_)
        (if (fx< (&raw-table-free _tab64086_)
                 (fxquotient (vector-length (&raw-table-table _tab64086_)) '4))
            (__raw-table-rehash! _tab64086_)
            '#!void)
        (__eqv-table-update!
         _tab64086_
         _key64087_
         _eqv-table-update!64088_
         _default64089_)))
    (define __eqv-table-update!
      (lambda (_tab64040_ _key64041_ _eqv-table-update!64042_ _default64043_)
        (let ((_table64046_ (&raw-table-table _tab64040_))
              (_seed64047_ (&raw-table-seed _tab64040_)))
          (let* ((_h64049_ (fxxor (eqv-hash _key64041_) _seed64047_))
                 (_size64052_ (vector-length _table64046_))
                 (_entries64055_ (fxquotient _size64052_ '2))
                 (_start64058_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64049_ _entries64055_)
                   '1)))
            (let _loop64062_ ((_probe64065_ _start64058_)
                              (_i64067_ '1)
                              (_deleted64069_ '#f))
              (let ((_k64072_ (vector-ref _table64046_ _probe64065_)))
                (if (eq? _k64072_ (macro-unused-obj))
                    (if _deleted64069_
                        (begin
                          (vector-set! _table64046_ _deleted64069_ _key64041_)
                          (vector-set!
                           _table64046_
                           (fx+ _deleted64069_ '1)
                           (_eqv-table-update!64042_ _default64043_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab64040_
                              (fx+ (&raw-table-count _tab64040_) '1)))))
                        (begin
                          (vector-set! _table64046_ _probe64065_ _key64041_)
                          (vector-set!
                           _table64046_
                           (fx+ _probe64065_ '1)
                           (_eqv-table-update!64042_ _default64043_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab64040_
                              (fx- (&raw-table-free _tab64040_) '1))
                             (&raw-table-count-set!
                              _tab64040_
                              (fx+ (&raw-table-count _tab64040_) '1))))))
                    (if (eq? _k64072_ (macro-deleted-obj))
                        (_loop64062_
                         (let ((_next-probe64077_
                                (fx+ _start64058_
                                     _i64067_
                                     (fx* _i64067_ _i64067_))))
                           (fxmodulo _next-probe64077_ _size64052_))
                         (fx+ _i64067_ '1)
                         (let ((_$e64080_ _deleted64069_))
                           (if _$e64080_ _$e64080_ _probe64065_)))
                        (if (eqv? _key64041_ _k64072_)
                            (begin
                              (vector-set!
                               _table64046_
                               _probe64065_
                               _key64041_)
                              (vector-set!
                               _table64046_
                               (fx+ _probe64065_ '1)
                               (_eqv-table-update!64042_
                                (vector-ref
                                 _table64046_
                                 (fx+ _probe64065_ '1)))))
                            (_loop64062_
                             (let ((_next-probe64083_
                                    (fx+ _start64058_
                                         _i64067_
                                         (fx* _i64067_ _i64067_))))
                               (fxmodulo _next-probe64083_ _size64052_))
                             (fx+ _i64067_ '1)
                             _deleted64069_))))))))))
    (define eqv-table-delete!
      (lambda (_tab63999_ _key64001_)
        (let ((_table64004_ (&raw-table-table _tab63999_))
              (_seed64006_ (&raw-table-seed _tab63999_)))
          (let* ((_h64009_ (fxxor (eqv-hash _key64001_) _seed64006_))
                 (_size64012_ (vector-length _table64004_))
                 (_entries64015_ (fxquotient _size64012_ '2))
                 (_start64018_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64009_ _entries64015_)
                   '1)))
            (let _loop64022_ ((_probe64025_ _start64018_) (_i64027_ '1))
              (let ((_k64030_ (vector-ref _table64004_ _probe64025_)))
                (if (eq? _k64030_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k64030_ (macro-deleted-obj))
                        (_loop64022_
                         (let ((_next-probe64033_
                                (fx+ _start64018_
                                     _i64027_
                                     (fx* _i64027_ _i64027_))))
                           (fxmodulo _next-probe64033_ _size64012_))
                         (fx+ _i64027_ '1))
                        (if (eqv? _key64001_ _k64030_)
                            (begin
                              (vector-set!
                               _table64004_
                               _probe64025_
                               (macro-deleted-obj))
                              (vector-set!
                               _table64004_
                               (fx+ _probe64025_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab63999_
                                  (fx- (&raw-table-count _tab63999_) '1)))))
                            (_loop64022_
                             (let ((_next-probe64037_
                                    (fx+ _start64018_
                                         _i64027_
                                         (fx* _i64027_ _i64027_))))
                               (fxmodulo _next-probe64037_ _size64012_))
                             (fx+ _i64027_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_size-hint63980_ _seed63982_)
        (make-raw-table__% _size-hint63980_ symbolic-hash eq? _seed63982_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_size-hint63988_ '#f) (_seed63990_ '0))
          (make-symbolic-table__% _size-hint63988_ _seed63990_))))
    (define make-symbolic-table__1
      (lambda (_size-hint63992_)
        (let ((_seed63994_ '0))
          (make-symbolic-table__% _size-hint63992_ _seed63994_))))
    (define make-symbolic-table
      (lambda _g68705_
        (let ((_g68704_ (##length _g68705_)))
          (cond ((##fx= _g68704_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g68705_))
                ((##fx= _g68704_ 1)
                 (apply (lambda (_size-hint63992_)
                          (make-symbolic-table__1 _size-hint63992_))
                        _g68705_))
                ((##fx= _g68704_ 2)
                 (apply (lambda (_size-hint63996_ _seed63997_)
                          (make-symbolic-table__%
                           _size-hint63996_
                           _seed63997_))
                        _g68705_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g68705_))))))
    (define symbolic-table-ref
      (lambda (_tab63937_ _key63938_ _default63939_)
        (let ((_table63941_ (&raw-table-table _tab63937_))
              (_seed63942_ (&raw-table-seed _tab63937_)))
          (let* ((_h63944_ (fxxor (symbolic-hash _key63938_) _seed63942_))
                 (_size63947_ (vector-length _table63941_))
                 (_entries63950_ (fxquotient _size63947_ '2))
                 (_start63953_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63944_ _entries63950_)
                   '1)))
            (let _loop63957_ ((_probe63960_ _start63953_)
                              (_i63962_ '1)
                              (_deleted63964_ '#f))
              (let ((_k63967_ (vector-ref _table63941_ _probe63960_)))
                (if (eq? _k63967_ (macro-unused-obj))
                    _default63939_
                    (if (eq? _k63967_ (macro-deleted-obj))
                        (_loop63957_
                         (let ((_next-probe63970_
                                (fx+ _start63953_
                                     _i63962_
                                     (fx* _i63962_ _i63962_))))
                           (fxmodulo _next-probe63970_ _size63947_))
                         (fx+ _i63962_ '1)
                         (let ((_$e63973_ _deleted63964_))
                           (if _$e63973_ _$e63973_ _probe63960_)))
                        (if (eq? _key63938_ _k63967_)
                            (vector-ref _table63941_ (fx+ _probe63960_ '1))
                            (_loop63957_
                             (let ((_next-probe63976_
                                    (fx+ _start63953_
                                         _i63962_
                                         (fx* _i63962_ _i63962_))))
                               (fxmodulo _next-probe63976_ _size63947_))
                             (fx+ _i63962_ '1)
                             _deleted63964_))))))))))
    (define symbolic-table-set!
      (lambda (_tab63933_ _key63934_ _value63935_)
        (if (fx< (&raw-table-free _tab63933_)
                 (fxquotient (vector-length (&raw-table-table _tab63933_)) '4))
            (__raw-table-rehash! _tab63933_)
            '#!void)
        (__symbolic-table-set! _tab63933_ _key63934_ _value63935_)))
    (define __symbolic-table-set!
      (lambda (_tab63888_ _key63889_ _value63890_)
        (let ((_table63893_ (&raw-table-table _tab63888_))
              (_seed63894_ (&raw-table-seed _tab63888_)))
          (let* ((_h63896_ (fxxor (symbolic-hash _key63889_) _seed63894_))
                 (_size63899_ (vector-length _table63893_))
                 (_entries63902_ (fxquotient _size63899_ '2))
                 (_start63905_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63896_ _entries63902_)
                   '1)))
            (let _loop63909_ ((_probe63912_ _start63905_)
                              (_i63914_ '1)
                              (_deleted63916_ '#f))
              (let ((_k63919_ (vector-ref _table63893_ _probe63912_)))
                (if (eq? _k63919_ (macro-unused-obj))
                    (if _deleted63916_
                        (begin
                          (vector-set! _table63893_ _deleted63916_ _key63889_)
                          (vector-set!
                           _table63893_
                           (fx+ _deleted63916_ '1)
                           _value63890_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab63888_
                              (fx+ (&raw-table-count _tab63888_) '1)))))
                        (begin
                          (vector-set! _table63893_ _probe63912_ _key63889_)
                          (vector-set!
                           _table63893_
                           (fx+ _probe63912_ '1)
                           _value63890_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab63888_
                              (fx- (&raw-table-free _tab63888_) '1))
                             (&raw-table-count-set!
                              _tab63888_
                              (fx+ (&raw-table-count _tab63888_) '1))))))
                    (if (eq? _k63919_ (macro-deleted-obj))
                        (_loop63909_
                         (let ((_next-probe63924_
                                (fx+ _start63905_
                                     _i63914_
                                     (fx* _i63914_ _i63914_))))
                           (fxmodulo _next-probe63924_ _size63899_))
                         (fx+ _i63914_ '1)
                         (let ((_$e63927_ _deleted63916_))
                           (if _$e63927_ _$e63927_ _probe63912_)))
                        (if (eq? _key63889_ _k63919_)
                            (begin
                              (vector-set!
                               _table63893_
                               _probe63912_
                               _key63889_)
                              (vector-set!
                               _table63893_
                               (fx+ _probe63912_ '1)
                               _value63890_))
                            (_loop63909_
                             (let ((_next-probe63930_
                                    (fx+ _start63905_
                                         _i63914_
                                         (fx* _i63914_ _i63914_))))
                               (fxmodulo _next-probe63930_ _size63899_))
                             (fx+ _i63914_ '1)
                             _deleted63916_))))))))))
    (define symbolic-table-update!
      (lambda (_tab63883_
               _key63884_
               _symbolic-table-update!63885_
               _default63886_)
        (if (fx< (&raw-table-free _tab63883_)
                 (fxquotient (vector-length (&raw-table-table _tab63883_)) '4))
            (__raw-table-rehash! _tab63883_)
            '#!void)
        (__symbolic-table-update!
         _tab63883_
         _key63884_
         _symbolic-table-update!63885_
         _default63886_)))
    (define __symbolic-table-update!
      (lambda (_tab63837_
               _key63838_
               _symbolic-table-update!63839_
               _default63840_)
        (let ((_table63843_ (&raw-table-table _tab63837_))
              (_seed63844_ (&raw-table-seed _tab63837_)))
          (let* ((_h63846_ (fxxor (symbolic-hash _key63838_) _seed63844_))
                 (_size63849_ (vector-length _table63843_))
                 (_entries63852_ (fxquotient _size63849_ '2))
                 (_start63855_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63846_ _entries63852_)
                   '1)))
            (let _loop63859_ ((_probe63862_ _start63855_)
                              (_i63864_ '1)
                              (_deleted63866_ '#f))
              (let ((_k63869_ (vector-ref _table63843_ _probe63862_)))
                (if (eq? _k63869_ (macro-unused-obj))
                    (if _deleted63866_
                        (begin
                          (vector-set! _table63843_ _deleted63866_ _key63838_)
                          (vector-set!
                           _table63843_
                           (fx+ _deleted63866_ '1)
                           (_symbolic-table-update!63839_ _default63840_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab63837_
                              (fx+ (&raw-table-count _tab63837_) '1)))))
                        (begin
                          (vector-set! _table63843_ _probe63862_ _key63838_)
                          (vector-set!
                           _table63843_
                           (fx+ _probe63862_ '1)
                           (_symbolic-table-update!63839_ _default63840_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab63837_
                              (fx- (&raw-table-free _tab63837_) '1))
                             (&raw-table-count-set!
                              _tab63837_
                              (fx+ (&raw-table-count _tab63837_) '1))))))
                    (if (eq? _k63869_ (macro-deleted-obj))
                        (_loop63859_
                         (let ((_next-probe63874_
                                (fx+ _start63855_
                                     _i63864_
                                     (fx* _i63864_ _i63864_))))
                           (fxmodulo _next-probe63874_ _size63849_))
                         (fx+ _i63864_ '1)
                         (let ((_$e63877_ _deleted63866_))
                           (if _$e63877_ _$e63877_ _probe63862_)))
                        (if (eq? _key63838_ _k63869_)
                            (begin
                              (vector-set!
                               _table63843_
                               _probe63862_
                               _key63838_)
                              (vector-set!
                               _table63843_
                               (fx+ _probe63862_ '1)
                               (_symbolic-table-update!63839_
                                (vector-ref
                                 _table63843_
                                 (fx+ _probe63862_ '1)))))
                            (_loop63859_
                             (let ((_next-probe63880_
                                    (fx+ _start63855_
                                         _i63864_
                                         (fx* _i63864_ _i63864_))))
                               (fxmodulo _next-probe63880_ _size63849_))
                             (fx+ _i63864_ '1)
                             _deleted63866_))))))))))
    (define symbolic-table-delete!
      (lambda (_tab63796_ _key63798_)
        (let ((_table63801_ (&raw-table-table _tab63796_))
              (_seed63803_ (&raw-table-seed _tab63796_)))
          (let* ((_h63806_ (fxxor (symbolic-hash _key63798_) _seed63803_))
                 (_size63809_ (vector-length _table63801_))
                 (_entries63812_ (fxquotient _size63809_ '2))
                 (_start63815_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63806_ _entries63812_)
                   '1)))
            (let _loop63819_ ((_probe63822_ _start63815_) (_i63824_ '1))
              (let ((_k63827_ (vector-ref _table63801_ _probe63822_)))
                (if (eq? _k63827_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k63827_ (macro-deleted-obj))
                        (_loop63819_
                         (let ((_next-probe63830_
                                (fx+ _start63815_
                                     _i63824_
                                     (fx* _i63824_ _i63824_))))
                           (fxmodulo _next-probe63830_ _size63809_))
                         (fx+ _i63824_ '1))
                        (if (eq? _key63798_ _k63827_)
                            (begin
                              (vector-set!
                               _table63801_
                               _probe63822_
                               (macro-deleted-obj))
                              (vector-set!
                               _table63801_
                               (fx+ _probe63822_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab63796_
                                  (fx- (&raw-table-count _tab63796_) '1)))))
                            (_loop63819_
                             (let ((_next-probe63834_
                                    (fx+ _start63815_
                                         _i63824_
                                         (fx* _i63824_ _i63824_))))
                               (fxmodulo _next-probe63834_ _size63809_))
                             (fx+ _i63824_ '1)))))))))))
    (define make-string-table__%
      (lambda (_size-hint63777_ _seed63779_)
        (make-raw-table__%
         _size-hint63777_
         string-hash
         ##string=?
         _seed63779_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_size-hint63785_ '#f) (_seed63787_ '0))
          (make-string-table__% _size-hint63785_ _seed63787_))))
    (define make-string-table__1
      (lambda (_size-hint63789_)
        (let ((_seed63791_ '0))
          (make-string-table__% _size-hint63789_ _seed63791_))))
    (define make-string-table
      (lambda _g68707_
        (let ((_g68706_ (##length _g68707_)))
          (cond ((##fx= _g68706_ 0)
                 (apply (lambda () (make-string-table__0)) _g68707_))
                ((##fx= _g68706_ 1)
                 (apply (lambda (_size-hint63789_)
                          (make-string-table__1 _size-hint63789_))
                        _g68707_))
                ((##fx= _g68706_ 2)
                 (apply (lambda (_size-hint63793_ _seed63794_)
                          (make-string-table__% _size-hint63793_ _seed63794_))
                        _g68707_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g68707_))))))
    (define string-table-ref
      (lambda (_tab63734_ _key63735_ _default63736_)
        (let ((_table63738_ (&raw-table-table _tab63734_))
              (_seed63739_ (&raw-table-seed _tab63734_)))
          (let* ((_h63741_ (fxxor (##string=?-hash _key63735_) _seed63739_))
                 (_size63744_ (vector-length _table63738_))
                 (_entries63747_ (fxquotient _size63744_ '2))
                 (_start63750_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63741_ _entries63747_)
                   '1)))
            (let _loop63754_ ((_probe63757_ _start63750_)
                              (_i63759_ '1)
                              (_deleted63761_ '#f))
              (let ((_k63764_ (vector-ref _table63738_ _probe63757_)))
                (if (eq? _k63764_ (macro-unused-obj))
                    _default63736_
                    (if (eq? _k63764_ (macro-deleted-obj))
                        (_loop63754_
                         (let ((_next-probe63767_
                                (fx+ _start63750_
                                     _i63759_
                                     (fx* _i63759_ _i63759_))))
                           (fxmodulo _next-probe63767_ _size63744_))
                         (fx+ _i63759_ '1)
                         (let ((_$e63770_ _deleted63761_))
                           (if _$e63770_ _$e63770_ _probe63757_)))
                        (if (##string=? _key63735_ _k63764_)
                            (vector-ref _table63738_ (fx+ _probe63757_ '1))
                            (_loop63754_
                             (let ((_next-probe63773_
                                    (fx+ _start63750_
                                         _i63759_
                                         (fx* _i63759_ _i63759_))))
                               (fxmodulo _next-probe63773_ _size63744_))
                             (fx+ _i63759_ '1)
                             _deleted63761_))))))))))
    (define string-table-set!
      (lambda (_tab63730_ _key63731_ _value63732_)
        (if (fx< (&raw-table-free _tab63730_)
                 (fxquotient (vector-length (&raw-table-table _tab63730_)) '4))
            (__raw-table-rehash! _tab63730_)
            '#!void)
        (__string-table-set! _tab63730_ _key63731_ _value63732_)))
    (define __string-table-set!
      (lambda (_tab63685_ _key63686_ _value63687_)
        (let ((_table63690_ (&raw-table-table _tab63685_))
              (_seed63691_ (&raw-table-seed _tab63685_)))
          (let* ((_h63693_ (fxxor (##string=?-hash _key63686_) _seed63691_))
                 (_size63696_ (vector-length _table63690_))
                 (_entries63699_ (fxquotient _size63696_ '2))
                 (_start63702_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63693_ _entries63699_)
                   '1)))
            (let _loop63706_ ((_probe63709_ _start63702_)
                              (_i63711_ '1)
                              (_deleted63713_ '#f))
              (let ((_k63716_ (vector-ref _table63690_ _probe63709_)))
                (if (eq? _k63716_ (macro-unused-obj))
                    (if _deleted63713_
                        (begin
                          (vector-set! _table63690_ _deleted63713_ _key63686_)
                          (vector-set!
                           _table63690_
                           (fx+ _deleted63713_ '1)
                           _value63687_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab63685_
                              (fx+ (&raw-table-count _tab63685_) '1)))))
                        (begin
                          (vector-set! _table63690_ _probe63709_ _key63686_)
                          (vector-set!
                           _table63690_
                           (fx+ _probe63709_ '1)
                           _value63687_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab63685_
                              (fx- (&raw-table-free _tab63685_) '1))
                             (&raw-table-count-set!
                              _tab63685_
                              (fx+ (&raw-table-count _tab63685_) '1))))))
                    (if (eq? _k63716_ (macro-deleted-obj))
                        (_loop63706_
                         (let ((_next-probe63721_
                                (fx+ _start63702_
                                     _i63711_
                                     (fx* _i63711_ _i63711_))))
                           (fxmodulo _next-probe63721_ _size63696_))
                         (fx+ _i63711_ '1)
                         (let ((_$e63724_ _deleted63713_))
                           (if _$e63724_ _$e63724_ _probe63709_)))
                        (if (##string=? _key63686_ _k63716_)
                            (begin
                              (vector-set!
                               _table63690_
                               _probe63709_
                               _key63686_)
                              (vector-set!
                               _table63690_
                               (fx+ _probe63709_ '1)
                               _value63687_))
                            (_loop63706_
                             (let ((_next-probe63727_
                                    (fx+ _start63702_
                                         _i63711_
                                         (fx* _i63711_ _i63711_))))
                               (fxmodulo _next-probe63727_ _size63696_))
                             (fx+ _i63711_ '1)
                             _deleted63713_))))))))))
    (define string-table-update!
      (lambda (_tab63680_
               _key63681_
               _string-table-update!63682_
               _default63683_)
        (if (fx< (&raw-table-free _tab63680_)
                 (fxquotient (vector-length (&raw-table-table _tab63680_)) '4))
            (__raw-table-rehash! _tab63680_)
            '#!void)
        (__string-table-update!
         _tab63680_
         _key63681_
         _string-table-update!63682_
         _default63683_)))
    (define __string-table-update!
      (lambda (_tab63634_
               _key63635_
               _string-table-update!63636_
               _default63637_)
        (let ((_table63640_ (&raw-table-table _tab63634_))
              (_seed63641_ (&raw-table-seed _tab63634_)))
          (let* ((_h63643_ (fxxor (##string=?-hash _key63635_) _seed63641_))
                 (_size63646_ (vector-length _table63640_))
                 (_entries63649_ (fxquotient _size63646_ '2))
                 (_start63652_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63643_ _entries63649_)
                   '1)))
            (let _loop63656_ ((_probe63659_ _start63652_)
                              (_i63661_ '1)
                              (_deleted63663_ '#f))
              (let ((_k63666_ (vector-ref _table63640_ _probe63659_)))
                (if (eq? _k63666_ (macro-unused-obj))
                    (if _deleted63663_
                        (begin
                          (vector-set! _table63640_ _deleted63663_ _key63635_)
                          (vector-set!
                           _table63640_
                           (fx+ _deleted63663_ '1)
                           (_string-table-update!63636_ _default63637_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab63634_
                              (fx+ (&raw-table-count _tab63634_) '1)))))
                        (begin
                          (vector-set! _table63640_ _probe63659_ _key63635_)
                          (vector-set!
                           _table63640_
                           (fx+ _probe63659_ '1)
                           (_string-table-update!63636_ _default63637_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab63634_
                              (fx- (&raw-table-free _tab63634_) '1))
                             (&raw-table-count-set!
                              _tab63634_
                              (fx+ (&raw-table-count _tab63634_) '1))))))
                    (if (eq? _k63666_ (macro-deleted-obj))
                        (_loop63656_
                         (let ((_next-probe63671_
                                (fx+ _start63652_
                                     _i63661_
                                     (fx* _i63661_ _i63661_))))
                           (fxmodulo _next-probe63671_ _size63646_))
                         (fx+ _i63661_ '1)
                         (let ((_$e63674_ _deleted63663_))
                           (if _$e63674_ _$e63674_ _probe63659_)))
                        (if (##string=? _key63635_ _k63666_)
                            (begin
                              (vector-set!
                               _table63640_
                               _probe63659_
                               _key63635_)
                              (vector-set!
                               _table63640_
                               (fx+ _probe63659_ '1)
                               (_string-table-update!63636_
                                (vector-ref
                                 _table63640_
                                 (fx+ _probe63659_ '1)))))
                            (_loop63656_
                             (let ((_next-probe63677_
                                    (fx+ _start63652_
                                         _i63661_
                                         (fx* _i63661_ _i63661_))))
                               (fxmodulo _next-probe63677_ _size63646_))
                             (fx+ _i63661_ '1)
                             _deleted63663_))))))))))
    (define string-table-delete!
      (lambda (_tab63593_ _key63595_)
        (let ((_table63598_ (&raw-table-table _tab63593_))
              (_seed63600_ (&raw-table-seed _tab63593_)))
          (let* ((_h63603_ (fxxor (##string=?-hash _key63595_) _seed63600_))
                 (_size63606_ (vector-length _table63598_))
                 (_entries63609_ (fxquotient _size63606_ '2))
                 (_start63612_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63603_ _entries63609_)
                   '1)))
            (let _loop63616_ ((_probe63619_ _start63612_) (_i63621_ '1))
              (let ((_k63624_ (vector-ref _table63598_ _probe63619_)))
                (if (eq? _k63624_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k63624_ (macro-deleted-obj))
                        (_loop63616_
                         (let ((_next-probe63627_
                                (fx+ _start63612_
                                     _i63621_
                                     (fx* _i63621_ _i63621_))))
                           (fxmodulo _next-probe63627_ _size63606_))
                         (fx+ _i63621_ '1))
                        (if (##string=? _key63595_ _k63624_)
                            (begin
                              (vector-set!
                               _table63598_
                               _probe63619_
                               (macro-deleted-obj))
                              (vector-set!
                               _table63598_
                               (fx+ _probe63619_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab63593_
                                  (fx- (&raw-table-count _tab63593_) '1)))))
                            (_loop63616_
                             (let ((_next-probe63631_
                                    (fx+ _start63612_
                                         _i63621_
                                         (fx* _i63621_ _i63621_))))
                               (fxmodulo _next-probe63631_ _size63606_))
                             (fx+ _i63621_ '1)))))))))))))
