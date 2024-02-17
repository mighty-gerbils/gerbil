(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1708210938)
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
      (lambda (_tab64697_)
        (##unchecked-structure-ref _tab64697_ '1 __table::t 'raw-table-table)))
    (define &raw-table-count
      (lambda (_tab64695_)
        (##unchecked-structure-ref _tab64695_ '2 __table::t 'raw-table-count)))
    (define &raw-table-free
      (lambda (_tab64693_)
        (##unchecked-structure-ref _tab64693_ '3 __table::t 'raw-table-free)))
    (define &raw-table-hash
      (lambda (_tab64691_)
        (##unchecked-structure-ref _tab64691_ '4 __table::t 'raw-table-hash)))
    (define &raw-table-test
      (lambda (_tab64689_)
        (##unchecked-structure-ref _tab64689_ '5 __table::t 'raw-table-test)))
    (define &raw-table-seed
      (lambda (_tab64687_)
        (##unchecked-structure-ref _tab64687_ '6 __table::t 'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_tab64684_ _val64685_)
        (##unchecked-structure-set!
         _tab64684_
         _val64685_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_tab64681_ _val64682_)
        (##unchecked-structure-set!
         _tab64681_
         _val64682_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_tab64678_ _val64679_)
        (##unchecked-structure-set!
         _tab64678_
         _val64679_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_tab64675_ _val64676_)
        (##unchecked-structure-set!
         _tab64675_
         _val64676_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_tab64672_ _val64673_)
        (##unchecked-structure-set!
         _tab64672_
         _val64673_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_tab64669_ _val64670_)
        (##unchecked-structure-set!
         _tab64669_
         _val64670_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define make-raw-table__%
      (lambda (_size-hint64645_ _hash64646_ _test64647_ _seed64648_)
        (let* ((_size64650_
                (if (and (fixnum? _size-hint64645_) (fx> _size-hint64645_ '0))
                    (fx* (max _size-hint64645_ '2) '4)
                    '16))
               (_table64652_ (make-vector _size64650_ (macro-unused-obj))))
          (##structure
           __table::t
           _table64652_
           '0
           (fxquotient _size64650_ '2)
           _hash64646_
           _test64647_
           _seed64648_))))
    (define make-raw-table__0
      (lambda (_size-hint64658_ _hash64659_ _test64660_)
        (let ((_seed64662_ (random-integer (macro-max-fixnum32))))
          (make-raw-table__%
           _size-hint64658_
           _hash64659_
           _test64660_
           _seed64662_))))
    (define make-raw-table
      (lambda _g68766_
        (let ((_g68765_ (##length _g68766_)))
          (cond ((##fx= _g68765_ 3)
                 (apply (lambda (_size-hint64658_ _hash64659_ _test64660_)
                          (make-raw-table__0
                           _size-hint64658_
                           _hash64659_
                           _test64660_))
                        _g68766_))
                ((##fx= _g68765_ 4)
                 (apply (lambda (_size-hint64664_
                                 _hash64665_
                                 _test64666_
                                 _seed64667_)
                          (make-raw-table__%
                           _size-hint64664_
                           _hash64665_
                           _test64666_
                           _seed64667_))
                        _g68766_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g68766_))))))
    (define raw-table-ref
      (lambda (_tab64600_ _key64601_ _default64602_)
        (let ((_table64604_ (&raw-table-table _tab64600_))
              (_seed64605_ (&raw-table-seed _tab64600_))
              (_hash64606_ (&raw-table-hash _tab64600_))
              (_test64607_ (&raw-table-test _tab64600_)))
          (let* ((_h64609_ (fxxor (_hash64606_ _key64601_) _seed64605_))
                 (_size64612_ (vector-length _table64604_))
                 (_entries64615_ (fxquotient _size64612_ '2))
                 (_start64618_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64609_ _entries64615_)
                   '1)))
            (let _loop64622_ ((_probe64625_ _start64618_)
                              (_i64627_ '1)
                              (_deleted64629_ '#f))
              (let ((_k64632_ (vector-ref _table64604_ _probe64625_)))
                (if (eq? _k64632_ (macro-unused-obj))
                    _default64602_
                    (if (eq? _k64632_ (macro-deleted-obj))
                        (_loop64622_
                         (let ((_next-probe64635_
                                (fx+ _start64618_
                                     _i64627_
                                     (fx* _i64627_ _i64627_))))
                           (fxmodulo _next-probe64635_ _size64612_))
                         (fx+ _i64627_ '1)
                         (let ((_$e64638_ _deleted64629_))
                           (if _$e64638_ _$e64638_ _probe64625_)))
                        (if (_test64607_ _key64601_ _k64632_)
                            (vector-ref _table64604_ (fx+ _probe64625_ '1))
                            (_loop64622_
                             (let ((_next-probe64641_
                                    (fx+ _start64618_
                                         _i64627_
                                         (fx* _i64627_ _i64627_))))
                               (fxmodulo _next-probe64641_ _size64612_))
                             (fx+ _i64627_ '1)
                             _deleted64629_))))))))))
    (define raw-table-set!
      (lambda (_tab64596_ _key64597_ _value64598_)
        (if (fx< (&raw-table-free _tab64596_)
                 (fxquotient (vector-length (&raw-table-table _tab64596_)) '4))
            (__raw-table-rehash! _tab64596_)
            '#!void)
        (__raw-table-set! _tab64596_ _key64597_ _value64598_)))
    (define raw-table-delete!
      (lambda (_tab64557_ _key64558_)
        (let ((_table64560_ (&raw-table-table _tab64557_))
              (_seed64561_ (&raw-table-seed _tab64557_))
              (_hash64562_ (&raw-table-hash _tab64557_))
              (_test64563_ (&raw-table-test _tab64557_)))
          (let* ((_h64565_ (fxxor (_hash64562_ _key64558_) _seed64561_))
                 (_size64568_ (vector-length _table64560_))
                 (_entries64571_ (fxquotient _size64568_ '2))
                 (_start64574_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64565_ _entries64571_)
                   '1)))
            (let _loop64578_ ((_probe64581_ _start64574_) (_i64583_ '1))
              (let ((_k64586_ (vector-ref _table64560_ _probe64581_)))
                (if (eq? _k64586_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k64586_ (macro-deleted-obj))
                        (_loop64578_
                         (let ((_next-probe64589_
                                (fx+ _start64574_
                                     _i64583_
                                     (fx* _i64583_ _i64583_))))
                           (fxmodulo _next-probe64589_ _size64568_))
                         (fx+ _i64583_ '1))
                        (if (_test64563_ _key64558_ _k64586_)
                            (begin
                              (vector-set!
                               _table64560_
                               _probe64581_
                               (macro-deleted-obj))
                              (vector-set!
                               _table64560_
                               (fx+ _probe64581_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab64557_
                                  (fx- (&raw-table-count _tab64557_) '1)))))
                            (_loop64578_
                             (let ((_next-probe64593_
                                    (fx+ _start64574_
                                         _i64583_
                                         (fx* _i64583_ _i64583_))))
                               (fxmodulo _next-probe64593_ _size64568_))
                             (fx+ _i64583_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_proc64541_ _tab64542_)
        (let* ((_table64544_ (&raw-table-table _tab64542_))
               (_size64546_ (vector-length _table64544_)))
          (let _loop64549_ ((_i64551_ '0))
            (if (fx< _i64551_ _size64546_)
                (begin
                  (let ((_key64553_ (vector-ref _table64544_ _i64551_)))
                    (if (and (not (eq? _key64553_ (macro-unused-obj)))
                             (not (eq? _key64553_ (macro-deleted-obj))))
                        (let ((_value64555_
                               (vector-ref _table64544_ (fx+ _i64551_ '1))))
                          (_proc64541_ _key64553_ _value64555_))
                        '#!void))
                  (_loop64549_ (fx+ _i64551_ '2)))
                '#!void)))))
    (define __raw-table-set!
      (lambda (_tab64495_ _key64496_ _value64497_)
        (let ((_table64499_ (&raw-table-table _tab64495_))
              (_seed64500_ (&raw-table-seed _tab64495_))
              (_hash64501_ (&raw-table-hash _tab64495_))
              (_test64502_ (&raw-table-test _tab64495_)))
          (let* ((_h64504_ (fxxor (_hash64501_ _key64496_) _seed64500_))
                 (_size64507_ (vector-length _table64499_))
                 (_entries64510_ (fxquotient _size64507_ '2))
                 (_start64513_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64504_ _entries64510_)
                   '1)))
            (let _loop64517_ ((_probe64520_ _start64513_)
                              (_i64522_ '1)
                              (_deleted64524_ '#f))
              (let ((_k64527_ (vector-ref _table64499_ _probe64520_)))
                (if (eq? _k64527_ (macro-unused-obj))
                    (if _deleted64524_
                        (begin
                          (vector-set! _table64499_ _deleted64524_ _key64496_)
                          (vector-set!
                           _table64499_
                           (fx+ _deleted64524_ '1)
                           _value64497_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab64495_
                              (fx+ (&raw-table-count _tab64495_) '1)))))
                        (begin
                          (vector-set! _table64499_ _probe64520_ _key64496_)
                          (vector-set!
                           _table64499_
                           (fx+ _probe64520_ '1)
                           _value64497_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab64495_
                              (fx- (&raw-table-free _tab64495_) '1))
                             (&raw-table-count-set!
                              _tab64495_
                              (fx+ (&raw-table-count _tab64495_) '1))))))
                    (if (eq? _k64527_ (macro-deleted-obj))
                        (_loop64517_
                         (let ((_next-probe64532_
                                (fx+ _start64513_
                                     _i64522_
                                     (fx* _i64522_ _i64522_))))
                           (fxmodulo _next-probe64532_ _size64507_))
                         (fx+ _i64522_ '1)
                         (let ((_$e64535_ _deleted64524_))
                           (if _$e64535_ _$e64535_ _probe64520_)))
                        (if (_test64502_ _key64496_ _k64527_)
                            (begin
                              (vector-set!
                               _table64499_
                               _probe64520_
                               _key64496_)
                              (vector-set!
                               _table64499_
                               (fx+ _probe64520_ '1)
                               _value64497_))
                            (_loop64517_
                             (let ((_next-probe64538_
                                    (fx+ _start64513_
                                         _i64522_
                                         (fx* _i64522_ _i64522_))))
                               (fxmodulo _next-probe64538_ _size64507_))
                             (fx+ _i64522_ '1)
                             _deleted64524_))))))))))
    (define __raw-table-rehash!
      (lambda (_tab64476_)
        (let* ((_old-table64478_ (&raw-table-table _tab64476_))
               (_old-size64480_ (vector-length _old-table64478_))
               (_new-size64482_
                (if (fx< (&raw-table-count _tab64476_)
                         (fxquotient _old-size64480_ '4))
                    (vector-length _old-table64478_)
                    (fx* '2 (vector-length _old-table64478_))))
               (_new-table64484_
                (make-vector _new-size64482_ (macro-unused-obj))))
          (&raw-table-table-set! _tab64476_ _new-table64484_)
          (&raw-table-count-set! _tab64476_ '0)
          (&raw-table-free-set! _tab64476_ (fxquotient _new-size64482_ '2))
          (let _lp64487_ ((_i64489_ '0))
            (if (fx< _i64489_ _old-size64480_)
                (begin
                  (let ((_key64491_ (vector-ref _old-table64478_ _i64489_)))
                    (if (and (not (eq? _key64491_ (macro-unused-obj)))
                             (not (eq? _key64491_ (macro-deleted-obj))))
                        (let ((_value64493_
                               (vector-ref
                                _old-table64478_
                                (fx+ _i64489_ '1))))
                          (__raw-table-set!
                           _tab64476_
                           _key64491_
                           _value64493_))
                        '#!void))
                  (_lp64487_ (fx+ _i64489_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_obj64467_)
        (let ((_t64469_ (##type _obj64467_)))
          (if (fx= (fxand _t64469_ '1) '0)
              (fxand (##type-cast _obj64467_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (or (symbol? _obj64467_) (keyword? _obj64467_))
                  (symbolic-hash _obj64467_)
                  (fxand (let ((_sn64474_ (object->serial-number _obj64467_)))
                           (if (fixnum? _sn64474_)
                               _sn64474_
                               (fxarithmetic-shift-left
                                (##bignum.mdigit-ref _sn64474_ '0)
                                '10)))
                         (macro-max-fixnum32)))))))
    (define symbolic-hash (lambda (_obj64465_) (macro-slot '1 _obj64465_)))
    (define string-hash (lambda (_obj64463_) (##string=?-hash _obj64463_)))
    (define make-eq-table__%
      (lambda (_size-hint64444_ _seed64446_)
        (make-raw-table__% _size-hint64444_ eq-hash eq? _seed64446_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_size-hint64452_ '#f)
               (_seed64454_ (random-integer (macro-max-fixnum32))))
          (make-eq-table__% _size-hint64452_ _seed64454_))))
    (define make-eq-table__1
      (lambda (_size-hint64456_)
        (let ((_seed64458_ (random-integer (macro-max-fixnum32))))
          (make-eq-table__% _size-hint64456_ _seed64458_))))
    (define make-eq-table
      (lambda _g68768_
        (let ((_g68767_ (##length _g68768_)))
          (cond ((##fx= _g68767_ 0)
                 (apply (lambda () (make-eq-table__0)) _g68768_))
                ((##fx= _g68767_ 1)
                 (apply (lambda (_size-hint64456_)
                          (make-eq-table__1 _size-hint64456_))
                        _g68768_))
                ((##fx= _g68767_ 2)
                 (apply (lambda (_size-hint64460_ _seed64461_)
                          (make-eq-table__% _size-hint64460_ _seed64461_))
                        _g68768_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g68768_))))))
    (define eq-table-ref
      (lambda (_tab64400_ _key64401_ _default64402_)
        (let ((_table64405_ (&raw-table-table _tab64400_))
              (_seed64406_ (&raw-table-seed _tab64400_)))
          (let* ((_h64408_ (fxxor (eq-hash _key64401_) _seed64406_))
                 (_size64411_ (vector-length _table64405_))
                 (_entries64414_ (fxquotient _size64411_ '2))
                 (_start64417_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64408_ _entries64414_)
                   '1)))
            (let _loop64421_ ((_probe64424_ _start64417_)
                              (_i64426_ '1)
                              (_deleted64428_ '#f))
              (let ((_k64431_ (vector-ref _table64405_ _probe64424_)))
                (if (eq? _k64431_ (macro-unused-obj))
                    _default64402_
                    (if (eq? _k64431_ (macro-deleted-obj))
                        (_loop64421_
                         (let ((_next-probe64434_
                                (fx+ _start64417_
                                     _i64426_
                                     (fx* _i64426_ _i64426_))))
                           (fxmodulo _next-probe64434_ _size64411_))
                         (fx+ _i64426_ '1)
                         (let ((_$e64437_ _deleted64428_))
                           (if _$e64437_ _$e64437_ _probe64424_)))
                        (if (eq? _key64401_ _k64431_)
                            (vector-ref _table64405_ (fx+ _probe64424_ '1))
                            (_loop64421_
                             (let ((_next-probe64440_
                                    (fx+ _start64417_
                                         _i64426_
                                         (fx* _i64426_ _i64426_))))
                               (fxmodulo _next-probe64440_ _size64411_))
                             (fx+ _i64426_ '1)
                             _deleted64428_))))))))))
    (define eq-table-set!
      (lambda (_tab64396_ _key64397_ _value64398_)
        (if (fx< (&raw-table-free _tab64396_)
                 (fxquotient (vector-length (&raw-table-table _tab64396_)) '4))
            (__raw-table-rehash! _tab64396_)
            '#!void)
        (__eq-table-set! _tab64396_ _key64397_ _value64398_)))
    (define __eq-table-set!
      (lambda (_tab64351_ _key64352_ _value64353_)
        (let ((_table64356_ (&raw-table-table _tab64351_))
              (_seed64357_ (&raw-table-seed _tab64351_)))
          (let* ((_h64359_ (fxxor (eq-hash _key64352_) _seed64357_))
                 (_size64362_ (vector-length _table64356_))
                 (_entries64365_ (fxquotient _size64362_ '2))
                 (_start64368_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64359_ _entries64365_)
                   '1)))
            (let _loop64372_ ((_probe64375_ _start64368_)
                              (_i64377_ '1)
                              (_deleted64379_ '#f))
              (let ((_k64382_ (vector-ref _table64356_ _probe64375_)))
                (if (eq? _k64382_ (macro-unused-obj))
                    (if _deleted64379_
                        (begin
                          (vector-set! _table64356_ _deleted64379_ _key64352_)
                          (vector-set!
                           _table64356_
                           (fx+ _deleted64379_ '1)
                           _value64353_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab64351_
                              (fx+ (&raw-table-count _tab64351_) '1)))))
                        (begin
                          (vector-set! _table64356_ _probe64375_ _key64352_)
                          (vector-set!
                           _table64356_
                           (fx+ _probe64375_ '1)
                           _value64353_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab64351_
                              (fx- (&raw-table-free _tab64351_) '1))
                             (&raw-table-count-set!
                              _tab64351_
                              (fx+ (&raw-table-count _tab64351_) '1))))))
                    (if (eq? _k64382_ (macro-deleted-obj))
                        (_loop64372_
                         (let ((_next-probe64387_
                                (fx+ _start64368_
                                     _i64377_
                                     (fx* _i64377_ _i64377_))))
                           (fxmodulo _next-probe64387_ _size64362_))
                         (fx+ _i64377_ '1)
                         (let ((_$e64390_ _deleted64379_))
                           (if _$e64390_ _$e64390_ _probe64375_)))
                        (if (eq? _key64352_ _k64382_)
                            (begin
                              (vector-set!
                               _table64356_
                               _probe64375_
                               _key64352_)
                              (vector-set!
                               _table64356_
                               (fx+ _probe64375_ '1)
                               _value64353_))
                            (_loop64372_
                             (let ((_next-probe64393_
                                    (fx+ _start64368_
                                         _i64377_
                                         (fx* _i64377_ _i64377_))))
                               (fxmodulo _next-probe64393_ _size64362_))
                             (fx+ _i64377_ '1)
                             _deleted64379_))))))))))
    (define eq-table-delete!
      (lambda (_tab64310_ _key64312_)
        (let ((_table64315_ (&raw-table-table _tab64310_))
              (_seed64317_ (&raw-table-seed _tab64310_)))
          (let* ((_h64320_ (fxxor (eq-hash _key64312_) _seed64317_))
                 (_size64323_ (vector-length _table64315_))
                 (_entries64326_ (fxquotient _size64323_ '2))
                 (_start64329_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64320_ _entries64326_)
                   '1)))
            (let _loop64333_ ((_probe64336_ _start64329_) (_i64338_ '1))
              (let ((_k64341_ (vector-ref _table64315_ _probe64336_)))
                (if (eq? _k64341_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k64341_ (macro-deleted-obj))
                        (_loop64333_
                         (let ((_next-probe64344_
                                (fx+ _start64329_
                                     _i64338_
                                     (fx* _i64338_ _i64338_))))
                           (fxmodulo _next-probe64344_ _size64323_))
                         (fx+ _i64338_ '1))
                        (if (eq? _key64312_ _k64341_)
                            (begin
                              (vector-set!
                               _table64315_
                               _probe64336_
                               (macro-deleted-obj))
                              (vector-set!
                               _table64315_
                               (fx+ _probe64336_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab64310_
                                  (fx- (&raw-table-count _tab64310_) '1)))))
                            (_loop64333_
                             (let ((_next-probe64348_
                                    (fx+ _start64329_
                                         _i64338_
                                         (fx* _i64338_ _i64338_))))
                               (fxmodulo _next-probe64348_ _size64323_))
                             (fx+ _i64338_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_size-hint64291_ _seed64293_)
        (make-raw-table__% _size-hint64291_ symbolic-hash eq? _seed64293_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_size-hint64299_ '#f)
               (_seed64301_ (random-integer (macro-max-fixnum32))))
          (make-symbolic-table__% _size-hint64299_ _seed64301_))))
    (define make-symbolic-table__1
      (lambda (_size-hint64303_)
        (let ((_seed64305_ (random-integer (macro-max-fixnum32))))
          (make-symbolic-table__% _size-hint64303_ _seed64305_))))
    (define make-symbolic-table
      (lambda _g68770_
        (let ((_g68769_ (##length _g68770_)))
          (cond ((##fx= _g68769_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g68770_))
                ((##fx= _g68769_ 1)
                 (apply (lambda (_size-hint64303_)
                          (make-symbolic-table__1 _size-hint64303_))
                        _g68770_))
                ((##fx= _g68769_ 2)
                 (apply (lambda (_size-hint64307_ _seed64308_)
                          (make-symbolic-table__%
                           _size-hint64307_
                           _seed64308_))
                        _g68770_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g68770_))))))
    (define symbolic-table-ref
      (lambda (_tab64247_ _key64248_ _default64249_)
        (let ((_table64252_ (&raw-table-table _tab64247_))
              (_seed64253_ (&raw-table-seed _tab64247_)))
          (let* ((_h64255_ (fxxor (symbolic-hash _key64248_) _seed64253_))
                 (_size64258_ (vector-length _table64252_))
                 (_entries64261_ (fxquotient _size64258_ '2))
                 (_start64264_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64255_ _entries64261_)
                   '1)))
            (let _loop64268_ ((_probe64271_ _start64264_)
                              (_i64273_ '1)
                              (_deleted64275_ '#f))
              (let ((_k64278_ (vector-ref _table64252_ _probe64271_)))
                (if (eq? _k64278_ (macro-unused-obj))
                    _default64249_
                    (if (eq? _k64278_ (macro-deleted-obj))
                        (_loop64268_
                         (let ((_next-probe64281_
                                (fx+ _start64264_
                                     _i64273_
                                     (fx* _i64273_ _i64273_))))
                           (fxmodulo _next-probe64281_ _size64258_))
                         (fx+ _i64273_ '1)
                         (let ((_$e64284_ _deleted64275_))
                           (if _$e64284_ _$e64284_ _probe64271_)))
                        (if (eq? _key64248_ _k64278_)
                            (vector-ref _table64252_ (fx+ _probe64271_ '1))
                            (_loop64268_
                             (let ((_next-probe64287_
                                    (fx+ _start64264_
                                         _i64273_
                                         (fx* _i64273_ _i64273_))))
                               (fxmodulo _next-probe64287_ _size64258_))
                             (fx+ _i64273_ '1)
                             _deleted64275_))))))))))
    (define symbolic-table-set!
      (lambda (_tab64243_ _key64244_ _value64245_)
        (if (fx< (&raw-table-free _tab64243_)
                 (fxquotient (vector-length (&raw-table-table _tab64243_)) '4))
            (__raw-table-rehash! _tab64243_)
            '#!void)
        (__symbolic-table-set! _tab64243_ _key64244_ _value64245_)))
    (define __symbolic-table-set!
      (lambda (_tab64198_ _key64199_ _value64200_)
        (let ((_table64203_ (&raw-table-table _tab64198_))
              (_seed64204_ (&raw-table-seed _tab64198_)))
          (let* ((_h64206_ (fxxor (symbolic-hash _key64199_) _seed64204_))
                 (_size64209_ (vector-length _table64203_))
                 (_entries64212_ (fxquotient _size64209_ '2))
                 (_start64215_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64206_ _entries64212_)
                   '1)))
            (let _loop64219_ ((_probe64222_ _start64215_)
                              (_i64224_ '1)
                              (_deleted64226_ '#f))
              (let ((_k64229_ (vector-ref _table64203_ _probe64222_)))
                (if (eq? _k64229_ (macro-unused-obj))
                    (if _deleted64226_
                        (begin
                          (vector-set! _table64203_ _deleted64226_ _key64199_)
                          (vector-set!
                           _table64203_
                           (fx+ _deleted64226_ '1)
                           _value64200_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab64198_
                              (fx+ (&raw-table-count _tab64198_) '1)))))
                        (begin
                          (vector-set! _table64203_ _probe64222_ _key64199_)
                          (vector-set!
                           _table64203_
                           (fx+ _probe64222_ '1)
                           _value64200_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab64198_
                              (fx- (&raw-table-free _tab64198_) '1))
                             (&raw-table-count-set!
                              _tab64198_
                              (fx+ (&raw-table-count _tab64198_) '1))))))
                    (if (eq? _k64229_ (macro-deleted-obj))
                        (_loop64219_
                         (let ((_next-probe64234_
                                (fx+ _start64215_
                                     _i64224_
                                     (fx* _i64224_ _i64224_))))
                           (fxmodulo _next-probe64234_ _size64209_))
                         (fx+ _i64224_ '1)
                         (let ((_$e64237_ _deleted64226_))
                           (if _$e64237_ _$e64237_ _probe64222_)))
                        (if (eq? _key64199_ _k64229_)
                            (begin
                              (vector-set!
                               _table64203_
                               _probe64222_
                               _key64199_)
                              (vector-set!
                               _table64203_
                               (fx+ _probe64222_ '1)
                               _value64200_))
                            (_loop64219_
                             (let ((_next-probe64240_
                                    (fx+ _start64215_
                                         _i64224_
                                         (fx* _i64224_ _i64224_))))
                               (fxmodulo _next-probe64240_ _size64209_))
                             (fx+ _i64224_ '1)
                             _deleted64226_))))))))))
    (define symbolic-table-delete!
      (lambda (_tab64157_ _key64159_)
        (let ((_table64162_ (&raw-table-table _tab64157_))
              (_seed64164_ (&raw-table-seed _tab64157_)))
          (let* ((_h64167_ (fxxor (symbolic-hash _key64159_) _seed64164_))
                 (_size64170_ (vector-length _table64162_))
                 (_entries64173_ (fxquotient _size64170_ '2))
                 (_start64176_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64167_ _entries64173_)
                   '1)))
            (let _loop64180_ ((_probe64183_ _start64176_) (_i64185_ '1))
              (let ((_k64188_ (vector-ref _table64162_ _probe64183_)))
                (if (eq? _k64188_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k64188_ (macro-deleted-obj))
                        (_loop64180_
                         (let ((_next-probe64191_
                                (fx+ _start64176_
                                     _i64185_
                                     (fx* _i64185_ _i64185_))))
                           (fxmodulo _next-probe64191_ _size64170_))
                         (fx+ _i64185_ '1))
                        (if (eq? _key64159_ _k64188_)
                            (begin
                              (vector-set!
                               _table64162_
                               _probe64183_
                               (macro-deleted-obj))
                              (vector-set!
                               _table64162_
                               (fx+ _probe64183_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab64157_
                                  (fx- (&raw-table-count _tab64157_) '1)))))
                            (_loop64180_
                             (let ((_next-probe64195_
                                    (fx+ _start64176_
                                         _i64185_
                                         (fx* _i64185_ _i64185_))))
                               (fxmodulo _next-probe64195_ _size64170_))
                             (fx+ _i64185_ '1)))))))))))
    (define make-string-table__%
      (lambda (_size-hint64138_ _seed64140_)
        (make-raw-table__%
         _size-hint64138_
         string-hash
         ##string=?
         _seed64140_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_size-hint64146_ '#f)
               (_seed64148_ (random-integer (macro-max-fixnum32))))
          (make-string-table__% _size-hint64146_ _seed64148_))))
    (define make-string-table__1
      (lambda (_size-hint64150_)
        (let ((_seed64152_ (random-integer (macro-max-fixnum32))))
          (make-string-table__% _size-hint64150_ _seed64152_))))
    (define make-string-table
      (lambda _g68772_
        (let ((_g68771_ (##length _g68772_)))
          (cond ((##fx= _g68771_ 0)
                 (apply (lambda () (make-string-table__0)) _g68772_))
                ((##fx= _g68771_ 1)
                 (apply (lambda (_size-hint64150_)
                          (make-string-table__1 _size-hint64150_))
                        _g68772_))
                ((##fx= _g68771_ 2)
                 (apply (lambda (_size-hint64154_ _seed64155_)
                          (make-string-table__% _size-hint64154_ _seed64155_))
                        _g68772_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g68772_))))))
    (define string-table-ref
      (lambda (_tab64094_ _key64095_ _default64096_)
        (let ((_table64099_ (&raw-table-table _tab64094_))
              (_seed64100_ (&raw-table-seed _tab64094_)))
          (let* ((_h64102_ (fxxor (##string=?-hash _key64095_) _seed64100_))
                 (_size64105_ (vector-length _table64099_))
                 (_entries64108_ (fxquotient _size64105_ '2))
                 (_start64111_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64102_ _entries64108_)
                   '1)))
            (let _loop64115_ ((_probe64118_ _start64111_)
                              (_i64120_ '1)
                              (_deleted64122_ '#f))
              (let ((_k64125_ (vector-ref _table64099_ _probe64118_)))
                (if (eq? _k64125_ (macro-unused-obj))
                    _default64096_
                    (if (eq? _k64125_ (macro-deleted-obj))
                        (_loop64115_
                         (let ((_next-probe64128_
                                (fx+ _start64111_
                                     _i64120_
                                     (fx* _i64120_ _i64120_))))
                           (fxmodulo _next-probe64128_ _size64105_))
                         (fx+ _i64120_ '1)
                         (let ((_$e64131_ _deleted64122_))
                           (if _$e64131_ _$e64131_ _probe64118_)))
                        (if (##string=? _key64095_ _k64125_)
                            (vector-ref _table64099_ (fx+ _probe64118_ '1))
                            (_loop64115_
                             (let ((_next-probe64134_
                                    (fx+ _start64111_
                                         _i64120_
                                         (fx* _i64120_ _i64120_))))
                               (fxmodulo _next-probe64134_ _size64105_))
                             (fx+ _i64120_ '1)
                             _deleted64122_))))))))))
    (define string-table-set!
      (lambda (_tab64090_ _key64091_ _value64092_)
        (if (fx< (&raw-table-free _tab64090_)
                 (fxquotient (vector-length (&raw-table-table _tab64090_)) '4))
            (__raw-table-rehash! _tab64090_)
            '#!void)
        (__string-table-set! _tab64090_ _key64091_ _value64092_)))
    (define __string-table-set!
      (lambda (_tab64045_ _key64046_ _value64047_)
        (let ((_table64050_ (&raw-table-table _tab64045_))
              (_seed64051_ (&raw-table-seed _tab64045_)))
          (let* ((_h64053_ (fxxor (##string=?-hash _key64046_) _seed64051_))
                 (_size64056_ (vector-length _table64050_))
                 (_entries64059_ (fxquotient _size64056_ '2))
                 (_start64062_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64053_ _entries64059_)
                   '1)))
            (let _loop64066_ ((_probe64069_ _start64062_)
                              (_i64071_ '1)
                              (_deleted64073_ '#f))
              (let ((_k64076_ (vector-ref _table64050_ _probe64069_)))
                (if (eq? _k64076_ (macro-unused-obj))
                    (if _deleted64073_
                        (begin
                          (vector-set! _table64050_ _deleted64073_ _key64046_)
                          (vector-set!
                           _table64050_
                           (fx+ _deleted64073_ '1)
                           _value64047_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab64045_
                              (fx+ (&raw-table-count _tab64045_) '1)))))
                        (begin
                          (vector-set! _table64050_ _probe64069_ _key64046_)
                          (vector-set!
                           _table64050_
                           (fx+ _probe64069_ '1)
                           _value64047_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab64045_
                              (fx- (&raw-table-free _tab64045_) '1))
                             (&raw-table-count-set!
                              _tab64045_
                              (fx+ (&raw-table-count _tab64045_) '1))))))
                    (if (eq? _k64076_ (macro-deleted-obj))
                        (_loop64066_
                         (let ((_next-probe64081_
                                (fx+ _start64062_
                                     _i64071_
                                     (fx* _i64071_ _i64071_))))
                           (fxmodulo _next-probe64081_ _size64056_))
                         (fx+ _i64071_ '1)
                         (let ((_$e64084_ _deleted64073_))
                           (if _$e64084_ _$e64084_ _probe64069_)))
                        (if (##string=? _key64046_ _k64076_)
                            (begin
                              (vector-set!
                               _table64050_
                               _probe64069_
                               _key64046_)
                              (vector-set!
                               _table64050_
                               (fx+ _probe64069_ '1)
                               _value64047_))
                            (_loop64066_
                             (let ((_next-probe64087_
                                    (fx+ _start64062_
                                         _i64071_
                                         (fx* _i64071_ _i64071_))))
                               (fxmodulo _next-probe64087_ _size64056_))
                             (fx+ _i64071_ '1)
                             _deleted64073_))))))))))
    (define string-table-delete!
      (lambda (_tab64004_ _key64006_)
        (let ((_table64009_ (&raw-table-table _tab64004_))
              (_seed64011_ (&raw-table-seed _tab64004_)))
          (let* ((_h64014_ (fxxor (##string=?-hash _key64006_) _seed64011_))
                 (_size64017_ (vector-length _table64009_))
                 (_entries64020_ (fxquotient _size64017_ '2))
                 (_start64023_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64014_ _entries64020_)
                   '1)))
            (let _loop64027_ ((_probe64030_ _start64023_) (_i64032_ '1))
              (let ((_k64035_ (vector-ref _table64009_ _probe64030_)))
                (if (eq? _k64035_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k64035_ (macro-deleted-obj))
                        (_loop64027_
                         (let ((_next-probe64038_
                                (fx+ _start64023_
                                     _i64032_
                                     (fx* _i64032_ _i64032_))))
                           (fxmodulo _next-probe64038_ _size64017_))
                         (fx+ _i64032_ '1))
                        (if (##string=? _key64006_ _k64035_)
                            (begin
                              (vector-set!
                               _table64009_
                               _probe64030_
                               (macro-deleted-obj))
                              (vector-set!
                               _table64009_
                               (fx+ _probe64030_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab64004_
                                  (fx- (&raw-table-count _tab64004_) '1)))))
                            (_loop64027_
                             (let ((_next-probe64042_
                                    (fx+ _start64023_
                                         _i64032_
                                         (fx* _i64032_ _i64032_))))
                               (fxmodulo _next-probe64042_ _size64017_))
                             (fx+ _i64032_ '1)))))))))))))
