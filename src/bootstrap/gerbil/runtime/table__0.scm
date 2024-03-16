(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1710617600)
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
      (lambda (_tab57729_)
        (##unchecked-structure-ref _tab57729_ '1 __table::t 'raw-table-table)))
    (define &raw-table-count
      (lambda (_tab57727_)
        (##unchecked-structure-ref _tab57727_ '2 __table::t 'raw-table-count)))
    (define &raw-table-free
      (lambda (_tab57725_)
        (##unchecked-structure-ref _tab57725_ '3 __table::t 'raw-table-free)))
    (define &raw-table-hash
      (lambda (_tab57723_)
        (##unchecked-structure-ref _tab57723_ '4 __table::t 'raw-table-hash)))
    (define &raw-table-test
      (lambda (_tab57721_)
        (##unchecked-structure-ref _tab57721_ '5 __table::t 'raw-table-test)))
    (define &raw-table-seed
      (lambda (_tab57719_)
        (##unchecked-structure-ref _tab57719_ '6 __table::t 'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_tab57716_ _val57717_)
        (##unchecked-structure-set!
         _tab57716_
         _val57717_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_tab57713_ _val57714_)
        (##unchecked-structure-set!
         _tab57713_
         _val57714_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_tab57710_ _val57711_)
        (##unchecked-structure-set!
         _tab57710_
         _val57711_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_tab57707_ _val57708_)
        (##unchecked-structure-set!
         _tab57707_
         _val57708_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_tab57704_ _val57705_)
        (##unchecked-structure-set!
         _tab57704_
         _val57705_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_tab57701_ _val57702_)
        (##unchecked-structure-set!
         _tab57701_
         _val57702_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_size-hint57699_)
        (if (and (fixnum? _size-hint57699_) (fx> _size-hint57699_ '0))
            (fx* (fxmax '2 (expt '2 (integer-length _size-hint57699_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_size-hint57675_ _hash57676_ _test57677_ _seed57678_)
        (let* ((_size57680_ (raw-table-size-hint->size _size-hint57675_))
               (_table57682_ (make-vector _size57680_ (macro-unused-obj))))
          (##structure
           __table::t
           _table57682_
           '0
           (fxquotient _size57680_ '2)
           _hash57676_
           _test57677_
           _seed57678_))))
    (define make-raw-table__0
      (lambda (_size-hint57688_ _hash57689_ _test57690_)
        (let ((_seed57692_ '0))
          (make-raw-table__%
           _size-hint57688_
           _hash57689_
           _test57690_
           _seed57692_))))
    (define make-raw-table
      (lambda _g57731_
        (let ((_g57730_ (##length _g57731_)))
          (cond ((##fx= _g57730_ 3)
                 (apply (lambda (_size-hint57688_ _hash57689_ _test57690_)
                          (make-raw-table__0
                           _size-hint57688_
                           _hash57689_
                           _test57690_))
                        _g57731_))
                ((##fx= _g57730_ 4)
                 (apply (lambda (_size-hint57694_
                                 _hash57695_
                                 _test57696_
                                 _seed57697_)
                          (make-raw-table__%
                           _size-hint57694_
                           _hash57695_
                           _test57696_
                           _seed57697_))
                        _g57731_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g57731_))))))
    (define raw-table-ref
      (lambda (_tab57630_ _key57631_ _default57632_)
        (let ((_table57634_ (&raw-table-table _tab57630_))
              (_seed57635_ (&raw-table-seed _tab57630_))
              (_hash57636_ (&raw-table-hash _tab57630_))
              (_test57637_ (&raw-table-test _tab57630_)))
          (let* ((_h57639_ (fxxor (_hash57636_ _key57631_) _seed57635_))
                 (_size57642_ (vector-length _table57634_))
                 (_entries57645_ (fxquotient _size57642_ '2))
                 (_start57648_
                  (fxarithmetic-shift-left
                   (fxmodulo _h57639_ _entries57645_)
                   '1)))
            (let _loop57652_ ((_probe57655_ _start57648_)
                              (_i57657_ '1)
                              (_deleted57659_ '#f))
              (let ((_k57662_ (vector-ref _table57634_ _probe57655_)))
                (if (eq? _k57662_ (macro-unused-obj))
                    _default57632_
                    (if (eq? _k57662_ (macro-deleted-obj))
                        (_loop57652_
                         (let ((_next-probe57665_
                                (fx+ _start57648_
                                     _i57657_
                                     (fx* _i57657_ _i57657_))))
                           (fxmodulo _next-probe57665_ _size57642_))
                         (fx+ _i57657_ '1)
                         (let ((_$e57668_ _deleted57659_))
                           (if _$e57668_ _$e57668_ _probe57655_)))
                        (if (_test57637_ _key57631_ _k57662_)
                            (vector-ref _table57634_ (fx+ _probe57655_ '1))
                            (_loop57652_
                             (let ((_next-probe57671_
                                    (fx+ _start57648_
                                         _i57657_
                                         (fx* _i57657_ _i57657_))))
                               (fxmodulo _next-probe57671_ _size57642_))
                             (fx+ _i57657_ '1)
                             _deleted57659_))))))))))
    (define raw-table-set!
      (lambda (_tab57626_ _key57627_ _value57628_)
        (if (fx< (&raw-table-free _tab57626_)
                 (fxquotient (vector-length (&raw-table-table _tab57626_)) '4))
            (__raw-table-rehash! _tab57626_)
            '#!void)
        (__raw-table-set! _tab57626_ _key57627_ _value57628_)))
    (define raw-table-update!
      (lambda (_tab57621_ _key57622_ _update57623_ _default57624_)
        (if (fx< (&raw-table-free _tab57621_)
                 (fxquotient (vector-length (&raw-table-table _tab57621_)) '4))
            (__raw-table-rehash! _tab57621_)
            '#!void)
        (__raw-table-update!
         _tab57621_
         _key57622_
         _update57623_
         _default57624_)))
    (define raw-table-delete!
      (lambda (_tab57582_ _key57583_)
        (let ((_table57585_ (&raw-table-table _tab57582_))
              (_seed57586_ (&raw-table-seed _tab57582_))
              (_hash57587_ (&raw-table-hash _tab57582_))
              (_test57588_ (&raw-table-test _tab57582_)))
          (let* ((_h57590_ (fxxor (_hash57587_ _key57583_) _seed57586_))
                 (_size57593_ (vector-length _table57585_))
                 (_entries57596_ (fxquotient _size57593_ '2))
                 (_start57599_
                  (fxarithmetic-shift-left
                   (fxmodulo _h57590_ _entries57596_)
                   '1)))
            (let _loop57603_ ((_probe57606_ _start57599_) (_i57608_ '1))
              (let ((_k57611_ (vector-ref _table57585_ _probe57606_)))
                (if (eq? _k57611_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k57611_ (macro-deleted-obj))
                        (_loop57603_
                         (let ((_next-probe57614_
                                (fx+ _start57599_
                                     _i57608_
                                     (fx* _i57608_ _i57608_))))
                           (fxmodulo _next-probe57614_ _size57593_))
                         (fx+ _i57608_ '1))
                        (if (_test57588_ _key57583_ _k57611_)
                            (begin
                              (vector-set!
                               _table57585_
                               _probe57606_
                               (macro-deleted-obj))
                              (vector-set!
                               _table57585_
                               (fx+ _probe57606_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab57582_
                                  (fx- (&raw-table-count _tab57582_) '1)))))
                            (_loop57603_
                             (let ((_next-probe57618_
                                    (fx+ _start57599_
                                         _i57608_
                                         (fx* _i57608_ _i57608_))))
                               (fxmodulo _next-probe57618_ _size57593_))
                             (fx+ _i57608_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_tab57566_ _proc57567_)
        (let* ((_table57569_ (&raw-table-table _tab57566_))
               (_size57571_ (vector-length _table57569_)))
          (let _loop57574_ ((_i57576_ '0))
            (if (fx< _i57576_ _size57571_)
                (begin
                  (let ((_key57578_ (vector-ref _table57569_ _i57576_)))
                    (if (and (not (eq? _key57578_ (macro-unused-obj)))
                             (not (eq? _key57578_ (macro-deleted-obj))))
                        (let ((_value57580_
                               (vector-ref _table57569_ (fx+ _i57576_ '1))))
                          (_proc57567_ _key57578_ _value57580_))
                        '#!void))
                  (_loop57574_ (fx+ _i57576_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_tab57562_)
        (let ((_new-tab57564_ (##structure-copy _tab57562_)))
          (&raw-table-table-set!
           _new-tab57564_
           (vector-copy (&raw-table-table _tab57562_)))
          _new-tab57564_)))
    (define raw-table-clear!
      (lambda (_tab57560_)
        (vector-fill! (&raw-table-table _tab57560_) (macro-unused-obj))
        (&raw-table-count-set! _tab57560_ '0)
        (&raw-table-free-set!
         _tab57560_
         (fxquotient (vector-length (&raw-table-table _tab57560_)) '2))))
    (define __raw-table-set!
      (lambda (_tab57514_ _key57515_ _value57516_)
        (let ((_table57518_ (&raw-table-table _tab57514_))
              (_seed57519_ (&raw-table-seed _tab57514_))
              (_hash57520_ (&raw-table-hash _tab57514_))
              (_test57521_ (&raw-table-test _tab57514_)))
          (let* ((_h57523_ (fxxor (_hash57520_ _key57515_) _seed57519_))
                 (_size57526_ (vector-length _table57518_))
                 (_entries57529_ (fxquotient _size57526_ '2))
                 (_start57532_
                  (fxarithmetic-shift-left
                   (fxmodulo _h57523_ _entries57529_)
                   '1)))
            (let _loop57536_ ((_probe57539_ _start57532_)
                              (_i57541_ '1)
                              (_deleted57543_ '#f))
              (let ((_k57546_ (vector-ref _table57518_ _probe57539_)))
                (if (eq? _k57546_ (macro-unused-obj))
                    (if _deleted57543_
                        (begin
                          (vector-set! _table57518_ _deleted57543_ _key57515_)
                          (vector-set!
                           _table57518_
                           (fx+ _deleted57543_ '1)
                           _value57516_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab57514_
                              (fx+ (&raw-table-count _tab57514_) '1)))))
                        (begin
                          (vector-set! _table57518_ _probe57539_ _key57515_)
                          (vector-set!
                           _table57518_
                           (fx+ _probe57539_ '1)
                           _value57516_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab57514_
                              (fx- (&raw-table-free _tab57514_) '1))
                             (&raw-table-count-set!
                              _tab57514_
                              (fx+ (&raw-table-count _tab57514_) '1))))))
                    (if (eq? _k57546_ (macro-deleted-obj))
                        (_loop57536_
                         (let ((_next-probe57551_
                                (fx+ _start57532_
                                     _i57541_
                                     (fx* _i57541_ _i57541_))))
                           (fxmodulo _next-probe57551_ _size57526_))
                         (fx+ _i57541_ '1)
                         (let ((_$e57554_ _deleted57543_))
                           (if _$e57554_ _$e57554_ _probe57539_)))
                        (if (_test57521_ _key57515_ _k57546_)
                            (begin
                              (vector-set!
                               _table57518_
                               _probe57539_
                               _key57515_)
                              (vector-set!
                               _table57518_
                               (fx+ _probe57539_ '1)
                               _value57516_))
                            (_loop57536_
                             (let ((_next-probe57557_
                                    (fx+ _start57532_
                                         _i57541_
                                         (fx* _i57541_ _i57541_))))
                               (fxmodulo _next-probe57557_ _size57526_))
                             (fx+ _i57541_ '1)
                             _deleted57543_))))))))))
    (define __raw-table-update!
      (lambda (_tab57467_ _key57468_ _update57469_ _default57470_)
        (let ((_table57472_ (&raw-table-table _tab57467_))
              (_seed57473_ (&raw-table-seed _tab57467_))
              (_hash57474_ (&raw-table-hash _tab57467_))
              (_test57475_ (&raw-table-test _tab57467_)))
          (let* ((_h57477_ (fxxor (_hash57474_ _key57468_) _seed57473_))
                 (_size57480_ (vector-length _table57472_))
                 (_entries57483_ (fxquotient _size57480_ '2))
                 (_start57486_
                  (fxarithmetic-shift-left
                   (fxmodulo _h57477_ _entries57483_)
                   '1)))
            (let _loop57490_ ((_probe57493_ _start57486_)
                              (_i57495_ '1)
                              (_deleted57497_ '#f))
              (let ((_k57500_ (vector-ref _table57472_ _probe57493_)))
                (if (eq? _k57500_ (macro-unused-obj))
                    (if _deleted57497_
                        (begin
                          (vector-set! _table57472_ _deleted57497_ _key57468_)
                          (vector-set!
                           _table57472_
                           (fx+ _deleted57497_ '1)
                           (_update57469_ _default57470_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab57467_
                              (fx+ (&raw-table-count _tab57467_) '1)))))
                        (begin
                          (vector-set! _table57472_ _probe57493_ _key57468_)
                          (vector-set!
                           _table57472_
                           (fx+ _probe57493_ '1)
                           (_update57469_ _default57470_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab57467_
                              (fx- (&raw-table-free _tab57467_) '1))
                             (&raw-table-count-set!
                              _tab57467_
                              (fx+ (&raw-table-count _tab57467_) '1))))))
                    (if (eq? _k57500_ (macro-deleted-obj))
                        (_loop57490_
                         (let ((_next-probe57505_
                                (fx+ _start57486_
                                     _i57495_
                                     (fx* _i57495_ _i57495_))))
                           (fxmodulo _next-probe57505_ _size57480_))
                         (fx+ _i57495_ '1)
                         (let ((_$e57508_ _deleted57497_))
                           (if _$e57508_ _$e57508_ _probe57493_)))
                        (if (_test57475_ _key57468_ _k57500_)
                            (begin
                              (vector-set!
                               _table57472_
                               _probe57493_
                               _key57468_)
                              (vector-set!
                               _table57472_
                               (fx+ _probe57493_ '1)
                               (_update57469_
                                (vector-ref
                                 _table57472_
                                 (fx+ _probe57493_ '1)))))
                            (_loop57490_
                             (let ((_next-probe57511_
                                    (fx+ _start57486_
                                         _i57495_
                                         (fx* _i57495_ _i57495_))))
                               (fxmodulo _next-probe57511_ _size57480_))
                             (fx+ _i57495_ '1)
                             _deleted57497_))))))))))
    (define __raw-table-rehash!
      (lambda (_tab57448_)
        (let* ((_old-table57450_ (&raw-table-table _tab57448_))
               (_old-size57452_ (vector-length _old-table57450_))
               (_new-size57454_
                (if (fx< (&raw-table-count _tab57448_)
                         (fxquotient _old-size57452_ '4))
                    (vector-length _old-table57450_)
                    (fx* '2 (vector-length _old-table57450_))))
               (_new-table57456_
                (make-vector _new-size57454_ (macro-unused-obj))))
          (&raw-table-table-set! _tab57448_ _new-table57456_)
          (&raw-table-count-set! _tab57448_ '0)
          (&raw-table-free-set! _tab57448_ (fxquotient _new-size57454_ '2))
          (let _lp57459_ ((_i57461_ '0))
            (if (fx< _i57461_ _old-size57452_)
                (begin
                  (let ((_key57463_ (vector-ref _old-table57450_ _i57461_)))
                    (if (and (not (eq? _key57463_ (macro-unused-obj)))
                             (not (eq? _key57463_ (macro-deleted-obj))))
                        (let ((_value57465_
                               (vector-ref
                                _old-table57450_
                                (fx+ _i57461_ '1))))
                          (__raw-table-set!
                           _tab57448_
                           _key57463_
                           _value57465_))
                        '#!void))
                  (_lp57459_ (fx+ _i57461_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_obj57444_)
        (let ((_t57446_ (##type _obj57444_)))
          (if (fx= (fxand _t57446_ '1) '0)
              (fxand (##type-cast _obj57444_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _obj57444_)
                  (symbolic-hash _obj57444_)
                  (if (procedure? _obj57444_)
                      (procedure-hash _obj57444_)
                      (fxand (__eq-hash _obj57444_) (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_obj57440_)
        (let ((_h57442_
               (if (##closure? _obj57440_)
                   (__eq-hash _obj57440_)
                   (##type-cast _obj57440_ '0))))
          (fxand _h57442_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_obj57437_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _obj57437_)))
    (define eqv-hash
      (lambda (_obj57427_)
        (letrec ((_combine57429_
                  (lambda (_a57434_ _b57435_)
                    (fxand (fx* (fx+ _a57434_
                                     (fxarithmetic-shift-left _b57435_ '1))
                                '331804471)
                           (macro-max-fixnum32))))
                 (_hash57430_
                  (lambda (_obj57432_)
                    (macro-number-dispatch
                     _obj57432_
                     (eq-hash _obj57432_)
                     (fxand _obj57432_ (macro-max-fixnum32))
                     (modulo _obj57432_ '331804481)
                     (_combine57429_
                      (_hash57430_ (macro-ratnum-numerator _obj57432_))
                      (_hash57430_ (macro-ratnum-denominator _obj57432_)))
                     (_combine57429_
                      (##u16vector-ref _obj57432_ '0)
                      (_combine57429_
                       (##u16vector-ref _obj57432_ '1)
                       (_combine57429_
                        (##u16vector-ref _obj57432_ '2)
                        (##u16vector-ref _obj57432_ '3))))
                     (_combine57429_
                      (_hash57430_ (macro-cpxnum-real _obj57432_))
                      (_hash57430_ (macro-cpxnum-imag _obj57432_)))))))
          (_hash57430_ _obj57427_))))
    (define symbolic?
      (lambda (_obj57422_)
        (let ((_$e57424_ (symbol? _obj57422_)))
          (if _$e57424_ _$e57424_ (keyword? _obj57422_)))))
    (define symbolic-hash (lambda (_obj57420_) (macro-slot '1 _obj57420_)))
    (define string-hash (lambda (_obj57418_) (##string=?-hash _obj57418_)))
    (define immediate-hash
      (lambda (_obj57416_) (##type-cast _obj57416_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_size-hint57397_ _seed57399_)
        (make-raw-table__% _size-hint57397_ eq-hash eq? _seed57399_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_size-hint57405_ '#f) (_seed57407_ '0))
          (make-eq-table__% _size-hint57405_ _seed57407_))))
    (define make-eq-table__1
      (lambda (_size-hint57409_)
        (let ((_seed57411_ '0))
          (make-eq-table__% _size-hint57409_ _seed57411_))))
    (define make-eq-table
      (lambda _g57733_
        (let ((_g57732_ (##length _g57733_)))
          (cond ((##fx= _g57732_ 0)
                 (apply (lambda () (make-eq-table__0)) _g57733_))
                ((##fx= _g57732_ 1)
                 (apply (lambda (_size-hint57409_)
                          (make-eq-table__1 _size-hint57409_))
                        _g57733_))
                ((##fx= _g57732_ 2)
                 (apply (lambda (_size-hint57413_ _seed57414_)
                          (make-eq-table__% _size-hint57413_ _seed57414_))
                        _g57733_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g57733_))))))
    (define eq-table-ref
      (lambda (_tab57354_ _key57355_ _default57356_)
        (let ((_table57358_ (&raw-table-table _tab57354_))
              (_seed57359_ (&raw-table-seed _tab57354_)))
          (let* ((_h57361_ (fxxor (eq-hash _key57355_) _seed57359_))
                 (_size57364_ (vector-length _table57358_))
                 (_entries57367_ (fxquotient _size57364_ '2))
                 (_start57370_
                  (fxarithmetic-shift-left
                   (fxmodulo _h57361_ _entries57367_)
                   '1)))
            (let _loop57374_ ((_probe57377_ _start57370_)
                              (_i57379_ '1)
                              (_deleted57381_ '#f))
              (let ((_k57384_ (vector-ref _table57358_ _probe57377_)))
                (if (eq? _k57384_ (macro-unused-obj))
                    _default57356_
                    (if (eq? _k57384_ (macro-deleted-obj))
                        (_loop57374_
                         (let ((_next-probe57387_
                                (fx+ _start57370_
                                     _i57379_
                                     (fx* _i57379_ _i57379_))))
                           (fxmodulo _next-probe57387_ _size57364_))
                         (fx+ _i57379_ '1)
                         (let ((_$e57390_ _deleted57381_))
                           (if _$e57390_ _$e57390_ _probe57377_)))
                        (if (eq? _key57355_ _k57384_)
                            (vector-ref _table57358_ (fx+ _probe57377_ '1))
                            (_loop57374_
                             (let ((_next-probe57393_
                                    (fx+ _start57370_
                                         _i57379_
                                         (fx* _i57379_ _i57379_))))
                               (fxmodulo _next-probe57393_ _size57364_))
                             (fx+ _i57379_ '1)
                             _deleted57381_))))))))))
    (define eq-table-set!
      (lambda (_tab57350_ _key57351_ _value57352_)
        (if (fx< (&raw-table-free _tab57350_)
                 (fxquotient (vector-length (&raw-table-table _tab57350_)) '4))
            (__raw-table-rehash! _tab57350_)
            '#!void)
        (__eq-table-set! _tab57350_ _key57351_ _value57352_)))
    (define __eq-table-set!
      (lambda (_tab57305_ _key57306_ _value57307_)
        (let ((_table57310_ (&raw-table-table _tab57305_))
              (_seed57311_ (&raw-table-seed _tab57305_)))
          (let* ((_h57313_ (fxxor (eq-hash _key57306_) _seed57311_))
                 (_size57316_ (vector-length _table57310_))
                 (_entries57319_ (fxquotient _size57316_ '2))
                 (_start57322_
                  (fxarithmetic-shift-left
                   (fxmodulo _h57313_ _entries57319_)
                   '1)))
            (let _loop57326_ ((_probe57329_ _start57322_)
                              (_i57331_ '1)
                              (_deleted57333_ '#f))
              (let ((_k57336_ (vector-ref _table57310_ _probe57329_)))
                (if (eq? _k57336_ (macro-unused-obj))
                    (if _deleted57333_
                        (begin
                          (vector-set! _table57310_ _deleted57333_ _key57306_)
                          (vector-set!
                           _table57310_
                           (fx+ _deleted57333_ '1)
                           _value57307_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab57305_
                              (fx+ (&raw-table-count _tab57305_) '1)))))
                        (begin
                          (vector-set! _table57310_ _probe57329_ _key57306_)
                          (vector-set!
                           _table57310_
                           (fx+ _probe57329_ '1)
                           _value57307_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab57305_
                              (fx- (&raw-table-free _tab57305_) '1))
                             (&raw-table-count-set!
                              _tab57305_
                              (fx+ (&raw-table-count _tab57305_) '1))))))
                    (if (eq? _k57336_ (macro-deleted-obj))
                        (_loop57326_
                         (let ((_next-probe57341_
                                (fx+ _start57322_
                                     _i57331_
                                     (fx* _i57331_ _i57331_))))
                           (fxmodulo _next-probe57341_ _size57316_))
                         (fx+ _i57331_ '1)
                         (let ((_$e57344_ _deleted57333_))
                           (if _$e57344_ _$e57344_ _probe57329_)))
                        (if (eq? _key57306_ _k57336_)
                            (begin
                              (vector-set!
                               _table57310_
                               _probe57329_
                               _key57306_)
                              (vector-set!
                               _table57310_
                               (fx+ _probe57329_ '1)
                               _value57307_))
                            (_loop57326_
                             (let ((_next-probe57347_
                                    (fx+ _start57322_
                                         _i57331_
                                         (fx* _i57331_ _i57331_))))
                               (fxmodulo _next-probe57347_ _size57316_))
                             (fx+ _i57331_ '1)
                             _deleted57333_))))))))))
    (define eq-table-update!
      (lambda (_tab57300_ _key57301_ _eq-table-update!57302_ _default57303_)
        (if (fx< (&raw-table-free _tab57300_)
                 (fxquotient (vector-length (&raw-table-table _tab57300_)) '4))
            (__raw-table-rehash! _tab57300_)
            '#!void)
        (__eq-table-update!
         _tab57300_
         _key57301_
         _eq-table-update!57302_
         _default57303_)))
    (define __eq-table-update!
      (lambda (_tab57254_ _key57255_ _eq-table-update!57256_ _default57257_)
        (let ((_table57260_ (&raw-table-table _tab57254_))
              (_seed57261_ (&raw-table-seed _tab57254_)))
          (let* ((_h57263_ (fxxor (eq-hash _key57255_) _seed57261_))
                 (_size57266_ (vector-length _table57260_))
                 (_entries57269_ (fxquotient _size57266_ '2))
                 (_start57272_
                  (fxarithmetic-shift-left
                   (fxmodulo _h57263_ _entries57269_)
                   '1)))
            (let _loop57276_ ((_probe57279_ _start57272_)
                              (_i57281_ '1)
                              (_deleted57283_ '#f))
              (let ((_k57286_ (vector-ref _table57260_ _probe57279_)))
                (if (eq? _k57286_ (macro-unused-obj))
                    (if _deleted57283_
                        (begin
                          (vector-set! _table57260_ _deleted57283_ _key57255_)
                          (vector-set!
                           _table57260_
                           (fx+ _deleted57283_ '1)
                           (_eq-table-update!57256_ _default57257_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab57254_
                              (fx+ (&raw-table-count _tab57254_) '1)))))
                        (begin
                          (vector-set! _table57260_ _probe57279_ _key57255_)
                          (vector-set!
                           _table57260_
                           (fx+ _probe57279_ '1)
                           (_eq-table-update!57256_ _default57257_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab57254_
                              (fx- (&raw-table-free _tab57254_) '1))
                             (&raw-table-count-set!
                              _tab57254_
                              (fx+ (&raw-table-count _tab57254_) '1))))))
                    (if (eq? _k57286_ (macro-deleted-obj))
                        (_loop57276_
                         (let ((_next-probe57291_
                                (fx+ _start57272_
                                     _i57281_
                                     (fx* _i57281_ _i57281_))))
                           (fxmodulo _next-probe57291_ _size57266_))
                         (fx+ _i57281_ '1)
                         (let ((_$e57294_ _deleted57283_))
                           (if _$e57294_ _$e57294_ _probe57279_)))
                        (if (eq? _key57255_ _k57286_)
                            (begin
                              (vector-set!
                               _table57260_
                               _probe57279_
                               _key57255_)
                              (vector-set!
                               _table57260_
                               (fx+ _probe57279_ '1)
                               (_eq-table-update!57256_
                                (vector-ref
                                 _table57260_
                                 (fx+ _probe57279_ '1)))))
                            (_loop57276_
                             (let ((_next-probe57297_
                                    (fx+ _start57272_
                                         _i57281_
                                         (fx* _i57281_ _i57281_))))
                               (fxmodulo _next-probe57297_ _size57266_))
                             (fx+ _i57281_ '1)
                             _deleted57283_))))))))))
    (define eq-table-delete!
      (lambda (_tab57213_ _key57215_)
        (let ((_table57218_ (&raw-table-table _tab57213_))
              (_seed57220_ (&raw-table-seed _tab57213_)))
          (let* ((_h57223_ (fxxor (eq-hash _key57215_) _seed57220_))
                 (_size57226_ (vector-length _table57218_))
                 (_entries57229_ (fxquotient _size57226_ '2))
                 (_start57232_
                  (fxarithmetic-shift-left
                   (fxmodulo _h57223_ _entries57229_)
                   '1)))
            (let _loop57236_ ((_probe57239_ _start57232_) (_i57241_ '1))
              (let ((_k57244_ (vector-ref _table57218_ _probe57239_)))
                (if (eq? _k57244_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k57244_ (macro-deleted-obj))
                        (_loop57236_
                         (let ((_next-probe57247_
                                (fx+ _start57232_
                                     _i57241_
                                     (fx* _i57241_ _i57241_))))
                           (fxmodulo _next-probe57247_ _size57226_))
                         (fx+ _i57241_ '1))
                        (if (eq? _key57215_ _k57244_)
                            (begin
                              (vector-set!
                               _table57218_
                               _probe57239_
                               (macro-deleted-obj))
                              (vector-set!
                               _table57218_
                               (fx+ _probe57239_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab57213_
                                  (fx- (&raw-table-count _tab57213_) '1)))))
                            (_loop57236_
                             (let ((_next-probe57251_
                                    (fx+ _start57232_
                                         _i57241_
                                         (fx* _i57241_ _i57241_))))
                               (fxmodulo _next-probe57251_ _size57226_))
                             (fx+ _i57241_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_size-hint57194_ _seed57196_)
        (make-raw-table__% _size-hint57194_ eqv-hash eqv? _seed57196_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_size-hint57202_ '#f) (_seed57204_ '0))
          (make-eqv-table__% _size-hint57202_ _seed57204_))))
    (define make-eqv-table__1
      (lambda (_size-hint57206_)
        (let ((_seed57208_ '0))
          (make-eqv-table__% _size-hint57206_ _seed57208_))))
    (define make-eqv-table
      (lambda _g57735_
        (let ((_g57734_ (##length _g57735_)))
          (cond ((##fx= _g57734_ 0)
                 (apply (lambda () (make-eqv-table__0)) _g57735_))
                ((##fx= _g57734_ 1)
                 (apply (lambda (_size-hint57206_)
                          (make-eqv-table__1 _size-hint57206_))
                        _g57735_))
                ((##fx= _g57734_ 2)
                 (apply (lambda (_size-hint57210_ _seed57211_)
                          (make-eqv-table__% _size-hint57210_ _seed57211_))
                        _g57735_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g57735_))))))
    (define eqv-table-ref
      (lambda (_tab57151_ _key57152_ _default57153_)
        (let ((_table57155_ (&raw-table-table _tab57151_))
              (_seed57156_ (&raw-table-seed _tab57151_)))
          (let* ((_h57158_ (fxxor (eqv-hash _key57152_) _seed57156_))
                 (_size57161_ (vector-length _table57155_))
                 (_entries57164_ (fxquotient _size57161_ '2))
                 (_start57167_
                  (fxarithmetic-shift-left
                   (fxmodulo _h57158_ _entries57164_)
                   '1)))
            (let _loop57171_ ((_probe57174_ _start57167_)
                              (_i57176_ '1)
                              (_deleted57178_ '#f))
              (let ((_k57181_ (vector-ref _table57155_ _probe57174_)))
                (if (eq? _k57181_ (macro-unused-obj))
                    _default57153_
                    (if (eq? _k57181_ (macro-deleted-obj))
                        (_loop57171_
                         (let ((_next-probe57184_
                                (fx+ _start57167_
                                     _i57176_
                                     (fx* _i57176_ _i57176_))))
                           (fxmodulo _next-probe57184_ _size57161_))
                         (fx+ _i57176_ '1)
                         (let ((_$e57187_ _deleted57178_))
                           (if _$e57187_ _$e57187_ _probe57174_)))
                        (if (eqv? _key57152_ _k57181_)
                            (vector-ref _table57155_ (fx+ _probe57174_ '1))
                            (_loop57171_
                             (let ((_next-probe57190_
                                    (fx+ _start57167_
                                         _i57176_
                                         (fx* _i57176_ _i57176_))))
                               (fxmodulo _next-probe57190_ _size57161_))
                             (fx+ _i57176_ '1)
                             _deleted57178_))))))))))
    (define eqv-table-set!
      (lambda (_tab57147_ _key57148_ _value57149_)
        (if (fx< (&raw-table-free _tab57147_)
                 (fxquotient (vector-length (&raw-table-table _tab57147_)) '4))
            (__raw-table-rehash! _tab57147_)
            '#!void)
        (__eqv-table-set! _tab57147_ _key57148_ _value57149_)))
    (define __eqv-table-set!
      (lambda (_tab57102_ _key57103_ _value57104_)
        (let ((_table57107_ (&raw-table-table _tab57102_))
              (_seed57108_ (&raw-table-seed _tab57102_)))
          (let* ((_h57110_ (fxxor (eqv-hash _key57103_) _seed57108_))
                 (_size57113_ (vector-length _table57107_))
                 (_entries57116_ (fxquotient _size57113_ '2))
                 (_start57119_
                  (fxarithmetic-shift-left
                   (fxmodulo _h57110_ _entries57116_)
                   '1)))
            (let _loop57123_ ((_probe57126_ _start57119_)
                              (_i57128_ '1)
                              (_deleted57130_ '#f))
              (let ((_k57133_ (vector-ref _table57107_ _probe57126_)))
                (if (eq? _k57133_ (macro-unused-obj))
                    (if _deleted57130_
                        (begin
                          (vector-set! _table57107_ _deleted57130_ _key57103_)
                          (vector-set!
                           _table57107_
                           (fx+ _deleted57130_ '1)
                           _value57104_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab57102_
                              (fx+ (&raw-table-count _tab57102_) '1)))))
                        (begin
                          (vector-set! _table57107_ _probe57126_ _key57103_)
                          (vector-set!
                           _table57107_
                           (fx+ _probe57126_ '1)
                           _value57104_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab57102_
                              (fx- (&raw-table-free _tab57102_) '1))
                             (&raw-table-count-set!
                              _tab57102_
                              (fx+ (&raw-table-count _tab57102_) '1))))))
                    (if (eq? _k57133_ (macro-deleted-obj))
                        (_loop57123_
                         (let ((_next-probe57138_
                                (fx+ _start57119_
                                     _i57128_
                                     (fx* _i57128_ _i57128_))))
                           (fxmodulo _next-probe57138_ _size57113_))
                         (fx+ _i57128_ '1)
                         (let ((_$e57141_ _deleted57130_))
                           (if _$e57141_ _$e57141_ _probe57126_)))
                        (if (eqv? _key57103_ _k57133_)
                            (begin
                              (vector-set!
                               _table57107_
                               _probe57126_
                               _key57103_)
                              (vector-set!
                               _table57107_
                               (fx+ _probe57126_ '1)
                               _value57104_))
                            (_loop57123_
                             (let ((_next-probe57144_
                                    (fx+ _start57119_
                                         _i57128_
                                         (fx* _i57128_ _i57128_))))
                               (fxmodulo _next-probe57144_ _size57113_))
                             (fx+ _i57128_ '1)
                             _deleted57130_))))))))))
    (define eqv-table-update!
      (lambda (_tab57097_ _key57098_ _eqv-table-update!57099_ _default57100_)
        (if (fx< (&raw-table-free _tab57097_)
                 (fxquotient (vector-length (&raw-table-table _tab57097_)) '4))
            (__raw-table-rehash! _tab57097_)
            '#!void)
        (__eqv-table-update!
         _tab57097_
         _key57098_
         _eqv-table-update!57099_
         _default57100_)))
    (define __eqv-table-update!
      (lambda (_tab57051_ _key57052_ _eqv-table-update!57053_ _default57054_)
        (let ((_table57057_ (&raw-table-table _tab57051_))
              (_seed57058_ (&raw-table-seed _tab57051_)))
          (let* ((_h57060_ (fxxor (eqv-hash _key57052_) _seed57058_))
                 (_size57063_ (vector-length _table57057_))
                 (_entries57066_ (fxquotient _size57063_ '2))
                 (_start57069_
                  (fxarithmetic-shift-left
                   (fxmodulo _h57060_ _entries57066_)
                   '1)))
            (let _loop57073_ ((_probe57076_ _start57069_)
                              (_i57078_ '1)
                              (_deleted57080_ '#f))
              (let ((_k57083_ (vector-ref _table57057_ _probe57076_)))
                (if (eq? _k57083_ (macro-unused-obj))
                    (if _deleted57080_
                        (begin
                          (vector-set! _table57057_ _deleted57080_ _key57052_)
                          (vector-set!
                           _table57057_
                           (fx+ _deleted57080_ '1)
                           (_eqv-table-update!57053_ _default57054_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab57051_
                              (fx+ (&raw-table-count _tab57051_) '1)))))
                        (begin
                          (vector-set! _table57057_ _probe57076_ _key57052_)
                          (vector-set!
                           _table57057_
                           (fx+ _probe57076_ '1)
                           (_eqv-table-update!57053_ _default57054_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab57051_
                              (fx- (&raw-table-free _tab57051_) '1))
                             (&raw-table-count-set!
                              _tab57051_
                              (fx+ (&raw-table-count _tab57051_) '1))))))
                    (if (eq? _k57083_ (macro-deleted-obj))
                        (_loop57073_
                         (let ((_next-probe57088_
                                (fx+ _start57069_
                                     _i57078_
                                     (fx* _i57078_ _i57078_))))
                           (fxmodulo _next-probe57088_ _size57063_))
                         (fx+ _i57078_ '1)
                         (let ((_$e57091_ _deleted57080_))
                           (if _$e57091_ _$e57091_ _probe57076_)))
                        (if (eqv? _key57052_ _k57083_)
                            (begin
                              (vector-set!
                               _table57057_
                               _probe57076_
                               _key57052_)
                              (vector-set!
                               _table57057_
                               (fx+ _probe57076_ '1)
                               (_eqv-table-update!57053_
                                (vector-ref
                                 _table57057_
                                 (fx+ _probe57076_ '1)))))
                            (_loop57073_
                             (let ((_next-probe57094_
                                    (fx+ _start57069_
                                         _i57078_
                                         (fx* _i57078_ _i57078_))))
                               (fxmodulo _next-probe57094_ _size57063_))
                             (fx+ _i57078_ '1)
                             _deleted57080_))))))))))
    (define eqv-table-delete!
      (lambda (_tab57010_ _key57012_)
        (let ((_table57015_ (&raw-table-table _tab57010_))
              (_seed57017_ (&raw-table-seed _tab57010_)))
          (let* ((_h57020_ (fxxor (eqv-hash _key57012_) _seed57017_))
                 (_size57023_ (vector-length _table57015_))
                 (_entries57026_ (fxquotient _size57023_ '2))
                 (_start57029_
                  (fxarithmetic-shift-left
                   (fxmodulo _h57020_ _entries57026_)
                   '1)))
            (let _loop57033_ ((_probe57036_ _start57029_) (_i57038_ '1))
              (let ((_k57041_ (vector-ref _table57015_ _probe57036_)))
                (if (eq? _k57041_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k57041_ (macro-deleted-obj))
                        (_loop57033_
                         (let ((_next-probe57044_
                                (fx+ _start57029_
                                     _i57038_
                                     (fx* _i57038_ _i57038_))))
                           (fxmodulo _next-probe57044_ _size57023_))
                         (fx+ _i57038_ '1))
                        (if (eqv? _key57012_ _k57041_)
                            (begin
                              (vector-set!
                               _table57015_
                               _probe57036_
                               (macro-deleted-obj))
                              (vector-set!
                               _table57015_
                               (fx+ _probe57036_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab57010_
                                  (fx- (&raw-table-count _tab57010_) '1)))))
                            (_loop57033_
                             (let ((_next-probe57048_
                                    (fx+ _start57029_
                                         _i57038_
                                         (fx* _i57038_ _i57038_))))
                               (fxmodulo _next-probe57048_ _size57023_))
                             (fx+ _i57038_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_size-hint56991_ _seed56993_)
        (make-raw-table__% _size-hint56991_ symbolic-hash eq? _seed56993_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_size-hint56999_ '#f) (_seed57001_ '0))
          (make-symbolic-table__% _size-hint56999_ _seed57001_))))
    (define make-symbolic-table__1
      (lambda (_size-hint57003_)
        (let ((_seed57005_ '0))
          (make-symbolic-table__% _size-hint57003_ _seed57005_))))
    (define make-symbolic-table
      (lambda _g57737_
        (let ((_g57736_ (##length _g57737_)))
          (cond ((##fx= _g57736_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g57737_))
                ((##fx= _g57736_ 1)
                 (apply (lambda (_size-hint57003_)
                          (make-symbolic-table__1 _size-hint57003_))
                        _g57737_))
                ((##fx= _g57736_ 2)
                 (apply (lambda (_size-hint57007_ _seed57008_)
                          (make-symbolic-table__%
                           _size-hint57007_
                           _seed57008_))
                        _g57737_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g57737_))))))
    (define symbolic-table-ref
      (lambda (_tab56948_ _key56949_ _default56950_)
        (let ((_table56952_ (&raw-table-table _tab56948_))
              (_seed56953_ (&raw-table-seed _tab56948_)))
          (let* ((_h56955_ (fxxor (symbolic-hash _key56949_) _seed56953_))
                 (_size56958_ (vector-length _table56952_))
                 (_entries56961_ (fxquotient _size56958_ '2))
                 (_start56964_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56955_ _entries56961_)
                   '1)))
            (let _loop56968_ ((_probe56971_ _start56964_)
                              (_i56973_ '1)
                              (_deleted56975_ '#f))
              (let ((_k56978_ (vector-ref _table56952_ _probe56971_)))
                (if (eq? _k56978_ (macro-unused-obj))
                    _default56950_
                    (if (eq? _k56978_ (macro-deleted-obj))
                        (_loop56968_
                         (let ((_next-probe56981_
                                (fx+ _start56964_
                                     _i56973_
                                     (fx* _i56973_ _i56973_))))
                           (fxmodulo _next-probe56981_ _size56958_))
                         (fx+ _i56973_ '1)
                         (let ((_$e56984_ _deleted56975_))
                           (if _$e56984_ _$e56984_ _probe56971_)))
                        (if (eq? _key56949_ _k56978_)
                            (vector-ref _table56952_ (fx+ _probe56971_ '1))
                            (_loop56968_
                             (let ((_next-probe56987_
                                    (fx+ _start56964_
                                         _i56973_
                                         (fx* _i56973_ _i56973_))))
                               (fxmodulo _next-probe56987_ _size56958_))
                             (fx+ _i56973_ '1)
                             _deleted56975_))))))))))
    (define symbolic-table-set!
      (lambda (_tab56944_ _key56945_ _value56946_)
        (if (fx< (&raw-table-free _tab56944_)
                 (fxquotient (vector-length (&raw-table-table _tab56944_)) '4))
            (__raw-table-rehash! _tab56944_)
            '#!void)
        (__symbolic-table-set! _tab56944_ _key56945_ _value56946_)))
    (define __symbolic-table-set!
      (lambda (_tab56899_ _key56900_ _value56901_)
        (let ((_table56904_ (&raw-table-table _tab56899_))
              (_seed56905_ (&raw-table-seed _tab56899_)))
          (let* ((_h56907_ (fxxor (symbolic-hash _key56900_) _seed56905_))
                 (_size56910_ (vector-length _table56904_))
                 (_entries56913_ (fxquotient _size56910_ '2))
                 (_start56916_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56907_ _entries56913_)
                   '1)))
            (let _loop56920_ ((_probe56923_ _start56916_)
                              (_i56925_ '1)
                              (_deleted56927_ '#f))
              (let ((_k56930_ (vector-ref _table56904_ _probe56923_)))
                (if (eq? _k56930_ (macro-unused-obj))
                    (if _deleted56927_
                        (begin
                          (vector-set! _table56904_ _deleted56927_ _key56900_)
                          (vector-set!
                           _table56904_
                           (fx+ _deleted56927_ '1)
                           _value56901_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab56899_
                              (fx+ (&raw-table-count _tab56899_) '1)))))
                        (begin
                          (vector-set! _table56904_ _probe56923_ _key56900_)
                          (vector-set!
                           _table56904_
                           (fx+ _probe56923_ '1)
                           _value56901_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab56899_
                              (fx- (&raw-table-free _tab56899_) '1))
                             (&raw-table-count-set!
                              _tab56899_
                              (fx+ (&raw-table-count _tab56899_) '1))))))
                    (if (eq? _k56930_ (macro-deleted-obj))
                        (_loop56920_
                         (let ((_next-probe56935_
                                (fx+ _start56916_
                                     _i56925_
                                     (fx* _i56925_ _i56925_))))
                           (fxmodulo _next-probe56935_ _size56910_))
                         (fx+ _i56925_ '1)
                         (let ((_$e56938_ _deleted56927_))
                           (if _$e56938_ _$e56938_ _probe56923_)))
                        (if (eq? _key56900_ _k56930_)
                            (begin
                              (vector-set!
                               _table56904_
                               _probe56923_
                               _key56900_)
                              (vector-set!
                               _table56904_
                               (fx+ _probe56923_ '1)
                               _value56901_))
                            (_loop56920_
                             (let ((_next-probe56941_
                                    (fx+ _start56916_
                                         _i56925_
                                         (fx* _i56925_ _i56925_))))
                               (fxmodulo _next-probe56941_ _size56910_))
                             (fx+ _i56925_ '1)
                             _deleted56927_))))))))))
    (define symbolic-table-update!
      (lambda (_tab56894_
               _key56895_
               _symbolic-table-update!56896_
               _default56897_)
        (if (fx< (&raw-table-free _tab56894_)
                 (fxquotient (vector-length (&raw-table-table _tab56894_)) '4))
            (__raw-table-rehash! _tab56894_)
            '#!void)
        (__symbolic-table-update!
         _tab56894_
         _key56895_
         _symbolic-table-update!56896_
         _default56897_)))
    (define __symbolic-table-update!
      (lambda (_tab56848_
               _key56849_
               _symbolic-table-update!56850_
               _default56851_)
        (let ((_table56854_ (&raw-table-table _tab56848_))
              (_seed56855_ (&raw-table-seed _tab56848_)))
          (let* ((_h56857_ (fxxor (symbolic-hash _key56849_) _seed56855_))
                 (_size56860_ (vector-length _table56854_))
                 (_entries56863_ (fxquotient _size56860_ '2))
                 (_start56866_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56857_ _entries56863_)
                   '1)))
            (let _loop56870_ ((_probe56873_ _start56866_)
                              (_i56875_ '1)
                              (_deleted56877_ '#f))
              (let ((_k56880_ (vector-ref _table56854_ _probe56873_)))
                (if (eq? _k56880_ (macro-unused-obj))
                    (if _deleted56877_
                        (begin
                          (vector-set! _table56854_ _deleted56877_ _key56849_)
                          (vector-set!
                           _table56854_
                           (fx+ _deleted56877_ '1)
                           (_symbolic-table-update!56850_ _default56851_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab56848_
                              (fx+ (&raw-table-count _tab56848_) '1)))))
                        (begin
                          (vector-set! _table56854_ _probe56873_ _key56849_)
                          (vector-set!
                           _table56854_
                           (fx+ _probe56873_ '1)
                           (_symbolic-table-update!56850_ _default56851_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab56848_
                              (fx- (&raw-table-free _tab56848_) '1))
                             (&raw-table-count-set!
                              _tab56848_
                              (fx+ (&raw-table-count _tab56848_) '1))))))
                    (if (eq? _k56880_ (macro-deleted-obj))
                        (_loop56870_
                         (let ((_next-probe56885_
                                (fx+ _start56866_
                                     _i56875_
                                     (fx* _i56875_ _i56875_))))
                           (fxmodulo _next-probe56885_ _size56860_))
                         (fx+ _i56875_ '1)
                         (let ((_$e56888_ _deleted56877_))
                           (if _$e56888_ _$e56888_ _probe56873_)))
                        (if (eq? _key56849_ _k56880_)
                            (begin
                              (vector-set!
                               _table56854_
                               _probe56873_
                               _key56849_)
                              (vector-set!
                               _table56854_
                               (fx+ _probe56873_ '1)
                               (_symbolic-table-update!56850_
                                (vector-ref
                                 _table56854_
                                 (fx+ _probe56873_ '1)))))
                            (_loop56870_
                             (let ((_next-probe56891_
                                    (fx+ _start56866_
                                         _i56875_
                                         (fx* _i56875_ _i56875_))))
                               (fxmodulo _next-probe56891_ _size56860_))
                             (fx+ _i56875_ '1)
                             _deleted56877_))))))))))
    (define symbolic-table-delete!
      (lambda (_tab56807_ _key56809_)
        (let ((_table56812_ (&raw-table-table _tab56807_))
              (_seed56814_ (&raw-table-seed _tab56807_)))
          (let* ((_h56817_ (fxxor (symbolic-hash _key56809_) _seed56814_))
                 (_size56820_ (vector-length _table56812_))
                 (_entries56823_ (fxquotient _size56820_ '2))
                 (_start56826_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56817_ _entries56823_)
                   '1)))
            (let _loop56830_ ((_probe56833_ _start56826_) (_i56835_ '1))
              (let ((_k56838_ (vector-ref _table56812_ _probe56833_)))
                (if (eq? _k56838_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k56838_ (macro-deleted-obj))
                        (_loop56830_
                         (let ((_next-probe56841_
                                (fx+ _start56826_
                                     _i56835_
                                     (fx* _i56835_ _i56835_))))
                           (fxmodulo _next-probe56841_ _size56820_))
                         (fx+ _i56835_ '1))
                        (if (eq? _key56809_ _k56838_)
                            (begin
                              (vector-set!
                               _table56812_
                               _probe56833_
                               (macro-deleted-obj))
                              (vector-set!
                               _table56812_
                               (fx+ _probe56833_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab56807_
                                  (fx- (&raw-table-count _tab56807_) '1)))))
                            (_loop56830_
                             (let ((_next-probe56845_
                                    (fx+ _start56826_
                                         _i56835_
                                         (fx* _i56835_ _i56835_))))
                               (fxmodulo _next-probe56845_ _size56820_))
                             (fx+ _i56835_ '1)))))))))))
    (define make-string-table__%
      (lambda (_size-hint56788_ _seed56790_)
        (make-raw-table__%
         _size-hint56788_
         string-hash
         ##string=?
         _seed56790_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_size-hint56796_ '#f) (_seed56798_ '0))
          (make-string-table__% _size-hint56796_ _seed56798_))))
    (define make-string-table__1
      (lambda (_size-hint56800_)
        (let ((_seed56802_ '0))
          (make-string-table__% _size-hint56800_ _seed56802_))))
    (define make-string-table
      (lambda _g57739_
        (let ((_g57738_ (##length _g57739_)))
          (cond ((##fx= _g57738_ 0)
                 (apply (lambda () (make-string-table__0)) _g57739_))
                ((##fx= _g57738_ 1)
                 (apply (lambda (_size-hint56800_)
                          (make-string-table__1 _size-hint56800_))
                        _g57739_))
                ((##fx= _g57738_ 2)
                 (apply (lambda (_size-hint56804_ _seed56805_)
                          (make-string-table__% _size-hint56804_ _seed56805_))
                        _g57739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g57739_))))))
    (define string-table-ref
      (lambda (_tab56745_ _key56746_ _default56747_)
        (let ((_table56749_ (&raw-table-table _tab56745_))
              (_seed56750_ (&raw-table-seed _tab56745_)))
          (let* ((_h56752_ (fxxor (##string=?-hash _key56746_) _seed56750_))
                 (_size56755_ (vector-length _table56749_))
                 (_entries56758_ (fxquotient _size56755_ '2))
                 (_start56761_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56752_ _entries56758_)
                   '1)))
            (let _loop56765_ ((_probe56768_ _start56761_)
                              (_i56770_ '1)
                              (_deleted56772_ '#f))
              (let ((_k56775_ (vector-ref _table56749_ _probe56768_)))
                (if (eq? _k56775_ (macro-unused-obj))
                    _default56747_
                    (if (eq? _k56775_ (macro-deleted-obj))
                        (_loop56765_
                         (let ((_next-probe56778_
                                (fx+ _start56761_
                                     _i56770_
                                     (fx* _i56770_ _i56770_))))
                           (fxmodulo _next-probe56778_ _size56755_))
                         (fx+ _i56770_ '1)
                         (let ((_$e56781_ _deleted56772_))
                           (if _$e56781_ _$e56781_ _probe56768_)))
                        (if (##string=? _key56746_ _k56775_)
                            (vector-ref _table56749_ (fx+ _probe56768_ '1))
                            (_loop56765_
                             (let ((_next-probe56784_
                                    (fx+ _start56761_
                                         _i56770_
                                         (fx* _i56770_ _i56770_))))
                               (fxmodulo _next-probe56784_ _size56755_))
                             (fx+ _i56770_ '1)
                             _deleted56772_))))))))))
    (define string-table-set!
      (lambda (_tab56741_ _key56742_ _value56743_)
        (if (fx< (&raw-table-free _tab56741_)
                 (fxquotient (vector-length (&raw-table-table _tab56741_)) '4))
            (__raw-table-rehash! _tab56741_)
            '#!void)
        (__string-table-set! _tab56741_ _key56742_ _value56743_)))
    (define __string-table-set!
      (lambda (_tab56696_ _key56697_ _value56698_)
        (let ((_table56701_ (&raw-table-table _tab56696_))
              (_seed56702_ (&raw-table-seed _tab56696_)))
          (let* ((_h56704_ (fxxor (##string=?-hash _key56697_) _seed56702_))
                 (_size56707_ (vector-length _table56701_))
                 (_entries56710_ (fxquotient _size56707_ '2))
                 (_start56713_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56704_ _entries56710_)
                   '1)))
            (let _loop56717_ ((_probe56720_ _start56713_)
                              (_i56722_ '1)
                              (_deleted56724_ '#f))
              (let ((_k56727_ (vector-ref _table56701_ _probe56720_)))
                (if (eq? _k56727_ (macro-unused-obj))
                    (if _deleted56724_
                        (begin
                          (vector-set! _table56701_ _deleted56724_ _key56697_)
                          (vector-set!
                           _table56701_
                           (fx+ _deleted56724_ '1)
                           _value56698_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab56696_
                              (fx+ (&raw-table-count _tab56696_) '1)))))
                        (begin
                          (vector-set! _table56701_ _probe56720_ _key56697_)
                          (vector-set!
                           _table56701_
                           (fx+ _probe56720_ '1)
                           _value56698_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab56696_
                              (fx- (&raw-table-free _tab56696_) '1))
                             (&raw-table-count-set!
                              _tab56696_
                              (fx+ (&raw-table-count _tab56696_) '1))))))
                    (if (eq? _k56727_ (macro-deleted-obj))
                        (_loop56717_
                         (let ((_next-probe56732_
                                (fx+ _start56713_
                                     _i56722_
                                     (fx* _i56722_ _i56722_))))
                           (fxmodulo _next-probe56732_ _size56707_))
                         (fx+ _i56722_ '1)
                         (let ((_$e56735_ _deleted56724_))
                           (if _$e56735_ _$e56735_ _probe56720_)))
                        (if (##string=? _key56697_ _k56727_)
                            (begin
                              (vector-set!
                               _table56701_
                               _probe56720_
                               _key56697_)
                              (vector-set!
                               _table56701_
                               (fx+ _probe56720_ '1)
                               _value56698_))
                            (_loop56717_
                             (let ((_next-probe56738_
                                    (fx+ _start56713_
                                         _i56722_
                                         (fx* _i56722_ _i56722_))))
                               (fxmodulo _next-probe56738_ _size56707_))
                             (fx+ _i56722_ '1)
                             _deleted56724_))))))))))
    (define string-table-update!
      (lambda (_tab56691_
               _key56692_
               _string-table-update!56693_
               _default56694_)
        (if (fx< (&raw-table-free _tab56691_)
                 (fxquotient (vector-length (&raw-table-table _tab56691_)) '4))
            (__raw-table-rehash! _tab56691_)
            '#!void)
        (__string-table-update!
         _tab56691_
         _key56692_
         _string-table-update!56693_
         _default56694_)))
    (define __string-table-update!
      (lambda (_tab56645_
               _key56646_
               _string-table-update!56647_
               _default56648_)
        (let ((_table56651_ (&raw-table-table _tab56645_))
              (_seed56652_ (&raw-table-seed _tab56645_)))
          (let* ((_h56654_ (fxxor (##string=?-hash _key56646_) _seed56652_))
                 (_size56657_ (vector-length _table56651_))
                 (_entries56660_ (fxquotient _size56657_ '2))
                 (_start56663_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56654_ _entries56660_)
                   '1)))
            (let _loop56667_ ((_probe56670_ _start56663_)
                              (_i56672_ '1)
                              (_deleted56674_ '#f))
              (let ((_k56677_ (vector-ref _table56651_ _probe56670_)))
                (if (eq? _k56677_ (macro-unused-obj))
                    (if _deleted56674_
                        (begin
                          (vector-set! _table56651_ _deleted56674_ _key56646_)
                          (vector-set!
                           _table56651_
                           (fx+ _deleted56674_ '1)
                           (_string-table-update!56647_ _default56648_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab56645_
                              (fx+ (&raw-table-count _tab56645_) '1)))))
                        (begin
                          (vector-set! _table56651_ _probe56670_ _key56646_)
                          (vector-set!
                           _table56651_
                           (fx+ _probe56670_ '1)
                           (_string-table-update!56647_ _default56648_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab56645_
                              (fx- (&raw-table-free _tab56645_) '1))
                             (&raw-table-count-set!
                              _tab56645_
                              (fx+ (&raw-table-count _tab56645_) '1))))))
                    (if (eq? _k56677_ (macro-deleted-obj))
                        (_loop56667_
                         (let ((_next-probe56682_
                                (fx+ _start56663_
                                     _i56672_
                                     (fx* _i56672_ _i56672_))))
                           (fxmodulo _next-probe56682_ _size56657_))
                         (fx+ _i56672_ '1)
                         (let ((_$e56685_ _deleted56674_))
                           (if _$e56685_ _$e56685_ _probe56670_)))
                        (if (##string=? _key56646_ _k56677_)
                            (begin
                              (vector-set!
                               _table56651_
                               _probe56670_
                               _key56646_)
                              (vector-set!
                               _table56651_
                               (fx+ _probe56670_ '1)
                               (_string-table-update!56647_
                                (vector-ref
                                 _table56651_
                                 (fx+ _probe56670_ '1)))))
                            (_loop56667_
                             (let ((_next-probe56688_
                                    (fx+ _start56663_
                                         _i56672_
                                         (fx* _i56672_ _i56672_))))
                               (fxmodulo _next-probe56688_ _size56657_))
                             (fx+ _i56672_ '1)
                             _deleted56674_))))))))))
    (define string-table-delete!
      (lambda (_tab56604_ _key56606_)
        (let ((_table56609_ (&raw-table-table _tab56604_))
              (_seed56611_ (&raw-table-seed _tab56604_)))
          (let* ((_h56614_ (fxxor (##string=?-hash _key56606_) _seed56611_))
                 (_size56617_ (vector-length _table56609_))
                 (_entries56620_ (fxquotient _size56617_ '2))
                 (_start56623_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56614_ _entries56620_)
                   '1)))
            (let _loop56627_ ((_probe56630_ _start56623_) (_i56632_ '1))
              (let ((_k56635_ (vector-ref _table56609_ _probe56630_)))
                (if (eq? _k56635_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k56635_ (macro-deleted-obj))
                        (_loop56627_
                         (let ((_next-probe56638_
                                (fx+ _start56623_
                                     _i56632_
                                     (fx* _i56632_ _i56632_))))
                           (fxmodulo _next-probe56638_ _size56617_))
                         (fx+ _i56632_ '1))
                        (if (##string=? _key56606_ _k56635_)
                            (begin
                              (vector-set!
                               _table56609_
                               _probe56630_
                               (macro-deleted-obj))
                              (vector-set!
                               _table56609_
                               (fx+ _probe56630_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab56604_
                                  (fx- (&raw-table-count _tab56604_) '1)))))
                            (_loop56627_
                             (let ((_next-probe56642_
                                    (fx+ _start56623_
                                         _i56632_
                                         (fx* _i56632_ _i56632_))))
                               (fxmodulo _next-probe56642_ _size56617_))
                             (fx+ _i56632_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_size-hint56585_ _seed56587_)
        (make-raw-table__% _size-hint56585_ immediate-hash eq? _seed56587_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_size-hint56593_ '#f) (_seed56595_ '0))
          (make-immediate-table__% _size-hint56593_ _seed56595_))))
    (define make-immediate-table__1
      (lambda (_size-hint56597_)
        (let ((_seed56599_ '0))
          (make-immediate-table__% _size-hint56597_ _seed56599_))))
    (define make-immediate-table
      (lambda _g57741_
        (let ((_g57740_ (##length _g57741_)))
          (cond ((##fx= _g57740_ 0)
                 (apply (lambda () (make-immediate-table__0)) _g57741_))
                ((##fx= _g57740_ 1)
                 (apply (lambda (_size-hint56597_)
                          (make-immediate-table__1 _size-hint56597_))
                        _g57741_))
                ((##fx= _g57740_ 2)
                 (apply (lambda (_size-hint56601_ _seed56602_)
                          (make-immediate-table__%
                           _size-hint56601_
                           _seed56602_))
                        _g57741_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g57741_))))))
    (define immediate-table-ref
      (lambda (_tab56542_ _key56543_ _default56544_)
        (let ((_table56546_ (&raw-table-table _tab56542_))
              (_seed56547_ (&raw-table-seed _tab56542_)))
          (let* ((_h56549_ (fxxor (immediate-hash _key56543_) _seed56547_))
                 (_size56552_ (vector-length _table56546_))
                 (_entries56555_ (fxquotient _size56552_ '2))
                 (_start56558_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56549_ _entries56555_)
                   '1)))
            (let _loop56562_ ((_probe56565_ _start56558_)
                              (_i56567_ '1)
                              (_deleted56569_ '#f))
              (let ((_k56572_ (vector-ref _table56546_ _probe56565_)))
                (if (eq? _k56572_ (macro-unused-obj))
                    _default56544_
                    (if (eq? _k56572_ (macro-deleted-obj))
                        (_loop56562_
                         (let ((_next-probe56575_
                                (fx+ _start56558_
                                     _i56567_
                                     (fx* _i56567_ _i56567_))))
                           (fxmodulo _next-probe56575_ _size56552_))
                         (fx+ _i56567_ '1)
                         (let ((_$e56578_ _deleted56569_))
                           (if _$e56578_ _$e56578_ _probe56565_)))
                        (if (eq? _key56543_ _k56572_)
                            (vector-ref _table56546_ (fx+ _probe56565_ '1))
                            (_loop56562_
                             (let ((_next-probe56581_
                                    (fx+ _start56558_
                                         _i56567_
                                         (fx* _i56567_ _i56567_))))
                               (fxmodulo _next-probe56581_ _size56552_))
                             (fx+ _i56567_ '1)
                             _deleted56569_))))))))))
    (define immediate-table-set!
      (lambda (_tab56538_ _key56539_ _value56540_)
        (if (fx< (&raw-table-free _tab56538_)
                 (fxquotient (vector-length (&raw-table-table _tab56538_)) '4))
            (__raw-table-rehash! _tab56538_)
            '#!void)
        (__immediate-table-set! _tab56538_ _key56539_ _value56540_)))
    (define __immediate-table-set!
      (lambda (_tab56493_ _key56494_ _value56495_)
        (let ((_table56498_ (&raw-table-table _tab56493_))
              (_seed56499_ (&raw-table-seed _tab56493_)))
          (let* ((_h56501_ (fxxor (immediate-hash _key56494_) _seed56499_))
                 (_size56504_ (vector-length _table56498_))
                 (_entries56507_ (fxquotient _size56504_ '2))
                 (_start56510_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56501_ _entries56507_)
                   '1)))
            (let _loop56514_ ((_probe56517_ _start56510_)
                              (_i56519_ '1)
                              (_deleted56521_ '#f))
              (let ((_k56524_ (vector-ref _table56498_ _probe56517_)))
                (if (eq? _k56524_ (macro-unused-obj))
                    (if _deleted56521_
                        (begin
                          (vector-set! _table56498_ _deleted56521_ _key56494_)
                          (vector-set!
                           _table56498_
                           (fx+ _deleted56521_ '1)
                           _value56495_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab56493_
                              (fx+ (&raw-table-count _tab56493_) '1)))))
                        (begin
                          (vector-set! _table56498_ _probe56517_ _key56494_)
                          (vector-set!
                           _table56498_
                           (fx+ _probe56517_ '1)
                           _value56495_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab56493_
                              (fx- (&raw-table-free _tab56493_) '1))
                             (&raw-table-count-set!
                              _tab56493_
                              (fx+ (&raw-table-count _tab56493_) '1))))))
                    (if (eq? _k56524_ (macro-deleted-obj))
                        (_loop56514_
                         (let ((_next-probe56529_
                                (fx+ _start56510_
                                     _i56519_
                                     (fx* _i56519_ _i56519_))))
                           (fxmodulo _next-probe56529_ _size56504_))
                         (fx+ _i56519_ '1)
                         (let ((_$e56532_ _deleted56521_))
                           (if _$e56532_ _$e56532_ _probe56517_)))
                        (if (eq? _key56494_ _k56524_)
                            (begin
                              (vector-set!
                               _table56498_
                               _probe56517_
                               _key56494_)
                              (vector-set!
                               _table56498_
                               (fx+ _probe56517_ '1)
                               _value56495_))
                            (_loop56514_
                             (let ((_next-probe56535_
                                    (fx+ _start56510_
                                         _i56519_
                                         (fx* _i56519_ _i56519_))))
                               (fxmodulo _next-probe56535_ _size56504_))
                             (fx+ _i56519_ '1)
                             _deleted56521_))))))))))
    (define immediate-table-update!
      (lambda (_tab56488_
               _key56489_
               _immediate-table-update!56490_
               _default56491_)
        (if (fx< (&raw-table-free _tab56488_)
                 (fxquotient (vector-length (&raw-table-table _tab56488_)) '4))
            (__raw-table-rehash! _tab56488_)
            '#!void)
        (__immediate-table-update!
         _tab56488_
         _key56489_
         _immediate-table-update!56490_
         _default56491_)))
    (define __immediate-table-update!
      (lambda (_tab56442_
               _key56443_
               _immediate-table-update!56444_
               _default56445_)
        (let ((_table56448_ (&raw-table-table _tab56442_))
              (_seed56449_ (&raw-table-seed _tab56442_)))
          (let* ((_h56451_ (fxxor (immediate-hash _key56443_) _seed56449_))
                 (_size56454_ (vector-length _table56448_))
                 (_entries56457_ (fxquotient _size56454_ '2))
                 (_start56460_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56451_ _entries56457_)
                   '1)))
            (let _loop56464_ ((_probe56467_ _start56460_)
                              (_i56469_ '1)
                              (_deleted56471_ '#f))
              (let ((_k56474_ (vector-ref _table56448_ _probe56467_)))
                (if (eq? _k56474_ (macro-unused-obj))
                    (if _deleted56471_
                        (begin
                          (vector-set! _table56448_ _deleted56471_ _key56443_)
                          (vector-set!
                           _table56448_
                           (fx+ _deleted56471_ '1)
                           (_immediate-table-update!56444_ _default56445_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab56442_
                              (fx+ (&raw-table-count _tab56442_) '1)))))
                        (begin
                          (vector-set! _table56448_ _probe56467_ _key56443_)
                          (vector-set!
                           _table56448_
                           (fx+ _probe56467_ '1)
                           (_immediate-table-update!56444_ _default56445_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab56442_
                              (fx- (&raw-table-free _tab56442_) '1))
                             (&raw-table-count-set!
                              _tab56442_
                              (fx+ (&raw-table-count _tab56442_) '1))))))
                    (if (eq? _k56474_ (macro-deleted-obj))
                        (_loop56464_
                         (let ((_next-probe56479_
                                (fx+ _start56460_
                                     _i56469_
                                     (fx* _i56469_ _i56469_))))
                           (fxmodulo _next-probe56479_ _size56454_))
                         (fx+ _i56469_ '1)
                         (let ((_$e56482_ _deleted56471_))
                           (if _$e56482_ _$e56482_ _probe56467_)))
                        (if (eq? _key56443_ _k56474_)
                            (begin
                              (vector-set!
                               _table56448_
                               _probe56467_
                               _key56443_)
                              (vector-set!
                               _table56448_
                               (fx+ _probe56467_ '1)
                               (_immediate-table-update!56444_
                                (vector-ref
                                 _table56448_
                                 (fx+ _probe56467_ '1)))))
                            (_loop56464_
                             (let ((_next-probe56485_
                                    (fx+ _start56460_
                                         _i56469_
                                         (fx* _i56469_ _i56469_))))
                               (fxmodulo _next-probe56485_ _size56454_))
                             (fx+ _i56469_ '1)
                             _deleted56471_))))))))))
    (define immediate-table-delete!
      (lambda (_tab56401_ _key56403_)
        (let ((_table56406_ (&raw-table-table _tab56401_))
              (_seed56408_ (&raw-table-seed _tab56401_)))
          (let* ((_h56411_ (fxxor (immediate-hash _key56403_) _seed56408_))
                 (_size56414_ (vector-length _table56406_))
                 (_entries56417_ (fxquotient _size56414_ '2))
                 (_start56420_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56411_ _entries56417_)
                   '1)))
            (let _loop56424_ ((_probe56427_ _start56420_) (_i56429_ '1))
              (let ((_k56432_ (vector-ref _table56406_ _probe56427_)))
                (if (eq? _k56432_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k56432_ (macro-deleted-obj))
                        (_loop56424_
                         (let ((_next-probe56435_
                                (fx+ _start56420_
                                     _i56429_
                                     (fx* _i56429_ _i56429_))))
                           (fxmodulo _next-probe56435_ _size56414_))
                         (fx+ _i56429_ '1))
                        (if (eq? _key56403_ _k56432_)
                            (begin
                              (vector-set!
                               _table56406_
                               _probe56427_
                               (macro-deleted-obj))
                              (vector-set!
                               _table56406_
                               (fx+ _probe56427_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab56401_
                                  (fx- (&raw-table-count _tab56401_) '1)))))
                            (_loop56424_
                             (let ((_next-probe56439_
                                    (fx+ _start56420_
                                         _i56429_
                                         (fx* _i56429_ _i56429_))))
                               (fxmodulo _next-probe56439_ _size56414_))
                             (fx+ _i56429_ '1)))))))))))
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
      (lambda (_tab56399_)
        (##unchecked-structure-ref
         _tab56399_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_tab56397_)
        (##unchecked-structure-ref
         _tab56397_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_tab56394_ _val56395_)
        (##unchecked-structure-set!
         _tab56394_
         _val56395_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_tab56391_ _val56392_)
        (##unchecked-structure-set!
         _tab56391_
         _val56392_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_size-hint56367_ _klass56368_ _flags56369_)
        (let ((_gcht56371_
               (__gc-table-new
                (if (fixnum? _size-hint56367_) _size-hint56367_ '16)
                _flags56369_)))
          (##structure _klass56368_ _gcht56371_ '#f))))
    (define make-gc-table__0
      (lambda (_size-hint56376_)
        (let* ((_klass56378_ __gc-table::t) (_flags56380_ '0))
          (make-gc-table__% _size-hint56376_ _klass56378_ _flags56380_))))
    (define make-gc-table__1
      (lambda (_size-hint56382_ _klass56383_)
        (let ((_flags56385_ '0))
          (make-gc-table__% _size-hint56382_ _klass56383_ _flags56385_))))
    (define make-gc-table
      (lambda _g57743_
        (let ((_g57742_ (##length _g57743_)))
          (cond ((##fx= _g57742_ 1)
                 (apply (lambda (_size-hint56376_)
                          (make-gc-table__0 _size-hint56376_))
                        _g57743_))
                ((##fx= _g57742_ 2)
                 (apply (lambda (_size-hint56382_ _klass56383_)
                          (make-gc-table__1 _size-hint56382_ _klass56383_))
                        _g57743_))
                ((##fx= _g57742_ 3)
                 (apply (lambda (_size-hint56387_ _klass56388_ _flags56389_)
                          (make-gc-table__%
                           _size-hint56387_
                           _klass56388_
                           _flags56389_))
                        _g57743_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g57743_))))))
    (define __gc-table-immediate
      (lambda (_tab56359_)
        (let ((_$e56361_ (&gc-table-immediate _tab56359_)))
          (if _$e56361_
              _$e56361_
              (let ((_immediate56364_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _tab56359_ _immediate56364_)
                _immediate56364_)))))
    (define __gc-table-new
      (lambda (_size56349_ _flags56350_)
        (let* ((_flags56352_
                (fxand _flags56350_
                       (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_flags56354_
                (fxior _flags56352_ (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_gcht56356_
                (##gc-hash-table-allocate
                 _size56349_
                 _flags56354_
                 __gc-table-loads)))
          _gcht56356_)))
    (define __gc-table-e
      (lambda (_tab56344_)
        (declare (not interrupts-enabled))
        (let ((_gcht56347_ (&gc-table-gcht _tab56344_)))
          (if (fx= '0
                   (fxand (macro-gc-hash-table-flags _gcht56347_)
                          (macro-gc-hash-table-flag-need-rehash)))
              _gcht56347_
              (begin
                (__gc-table-rehash! _tab56344_)
                (&gc-table-gcht _tab56344_))))))
    (define __gc-table-rehash!
      (lambda (_tab56335_)
        (let* ((_old-table56337_ (&gc-table-gcht _tab56335_))
               (_new-table56339_
                (##gc-hash-table-resize! _old-table56337_ __gc-table-loads))
               (_gcht56341_
                (##gc-hash-table-rehash! _old-table56337_ _new-table56339_)))
          (&gc-table-gcht-set! _tab56335_ _gcht56341_))))
    (define gc-table-ref
      (lambda (_tab56321_ _key56322_ _default56323_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key56322_)
            (let* ((_gcht56326_ (__gc-table-e _tab56321_))
                   (_value56328_ (##gc-hash-table-ref _gcht56326_ _key56322_)))
              (if (eq? _value56328_ (macro-unused-obj))
                  _default56323_
                  _value56328_))
            (let ((_$e56330_ (&gc-table-immediate _tab56321_)))
              (if _$e56330_
                  ((lambda (_immediate56333_)
                     (immediate-table-ref
                      _immediate56333_
                      _key56322_
                      _default56323_))
                   _$e56330_)
                  _default56323_)))))
    (define gc-table-set!
      (lambda (_tab56314_ _key56315_ _value56316_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key56315_)
            (let ((_gcht56319_ (__gc-table-e _tab56314_)))
              (if (##gc-hash-table-set! _gcht56319_ _key56315_ _value56316_)
                  (begin
                    (__gc-table-rehash! _tab56314_)
                    (gc-table-set! _tab56314_ _key56315_ _value56316_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _tab56314_)
             _key56315_
             _value56316_))))
    (define gc-table-update!
      (lambda (_tab56307_ _key56308_ _update56309_ _default56310_)
        (if (##mem-allocated? _key56308_)
            (let ((_value56312_
                   (gc-table-ref _tab56307_ _key56308_ _default56310_)))
              (gc-table-set!
               _tab56307_
               _key56308_
               (_update56309_ _value56312_)))
            (immediate-table-update!
             (__gc-table-immediate _tab56307_)
             _key56308_
             _update56309_
             _default56310_))))
    (define gc-table-delete!
      (lambda (_tab56296_ _key56297_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key56297_)
            (let ((_gcht56300_ (__gc-table-e _tab56296_)))
              (if (##gc-hash-table-set!
                   _gcht56300_
                   _key56297_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _tab56296_)
                    (gc-table-delete! _tab56296_ _key56297_))
                  '#!void))
            (let ((_$e56302_ (&gc-table-immediate _tab56296_)))
              (if _$e56302_
                  ((lambda (_immediate56305_)
                     (immediate-table-delete! _immediate56305_ _key56297_))
                   _$e56302_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_tab56277_ _proc56278_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_gcht56281_ (__gc-table-e _tab56277_)))
            (let _loop56283_ ((_i56285_ (macro-gc-hash-table-key0)))
              (if (fx< _i56285_ (##vector-length _gcht56281_))
                  (let ((_key56287_ (##vector-ref _gcht56281_ _i56285_)))
                    (if (and (not (eq? _key56287_ (macro-unused-obj)))
                             (not (eq? _key56287_ (macro-deleted-obj))))
                        (_proc56278_
                         _key56287_
                         (##vector-ref _gcht56281_ (fx+ _i56285_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_loop56283_ (fx+ _i56285_ '2))))
                  '#!void)))
          (let ((_$e56291_ (&gc-table-immediate _tab56277_)))
            (if _$e56291_
                ((lambda (_immediate56294_)
                   (raw-table-for-each _immediate56294_ _proc56278_))
                 _$e56291_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_tab56265_)
        (let* ((_gcht56267_ (__gc-table-e _tab56265_))
               (_new-table56269_
                (__gc-table-new
                 (macro-gc-hash-table-count _gcht56267_)
                 (macro-gc-hash-table-flags _gcht56267_)))
               (_result56271_
                (##structure
                 (##structure-type _tab56265_)
                 _new-table56269_
                 '#f)))
          (gc-table-for-each
           _tab56265_
           (lambda (_k56274_ _v56275_)
             (gc-table-set! _result56271_ _k56274_ _v56275_)))
          _result56271_)))
    (define gc-table-clear!
      (lambda (_tab56258_)
        (let* ((_gcht56260_ (__gc-table-e _tab56258_))
               (_new-table56262_
                (__gc-table-new '16 (macro-gc-hash-table-flags _gcht56260_))))
          (&gc-table-gcht-set! _tab56258_ _new-table56262_)
          (&gc-table-immediate-set! _tab56258_ '#f))))
    (define gc-table-length
      (lambda (_tab56251_)
        (let ((_gcht56253_ (__gc-table-e _tab56251_)))
          (fx+ (macro-gc-hash-table-count _gcht56253_)
               (let ((_$e56255_ (&gc-table-immediate _tab56251_)))
                 (if _$e56255_ (&raw-table-count _$e56255_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_obj56236_)
        (declare (not interrupts-enabled))
        (let ((_val56239_ (gc-table-ref __object-eq-hash _obj56236_ '#f)))
          (if _val56239_
              _val56239_
              (let* ((_mix56241_ __object-eq-hash-next)
                     (_ptr56243_ (##type-cast _obj56236_ '0))
                     (_h56245_
                      (fxand (fxxor _mix56241_ _ptr56243_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_$e56248_ (##fx+? __object-eq-hash-next '1)))
                        (if _$e56248_ _$e56248_ '0)))
                (gc-table-set! __object-eq-hash _obj56236_ _h56245_)
                _h56245_)))))))
