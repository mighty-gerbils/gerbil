(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1708247272)
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
      (lambda (_tab64760_)
        (##unchecked-structure-ref _tab64760_ '1 __table::t 'raw-table-table)))
    (define &raw-table-count
      (lambda (_tab64758_)
        (##unchecked-structure-ref _tab64758_ '2 __table::t 'raw-table-count)))
    (define &raw-table-free
      (lambda (_tab64756_)
        (##unchecked-structure-ref _tab64756_ '3 __table::t 'raw-table-free)))
    (define &raw-table-hash
      (lambda (_tab64754_)
        (##unchecked-structure-ref _tab64754_ '4 __table::t 'raw-table-hash)))
    (define &raw-table-test
      (lambda (_tab64752_)
        (##unchecked-structure-ref _tab64752_ '5 __table::t 'raw-table-test)))
    (define &raw-table-seed
      (lambda (_tab64750_)
        (##unchecked-structure-ref _tab64750_ '6 __table::t 'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_tab64747_ _val64748_)
        (##unchecked-structure-set!
         _tab64747_
         _val64748_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_tab64744_ _val64745_)
        (##unchecked-structure-set!
         _tab64744_
         _val64745_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_tab64741_ _val64742_)
        (##unchecked-structure-set!
         _tab64741_
         _val64742_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_tab64738_ _val64739_)
        (##unchecked-structure-set!
         _tab64738_
         _val64739_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_tab64735_ _val64736_)
        (##unchecked-structure-set!
         _tab64735_
         _val64736_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_tab64732_ _val64733_)
        (##unchecked-structure-set!
         _tab64732_
         _val64733_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define make-raw-table__%
      (lambda (_size-hint64708_ _hash64709_ _test64710_ _seed64711_)
        (let* ((_size64713_
                (if (and (fixnum? _size-hint64708_) (fx> _size-hint64708_ '0))
                    (fx* (max _size-hint64708_ '2) '4)
                    '16))
               (_table64715_ (make-vector _size64713_ (macro-unused-obj))))
          (##structure
           __table::t
           _table64715_
           '0
           (fxquotient _size64713_ '2)
           _hash64709_
           _test64710_
           _seed64711_))))
    (define make-raw-table__0
      (lambda (_size-hint64721_ _hash64722_ _test64723_)
        (let ((_seed64725_ (random-integer (macro-max-fixnum32))))
          (make-raw-table__%
           _size-hint64721_
           _hash64722_
           _test64723_
           _seed64725_))))
    (define make-raw-table
      (lambda _g68829_
        (let ((_g68828_ (##length _g68829_)))
          (cond ((##fx= _g68828_ 3)
                 (apply (lambda (_size-hint64721_ _hash64722_ _test64723_)
                          (make-raw-table__0
                           _size-hint64721_
                           _hash64722_
                           _test64723_))
                        _g68829_))
                ((##fx= _g68828_ 4)
                 (apply (lambda (_size-hint64727_
                                 _hash64728_
                                 _test64729_
                                 _seed64730_)
                          (make-raw-table__%
                           _size-hint64727_
                           _hash64728_
                           _test64729_
                           _seed64730_))
                        _g68829_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g68829_))))))
    (define raw-table-ref
      (lambda (_tab64663_ _key64664_ _default64665_)
        (let ((_table64667_ (&raw-table-table _tab64663_))
              (_seed64668_ (&raw-table-seed _tab64663_))
              (_hash64669_ (&raw-table-hash _tab64663_))
              (_test64670_ (&raw-table-test _tab64663_)))
          (let* ((_h64672_ (fxxor (_hash64669_ _key64664_) _seed64668_))
                 (_size64675_ (vector-length _table64667_))
                 (_entries64678_ (fxquotient _size64675_ '2))
                 (_start64681_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64672_ _entries64678_)
                   '1)))
            (let _loop64685_ ((_probe64688_ _start64681_)
                              (_i64690_ '1)
                              (_deleted64692_ '#f))
              (let ((_k64695_ (vector-ref _table64667_ _probe64688_)))
                (if (eq? _k64695_ (macro-unused-obj))
                    _default64665_
                    (if (eq? _k64695_ (macro-deleted-obj))
                        (_loop64685_
                         (let ((_next-probe64698_
                                (fx+ _start64681_
                                     _i64690_
                                     (fx* _i64690_ _i64690_))))
                           (fxmodulo _next-probe64698_ _size64675_))
                         (fx+ _i64690_ '1)
                         (let ((_$e64701_ _deleted64692_))
                           (if _$e64701_ _$e64701_ _probe64688_)))
                        (if (_test64670_ _key64664_ _k64695_)
                            (vector-ref _table64667_ (fx+ _probe64688_ '1))
                            (_loop64685_
                             (let ((_next-probe64704_
                                    (fx+ _start64681_
                                         _i64690_
                                         (fx* _i64690_ _i64690_))))
                               (fxmodulo _next-probe64704_ _size64675_))
                             (fx+ _i64690_ '1)
                             _deleted64692_))))))))))
    (define raw-table-set!
      (lambda (_tab64659_ _key64660_ _value64661_)
        (if (fx< (&raw-table-free _tab64659_)
                 (fxquotient (vector-length (&raw-table-table _tab64659_)) '4))
            (__raw-table-rehash! _tab64659_)
            '#!void)
        (__raw-table-set! _tab64659_ _key64660_ _value64661_)))
    (define raw-table-delete!
      (lambda (_tab64620_ _key64621_)
        (let ((_table64623_ (&raw-table-table _tab64620_))
              (_seed64624_ (&raw-table-seed _tab64620_))
              (_hash64625_ (&raw-table-hash _tab64620_))
              (_test64626_ (&raw-table-test _tab64620_)))
          (let* ((_h64628_ (fxxor (_hash64625_ _key64621_) _seed64624_))
                 (_size64631_ (vector-length _table64623_))
                 (_entries64634_ (fxquotient _size64631_ '2))
                 (_start64637_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64628_ _entries64634_)
                   '1)))
            (let _loop64641_ ((_probe64644_ _start64637_) (_i64646_ '1))
              (let ((_k64649_ (vector-ref _table64623_ _probe64644_)))
                (if (eq? _k64649_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k64649_ (macro-deleted-obj))
                        (_loop64641_
                         (let ((_next-probe64652_
                                (fx+ _start64637_
                                     _i64646_
                                     (fx* _i64646_ _i64646_))))
                           (fxmodulo _next-probe64652_ _size64631_))
                         (fx+ _i64646_ '1))
                        (if (_test64626_ _key64621_ _k64649_)
                            (begin
                              (vector-set!
                               _table64623_
                               _probe64644_
                               (macro-deleted-obj))
                              (vector-set!
                               _table64623_
                               (fx+ _probe64644_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab64620_
                                  (fx- (&raw-table-count _tab64620_) '1)))))
                            (_loop64641_
                             (let ((_next-probe64656_
                                    (fx+ _start64637_
                                         _i64646_
                                         (fx* _i64646_ _i64646_))))
                               (fxmodulo _next-probe64656_ _size64631_))
                             (fx+ _i64646_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_proc64604_ _tab64605_)
        (let* ((_table64607_ (&raw-table-table _tab64605_))
               (_size64609_ (vector-length _table64607_)))
          (let _loop64612_ ((_i64614_ '0))
            (if (fx< _i64614_ _size64609_)
                (begin
                  (let ((_key64616_ (vector-ref _table64607_ _i64614_)))
                    (if (and (not (eq? _key64616_ (macro-unused-obj)))
                             (not (eq? _key64616_ (macro-deleted-obj))))
                        (let ((_value64618_
                               (vector-ref _table64607_ (fx+ _i64614_ '1))))
                          (_proc64604_ _key64616_ _value64618_))
                        '#!void))
                  (_loop64612_ (fx+ _i64614_ '2)))
                '#!void)))))
    (define __raw-table-set!
      (lambda (_tab64558_ _key64559_ _value64560_)
        (let ((_table64562_ (&raw-table-table _tab64558_))
              (_seed64563_ (&raw-table-seed _tab64558_))
              (_hash64564_ (&raw-table-hash _tab64558_))
              (_test64565_ (&raw-table-test _tab64558_)))
          (let* ((_h64567_ (fxxor (_hash64564_ _key64559_) _seed64563_))
                 (_size64570_ (vector-length _table64562_))
                 (_entries64573_ (fxquotient _size64570_ '2))
                 (_start64576_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64567_ _entries64573_)
                   '1)))
            (let _loop64580_ ((_probe64583_ _start64576_)
                              (_i64585_ '1)
                              (_deleted64587_ '#f))
              (let ((_k64590_ (vector-ref _table64562_ _probe64583_)))
                (if (eq? _k64590_ (macro-unused-obj))
                    (if _deleted64587_
                        (begin
                          (vector-set! _table64562_ _deleted64587_ _key64559_)
                          (vector-set!
                           _table64562_
                           (fx+ _deleted64587_ '1)
                           _value64560_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab64558_
                              (fx+ (&raw-table-count _tab64558_) '1)))))
                        (begin
                          (vector-set! _table64562_ _probe64583_ _key64559_)
                          (vector-set!
                           _table64562_
                           (fx+ _probe64583_ '1)
                           _value64560_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab64558_
                              (fx- (&raw-table-free _tab64558_) '1))
                             (&raw-table-count-set!
                              _tab64558_
                              (fx+ (&raw-table-count _tab64558_) '1))))))
                    (if (eq? _k64590_ (macro-deleted-obj))
                        (_loop64580_
                         (let ((_next-probe64595_
                                (fx+ _start64576_
                                     _i64585_
                                     (fx* _i64585_ _i64585_))))
                           (fxmodulo _next-probe64595_ _size64570_))
                         (fx+ _i64585_ '1)
                         (let ((_$e64598_ _deleted64587_))
                           (if _$e64598_ _$e64598_ _probe64583_)))
                        (if (_test64565_ _key64559_ _k64590_)
                            (begin
                              (vector-set!
                               _table64562_
                               _probe64583_
                               _key64559_)
                              (vector-set!
                               _table64562_
                               (fx+ _probe64583_ '1)
                               _value64560_))
                            (_loop64580_
                             (let ((_next-probe64601_
                                    (fx+ _start64576_
                                         _i64585_
                                         (fx* _i64585_ _i64585_))))
                               (fxmodulo _next-probe64601_ _size64570_))
                             (fx+ _i64585_ '1)
                             _deleted64587_))))))))))
    (define __raw-table-rehash!
      (lambda (_tab64539_)
        (let* ((_old-table64541_ (&raw-table-table _tab64539_))
               (_old-size64543_ (vector-length _old-table64541_))
               (_new-size64545_
                (if (fx< (&raw-table-count _tab64539_)
                         (fxquotient _old-size64543_ '4))
                    (vector-length _old-table64541_)
                    (fx* '2 (vector-length _old-table64541_))))
               (_new-table64547_
                (make-vector _new-size64545_ (macro-unused-obj))))
          (&raw-table-table-set! _tab64539_ _new-table64547_)
          (&raw-table-count-set! _tab64539_ '0)
          (&raw-table-free-set! _tab64539_ (fxquotient _new-size64545_ '2))
          (let _lp64550_ ((_i64552_ '0))
            (if (fx< _i64552_ _old-size64543_)
                (begin
                  (let ((_key64554_ (vector-ref _old-table64541_ _i64552_)))
                    (if (and (not (eq? _key64554_ (macro-unused-obj)))
                             (not (eq? _key64554_ (macro-deleted-obj))))
                        (let ((_value64556_
                               (vector-ref
                                _old-table64541_
                                (fx+ _i64552_ '1))))
                          (__raw-table-set!
                           _tab64539_
                           _key64554_
                           _value64556_))
                        '#!void))
                  (_lp64550_ (fx+ _i64552_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_obj64530_)
        (let ((_t64532_ (##type _obj64530_)))
          (if (fx= (fxand _t64532_ '1) '0)
              (fxand (##type-cast _obj64530_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (or (symbol? _obj64530_) (keyword? _obj64530_))
                  (symbolic-hash _obj64530_)
                  (fxand (let ((_sn64537_ (object->serial-number _obj64530_)))
                           (if (fixnum? _sn64537_)
                               _sn64537_
                               (fxarithmetic-shift-left
                                (##bignum.mdigit-ref _sn64537_ '0)
                                '10)))
                         (macro-max-fixnum32)))))))
    (define symbolic-hash (lambda (_obj64528_) (macro-slot '1 _obj64528_)))
    (define string-hash (lambda (_obj64526_) (##string=?-hash _obj64526_)))
    (define make-eq-table__%
      (lambda (_size-hint64507_ _seed64509_)
        (make-raw-table__% _size-hint64507_ eq-hash eq? _seed64509_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_size-hint64515_ '#f)
               (_seed64517_ (random-integer (macro-max-fixnum32))))
          (make-eq-table__% _size-hint64515_ _seed64517_))))
    (define make-eq-table__1
      (lambda (_size-hint64519_)
        (let ((_seed64521_ (random-integer (macro-max-fixnum32))))
          (make-eq-table__% _size-hint64519_ _seed64521_))))
    (define make-eq-table
      (lambda _g68831_
        (let ((_g68830_ (##length _g68831_)))
          (cond ((##fx= _g68830_ 0)
                 (apply (lambda () (make-eq-table__0)) _g68831_))
                ((##fx= _g68830_ 1)
                 (apply (lambda (_size-hint64519_)
                          (make-eq-table__1 _size-hint64519_))
                        _g68831_))
                ((##fx= _g68830_ 2)
                 (apply (lambda (_size-hint64523_ _seed64524_)
                          (make-eq-table__% _size-hint64523_ _seed64524_))
                        _g68831_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g68831_))))))
    (define eq-table-ref
      (lambda (_tab64463_ _key64464_ _default64465_)
        (let ((_table64468_ (&raw-table-table _tab64463_))
              (_seed64469_ (&raw-table-seed _tab64463_)))
          (let* ((_h64471_ (fxxor (eq-hash _key64464_) _seed64469_))
                 (_size64474_ (vector-length _table64468_))
                 (_entries64477_ (fxquotient _size64474_ '2))
                 (_start64480_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64471_ _entries64477_)
                   '1)))
            (let _loop64484_ ((_probe64487_ _start64480_)
                              (_i64489_ '1)
                              (_deleted64491_ '#f))
              (let ((_k64494_ (vector-ref _table64468_ _probe64487_)))
                (if (eq? _k64494_ (macro-unused-obj))
                    _default64465_
                    (if (eq? _k64494_ (macro-deleted-obj))
                        (_loop64484_
                         (let ((_next-probe64497_
                                (fx+ _start64480_
                                     _i64489_
                                     (fx* _i64489_ _i64489_))))
                           (fxmodulo _next-probe64497_ _size64474_))
                         (fx+ _i64489_ '1)
                         (let ((_$e64500_ _deleted64491_))
                           (if _$e64500_ _$e64500_ _probe64487_)))
                        (if (eq? _key64464_ _k64494_)
                            (vector-ref _table64468_ (fx+ _probe64487_ '1))
                            (_loop64484_
                             (let ((_next-probe64503_
                                    (fx+ _start64480_
                                         _i64489_
                                         (fx* _i64489_ _i64489_))))
                               (fxmodulo _next-probe64503_ _size64474_))
                             (fx+ _i64489_ '1)
                             _deleted64491_))))))))))
    (define eq-table-set!
      (lambda (_tab64459_ _key64460_ _value64461_)
        (if (fx< (&raw-table-free _tab64459_)
                 (fxquotient (vector-length (&raw-table-table _tab64459_)) '4))
            (__raw-table-rehash! _tab64459_)
            '#!void)
        (__eq-table-set! _tab64459_ _key64460_ _value64461_)))
    (define __eq-table-set!
      (lambda (_tab64414_ _key64415_ _value64416_)
        (let ((_table64419_ (&raw-table-table _tab64414_))
              (_seed64420_ (&raw-table-seed _tab64414_)))
          (let* ((_h64422_ (fxxor (eq-hash _key64415_) _seed64420_))
                 (_size64425_ (vector-length _table64419_))
                 (_entries64428_ (fxquotient _size64425_ '2))
                 (_start64431_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64422_ _entries64428_)
                   '1)))
            (let _loop64435_ ((_probe64438_ _start64431_)
                              (_i64440_ '1)
                              (_deleted64442_ '#f))
              (let ((_k64445_ (vector-ref _table64419_ _probe64438_)))
                (if (eq? _k64445_ (macro-unused-obj))
                    (if _deleted64442_
                        (begin
                          (vector-set! _table64419_ _deleted64442_ _key64415_)
                          (vector-set!
                           _table64419_
                           (fx+ _deleted64442_ '1)
                           _value64416_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab64414_
                              (fx+ (&raw-table-count _tab64414_) '1)))))
                        (begin
                          (vector-set! _table64419_ _probe64438_ _key64415_)
                          (vector-set!
                           _table64419_
                           (fx+ _probe64438_ '1)
                           _value64416_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab64414_
                              (fx- (&raw-table-free _tab64414_) '1))
                             (&raw-table-count-set!
                              _tab64414_
                              (fx+ (&raw-table-count _tab64414_) '1))))))
                    (if (eq? _k64445_ (macro-deleted-obj))
                        (_loop64435_
                         (let ((_next-probe64450_
                                (fx+ _start64431_
                                     _i64440_
                                     (fx* _i64440_ _i64440_))))
                           (fxmodulo _next-probe64450_ _size64425_))
                         (fx+ _i64440_ '1)
                         (let ((_$e64453_ _deleted64442_))
                           (if _$e64453_ _$e64453_ _probe64438_)))
                        (if (eq? _key64415_ _k64445_)
                            (begin
                              (vector-set!
                               _table64419_
                               _probe64438_
                               _key64415_)
                              (vector-set!
                               _table64419_
                               (fx+ _probe64438_ '1)
                               _value64416_))
                            (_loop64435_
                             (let ((_next-probe64456_
                                    (fx+ _start64431_
                                         _i64440_
                                         (fx* _i64440_ _i64440_))))
                               (fxmodulo _next-probe64456_ _size64425_))
                             (fx+ _i64440_ '1)
                             _deleted64442_))))))))))
    (define eq-table-delete!
      (lambda (_tab64373_ _key64375_)
        (let ((_table64378_ (&raw-table-table _tab64373_))
              (_seed64380_ (&raw-table-seed _tab64373_)))
          (let* ((_h64383_ (fxxor (eq-hash _key64375_) _seed64380_))
                 (_size64386_ (vector-length _table64378_))
                 (_entries64389_ (fxquotient _size64386_ '2))
                 (_start64392_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64383_ _entries64389_)
                   '1)))
            (let _loop64396_ ((_probe64399_ _start64392_) (_i64401_ '1))
              (let ((_k64404_ (vector-ref _table64378_ _probe64399_)))
                (if (eq? _k64404_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k64404_ (macro-deleted-obj))
                        (_loop64396_
                         (let ((_next-probe64407_
                                (fx+ _start64392_
                                     _i64401_
                                     (fx* _i64401_ _i64401_))))
                           (fxmodulo _next-probe64407_ _size64386_))
                         (fx+ _i64401_ '1))
                        (if (eq? _key64375_ _k64404_)
                            (begin
                              (vector-set!
                               _table64378_
                               _probe64399_
                               (macro-deleted-obj))
                              (vector-set!
                               _table64378_
                               (fx+ _probe64399_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab64373_
                                  (fx- (&raw-table-count _tab64373_) '1)))))
                            (_loop64396_
                             (let ((_next-probe64411_
                                    (fx+ _start64392_
                                         _i64401_
                                         (fx* _i64401_ _i64401_))))
                               (fxmodulo _next-probe64411_ _size64386_))
                             (fx+ _i64401_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_size-hint64354_ _seed64356_)
        (make-raw-table__% _size-hint64354_ symbolic-hash eq? _seed64356_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_size-hint64362_ '#f)
               (_seed64364_ (random-integer (macro-max-fixnum32))))
          (make-symbolic-table__% _size-hint64362_ _seed64364_))))
    (define make-symbolic-table__1
      (lambda (_size-hint64366_)
        (let ((_seed64368_ (random-integer (macro-max-fixnum32))))
          (make-symbolic-table__% _size-hint64366_ _seed64368_))))
    (define make-symbolic-table
      (lambda _g68833_
        (let ((_g68832_ (##length _g68833_)))
          (cond ((##fx= _g68832_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g68833_))
                ((##fx= _g68832_ 1)
                 (apply (lambda (_size-hint64366_)
                          (make-symbolic-table__1 _size-hint64366_))
                        _g68833_))
                ((##fx= _g68832_ 2)
                 (apply (lambda (_size-hint64370_ _seed64371_)
                          (make-symbolic-table__%
                           _size-hint64370_
                           _seed64371_))
                        _g68833_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g68833_))))))
    (define symbolic-table-ref
      (lambda (_tab64310_ _key64311_ _default64312_)
        (let ((_table64315_ (&raw-table-table _tab64310_))
              (_seed64316_ (&raw-table-seed _tab64310_)))
          (let* ((_h64318_ (fxxor (symbolic-hash _key64311_) _seed64316_))
                 (_size64321_ (vector-length _table64315_))
                 (_entries64324_ (fxquotient _size64321_ '2))
                 (_start64327_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64318_ _entries64324_)
                   '1)))
            (let _loop64331_ ((_probe64334_ _start64327_)
                              (_i64336_ '1)
                              (_deleted64338_ '#f))
              (let ((_k64341_ (vector-ref _table64315_ _probe64334_)))
                (if (eq? _k64341_ (macro-unused-obj))
                    _default64312_
                    (if (eq? _k64341_ (macro-deleted-obj))
                        (_loop64331_
                         (let ((_next-probe64344_
                                (fx+ _start64327_
                                     _i64336_
                                     (fx* _i64336_ _i64336_))))
                           (fxmodulo _next-probe64344_ _size64321_))
                         (fx+ _i64336_ '1)
                         (let ((_$e64347_ _deleted64338_))
                           (if _$e64347_ _$e64347_ _probe64334_)))
                        (if (eq? _key64311_ _k64341_)
                            (vector-ref _table64315_ (fx+ _probe64334_ '1))
                            (_loop64331_
                             (let ((_next-probe64350_
                                    (fx+ _start64327_
                                         _i64336_
                                         (fx* _i64336_ _i64336_))))
                               (fxmodulo _next-probe64350_ _size64321_))
                             (fx+ _i64336_ '1)
                             _deleted64338_))))))))))
    (define symbolic-table-set!
      (lambda (_tab64306_ _key64307_ _value64308_)
        (if (fx< (&raw-table-free _tab64306_)
                 (fxquotient (vector-length (&raw-table-table _tab64306_)) '4))
            (__raw-table-rehash! _tab64306_)
            '#!void)
        (__symbolic-table-set! _tab64306_ _key64307_ _value64308_)))
    (define __symbolic-table-set!
      (lambda (_tab64261_ _key64262_ _value64263_)
        (let ((_table64266_ (&raw-table-table _tab64261_))
              (_seed64267_ (&raw-table-seed _tab64261_)))
          (let* ((_h64269_ (fxxor (symbolic-hash _key64262_) _seed64267_))
                 (_size64272_ (vector-length _table64266_))
                 (_entries64275_ (fxquotient _size64272_ '2))
                 (_start64278_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64269_ _entries64275_)
                   '1)))
            (let _loop64282_ ((_probe64285_ _start64278_)
                              (_i64287_ '1)
                              (_deleted64289_ '#f))
              (let ((_k64292_ (vector-ref _table64266_ _probe64285_)))
                (if (eq? _k64292_ (macro-unused-obj))
                    (if _deleted64289_
                        (begin
                          (vector-set! _table64266_ _deleted64289_ _key64262_)
                          (vector-set!
                           _table64266_
                           (fx+ _deleted64289_ '1)
                           _value64263_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab64261_
                              (fx+ (&raw-table-count _tab64261_) '1)))))
                        (begin
                          (vector-set! _table64266_ _probe64285_ _key64262_)
                          (vector-set!
                           _table64266_
                           (fx+ _probe64285_ '1)
                           _value64263_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab64261_
                              (fx- (&raw-table-free _tab64261_) '1))
                             (&raw-table-count-set!
                              _tab64261_
                              (fx+ (&raw-table-count _tab64261_) '1))))))
                    (if (eq? _k64292_ (macro-deleted-obj))
                        (_loop64282_
                         (let ((_next-probe64297_
                                (fx+ _start64278_
                                     _i64287_
                                     (fx* _i64287_ _i64287_))))
                           (fxmodulo _next-probe64297_ _size64272_))
                         (fx+ _i64287_ '1)
                         (let ((_$e64300_ _deleted64289_))
                           (if _$e64300_ _$e64300_ _probe64285_)))
                        (if (eq? _key64262_ _k64292_)
                            (begin
                              (vector-set!
                               _table64266_
                               _probe64285_
                               _key64262_)
                              (vector-set!
                               _table64266_
                               (fx+ _probe64285_ '1)
                               _value64263_))
                            (_loop64282_
                             (let ((_next-probe64303_
                                    (fx+ _start64278_
                                         _i64287_
                                         (fx* _i64287_ _i64287_))))
                               (fxmodulo _next-probe64303_ _size64272_))
                             (fx+ _i64287_ '1)
                             _deleted64289_))))))))))
    (define symbolic-table-delete!
      (lambda (_tab64220_ _key64222_)
        (let ((_table64225_ (&raw-table-table _tab64220_))
              (_seed64227_ (&raw-table-seed _tab64220_)))
          (let* ((_h64230_ (fxxor (symbolic-hash _key64222_) _seed64227_))
                 (_size64233_ (vector-length _table64225_))
                 (_entries64236_ (fxquotient _size64233_ '2))
                 (_start64239_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64230_ _entries64236_)
                   '1)))
            (let _loop64243_ ((_probe64246_ _start64239_) (_i64248_ '1))
              (let ((_k64251_ (vector-ref _table64225_ _probe64246_)))
                (if (eq? _k64251_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k64251_ (macro-deleted-obj))
                        (_loop64243_
                         (let ((_next-probe64254_
                                (fx+ _start64239_
                                     _i64248_
                                     (fx* _i64248_ _i64248_))))
                           (fxmodulo _next-probe64254_ _size64233_))
                         (fx+ _i64248_ '1))
                        (if (eq? _key64222_ _k64251_)
                            (begin
                              (vector-set!
                               _table64225_
                               _probe64246_
                               (macro-deleted-obj))
                              (vector-set!
                               _table64225_
                               (fx+ _probe64246_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab64220_
                                  (fx- (&raw-table-count _tab64220_) '1)))))
                            (_loop64243_
                             (let ((_next-probe64258_
                                    (fx+ _start64239_
                                         _i64248_
                                         (fx* _i64248_ _i64248_))))
                               (fxmodulo _next-probe64258_ _size64233_))
                             (fx+ _i64248_ '1)))))))))))
    (define make-string-table__%
      (lambda (_size-hint64201_ _seed64203_)
        (make-raw-table__%
         _size-hint64201_
         string-hash
         ##string=?
         _seed64203_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_size-hint64209_ '#f)
               (_seed64211_ (random-integer (macro-max-fixnum32))))
          (make-string-table__% _size-hint64209_ _seed64211_))))
    (define make-string-table__1
      (lambda (_size-hint64213_)
        (let ((_seed64215_ (random-integer (macro-max-fixnum32))))
          (make-string-table__% _size-hint64213_ _seed64215_))))
    (define make-string-table
      (lambda _g68835_
        (let ((_g68834_ (##length _g68835_)))
          (cond ((##fx= _g68834_ 0)
                 (apply (lambda () (make-string-table__0)) _g68835_))
                ((##fx= _g68834_ 1)
                 (apply (lambda (_size-hint64213_)
                          (make-string-table__1 _size-hint64213_))
                        _g68835_))
                ((##fx= _g68834_ 2)
                 (apply (lambda (_size-hint64217_ _seed64218_)
                          (make-string-table__% _size-hint64217_ _seed64218_))
                        _g68835_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g68835_))))))
    (define string-table-ref
      (lambda (_tab64157_ _key64158_ _default64159_)
        (let ((_table64162_ (&raw-table-table _tab64157_))
              (_seed64163_ (&raw-table-seed _tab64157_)))
          (let* ((_h64165_ (fxxor (##string=?-hash _key64158_) _seed64163_))
                 (_size64168_ (vector-length _table64162_))
                 (_entries64171_ (fxquotient _size64168_ '2))
                 (_start64174_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64165_ _entries64171_)
                   '1)))
            (let _loop64178_ ((_probe64181_ _start64174_)
                              (_i64183_ '1)
                              (_deleted64185_ '#f))
              (let ((_k64188_ (vector-ref _table64162_ _probe64181_)))
                (if (eq? _k64188_ (macro-unused-obj))
                    _default64159_
                    (if (eq? _k64188_ (macro-deleted-obj))
                        (_loop64178_
                         (let ((_next-probe64191_
                                (fx+ _start64174_
                                     _i64183_
                                     (fx* _i64183_ _i64183_))))
                           (fxmodulo _next-probe64191_ _size64168_))
                         (fx+ _i64183_ '1)
                         (let ((_$e64194_ _deleted64185_))
                           (if _$e64194_ _$e64194_ _probe64181_)))
                        (if (##string=? _key64158_ _k64188_)
                            (vector-ref _table64162_ (fx+ _probe64181_ '1))
                            (_loop64178_
                             (let ((_next-probe64197_
                                    (fx+ _start64174_
                                         _i64183_
                                         (fx* _i64183_ _i64183_))))
                               (fxmodulo _next-probe64197_ _size64168_))
                             (fx+ _i64183_ '1)
                             _deleted64185_))))))))))
    (define string-table-set!
      (lambda (_tab64153_ _key64154_ _value64155_)
        (if (fx< (&raw-table-free _tab64153_)
                 (fxquotient (vector-length (&raw-table-table _tab64153_)) '4))
            (__raw-table-rehash! _tab64153_)
            '#!void)
        (__string-table-set! _tab64153_ _key64154_ _value64155_)))
    (define __string-table-set!
      (lambda (_tab64108_ _key64109_ _value64110_)
        (let ((_table64113_ (&raw-table-table _tab64108_))
              (_seed64114_ (&raw-table-seed _tab64108_)))
          (let* ((_h64116_ (fxxor (##string=?-hash _key64109_) _seed64114_))
                 (_size64119_ (vector-length _table64113_))
                 (_entries64122_ (fxquotient _size64119_ '2))
                 (_start64125_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64116_ _entries64122_)
                   '1)))
            (let _loop64129_ ((_probe64132_ _start64125_)
                              (_i64134_ '1)
                              (_deleted64136_ '#f))
              (let ((_k64139_ (vector-ref _table64113_ _probe64132_)))
                (if (eq? _k64139_ (macro-unused-obj))
                    (if _deleted64136_
                        (begin
                          (vector-set! _table64113_ _deleted64136_ _key64109_)
                          (vector-set!
                           _table64113_
                           (fx+ _deleted64136_ '1)
                           _value64110_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab64108_
                              (fx+ (&raw-table-count _tab64108_) '1)))))
                        (begin
                          (vector-set! _table64113_ _probe64132_ _key64109_)
                          (vector-set!
                           _table64113_
                           (fx+ _probe64132_ '1)
                           _value64110_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab64108_
                              (fx- (&raw-table-free _tab64108_) '1))
                             (&raw-table-count-set!
                              _tab64108_
                              (fx+ (&raw-table-count _tab64108_) '1))))))
                    (if (eq? _k64139_ (macro-deleted-obj))
                        (_loop64129_
                         (let ((_next-probe64144_
                                (fx+ _start64125_
                                     _i64134_
                                     (fx* _i64134_ _i64134_))))
                           (fxmodulo _next-probe64144_ _size64119_))
                         (fx+ _i64134_ '1)
                         (let ((_$e64147_ _deleted64136_))
                           (if _$e64147_ _$e64147_ _probe64132_)))
                        (if (##string=? _key64109_ _k64139_)
                            (begin
                              (vector-set!
                               _table64113_
                               _probe64132_
                               _key64109_)
                              (vector-set!
                               _table64113_
                               (fx+ _probe64132_ '1)
                               _value64110_))
                            (_loop64129_
                             (let ((_next-probe64150_
                                    (fx+ _start64125_
                                         _i64134_
                                         (fx* _i64134_ _i64134_))))
                               (fxmodulo _next-probe64150_ _size64119_))
                             (fx+ _i64134_ '1)
                             _deleted64136_))))))))))
    (define string-table-delete!
      (lambda (_tab64067_ _key64069_)
        (let ((_table64072_ (&raw-table-table _tab64067_))
              (_seed64074_ (&raw-table-seed _tab64067_)))
          (let* ((_h64077_ (fxxor (##string=?-hash _key64069_) _seed64074_))
                 (_size64080_ (vector-length _table64072_))
                 (_entries64083_ (fxquotient _size64080_ '2))
                 (_start64086_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64077_ _entries64083_)
                   '1)))
            (let _loop64090_ ((_probe64093_ _start64086_) (_i64095_ '1))
              (let ((_k64098_ (vector-ref _table64072_ _probe64093_)))
                (if (eq? _k64098_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k64098_ (macro-deleted-obj))
                        (_loop64090_
                         (let ((_next-probe64101_
                                (fx+ _start64086_
                                     _i64095_
                                     (fx* _i64095_ _i64095_))))
                           (fxmodulo _next-probe64101_ _size64080_))
                         (fx+ _i64095_ '1))
                        (if (##string=? _key64069_ _k64098_)
                            (begin
                              (vector-set!
                               _table64072_
                               _probe64093_
                               (macro-deleted-obj))
                              (vector-set!
                               _table64072_
                               (fx+ _probe64093_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab64067_
                                  (fx- (&raw-table-count _tab64067_) '1)))))
                            (_loop64090_
                             (let ((_next-probe64105_
                                    (fx+ _start64086_
                                         _i64095_
                                         (fx* _i64095_ _i64095_))))
                               (fxmodulo _next-probe64105_ _size64080_))
                             (fx+ _i64095_ '1)))))))))))))
