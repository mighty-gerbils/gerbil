(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1710694201)
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
      (lambda (_tab57769_)
        (##unchecked-structure-ref _tab57769_ '1 __table::t 'raw-table-table)))
    (define &raw-table-count
      (lambda (_tab57767_)
        (##unchecked-structure-ref _tab57767_ '2 __table::t 'raw-table-count)))
    (define &raw-table-free
      (lambda (_tab57765_)
        (##unchecked-structure-ref _tab57765_ '3 __table::t 'raw-table-free)))
    (define &raw-table-hash
      (lambda (_tab57763_)
        (##unchecked-structure-ref _tab57763_ '4 __table::t 'raw-table-hash)))
    (define &raw-table-test
      (lambda (_tab57761_)
        (##unchecked-structure-ref _tab57761_ '5 __table::t 'raw-table-test)))
    (define &raw-table-seed
      (lambda (_tab57759_)
        (##unchecked-structure-ref _tab57759_ '6 __table::t 'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_tab57756_ _val57757_)
        (##unchecked-structure-set!
         _tab57756_
         _val57757_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_tab57753_ _val57754_)
        (##unchecked-structure-set!
         _tab57753_
         _val57754_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_tab57750_ _val57751_)
        (##unchecked-structure-set!
         _tab57750_
         _val57751_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_tab57747_ _val57748_)
        (##unchecked-structure-set!
         _tab57747_
         _val57748_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_tab57744_ _val57745_)
        (##unchecked-structure-set!
         _tab57744_
         _val57745_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_tab57741_ _val57742_)
        (##unchecked-structure-set!
         _tab57741_
         _val57742_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_size-hint57739_)
        (if (and (fixnum? _size-hint57739_) (fx> _size-hint57739_ '0))
            (fx* (fxmax '2 (expt '2 (integer-length _size-hint57739_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_size-hint57715_ _hash57716_ _test57717_ _seed57718_)
        (let* ((_size57720_ (raw-table-size-hint->size _size-hint57715_))
               (_table57722_ (make-vector _size57720_ (macro-unused-obj))))
          (##structure
           __table::t
           _table57722_
           '0
           (fxquotient _size57720_ '2)
           _hash57716_
           _test57717_
           _seed57718_))))
    (define make-raw-table__0
      (lambda (_size-hint57728_ _hash57729_ _test57730_)
        (let ((_seed57732_ '0))
          (make-raw-table__%
           _size-hint57728_
           _hash57729_
           _test57730_
           _seed57732_))))
    (define make-raw-table
      (lambda _g57771_
        (let ((_g57770_ (##length _g57771_)))
          (cond ((##fx= _g57770_ 3)
                 (apply (lambda (_size-hint57728_ _hash57729_ _test57730_)
                          (make-raw-table__0
                           _size-hint57728_
                           _hash57729_
                           _test57730_))
                        _g57771_))
                ((##fx= _g57770_ 4)
                 (apply (lambda (_size-hint57734_
                                 _hash57735_
                                 _test57736_
                                 _seed57737_)
                          (make-raw-table__%
                           _size-hint57734_
                           _hash57735_
                           _test57736_
                           _seed57737_))
                        _g57771_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g57771_))))))
    (define raw-table-ref
      (lambda (_tab57670_ _key57671_ _default57672_)
        (let ((_table57674_ (&raw-table-table _tab57670_))
              (_seed57675_ (&raw-table-seed _tab57670_))
              (_hash57676_ (&raw-table-hash _tab57670_))
              (_test57677_ (&raw-table-test _tab57670_)))
          (let* ((_h57679_ (fxxor (_hash57676_ _key57671_) _seed57675_))
                 (_size57682_ (vector-length _table57674_))
                 (_entries57685_ (fxquotient _size57682_ '2))
                 (_start57688_
                  (fxarithmetic-shift-left
                   (fxmodulo _h57679_ _entries57685_)
                   '1)))
            (let _loop57692_ ((_probe57695_ _start57688_)
                              (_i57697_ '1)
                              (_deleted57699_ '#f))
              (let ((_k57702_ (vector-ref _table57674_ _probe57695_)))
                (if (eq? _k57702_ (macro-unused-obj))
                    _default57672_
                    (if (eq? _k57702_ (macro-deleted-obj))
                        (_loop57692_
                         (let ((_next-probe57705_
                                (fx+ _start57688_
                                     _i57697_
                                     (fx* _i57697_ _i57697_))))
                           (fxmodulo _next-probe57705_ _size57682_))
                         (fx+ _i57697_ '1)
                         (let ((_$e57708_ _deleted57699_))
                           (if _$e57708_ _$e57708_ _probe57695_)))
                        (if (_test57677_ _key57671_ _k57702_)
                            (vector-ref _table57674_ (fx+ _probe57695_ '1))
                            (_loop57692_
                             (let ((_next-probe57711_
                                    (fx+ _start57688_
                                         _i57697_
                                         (fx* _i57697_ _i57697_))))
                               (fxmodulo _next-probe57711_ _size57682_))
                             (fx+ _i57697_ '1)
                             _deleted57699_))))))))))
    (define raw-table-set!
      (lambda (_tab57666_ _key57667_ _value57668_)
        (if (fx< (&raw-table-free _tab57666_)
                 (fxquotient (vector-length (&raw-table-table _tab57666_)) '4))
            (__raw-table-rehash! _tab57666_)
            '#!void)
        (__raw-table-set! _tab57666_ _key57667_ _value57668_)))
    (define raw-table-update!
      (lambda (_tab57661_ _key57662_ _update57663_ _default57664_)
        (if (fx< (&raw-table-free _tab57661_)
                 (fxquotient (vector-length (&raw-table-table _tab57661_)) '4))
            (__raw-table-rehash! _tab57661_)
            '#!void)
        (__raw-table-update!
         _tab57661_
         _key57662_
         _update57663_
         _default57664_)))
    (define raw-table-delete!
      (lambda (_tab57622_ _key57623_)
        (let ((_table57625_ (&raw-table-table _tab57622_))
              (_seed57626_ (&raw-table-seed _tab57622_))
              (_hash57627_ (&raw-table-hash _tab57622_))
              (_test57628_ (&raw-table-test _tab57622_)))
          (let* ((_h57630_ (fxxor (_hash57627_ _key57623_) _seed57626_))
                 (_size57633_ (vector-length _table57625_))
                 (_entries57636_ (fxquotient _size57633_ '2))
                 (_start57639_
                  (fxarithmetic-shift-left
                   (fxmodulo _h57630_ _entries57636_)
                   '1)))
            (let _loop57643_ ((_probe57646_ _start57639_) (_i57648_ '1))
              (let ((_k57651_ (vector-ref _table57625_ _probe57646_)))
                (if (eq? _k57651_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k57651_ (macro-deleted-obj))
                        (_loop57643_
                         (let ((_next-probe57654_
                                (fx+ _start57639_
                                     _i57648_
                                     (fx* _i57648_ _i57648_))))
                           (fxmodulo _next-probe57654_ _size57633_))
                         (fx+ _i57648_ '1))
                        (if (_test57628_ _key57623_ _k57651_)
                            (begin
                              (vector-set!
                               _table57625_
                               _probe57646_
                               (macro-deleted-obj))
                              (vector-set!
                               _table57625_
                               (fx+ _probe57646_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab57622_
                                  (fx- (&raw-table-count _tab57622_) '1)))))
                            (_loop57643_
                             (let ((_next-probe57658_
                                    (fx+ _start57639_
                                         _i57648_
                                         (fx* _i57648_ _i57648_))))
                               (fxmodulo _next-probe57658_ _size57633_))
                             (fx+ _i57648_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_tab57606_ _proc57607_)
        (let* ((_table57609_ (&raw-table-table _tab57606_))
               (_size57611_ (vector-length _table57609_)))
          (let _loop57614_ ((_i57616_ '0))
            (if (fx< _i57616_ _size57611_)
                (begin
                  (let ((_key57618_ (vector-ref _table57609_ _i57616_)))
                    (if (and (not (eq? _key57618_ (macro-unused-obj)))
                             (not (eq? _key57618_ (macro-deleted-obj))))
                        (let ((_value57620_
                               (vector-ref _table57609_ (fx+ _i57616_ '1))))
                          (_proc57607_ _key57618_ _value57620_))
                        '#!void))
                  (_loop57614_ (fx+ _i57616_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_tab57602_)
        (let ((_new-tab57604_ (##structure-copy _tab57602_)))
          (&raw-table-table-set!
           _new-tab57604_
           (vector-copy (&raw-table-table _tab57602_)))
          _new-tab57604_)))
    (define raw-table-clear!
      (lambda (_tab57600_)
        (vector-fill! (&raw-table-table _tab57600_) (macro-unused-obj))
        (&raw-table-count-set! _tab57600_ '0)
        (&raw-table-free-set!
         _tab57600_
         (fxquotient (vector-length (&raw-table-table _tab57600_)) '2))))
    (define __raw-table-set!
      (lambda (_tab57554_ _key57555_ _value57556_)
        (let ((_table57558_ (&raw-table-table _tab57554_))
              (_seed57559_ (&raw-table-seed _tab57554_))
              (_hash57560_ (&raw-table-hash _tab57554_))
              (_test57561_ (&raw-table-test _tab57554_)))
          (let* ((_h57563_ (fxxor (_hash57560_ _key57555_) _seed57559_))
                 (_size57566_ (vector-length _table57558_))
                 (_entries57569_ (fxquotient _size57566_ '2))
                 (_start57572_
                  (fxarithmetic-shift-left
                   (fxmodulo _h57563_ _entries57569_)
                   '1)))
            (let _loop57576_ ((_probe57579_ _start57572_)
                              (_i57581_ '1)
                              (_deleted57583_ '#f))
              (let ((_k57586_ (vector-ref _table57558_ _probe57579_)))
                (if (eq? _k57586_ (macro-unused-obj))
                    (if _deleted57583_
                        (begin
                          (vector-set! _table57558_ _deleted57583_ _key57555_)
                          (vector-set!
                           _table57558_
                           (fx+ _deleted57583_ '1)
                           _value57556_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab57554_
                              (fx+ (&raw-table-count _tab57554_) '1)))))
                        (begin
                          (vector-set! _table57558_ _probe57579_ _key57555_)
                          (vector-set!
                           _table57558_
                           (fx+ _probe57579_ '1)
                           _value57556_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab57554_
                              (fx- (&raw-table-free _tab57554_) '1))
                             (&raw-table-count-set!
                              _tab57554_
                              (fx+ (&raw-table-count _tab57554_) '1))))))
                    (if (eq? _k57586_ (macro-deleted-obj))
                        (_loop57576_
                         (let ((_next-probe57591_
                                (fx+ _start57572_
                                     _i57581_
                                     (fx* _i57581_ _i57581_))))
                           (fxmodulo _next-probe57591_ _size57566_))
                         (fx+ _i57581_ '1)
                         (let ((_$e57594_ _deleted57583_))
                           (if _$e57594_ _$e57594_ _probe57579_)))
                        (if (_test57561_ _key57555_ _k57586_)
                            (begin
                              (vector-set!
                               _table57558_
                               _probe57579_
                               _key57555_)
                              (vector-set!
                               _table57558_
                               (fx+ _probe57579_ '1)
                               _value57556_))
                            (_loop57576_
                             (let ((_next-probe57597_
                                    (fx+ _start57572_
                                         _i57581_
                                         (fx* _i57581_ _i57581_))))
                               (fxmodulo _next-probe57597_ _size57566_))
                             (fx+ _i57581_ '1)
                             _deleted57583_))))))))))
    (define __raw-table-update!
      (lambda (_tab57507_ _key57508_ _update57509_ _default57510_)
        (let ((_table57512_ (&raw-table-table _tab57507_))
              (_seed57513_ (&raw-table-seed _tab57507_))
              (_hash57514_ (&raw-table-hash _tab57507_))
              (_test57515_ (&raw-table-test _tab57507_)))
          (let* ((_h57517_ (fxxor (_hash57514_ _key57508_) _seed57513_))
                 (_size57520_ (vector-length _table57512_))
                 (_entries57523_ (fxquotient _size57520_ '2))
                 (_start57526_
                  (fxarithmetic-shift-left
                   (fxmodulo _h57517_ _entries57523_)
                   '1)))
            (let _loop57530_ ((_probe57533_ _start57526_)
                              (_i57535_ '1)
                              (_deleted57537_ '#f))
              (let ((_k57540_ (vector-ref _table57512_ _probe57533_)))
                (if (eq? _k57540_ (macro-unused-obj))
                    (if _deleted57537_
                        (begin
                          (vector-set! _table57512_ _deleted57537_ _key57508_)
                          (vector-set!
                           _table57512_
                           (fx+ _deleted57537_ '1)
                           (_update57509_ _default57510_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab57507_
                              (fx+ (&raw-table-count _tab57507_) '1)))))
                        (begin
                          (vector-set! _table57512_ _probe57533_ _key57508_)
                          (vector-set!
                           _table57512_
                           (fx+ _probe57533_ '1)
                           (_update57509_ _default57510_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab57507_
                              (fx- (&raw-table-free _tab57507_) '1))
                             (&raw-table-count-set!
                              _tab57507_
                              (fx+ (&raw-table-count _tab57507_) '1))))))
                    (if (eq? _k57540_ (macro-deleted-obj))
                        (_loop57530_
                         (let ((_next-probe57545_
                                (fx+ _start57526_
                                     _i57535_
                                     (fx* _i57535_ _i57535_))))
                           (fxmodulo _next-probe57545_ _size57520_))
                         (fx+ _i57535_ '1)
                         (let ((_$e57548_ _deleted57537_))
                           (if _$e57548_ _$e57548_ _probe57533_)))
                        (if (_test57515_ _key57508_ _k57540_)
                            (begin
                              (vector-set!
                               _table57512_
                               _probe57533_
                               _key57508_)
                              (vector-set!
                               _table57512_
                               (fx+ _probe57533_ '1)
                               (_update57509_
                                (vector-ref
                                 _table57512_
                                 (fx+ _probe57533_ '1)))))
                            (_loop57530_
                             (let ((_next-probe57551_
                                    (fx+ _start57526_
                                         _i57535_
                                         (fx* _i57535_ _i57535_))))
                               (fxmodulo _next-probe57551_ _size57520_))
                             (fx+ _i57535_ '1)
                             _deleted57537_))))))))))
    (define __raw-table-rehash!
      (lambda (_tab57488_)
        (let* ((_old-table57490_ (&raw-table-table _tab57488_))
               (_old-size57492_ (vector-length _old-table57490_))
               (_new-size57494_
                (if (fx< (&raw-table-count _tab57488_)
                         (fxquotient _old-size57492_ '4))
                    (vector-length _old-table57490_)
                    (fx* '2 (vector-length _old-table57490_))))
               (_new-table57496_
                (make-vector _new-size57494_ (macro-unused-obj))))
          (&raw-table-table-set! _tab57488_ _new-table57496_)
          (&raw-table-count-set! _tab57488_ '0)
          (&raw-table-free-set! _tab57488_ (fxquotient _new-size57494_ '2))
          (let _lp57499_ ((_i57501_ '0))
            (if (fx< _i57501_ _old-size57492_)
                (begin
                  (let ((_key57503_ (vector-ref _old-table57490_ _i57501_)))
                    (if (and (not (eq? _key57503_ (macro-unused-obj)))
                             (not (eq? _key57503_ (macro-deleted-obj))))
                        (let ((_value57505_
                               (vector-ref
                                _old-table57490_
                                (fx+ _i57501_ '1))))
                          (__raw-table-set!
                           _tab57488_
                           _key57503_
                           _value57505_))
                        '#!void))
                  (_lp57499_ (fx+ _i57501_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_obj57484_)
        (let ((_t57486_ (##type _obj57484_)))
          (if (fx= (fxand _t57486_ '1) '0)
              (fxand (##type-cast _obj57484_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _obj57484_)
                  (symbolic-hash _obj57484_)
                  (if (procedure? _obj57484_)
                      (procedure-hash _obj57484_)
                      (fxand (__eq-hash _obj57484_) (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_obj57480_)
        (let ((_h57482_
               (if (##closure? _obj57480_)
                   (__eq-hash _obj57480_)
                   (##type-cast _obj57480_ '0))))
          (fxand _h57482_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_obj57477_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _obj57477_)))
    (define eqv-hash
      (lambda (_obj57467_)
        (letrec ((_combine57469_
                  (lambda (_a57474_ _b57475_)
                    (fxand (fx* (fx+ _a57474_
                                     (fxarithmetic-shift-left _b57475_ '1))
                                '331804471)
                           (macro-max-fixnum32))))
                 (_hash57470_
                  (lambda (_obj57472_)
                    (macro-number-dispatch
                     _obj57472_
                     (eq-hash _obj57472_)
                     (fxand _obj57472_ (macro-max-fixnum32))
                     (modulo _obj57472_ '331804481)
                     (_combine57469_
                      (_hash57470_ (macro-ratnum-numerator _obj57472_))
                      (_hash57470_ (macro-ratnum-denominator _obj57472_)))
                     (_combine57469_
                      (##u16vector-ref _obj57472_ '0)
                      (_combine57469_
                       (##u16vector-ref _obj57472_ '1)
                       (_combine57469_
                        (##u16vector-ref _obj57472_ '2)
                        (##u16vector-ref _obj57472_ '3))))
                     (_combine57469_
                      (_hash57470_ (macro-cpxnum-real _obj57472_))
                      (_hash57470_ (macro-cpxnum-imag _obj57472_)))))))
          (_hash57470_ _obj57467_))))
    (define symbolic?
      (lambda (_obj57462_)
        (let ((_$e57464_ (symbol? _obj57462_)))
          (if _$e57464_ _$e57464_ (keyword? _obj57462_)))))
    (define symbolic-hash (lambda (_obj57460_) (macro-slot '1 _obj57460_)))
    (define string-hash (lambda (_obj57458_) (##string=?-hash _obj57458_)))
    (define immediate-hash
      (lambda (_obj57456_) (##type-cast _obj57456_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_size-hint57437_ _seed57439_)
        (make-raw-table__% _size-hint57437_ eq-hash eq? _seed57439_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_size-hint57445_ '#f) (_seed57447_ '0))
          (make-eq-table__% _size-hint57445_ _seed57447_))))
    (define make-eq-table__1
      (lambda (_size-hint57449_)
        (let ((_seed57451_ '0))
          (make-eq-table__% _size-hint57449_ _seed57451_))))
    (define make-eq-table
      (lambda _g57773_
        (let ((_g57772_ (##length _g57773_)))
          (cond ((##fx= _g57772_ 0)
                 (apply (lambda () (make-eq-table__0)) _g57773_))
                ((##fx= _g57772_ 1)
                 (apply (lambda (_size-hint57449_)
                          (make-eq-table__1 _size-hint57449_))
                        _g57773_))
                ((##fx= _g57772_ 2)
                 (apply (lambda (_size-hint57453_ _seed57454_)
                          (make-eq-table__% _size-hint57453_ _seed57454_))
                        _g57773_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g57773_))))))
    (define eq-table-ref
      (lambda (_tab57394_ _key57395_ _default57396_)
        (let ((_table57398_ (&raw-table-table _tab57394_))
              (_seed57399_ (&raw-table-seed _tab57394_)))
          (let* ((_h57401_ (fxxor (eq-hash _key57395_) _seed57399_))
                 (_size57404_ (vector-length _table57398_))
                 (_entries57407_ (fxquotient _size57404_ '2))
                 (_start57410_
                  (fxarithmetic-shift-left
                   (fxmodulo _h57401_ _entries57407_)
                   '1)))
            (let _loop57414_ ((_probe57417_ _start57410_)
                              (_i57419_ '1)
                              (_deleted57421_ '#f))
              (let ((_k57424_ (vector-ref _table57398_ _probe57417_)))
                (if (eq? _k57424_ (macro-unused-obj))
                    _default57396_
                    (if (eq? _k57424_ (macro-deleted-obj))
                        (_loop57414_
                         (let ((_next-probe57427_
                                (fx+ _start57410_
                                     _i57419_
                                     (fx* _i57419_ _i57419_))))
                           (fxmodulo _next-probe57427_ _size57404_))
                         (fx+ _i57419_ '1)
                         (let ((_$e57430_ _deleted57421_))
                           (if _$e57430_ _$e57430_ _probe57417_)))
                        (if (eq? _key57395_ _k57424_)
                            (vector-ref _table57398_ (fx+ _probe57417_ '1))
                            (_loop57414_
                             (let ((_next-probe57433_
                                    (fx+ _start57410_
                                         _i57419_
                                         (fx* _i57419_ _i57419_))))
                               (fxmodulo _next-probe57433_ _size57404_))
                             (fx+ _i57419_ '1)
                             _deleted57421_))))))))))
    (define eq-table-set!
      (lambda (_tab57390_ _key57391_ _value57392_)
        (if (fx< (&raw-table-free _tab57390_)
                 (fxquotient (vector-length (&raw-table-table _tab57390_)) '4))
            (__raw-table-rehash! _tab57390_)
            '#!void)
        (__eq-table-set! _tab57390_ _key57391_ _value57392_)))
    (define __eq-table-set!
      (lambda (_tab57345_ _key57346_ _value57347_)
        (let ((_table57350_ (&raw-table-table _tab57345_))
              (_seed57351_ (&raw-table-seed _tab57345_)))
          (let* ((_h57353_ (fxxor (eq-hash _key57346_) _seed57351_))
                 (_size57356_ (vector-length _table57350_))
                 (_entries57359_ (fxquotient _size57356_ '2))
                 (_start57362_
                  (fxarithmetic-shift-left
                   (fxmodulo _h57353_ _entries57359_)
                   '1)))
            (let _loop57366_ ((_probe57369_ _start57362_)
                              (_i57371_ '1)
                              (_deleted57373_ '#f))
              (let ((_k57376_ (vector-ref _table57350_ _probe57369_)))
                (if (eq? _k57376_ (macro-unused-obj))
                    (if _deleted57373_
                        (begin
                          (vector-set! _table57350_ _deleted57373_ _key57346_)
                          (vector-set!
                           _table57350_
                           (fx+ _deleted57373_ '1)
                           _value57347_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab57345_
                              (fx+ (&raw-table-count _tab57345_) '1)))))
                        (begin
                          (vector-set! _table57350_ _probe57369_ _key57346_)
                          (vector-set!
                           _table57350_
                           (fx+ _probe57369_ '1)
                           _value57347_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab57345_
                              (fx- (&raw-table-free _tab57345_) '1))
                             (&raw-table-count-set!
                              _tab57345_
                              (fx+ (&raw-table-count _tab57345_) '1))))))
                    (if (eq? _k57376_ (macro-deleted-obj))
                        (_loop57366_
                         (let ((_next-probe57381_
                                (fx+ _start57362_
                                     _i57371_
                                     (fx* _i57371_ _i57371_))))
                           (fxmodulo _next-probe57381_ _size57356_))
                         (fx+ _i57371_ '1)
                         (let ((_$e57384_ _deleted57373_))
                           (if _$e57384_ _$e57384_ _probe57369_)))
                        (if (eq? _key57346_ _k57376_)
                            (begin
                              (vector-set!
                               _table57350_
                               _probe57369_
                               _key57346_)
                              (vector-set!
                               _table57350_
                               (fx+ _probe57369_ '1)
                               _value57347_))
                            (_loop57366_
                             (let ((_next-probe57387_
                                    (fx+ _start57362_
                                         _i57371_
                                         (fx* _i57371_ _i57371_))))
                               (fxmodulo _next-probe57387_ _size57356_))
                             (fx+ _i57371_ '1)
                             _deleted57373_))))))))))
    (define eq-table-update!
      (lambda (_tab57340_ _key57341_ _eq-table-update!57342_ _default57343_)
        (if (fx< (&raw-table-free _tab57340_)
                 (fxquotient (vector-length (&raw-table-table _tab57340_)) '4))
            (__raw-table-rehash! _tab57340_)
            '#!void)
        (__eq-table-update!
         _tab57340_
         _key57341_
         _eq-table-update!57342_
         _default57343_)))
    (define __eq-table-update!
      (lambda (_tab57294_ _key57295_ _eq-table-update!57296_ _default57297_)
        (let ((_table57300_ (&raw-table-table _tab57294_))
              (_seed57301_ (&raw-table-seed _tab57294_)))
          (let* ((_h57303_ (fxxor (eq-hash _key57295_) _seed57301_))
                 (_size57306_ (vector-length _table57300_))
                 (_entries57309_ (fxquotient _size57306_ '2))
                 (_start57312_
                  (fxarithmetic-shift-left
                   (fxmodulo _h57303_ _entries57309_)
                   '1)))
            (let _loop57316_ ((_probe57319_ _start57312_)
                              (_i57321_ '1)
                              (_deleted57323_ '#f))
              (let ((_k57326_ (vector-ref _table57300_ _probe57319_)))
                (if (eq? _k57326_ (macro-unused-obj))
                    (if _deleted57323_
                        (begin
                          (vector-set! _table57300_ _deleted57323_ _key57295_)
                          (vector-set!
                           _table57300_
                           (fx+ _deleted57323_ '1)
                           (_eq-table-update!57296_ _default57297_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab57294_
                              (fx+ (&raw-table-count _tab57294_) '1)))))
                        (begin
                          (vector-set! _table57300_ _probe57319_ _key57295_)
                          (vector-set!
                           _table57300_
                           (fx+ _probe57319_ '1)
                           (_eq-table-update!57296_ _default57297_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab57294_
                              (fx- (&raw-table-free _tab57294_) '1))
                             (&raw-table-count-set!
                              _tab57294_
                              (fx+ (&raw-table-count _tab57294_) '1))))))
                    (if (eq? _k57326_ (macro-deleted-obj))
                        (_loop57316_
                         (let ((_next-probe57331_
                                (fx+ _start57312_
                                     _i57321_
                                     (fx* _i57321_ _i57321_))))
                           (fxmodulo _next-probe57331_ _size57306_))
                         (fx+ _i57321_ '1)
                         (let ((_$e57334_ _deleted57323_))
                           (if _$e57334_ _$e57334_ _probe57319_)))
                        (if (eq? _key57295_ _k57326_)
                            (begin
                              (vector-set!
                               _table57300_
                               _probe57319_
                               _key57295_)
                              (vector-set!
                               _table57300_
                               (fx+ _probe57319_ '1)
                               (_eq-table-update!57296_
                                (vector-ref
                                 _table57300_
                                 (fx+ _probe57319_ '1)))))
                            (_loop57316_
                             (let ((_next-probe57337_
                                    (fx+ _start57312_
                                         _i57321_
                                         (fx* _i57321_ _i57321_))))
                               (fxmodulo _next-probe57337_ _size57306_))
                             (fx+ _i57321_ '1)
                             _deleted57323_))))))))))
    (define eq-table-delete!
      (lambda (_tab57253_ _key57255_)
        (let ((_table57258_ (&raw-table-table _tab57253_))
              (_seed57260_ (&raw-table-seed _tab57253_)))
          (let* ((_h57263_ (fxxor (eq-hash _key57255_) _seed57260_))
                 (_size57266_ (vector-length _table57258_))
                 (_entries57269_ (fxquotient _size57266_ '2))
                 (_start57272_
                  (fxarithmetic-shift-left
                   (fxmodulo _h57263_ _entries57269_)
                   '1)))
            (let _loop57276_ ((_probe57279_ _start57272_) (_i57281_ '1))
              (let ((_k57284_ (vector-ref _table57258_ _probe57279_)))
                (if (eq? _k57284_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k57284_ (macro-deleted-obj))
                        (_loop57276_
                         (let ((_next-probe57287_
                                (fx+ _start57272_
                                     _i57281_
                                     (fx* _i57281_ _i57281_))))
                           (fxmodulo _next-probe57287_ _size57266_))
                         (fx+ _i57281_ '1))
                        (if (eq? _key57255_ _k57284_)
                            (begin
                              (vector-set!
                               _table57258_
                               _probe57279_
                               (macro-deleted-obj))
                              (vector-set!
                               _table57258_
                               (fx+ _probe57279_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab57253_
                                  (fx- (&raw-table-count _tab57253_) '1)))))
                            (_loop57276_
                             (let ((_next-probe57291_
                                    (fx+ _start57272_
                                         _i57281_
                                         (fx* _i57281_ _i57281_))))
                               (fxmodulo _next-probe57291_ _size57266_))
                             (fx+ _i57281_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_size-hint57234_ _seed57236_)
        (make-raw-table__% _size-hint57234_ eqv-hash eqv? _seed57236_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_size-hint57242_ '#f) (_seed57244_ '0))
          (make-eqv-table__% _size-hint57242_ _seed57244_))))
    (define make-eqv-table__1
      (lambda (_size-hint57246_)
        (let ((_seed57248_ '0))
          (make-eqv-table__% _size-hint57246_ _seed57248_))))
    (define make-eqv-table
      (lambda _g57775_
        (let ((_g57774_ (##length _g57775_)))
          (cond ((##fx= _g57774_ 0)
                 (apply (lambda () (make-eqv-table__0)) _g57775_))
                ((##fx= _g57774_ 1)
                 (apply (lambda (_size-hint57246_)
                          (make-eqv-table__1 _size-hint57246_))
                        _g57775_))
                ((##fx= _g57774_ 2)
                 (apply (lambda (_size-hint57250_ _seed57251_)
                          (make-eqv-table__% _size-hint57250_ _seed57251_))
                        _g57775_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g57775_))))))
    (define eqv-table-ref
      (lambda (_tab57191_ _key57192_ _default57193_)
        (let ((_table57195_ (&raw-table-table _tab57191_))
              (_seed57196_ (&raw-table-seed _tab57191_)))
          (let* ((_h57198_ (fxxor (eqv-hash _key57192_) _seed57196_))
                 (_size57201_ (vector-length _table57195_))
                 (_entries57204_ (fxquotient _size57201_ '2))
                 (_start57207_
                  (fxarithmetic-shift-left
                   (fxmodulo _h57198_ _entries57204_)
                   '1)))
            (let _loop57211_ ((_probe57214_ _start57207_)
                              (_i57216_ '1)
                              (_deleted57218_ '#f))
              (let ((_k57221_ (vector-ref _table57195_ _probe57214_)))
                (if (eq? _k57221_ (macro-unused-obj))
                    _default57193_
                    (if (eq? _k57221_ (macro-deleted-obj))
                        (_loop57211_
                         (let ((_next-probe57224_
                                (fx+ _start57207_
                                     _i57216_
                                     (fx* _i57216_ _i57216_))))
                           (fxmodulo _next-probe57224_ _size57201_))
                         (fx+ _i57216_ '1)
                         (let ((_$e57227_ _deleted57218_))
                           (if _$e57227_ _$e57227_ _probe57214_)))
                        (if (eqv? _key57192_ _k57221_)
                            (vector-ref _table57195_ (fx+ _probe57214_ '1))
                            (_loop57211_
                             (let ((_next-probe57230_
                                    (fx+ _start57207_
                                         _i57216_
                                         (fx* _i57216_ _i57216_))))
                               (fxmodulo _next-probe57230_ _size57201_))
                             (fx+ _i57216_ '1)
                             _deleted57218_))))))))))
    (define eqv-table-set!
      (lambda (_tab57187_ _key57188_ _value57189_)
        (if (fx< (&raw-table-free _tab57187_)
                 (fxquotient (vector-length (&raw-table-table _tab57187_)) '4))
            (__raw-table-rehash! _tab57187_)
            '#!void)
        (__eqv-table-set! _tab57187_ _key57188_ _value57189_)))
    (define __eqv-table-set!
      (lambda (_tab57142_ _key57143_ _value57144_)
        (let ((_table57147_ (&raw-table-table _tab57142_))
              (_seed57148_ (&raw-table-seed _tab57142_)))
          (let* ((_h57150_ (fxxor (eqv-hash _key57143_) _seed57148_))
                 (_size57153_ (vector-length _table57147_))
                 (_entries57156_ (fxquotient _size57153_ '2))
                 (_start57159_
                  (fxarithmetic-shift-left
                   (fxmodulo _h57150_ _entries57156_)
                   '1)))
            (let _loop57163_ ((_probe57166_ _start57159_)
                              (_i57168_ '1)
                              (_deleted57170_ '#f))
              (let ((_k57173_ (vector-ref _table57147_ _probe57166_)))
                (if (eq? _k57173_ (macro-unused-obj))
                    (if _deleted57170_
                        (begin
                          (vector-set! _table57147_ _deleted57170_ _key57143_)
                          (vector-set!
                           _table57147_
                           (fx+ _deleted57170_ '1)
                           _value57144_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab57142_
                              (fx+ (&raw-table-count _tab57142_) '1)))))
                        (begin
                          (vector-set! _table57147_ _probe57166_ _key57143_)
                          (vector-set!
                           _table57147_
                           (fx+ _probe57166_ '1)
                           _value57144_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab57142_
                              (fx- (&raw-table-free _tab57142_) '1))
                             (&raw-table-count-set!
                              _tab57142_
                              (fx+ (&raw-table-count _tab57142_) '1))))))
                    (if (eq? _k57173_ (macro-deleted-obj))
                        (_loop57163_
                         (let ((_next-probe57178_
                                (fx+ _start57159_
                                     _i57168_
                                     (fx* _i57168_ _i57168_))))
                           (fxmodulo _next-probe57178_ _size57153_))
                         (fx+ _i57168_ '1)
                         (let ((_$e57181_ _deleted57170_))
                           (if _$e57181_ _$e57181_ _probe57166_)))
                        (if (eqv? _key57143_ _k57173_)
                            (begin
                              (vector-set!
                               _table57147_
                               _probe57166_
                               _key57143_)
                              (vector-set!
                               _table57147_
                               (fx+ _probe57166_ '1)
                               _value57144_))
                            (_loop57163_
                             (let ((_next-probe57184_
                                    (fx+ _start57159_
                                         _i57168_
                                         (fx* _i57168_ _i57168_))))
                               (fxmodulo _next-probe57184_ _size57153_))
                             (fx+ _i57168_ '1)
                             _deleted57170_))))))))))
    (define eqv-table-update!
      (lambda (_tab57137_ _key57138_ _eqv-table-update!57139_ _default57140_)
        (if (fx< (&raw-table-free _tab57137_)
                 (fxquotient (vector-length (&raw-table-table _tab57137_)) '4))
            (__raw-table-rehash! _tab57137_)
            '#!void)
        (__eqv-table-update!
         _tab57137_
         _key57138_
         _eqv-table-update!57139_
         _default57140_)))
    (define __eqv-table-update!
      (lambda (_tab57091_ _key57092_ _eqv-table-update!57093_ _default57094_)
        (let ((_table57097_ (&raw-table-table _tab57091_))
              (_seed57098_ (&raw-table-seed _tab57091_)))
          (let* ((_h57100_ (fxxor (eqv-hash _key57092_) _seed57098_))
                 (_size57103_ (vector-length _table57097_))
                 (_entries57106_ (fxquotient _size57103_ '2))
                 (_start57109_
                  (fxarithmetic-shift-left
                   (fxmodulo _h57100_ _entries57106_)
                   '1)))
            (let _loop57113_ ((_probe57116_ _start57109_)
                              (_i57118_ '1)
                              (_deleted57120_ '#f))
              (let ((_k57123_ (vector-ref _table57097_ _probe57116_)))
                (if (eq? _k57123_ (macro-unused-obj))
                    (if _deleted57120_
                        (begin
                          (vector-set! _table57097_ _deleted57120_ _key57092_)
                          (vector-set!
                           _table57097_
                           (fx+ _deleted57120_ '1)
                           (_eqv-table-update!57093_ _default57094_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab57091_
                              (fx+ (&raw-table-count _tab57091_) '1)))))
                        (begin
                          (vector-set! _table57097_ _probe57116_ _key57092_)
                          (vector-set!
                           _table57097_
                           (fx+ _probe57116_ '1)
                           (_eqv-table-update!57093_ _default57094_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab57091_
                              (fx- (&raw-table-free _tab57091_) '1))
                             (&raw-table-count-set!
                              _tab57091_
                              (fx+ (&raw-table-count _tab57091_) '1))))))
                    (if (eq? _k57123_ (macro-deleted-obj))
                        (_loop57113_
                         (let ((_next-probe57128_
                                (fx+ _start57109_
                                     _i57118_
                                     (fx* _i57118_ _i57118_))))
                           (fxmodulo _next-probe57128_ _size57103_))
                         (fx+ _i57118_ '1)
                         (let ((_$e57131_ _deleted57120_))
                           (if _$e57131_ _$e57131_ _probe57116_)))
                        (if (eqv? _key57092_ _k57123_)
                            (begin
                              (vector-set!
                               _table57097_
                               _probe57116_
                               _key57092_)
                              (vector-set!
                               _table57097_
                               (fx+ _probe57116_ '1)
                               (_eqv-table-update!57093_
                                (vector-ref
                                 _table57097_
                                 (fx+ _probe57116_ '1)))))
                            (_loop57113_
                             (let ((_next-probe57134_
                                    (fx+ _start57109_
                                         _i57118_
                                         (fx* _i57118_ _i57118_))))
                               (fxmodulo _next-probe57134_ _size57103_))
                             (fx+ _i57118_ '1)
                             _deleted57120_))))))))))
    (define eqv-table-delete!
      (lambda (_tab57050_ _key57052_)
        (let ((_table57055_ (&raw-table-table _tab57050_))
              (_seed57057_ (&raw-table-seed _tab57050_)))
          (let* ((_h57060_ (fxxor (eqv-hash _key57052_) _seed57057_))
                 (_size57063_ (vector-length _table57055_))
                 (_entries57066_ (fxquotient _size57063_ '2))
                 (_start57069_
                  (fxarithmetic-shift-left
                   (fxmodulo _h57060_ _entries57066_)
                   '1)))
            (let _loop57073_ ((_probe57076_ _start57069_) (_i57078_ '1))
              (let ((_k57081_ (vector-ref _table57055_ _probe57076_)))
                (if (eq? _k57081_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k57081_ (macro-deleted-obj))
                        (_loop57073_
                         (let ((_next-probe57084_
                                (fx+ _start57069_
                                     _i57078_
                                     (fx* _i57078_ _i57078_))))
                           (fxmodulo _next-probe57084_ _size57063_))
                         (fx+ _i57078_ '1))
                        (if (eqv? _key57052_ _k57081_)
                            (begin
                              (vector-set!
                               _table57055_
                               _probe57076_
                               (macro-deleted-obj))
                              (vector-set!
                               _table57055_
                               (fx+ _probe57076_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab57050_
                                  (fx- (&raw-table-count _tab57050_) '1)))))
                            (_loop57073_
                             (let ((_next-probe57088_
                                    (fx+ _start57069_
                                         _i57078_
                                         (fx* _i57078_ _i57078_))))
                               (fxmodulo _next-probe57088_ _size57063_))
                             (fx+ _i57078_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_size-hint57031_ _seed57033_)
        (make-raw-table__% _size-hint57031_ symbolic-hash eq? _seed57033_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_size-hint57039_ '#f) (_seed57041_ '0))
          (make-symbolic-table__% _size-hint57039_ _seed57041_))))
    (define make-symbolic-table__1
      (lambda (_size-hint57043_)
        (let ((_seed57045_ '0))
          (make-symbolic-table__% _size-hint57043_ _seed57045_))))
    (define make-symbolic-table
      (lambda _g57777_
        (let ((_g57776_ (##length _g57777_)))
          (cond ((##fx= _g57776_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g57777_))
                ((##fx= _g57776_ 1)
                 (apply (lambda (_size-hint57043_)
                          (make-symbolic-table__1 _size-hint57043_))
                        _g57777_))
                ((##fx= _g57776_ 2)
                 (apply (lambda (_size-hint57047_ _seed57048_)
                          (make-symbolic-table__%
                           _size-hint57047_
                           _seed57048_))
                        _g57777_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g57777_))))))
    (define symbolic-table-ref
      (lambda (_tab56988_ _key56989_ _default56990_)
        (let ((_table56992_ (&raw-table-table _tab56988_))
              (_seed56993_ (&raw-table-seed _tab56988_)))
          (let* ((_h56995_ (fxxor (symbolic-hash _key56989_) _seed56993_))
                 (_size56998_ (vector-length _table56992_))
                 (_entries57001_ (fxquotient _size56998_ '2))
                 (_start57004_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56995_ _entries57001_)
                   '1)))
            (let _loop57008_ ((_probe57011_ _start57004_)
                              (_i57013_ '1)
                              (_deleted57015_ '#f))
              (let ((_k57018_ (vector-ref _table56992_ _probe57011_)))
                (if (eq? _k57018_ (macro-unused-obj))
                    _default56990_
                    (if (eq? _k57018_ (macro-deleted-obj))
                        (_loop57008_
                         (let ((_next-probe57021_
                                (fx+ _start57004_
                                     _i57013_
                                     (fx* _i57013_ _i57013_))))
                           (fxmodulo _next-probe57021_ _size56998_))
                         (fx+ _i57013_ '1)
                         (let ((_$e57024_ _deleted57015_))
                           (if _$e57024_ _$e57024_ _probe57011_)))
                        (if (eq? _key56989_ _k57018_)
                            (vector-ref _table56992_ (fx+ _probe57011_ '1))
                            (_loop57008_
                             (let ((_next-probe57027_
                                    (fx+ _start57004_
                                         _i57013_
                                         (fx* _i57013_ _i57013_))))
                               (fxmodulo _next-probe57027_ _size56998_))
                             (fx+ _i57013_ '1)
                             _deleted57015_))))))))))
    (define symbolic-table-set!
      (lambda (_tab56984_ _key56985_ _value56986_)
        (if (fx< (&raw-table-free _tab56984_)
                 (fxquotient (vector-length (&raw-table-table _tab56984_)) '4))
            (__raw-table-rehash! _tab56984_)
            '#!void)
        (__symbolic-table-set! _tab56984_ _key56985_ _value56986_)))
    (define __symbolic-table-set!
      (lambda (_tab56939_ _key56940_ _value56941_)
        (let ((_table56944_ (&raw-table-table _tab56939_))
              (_seed56945_ (&raw-table-seed _tab56939_)))
          (let* ((_h56947_ (fxxor (symbolic-hash _key56940_) _seed56945_))
                 (_size56950_ (vector-length _table56944_))
                 (_entries56953_ (fxquotient _size56950_ '2))
                 (_start56956_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56947_ _entries56953_)
                   '1)))
            (let _loop56960_ ((_probe56963_ _start56956_)
                              (_i56965_ '1)
                              (_deleted56967_ '#f))
              (let ((_k56970_ (vector-ref _table56944_ _probe56963_)))
                (if (eq? _k56970_ (macro-unused-obj))
                    (if _deleted56967_
                        (begin
                          (vector-set! _table56944_ _deleted56967_ _key56940_)
                          (vector-set!
                           _table56944_
                           (fx+ _deleted56967_ '1)
                           _value56941_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab56939_
                              (fx+ (&raw-table-count _tab56939_) '1)))))
                        (begin
                          (vector-set! _table56944_ _probe56963_ _key56940_)
                          (vector-set!
                           _table56944_
                           (fx+ _probe56963_ '1)
                           _value56941_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab56939_
                              (fx- (&raw-table-free _tab56939_) '1))
                             (&raw-table-count-set!
                              _tab56939_
                              (fx+ (&raw-table-count _tab56939_) '1))))))
                    (if (eq? _k56970_ (macro-deleted-obj))
                        (_loop56960_
                         (let ((_next-probe56975_
                                (fx+ _start56956_
                                     _i56965_
                                     (fx* _i56965_ _i56965_))))
                           (fxmodulo _next-probe56975_ _size56950_))
                         (fx+ _i56965_ '1)
                         (let ((_$e56978_ _deleted56967_))
                           (if _$e56978_ _$e56978_ _probe56963_)))
                        (if (eq? _key56940_ _k56970_)
                            (begin
                              (vector-set!
                               _table56944_
                               _probe56963_
                               _key56940_)
                              (vector-set!
                               _table56944_
                               (fx+ _probe56963_ '1)
                               _value56941_))
                            (_loop56960_
                             (let ((_next-probe56981_
                                    (fx+ _start56956_
                                         _i56965_
                                         (fx* _i56965_ _i56965_))))
                               (fxmodulo _next-probe56981_ _size56950_))
                             (fx+ _i56965_ '1)
                             _deleted56967_))))))))))
    (define symbolic-table-update!
      (lambda (_tab56934_
               _key56935_
               _symbolic-table-update!56936_
               _default56937_)
        (if (fx< (&raw-table-free _tab56934_)
                 (fxquotient (vector-length (&raw-table-table _tab56934_)) '4))
            (__raw-table-rehash! _tab56934_)
            '#!void)
        (__symbolic-table-update!
         _tab56934_
         _key56935_
         _symbolic-table-update!56936_
         _default56937_)))
    (define __symbolic-table-update!
      (lambda (_tab56888_
               _key56889_
               _symbolic-table-update!56890_
               _default56891_)
        (let ((_table56894_ (&raw-table-table _tab56888_))
              (_seed56895_ (&raw-table-seed _tab56888_)))
          (let* ((_h56897_ (fxxor (symbolic-hash _key56889_) _seed56895_))
                 (_size56900_ (vector-length _table56894_))
                 (_entries56903_ (fxquotient _size56900_ '2))
                 (_start56906_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56897_ _entries56903_)
                   '1)))
            (let _loop56910_ ((_probe56913_ _start56906_)
                              (_i56915_ '1)
                              (_deleted56917_ '#f))
              (let ((_k56920_ (vector-ref _table56894_ _probe56913_)))
                (if (eq? _k56920_ (macro-unused-obj))
                    (if _deleted56917_
                        (begin
                          (vector-set! _table56894_ _deleted56917_ _key56889_)
                          (vector-set!
                           _table56894_
                           (fx+ _deleted56917_ '1)
                           (_symbolic-table-update!56890_ _default56891_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab56888_
                              (fx+ (&raw-table-count _tab56888_) '1)))))
                        (begin
                          (vector-set! _table56894_ _probe56913_ _key56889_)
                          (vector-set!
                           _table56894_
                           (fx+ _probe56913_ '1)
                           (_symbolic-table-update!56890_ _default56891_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab56888_
                              (fx- (&raw-table-free _tab56888_) '1))
                             (&raw-table-count-set!
                              _tab56888_
                              (fx+ (&raw-table-count _tab56888_) '1))))))
                    (if (eq? _k56920_ (macro-deleted-obj))
                        (_loop56910_
                         (let ((_next-probe56925_
                                (fx+ _start56906_
                                     _i56915_
                                     (fx* _i56915_ _i56915_))))
                           (fxmodulo _next-probe56925_ _size56900_))
                         (fx+ _i56915_ '1)
                         (let ((_$e56928_ _deleted56917_))
                           (if _$e56928_ _$e56928_ _probe56913_)))
                        (if (eq? _key56889_ _k56920_)
                            (begin
                              (vector-set!
                               _table56894_
                               _probe56913_
                               _key56889_)
                              (vector-set!
                               _table56894_
                               (fx+ _probe56913_ '1)
                               (_symbolic-table-update!56890_
                                (vector-ref
                                 _table56894_
                                 (fx+ _probe56913_ '1)))))
                            (_loop56910_
                             (let ((_next-probe56931_
                                    (fx+ _start56906_
                                         _i56915_
                                         (fx* _i56915_ _i56915_))))
                               (fxmodulo _next-probe56931_ _size56900_))
                             (fx+ _i56915_ '1)
                             _deleted56917_))))))))))
    (define symbolic-table-delete!
      (lambda (_tab56847_ _key56849_)
        (let ((_table56852_ (&raw-table-table _tab56847_))
              (_seed56854_ (&raw-table-seed _tab56847_)))
          (let* ((_h56857_ (fxxor (symbolic-hash _key56849_) _seed56854_))
                 (_size56860_ (vector-length _table56852_))
                 (_entries56863_ (fxquotient _size56860_ '2))
                 (_start56866_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56857_ _entries56863_)
                   '1)))
            (let _loop56870_ ((_probe56873_ _start56866_) (_i56875_ '1))
              (let ((_k56878_ (vector-ref _table56852_ _probe56873_)))
                (if (eq? _k56878_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k56878_ (macro-deleted-obj))
                        (_loop56870_
                         (let ((_next-probe56881_
                                (fx+ _start56866_
                                     _i56875_
                                     (fx* _i56875_ _i56875_))))
                           (fxmodulo _next-probe56881_ _size56860_))
                         (fx+ _i56875_ '1))
                        (if (eq? _key56849_ _k56878_)
                            (begin
                              (vector-set!
                               _table56852_
                               _probe56873_
                               (macro-deleted-obj))
                              (vector-set!
                               _table56852_
                               (fx+ _probe56873_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab56847_
                                  (fx- (&raw-table-count _tab56847_) '1)))))
                            (_loop56870_
                             (let ((_next-probe56885_
                                    (fx+ _start56866_
                                         _i56875_
                                         (fx* _i56875_ _i56875_))))
                               (fxmodulo _next-probe56885_ _size56860_))
                             (fx+ _i56875_ '1)))))))))))
    (define make-string-table__%
      (lambda (_size-hint56828_ _seed56830_)
        (make-raw-table__%
         _size-hint56828_
         string-hash
         ##string=?
         _seed56830_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_size-hint56836_ '#f) (_seed56838_ '0))
          (make-string-table__% _size-hint56836_ _seed56838_))))
    (define make-string-table__1
      (lambda (_size-hint56840_)
        (let ((_seed56842_ '0))
          (make-string-table__% _size-hint56840_ _seed56842_))))
    (define make-string-table
      (lambda _g57779_
        (let ((_g57778_ (##length _g57779_)))
          (cond ((##fx= _g57778_ 0)
                 (apply (lambda () (make-string-table__0)) _g57779_))
                ((##fx= _g57778_ 1)
                 (apply (lambda (_size-hint56840_)
                          (make-string-table__1 _size-hint56840_))
                        _g57779_))
                ((##fx= _g57778_ 2)
                 (apply (lambda (_size-hint56844_ _seed56845_)
                          (make-string-table__% _size-hint56844_ _seed56845_))
                        _g57779_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g57779_))))))
    (define string-table-ref
      (lambda (_tab56785_ _key56786_ _default56787_)
        (let ((_table56789_ (&raw-table-table _tab56785_))
              (_seed56790_ (&raw-table-seed _tab56785_)))
          (let* ((_h56792_ (fxxor (##string=?-hash _key56786_) _seed56790_))
                 (_size56795_ (vector-length _table56789_))
                 (_entries56798_ (fxquotient _size56795_ '2))
                 (_start56801_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56792_ _entries56798_)
                   '1)))
            (let _loop56805_ ((_probe56808_ _start56801_)
                              (_i56810_ '1)
                              (_deleted56812_ '#f))
              (let ((_k56815_ (vector-ref _table56789_ _probe56808_)))
                (if (eq? _k56815_ (macro-unused-obj))
                    _default56787_
                    (if (eq? _k56815_ (macro-deleted-obj))
                        (_loop56805_
                         (let ((_next-probe56818_
                                (fx+ _start56801_
                                     _i56810_
                                     (fx* _i56810_ _i56810_))))
                           (fxmodulo _next-probe56818_ _size56795_))
                         (fx+ _i56810_ '1)
                         (let ((_$e56821_ _deleted56812_))
                           (if _$e56821_ _$e56821_ _probe56808_)))
                        (if (##string=? _key56786_ _k56815_)
                            (vector-ref _table56789_ (fx+ _probe56808_ '1))
                            (_loop56805_
                             (let ((_next-probe56824_
                                    (fx+ _start56801_
                                         _i56810_
                                         (fx* _i56810_ _i56810_))))
                               (fxmodulo _next-probe56824_ _size56795_))
                             (fx+ _i56810_ '1)
                             _deleted56812_))))))))))
    (define string-table-set!
      (lambda (_tab56781_ _key56782_ _value56783_)
        (if (fx< (&raw-table-free _tab56781_)
                 (fxquotient (vector-length (&raw-table-table _tab56781_)) '4))
            (__raw-table-rehash! _tab56781_)
            '#!void)
        (__string-table-set! _tab56781_ _key56782_ _value56783_)))
    (define __string-table-set!
      (lambda (_tab56736_ _key56737_ _value56738_)
        (let ((_table56741_ (&raw-table-table _tab56736_))
              (_seed56742_ (&raw-table-seed _tab56736_)))
          (let* ((_h56744_ (fxxor (##string=?-hash _key56737_) _seed56742_))
                 (_size56747_ (vector-length _table56741_))
                 (_entries56750_ (fxquotient _size56747_ '2))
                 (_start56753_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56744_ _entries56750_)
                   '1)))
            (let _loop56757_ ((_probe56760_ _start56753_)
                              (_i56762_ '1)
                              (_deleted56764_ '#f))
              (let ((_k56767_ (vector-ref _table56741_ _probe56760_)))
                (if (eq? _k56767_ (macro-unused-obj))
                    (if _deleted56764_
                        (begin
                          (vector-set! _table56741_ _deleted56764_ _key56737_)
                          (vector-set!
                           _table56741_
                           (fx+ _deleted56764_ '1)
                           _value56738_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab56736_
                              (fx+ (&raw-table-count _tab56736_) '1)))))
                        (begin
                          (vector-set! _table56741_ _probe56760_ _key56737_)
                          (vector-set!
                           _table56741_
                           (fx+ _probe56760_ '1)
                           _value56738_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab56736_
                              (fx- (&raw-table-free _tab56736_) '1))
                             (&raw-table-count-set!
                              _tab56736_
                              (fx+ (&raw-table-count _tab56736_) '1))))))
                    (if (eq? _k56767_ (macro-deleted-obj))
                        (_loop56757_
                         (let ((_next-probe56772_
                                (fx+ _start56753_
                                     _i56762_
                                     (fx* _i56762_ _i56762_))))
                           (fxmodulo _next-probe56772_ _size56747_))
                         (fx+ _i56762_ '1)
                         (let ((_$e56775_ _deleted56764_))
                           (if _$e56775_ _$e56775_ _probe56760_)))
                        (if (##string=? _key56737_ _k56767_)
                            (begin
                              (vector-set!
                               _table56741_
                               _probe56760_
                               _key56737_)
                              (vector-set!
                               _table56741_
                               (fx+ _probe56760_ '1)
                               _value56738_))
                            (_loop56757_
                             (let ((_next-probe56778_
                                    (fx+ _start56753_
                                         _i56762_
                                         (fx* _i56762_ _i56762_))))
                               (fxmodulo _next-probe56778_ _size56747_))
                             (fx+ _i56762_ '1)
                             _deleted56764_))))))))))
    (define string-table-update!
      (lambda (_tab56731_
               _key56732_
               _string-table-update!56733_
               _default56734_)
        (if (fx< (&raw-table-free _tab56731_)
                 (fxquotient (vector-length (&raw-table-table _tab56731_)) '4))
            (__raw-table-rehash! _tab56731_)
            '#!void)
        (__string-table-update!
         _tab56731_
         _key56732_
         _string-table-update!56733_
         _default56734_)))
    (define __string-table-update!
      (lambda (_tab56685_
               _key56686_
               _string-table-update!56687_
               _default56688_)
        (let ((_table56691_ (&raw-table-table _tab56685_))
              (_seed56692_ (&raw-table-seed _tab56685_)))
          (let* ((_h56694_ (fxxor (##string=?-hash _key56686_) _seed56692_))
                 (_size56697_ (vector-length _table56691_))
                 (_entries56700_ (fxquotient _size56697_ '2))
                 (_start56703_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56694_ _entries56700_)
                   '1)))
            (let _loop56707_ ((_probe56710_ _start56703_)
                              (_i56712_ '1)
                              (_deleted56714_ '#f))
              (let ((_k56717_ (vector-ref _table56691_ _probe56710_)))
                (if (eq? _k56717_ (macro-unused-obj))
                    (if _deleted56714_
                        (begin
                          (vector-set! _table56691_ _deleted56714_ _key56686_)
                          (vector-set!
                           _table56691_
                           (fx+ _deleted56714_ '1)
                           (_string-table-update!56687_ _default56688_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab56685_
                              (fx+ (&raw-table-count _tab56685_) '1)))))
                        (begin
                          (vector-set! _table56691_ _probe56710_ _key56686_)
                          (vector-set!
                           _table56691_
                           (fx+ _probe56710_ '1)
                           (_string-table-update!56687_ _default56688_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab56685_
                              (fx- (&raw-table-free _tab56685_) '1))
                             (&raw-table-count-set!
                              _tab56685_
                              (fx+ (&raw-table-count _tab56685_) '1))))))
                    (if (eq? _k56717_ (macro-deleted-obj))
                        (_loop56707_
                         (let ((_next-probe56722_
                                (fx+ _start56703_
                                     _i56712_
                                     (fx* _i56712_ _i56712_))))
                           (fxmodulo _next-probe56722_ _size56697_))
                         (fx+ _i56712_ '1)
                         (let ((_$e56725_ _deleted56714_))
                           (if _$e56725_ _$e56725_ _probe56710_)))
                        (if (##string=? _key56686_ _k56717_)
                            (begin
                              (vector-set!
                               _table56691_
                               _probe56710_
                               _key56686_)
                              (vector-set!
                               _table56691_
                               (fx+ _probe56710_ '1)
                               (_string-table-update!56687_
                                (vector-ref
                                 _table56691_
                                 (fx+ _probe56710_ '1)))))
                            (_loop56707_
                             (let ((_next-probe56728_
                                    (fx+ _start56703_
                                         _i56712_
                                         (fx* _i56712_ _i56712_))))
                               (fxmodulo _next-probe56728_ _size56697_))
                             (fx+ _i56712_ '1)
                             _deleted56714_))))))))))
    (define string-table-delete!
      (lambda (_tab56644_ _key56646_)
        (let ((_table56649_ (&raw-table-table _tab56644_))
              (_seed56651_ (&raw-table-seed _tab56644_)))
          (let* ((_h56654_ (fxxor (##string=?-hash _key56646_) _seed56651_))
                 (_size56657_ (vector-length _table56649_))
                 (_entries56660_ (fxquotient _size56657_ '2))
                 (_start56663_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56654_ _entries56660_)
                   '1)))
            (let _loop56667_ ((_probe56670_ _start56663_) (_i56672_ '1))
              (let ((_k56675_ (vector-ref _table56649_ _probe56670_)))
                (if (eq? _k56675_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k56675_ (macro-deleted-obj))
                        (_loop56667_
                         (let ((_next-probe56678_
                                (fx+ _start56663_
                                     _i56672_
                                     (fx* _i56672_ _i56672_))))
                           (fxmodulo _next-probe56678_ _size56657_))
                         (fx+ _i56672_ '1))
                        (if (##string=? _key56646_ _k56675_)
                            (begin
                              (vector-set!
                               _table56649_
                               _probe56670_
                               (macro-deleted-obj))
                              (vector-set!
                               _table56649_
                               (fx+ _probe56670_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab56644_
                                  (fx- (&raw-table-count _tab56644_) '1)))))
                            (_loop56667_
                             (let ((_next-probe56682_
                                    (fx+ _start56663_
                                         _i56672_
                                         (fx* _i56672_ _i56672_))))
                               (fxmodulo _next-probe56682_ _size56657_))
                             (fx+ _i56672_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_size-hint56625_ _seed56627_)
        (make-raw-table__% _size-hint56625_ immediate-hash eq? _seed56627_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_size-hint56633_ '#f) (_seed56635_ '0))
          (make-immediate-table__% _size-hint56633_ _seed56635_))))
    (define make-immediate-table__1
      (lambda (_size-hint56637_)
        (let ((_seed56639_ '0))
          (make-immediate-table__% _size-hint56637_ _seed56639_))))
    (define make-immediate-table
      (lambda _g57781_
        (let ((_g57780_ (##length _g57781_)))
          (cond ((##fx= _g57780_ 0)
                 (apply (lambda () (make-immediate-table__0)) _g57781_))
                ((##fx= _g57780_ 1)
                 (apply (lambda (_size-hint56637_)
                          (make-immediate-table__1 _size-hint56637_))
                        _g57781_))
                ((##fx= _g57780_ 2)
                 (apply (lambda (_size-hint56641_ _seed56642_)
                          (make-immediate-table__%
                           _size-hint56641_
                           _seed56642_))
                        _g57781_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g57781_))))))
    (define immediate-table-ref
      (lambda (_tab56582_ _key56583_ _default56584_)
        (let ((_table56586_ (&raw-table-table _tab56582_))
              (_seed56587_ (&raw-table-seed _tab56582_)))
          (let* ((_h56589_ (fxxor (immediate-hash _key56583_) _seed56587_))
                 (_size56592_ (vector-length _table56586_))
                 (_entries56595_ (fxquotient _size56592_ '2))
                 (_start56598_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56589_ _entries56595_)
                   '1)))
            (let _loop56602_ ((_probe56605_ _start56598_)
                              (_i56607_ '1)
                              (_deleted56609_ '#f))
              (let ((_k56612_ (vector-ref _table56586_ _probe56605_)))
                (if (eq? _k56612_ (macro-unused-obj))
                    _default56584_
                    (if (eq? _k56612_ (macro-deleted-obj))
                        (_loop56602_
                         (let ((_next-probe56615_
                                (fx+ _start56598_
                                     _i56607_
                                     (fx* _i56607_ _i56607_))))
                           (fxmodulo _next-probe56615_ _size56592_))
                         (fx+ _i56607_ '1)
                         (let ((_$e56618_ _deleted56609_))
                           (if _$e56618_ _$e56618_ _probe56605_)))
                        (if (eq? _key56583_ _k56612_)
                            (vector-ref _table56586_ (fx+ _probe56605_ '1))
                            (_loop56602_
                             (let ((_next-probe56621_
                                    (fx+ _start56598_
                                         _i56607_
                                         (fx* _i56607_ _i56607_))))
                               (fxmodulo _next-probe56621_ _size56592_))
                             (fx+ _i56607_ '1)
                             _deleted56609_))))))))))
    (define immediate-table-set!
      (lambda (_tab56578_ _key56579_ _value56580_)
        (if (fx< (&raw-table-free _tab56578_)
                 (fxquotient (vector-length (&raw-table-table _tab56578_)) '4))
            (__raw-table-rehash! _tab56578_)
            '#!void)
        (__immediate-table-set! _tab56578_ _key56579_ _value56580_)))
    (define __immediate-table-set!
      (lambda (_tab56533_ _key56534_ _value56535_)
        (let ((_table56538_ (&raw-table-table _tab56533_))
              (_seed56539_ (&raw-table-seed _tab56533_)))
          (let* ((_h56541_ (fxxor (immediate-hash _key56534_) _seed56539_))
                 (_size56544_ (vector-length _table56538_))
                 (_entries56547_ (fxquotient _size56544_ '2))
                 (_start56550_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56541_ _entries56547_)
                   '1)))
            (let _loop56554_ ((_probe56557_ _start56550_)
                              (_i56559_ '1)
                              (_deleted56561_ '#f))
              (let ((_k56564_ (vector-ref _table56538_ _probe56557_)))
                (if (eq? _k56564_ (macro-unused-obj))
                    (if _deleted56561_
                        (begin
                          (vector-set! _table56538_ _deleted56561_ _key56534_)
                          (vector-set!
                           _table56538_
                           (fx+ _deleted56561_ '1)
                           _value56535_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab56533_
                              (fx+ (&raw-table-count _tab56533_) '1)))))
                        (begin
                          (vector-set! _table56538_ _probe56557_ _key56534_)
                          (vector-set!
                           _table56538_
                           (fx+ _probe56557_ '1)
                           _value56535_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab56533_
                              (fx- (&raw-table-free _tab56533_) '1))
                             (&raw-table-count-set!
                              _tab56533_
                              (fx+ (&raw-table-count _tab56533_) '1))))))
                    (if (eq? _k56564_ (macro-deleted-obj))
                        (_loop56554_
                         (let ((_next-probe56569_
                                (fx+ _start56550_
                                     _i56559_
                                     (fx* _i56559_ _i56559_))))
                           (fxmodulo _next-probe56569_ _size56544_))
                         (fx+ _i56559_ '1)
                         (let ((_$e56572_ _deleted56561_))
                           (if _$e56572_ _$e56572_ _probe56557_)))
                        (if (eq? _key56534_ _k56564_)
                            (begin
                              (vector-set!
                               _table56538_
                               _probe56557_
                               _key56534_)
                              (vector-set!
                               _table56538_
                               (fx+ _probe56557_ '1)
                               _value56535_))
                            (_loop56554_
                             (let ((_next-probe56575_
                                    (fx+ _start56550_
                                         _i56559_
                                         (fx* _i56559_ _i56559_))))
                               (fxmodulo _next-probe56575_ _size56544_))
                             (fx+ _i56559_ '1)
                             _deleted56561_))))))))))
    (define immediate-table-update!
      (lambda (_tab56528_
               _key56529_
               _immediate-table-update!56530_
               _default56531_)
        (if (fx< (&raw-table-free _tab56528_)
                 (fxquotient (vector-length (&raw-table-table _tab56528_)) '4))
            (__raw-table-rehash! _tab56528_)
            '#!void)
        (__immediate-table-update!
         _tab56528_
         _key56529_
         _immediate-table-update!56530_
         _default56531_)))
    (define __immediate-table-update!
      (lambda (_tab56482_
               _key56483_
               _immediate-table-update!56484_
               _default56485_)
        (let ((_table56488_ (&raw-table-table _tab56482_))
              (_seed56489_ (&raw-table-seed _tab56482_)))
          (let* ((_h56491_ (fxxor (immediate-hash _key56483_) _seed56489_))
                 (_size56494_ (vector-length _table56488_))
                 (_entries56497_ (fxquotient _size56494_ '2))
                 (_start56500_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56491_ _entries56497_)
                   '1)))
            (let _loop56504_ ((_probe56507_ _start56500_)
                              (_i56509_ '1)
                              (_deleted56511_ '#f))
              (let ((_k56514_ (vector-ref _table56488_ _probe56507_)))
                (if (eq? _k56514_ (macro-unused-obj))
                    (if _deleted56511_
                        (begin
                          (vector-set! _table56488_ _deleted56511_ _key56483_)
                          (vector-set!
                           _table56488_
                           (fx+ _deleted56511_ '1)
                           (_immediate-table-update!56484_ _default56485_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab56482_
                              (fx+ (&raw-table-count _tab56482_) '1)))))
                        (begin
                          (vector-set! _table56488_ _probe56507_ _key56483_)
                          (vector-set!
                           _table56488_
                           (fx+ _probe56507_ '1)
                           (_immediate-table-update!56484_ _default56485_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab56482_
                              (fx- (&raw-table-free _tab56482_) '1))
                             (&raw-table-count-set!
                              _tab56482_
                              (fx+ (&raw-table-count _tab56482_) '1))))))
                    (if (eq? _k56514_ (macro-deleted-obj))
                        (_loop56504_
                         (let ((_next-probe56519_
                                (fx+ _start56500_
                                     _i56509_
                                     (fx* _i56509_ _i56509_))))
                           (fxmodulo _next-probe56519_ _size56494_))
                         (fx+ _i56509_ '1)
                         (let ((_$e56522_ _deleted56511_))
                           (if _$e56522_ _$e56522_ _probe56507_)))
                        (if (eq? _key56483_ _k56514_)
                            (begin
                              (vector-set!
                               _table56488_
                               _probe56507_
                               _key56483_)
                              (vector-set!
                               _table56488_
                               (fx+ _probe56507_ '1)
                               (_immediate-table-update!56484_
                                (vector-ref
                                 _table56488_
                                 (fx+ _probe56507_ '1)))))
                            (_loop56504_
                             (let ((_next-probe56525_
                                    (fx+ _start56500_
                                         _i56509_
                                         (fx* _i56509_ _i56509_))))
                               (fxmodulo _next-probe56525_ _size56494_))
                             (fx+ _i56509_ '1)
                             _deleted56511_))))))))))
    (define immediate-table-delete!
      (lambda (_tab56441_ _key56443_)
        (let ((_table56446_ (&raw-table-table _tab56441_))
              (_seed56448_ (&raw-table-seed _tab56441_)))
          (let* ((_h56451_ (fxxor (immediate-hash _key56443_) _seed56448_))
                 (_size56454_ (vector-length _table56446_))
                 (_entries56457_ (fxquotient _size56454_ '2))
                 (_start56460_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56451_ _entries56457_)
                   '1)))
            (let _loop56464_ ((_probe56467_ _start56460_) (_i56469_ '1))
              (let ((_k56472_ (vector-ref _table56446_ _probe56467_)))
                (if (eq? _k56472_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k56472_ (macro-deleted-obj))
                        (_loop56464_
                         (let ((_next-probe56475_
                                (fx+ _start56460_
                                     _i56469_
                                     (fx* _i56469_ _i56469_))))
                           (fxmodulo _next-probe56475_ _size56454_))
                         (fx+ _i56469_ '1))
                        (if (eq? _key56443_ _k56472_)
                            (begin
                              (vector-set!
                               _table56446_
                               _probe56467_
                               (macro-deleted-obj))
                              (vector-set!
                               _table56446_
                               (fx+ _probe56467_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab56441_
                                  (fx- (&raw-table-count _tab56441_) '1)))))
                            (_loop56464_
                             (let ((_next-probe56479_
                                    (fx+ _start56460_
                                         _i56469_
                                         (fx* _i56469_ _i56469_))))
                               (fxmodulo _next-probe56479_ _size56454_))
                             (fx+ _i56469_ '1)))))))))))
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
      (lambda (_tab56439_)
        (##unchecked-structure-ref
         _tab56439_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_tab56437_)
        (##unchecked-structure-ref
         _tab56437_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_tab56434_ _val56435_)
        (##unchecked-structure-set!
         _tab56434_
         _val56435_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_tab56431_ _val56432_)
        (##unchecked-structure-set!
         _tab56431_
         _val56432_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_size-hint56407_ _klass56408_ _flags56409_)
        (let ((_gcht56411_
               (__gc-table-new
                (if (fixnum? _size-hint56407_) _size-hint56407_ '16)
                _flags56409_)))
          (##structure _klass56408_ _gcht56411_ '#f))))
    (define make-gc-table__0
      (lambda (_size-hint56416_)
        (let* ((_klass56418_ __gc-table::t) (_flags56420_ '0))
          (make-gc-table__% _size-hint56416_ _klass56418_ _flags56420_))))
    (define make-gc-table__1
      (lambda (_size-hint56422_ _klass56423_)
        (let ((_flags56425_ '0))
          (make-gc-table__% _size-hint56422_ _klass56423_ _flags56425_))))
    (define make-gc-table
      (lambda _g57783_
        (let ((_g57782_ (##length _g57783_)))
          (cond ((##fx= _g57782_ 1)
                 (apply (lambda (_size-hint56416_)
                          (make-gc-table__0 _size-hint56416_))
                        _g57783_))
                ((##fx= _g57782_ 2)
                 (apply (lambda (_size-hint56422_ _klass56423_)
                          (make-gc-table__1 _size-hint56422_ _klass56423_))
                        _g57783_))
                ((##fx= _g57782_ 3)
                 (apply (lambda (_size-hint56427_ _klass56428_ _flags56429_)
                          (make-gc-table__%
                           _size-hint56427_
                           _klass56428_
                           _flags56429_))
                        _g57783_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g57783_))))))
    (define __gc-table-immediate
      (lambda (_tab56399_)
        (let ((_$e56401_ (&gc-table-immediate _tab56399_)))
          (if _$e56401_
              _$e56401_
              (let ((_immediate56404_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _tab56399_ _immediate56404_)
                _immediate56404_)))))
    (define __gc-table-new
      (lambda (_size56389_ _flags56390_)
        (let* ((_flags56392_
                (fxand _flags56390_
                       (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_flags56394_
                (fxior _flags56392_ (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_gcht56396_
                (##gc-hash-table-allocate
                 _size56389_
                 _flags56394_
                 __gc-table-loads)))
          _gcht56396_)))
    (define __gc-table-e
      (lambda (_tab56384_)
        (declare (not interrupts-enabled))
        (let ((_gcht56387_ (&gc-table-gcht _tab56384_)))
          (if (fx= '0
                   (fxand (macro-gc-hash-table-flags _gcht56387_)
                          (macro-gc-hash-table-flag-need-rehash)))
              _gcht56387_
              (begin
                (__gc-table-rehash! _tab56384_)
                (&gc-table-gcht _tab56384_))))))
    (define __gc-table-rehash!
      (lambda (_tab56375_)
        (let* ((_old-table56377_ (&gc-table-gcht _tab56375_))
               (_new-table56379_
                (##gc-hash-table-resize! _old-table56377_ __gc-table-loads))
               (_gcht56381_
                (##gc-hash-table-rehash! _old-table56377_ _new-table56379_)))
          (&gc-table-gcht-set! _tab56375_ _gcht56381_))))
    (define gc-table-ref
      (lambda (_tab56361_ _key56362_ _default56363_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key56362_)
            (let* ((_gcht56366_ (__gc-table-e _tab56361_))
                   (_value56368_ (##gc-hash-table-ref _gcht56366_ _key56362_)))
              (if (eq? _value56368_ (macro-unused-obj))
                  _default56363_
                  _value56368_))
            (let ((_$e56370_ (&gc-table-immediate _tab56361_)))
              (if _$e56370_
                  ((lambda (_immediate56373_)
                     (immediate-table-ref
                      _immediate56373_
                      _key56362_
                      _default56363_))
                   _$e56370_)
                  _default56363_)))))
    (define gc-table-set!
      (lambda (_tab56354_ _key56355_ _value56356_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key56355_)
            (let ((_gcht56359_ (__gc-table-e _tab56354_)))
              (if (##gc-hash-table-set! _gcht56359_ _key56355_ _value56356_)
                  (begin
                    (__gc-table-rehash! _tab56354_)
                    (gc-table-set! _tab56354_ _key56355_ _value56356_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _tab56354_)
             _key56355_
             _value56356_))))
    (define gc-table-update!
      (lambda (_tab56347_ _key56348_ _update56349_ _default56350_)
        (if (##mem-allocated? _key56348_)
            (let ((_value56352_
                   (gc-table-ref _tab56347_ _key56348_ _default56350_)))
              (gc-table-set!
               _tab56347_
               _key56348_
               (_update56349_ _value56352_)))
            (immediate-table-update!
             (__gc-table-immediate _tab56347_)
             _key56348_
             _update56349_
             _default56350_))))
    (define gc-table-delete!
      (lambda (_tab56336_ _key56337_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key56337_)
            (let ((_gcht56340_ (__gc-table-e _tab56336_)))
              (if (##gc-hash-table-set!
                   _gcht56340_
                   _key56337_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _tab56336_)
                    (gc-table-delete! _tab56336_ _key56337_))
                  '#!void))
            (let ((_$e56342_ (&gc-table-immediate _tab56336_)))
              (if _$e56342_
                  ((lambda (_immediate56345_)
                     (immediate-table-delete! _immediate56345_ _key56337_))
                   _$e56342_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_tab56317_ _proc56318_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_gcht56321_ (__gc-table-e _tab56317_)))
            (let _loop56323_ ((_i56325_ (macro-gc-hash-table-key0)))
              (if (fx< _i56325_ (##vector-length _gcht56321_))
                  (let ((_key56327_ (##vector-ref _gcht56321_ _i56325_)))
                    (if (and (not (eq? _key56327_ (macro-unused-obj)))
                             (not (eq? _key56327_ (macro-deleted-obj))))
                        (_proc56318_
                         _key56327_
                         (##vector-ref _gcht56321_ (fx+ _i56325_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_loop56323_ (fx+ _i56325_ '2))))
                  '#!void)))
          (let ((_$e56331_ (&gc-table-immediate _tab56317_)))
            (if _$e56331_
                ((lambda (_immediate56334_)
                   (raw-table-for-each _immediate56334_ _proc56318_))
                 _$e56331_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_tab56305_)
        (let* ((_gcht56307_ (__gc-table-e _tab56305_))
               (_new-table56309_
                (__gc-table-new
                 (macro-gc-hash-table-count _gcht56307_)
                 (macro-gc-hash-table-flags _gcht56307_)))
               (_result56311_
                (##structure
                 (##structure-type _tab56305_)
                 _new-table56309_
                 '#f)))
          (gc-table-for-each
           _tab56305_
           (lambda (_k56314_ _v56315_)
             (gc-table-set! _result56311_ _k56314_ _v56315_)))
          _result56311_)))
    (define gc-table-clear!
      (lambda (_tab56298_)
        (let* ((_gcht56300_ (__gc-table-e _tab56298_))
               (_new-table56302_
                (__gc-table-new '16 (macro-gc-hash-table-flags _gcht56300_))))
          (&gc-table-gcht-set! _tab56298_ _new-table56302_)
          (&gc-table-immediate-set! _tab56298_ '#f))))
    (define gc-table-length
      (lambda (_tab56291_)
        (let ((_gcht56293_ (__gc-table-e _tab56291_)))
          (fx+ (macro-gc-hash-table-count _gcht56293_)
               (let ((_$e56295_ (&gc-table-immediate _tab56291_)))
                 (if _$e56295_ (&raw-table-count _$e56295_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_obj56276_)
        (declare (not interrupts-enabled))
        (let ((_val56279_ (gc-table-ref __object-eq-hash _obj56276_ '#f)))
          (if _val56279_
              _val56279_
              (let* ((_mix56281_ __object-eq-hash-next)
                     (_ptr56283_ (##type-cast _obj56276_ '0))
                     (_h56285_
                      (fxand (fxxor _mix56281_ _ptr56283_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_$e56288_ (##fx+? __object-eq-hash-next '1)))
                        (if _$e56288_ _$e56288_ '0)))
                (gc-table-set! __object-eq-hash _obj56276_ _h56285_)
                _h56285_)))))))
