(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1711709196)
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
      (lambda (_tab60549_)
        (##unchecked-structure-ref _tab60549_ '1 __table::t 'raw-table-table)))
    (define &raw-table-count
      (lambda (_tab60547_)
        (##unchecked-structure-ref _tab60547_ '2 __table::t 'raw-table-count)))
    (define &raw-table-free
      (lambda (_tab60545_)
        (##unchecked-structure-ref _tab60545_ '3 __table::t 'raw-table-free)))
    (define &raw-table-hash
      (lambda (_tab60543_)
        (##unchecked-structure-ref _tab60543_ '4 __table::t 'raw-table-hash)))
    (define &raw-table-test
      (lambda (_tab60541_)
        (##unchecked-structure-ref _tab60541_ '5 __table::t 'raw-table-test)))
    (define &raw-table-seed
      (lambda (_tab60539_)
        (##unchecked-structure-ref _tab60539_ '6 __table::t 'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_tab60536_ _val60537_)
        (##unchecked-structure-set!
         _tab60536_
         _val60537_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_tab60533_ _val60534_)
        (##unchecked-structure-set!
         _tab60533_
         _val60534_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_tab60530_ _val60531_)
        (##unchecked-structure-set!
         _tab60530_
         _val60531_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_tab60527_ _val60528_)
        (##unchecked-structure-set!
         _tab60527_
         _val60528_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_tab60524_ _val60525_)
        (##unchecked-structure-set!
         _tab60524_
         _val60525_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_tab60521_ _val60522_)
        (##unchecked-structure-set!
         _tab60521_
         _val60522_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_size-hint60519_)
        (if (and (fixnum? _size-hint60519_) (##fx> _size-hint60519_ '0))
            (##fx* (fxmax '2 (expt '2 (integer-length _size-hint60519_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_size-hint60495_ _hash60496_ _test60497_ _seed60498_)
        (let* ((_size60500_ (raw-table-size-hint->size _size-hint60495_))
               (_table60502_ (##make-vector _size60500_ (macro-unused-obj))))
          (##structure
           __table::t
           _table60502_
           '0
           (##fxquotient _size60500_ '2)
           _hash60496_
           _test60497_
           _seed60498_))))
    (define make-raw-table__0
      (lambda (_size-hint60508_ _hash60509_ _test60510_)
        (let ((_seed60512_ '0))
          (make-raw-table__%
           _size-hint60508_
           _hash60509_
           _test60510_
           _seed60512_))))
    (define make-raw-table
      (lambda _g60551_
        (let ((_g60550_ (##length _g60551_)))
          (cond ((##fx= _g60550_ 3)
                 (apply (lambda (_size-hint60508_ _hash60509_ _test60510_)
                          (make-raw-table__0
                           _size-hint60508_
                           _hash60509_
                           _test60510_))
                        _g60551_))
                ((##fx= _g60550_ 4)
                 (apply (lambda (_size-hint60514_
                                 _hash60515_
                                 _test60516_
                                 _seed60517_)
                          (make-raw-table__%
                           _size-hint60514_
                           _hash60515_
                           _test60516_
                           _seed60517_))
                        _g60551_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g60551_))))))
    (define raw-table-ref
      (lambda (_tab60450_ _key60451_ _default60452_)
        (let ((_table60454_ (&raw-table-table _tab60450_))
              (_seed60455_ (&raw-table-seed _tab60450_))
              (_hash60456_ (&raw-table-hash _tab60450_))
              (_test60457_ (&raw-table-test _tab60450_)))
          (let* ((_h60459_ (fxxor (_hash60456_ _key60451_) _seed60455_))
                 (_size60462_ (vector-length _table60454_))
                 (_entries60465_ (##fxquotient _size60462_ '2))
                 (_start60468_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _h60459_ _entries60465_)
                   '1)))
            (let _loop60472_ ((_probe60475_ _start60468_)
                              (_i60477_ '1)
                              (_deleted60479_ '#f))
              (let ((_k60482_ (vector-ref _table60454_ _probe60475_)))
                (if (eq? _k60482_ (macro-unused-obj))
                    _default60452_
                    (if (eq? _k60482_ (macro-deleted-obj))
                        (_loop60472_
                         (let ((_next-probe60485_
                                (fx+ _start60468_
                                     _i60477_
                                     (fx* _i60477_ _i60477_))))
                           (##fxmodulo _next-probe60485_ _size60462_))
                         (##fx+ _i60477_ '1)
                         (let ((_$e60488_ _deleted60479_))
                           (if _$e60488_ _$e60488_ _probe60475_)))
                        (if (_test60457_ _key60451_ _k60482_)
                            (vector-ref _table60454_ (##fx+ _probe60475_ '1))
                            (_loop60472_
                             (let ((_next-probe60491_
                                    (fx+ _start60468_
                                         _i60477_
                                         (fx* _i60477_ _i60477_))))
                               (##fxmodulo _next-probe60491_ _size60462_))
                             (##fx+ _i60477_ '1)
                             _deleted60479_))))))))))
    (define raw-table-set!
      (lambda (_tab60446_ _key60447_ _value60448_)
        (if (##fx< (&raw-table-free _tab60446_)
                   (##fxquotient
                    (vector-length (&raw-table-table _tab60446_))
                    '4))
            (__raw-table-rehash! _tab60446_)
            '#!void)
        (__raw-table-set! _tab60446_ _key60447_ _value60448_)))
    (define raw-table-update!
      (lambda (_tab60441_ _key60442_ _update60443_ _default60444_)
        (if (##fx< (&raw-table-free _tab60441_)
                   (##fxquotient
                    (vector-length (&raw-table-table _tab60441_))
                    '4))
            (__raw-table-rehash! _tab60441_)
            '#!void)
        (__raw-table-update!
         _tab60441_
         _key60442_
         _update60443_
         _default60444_)))
    (define raw-table-delete!
      (lambda (_tab60402_ _key60403_)
        (let ((_table60405_ (&raw-table-table _tab60402_))
              (_seed60406_ (&raw-table-seed _tab60402_))
              (_hash60407_ (&raw-table-hash _tab60402_))
              (_test60408_ (&raw-table-test _tab60402_)))
          (let* ((_h60410_ (fxxor (_hash60407_ _key60403_) _seed60406_))
                 (_size60413_ (vector-length _table60405_))
                 (_entries60416_ (##fxquotient _size60413_ '2))
                 (_start60419_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _h60410_ _entries60416_)
                   '1)))
            (let _loop60423_ ((_probe60426_ _start60419_) (_i60428_ '1))
              (let ((_k60431_ (vector-ref _table60405_ _probe60426_)))
                (if (eq? _k60431_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k60431_ (macro-deleted-obj))
                        (_loop60423_
                         (let ((_next-probe60434_
                                (fx+ _start60419_
                                     _i60428_
                                     (fx* _i60428_ _i60428_))))
                           (##fxmodulo _next-probe60434_ _size60413_))
                         (##fx+ _i60428_ '1))
                        (if (_test60408_ _key60403_ _k60431_)
                            (begin
                              (vector-set!
                               _table60405_
                               _probe60426_
                               (macro-deleted-obj))
                              (vector-set!
                               _table60405_
                               (##fx+ _probe60426_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab60402_
                                  (##fx- (&raw-table-count _tab60402_) '1)))))
                            (_loop60423_
                             (let ((_next-probe60438_
                                    (fx+ _start60419_
                                         _i60428_
                                         (fx* _i60428_ _i60428_))))
                               (##fxmodulo _next-probe60438_ _size60413_))
                             (##fx+ _i60428_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_tab60386_ _proc60387_)
        (let* ((_table60389_ (&raw-table-table _tab60386_))
               (_size60391_ (vector-length _table60389_)))
          (let _loop60394_ ((_i60396_ '0))
            (if (##fx< _i60396_ _size60391_)
                (begin
                  (let ((_key60398_ (vector-ref _table60389_ _i60396_)))
                    (if (and (not (eq? _key60398_ (macro-unused-obj)))
                             (not (eq? _key60398_ (macro-deleted-obj))))
                        (let ((_value60400_
                               (vector-ref _table60389_ (##fx+ _i60396_ '1))))
                          (_proc60387_ _key60398_ _value60400_))
                        '#!void))
                  (_loop60394_ (##fx+ _i60396_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_tab60382_)
        (let ((_new-tab60384_ (##structure-copy _tab60382_)))
          (&raw-table-table-set!
           _new-tab60384_
           (vector-copy (&raw-table-table _tab60382_)))
          _new-tab60384_)))
    (define raw-table-clear!
      (lambda (_tab60380_)
        (vector-fill! (&raw-table-table _tab60380_) (macro-unused-obj))
        (&raw-table-count-set! _tab60380_ '0)
        (&raw-table-free-set!
         _tab60380_
         (##fxquotient (vector-length (&raw-table-table _tab60380_)) '2))))
    (define __raw-table-set!
      (lambda (_tab60334_ _key60335_ _value60336_)
        (let ((_table60338_ (&raw-table-table _tab60334_))
              (_seed60339_ (&raw-table-seed _tab60334_))
              (_hash60340_ (&raw-table-hash _tab60334_))
              (_test60341_ (&raw-table-test _tab60334_)))
          (let* ((_h60343_ (fxxor (_hash60340_ _key60335_) _seed60339_))
                 (_size60346_ (vector-length _table60338_))
                 (_entries60349_ (##fxquotient _size60346_ '2))
                 (_start60352_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _h60343_ _entries60349_)
                   '1)))
            (let _loop60356_ ((_probe60359_ _start60352_)
                              (_i60361_ '1)
                              (_deleted60363_ '#f))
              (let ((_k60366_ (vector-ref _table60338_ _probe60359_)))
                (if (eq? _k60366_ (macro-unused-obj))
                    (if _deleted60363_
                        (begin
                          (vector-set! _table60338_ _deleted60363_ _key60335_)
                          (vector-set!
                           _table60338_
                           (##fx+ _deleted60363_ '1)
                           _value60336_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab60334_
                              (##fx+ (&raw-table-count _tab60334_) '1)))))
                        (begin
                          (vector-set! _table60338_ _probe60359_ _key60335_)
                          (vector-set!
                           _table60338_
                           (##fx+ _probe60359_ '1)
                           _value60336_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab60334_
                              (##fx- (&raw-table-free _tab60334_) '1))
                             (&raw-table-count-set!
                              _tab60334_
                              (##fx+ (&raw-table-count _tab60334_) '1))))))
                    (if (eq? _k60366_ (macro-deleted-obj))
                        (_loop60356_
                         (let ((_next-probe60371_
                                (fx+ _start60352_
                                     _i60361_
                                     (fx* _i60361_ _i60361_))))
                           (##fxmodulo _next-probe60371_ _size60346_))
                         (##fx+ _i60361_ '1)
                         (let ((_$e60374_ _deleted60363_))
                           (if _$e60374_ _$e60374_ _probe60359_)))
                        (if (_test60341_ _key60335_ _k60366_)
                            (begin
                              (vector-set!
                               _table60338_
                               _probe60359_
                               _key60335_)
                              (vector-set!
                               _table60338_
                               (##fx+ _probe60359_ '1)
                               _value60336_))
                            (_loop60356_
                             (let ((_next-probe60377_
                                    (fx+ _start60352_
                                         _i60361_
                                         (fx* _i60361_ _i60361_))))
                               (##fxmodulo _next-probe60377_ _size60346_))
                             (##fx+ _i60361_ '1)
                             _deleted60363_))))))))))
    (define __raw-table-update!
      (lambda (_tab60287_ _key60288_ _update60289_ _default60290_)
        (let ((_table60292_ (&raw-table-table _tab60287_))
              (_seed60293_ (&raw-table-seed _tab60287_))
              (_hash60294_ (&raw-table-hash _tab60287_))
              (_test60295_ (&raw-table-test _tab60287_)))
          (let* ((_h60297_ (fxxor (_hash60294_ _key60288_) _seed60293_))
                 (_size60300_ (vector-length _table60292_))
                 (_entries60303_ (##fxquotient _size60300_ '2))
                 (_start60306_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _h60297_ _entries60303_)
                   '1)))
            (let _loop60310_ ((_probe60313_ _start60306_)
                              (_i60315_ '1)
                              (_deleted60317_ '#f))
              (let ((_k60320_ (vector-ref _table60292_ _probe60313_)))
                (if (eq? _k60320_ (macro-unused-obj))
                    (if _deleted60317_
                        (begin
                          (vector-set! _table60292_ _deleted60317_ _key60288_)
                          (vector-set!
                           _table60292_
                           (##fx+ _deleted60317_ '1)
                           (_update60289_ _default60290_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab60287_
                              (##fx+ (&raw-table-count _tab60287_) '1)))))
                        (begin
                          (vector-set! _table60292_ _probe60313_ _key60288_)
                          (vector-set!
                           _table60292_
                           (##fx+ _probe60313_ '1)
                           (_update60289_ _default60290_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab60287_
                              (##fx- (&raw-table-free _tab60287_) '1))
                             (&raw-table-count-set!
                              _tab60287_
                              (##fx+ (&raw-table-count _tab60287_) '1))))))
                    (if (eq? _k60320_ (macro-deleted-obj))
                        (_loop60310_
                         (let ((_next-probe60325_
                                (fx+ _start60306_
                                     _i60315_
                                     (fx* _i60315_ _i60315_))))
                           (##fxmodulo _next-probe60325_ _size60300_))
                         (##fx+ _i60315_ '1)
                         (let ((_$e60328_ _deleted60317_))
                           (if _$e60328_ _$e60328_ _probe60313_)))
                        (if (_test60295_ _key60288_ _k60320_)
                            (begin
                              (vector-set!
                               _table60292_
                               _probe60313_
                               _key60288_)
                              (vector-set!
                               _table60292_
                               (##fx+ _probe60313_ '1)
                               (_update60289_
                                (vector-ref
                                 _table60292_
                                 (##fx+ _probe60313_ '1)))))
                            (_loop60310_
                             (let ((_next-probe60331_
                                    (fx+ _start60306_
                                         _i60315_
                                         (fx* _i60315_ _i60315_))))
                               (##fxmodulo _next-probe60331_ _size60300_))
                             (##fx+ _i60315_ '1)
                             _deleted60317_))))))))))
    (define __raw-table-rehash!
      (lambda (_tab60268_)
        (let* ((_old-table60270_ (&raw-table-table _tab60268_))
               (_old-size60272_ (vector-length _old-table60270_))
               (_new-size60274_
                (if (##fx< (&raw-table-count _tab60268_)
                           (##fxquotient _old-size60272_ '4))
                    (vector-length _old-table60270_)
                    (##fx* '2 (vector-length _old-table60270_))))
               (_new-table60276_
                (##make-vector _new-size60274_ (macro-unused-obj))))
          (&raw-table-table-set! _tab60268_ _new-table60276_)
          (&raw-table-count-set! _tab60268_ '0)
          (&raw-table-free-set! _tab60268_ (##fxquotient _new-size60274_ '2))
          (let _lp60279_ ((_i60281_ '0))
            (if (##fx< _i60281_ _old-size60272_)
                (begin
                  (let ((_key60283_ (vector-ref _old-table60270_ _i60281_)))
                    (if (and (not (eq? _key60283_ (macro-unused-obj)))
                             (not (eq? _key60283_ (macro-deleted-obj))))
                        (let ((_value60285_
                               (vector-ref
                                _old-table60270_
                                (##fx+ _i60281_ '1))))
                          (__raw-table-set!
                           _tab60268_
                           _key60283_
                           _value60285_))
                        '#!void))
                  (_lp60279_ (##fx+ _i60281_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_obj60264_)
        (let ((_t60266_ (##type _obj60264_)))
          (if (##fx= (##fxand _t60266_ '1) '0)
              (fxand (##type-cast _obj60264_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _obj60264_)
                  (symbolic-hash _obj60264_)
                  (if (procedure? _obj60264_)
                      (procedure-hash _obj60264_)
                      (fxand (__eq-hash _obj60264_) (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_obj60260_)
        (let ((_h60262_
               (if (##closure? _obj60260_)
                   (__eq-hash _obj60260_)
                   (##type-cast _obj60260_ '0))))
          (fxand _h60262_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_obj60257_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _obj60257_)))
    (define eqv-hash
      (lambda (_obj60247_)
        (letrec ((_combine60249_
                  (lambda (_a60254_ _b60255_)
                    (fxand (##fx* (##fx+ _a60254_
                                         (fxarithmetic-shift-left _b60255_ '1))
                                  '331804471)
                           (macro-max-fixnum32))))
                 (_hash60250_
                  (lambda (_obj60252_)
                    (macro-number-dispatch
                     _obj60252_
                     (eq-hash _obj60252_)
                     (fxand _obj60252_ (macro-max-fixnum32))
                     (modulo _obj60252_ '331804481)
                     (_combine60249_
                      (_hash60250_ (macro-ratnum-numerator _obj60252_))
                      (_hash60250_ (macro-ratnum-denominator _obj60252_)))
                     (_combine60249_
                      (##u16vector-ref _obj60252_ '0)
                      (_combine60249_
                       (##u16vector-ref _obj60252_ '1)
                       (_combine60249_
                        (##u16vector-ref _obj60252_ '2)
                        (##u16vector-ref _obj60252_ '3))))
                     (_combine60249_
                      (_hash60250_ (macro-cpxnum-real _obj60252_))
                      (_hash60250_ (macro-cpxnum-imag _obj60252_)))))))
          (_hash60250_ _obj60247_))))
    (define symbolic?
      (lambda (_obj60242_)
        (let ((_$e60244_ (symbol? _obj60242_)))
          (if _$e60244_ _$e60244_ (keyword? _obj60242_)))))
    (define symbolic-hash (lambda (_obj60240_) (macro-slot '1 _obj60240_)))
    (define string-hash (lambda (_obj60238_) (##string=?-hash _obj60238_)))
    (define immediate-hash
      (lambda (_obj60236_) (##type-cast _obj60236_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_size-hint60217_ _seed60219_)
        (make-raw-table__% _size-hint60217_ eq-hash eq? _seed60219_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_size-hint60225_ '#f) (_seed60227_ '0))
          (make-eq-table__% _size-hint60225_ _seed60227_))))
    (define make-eq-table__1
      (lambda (_size-hint60229_)
        (let ((_seed60231_ '0))
          (make-eq-table__% _size-hint60229_ _seed60231_))))
    (define make-eq-table
      (lambda _g60553_
        (let ((_g60552_ (##length _g60553_)))
          (cond ((##fx= _g60552_ 0)
                 (apply (lambda () (make-eq-table__0)) _g60553_))
                ((##fx= _g60552_ 1)
                 (apply (lambda (_size-hint60229_)
                          (make-eq-table__1 _size-hint60229_))
                        _g60553_))
                ((##fx= _g60552_ 2)
                 (apply (lambda (_size-hint60233_ _seed60234_)
                          (make-eq-table__% _size-hint60233_ _seed60234_))
                        _g60553_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g60553_))))))
    (define eq-table-ref
      (lambda (_tab60174_ _key60175_ _default60176_)
        (let ((_table60178_ (&raw-table-table _tab60174_))
              (_seed60179_ (&raw-table-seed _tab60174_)))
          (let* ((_h60181_ (fxxor (eq-hash _key60175_) _seed60179_))
                 (_size60184_ (vector-length _table60178_))
                 (_entries60187_ (##fxquotient _size60184_ '2))
                 (_start60190_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _h60181_ _entries60187_)
                   '1)))
            (let _loop60194_ ((_probe60197_ _start60190_)
                              (_i60199_ '1)
                              (_deleted60201_ '#f))
              (let ((_k60204_ (vector-ref _table60178_ _probe60197_)))
                (if (eq? _k60204_ (macro-unused-obj))
                    _default60176_
                    (if (eq? _k60204_ (macro-deleted-obj))
                        (_loop60194_
                         (let ((_next-probe60207_
                                (fx+ _start60190_
                                     _i60199_
                                     (fx* _i60199_ _i60199_))))
                           (##fxmodulo _next-probe60207_ _size60184_))
                         (##fx+ _i60199_ '1)
                         (let ((_$e60210_ _deleted60201_))
                           (if _$e60210_ _$e60210_ _probe60197_)))
                        (if (eq? _key60175_ _k60204_)
                            (vector-ref _table60178_ (##fx+ _probe60197_ '1))
                            (_loop60194_
                             (let ((_next-probe60213_
                                    (fx+ _start60190_
                                         _i60199_
                                         (fx* _i60199_ _i60199_))))
                               (##fxmodulo _next-probe60213_ _size60184_))
                             (##fx+ _i60199_ '1)
                             _deleted60201_))))))))))
    (define eq-table-set!
      (lambda (_tab60170_ _key60171_ _value60172_)
        (if (##fx< (&raw-table-free _tab60170_)
                   (##fxquotient
                    (vector-length (&raw-table-table _tab60170_))
                    '4))
            (__raw-table-rehash! _tab60170_)
            '#!void)
        (__eq-table-set! _tab60170_ _key60171_ _value60172_)))
    (define __eq-table-set!
      (lambda (_tab60125_ _key60126_ _value60127_)
        (let ((_table60130_ (&raw-table-table _tab60125_))
              (_seed60131_ (&raw-table-seed _tab60125_)))
          (let* ((_h60133_ (fxxor (eq-hash _key60126_) _seed60131_))
                 (_size60136_ (vector-length _table60130_))
                 (_entries60139_ (##fxquotient _size60136_ '2))
                 (_start60142_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _h60133_ _entries60139_)
                   '1)))
            (let _loop60146_ ((_probe60149_ _start60142_)
                              (_i60151_ '1)
                              (_deleted60153_ '#f))
              (let ((_k60156_ (vector-ref _table60130_ _probe60149_)))
                (if (eq? _k60156_ (macro-unused-obj))
                    (if _deleted60153_
                        (begin
                          (vector-set! _table60130_ _deleted60153_ _key60126_)
                          (vector-set!
                           _table60130_
                           (##fx+ _deleted60153_ '1)
                           _value60127_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab60125_
                              (##fx+ (&raw-table-count _tab60125_) '1)))))
                        (begin
                          (vector-set! _table60130_ _probe60149_ _key60126_)
                          (vector-set!
                           _table60130_
                           (##fx+ _probe60149_ '1)
                           _value60127_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab60125_
                              (##fx- (&raw-table-free _tab60125_) '1))
                             (&raw-table-count-set!
                              _tab60125_
                              (##fx+ (&raw-table-count _tab60125_) '1))))))
                    (if (eq? _k60156_ (macro-deleted-obj))
                        (_loop60146_
                         (let ((_next-probe60161_
                                (fx+ _start60142_
                                     _i60151_
                                     (fx* _i60151_ _i60151_))))
                           (##fxmodulo _next-probe60161_ _size60136_))
                         (##fx+ _i60151_ '1)
                         (let ((_$e60164_ _deleted60153_))
                           (if _$e60164_ _$e60164_ _probe60149_)))
                        (if (eq? _key60126_ _k60156_)
                            (begin
                              (vector-set!
                               _table60130_
                               _probe60149_
                               _key60126_)
                              (vector-set!
                               _table60130_
                               (##fx+ _probe60149_ '1)
                               _value60127_))
                            (_loop60146_
                             (let ((_next-probe60167_
                                    (fx+ _start60142_
                                         _i60151_
                                         (fx* _i60151_ _i60151_))))
                               (##fxmodulo _next-probe60167_ _size60136_))
                             (##fx+ _i60151_ '1)
                             _deleted60153_))))))))))
    (define eq-table-update!
      (lambda (_tab60120_ _key60121_ _eq-table-update!60122_ _default60123_)
        (if (##fx< (&raw-table-free _tab60120_)
                   (##fxquotient
                    (vector-length (&raw-table-table _tab60120_))
                    '4))
            (__raw-table-rehash! _tab60120_)
            '#!void)
        (__eq-table-update!
         _tab60120_
         _key60121_
         _eq-table-update!60122_
         _default60123_)))
    (define __eq-table-update!
      (lambda (_tab60074_ _key60075_ _eq-table-update!60076_ _default60077_)
        (let ((_table60080_ (&raw-table-table _tab60074_))
              (_seed60081_ (&raw-table-seed _tab60074_)))
          (let* ((_h60083_ (fxxor (eq-hash _key60075_) _seed60081_))
                 (_size60086_ (vector-length _table60080_))
                 (_entries60089_ (##fxquotient _size60086_ '2))
                 (_start60092_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _h60083_ _entries60089_)
                   '1)))
            (let _loop60096_ ((_probe60099_ _start60092_)
                              (_i60101_ '1)
                              (_deleted60103_ '#f))
              (let ((_k60106_ (vector-ref _table60080_ _probe60099_)))
                (if (eq? _k60106_ (macro-unused-obj))
                    (if _deleted60103_
                        (begin
                          (vector-set! _table60080_ _deleted60103_ _key60075_)
                          (vector-set!
                           _table60080_
                           (##fx+ _deleted60103_ '1)
                           (_eq-table-update!60076_ _default60077_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab60074_
                              (##fx+ (&raw-table-count _tab60074_) '1)))))
                        (begin
                          (vector-set! _table60080_ _probe60099_ _key60075_)
                          (vector-set!
                           _table60080_
                           (##fx+ _probe60099_ '1)
                           (_eq-table-update!60076_ _default60077_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab60074_
                              (##fx- (&raw-table-free _tab60074_) '1))
                             (&raw-table-count-set!
                              _tab60074_
                              (##fx+ (&raw-table-count _tab60074_) '1))))))
                    (if (eq? _k60106_ (macro-deleted-obj))
                        (_loop60096_
                         (let ((_next-probe60111_
                                (fx+ _start60092_
                                     _i60101_
                                     (fx* _i60101_ _i60101_))))
                           (##fxmodulo _next-probe60111_ _size60086_))
                         (##fx+ _i60101_ '1)
                         (let ((_$e60114_ _deleted60103_))
                           (if _$e60114_ _$e60114_ _probe60099_)))
                        (if (eq? _key60075_ _k60106_)
                            (begin
                              (vector-set!
                               _table60080_
                               _probe60099_
                               _key60075_)
                              (vector-set!
                               _table60080_
                               (##fx+ _probe60099_ '1)
                               (_eq-table-update!60076_
                                (vector-ref
                                 _table60080_
                                 (##fx+ _probe60099_ '1)))))
                            (_loop60096_
                             (let ((_next-probe60117_
                                    (fx+ _start60092_
                                         _i60101_
                                         (fx* _i60101_ _i60101_))))
                               (##fxmodulo _next-probe60117_ _size60086_))
                             (##fx+ _i60101_ '1)
                             _deleted60103_))))))))))
    (define eq-table-delete!
      (lambda (_tab60033_ _key60035_)
        (let ((_table60038_ (&raw-table-table _tab60033_))
              (_seed60040_ (&raw-table-seed _tab60033_)))
          (let* ((_h60043_ (fxxor (eq-hash _key60035_) _seed60040_))
                 (_size60046_ (vector-length _table60038_))
                 (_entries60049_ (##fxquotient _size60046_ '2))
                 (_start60052_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _h60043_ _entries60049_)
                   '1)))
            (let _loop60056_ ((_probe60059_ _start60052_) (_i60061_ '1))
              (let ((_k60064_ (vector-ref _table60038_ _probe60059_)))
                (if (eq? _k60064_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k60064_ (macro-deleted-obj))
                        (_loop60056_
                         (let ((_next-probe60067_
                                (fx+ _start60052_
                                     _i60061_
                                     (fx* _i60061_ _i60061_))))
                           (##fxmodulo _next-probe60067_ _size60046_))
                         (##fx+ _i60061_ '1))
                        (if (eq? _key60035_ _k60064_)
                            (begin
                              (vector-set!
                               _table60038_
                               _probe60059_
                               (macro-deleted-obj))
                              (vector-set!
                               _table60038_
                               (##fx+ _probe60059_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab60033_
                                  (##fx- (&raw-table-count _tab60033_) '1)))))
                            (_loop60056_
                             (let ((_next-probe60071_
                                    (fx+ _start60052_
                                         _i60061_
                                         (fx* _i60061_ _i60061_))))
                               (##fxmodulo _next-probe60071_ _size60046_))
                             (##fx+ _i60061_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_size-hint60014_ _seed60016_)
        (make-raw-table__% _size-hint60014_ eqv-hash eqv? _seed60016_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_size-hint60022_ '#f) (_seed60024_ '0))
          (make-eqv-table__% _size-hint60022_ _seed60024_))))
    (define make-eqv-table__1
      (lambda (_size-hint60026_)
        (let ((_seed60028_ '0))
          (make-eqv-table__% _size-hint60026_ _seed60028_))))
    (define make-eqv-table
      (lambda _g60555_
        (let ((_g60554_ (##length _g60555_)))
          (cond ((##fx= _g60554_ 0)
                 (apply (lambda () (make-eqv-table__0)) _g60555_))
                ((##fx= _g60554_ 1)
                 (apply (lambda (_size-hint60026_)
                          (make-eqv-table__1 _size-hint60026_))
                        _g60555_))
                ((##fx= _g60554_ 2)
                 (apply (lambda (_size-hint60030_ _seed60031_)
                          (make-eqv-table__% _size-hint60030_ _seed60031_))
                        _g60555_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g60555_))))))
    (define eqv-table-ref
      (lambda (_tab59971_ _key59972_ _default59973_)
        (let ((_table59975_ (&raw-table-table _tab59971_))
              (_seed59976_ (&raw-table-seed _tab59971_)))
          (let* ((_h59978_ (fxxor (eqv-hash _key59972_) _seed59976_))
                 (_size59981_ (vector-length _table59975_))
                 (_entries59984_ (##fxquotient _size59981_ '2))
                 (_start59987_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _h59978_ _entries59984_)
                   '1)))
            (let _loop59991_ ((_probe59994_ _start59987_)
                              (_i59996_ '1)
                              (_deleted59998_ '#f))
              (let ((_k60001_ (vector-ref _table59975_ _probe59994_)))
                (if (eq? _k60001_ (macro-unused-obj))
                    _default59973_
                    (if (eq? _k60001_ (macro-deleted-obj))
                        (_loop59991_
                         (let ((_next-probe60004_
                                (fx+ _start59987_
                                     _i59996_
                                     (fx* _i59996_ _i59996_))))
                           (##fxmodulo _next-probe60004_ _size59981_))
                         (##fx+ _i59996_ '1)
                         (let ((_$e60007_ _deleted59998_))
                           (if _$e60007_ _$e60007_ _probe59994_)))
                        (if (eqv? _key59972_ _k60001_)
                            (vector-ref _table59975_ (##fx+ _probe59994_ '1))
                            (_loop59991_
                             (let ((_next-probe60010_
                                    (fx+ _start59987_
                                         _i59996_
                                         (fx* _i59996_ _i59996_))))
                               (##fxmodulo _next-probe60010_ _size59981_))
                             (##fx+ _i59996_ '1)
                             _deleted59998_))))))))))
    (define eqv-table-set!
      (lambda (_tab59967_ _key59968_ _value59969_)
        (if (##fx< (&raw-table-free _tab59967_)
                   (##fxquotient
                    (vector-length (&raw-table-table _tab59967_))
                    '4))
            (__raw-table-rehash! _tab59967_)
            '#!void)
        (__eqv-table-set! _tab59967_ _key59968_ _value59969_)))
    (define __eqv-table-set!
      (lambda (_tab59922_ _key59923_ _value59924_)
        (let ((_table59927_ (&raw-table-table _tab59922_))
              (_seed59928_ (&raw-table-seed _tab59922_)))
          (let* ((_h59930_ (fxxor (eqv-hash _key59923_) _seed59928_))
                 (_size59933_ (vector-length _table59927_))
                 (_entries59936_ (##fxquotient _size59933_ '2))
                 (_start59939_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _h59930_ _entries59936_)
                   '1)))
            (let _loop59943_ ((_probe59946_ _start59939_)
                              (_i59948_ '1)
                              (_deleted59950_ '#f))
              (let ((_k59953_ (vector-ref _table59927_ _probe59946_)))
                (if (eq? _k59953_ (macro-unused-obj))
                    (if _deleted59950_
                        (begin
                          (vector-set! _table59927_ _deleted59950_ _key59923_)
                          (vector-set!
                           _table59927_
                           (##fx+ _deleted59950_ '1)
                           _value59924_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59922_
                              (##fx+ (&raw-table-count _tab59922_) '1)))))
                        (begin
                          (vector-set! _table59927_ _probe59946_ _key59923_)
                          (vector-set!
                           _table59927_
                           (##fx+ _probe59946_ '1)
                           _value59924_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59922_
                              (##fx- (&raw-table-free _tab59922_) '1))
                             (&raw-table-count-set!
                              _tab59922_
                              (##fx+ (&raw-table-count _tab59922_) '1))))))
                    (if (eq? _k59953_ (macro-deleted-obj))
                        (_loop59943_
                         (let ((_next-probe59958_
                                (fx+ _start59939_
                                     _i59948_
                                     (fx* _i59948_ _i59948_))))
                           (##fxmodulo _next-probe59958_ _size59933_))
                         (##fx+ _i59948_ '1)
                         (let ((_$e59961_ _deleted59950_))
                           (if _$e59961_ _$e59961_ _probe59946_)))
                        (if (eqv? _key59923_ _k59953_)
                            (begin
                              (vector-set!
                               _table59927_
                               _probe59946_
                               _key59923_)
                              (vector-set!
                               _table59927_
                               (##fx+ _probe59946_ '1)
                               _value59924_))
                            (_loop59943_
                             (let ((_next-probe59964_
                                    (fx+ _start59939_
                                         _i59948_
                                         (fx* _i59948_ _i59948_))))
                               (##fxmodulo _next-probe59964_ _size59933_))
                             (##fx+ _i59948_ '1)
                             _deleted59950_))))))))))
    (define eqv-table-update!
      (lambda (_tab59917_ _key59918_ _eqv-table-update!59919_ _default59920_)
        (if (##fx< (&raw-table-free _tab59917_)
                   (##fxquotient
                    (vector-length (&raw-table-table _tab59917_))
                    '4))
            (__raw-table-rehash! _tab59917_)
            '#!void)
        (__eqv-table-update!
         _tab59917_
         _key59918_
         _eqv-table-update!59919_
         _default59920_)))
    (define __eqv-table-update!
      (lambda (_tab59871_ _key59872_ _eqv-table-update!59873_ _default59874_)
        (let ((_table59877_ (&raw-table-table _tab59871_))
              (_seed59878_ (&raw-table-seed _tab59871_)))
          (let* ((_h59880_ (fxxor (eqv-hash _key59872_) _seed59878_))
                 (_size59883_ (vector-length _table59877_))
                 (_entries59886_ (##fxquotient _size59883_ '2))
                 (_start59889_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _h59880_ _entries59886_)
                   '1)))
            (let _loop59893_ ((_probe59896_ _start59889_)
                              (_i59898_ '1)
                              (_deleted59900_ '#f))
              (let ((_k59903_ (vector-ref _table59877_ _probe59896_)))
                (if (eq? _k59903_ (macro-unused-obj))
                    (if _deleted59900_
                        (begin
                          (vector-set! _table59877_ _deleted59900_ _key59872_)
                          (vector-set!
                           _table59877_
                           (##fx+ _deleted59900_ '1)
                           (_eqv-table-update!59873_ _default59874_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59871_
                              (##fx+ (&raw-table-count _tab59871_) '1)))))
                        (begin
                          (vector-set! _table59877_ _probe59896_ _key59872_)
                          (vector-set!
                           _table59877_
                           (##fx+ _probe59896_ '1)
                           (_eqv-table-update!59873_ _default59874_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59871_
                              (##fx- (&raw-table-free _tab59871_) '1))
                             (&raw-table-count-set!
                              _tab59871_
                              (##fx+ (&raw-table-count _tab59871_) '1))))))
                    (if (eq? _k59903_ (macro-deleted-obj))
                        (_loop59893_
                         (let ((_next-probe59908_
                                (fx+ _start59889_
                                     _i59898_
                                     (fx* _i59898_ _i59898_))))
                           (##fxmodulo _next-probe59908_ _size59883_))
                         (##fx+ _i59898_ '1)
                         (let ((_$e59911_ _deleted59900_))
                           (if _$e59911_ _$e59911_ _probe59896_)))
                        (if (eqv? _key59872_ _k59903_)
                            (begin
                              (vector-set!
                               _table59877_
                               _probe59896_
                               _key59872_)
                              (vector-set!
                               _table59877_
                               (##fx+ _probe59896_ '1)
                               (_eqv-table-update!59873_
                                (vector-ref
                                 _table59877_
                                 (##fx+ _probe59896_ '1)))))
                            (_loop59893_
                             (let ((_next-probe59914_
                                    (fx+ _start59889_
                                         _i59898_
                                         (fx* _i59898_ _i59898_))))
                               (##fxmodulo _next-probe59914_ _size59883_))
                             (##fx+ _i59898_ '1)
                             _deleted59900_))))))))))
    (define eqv-table-delete!
      (lambda (_tab59830_ _key59832_)
        (let ((_table59835_ (&raw-table-table _tab59830_))
              (_seed59837_ (&raw-table-seed _tab59830_)))
          (let* ((_h59840_ (fxxor (eqv-hash _key59832_) _seed59837_))
                 (_size59843_ (vector-length _table59835_))
                 (_entries59846_ (##fxquotient _size59843_ '2))
                 (_start59849_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _h59840_ _entries59846_)
                   '1)))
            (let _loop59853_ ((_probe59856_ _start59849_) (_i59858_ '1))
              (let ((_k59861_ (vector-ref _table59835_ _probe59856_)))
                (if (eq? _k59861_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59861_ (macro-deleted-obj))
                        (_loop59853_
                         (let ((_next-probe59864_
                                (fx+ _start59849_
                                     _i59858_
                                     (fx* _i59858_ _i59858_))))
                           (##fxmodulo _next-probe59864_ _size59843_))
                         (##fx+ _i59858_ '1))
                        (if (eqv? _key59832_ _k59861_)
                            (begin
                              (vector-set!
                               _table59835_
                               _probe59856_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59835_
                               (##fx+ _probe59856_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59830_
                                  (##fx- (&raw-table-count _tab59830_) '1)))))
                            (_loop59853_
                             (let ((_next-probe59868_
                                    (fx+ _start59849_
                                         _i59858_
                                         (fx* _i59858_ _i59858_))))
                               (##fxmodulo _next-probe59868_ _size59843_))
                             (##fx+ _i59858_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_size-hint59811_ _seed59813_)
        (make-raw-table__% _size-hint59811_ symbolic-hash eq? _seed59813_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_size-hint59819_ '#f) (_seed59821_ '0))
          (make-symbolic-table__% _size-hint59819_ _seed59821_))))
    (define make-symbolic-table__1
      (lambda (_size-hint59823_)
        (let ((_seed59825_ '0))
          (make-symbolic-table__% _size-hint59823_ _seed59825_))))
    (define make-symbolic-table
      (lambda _g60557_
        (let ((_g60556_ (##length _g60557_)))
          (cond ((##fx= _g60556_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g60557_))
                ((##fx= _g60556_ 1)
                 (apply (lambda (_size-hint59823_)
                          (make-symbolic-table__1 _size-hint59823_))
                        _g60557_))
                ((##fx= _g60556_ 2)
                 (apply (lambda (_size-hint59827_ _seed59828_)
                          (make-symbolic-table__%
                           _size-hint59827_
                           _seed59828_))
                        _g60557_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g60557_))))))
    (define symbolic-table-ref
      (lambda (_tab59768_ _key59769_ _default59770_)
        (let ((_table59772_ (&raw-table-table _tab59768_))
              (_seed59773_ (&raw-table-seed _tab59768_)))
          (let* ((_h59775_ (fxxor (symbolic-hash _key59769_) _seed59773_))
                 (_size59778_ (vector-length _table59772_))
                 (_entries59781_ (##fxquotient _size59778_ '2))
                 (_start59784_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _h59775_ _entries59781_)
                   '1)))
            (let _loop59788_ ((_probe59791_ _start59784_)
                              (_i59793_ '1)
                              (_deleted59795_ '#f))
              (let ((_k59798_ (vector-ref _table59772_ _probe59791_)))
                (if (eq? _k59798_ (macro-unused-obj))
                    _default59770_
                    (if (eq? _k59798_ (macro-deleted-obj))
                        (_loop59788_
                         (let ((_next-probe59801_
                                (fx+ _start59784_
                                     _i59793_
                                     (fx* _i59793_ _i59793_))))
                           (##fxmodulo _next-probe59801_ _size59778_))
                         (##fx+ _i59793_ '1)
                         (let ((_$e59804_ _deleted59795_))
                           (if _$e59804_ _$e59804_ _probe59791_)))
                        (if (eq? _key59769_ _k59798_)
                            (vector-ref _table59772_ (##fx+ _probe59791_ '1))
                            (_loop59788_
                             (let ((_next-probe59807_
                                    (fx+ _start59784_
                                         _i59793_
                                         (fx* _i59793_ _i59793_))))
                               (##fxmodulo _next-probe59807_ _size59778_))
                             (##fx+ _i59793_ '1)
                             _deleted59795_))))))))))
    (define symbolic-table-set!
      (lambda (_tab59764_ _key59765_ _value59766_)
        (if (##fx< (&raw-table-free _tab59764_)
                   (##fxquotient
                    (vector-length (&raw-table-table _tab59764_))
                    '4))
            (__raw-table-rehash! _tab59764_)
            '#!void)
        (__symbolic-table-set! _tab59764_ _key59765_ _value59766_)))
    (define __symbolic-table-set!
      (lambda (_tab59719_ _key59720_ _value59721_)
        (let ((_table59724_ (&raw-table-table _tab59719_))
              (_seed59725_ (&raw-table-seed _tab59719_)))
          (let* ((_h59727_ (fxxor (symbolic-hash _key59720_) _seed59725_))
                 (_size59730_ (vector-length _table59724_))
                 (_entries59733_ (##fxquotient _size59730_ '2))
                 (_start59736_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _h59727_ _entries59733_)
                   '1)))
            (let _loop59740_ ((_probe59743_ _start59736_)
                              (_i59745_ '1)
                              (_deleted59747_ '#f))
              (let ((_k59750_ (vector-ref _table59724_ _probe59743_)))
                (if (eq? _k59750_ (macro-unused-obj))
                    (if _deleted59747_
                        (begin
                          (vector-set! _table59724_ _deleted59747_ _key59720_)
                          (vector-set!
                           _table59724_
                           (##fx+ _deleted59747_ '1)
                           _value59721_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59719_
                              (##fx+ (&raw-table-count _tab59719_) '1)))))
                        (begin
                          (vector-set! _table59724_ _probe59743_ _key59720_)
                          (vector-set!
                           _table59724_
                           (##fx+ _probe59743_ '1)
                           _value59721_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59719_
                              (##fx- (&raw-table-free _tab59719_) '1))
                             (&raw-table-count-set!
                              _tab59719_
                              (##fx+ (&raw-table-count _tab59719_) '1))))))
                    (if (eq? _k59750_ (macro-deleted-obj))
                        (_loop59740_
                         (let ((_next-probe59755_
                                (fx+ _start59736_
                                     _i59745_
                                     (fx* _i59745_ _i59745_))))
                           (##fxmodulo _next-probe59755_ _size59730_))
                         (##fx+ _i59745_ '1)
                         (let ((_$e59758_ _deleted59747_))
                           (if _$e59758_ _$e59758_ _probe59743_)))
                        (if (eq? _key59720_ _k59750_)
                            (begin
                              (vector-set!
                               _table59724_
                               _probe59743_
                               _key59720_)
                              (vector-set!
                               _table59724_
                               (##fx+ _probe59743_ '1)
                               _value59721_))
                            (_loop59740_
                             (let ((_next-probe59761_
                                    (fx+ _start59736_
                                         _i59745_
                                         (fx* _i59745_ _i59745_))))
                               (##fxmodulo _next-probe59761_ _size59730_))
                             (##fx+ _i59745_ '1)
                             _deleted59747_))))))))))
    (define symbolic-table-update!
      (lambda (_tab59714_
               _key59715_
               _symbolic-table-update!59716_
               _default59717_)
        (if (##fx< (&raw-table-free _tab59714_)
                   (##fxquotient
                    (vector-length (&raw-table-table _tab59714_))
                    '4))
            (__raw-table-rehash! _tab59714_)
            '#!void)
        (__symbolic-table-update!
         _tab59714_
         _key59715_
         _symbolic-table-update!59716_
         _default59717_)))
    (define __symbolic-table-update!
      (lambda (_tab59668_
               _key59669_
               _symbolic-table-update!59670_
               _default59671_)
        (let ((_table59674_ (&raw-table-table _tab59668_))
              (_seed59675_ (&raw-table-seed _tab59668_)))
          (let* ((_h59677_ (fxxor (symbolic-hash _key59669_) _seed59675_))
                 (_size59680_ (vector-length _table59674_))
                 (_entries59683_ (##fxquotient _size59680_ '2))
                 (_start59686_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _h59677_ _entries59683_)
                   '1)))
            (let _loop59690_ ((_probe59693_ _start59686_)
                              (_i59695_ '1)
                              (_deleted59697_ '#f))
              (let ((_k59700_ (vector-ref _table59674_ _probe59693_)))
                (if (eq? _k59700_ (macro-unused-obj))
                    (if _deleted59697_
                        (begin
                          (vector-set! _table59674_ _deleted59697_ _key59669_)
                          (vector-set!
                           _table59674_
                           (##fx+ _deleted59697_ '1)
                           (_symbolic-table-update!59670_ _default59671_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59668_
                              (##fx+ (&raw-table-count _tab59668_) '1)))))
                        (begin
                          (vector-set! _table59674_ _probe59693_ _key59669_)
                          (vector-set!
                           _table59674_
                           (##fx+ _probe59693_ '1)
                           (_symbolic-table-update!59670_ _default59671_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59668_
                              (##fx- (&raw-table-free _tab59668_) '1))
                             (&raw-table-count-set!
                              _tab59668_
                              (##fx+ (&raw-table-count _tab59668_) '1))))))
                    (if (eq? _k59700_ (macro-deleted-obj))
                        (_loop59690_
                         (let ((_next-probe59705_
                                (fx+ _start59686_
                                     _i59695_
                                     (fx* _i59695_ _i59695_))))
                           (##fxmodulo _next-probe59705_ _size59680_))
                         (##fx+ _i59695_ '1)
                         (let ((_$e59708_ _deleted59697_))
                           (if _$e59708_ _$e59708_ _probe59693_)))
                        (if (eq? _key59669_ _k59700_)
                            (begin
                              (vector-set!
                               _table59674_
                               _probe59693_
                               _key59669_)
                              (vector-set!
                               _table59674_
                               (##fx+ _probe59693_ '1)
                               (_symbolic-table-update!59670_
                                (vector-ref
                                 _table59674_
                                 (##fx+ _probe59693_ '1)))))
                            (_loop59690_
                             (let ((_next-probe59711_
                                    (fx+ _start59686_
                                         _i59695_
                                         (fx* _i59695_ _i59695_))))
                               (##fxmodulo _next-probe59711_ _size59680_))
                             (##fx+ _i59695_ '1)
                             _deleted59697_))))))))))
    (define symbolic-table-delete!
      (lambda (_tab59627_ _key59629_)
        (let ((_table59632_ (&raw-table-table _tab59627_))
              (_seed59634_ (&raw-table-seed _tab59627_)))
          (let* ((_h59637_ (fxxor (symbolic-hash _key59629_) _seed59634_))
                 (_size59640_ (vector-length _table59632_))
                 (_entries59643_ (##fxquotient _size59640_ '2))
                 (_start59646_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _h59637_ _entries59643_)
                   '1)))
            (let _loop59650_ ((_probe59653_ _start59646_) (_i59655_ '1))
              (let ((_k59658_ (vector-ref _table59632_ _probe59653_)))
                (if (eq? _k59658_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59658_ (macro-deleted-obj))
                        (_loop59650_
                         (let ((_next-probe59661_
                                (fx+ _start59646_
                                     _i59655_
                                     (fx* _i59655_ _i59655_))))
                           (##fxmodulo _next-probe59661_ _size59640_))
                         (##fx+ _i59655_ '1))
                        (if (eq? _key59629_ _k59658_)
                            (begin
                              (vector-set!
                               _table59632_
                               _probe59653_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59632_
                               (##fx+ _probe59653_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59627_
                                  (##fx- (&raw-table-count _tab59627_) '1)))))
                            (_loop59650_
                             (let ((_next-probe59665_
                                    (fx+ _start59646_
                                         _i59655_
                                         (fx* _i59655_ _i59655_))))
                               (##fxmodulo _next-probe59665_ _size59640_))
                             (##fx+ _i59655_ '1)))))))))))
    (define make-string-table__%
      (lambda (_size-hint59608_ _seed59610_)
        (make-raw-table__%
         _size-hint59608_
         string-hash
         ##string=?
         _seed59610_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_size-hint59616_ '#f) (_seed59618_ '0))
          (make-string-table__% _size-hint59616_ _seed59618_))))
    (define make-string-table__1
      (lambda (_size-hint59620_)
        (let ((_seed59622_ '0))
          (make-string-table__% _size-hint59620_ _seed59622_))))
    (define make-string-table
      (lambda _g60559_
        (let ((_g60558_ (##length _g60559_)))
          (cond ((##fx= _g60558_ 0)
                 (apply (lambda () (make-string-table__0)) _g60559_))
                ((##fx= _g60558_ 1)
                 (apply (lambda (_size-hint59620_)
                          (make-string-table__1 _size-hint59620_))
                        _g60559_))
                ((##fx= _g60558_ 2)
                 (apply (lambda (_size-hint59624_ _seed59625_)
                          (make-string-table__% _size-hint59624_ _seed59625_))
                        _g60559_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g60559_))))))
    (define string-table-ref
      (lambda (_tab59565_ _key59566_ _default59567_)
        (let ((_table59569_ (&raw-table-table _tab59565_))
              (_seed59570_ (&raw-table-seed _tab59565_)))
          (let* ((_h59572_ (fxxor (##string=?-hash _key59566_) _seed59570_))
                 (_size59575_ (vector-length _table59569_))
                 (_entries59578_ (##fxquotient _size59575_ '2))
                 (_start59581_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _h59572_ _entries59578_)
                   '1)))
            (let _loop59585_ ((_probe59588_ _start59581_)
                              (_i59590_ '1)
                              (_deleted59592_ '#f))
              (let ((_k59595_ (vector-ref _table59569_ _probe59588_)))
                (if (eq? _k59595_ (macro-unused-obj))
                    _default59567_
                    (if (eq? _k59595_ (macro-deleted-obj))
                        (_loop59585_
                         (let ((_next-probe59598_
                                (fx+ _start59581_
                                     _i59590_
                                     (fx* _i59590_ _i59590_))))
                           (##fxmodulo _next-probe59598_ _size59575_))
                         (##fx+ _i59590_ '1)
                         (let ((_$e59601_ _deleted59592_))
                           (if _$e59601_ _$e59601_ _probe59588_)))
                        (if (##string=? _key59566_ _k59595_)
                            (vector-ref _table59569_ (##fx+ _probe59588_ '1))
                            (_loop59585_
                             (let ((_next-probe59604_
                                    (fx+ _start59581_
                                         _i59590_
                                         (fx* _i59590_ _i59590_))))
                               (##fxmodulo _next-probe59604_ _size59575_))
                             (##fx+ _i59590_ '1)
                             _deleted59592_))))))))))
    (define string-table-set!
      (lambda (_tab59561_ _key59562_ _value59563_)
        (if (##fx< (&raw-table-free _tab59561_)
                   (##fxquotient
                    (vector-length (&raw-table-table _tab59561_))
                    '4))
            (__raw-table-rehash! _tab59561_)
            '#!void)
        (__string-table-set! _tab59561_ _key59562_ _value59563_)))
    (define __string-table-set!
      (lambda (_tab59516_ _key59517_ _value59518_)
        (let ((_table59521_ (&raw-table-table _tab59516_))
              (_seed59522_ (&raw-table-seed _tab59516_)))
          (let* ((_h59524_ (fxxor (##string=?-hash _key59517_) _seed59522_))
                 (_size59527_ (vector-length _table59521_))
                 (_entries59530_ (##fxquotient _size59527_ '2))
                 (_start59533_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _h59524_ _entries59530_)
                   '1)))
            (let _loop59537_ ((_probe59540_ _start59533_)
                              (_i59542_ '1)
                              (_deleted59544_ '#f))
              (let ((_k59547_ (vector-ref _table59521_ _probe59540_)))
                (if (eq? _k59547_ (macro-unused-obj))
                    (if _deleted59544_
                        (begin
                          (vector-set! _table59521_ _deleted59544_ _key59517_)
                          (vector-set!
                           _table59521_
                           (##fx+ _deleted59544_ '1)
                           _value59518_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59516_
                              (##fx+ (&raw-table-count _tab59516_) '1)))))
                        (begin
                          (vector-set! _table59521_ _probe59540_ _key59517_)
                          (vector-set!
                           _table59521_
                           (##fx+ _probe59540_ '1)
                           _value59518_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59516_
                              (##fx- (&raw-table-free _tab59516_) '1))
                             (&raw-table-count-set!
                              _tab59516_
                              (##fx+ (&raw-table-count _tab59516_) '1))))))
                    (if (eq? _k59547_ (macro-deleted-obj))
                        (_loop59537_
                         (let ((_next-probe59552_
                                (fx+ _start59533_
                                     _i59542_
                                     (fx* _i59542_ _i59542_))))
                           (##fxmodulo _next-probe59552_ _size59527_))
                         (##fx+ _i59542_ '1)
                         (let ((_$e59555_ _deleted59544_))
                           (if _$e59555_ _$e59555_ _probe59540_)))
                        (if (##string=? _key59517_ _k59547_)
                            (begin
                              (vector-set!
                               _table59521_
                               _probe59540_
                               _key59517_)
                              (vector-set!
                               _table59521_
                               (##fx+ _probe59540_ '1)
                               _value59518_))
                            (_loop59537_
                             (let ((_next-probe59558_
                                    (fx+ _start59533_
                                         _i59542_
                                         (fx* _i59542_ _i59542_))))
                               (##fxmodulo _next-probe59558_ _size59527_))
                             (##fx+ _i59542_ '1)
                             _deleted59544_))))))))))
    (define string-table-update!
      (lambda (_tab59511_
               _key59512_
               _string-table-update!59513_
               _default59514_)
        (if (##fx< (&raw-table-free _tab59511_)
                   (##fxquotient
                    (vector-length (&raw-table-table _tab59511_))
                    '4))
            (__raw-table-rehash! _tab59511_)
            '#!void)
        (__string-table-update!
         _tab59511_
         _key59512_
         _string-table-update!59513_
         _default59514_)))
    (define __string-table-update!
      (lambda (_tab59465_
               _key59466_
               _string-table-update!59467_
               _default59468_)
        (let ((_table59471_ (&raw-table-table _tab59465_))
              (_seed59472_ (&raw-table-seed _tab59465_)))
          (let* ((_h59474_ (fxxor (##string=?-hash _key59466_) _seed59472_))
                 (_size59477_ (vector-length _table59471_))
                 (_entries59480_ (##fxquotient _size59477_ '2))
                 (_start59483_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _h59474_ _entries59480_)
                   '1)))
            (let _loop59487_ ((_probe59490_ _start59483_)
                              (_i59492_ '1)
                              (_deleted59494_ '#f))
              (let ((_k59497_ (vector-ref _table59471_ _probe59490_)))
                (if (eq? _k59497_ (macro-unused-obj))
                    (if _deleted59494_
                        (begin
                          (vector-set! _table59471_ _deleted59494_ _key59466_)
                          (vector-set!
                           _table59471_
                           (##fx+ _deleted59494_ '1)
                           (_string-table-update!59467_ _default59468_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59465_
                              (##fx+ (&raw-table-count _tab59465_) '1)))))
                        (begin
                          (vector-set! _table59471_ _probe59490_ _key59466_)
                          (vector-set!
                           _table59471_
                           (##fx+ _probe59490_ '1)
                           (_string-table-update!59467_ _default59468_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59465_
                              (##fx- (&raw-table-free _tab59465_) '1))
                             (&raw-table-count-set!
                              _tab59465_
                              (##fx+ (&raw-table-count _tab59465_) '1))))))
                    (if (eq? _k59497_ (macro-deleted-obj))
                        (_loop59487_
                         (let ((_next-probe59502_
                                (fx+ _start59483_
                                     _i59492_
                                     (fx* _i59492_ _i59492_))))
                           (##fxmodulo _next-probe59502_ _size59477_))
                         (##fx+ _i59492_ '1)
                         (let ((_$e59505_ _deleted59494_))
                           (if _$e59505_ _$e59505_ _probe59490_)))
                        (if (##string=? _key59466_ _k59497_)
                            (begin
                              (vector-set!
                               _table59471_
                               _probe59490_
                               _key59466_)
                              (vector-set!
                               _table59471_
                               (##fx+ _probe59490_ '1)
                               (_string-table-update!59467_
                                (vector-ref
                                 _table59471_
                                 (##fx+ _probe59490_ '1)))))
                            (_loop59487_
                             (let ((_next-probe59508_
                                    (fx+ _start59483_
                                         _i59492_
                                         (fx* _i59492_ _i59492_))))
                               (##fxmodulo _next-probe59508_ _size59477_))
                             (##fx+ _i59492_ '1)
                             _deleted59494_))))))))))
    (define string-table-delete!
      (lambda (_tab59424_ _key59426_)
        (let ((_table59429_ (&raw-table-table _tab59424_))
              (_seed59431_ (&raw-table-seed _tab59424_)))
          (let* ((_h59434_ (fxxor (##string=?-hash _key59426_) _seed59431_))
                 (_size59437_ (vector-length _table59429_))
                 (_entries59440_ (##fxquotient _size59437_ '2))
                 (_start59443_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _h59434_ _entries59440_)
                   '1)))
            (let _loop59447_ ((_probe59450_ _start59443_) (_i59452_ '1))
              (let ((_k59455_ (vector-ref _table59429_ _probe59450_)))
                (if (eq? _k59455_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59455_ (macro-deleted-obj))
                        (_loop59447_
                         (let ((_next-probe59458_
                                (fx+ _start59443_
                                     _i59452_
                                     (fx* _i59452_ _i59452_))))
                           (##fxmodulo _next-probe59458_ _size59437_))
                         (##fx+ _i59452_ '1))
                        (if (##string=? _key59426_ _k59455_)
                            (begin
                              (vector-set!
                               _table59429_
                               _probe59450_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59429_
                               (##fx+ _probe59450_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59424_
                                  (##fx- (&raw-table-count _tab59424_) '1)))))
                            (_loop59447_
                             (let ((_next-probe59462_
                                    (fx+ _start59443_
                                         _i59452_
                                         (fx* _i59452_ _i59452_))))
                               (##fxmodulo _next-probe59462_ _size59437_))
                             (##fx+ _i59452_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_size-hint59405_ _seed59407_)
        (make-raw-table__% _size-hint59405_ immediate-hash eq? _seed59407_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_size-hint59413_ '#f) (_seed59415_ '0))
          (make-immediate-table__% _size-hint59413_ _seed59415_))))
    (define make-immediate-table__1
      (lambda (_size-hint59417_)
        (let ((_seed59419_ '0))
          (make-immediate-table__% _size-hint59417_ _seed59419_))))
    (define make-immediate-table
      (lambda _g60561_
        (let ((_g60560_ (##length _g60561_)))
          (cond ((##fx= _g60560_ 0)
                 (apply (lambda () (make-immediate-table__0)) _g60561_))
                ((##fx= _g60560_ 1)
                 (apply (lambda (_size-hint59417_)
                          (make-immediate-table__1 _size-hint59417_))
                        _g60561_))
                ((##fx= _g60560_ 2)
                 (apply (lambda (_size-hint59421_ _seed59422_)
                          (make-immediate-table__%
                           _size-hint59421_
                           _seed59422_))
                        _g60561_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g60561_))))))
    (define immediate-table-ref
      (lambda (_tab59362_ _key59363_ _default59364_)
        (let ((_table59366_ (&raw-table-table _tab59362_))
              (_seed59367_ (&raw-table-seed _tab59362_)))
          (let* ((_h59369_ (fxxor (immediate-hash _key59363_) _seed59367_))
                 (_size59372_ (vector-length _table59366_))
                 (_entries59375_ (##fxquotient _size59372_ '2))
                 (_start59378_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _h59369_ _entries59375_)
                   '1)))
            (let _loop59382_ ((_probe59385_ _start59378_)
                              (_i59387_ '1)
                              (_deleted59389_ '#f))
              (let ((_k59392_ (vector-ref _table59366_ _probe59385_)))
                (if (eq? _k59392_ (macro-unused-obj))
                    _default59364_
                    (if (eq? _k59392_ (macro-deleted-obj))
                        (_loop59382_
                         (let ((_next-probe59395_
                                (fx+ _start59378_
                                     _i59387_
                                     (fx* _i59387_ _i59387_))))
                           (##fxmodulo _next-probe59395_ _size59372_))
                         (##fx+ _i59387_ '1)
                         (let ((_$e59398_ _deleted59389_))
                           (if _$e59398_ _$e59398_ _probe59385_)))
                        (if (eq? _key59363_ _k59392_)
                            (vector-ref _table59366_ (##fx+ _probe59385_ '1))
                            (_loop59382_
                             (let ((_next-probe59401_
                                    (fx+ _start59378_
                                         _i59387_
                                         (fx* _i59387_ _i59387_))))
                               (##fxmodulo _next-probe59401_ _size59372_))
                             (##fx+ _i59387_ '1)
                             _deleted59389_))))))))))
    (define immediate-table-set!
      (lambda (_tab59358_ _key59359_ _value59360_)
        (if (##fx< (&raw-table-free _tab59358_)
                   (##fxquotient
                    (vector-length (&raw-table-table _tab59358_))
                    '4))
            (__raw-table-rehash! _tab59358_)
            '#!void)
        (__immediate-table-set! _tab59358_ _key59359_ _value59360_)))
    (define __immediate-table-set!
      (lambda (_tab59313_ _key59314_ _value59315_)
        (let ((_table59318_ (&raw-table-table _tab59313_))
              (_seed59319_ (&raw-table-seed _tab59313_)))
          (let* ((_h59321_ (fxxor (immediate-hash _key59314_) _seed59319_))
                 (_size59324_ (vector-length _table59318_))
                 (_entries59327_ (##fxquotient _size59324_ '2))
                 (_start59330_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _h59321_ _entries59327_)
                   '1)))
            (let _loop59334_ ((_probe59337_ _start59330_)
                              (_i59339_ '1)
                              (_deleted59341_ '#f))
              (let ((_k59344_ (vector-ref _table59318_ _probe59337_)))
                (if (eq? _k59344_ (macro-unused-obj))
                    (if _deleted59341_
                        (begin
                          (vector-set! _table59318_ _deleted59341_ _key59314_)
                          (vector-set!
                           _table59318_
                           (##fx+ _deleted59341_ '1)
                           _value59315_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59313_
                              (##fx+ (&raw-table-count _tab59313_) '1)))))
                        (begin
                          (vector-set! _table59318_ _probe59337_ _key59314_)
                          (vector-set!
                           _table59318_
                           (##fx+ _probe59337_ '1)
                           _value59315_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59313_
                              (##fx- (&raw-table-free _tab59313_) '1))
                             (&raw-table-count-set!
                              _tab59313_
                              (##fx+ (&raw-table-count _tab59313_) '1))))))
                    (if (eq? _k59344_ (macro-deleted-obj))
                        (_loop59334_
                         (let ((_next-probe59349_
                                (fx+ _start59330_
                                     _i59339_
                                     (fx* _i59339_ _i59339_))))
                           (##fxmodulo _next-probe59349_ _size59324_))
                         (##fx+ _i59339_ '1)
                         (let ((_$e59352_ _deleted59341_))
                           (if _$e59352_ _$e59352_ _probe59337_)))
                        (if (eq? _key59314_ _k59344_)
                            (begin
                              (vector-set!
                               _table59318_
                               _probe59337_
                               _key59314_)
                              (vector-set!
                               _table59318_
                               (##fx+ _probe59337_ '1)
                               _value59315_))
                            (_loop59334_
                             (let ((_next-probe59355_
                                    (fx+ _start59330_
                                         _i59339_
                                         (fx* _i59339_ _i59339_))))
                               (##fxmodulo _next-probe59355_ _size59324_))
                             (##fx+ _i59339_ '1)
                             _deleted59341_))))))))))
    (define immediate-table-update!
      (lambda (_tab59308_
               _key59309_
               _immediate-table-update!59310_
               _default59311_)
        (if (##fx< (&raw-table-free _tab59308_)
                   (##fxquotient
                    (vector-length (&raw-table-table _tab59308_))
                    '4))
            (__raw-table-rehash! _tab59308_)
            '#!void)
        (__immediate-table-update!
         _tab59308_
         _key59309_
         _immediate-table-update!59310_
         _default59311_)))
    (define __immediate-table-update!
      (lambda (_tab59262_
               _key59263_
               _immediate-table-update!59264_
               _default59265_)
        (let ((_table59268_ (&raw-table-table _tab59262_))
              (_seed59269_ (&raw-table-seed _tab59262_)))
          (let* ((_h59271_ (fxxor (immediate-hash _key59263_) _seed59269_))
                 (_size59274_ (vector-length _table59268_))
                 (_entries59277_ (##fxquotient _size59274_ '2))
                 (_start59280_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _h59271_ _entries59277_)
                   '1)))
            (let _loop59284_ ((_probe59287_ _start59280_)
                              (_i59289_ '1)
                              (_deleted59291_ '#f))
              (let ((_k59294_ (vector-ref _table59268_ _probe59287_)))
                (if (eq? _k59294_ (macro-unused-obj))
                    (if _deleted59291_
                        (begin
                          (vector-set! _table59268_ _deleted59291_ _key59263_)
                          (vector-set!
                           _table59268_
                           (##fx+ _deleted59291_ '1)
                           (_immediate-table-update!59264_ _default59265_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59262_
                              (##fx+ (&raw-table-count _tab59262_) '1)))))
                        (begin
                          (vector-set! _table59268_ _probe59287_ _key59263_)
                          (vector-set!
                           _table59268_
                           (##fx+ _probe59287_ '1)
                           (_immediate-table-update!59264_ _default59265_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59262_
                              (##fx- (&raw-table-free _tab59262_) '1))
                             (&raw-table-count-set!
                              _tab59262_
                              (##fx+ (&raw-table-count _tab59262_) '1))))))
                    (if (eq? _k59294_ (macro-deleted-obj))
                        (_loop59284_
                         (let ((_next-probe59299_
                                (fx+ _start59280_
                                     _i59289_
                                     (fx* _i59289_ _i59289_))))
                           (##fxmodulo _next-probe59299_ _size59274_))
                         (##fx+ _i59289_ '1)
                         (let ((_$e59302_ _deleted59291_))
                           (if _$e59302_ _$e59302_ _probe59287_)))
                        (if (eq? _key59263_ _k59294_)
                            (begin
                              (vector-set!
                               _table59268_
                               _probe59287_
                               _key59263_)
                              (vector-set!
                               _table59268_
                               (##fx+ _probe59287_ '1)
                               (_immediate-table-update!59264_
                                (vector-ref
                                 _table59268_
                                 (##fx+ _probe59287_ '1)))))
                            (_loop59284_
                             (let ((_next-probe59305_
                                    (fx+ _start59280_
                                         _i59289_
                                         (fx* _i59289_ _i59289_))))
                               (##fxmodulo _next-probe59305_ _size59274_))
                             (##fx+ _i59289_ '1)
                             _deleted59291_))))))))))
    (define immediate-table-delete!
      (lambda (_tab59221_ _key59223_)
        (let ((_table59226_ (&raw-table-table _tab59221_))
              (_seed59228_ (&raw-table-seed _tab59221_)))
          (let* ((_h59231_ (fxxor (immediate-hash _key59223_) _seed59228_))
                 (_size59234_ (vector-length _table59226_))
                 (_entries59237_ (##fxquotient _size59234_ '2))
                 (_start59240_
                  (##fxarithmetic-shift-left
                   (##fxmodulo _h59231_ _entries59237_)
                   '1)))
            (let _loop59244_ ((_probe59247_ _start59240_) (_i59249_ '1))
              (let ((_k59252_ (vector-ref _table59226_ _probe59247_)))
                (if (eq? _k59252_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59252_ (macro-deleted-obj))
                        (_loop59244_
                         (let ((_next-probe59255_
                                (fx+ _start59240_
                                     _i59249_
                                     (fx* _i59249_ _i59249_))))
                           (##fxmodulo _next-probe59255_ _size59234_))
                         (##fx+ _i59249_ '1))
                        (if (eq? _key59223_ _k59252_)
                            (begin
                              (vector-set!
                               _table59226_
                               _probe59247_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59226_
                               (##fx+ _probe59247_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59221_
                                  (##fx- (&raw-table-count _tab59221_) '1)))))
                            (_loop59244_
                             (let ((_next-probe59259_
                                    (fx+ _start59240_
                                         _i59249_
                                         (fx* _i59249_ _i59249_))))
                               (##fxmodulo _next-probe59259_ _size59234_))
                             (##fx+ _i59249_ '1)))))))))))
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
      (lambda (_tab59219_)
        (##unchecked-structure-ref
         _tab59219_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_tab59217_)
        (##unchecked-structure-ref
         _tab59217_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_tab59214_ _val59215_)
        (##unchecked-structure-set!
         _tab59214_
         _val59215_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_tab59211_ _val59212_)
        (##unchecked-structure-set!
         _tab59211_
         _val59212_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_size-hint59187_ _klass59188_ _flags59189_)
        (let ((_gcht59191_
               (__gc-table-new
                (if (fixnum? _size-hint59187_) _size-hint59187_ '16)
                _flags59189_)))
          (##structure _klass59188_ _gcht59191_ '#f))))
    (define make-gc-table__0
      (lambda (_size-hint59196_)
        (let* ((_klass59198_ __gc-table::t) (_flags59200_ '0))
          (make-gc-table__% _size-hint59196_ _klass59198_ _flags59200_))))
    (define make-gc-table__1
      (lambda (_size-hint59202_ _klass59203_)
        (let ((_flags59205_ '0))
          (make-gc-table__% _size-hint59202_ _klass59203_ _flags59205_))))
    (define make-gc-table
      (lambda _g60563_
        (let ((_g60562_ (##length _g60563_)))
          (cond ((##fx= _g60562_ 1)
                 (apply (lambda (_size-hint59196_)
                          (make-gc-table__0 _size-hint59196_))
                        _g60563_))
                ((##fx= _g60562_ 2)
                 (apply (lambda (_size-hint59202_ _klass59203_)
                          (make-gc-table__1 _size-hint59202_ _klass59203_))
                        _g60563_))
                ((##fx= _g60562_ 3)
                 (apply (lambda (_size-hint59207_ _klass59208_ _flags59209_)
                          (make-gc-table__%
                           _size-hint59207_
                           _klass59208_
                           _flags59209_))
                        _g60563_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g60563_))))))
    (define __gc-table-immediate
      (lambda (_tab59179_)
        (let ((_$e59181_ (&gc-table-immediate _tab59179_)))
          (if _$e59181_
              _$e59181_
              (let ((_immediate59184_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _tab59179_ _immediate59184_)
                _immediate59184_)))))
    (define __gc-table-new
      (lambda (_size59169_ _flags59170_)
        (let* ((_flags59172_
                (##fxand _flags59170_
                         (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_flags59174_
                (fxior _flags59172_ (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_gcht59176_
                (##gc-hash-table-allocate
                 _size59169_
                 _flags59174_
                 __gc-table-loads)))
          _gcht59176_)))
    (define __gc-table-e
      (lambda (_tab59164_)
        (declare (not interrupts-enabled))
        (let ((_gcht59167_ (&gc-table-gcht _tab59164_)))
          (if (##fx= '0
                     (fxand (macro-gc-hash-table-flags _gcht59167_)
                            (macro-gc-hash-table-flag-need-rehash)))
              _gcht59167_
              (begin
                (__gc-table-rehash! _tab59164_)
                (&gc-table-gcht _tab59164_))))))
    (define __gc-table-rehash!
      (lambda (_tab59155_)
        (let* ((_old-table59157_ (&gc-table-gcht _tab59155_))
               (_new-table59159_
                (##gc-hash-table-resize! _old-table59157_ __gc-table-loads))
               (_gcht59161_
                (##gc-hash-table-rehash! _old-table59157_ _new-table59159_)))
          (&gc-table-gcht-set! _tab59155_ _gcht59161_))))
    (define gc-table-ref
      (lambda (_tab59141_ _key59142_ _default59143_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key59142_)
            (let* ((_gcht59146_ (__gc-table-e _tab59141_))
                   (_value59148_ (##gc-hash-table-ref _gcht59146_ _key59142_)))
              (if (eq? _value59148_ (macro-unused-obj))
                  _default59143_
                  _value59148_))
            (let ((_$e59150_ (&gc-table-immediate _tab59141_)))
              (if _$e59150_
                  ((lambda (_immediate59153_)
                     (immediate-table-ref
                      _immediate59153_
                      _key59142_
                      _default59143_))
                   _$e59150_)
                  _default59143_)))))
    (define gc-table-set!
      (lambda (_tab59134_ _key59135_ _value59136_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key59135_)
            (let ((_gcht59139_ (__gc-table-e _tab59134_)))
              (if (##gc-hash-table-set! _gcht59139_ _key59135_ _value59136_)
                  (begin
                    (__gc-table-rehash! _tab59134_)
                    (gc-table-set! _tab59134_ _key59135_ _value59136_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _tab59134_)
             _key59135_
             _value59136_))))
    (define gc-table-update!
      (lambda (_tab59127_ _key59128_ _update59129_ _default59130_)
        (if (##mem-allocated? _key59128_)
            (let ((_value59132_
                   (gc-table-ref _tab59127_ _key59128_ _default59130_)))
              (gc-table-set!
               _tab59127_
               _key59128_
               (_update59129_ _value59132_)))
            (immediate-table-update!
             (__gc-table-immediate _tab59127_)
             _key59128_
             _update59129_
             _default59130_))))
    (define gc-table-delete!
      (lambda (_tab59116_ _key59117_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key59117_)
            (let ((_gcht59120_ (__gc-table-e _tab59116_)))
              (if (##gc-hash-table-set!
                   _gcht59120_
                   _key59117_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _tab59116_)
                    (gc-table-delete! _tab59116_ _key59117_))
                  '#!void))
            (let ((_$e59122_ (&gc-table-immediate _tab59116_)))
              (if _$e59122_
                  ((lambda (_immediate59125_)
                     (immediate-table-delete! _immediate59125_ _key59117_))
                   _$e59122_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_tab59097_ _proc59098_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_gcht59101_ (__gc-table-e _tab59097_)))
            (let _loop59103_ ((_i59105_ (macro-gc-hash-table-key0)))
              (if (fx< _i59105_ (##vector-length _gcht59101_))
                  (let ((_key59107_ (##vector-ref _gcht59101_ _i59105_)))
                    (if (and (not (eq? _key59107_ (macro-unused-obj)))
                             (not (eq? _key59107_ (macro-deleted-obj))))
                        (_proc59098_
                         _key59107_
                         (##vector-ref _gcht59101_ (##fx+ _i59105_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_loop59103_ (##fx+ _i59105_ '2))))
                  '#!void)))
          (let ((_$e59111_ (&gc-table-immediate _tab59097_)))
            (if _$e59111_
                ((lambda (_immediate59114_)
                   (raw-table-for-each _immediate59114_ _proc59098_))
                 _$e59111_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_tab59085_)
        (let* ((_gcht59087_ (__gc-table-e _tab59085_))
               (_new-table59089_
                (__gc-table-new
                 (macro-gc-hash-table-count _gcht59087_)
                 (macro-gc-hash-table-flags _gcht59087_)))
               (_result59091_
                (##structure
                 (##structure-type _tab59085_)
                 _new-table59089_
                 '#f)))
          (gc-table-for-each
           _tab59085_
           (lambda (_k59094_ _v59095_)
             (gc-table-set! _result59091_ _k59094_ _v59095_)))
          _result59091_)))
    (define gc-table-clear!
      (lambda (_tab59078_)
        (let* ((_gcht59080_ (__gc-table-e _tab59078_))
               (_new-table59082_
                (__gc-table-new '16 (macro-gc-hash-table-flags _gcht59080_))))
          (&gc-table-gcht-set! _tab59078_ _new-table59082_)
          (&gc-table-immediate-set! _tab59078_ '#f))))
    (define gc-table-length
      (lambda (_tab59071_)
        (let ((_gcht59073_ (__gc-table-e _tab59071_)))
          (fx+ (macro-gc-hash-table-count _gcht59073_)
               (let ((_$e59075_ (&gc-table-immediate _tab59071_)))
                 (if _$e59075_ (&raw-table-count _$e59075_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_obj59056_)
        (declare (not interrupts-enabled))
        (let ((_val59059_ (gc-table-ref __object-eq-hash _obj59056_ '#f)))
          (if _val59059_
              _val59059_
              (let* ((_mix59061_ __object-eq-hash-next)
                     (_ptr59063_ (##type-cast _obj59056_ '0))
                     (_h59065_
                      (fxand (fxxor _mix59061_ _ptr59063_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_$e59068_ (##fx+? __object-eq-hash-next '1)))
                        (if _$e59068_ _$e59068_ '0)))
                (gc-table-set! __object-eq-hash _obj59056_ _h59065_)
                _h59065_)))))))
