(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1708194416)
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
       '#(table 5 #f count 5 #f free 5 #f hash 5 #f test 5 #f)))
    (define &raw-table-table
      (lambda (_tab64583_)
        (##unchecked-structure-ref _tab64583_ '1 __table::t 'raw-table-table)))
    (define &raw-table-count
      (lambda (_tab64581_)
        (##unchecked-structure-ref _tab64581_ '2 __table::t 'raw-table-count)))
    (define &raw-table-free
      (lambda (_tab64579_)
        (##unchecked-structure-ref _tab64579_ '3 __table::t 'raw-table-free)))
    (define &raw-table-hash
      (lambda (_tab64577_)
        (##unchecked-structure-ref _tab64577_ '4 __table::t 'raw-table-hash)))
    (define &raw-table-test
      (lambda (_tab64575_)
        (##unchecked-structure-ref _tab64575_ '5 __table::t 'raw-table-test)))
    (define &raw-table-table-set!
      (lambda (_tab64572_ _val64573_)
        (##unchecked-structure-set!
         _tab64572_
         _val64573_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_tab64569_ _val64570_)
        (##unchecked-structure-set!
         _tab64569_
         _val64570_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_tab64566_ _val64567_)
        (##unchecked-structure-set!
         _tab64566_
         _val64567_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_tab64563_ _val64564_)
        (##unchecked-structure-set!
         _tab64563_
         _val64564_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_tab64560_ _val64561_)
        (##unchecked-structure-set!
         _tab64560_
         _val64561_
         '5
         __table::t
         'raw-table-test-set!)))
    (define make-raw-table
      (lambda (_size-hint64551_ _hash64552_ _test64553_)
        (let* ((_size64555_
                (if (and (fixnum? _size-hint64551_) (fx> _size-hint64551_ '0))
                    (fx* (max _size-hint64551_ '2) '4)
                    '16))
               (_table64557_ (make-vector _size64555_ (macro-unused-obj))))
          (##structure
           __table::t
           _table64557_
           '0
           (fxquotient _size64555_ '2)
           _hash64552_
           _test64553_))))
    (define raw-table-ref
      (lambda (_tab64508_ _key64509_ _default64510_)
        (let ((_table64512_ (&raw-table-table _tab64508_))
              (_hash64513_ (&raw-table-hash _tab64508_))
              (_test64514_ (&raw-table-test _tab64508_)))
          (let* ((_h64516_ (_hash64513_ _key64509_))
                 (_size64519_ (vector-length _table64512_))
                 (_entries64522_ (fxquotient _size64519_ '2))
                 (_start64525_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64516_ _entries64522_)
                   '1)))
            (let _loop64529_ ((_probe64532_ _start64525_)
                              (_i64534_ '1)
                              (_deleted64536_ '#f))
              (let ((_k64539_ (vector-ref _table64512_ _probe64532_)))
                (if (eq? _k64539_ (macro-unused-obj))
                    _default64510_
                    (if (eq? _k64539_ (macro-deleted-obj))
                        (_loop64529_
                         (let ((_next-probe64542_
                                (fx+ _start64525_
                                     _i64534_
                                     (fx* _i64534_ _i64534_))))
                           (fxmodulo _next-probe64542_ _size64519_))
                         (fx+ _i64534_ '1)
                         (let ((_$e64545_ _deleted64536_))
                           (if _$e64545_ _$e64545_ _probe64532_)))
                        (if (_test64514_ _key64509_ _k64539_)
                            (vector-ref _table64512_ (fx+ _probe64532_ '1))
                            (_loop64529_
                             (let ((_next-probe64548_
                                    (fx+ _start64525_
                                         _i64534_
                                         (fx* _i64534_ _i64534_))))
                               (fxmodulo _next-probe64548_ _size64519_))
                             (fx+ _i64534_ '1)
                             _deleted64536_))))))))))
    (define raw-table-set!
      (lambda (_tab64504_ _key64505_ _value64506_)
        (if (fx< (&raw-table-free _tab64504_)
                 (fxquotient (vector-length (&raw-table-table _tab64504_)) '4))
            (__raw-table-rehash! _tab64504_)
            '#!void)
        (__raw-table-set! _tab64504_ _key64505_ _value64506_)))
    (define raw-table-delete!
      (lambda (_tab64466_ _key64467_)
        (let ((_table64469_ (&raw-table-table _tab64466_))
              (_hash64470_ (&raw-table-hash _tab64466_))
              (_test64471_ (&raw-table-test _tab64466_)))
          (let* ((_h64473_ (_hash64470_ _key64467_))
                 (_size64476_ (vector-length _table64469_))
                 (_entries64479_ (fxquotient _size64476_ '2))
                 (_start64482_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64473_ _entries64479_)
                   '1)))
            (let _loop64486_ ((_probe64489_ _start64482_) (_i64491_ '1))
              (let ((_k64494_ (vector-ref _table64469_ _probe64489_)))
                (if (eq? _k64494_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k64494_ (macro-deleted-obj))
                        (_loop64486_
                         (let ((_next-probe64497_
                                (fx+ _start64482_
                                     _i64491_
                                     (fx* _i64491_ _i64491_))))
                           (fxmodulo _next-probe64497_ _size64476_))
                         (fx+ _i64491_ '1))
                        (if (_test64471_ _key64467_ _k64494_)
                            (begin
                              (vector-set!
                               _table64469_
                               _probe64489_
                               (macro-deleted-obj))
                              (vector-set!
                               _table64469_
                               (fx+ _probe64489_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab64466_
                                  (fx- (&raw-table-count _tab64466_) '1)))))
                            (_loop64486_
                             (let ((_next-probe64501_
                                    (fx+ _start64482_
                                         _i64491_
                                         (fx* _i64491_ _i64491_))))
                               (fxmodulo _next-probe64501_ _size64476_))
                             (fx+ _i64491_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_proc64450_ _tab64451_)
        (let* ((_table64453_ (&raw-table-table _tab64451_))
               (_size64455_ (vector-length _table64453_)))
          (let _loop64458_ ((_i64460_ '0))
            (if (fx< _i64460_ _size64455_)
                (begin
                  (let ((_key64462_ (vector-ref _table64453_ _i64460_)))
                    (if (and (not (eq? _key64462_ (macro-unused-obj)))
                             (not (eq? _key64462_ (macro-deleted-obj))))
                        (let ((_value64464_
                               (vector-ref _table64453_ (fx+ _i64460_ '1))))
                          (_proc64450_ _key64462_ _value64464_))
                        '#!void))
                  (_loop64458_ (fx+ _i64460_ '2)))
                '#!void)))))
    (define __raw-table-set!
      (lambda (_tab64405_ _key64406_ _value64407_)
        (let ((_table64409_ (&raw-table-table _tab64405_))
              (_hash64410_ (&raw-table-hash _tab64405_))
              (_test64411_ (&raw-table-test _tab64405_)))
          (let* ((_h64413_ (_hash64410_ _key64406_))
                 (_size64416_ (vector-length _table64409_))
                 (_entries64419_ (fxquotient _size64416_ '2))
                 (_start64422_
                  (fxarithmetic-shift-left
                   (fxmodulo _h64413_ _entries64419_)
                   '1)))
            (let _loop64426_ ((_probe64429_ _start64422_)
                              (_i64431_ '1)
                              (_deleted64433_ '#f))
              (let ((_k64436_ (vector-ref _table64409_ _probe64429_)))
                (if (eq? _k64436_ (macro-unused-obj))
                    (if _deleted64433_
                        (begin
                          (vector-set! _table64409_ _deleted64433_ _key64406_)
                          (vector-set!
                           _table64409_
                           (fx+ _deleted64433_ '1)
                           _value64407_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab64405_
                              (fx+ (&raw-table-count _tab64405_) '1)))))
                        (begin
                          (vector-set! _table64409_ _probe64429_ _key64406_)
                          (vector-set!
                           _table64409_
                           (fx+ _probe64429_ '1)
                           _value64407_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab64405_
                              (fx- (&raw-table-free _tab64405_) '1))
                             (&raw-table-count-set!
                              _tab64405_
                              (fx+ (&raw-table-count _tab64405_) '1))))))
                    (if (eq? _k64436_ (macro-deleted-obj))
                        (_loop64426_
                         (let ((_next-probe64441_
                                (fx+ _start64422_
                                     _i64431_
                                     (fx* _i64431_ _i64431_))))
                           (fxmodulo _next-probe64441_ _size64416_))
                         (fx+ _i64431_ '1)
                         (let ((_$e64444_ _deleted64433_))
                           (if _$e64444_ _$e64444_ _probe64429_)))
                        (if (_test64411_ _key64406_ _k64436_)
                            (begin
                              (vector-set!
                               _table64409_
                               _probe64429_
                               _key64406_)
                              (vector-set!
                               _table64409_
                               (fx+ _probe64429_ '1)
                               _value64407_))
                            (_loop64426_
                             (let ((_next-probe64447_
                                    (fx+ _start64422_
                                         _i64431_
                                         (fx* _i64431_ _i64431_))))
                               (fxmodulo _next-probe64447_ _size64416_))
                             (fx+ _i64431_ '1)
                             _deleted64433_))))))))))
    (define __raw-table-rehash!
      (lambda (_tab64386_)
        (let* ((_old-table64388_ (&raw-table-table _tab64386_))
               (_old-size64390_ (vector-length _old-table64388_))
               (_new-size64392_
                (if (fx< (&raw-table-count _tab64386_)
                         (fxquotient _old-size64390_ '4))
                    (vector-length _old-table64388_)
                    (fx* '2 (vector-length _old-table64388_))))
               (_new-table64394_
                (make-vector _new-size64392_ (macro-unused-obj))))
          (&raw-table-table-set! _tab64386_ _new-table64394_)
          (&raw-table-count-set! _tab64386_ '0)
          (&raw-table-free-set! _tab64386_ (fxquotient _new-size64392_ '2))
          (let _lp64397_ ((_i64399_ '0))
            (if (fx< _i64399_ _old-size64390_)
                (begin
                  (let ((_key64401_ (vector-ref _old-table64388_ _i64399_)))
                    (if (and (not (eq? _key64401_ (macro-unused-obj)))
                             (not (eq? _key64401_ (macro-deleted-obj))))
                        (let ((_value64403_
                               (vector-ref
                                _old-table64388_
                                (fx+ _i64399_ '1))))
                          (__raw-table-set!
                           _tab64386_
                           _key64401_
                           _value64403_))
                        '#!void))
                  (_lp64397_ (fx+ _i64399_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_obj64377_)
        (let ((_t64379_ (##type _obj64377_)))
          (if (fx= (fxand _t64379_ '1) '0)
              (fxand (##type-cast _obj64377_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (or (symbol? _obj64377_) (keyword? _obj64377_))
                  (symbolic-hash _obj64377_)
                  (fxand (let ((_sn64384_ (object->serial-number _obj64377_)))
                           (if (fixnum? _sn64384_)
                               _sn64384_
                               (fxarithmetic-shift-left
                                (##bignum.mdigit-ref _sn64384_ '0)
                                '10)))
                         (macro-max-fixnum32)))))))
    (define symbolic-hash (lambda (_obj64375_) (macro-slot '1 _obj64375_)))
    (define string-hash (lambda (_obj64373_) (##string=?-hash _obj64373_)))
    (define make-eq-table__%
      (lambda (_size-hint64362_)
        (make-raw-table _size-hint64362_ eq-hash eq?)))
    (define make-eq-table__0
      (lambda ()
        (let ((_size-hint64369_ '#f)) (make-eq-table__% _size-hint64369_))))
    (define make-eq-table
      (lambda _g68652_
        (let ((_g68651_ (##length _g68652_)))
          (cond ((##fx= _g68651_ 0)
                 (apply (lambda () (make-eq-table__0)) _g68652_))
                ((##fx= _g68651_ 1)
                 (apply (lambda (_size-hint64371_)
                          (make-eq-table__% _size-hint64371_))
                        _g68652_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g68652_))))))
    (define eq-table-ref
      (lambda (_tab64319_ _key64320_ _default64321_)
        (let* ((_table64324_ (&raw-table-table _tab64319_))
               (_h64326_ (eq-hash _key64320_))
               (_size64329_ (vector-length _table64324_))
               (_entries64332_ (fxquotient _size64329_ '2))
               (_start64335_
                (fxarithmetic-shift-left
                 (fxmodulo _h64326_ _entries64332_)
                 '1)))
          (let _loop64339_ ((_probe64342_ _start64335_)
                            (_i64344_ '1)
                            (_deleted64346_ '#f))
            (let ((_k64349_ (vector-ref _table64324_ _probe64342_)))
              (if (eq? _k64349_ (macro-unused-obj))
                  _default64321_
                  (if (eq? _k64349_ (macro-deleted-obj))
                      (_loop64339_
                       (let ((_next-probe64352_
                              (fx+ _start64335_
                                   _i64344_
                                   (fx* _i64344_ _i64344_))))
                         (fxmodulo _next-probe64352_ _size64329_))
                       (fx+ _i64344_ '1)
                       (let ((_$e64355_ _deleted64346_))
                         (if _$e64355_ _$e64355_ _probe64342_)))
                      (if (eq? _key64320_ _k64349_)
                          (vector-ref _table64324_ (fx+ _probe64342_ '1))
                          (_loop64339_
                           (let ((_next-probe64358_
                                  (fx+ _start64335_
                                       _i64344_
                                       (fx* _i64344_ _i64344_))))
                             (fxmodulo _next-probe64358_ _size64329_))
                           (fx+ _i64344_ '1)
                           _deleted64346_)))))))))
    (define eq-table-set!
      (lambda (_tab64315_ _key64316_ _value64317_)
        (if (fx< (&raw-table-free _tab64315_)
                 (fxquotient (vector-length (&raw-table-table _tab64315_)) '4))
            (__raw-table-rehash! _tab64315_)
            '#!void)
        (__eq-table-set! _tab64315_ _key64316_ _value64317_)))
    (define __eq-table-set!
      (lambda (_tab64271_ _key64272_ _value64273_)
        (let* ((_table64276_ (&raw-table-table _tab64271_))
               (_h64278_ (eq-hash _key64272_))
               (_size64281_ (vector-length _table64276_))
               (_entries64284_ (fxquotient _size64281_ '2))
               (_start64287_
                (fxarithmetic-shift-left
                 (fxmodulo _h64278_ _entries64284_)
                 '1)))
          (let _loop64291_ ((_probe64294_ _start64287_)
                            (_i64296_ '1)
                            (_deleted64298_ '#f))
            (let ((_k64301_ (vector-ref _table64276_ _probe64294_)))
              (if (eq? _k64301_ (macro-unused-obj))
                  (if _deleted64298_
                      (begin
                        (vector-set! _table64276_ _deleted64298_ _key64272_)
                        (vector-set!
                         _table64276_
                         (fx+ _deleted64298_ '1)
                         _value64273_)
                        ((lambda ()
                           (&raw-table-count-set!
                            _tab64271_
                            (fx+ (&raw-table-count _tab64271_) '1)))))
                      (begin
                        (vector-set! _table64276_ _probe64294_ _key64272_)
                        (vector-set!
                         _table64276_
                         (fx+ _probe64294_ '1)
                         _value64273_)
                        ((lambda ()
                           (&raw-table-free-set!
                            _tab64271_
                            (fx- (&raw-table-free _tab64271_) '1))
                           (&raw-table-count-set!
                            _tab64271_
                            (fx+ (&raw-table-count _tab64271_) '1))))))
                  (if (eq? _k64301_ (macro-deleted-obj))
                      (_loop64291_
                       (let ((_next-probe64306_
                              (fx+ _start64287_
                                   _i64296_
                                   (fx* _i64296_ _i64296_))))
                         (fxmodulo _next-probe64306_ _size64281_))
                       (fx+ _i64296_ '1)
                       (let ((_$e64309_ _deleted64298_))
                         (if _$e64309_ _$e64309_ _probe64294_)))
                      (if (eq? _key64272_ _k64301_)
                          (begin
                            (vector-set! _table64276_ _probe64294_ _key64272_)
                            (vector-set!
                             _table64276_
                             (fx+ _probe64294_ '1)
                             _value64273_))
                          (_loop64291_
                           (let ((_next-probe64312_
                                  (fx+ _start64287_
                                       _i64296_
                                       (fx* _i64296_ _i64296_))))
                             (fxmodulo _next-probe64312_ _size64281_))
                           (fx+ _i64296_ '1)
                           _deleted64298_)))))))))
    (define eq-table-delete!
      (lambda (_tab64232_ _key64234_)
        (let* ((_table64237_ (&raw-table-table _tab64232_))
               (_h64240_ (eq-hash _key64234_))
               (_size64243_ (vector-length _table64237_))
               (_entries64246_ (fxquotient _size64243_ '2))
               (_start64249_
                (fxarithmetic-shift-left
                 (fxmodulo _h64240_ _entries64246_)
                 '1)))
          (let _loop64253_ ((_probe64256_ _start64249_) (_i64258_ '1))
            (let ((_k64261_ (vector-ref _table64237_ _probe64256_)))
              (if (eq? _k64261_ (macro-unused-obj))
                  '#!void
                  (if (eq? _k64261_ (macro-deleted-obj))
                      (_loop64253_
                       (let ((_next-probe64264_
                              (fx+ _start64249_
                                   _i64258_
                                   (fx* _i64258_ _i64258_))))
                         (fxmodulo _next-probe64264_ _size64243_))
                       (fx+ _i64258_ '1))
                      (if (eq? _key64234_ _k64261_)
                          (begin
                            (vector-set!
                             _table64237_
                             _probe64256_
                             (macro-deleted-obj))
                            (vector-set!
                             _table64237_
                             (fx+ _probe64256_ '1)
                             (macro-absent-obj))
                            ((lambda ()
                               (&raw-table-count-set!
                                _tab64232_
                                (fx- (&raw-table-count _tab64232_) '1)))))
                          (_loop64253_
                           (let ((_next-probe64268_
                                  (fx+ _start64249_
                                       _i64258_
                                       (fx* _i64258_ _i64258_))))
                             (fxmodulo _next-probe64268_ _size64243_))
                           (fx+ _i64258_ '1))))))))))
    (define make-symbolic-table__%
      (lambda (_size-hint64221_)
        (make-raw-table _size-hint64221_ symbolic-hash eq?)))
    (define make-symbolic-table__0
      (lambda ()
        (let ((_size-hint64228_ '#f))
          (make-symbolic-table__% _size-hint64228_))))
    (define make-symbolic-table
      (lambda _g68654_
        (let ((_g68653_ (##length _g68654_)))
          (cond ((##fx= _g68653_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g68654_))
                ((##fx= _g68653_ 1)
                 (apply (lambda (_size-hint64230_)
                          (make-symbolic-table__% _size-hint64230_))
                        _g68654_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g68654_))))))
    (define symbolic-table-ref
      (lambda (_tab64178_ _key64179_ _default64180_)
        (let* ((_table64183_ (&raw-table-table _tab64178_))
               (_h64185_ (symbolic-hash _key64179_))
               (_size64188_ (vector-length _table64183_))
               (_entries64191_ (fxquotient _size64188_ '2))
               (_start64194_
                (fxarithmetic-shift-left
                 (fxmodulo _h64185_ _entries64191_)
                 '1)))
          (let _loop64198_ ((_probe64201_ _start64194_)
                            (_i64203_ '1)
                            (_deleted64205_ '#f))
            (let ((_k64208_ (vector-ref _table64183_ _probe64201_)))
              (if (eq? _k64208_ (macro-unused-obj))
                  _default64180_
                  (if (eq? _k64208_ (macro-deleted-obj))
                      (_loop64198_
                       (let ((_next-probe64211_
                              (fx+ _start64194_
                                   _i64203_
                                   (fx* _i64203_ _i64203_))))
                         (fxmodulo _next-probe64211_ _size64188_))
                       (fx+ _i64203_ '1)
                       (let ((_$e64214_ _deleted64205_))
                         (if _$e64214_ _$e64214_ _probe64201_)))
                      (if (eq? _key64179_ _k64208_)
                          (vector-ref _table64183_ (fx+ _probe64201_ '1))
                          (_loop64198_
                           (let ((_next-probe64217_
                                  (fx+ _start64194_
                                       _i64203_
                                       (fx* _i64203_ _i64203_))))
                             (fxmodulo _next-probe64217_ _size64188_))
                           (fx+ _i64203_ '1)
                           _deleted64205_)))))))))
    (define symbolic-table-set!
      (lambda (_tab64174_ _key64175_ _value64176_)
        (if (fx< (&raw-table-free _tab64174_)
                 (fxquotient (vector-length (&raw-table-table _tab64174_)) '4))
            (__raw-table-rehash! _tab64174_)
            '#!void)
        (__symbolic-table-set! _tab64174_ _key64175_ _value64176_)))
    (define __symbolic-table-set!
      (lambda (_tab64130_ _key64131_ _value64132_)
        (let* ((_table64135_ (&raw-table-table _tab64130_))
               (_h64137_ (symbolic-hash _key64131_))
               (_size64140_ (vector-length _table64135_))
               (_entries64143_ (fxquotient _size64140_ '2))
               (_start64146_
                (fxarithmetic-shift-left
                 (fxmodulo _h64137_ _entries64143_)
                 '1)))
          (let _loop64150_ ((_probe64153_ _start64146_)
                            (_i64155_ '1)
                            (_deleted64157_ '#f))
            (let ((_k64160_ (vector-ref _table64135_ _probe64153_)))
              (if (eq? _k64160_ (macro-unused-obj))
                  (if _deleted64157_
                      (begin
                        (vector-set! _table64135_ _deleted64157_ _key64131_)
                        (vector-set!
                         _table64135_
                         (fx+ _deleted64157_ '1)
                         _value64132_)
                        ((lambda ()
                           (&raw-table-count-set!
                            _tab64130_
                            (fx+ (&raw-table-count _tab64130_) '1)))))
                      (begin
                        (vector-set! _table64135_ _probe64153_ _key64131_)
                        (vector-set!
                         _table64135_
                         (fx+ _probe64153_ '1)
                         _value64132_)
                        ((lambda ()
                           (&raw-table-free-set!
                            _tab64130_
                            (fx- (&raw-table-free _tab64130_) '1))
                           (&raw-table-count-set!
                            _tab64130_
                            (fx+ (&raw-table-count _tab64130_) '1))))))
                  (if (eq? _k64160_ (macro-deleted-obj))
                      (_loop64150_
                       (let ((_next-probe64165_
                              (fx+ _start64146_
                                   _i64155_
                                   (fx* _i64155_ _i64155_))))
                         (fxmodulo _next-probe64165_ _size64140_))
                       (fx+ _i64155_ '1)
                       (let ((_$e64168_ _deleted64157_))
                         (if _$e64168_ _$e64168_ _probe64153_)))
                      (if (eq? _key64131_ _k64160_)
                          (begin
                            (vector-set! _table64135_ _probe64153_ _key64131_)
                            (vector-set!
                             _table64135_
                             (fx+ _probe64153_ '1)
                             _value64132_))
                          (_loop64150_
                           (let ((_next-probe64171_
                                  (fx+ _start64146_
                                       _i64155_
                                       (fx* _i64155_ _i64155_))))
                             (fxmodulo _next-probe64171_ _size64140_))
                           (fx+ _i64155_ '1)
                           _deleted64157_)))))))))
    (define symbolic-table-delete!
      (lambda (_tab64091_ _key64093_)
        (let* ((_table64096_ (&raw-table-table _tab64091_))
               (_h64099_ (symbolic-hash _key64093_))
               (_size64102_ (vector-length _table64096_))
               (_entries64105_ (fxquotient _size64102_ '2))
               (_start64108_
                (fxarithmetic-shift-left
                 (fxmodulo _h64099_ _entries64105_)
                 '1)))
          (let _loop64112_ ((_probe64115_ _start64108_) (_i64117_ '1))
            (let ((_k64120_ (vector-ref _table64096_ _probe64115_)))
              (if (eq? _k64120_ (macro-unused-obj))
                  '#!void
                  (if (eq? _k64120_ (macro-deleted-obj))
                      (_loop64112_
                       (let ((_next-probe64123_
                              (fx+ _start64108_
                                   _i64117_
                                   (fx* _i64117_ _i64117_))))
                         (fxmodulo _next-probe64123_ _size64102_))
                       (fx+ _i64117_ '1))
                      (if (eq? _key64093_ _k64120_)
                          (begin
                            (vector-set!
                             _table64096_
                             _probe64115_
                             (macro-deleted-obj))
                            (vector-set!
                             _table64096_
                             (fx+ _probe64115_ '1)
                             (macro-absent-obj))
                            ((lambda ()
                               (&raw-table-count-set!
                                _tab64091_
                                (fx- (&raw-table-count _tab64091_) '1)))))
                          (_loop64112_
                           (let ((_next-probe64127_
                                  (fx+ _start64108_
                                       _i64117_
                                       (fx* _i64117_ _i64117_))))
                             (fxmodulo _next-probe64127_ _size64102_))
                           (fx+ _i64117_ '1))))))))))
    (define make-string-table__%
      (lambda (_size-hint64080_)
        (make-raw-table _size-hint64080_ string-hash ##string=?)))
    (define make-string-table__0
      (lambda ()
        (let ((_size-hint64087_ '#f))
          (make-string-table__% _size-hint64087_))))
    (define make-string-table
      (lambda _g68656_
        (let ((_g68655_ (##length _g68656_)))
          (cond ((##fx= _g68655_ 0)
                 (apply (lambda () (make-string-table__0)) _g68656_))
                ((##fx= _g68655_ 1)
                 (apply (lambda (_size-hint64089_)
                          (make-string-table__% _size-hint64089_))
                        _g68656_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g68656_))))))
    (define string-table-ref
      (lambda (_tab64037_ _key64038_ _default64039_)
        (let* ((_table64042_ (&raw-table-table _tab64037_))
               (_h64044_ (##string=?-hash _key64038_))
               (_size64047_ (vector-length _table64042_))
               (_entries64050_ (fxquotient _size64047_ '2))
               (_start64053_
                (fxarithmetic-shift-left
                 (fxmodulo _h64044_ _entries64050_)
                 '1)))
          (let _loop64057_ ((_probe64060_ _start64053_)
                            (_i64062_ '1)
                            (_deleted64064_ '#f))
            (let ((_k64067_ (vector-ref _table64042_ _probe64060_)))
              (if (eq? _k64067_ (macro-unused-obj))
                  _default64039_
                  (if (eq? _k64067_ (macro-deleted-obj))
                      (_loop64057_
                       (let ((_next-probe64070_
                              (fx+ _start64053_
                                   _i64062_
                                   (fx* _i64062_ _i64062_))))
                         (fxmodulo _next-probe64070_ _size64047_))
                       (fx+ _i64062_ '1)
                       (let ((_$e64073_ _deleted64064_))
                         (if _$e64073_ _$e64073_ _probe64060_)))
                      (if (##string=? _key64038_ _k64067_)
                          (vector-ref _table64042_ (fx+ _probe64060_ '1))
                          (_loop64057_
                           (let ((_next-probe64076_
                                  (fx+ _start64053_
                                       _i64062_
                                       (fx* _i64062_ _i64062_))))
                             (fxmodulo _next-probe64076_ _size64047_))
                           (fx+ _i64062_ '1)
                           _deleted64064_)))))))))
    (define string-table-set!
      (lambda (_tab64033_ _key64034_ _value64035_)
        (if (fx< (&raw-table-free _tab64033_)
                 (fxquotient (vector-length (&raw-table-table _tab64033_)) '4))
            (__raw-table-rehash! _tab64033_)
            '#!void)
        (__string-table-set! _tab64033_ _key64034_ _value64035_)))
    (define __string-table-set!
      (lambda (_tab63989_ _key63990_ _value63991_)
        (let* ((_table63994_ (&raw-table-table _tab63989_))
               (_h63996_ (##string=?-hash _key63990_))
               (_size63999_ (vector-length _table63994_))
               (_entries64002_ (fxquotient _size63999_ '2))
               (_start64005_
                (fxarithmetic-shift-left
                 (fxmodulo _h63996_ _entries64002_)
                 '1)))
          (let _loop64009_ ((_probe64012_ _start64005_)
                            (_i64014_ '1)
                            (_deleted64016_ '#f))
            (let ((_k64019_ (vector-ref _table63994_ _probe64012_)))
              (if (eq? _k64019_ (macro-unused-obj))
                  (if _deleted64016_
                      (begin
                        (vector-set! _table63994_ _deleted64016_ _key63990_)
                        (vector-set!
                         _table63994_
                         (fx+ _deleted64016_ '1)
                         _value63991_)
                        ((lambda ()
                           (&raw-table-count-set!
                            _tab63989_
                            (fx+ (&raw-table-count _tab63989_) '1)))))
                      (begin
                        (vector-set! _table63994_ _probe64012_ _key63990_)
                        (vector-set!
                         _table63994_
                         (fx+ _probe64012_ '1)
                         _value63991_)
                        ((lambda ()
                           (&raw-table-free-set!
                            _tab63989_
                            (fx- (&raw-table-free _tab63989_) '1))
                           (&raw-table-count-set!
                            _tab63989_
                            (fx+ (&raw-table-count _tab63989_) '1))))))
                  (if (eq? _k64019_ (macro-deleted-obj))
                      (_loop64009_
                       (let ((_next-probe64024_
                              (fx+ _start64005_
                                   _i64014_
                                   (fx* _i64014_ _i64014_))))
                         (fxmodulo _next-probe64024_ _size63999_))
                       (fx+ _i64014_ '1)
                       (let ((_$e64027_ _deleted64016_))
                         (if _$e64027_ _$e64027_ _probe64012_)))
                      (if (##string=? _key63990_ _k64019_)
                          (begin
                            (vector-set! _table63994_ _probe64012_ _key63990_)
                            (vector-set!
                             _table63994_
                             (fx+ _probe64012_ '1)
                             _value63991_))
                          (_loop64009_
                           (let ((_next-probe64030_
                                  (fx+ _start64005_
                                       _i64014_
                                       (fx* _i64014_ _i64014_))))
                             (fxmodulo _next-probe64030_ _size63999_))
                           (fx+ _i64014_ '1)
                           _deleted64016_)))))))))
    (define string-table-delete!
      (lambda (_tab63950_ _key63952_)
        (let* ((_table63955_ (&raw-table-table _tab63950_))
               (_h63958_ (##string=?-hash _key63952_))
               (_size63961_ (vector-length _table63955_))
               (_entries63964_ (fxquotient _size63961_ '2))
               (_start63967_
                (fxarithmetic-shift-left
                 (fxmodulo _h63958_ _entries63964_)
                 '1)))
          (let _loop63971_ ((_probe63974_ _start63967_) (_i63976_ '1))
            (let ((_k63979_ (vector-ref _table63955_ _probe63974_)))
              (if (eq? _k63979_ (macro-unused-obj))
                  '#!void
                  (if (eq? _k63979_ (macro-deleted-obj))
                      (_loop63971_
                       (let ((_next-probe63982_
                              (fx+ _start63967_
                                   _i63976_
                                   (fx* _i63976_ _i63976_))))
                         (fxmodulo _next-probe63982_ _size63961_))
                       (fx+ _i63976_ '1))
                      (if (##string=? _key63952_ _k63979_)
                          (begin
                            (vector-set!
                             _table63955_
                             _probe63974_
                             (macro-deleted-obj))
                            (vector-set!
                             _table63955_
                             (fx+ _probe63974_ '1)
                             (macro-absent-obj))
                            ((lambda ()
                               (&raw-table-count-set!
                                _tab63950_
                                (fx- (&raw-table-count _tab63950_) '1)))))
                          (_loop63971_
                           (let ((_next-probe63986_
                                  (fx+ _start63967_
                                       _i63976_
                                       (fx* _i63976_ _i63976_))))
                             (fxmodulo _next-probe63986_ _size63961_))
                           (fx+ _i63976_ '1))))))))))))
