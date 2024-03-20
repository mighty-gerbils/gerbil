(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1710943024)
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
      (lambda (_tab60728_)
        (##unchecked-structure-ref _tab60728_ '1 __table::t 'raw-table-table)))
    (define &raw-table-count
      (lambda (_tab60726_)
        (##unchecked-structure-ref _tab60726_ '2 __table::t 'raw-table-count)))
    (define &raw-table-free
      (lambda (_tab60724_)
        (##unchecked-structure-ref _tab60724_ '3 __table::t 'raw-table-free)))
    (define &raw-table-hash
      (lambda (_tab60722_)
        (##unchecked-structure-ref _tab60722_ '4 __table::t 'raw-table-hash)))
    (define &raw-table-test
      (lambda (_tab60720_)
        (##unchecked-structure-ref _tab60720_ '5 __table::t 'raw-table-test)))
    (define &raw-table-seed
      (lambda (_tab60718_)
        (##unchecked-structure-ref _tab60718_ '6 __table::t 'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_tab60715_ _val60716_)
        (##unchecked-structure-set!
         _tab60715_
         _val60716_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_tab60712_ _val60713_)
        (##unchecked-structure-set!
         _tab60712_
         _val60713_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_tab60709_ _val60710_)
        (##unchecked-structure-set!
         _tab60709_
         _val60710_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_tab60706_ _val60707_)
        (##unchecked-structure-set!
         _tab60706_
         _val60707_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_tab60703_ _val60704_)
        (##unchecked-structure-set!
         _tab60703_
         _val60704_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_tab60700_ _val60701_)
        (##unchecked-structure-set!
         _tab60700_
         _val60701_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_size-hint60698_)
        (if (and (fixnum? _size-hint60698_) (fx> _size-hint60698_ '0))
            (fx* (fxmax '2 (expt '2 (integer-length _size-hint60698_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_size-hint60674_ _hash60675_ _test60676_ _seed60677_)
        (let* ((_size60679_ (raw-table-size-hint->size _size-hint60674_))
               (_table60681_ (make-vector _size60679_ (macro-unused-obj))))
          (##structure
           __table::t
           _table60681_
           '0
           (fxquotient _size60679_ '2)
           _hash60675_
           _test60676_
           _seed60677_))))
    (define make-raw-table__0
      (lambda (_size-hint60687_ _hash60688_ _test60689_)
        (let ((_seed60691_ '0))
          (make-raw-table__%
           _size-hint60687_
           _hash60688_
           _test60689_
           _seed60691_))))
    (define make-raw-table
      (lambda _g60730_
        (let ((_g60729_ (##length _g60730_)))
          (cond ((##fx= _g60729_ 3)
                 (apply (lambda (_size-hint60687_ _hash60688_ _test60689_)
                          (make-raw-table__0
                           _size-hint60687_
                           _hash60688_
                           _test60689_))
                        _g60730_))
                ((##fx= _g60729_ 4)
                 (apply (lambda (_size-hint60693_
                                 _hash60694_
                                 _test60695_
                                 _seed60696_)
                          (make-raw-table__%
                           _size-hint60693_
                           _hash60694_
                           _test60695_
                           _seed60696_))
                        _g60730_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g60730_))))))
    (define raw-table-ref
      (lambda (_tab60629_ _key60630_ _default60631_)
        (let ((_table60633_ (&raw-table-table _tab60629_))
              (_seed60634_ (&raw-table-seed _tab60629_))
              (_hash60635_ (&raw-table-hash _tab60629_))
              (_test60636_ (&raw-table-test _tab60629_)))
          (let* ((_h60638_ (fxxor (_hash60635_ _key60630_) _seed60634_))
                 (_size60641_ (vector-length _table60633_))
                 (_entries60644_ (fxquotient _size60641_ '2))
                 (_start60647_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60638_ _entries60644_)
                   '1)))
            (let _loop60651_ ((_probe60654_ _start60647_)
                              (_i60656_ '1)
                              (_deleted60658_ '#f))
              (let ((_k60661_ (vector-ref _table60633_ _probe60654_)))
                (if (eq? _k60661_ (macro-unused-obj))
                    _default60631_
                    (if (eq? _k60661_ (macro-deleted-obj))
                        (_loop60651_
                         (let ((_next-probe60664_
                                (fx+ _start60647_
                                     _i60656_
                                     (fx* _i60656_ _i60656_))))
                           (fxmodulo _next-probe60664_ _size60641_))
                         (fx+ _i60656_ '1)
                         (let ((_$e60667_ _deleted60658_))
                           (if _$e60667_ _$e60667_ _probe60654_)))
                        (if (_test60636_ _key60630_ _k60661_)
                            (vector-ref _table60633_ (fx+ _probe60654_ '1))
                            (_loop60651_
                             (let ((_next-probe60670_
                                    (fx+ _start60647_
                                         _i60656_
                                         (fx* _i60656_ _i60656_))))
                               (fxmodulo _next-probe60670_ _size60641_))
                             (fx+ _i60656_ '1)
                             _deleted60658_))))))))))
    (define raw-table-set!
      (lambda (_tab60625_ _key60626_ _value60627_)
        (if (fx< (&raw-table-free _tab60625_)
                 (fxquotient (vector-length (&raw-table-table _tab60625_)) '4))
            (__raw-table-rehash! _tab60625_)
            '#!void)
        (__raw-table-set! _tab60625_ _key60626_ _value60627_)))
    (define raw-table-update!
      (lambda (_tab60620_ _key60621_ _update60622_ _default60623_)
        (if (fx< (&raw-table-free _tab60620_)
                 (fxquotient (vector-length (&raw-table-table _tab60620_)) '4))
            (__raw-table-rehash! _tab60620_)
            '#!void)
        (__raw-table-update!
         _tab60620_
         _key60621_
         _update60622_
         _default60623_)))
    (define raw-table-delete!
      (lambda (_tab60581_ _key60582_)
        (let ((_table60584_ (&raw-table-table _tab60581_))
              (_seed60585_ (&raw-table-seed _tab60581_))
              (_hash60586_ (&raw-table-hash _tab60581_))
              (_test60587_ (&raw-table-test _tab60581_)))
          (let* ((_h60589_ (fxxor (_hash60586_ _key60582_) _seed60585_))
                 (_size60592_ (vector-length _table60584_))
                 (_entries60595_ (fxquotient _size60592_ '2))
                 (_start60598_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60589_ _entries60595_)
                   '1)))
            (let _loop60602_ ((_probe60605_ _start60598_) (_i60607_ '1))
              (let ((_k60610_ (vector-ref _table60584_ _probe60605_)))
                (if (eq? _k60610_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k60610_ (macro-deleted-obj))
                        (_loop60602_
                         (let ((_next-probe60613_
                                (fx+ _start60598_
                                     _i60607_
                                     (fx* _i60607_ _i60607_))))
                           (fxmodulo _next-probe60613_ _size60592_))
                         (fx+ _i60607_ '1))
                        (if (_test60587_ _key60582_ _k60610_)
                            (begin
                              (vector-set!
                               _table60584_
                               _probe60605_
                               (macro-deleted-obj))
                              (vector-set!
                               _table60584_
                               (fx+ _probe60605_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab60581_
                                  (fx- (&raw-table-count _tab60581_) '1)))))
                            (_loop60602_
                             (let ((_next-probe60617_
                                    (fx+ _start60598_
                                         _i60607_
                                         (fx* _i60607_ _i60607_))))
                               (fxmodulo _next-probe60617_ _size60592_))
                             (fx+ _i60607_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_tab60565_ _proc60566_)
        (let* ((_table60568_ (&raw-table-table _tab60565_))
               (_size60570_ (vector-length _table60568_)))
          (let _loop60573_ ((_i60575_ '0))
            (if (fx< _i60575_ _size60570_)
                (begin
                  (let ((_key60577_ (vector-ref _table60568_ _i60575_)))
                    (if (and (not (eq? _key60577_ (macro-unused-obj)))
                             (not (eq? _key60577_ (macro-deleted-obj))))
                        (let ((_value60579_
                               (vector-ref _table60568_ (fx+ _i60575_ '1))))
                          (_proc60566_ _key60577_ _value60579_))
                        '#!void))
                  (_loop60573_ (fx+ _i60575_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_tab60561_)
        (let ((_new-tab60563_ (##structure-copy _tab60561_)))
          (&raw-table-table-set!
           _new-tab60563_
           (vector-copy (&raw-table-table _tab60561_)))
          _new-tab60563_)))
    (define raw-table-clear!
      (lambda (_tab60559_)
        (vector-fill! (&raw-table-table _tab60559_) (macro-unused-obj))
        (&raw-table-count-set! _tab60559_ '0)
        (&raw-table-free-set!
         _tab60559_
         (fxquotient (vector-length (&raw-table-table _tab60559_)) '2))))
    (define __raw-table-set!
      (lambda (_tab60513_ _key60514_ _value60515_)
        (let ((_table60517_ (&raw-table-table _tab60513_))
              (_seed60518_ (&raw-table-seed _tab60513_))
              (_hash60519_ (&raw-table-hash _tab60513_))
              (_test60520_ (&raw-table-test _tab60513_)))
          (let* ((_h60522_ (fxxor (_hash60519_ _key60514_) _seed60518_))
                 (_size60525_ (vector-length _table60517_))
                 (_entries60528_ (fxquotient _size60525_ '2))
                 (_start60531_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60522_ _entries60528_)
                   '1)))
            (let _loop60535_ ((_probe60538_ _start60531_)
                              (_i60540_ '1)
                              (_deleted60542_ '#f))
              (let ((_k60545_ (vector-ref _table60517_ _probe60538_)))
                (if (eq? _k60545_ (macro-unused-obj))
                    (if _deleted60542_
                        (begin
                          (vector-set! _table60517_ _deleted60542_ _key60514_)
                          (vector-set!
                           _table60517_
                           (fx+ _deleted60542_ '1)
                           _value60515_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab60513_
                              (fx+ (&raw-table-count _tab60513_) '1)))))
                        (begin
                          (vector-set! _table60517_ _probe60538_ _key60514_)
                          (vector-set!
                           _table60517_
                           (fx+ _probe60538_ '1)
                           _value60515_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab60513_
                              (fx- (&raw-table-free _tab60513_) '1))
                             (&raw-table-count-set!
                              _tab60513_
                              (fx+ (&raw-table-count _tab60513_) '1))))))
                    (if (eq? _k60545_ (macro-deleted-obj))
                        (_loop60535_
                         (let ((_next-probe60550_
                                (fx+ _start60531_
                                     _i60540_
                                     (fx* _i60540_ _i60540_))))
                           (fxmodulo _next-probe60550_ _size60525_))
                         (fx+ _i60540_ '1)
                         (let ((_$e60553_ _deleted60542_))
                           (if _$e60553_ _$e60553_ _probe60538_)))
                        (if (_test60520_ _key60514_ _k60545_)
                            (begin
                              (vector-set!
                               _table60517_
                               _probe60538_
                               _key60514_)
                              (vector-set!
                               _table60517_
                               (fx+ _probe60538_ '1)
                               _value60515_))
                            (_loop60535_
                             (let ((_next-probe60556_
                                    (fx+ _start60531_
                                         _i60540_
                                         (fx* _i60540_ _i60540_))))
                               (fxmodulo _next-probe60556_ _size60525_))
                             (fx+ _i60540_ '1)
                             _deleted60542_))))))))))
    (define __raw-table-update!
      (lambda (_tab60466_ _key60467_ _update60468_ _default60469_)
        (let ((_table60471_ (&raw-table-table _tab60466_))
              (_seed60472_ (&raw-table-seed _tab60466_))
              (_hash60473_ (&raw-table-hash _tab60466_))
              (_test60474_ (&raw-table-test _tab60466_)))
          (let* ((_h60476_ (fxxor (_hash60473_ _key60467_) _seed60472_))
                 (_size60479_ (vector-length _table60471_))
                 (_entries60482_ (fxquotient _size60479_ '2))
                 (_start60485_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60476_ _entries60482_)
                   '1)))
            (let _loop60489_ ((_probe60492_ _start60485_)
                              (_i60494_ '1)
                              (_deleted60496_ '#f))
              (let ((_k60499_ (vector-ref _table60471_ _probe60492_)))
                (if (eq? _k60499_ (macro-unused-obj))
                    (if _deleted60496_
                        (begin
                          (vector-set! _table60471_ _deleted60496_ _key60467_)
                          (vector-set!
                           _table60471_
                           (fx+ _deleted60496_ '1)
                           (_update60468_ _default60469_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab60466_
                              (fx+ (&raw-table-count _tab60466_) '1)))))
                        (begin
                          (vector-set! _table60471_ _probe60492_ _key60467_)
                          (vector-set!
                           _table60471_
                           (fx+ _probe60492_ '1)
                           (_update60468_ _default60469_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab60466_
                              (fx- (&raw-table-free _tab60466_) '1))
                             (&raw-table-count-set!
                              _tab60466_
                              (fx+ (&raw-table-count _tab60466_) '1))))))
                    (if (eq? _k60499_ (macro-deleted-obj))
                        (_loop60489_
                         (let ((_next-probe60504_
                                (fx+ _start60485_
                                     _i60494_
                                     (fx* _i60494_ _i60494_))))
                           (fxmodulo _next-probe60504_ _size60479_))
                         (fx+ _i60494_ '1)
                         (let ((_$e60507_ _deleted60496_))
                           (if _$e60507_ _$e60507_ _probe60492_)))
                        (if (_test60474_ _key60467_ _k60499_)
                            (begin
                              (vector-set!
                               _table60471_
                               _probe60492_
                               _key60467_)
                              (vector-set!
                               _table60471_
                               (fx+ _probe60492_ '1)
                               (_update60468_
                                (vector-ref
                                 _table60471_
                                 (fx+ _probe60492_ '1)))))
                            (_loop60489_
                             (let ((_next-probe60510_
                                    (fx+ _start60485_
                                         _i60494_
                                         (fx* _i60494_ _i60494_))))
                               (fxmodulo _next-probe60510_ _size60479_))
                             (fx+ _i60494_ '1)
                             _deleted60496_))))))))))
    (define __raw-table-rehash!
      (lambda (_tab60447_)
        (let* ((_old-table60449_ (&raw-table-table _tab60447_))
               (_old-size60451_ (vector-length _old-table60449_))
               (_new-size60453_
                (if (fx< (&raw-table-count _tab60447_)
                         (fxquotient _old-size60451_ '4))
                    (vector-length _old-table60449_)
                    (fx* '2 (vector-length _old-table60449_))))
               (_new-table60455_
                (make-vector _new-size60453_ (macro-unused-obj))))
          (&raw-table-table-set! _tab60447_ _new-table60455_)
          (&raw-table-count-set! _tab60447_ '0)
          (&raw-table-free-set! _tab60447_ (fxquotient _new-size60453_ '2))
          (let _lp60458_ ((_i60460_ '0))
            (if (fx< _i60460_ _old-size60451_)
                (begin
                  (let ((_key60462_ (vector-ref _old-table60449_ _i60460_)))
                    (if (and (not (eq? _key60462_ (macro-unused-obj)))
                             (not (eq? _key60462_ (macro-deleted-obj))))
                        (let ((_value60464_
                               (vector-ref
                                _old-table60449_
                                (fx+ _i60460_ '1))))
                          (__raw-table-set!
                           _tab60447_
                           _key60462_
                           _value60464_))
                        '#!void))
                  (_lp60458_ (fx+ _i60460_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_obj60443_)
        (let ((_t60445_ (##type _obj60443_)))
          (if (fx= (fxand _t60445_ '1) '0)
              (fxand (##type-cast _obj60443_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _obj60443_)
                  (symbolic-hash _obj60443_)
                  (if (procedure? _obj60443_)
                      (procedure-hash _obj60443_)
                      (fxand (__eq-hash _obj60443_) (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_obj60439_)
        (let ((_h60441_
               (if (##closure? _obj60439_)
                   (__eq-hash _obj60439_)
                   (##type-cast _obj60439_ '0))))
          (fxand _h60441_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_obj60436_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _obj60436_)))
    (define eqv-hash
      (lambda (_obj60426_)
        (letrec ((_combine60428_
                  (lambda (_a60433_ _b60434_)
                    (fxand (fx* (fx+ _a60433_
                                     (fxarithmetic-shift-left _b60434_ '1))
                                '331804471)
                           (macro-max-fixnum32))))
                 (_hash60429_
                  (lambda (_obj60431_)
                    (macro-number-dispatch
                     _obj60431_
                     (eq-hash _obj60431_)
                     (fxand _obj60431_ (macro-max-fixnum32))
                     (modulo _obj60431_ '331804481)
                     (_combine60428_
                      (_hash60429_ (macro-ratnum-numerator _obj60431_))
                      (_hash60429_ (macro-ratnum-denominator _obj60431_)))
                     (_combine60428_
                      (##u16vector-ref _obj60431_ '0)
                      (_combine60428_
                       (##u16vector-ref _obj60431_ '1)
                       (_combine60428_
                        (##u16vector-ref _obj60431_ '2)
                        (##u16vector-ref _obj60431_ '3))))
                     (_combine60428_
                      (_hash60429_ (macro-cpxnum-real _obj60431_))
                      (_hash60429_ (macro-cpxnum-imag _obj60431_)))))))
          (_hash60429_ _obj60426_))))
    (define symbolic?
      (lambda (_obj60421_)
        (let ((_$e60423_ (symbol? _obj60421_)))
          (if _$e60423_ _$e60423_ (keyword? _obj60421_)))))
    (define symbolic-hash (lambda (_obj60419_) (macro-slot '1 _obj60419_)))
    (define string-hash (lambda (_obj60417_) (##string=?-hash _obj60417_)))
    (define immediate-hash
      (lambda (_obj60415_) (##type-cast _obj60415_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_size-hint60396_ _seed60398_)
        (make-raw-table__% _size-hint60396_ eq-hash eq? _seed60398_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_size-hint60404_ '#f) (_seed60406_ '0))
          (make-eq-table__% _size-hint60404_ _seed60406_))))
    (define make-eq-table__1
      (lambda (_size-hint60408_)
        (let ((_seed60410_ '0))
          (make-eq-table__% _size-hint60408_ _seed60410_))))
    (define make-eq-table
      (lambda _g60732_
        (let ((_g60731_ (##length _g60732_)))
          (cond ((##fx= _g60731_ 0)
                 (apply (lambda () (make-eq-table__0)) _g60732_))
                ((##fx= _g60731_ 1)
                 (apply (lambda (_size-hint60408_)
                          (make-eq-table__1 _size-hint60408_))
                        _g60732_))
                ((##fx= _g60731_ 2)
                 (apply (lambda (_size-hint60412_ _seed60413_)
                          (make-eq-table__% _size-hint60412_ _seed60413_))
                        _g60732_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g60732_))))))
    (define eq-table-ref
      (lambda (_tab60353_ _key60354_ _default60355_)
        (let ((_table60357_ (&raw-table-table _tab60353_))
              (_seed60358_ (&raw-table-seed _tab60353_)))
          (let* ((_h60360_ (fxxor (eq-hash _key60354_) _seed60358_))
                 (_size60363_ (vector-length _table60357_))
                 (_entries60366_ (fxquotient _size60363_ '2))
                 (_start60369_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60360_ _entries60366_)
                   '1)))
            (let _loop60373_ ((_probe60376_ _start60369_)
                              (_i60378_ '1)
                              (_deleted60380_ '#f))
              (let ((_k60383_ (vector-ref _table60357_ _probe60376_)))
                (if (eq? _k60383_ (macro-unused-obj))
                    _default60355_
                    (if (eq? _k60383_ (macro-deleted-obj))
                        (_loop60373_
                         (let ((_next-probe60386_
                                (fx+ _start60369_
                                     _i60378_
                                     (fx* _i60378_ _i60378_))))
                           (fxmodulo _next-probe60386_ _size60363_))
                         (fx+ _i60378_ '1)
                         (let ((_$e60389_ _deleted60380_))
                           (if _$e60389_ _$e60389_ _probe60376_)))
                        (if (eq? _key60354_ _k60383_)
                            (vector-ref _table60357_ (fx+ _probe60376_ '1))
                            (_loop60373_
                             (let ((_next-probe60392_
                                    (fx+ _start60369_
                                         _i60378_
                                         (fx* _i60378_ _i60378_))))
                               (fxmodulo _next-probe60392_ _size60363_))
                             (fx+ _i60378_ '1)
                             _deleted60380_))))))))))
    (define eq-table-set!
      (lambda (_tab60349_ _key60350_ _value60351_)
        (if (fx< (&raw-table-free _tab60349_)
                 (fxquotient (vector-length (&raw-table-table _tab60349_)) '4))
            (__raw-table-rehash! _tab60349_)
            '#!void)
        (__eq-table-set! _tab60349_ _key60350_ _value60351_)))
    (define __eq-table-set!
      (lambda (_tab60304_ _key60305_ _value60306_)
        (let ((_table60309_ (&raw-table-table _tab60304_))
              (_seed60310_ (&raw-table-seed _tab60304_)))
          (let* ((_h60312_ (fxxor (eq-hash _key60305_) _seed60310_))
                 (_size60315_ (vector-length _table60309_))
                 (_entries60318_ (fxquotient _size60315_ '2))
                 (_start60321_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60312_ _entries60318_)
                   '1)))
            (let _loop60325_ ((_probe60328_ _start60321_)
                              (_i60330_ '1)
                              (_deleted60332_ '#f))
              (let ((_k60335_ (vector-ref _table60309_ _probe60328_)))
                (if (eq? _k60335_ (macro-unused-obj))
                    (if _deleted60332_
                        (begin
                          (vector-set! _table60309_ _deleted60332_ _key60305_)
                          (vector-set!
                           _table60309_
                           (fx+ _deleted60332_ '1)
                           _value60306_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab60304_
                              (fx+ (&raw-table-count _tab60304_) '1)))))
                        (begin
                          (vector-set! _table60309_ _probe60328_ _key60305_)
                          (vector-set!
                           _table60309_
                           (fx+ _probe60328_ '1)
                           _value60306_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab60304_
                              (fx- (&raw-table-free _tab60304_) '1))
                             (&raw-table-count-set!
                              _tab60304_
                              (fx+ (&raw-table-count _tab60304_) '1))))))
                    (if (eq? _k60335_ (macro-deleted-obj))
                        (_loop60325_
                         (let ((_next-probe60340_
                                (fx+ _start60321_
                                     _i60330_
                                     (fx* _i60330_ _i60330_))))
                           (fxmodulo _next-probe60340_ _size60315_))
                         (fx+ _i60330_ '1)
                         (let ((_$e60343_ _deleted60332_))
                           (if _$e60343_ _$e60343_ _probe60328_)))
                        (if (eq? _key60305_ _k60335_)
                            (begin
                              (vector-set!
                               _table60309_
                               _probe60328_
                               _key60305_)
                              (vector-set!
                               _table60309_
                               (fx+ _probe60328_ '1)
                               _value60306_))
                            (_loop60325_
                             (let ((_next-probe60346_
                                    (fx+ _start60321_
                                         _i60330_
                                         (fx* _i60330_ _i60330_))))
                               (fxmodulo _next-probe60346_ _size60315_))
                             (fx+ _i60330_ '1)
                             _deleted60332_))))))))))
    (define eq-table-update!
      (lambda (_tab60299_ _key60300_ _eq-table-update!60301_ _default60302_)
        (if (fx< (&raw-table-free _tab60299_)
                 (fxquotient (vector-length (&raw-table-table _tab60299_)) '4))
            (__raw-table-rehash! _tab60299_)
            '#!void)
        (__eq-table-update!
         _tab60299_
         _key60300_
         _eq-table-update!60301_
         _default60302_)))
    (define __eq-table-update!
      (lambda (_tab60253_ _key60254_ _eq-table-update!60255_ _default60256_)
        (let ((_table60259_ (&raw-table-table _tab60253_))
              (_seed60260_ (&raw-table-seed _tab60253_)))
          (let* ((_h60262_ (fxxor (eq-hash _key60254_) _seed60260_))
                 (_size60265_ (vector-length _table60259_))
                 (_entries60268_ (fxquotient _size60265_ '2))
                 (_start60271_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60262_ _entries60268_)
                   '1)))
            (let _loop60275_ ((_probe60278_ _start60271_)
                              (_i60280_ '1)
                              (_deleted60282_ '#f))
              (let ((_k60285_ (vector-ref _table60259_ _probe60278_)))
                (if (eq? _k60285_ (macro-unused-obj))
                    (if _deleted60282_
                        (begin
                          (vector-set! _table60259_ _deleted60282_ _key60254_)
                          (vector-set!
                           _table60259_
                           (fx+ _deleted60282_ '1)
                           (_eq-table-update!60255_ _default60256_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab60253_
                              (fx+ (&raw-table-count _tab60253_) '1)))))
                        (begin
                          (vector-set! _table60259_ _probe60278_ _key60254_)
                          (vector-set!
                           _table60259_
                           (fx+ _probe60278_ '1)
                           (_eq-table-update!60255_ _default60256_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab60253_
                              (fx- (&raw-table-free _tab60253_) '1))
                             (&raw-table-count-set!
                              _tab60253_
                              (fx+ (&raw-table-count _tab60253_) '1))))))
                    (if (eq? _k60285_ (macro-deleted-obj))
                        (_loop60275_
                         (let ((_next-probe60290_
                                (fx+ _start60271_
                                     _i60280_
                                     (fx* _i60280_ _i60280_))))
                           (fxmodulo _next-probe60290_ _size60265_))
                         (fx+ _i60280_ '1)
                         (let ((_$e60293_ _deleted60282_))
                           (if _$e60293_ _$e60293_ _probe60278_)))
                        (if (eq? _key60254_ _k60285_)
                            (begin
                              (vector-set!
                               _table60259_
                               _probe60278_
                               _key60254_)
                              (vector-set!
                               _table60259_
                               (fx+ _probe60278_ '1)
                               (_eq-table-update!60255_
                                (vector-ref
                                 _table60259_
                                 (fx+ _probe60278_ '1)))))
                            (_loop60275_
                             (let ((_next-probe60296_
                                    (fx+ _start60271_
                                         _i60280_
                                         (fx* _i60280_ _i60280_))))
                               (fxmodulo _next-probe60296_ _size60265_))
                             (fx+ _i60280_ '1)
                             _deleted60282_))))))))))
    (define eq-table-delete!
      (lambda (_tab60212_ _key60214_)
        (let ((_table60217_ (&raw-table-table _tab60212_))
              (_seed60219_ (&raw-table-seed _tab60212_)))
          (let* ((_h60222_ (fxxor (eq-hash _key60214_) _seed60219_))
                 (_size60225_ (vector-length _table60217_))
                 (_entries60228_ (fxquotient _size60225_ '2))
                 (_start60231_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60222_ _entries60228_)
                   '1)))
            (let _loop60235_ ((_probe60238_ _start60231_) (_i60240_ '1))
              (let ((_k60243_ (vector-ref _table60217_ _probe60238_)))
                (if (eq? _k60243_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k60243_ (macro-deleted-obj))
                        (_loop60235_
                         (let ((_next-probe60246_
                                (fx+ _start60231_
                                     _i60240_
                                     (fx* _i60240_ _i60240_))))
                           (fxmodulo _next-probe60246_ _size60225_))
                         (fx+ _i60240_ '1))
                        (if (eq? _key60214_ _k60243_)
                            (begin
                              (vector-set!
                               _table60217_
                               _probe60238_
                               (macro-deleted-obj))
                              (vector-set!
                               _table60217_
                               (fx+ _probe60238_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab60212_
                                  (fx- (&raw-table-count _tab60212_) '1)))))
                            (_loop60235_
                             (let ((_next-probe60250_
                                    (fx+ _start60231_
                                         _i60240_
                                         (fx* _i60240_ _i60240_))))
                               (fxmodulo _next-probe60250_ _size60225_))
                             (fx+ _i60240_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_size-hint60193_ _seed60195_)
        (make-raw-table__% _size-hint60193_ eqv-hash eqv? _seed60195_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_size-hint60201_ '#f) (_seed60203_ '0))
          (make-eqv-table__% _size-hint60201_ _seed60203_))))
    (define make-eqv-table__1
      (lambda (_size-hint60205_)
        (let ((_seed60207_ '0))
          (make-eqv-table__% _size-hint60205_ _seed60207_))))
    (define make-eqv-table
      (lambda _g60734_
        (let ((_g60733_ (##length _g60734_)))
          (cond ((##fx= _g60733_ 0)
                 (apply (lambda () (make-eqv-table__0)) _g60734_))
                ((##fx= _g60733_ 1)
                 (apply (lambda (_size-hint60205_)
                          (make-eqv-table__1 _size-hint60205_))
                        _g60734_))
                ((##fx= _g60733_ 2)
                 (apply (lambda (_size-hint60209_ _seed60210_)
                          (make-eqv-table__% _size-hint60209_ _seed60210_))
                        _g60734_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g60734_))))))
    (define eqv-table-ref
      (lambda (_tab60150_ _key60151_ _default60152_)
        (let ((_table60154_ (&raw-table-table _tab60150_))
              (_seed60155_ (&raw-table-seed _tab60150_)))
          (let* ((_h60157_ (fxxor (eqv-hash _key60151_) _seed60155_))
                 (_size60160_ (vector-length _table60154_))
                 (_entries60163_ (fxquotient _size60160_ '2))
                 (_start60166_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60157_ _entries60163_)
                   '1)))
            (let _loop60170_ ((_probe60173_ _start60166_)
                              (_i60175_ '1)
                              (_deleted60177_ '#f))
              (let ((_k60180_ (vector-ref _table60154_ _probe60173_)))
                (if (eq? _k60180_ (macro-unused-obj))
                    _default60152_
                    (if (eq? _k60180_ (macro-deleted-obj))
                        (_loop60170_
                         (let ((_next-probe60183_
                                (fx+ _start60166_
                                     _i60175_
                                     (fx* _i60175_ _i60175_))))
                           (fxmodulo _next-probe60183_ _size60160_))
                         (fx+ _i60175_ '1)
                         (let ((_$e60186_ _deleted60177_))
                           (if _$e60186_ _$e60186_ _probe60173_)))
                        (if (eqv? _key60151_ _k60180_)
                            (vector-ref _table60154_ (fx+ _probe60173_ '1))
                            (_loop60170_
                             (let ((_next-probe60189_
                                    (fx+ _start60166_
                                         _i60175_
                                         (fx* _i60175_ _i60175_))))
                               (fxmodulo _next-probe60189_ _size60160_))
                             (fx+ _i60175_ '1)
                             _deleted60177_))))))))))
    (define eqv-table-set!
      (lambda (_tab60146_ _key60147_ _value60148_)
        (if (fx< (&raw-table-free _tab60146_)
                 (fxquotient (vector-length (&raw-table-table _tab60146_)) '4))
            (__raw-table-rehash! _tab60146_)
            '#!void)
        (__eqv-table-set! _tab60146_ _key60147_ _value60148_)))
    (define __eqv-table-set!
      (lambda (_tab60101_ _key60102_ _value60103_)
        (let ((_table60106_ (&raw-table-table _tab60101_))
              (_seed60107_ (&raw-table-seed _tab60101_)))
          (let* ((_h60109_ (fxxor (eqv-hash _key60102_) _seed60107_))
                 (_size60112_ (vector-length _table60106_))
                 (_entries60115_ (fxquotient _size60112_ '2))
                 (_start60118_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60109_ _entries60115_)
                   '1)))
            (let _loop60122_ ((_probe60125_ _start60118_)
                              (_i60127_ '1)
                              (_deleted60129_ '#f))
              (let ((_k60132_ (vector-ref _table60106_ _probe60125_)))
                (if (eq? _k60132_ (macro-unused-obj))
                    (if _deleted60129_
                        (begin
                          (vector-set! _table60106_ _deleted60129_ _key60102_)
                          (vector-set!
                           _table60106_
                           (fx+ _deleted60129_ '1)
                           _value60103_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab60101_
                              (fx+ (&raw-table-count _tab60101_) '1)))))
                        (begin
                          (vector-set! _table60106_ _probe60125_ _key60102_)
                          (vector-set!
                           _table60106_
                           (fx+ _probe60125_ '1)
                           _value60103_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab60101_
                              (fx- (&raw-table-free _tab60101_) '1))
                             (&raw-table-count-set!
                              _tab60101_
                              (fx+ (&raw-table-count _tab60101_) '1))))))
                    (if (eq? _k60132_ (macro-deleted-obj))
                        (_loop60122_
                         (let ((_next-probe60137_
                                (fx+ _start60118_
                                     _i60127_
                                     (fx* _i60127_ _i60127_))))
                           (fxmodulo _next-probe60137_ _size60112_))
                         (fx+ _i60127_ '1)
                         (let ((_$e60140_ _deleted60129_))
                           (if _$e60140_ _$e60140_ _probe60125_)))
                        (if (eqv? _key60102_ _k60132_)
                            (begin
                              (vector-set!
                               _table60106_
                               _probe60125_
                               _key60102_)
                              (vector-set!
                               _table60106_
                               (fx+ _probe60125_ '1)
                               _value60103_))
                            (_loop60122_
                             (let ((_next-probe60143_
                                    (fx+ _start60118_
                                         _i60127_
                                         (fx* _i60127_ _i60127_))))
                               (fxmodulo _next-probe60143_ _size60112_))
                             (fx+ _i60127_ '1)
                             _deleted60129_))))))))))
    (define eqv-table-update!
      (lambda (_tab60096_ _key60097_ _eqv-table-update!60098_ _default60099_)
        (if (fx< (&raw-table-free _tab60096_)
                 (fxquotient (vector-length (&raw-table-table _tab60096_)) '4))
            (__raw-table-rehash! _tab60096_)
            '#!void)
        (__eqv-table-update!
         _tab60096_
         _key60097_
         _eqv-table-update!60098_
         _default60099_)))
    (define __eqv-table-update!
      (lambda (_tab60050_ _key60051_ _eqv-table-update!60052_ _default60053_)
        (let ((_table60056_ (&raw-table-table _tab60050_))
              (_seed60057_ (&raw-table-seed _tab60050_)))
          (let* ((_h60059_ (fxxor (eqv-hash _key60051_) _seed60057_))
                 (_size60062_ (vector-length _table60056_))
                 (_entries60065_ (fxquotient _size60062_ '2))
                 (_start60068_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60059_ _entries60065_)
                   '1)))
            (let _loop60072_ ((_probe60075_ _start60068_)
                              (_i60077_ '1)
                              (_deleted60079_ '#f))
              (let ((_k60082_ (vector-ref _table60056_ _probe60075_)))
                (if (eq? _k60082_ (macro-unused-obj))
                    (if _deleted60079_
                        (begin
                          (vector-set! _table60056_ _deleted60079_ _key60051_)
                          (vector-set!
                           _table60056_
                           (fx+ _deleted60079_ '1)
                           (_eqv-table-update!60052_ _default60053_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab60050_
                              (fx+ (&raw-table-count _tab60050_) '1)))))
                        (begin
                          (vector-set! _table60056_ _probe60075_ _key60051_)
                          (vector-set!
                           _table60056_
                           (fx+ _probe60075_ '1)
                           (_eqv-table-update!60052_ _default60053_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab60050_
                              (fx- (&raw-table-free _tab60050_) '1))
                             (&raw-table-count-set!
                              _tab60050_
                              (fx+ (&raw-table-count _tab60050_) '1))))))
                    (if (eq? _k60082_ (macro-deleted-obj))
                        (_loop60072_
                         (let ((_next-probe60087_
                                (fx+ _start60068_
                                     _i60077_
                                     (fx* _i60077_ _i60077_))))
                           (fxmodulo _next-probe60087_ _size60062_))
                         (fx+ _i60077_ '1)
                         (let ((_$e60090_ _deleted60079_))
                           (if _$e60090_ _$e60090_ _probe60075_)))
                        (if (eqv? _key60051_ _k60082_)
                            (begin
                              (vector-set!
                               _table60056_
                               _probe60075_
                               _key60051_)
                              (vector-set!
                               _table60056_
                               (fx+ _probe60075_ '1)
                               (_eqv-table-update!60052_
                                (vector-ref
                                 _table60056_
                                 (fx+ _probe60075_ '1)))))
                            (_loop60072_
                             (let ((_next-probe60093_
                                    (fx+ _start60068_
                                         _i60077_
                                         (fx* _i60077_ _i60077_))))
                               (fxmodulo _next-probe60093_ _size60062_))
                             (fx+ _i60077_ '1)
                             _deleted60079_))))))))))
    (define eqv-table-delete!
      (lambda (_tab60009_ _key60011_)
        (let ((_table60014_ (&raw-table-table _tab60009_))
              (_seed60016_ (&raw-table-seed _tab60009_)))
          (let* ((_h60019_ (fxxor (eqv-hash _key60011_) _seed60016_))
                 (_size60022_ (vector-length _table60014_))
                 (_entries60025_ (fxquotient _size60022_ '2))
                 (_start60028_
                  (fxarithmetic-shift-left
                   (fxmodulo _h60019_ _entries60025_)
                   '1)))
            (let _loop60032_ ((_probe60035_ _start60028_) (_i60037_ '1))
              (let ((_k60040_ (vector-ref _table60014_ _probe60035_)))
                (if (eq? _k60040_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k60040_ (macro-deleted-obj))
                        (_loop60032_
                         (let ((_next-probe60043_
                                (fx+ _start60028_
                                     _i60037_
                                     (fx* _i60037_ _i60037_))))
                           (fxmodulo _next-probe60043_ _size60022_))
                         (fx+ _i60037_ '1))
                        (if (eqv? _key60011_ _k60040_)
                            (begin
                              (vector-set!
                               _table60014_
                               _probe60035_
                               (macro-deleted-obj))
                              (vector-set!
                               _table60014_
                               (fx+ _probe60035_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab60009_
                                  (fx- (&raw-table-count _tab60009_) '1)))))
                            (_loop60032_
                             (let ((_next-probe60047_
                                    (fx+ _start60028_
                                         _i60037_
                                         (fx* _i60037_ _i60037_))))
                               (fxmodulo _next-probe60047_ _size60022_))
                             (fx+ _i60037_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_size-hint59990_ _seed59992_)
        (make-raw-table__% _size-hint59990_ symbolic-hash eq? _seed59992_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_size-hint59998_ '#f) (_seed60000_ '0))
          (make-symbolic-table__% _size-hint59998_ _seed60000_))))
    (define make-symbolic-table__1
      (lambda (_size-hint60002_)
        (let ((_seed60004_ '0))
          (make-symbolic-table__% _size-hint60002_ _seed60004_))))
    (define make-symbolic-table
      (lambda _g60736_
        (let ((_g60735_ (##length _g60736_)))
          (cond ((##fx= _g60735_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g60736_))
                ((##fx= _g60735_ 1)
                 (apply (lambda (_size-hint60002_)
                          (make-symbolic-table__1 _size-hint60002_))
                        _g60736_))
                ((##fx= _g60735_ 2)
                 (apply (lambda (_size-hint60006_ _seed60007_)
                          (make-symbolic-table__%
                           _size-hint60006_
                           _seed60007_))
                        _g60736_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g60736_))))))
    (define symbolic-table-ref
      (lambda (_tab59947_ _key59948_ _default59949_)
        (let ((_table59951_ (&raw-table-table _tab59947_))
              (_seed59952_ (&raw-table-seed _tab59947_)))
          (let* ((_h59954_ (fxxor (symbolic-hash _key59948_) _seed59952_))
                 (_size59957_ (vector-length _table59951_))
                 (_entries59960_ (fxquotient _size59957_ '2))
                 (_start59963_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59954_ _entries59960_)
                   '1)))
            (let _loop59967_ ((_probe59970_ _start59963_)
                              (_i59972_ '1)
                              (_deleted59974_ '#f))
              (let ((_k59977_ (vector-ref _table59951_ _probe59970_)))
                (if (eq? _k59977_ (macro-unused-obj))
                    _default59949_
                    (if (eq? _k59977_ (macro-deleted-obj))
                        (_loop59967_
                         (let ((_next-probe59980_
                                (fx+ _start59963_
                                     _i59972_
                                     (fx* _i59972_ _i59972_))))
                           (fxmodulo _next-probe59980_ _size59957_))
                         (fx+ _i59972_ '1)
                         (let ((_$e59983_ _deleted59974_))
                           (if _$e59983_ _$e59983_ _probe59970_)))
                        (if (eq? _key59948_ _k59977_)
                            (vector-ref _table59951_ (fx+ _probe59970_ '1))
                            (_loop59967_
                             (let ((_next-probe59986_
                                    (fx+ _start59963_
                                         _i59972_
                                         (fx* _i59972_ _i59972_))))
                               (fxmodulo _next-probe59986_ _size59957_))
                             (fx+ _i59972_ '1)
                             _deleted59974_))))))))))
    (define symbolic-table-set!
      (lambda (_tab59943_ _key59944_ _value59945_)
        (if (fx< (&raw-table-free _tab59943_)
                 (fxquotient (vector-length (&raw-table-table _tab59943_)) '4))
            (__raw-table-rehash! _tab59943_)
            '#!void)
        (__symbolic-table-set! _tab59943_ _key59944_ _value59945_)))
    (define __symbolic-table-set!
      (lambda (_tab59898_ _key59899_ _value59900_)
        (let ((_table59903_ (&raw-table-table _tab59898_))
              (_seed59904_ (&raw-table-seed _tab59898_)))
          (let* ((_h59906_ (fxxor (symbolic-hash _key59899_) _seed59904_))
                 (_size59909_ (vector-length _table59903_))
                 (_entries59912_ (fxquotient _size59909_ '2))
                 (_start59915_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59906_ _entries59912_)
                   '1)))
            (let _loop59919_ ((_probe59922_ _start59915_)
                              (_i59924_ '1)
                              (_deleted59926_ '#f))
              (let ((_k59929_ (vector-ref _table59903_ _probe59922_)))
                (if (eq? _k59929_ (macro-unused-obj))
                    (if _deleted59926_
                        (begin
                          (vector-set! _table59903_ _deleted59926_ _key59899_)
                          (vector-set!
                           _table59903_
                           (fx+ _deleted59926_ '1)
                           _value59900_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59898_
                              (fx+ (&raw-table-count _tab59898_) '1)))))
                        (begin
                          (vector-set! _table59903_ _probe59922_ _key59899_)
                          (vector-set!
                           _table59903_
                           (fx+ _probe59922_ '1)
                           _value59900_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59898_
                              (fx- (&raw-table-free _tab59898_) '1))
                             (&raw-table-count-set!
                              _tab59898_
                              (fx+ (&raw-table-count _tab59898_) '1))))))
                    (if (eq? _k59929_ (macro-deleted-obj))
                        (_loop59919_
                         (let ((_next-probe59934_
                                (fx+ _start59915_
                                     _i59924_
                                     (fx* _i59924_ _i59924_))))
                           (fxmodulo _next-probe59934_ _size59909_))
                         (fx+ _i59924_ '1)
                         (let ((_$e59937_ _deleted59926_))
                           (if _$e59937_ _$e59937_ _probe59922_)))
                        (if (eq? _key59899_ _k59929_)
                            (begin
                              (vector-set!
                               _table59903_
                               _probe59922_
                               _key59899_)
                              (vector-set!
                               _table59903_
                               (fx+ _probe59922_ '1)
                               _value59900_))
                            (_loop59919_
                             (let ((_next-probe59940_
                                    (fx+ _start59915_
                                         _i59924_
                                         (fx* _i59924_ _i59924_))))
                               (fxmodulo _next-probe59940_ _size59909_))
                             (fx+ _i59924_ '1)
                             _deleted59926_))))))))))
    (define symbolic-table-update!
      (lambda (_tab59893_
               _key59894_
               _symbolic-table-update!59895_
               _default59896_)
        (if (fx< (&raw-table-free _tab59893_)
                 (fxquotient (vector-length (&raw-table-table _tab59893_)) '4))
            (__raw-table-rehash! _tab59893_)
            '#!void)
        (__symbolic-table-update!
         _tab59893_
         _key59894_
         _symbolic-table-update!59895_
         _default59896_)))
    (define __symbolic-table-update!
      (lambda (_tab59847_
               _key59848_
               _symbolic-table-update!59849_
               _default59850_)
        (let ((_table59853_ (&raw-table-table _tab59847_))
              (_seed59854_ (&raw-table-seed _tab59847_)))
          (let* ((_h59856_ (fxxor (symbolic-hash _key59848_) _seed59854_))
                 (_size59859_ (vector-length _table59853_))
                 (_entries59862_ (fxquotient _size59859_ '2))
                 (_start59865_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59856_ _entries59862_)
                   '1)))
            (let _loop59869_ ((_probe59872_ _start59865_)
                              (_i59874_ '1)
                              (_deleted59876_ '#f))
              (let ((_k59879_ (vector-ref _table59853_ _probe59872_)))
                (if (eq? _k59879_ (macro-unused-obj))
                    (if _deleted59876_
                        (begin
                          (vector-set! _table59853_ _deleted59876_ _key59848_)
                          (vector-set!
                           _table59853_
                           (fx+ _deleted59876_ '1)
                           (_symbolic-table-update!59849_ _default59850_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59847_
                              (fx+ (&raw-table-count _tab59847_) '1)))))
                        (begin
                          (vector-set! _table59853_ _probe59872_ _key59848_)
                          (vector-set!
                           _table59853_
                           (fx+ _probe59872_ '1)
                           (_symbolic-table-update!59849_ _default59850_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59847_
                              (fx- (&raw-table-free _tab59847_) '1))
                             (&raw-table-count-set!
                              _tab59847_
                              (fx+ (&raw-table-count _tab59847_) '1))))))
                    (if (eq? _k59879_ (macro-deleted-obj))
                        (_loop59869_
                         (let ((_next-probe59884_
                                (fx+ _start59865_
                                     _i59874_
                                     (fx* _i59874_ _i59874_))))
                           (fxmodulo _next-probe59884_ _size59859_))
                         (fx+ _i59874_ '1)
                         (let ((_$e59887_ _deleted59876_))
                           (if _$e59887_ _$e59887_ _probe59872_)))
                        (if (eq? _key59848_ _k59879_)
                            (begin
                              (vector-set!
                               _table59853_
                               _probe59872_
                               _key59848_)
                              (vector-set!
                               _table59853_
                               (fx+ _probe59872_ '1)
                               (_symbolic-table-update!59849_
                                (vector-ref
                                 _table59853_
                                 (fx+ _probe59872_ '1)))))
                            (_loop59869_
                             (let ((_next-probe59890_
                                    (fx+ _start59865_
                                         _i59874_
                                         (fx* _i59874_ _i59874_))))
                               (fxmodulo _next-probe59890_ _size59859_))
                             (fx+ _i59874_ '1)
                             _deleted59876_))))))))))
    (define symbolic-table-delete!
      (lambda (_tab59806_ _key59808_)
        (let ((_table59811_ (&raw-table-table _tab59806_))
              (_seed59813_ (&raw-table-seed _tab59806_)))
          (let* ((_h59816_ (fxxor (symbolic-hash _key59808_) _seed59813_))
                 (_size59819_ (vector-length _table59811_))
                 (_entries59822_ (fxquotient _size59819_ '2))
                 (_start59825_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59816_ _entries59822_)
                   '1)))
            (let _loop59829_ ((_probe59832_ _start59825_) (_i59834_ '1))
              (let ((_k59837_ (vector-ref _table59811_ _probe59832_)))
                (if (eq? _k59837_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59837_ (macro-deleted-obj))
                        (_loop59829_
                         (let ((_next-probe59840_
                                (fx+ _start59825_
                                     _i59834_
                                     (fx* _i59834_ _i59834_))))
                           (fxmodulo _next-probe59840_ _size59819_))
                         (fx+ _i59834_ '1))
                        (if (eq? _key59808_ _k59837_)
                            (begin
                              (vector-set!
                               _table59811_
                               _probe59832_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59811_
                               (fx+ _probe59832_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59806_
                                  (fx- (&raw-table-count _tab59806_) '1)))))
                            (_loop59829_
                             (let ((_next-probe59844_
                                    (fx+ _start59825_
                                         _i59834_
                                         (fx* _i59834_ _i59834_))))
                               (fxmodulo _next-probe59844_ _size59819_))
                             (fx+ _i59834_ '1)))))))))))
    (define make-string-table__%
      (lambda (_size-hint59787_ _seed59789_)
        (make-raw-table__%
         _size-hint59787_
         string-hash
         ##string=?
         _seed59789_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_size-hint59795_ '#f) (_seed59797_ '0))
          (make-string-table__% _size-hint59795_ _seed59797_))))
    (define make-string-table__1
      (lambda (_size-hint59799_)
        (let ((_seed59801_ '0))
          (make-string-table__% _size-hint59799_ _seed59801_))))
    (define make-string-table
      (lambda _g60738_
        (let ((_g60737_ (##length _g60738_)))
          (cond ((##fx= _g60737_ 0)
                 (apply (lambda () (make-string-table__0)) _g60738_))
                ((##fx= _g60737_ 1)
                 (apply (lambda (_size-hint59799_)
                          (make-string-table__1 _size-hint59799_))
                        _g60738_))
                ((##fx= _g60737_ 2)
                 (apply (lambda (_size-hint59803_ _seed59804_)
                          (make-string-table__% _size-hint59803_ _seed59804_))
                        _g60738_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g60738_))))))
    (define string-table-ref
      (lambda (_tab59744_ _key59745_ _default59746_)
        (let ((_table59748_ (&raw-table-table _tab59744_))
              (_seed59749_ (&raw-table-seed _tab59744_)))
          (let* ((_h59751_ (fxxor (##string=?-hash _key59745_) _seed59749_))
                 (_size59754_ (vector-length _table59748_))
                 (_entries59757_ (fxquotient _size59754_ '2))
                 (_start59760_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59751_ _entries59757_)
                   '1)))
            (let _loop59764_ ((_probe59767_ _start59760_)
                              (_i59769_ '1)
                              (_deleted59771_ '#f))
              (let ((_k59774_ (vector-ref _table59748_ _probe59767_)))
                (if (eq? _k59774_ (macro-unused-obj))
                    _default59746_
                    (if (eq? _k59774_ (macro-deleted-obj))
                        (_loop59764_
                         (let ((_next-probe59777_
                                (fx+ _start59760_
                                     _i59769_
                                     (fx* _i59769_ _i59769_))))
                           (fxmodulo _next-probe59777_ _size59754_))
                         (fx+ _i59769_ '1)
                         (let ((_$e59780_ _deleted59771_))
                           (if _$e59780_ _$e59780_ _probe59767_)))
                        (if (##string=? _key59745_ _k59774_)
                            (vector-ref _table59748_ (fx+ _probe59767_ '1))
                            (_loop59764_
                             (let ((_next-probe59783_
                                    (fx+ _start59760_
                                         _i59769_
                                         (fx* _i59769_ _i59769_))))
                               (fxmodulo _next-probe59783_ _size59754_))
                             (fx+ _i59769_ '1)
                             _deleted59771_))))))))))
    (define string-table-set!
      (lambda (_tab59740_ _key59741_ _value59742_)
        (if (fx< (&raw-table-free _tab59740_)
                 (fxquotient (vector-length (&raw-table-table _tab59740_)) '4))
            (__raw-table-rehash! _tab59740_)
            '#!void)
        (__string-table-set! _tab59740_ _key59741_ _value59742_)))
    (define __string-table-set!
      (lambda (_tab59695_ _key59696_ _value59697_)
        (let ((_table59700_ (&raw-table-table _tab59695_))
              (_seed59701_ (&raw-table-seed _tab59695_)))
          (let* ((_h59703_ (fxxor (##string=?-hash _key59696_) _seed59701_))
                 (_size59706_ (vector-length _table59700_))
                 (_entries59709_ (fxquotient _size59706_ '2))
                 (_start59712_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59703_ _entries59709_)
                   '1)))
            (let _loop59716_ ((_probe59719_ _start59712_)
                              (_i59721_ '1)
                              (_deleted59723_ '#f))
              (let ((_k59726_ (vector-ref _table59700_ _probe59719_)))
                (if (eq? _k59726_ (macro-unused-obj))
                    (if _deleted59723_
                        (begin
                          (vector-set! _table59700_ _deleted59723_ _key59696_)
                          (vector-set!
                           _table59700_
                           (fx+ _deleted59723_ '1)
                           _value59697_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59695_
                              (fx+ (&raw-table-count _tab59695_) '1)))))
                        (begin
                          (vector-set! _table59700_ _probe59719_ _key59696_)
                          (vector-set!
                           _table59700_
                           (fx+ _probe59719_ '1)
                           _value59697_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59695_
                              (fx- (&raw-table-free _tab59695_) '1))
                             (&raw-table-count-set!
                              _tab59695_
                              (fx+ (&raw-table-count _tab59695_) '1))))))
                    (if (eq? _k59726_ (macro-deleted-obj))
                        (_loop59716_
                         (let ((_next-probe59731_
                                (fx+ _start59712_
                                     _i59721_
                                     (fx* _i59721_ _i59721_))))
                           (fxmodulo _next-probe59731_ _size59706_))
                         (fx+ _i59721_ '1)
                         (let ((_$e59734_ _deleted59723_))
                           (if _$e59734_ _$e59734_ _probe59719_)))
                        (if (##string=? _key59696_ _k59726_)
                            (begin
                              (vector-set!
                               _table59700_
                               _probe59719_
                               _key59696_)
                              (vector-set!
                               _table59700_
                               (fx+ _probe59719_ '1)
                               _value59697_))
                            (_loop59716_
                             (let ((_next-probe59737_
                                    (fx+ _start59712_
                                         _i59721_
                                         (fx* _i59721_ _i59721_))))
                               (fxmodulo _next-probe59737_ _size59706_))
                             (fx+ _i59721_ '1)
                             _deleted59723_))))))))))
    (define string-table-update!
      (lambda (_tab59690_
               _key59691_
               _string-table-update!59692_
               _default59693_)
        (if (fx< (&raw-table-free _tab59690_)
                 (fxquotient (vector-length (&raw-table-table _tab59690_)) '4))
            (__raw-table-rehash! _tab59690_)
            '#!void)
        (__string-table-update!
         _tab59690_
         _key59691_
         _string-table-update!59692_
         _default59693_)))
    (define __string-table-update!
      (lambda (_tab59644_
               _key59645_
               _string-table-update!59646_
               _default59647_)
        (let ((_table59650_ (&raw-table-table _tab59644_))
              (_seed59651_ (&raw-table-seed _tab59644_)))
          (let* ((_h59653_ (fxxor (##string=?-hash _key59645_) _seed59651_))
                 (_size59656_ (vector-length _table59650_))
                 (_entries59659_ (fxquotient _size59656_ '2))
                 (_start59662_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59653_ _entries59659_)
                   '1)))
            (let _loop59666_ ((_probe59669_ _start59662_)
                              (_i59671_ '1)
                              (_deleted59673_ '#f))
              (let ((_k59676_ (vector-ref _table59650_ _probe59669_)))
                (if (eq? _k59676_ (macro-unused-obj))
                    (if _deleted59673_
                        (begin
                          (vector-set! _table59650_ _deleted59673_ _key59645_)
                          (vector-set!
                           _table59650_
                           (fx+ _deleted59673_ '1)
                           (_string-table-update!59646_ _default59647_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59644_
                              (fx+ (&raw-table-count _tab59644_) '1)))))
                        (begin
                          (vector-set! _table59650_ _probe59669_ _key59645_)
                          (vector-set!
                           _table59650_
                           (fx+ _probe59669_ '1)
                           (_string-table-update!59646_ _default59647_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59644_
                              (fx- (&raw-table-free _tab59644_) '1))
                             (&raw-table-count-set!
                              _tab59644_
                              (fx+ (&raw-table-count _tab59644_) '1))))))
                    (if (eq? _k59676_ (macro-deleted-obj))
                        (_loop59666_
                         (let ((_next-probe59681_
                                (fx+ _start59662_
                                     _i59671_
                                     (fx* _i59671_ _i59671_))))
                           (fxmodulo _next-probe59681_ _size59656_))
                         (fx+ _i59671_ '1)
                         (let ((_$e59684_ _deleted59673_))
                           (if _$e59684_ _$e59684_ _probe59669_)))
                        (if (##string=? _key59645_ _k59676_)
                            (begin
                              (vector-set!
                               _table59650_
                               _probe59669_
                               _key59645_)
                              (vector-set!
                               _table59650_
                               (fx+ _probe59669_ '1)
                               (_string-table-update!59646_
                                (vector-ref
                                 _table59650_
                                 (fx+ _probe59669_ '1)))))
                            (_loop59666_
                             (let ((_next-probe59687_
                                    (fx+ _start59662_
                                         _i59671_
                                         (fx* _i59671_ _i59671_))))
                               (fxmodulo _next-probe59687_ _size59656_))
                             (fx+ _i59671_ '1)
                             _deleted59673_))))))))))
    (define string-table-delete!
      (lambda (_tab59603_ _key59605_)
        (let ((_table59608_ (&raw-table-table _tab59603_))
              (_seed59610_ (&raw-table-seed _tab59603_)))
          (let* ((_h59613_ (fxxor (##string=?-hash _key59605_) _seed59610_))
                 (_size59616_ (vector-length _table59608_))
                 (_entries59619_ (fxquotient _size59616_ '2))
                 (_start59622_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59613_ _entries59619_)
                   '1)))
            (let _loop59626_ ((_probe59629_ _start59622_) (_i59631_ '1))
              (let ((_k59634_ (vector-ref _table59608_ _probe59629_)))
                (if (eq? _k59634_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59634_ (macro-deleted-obj))
                        (_loop59626_
                         (let ((_next-probe59637_
                                (fx+ _start59622_
                                     _i59631_
                                     (fx* _i59631_ _i59631_))))
                           (fxmodulo _next-probe59637_ _size59616_))
                         (fx+ _i59631_ '1))
                        (if (##string=? _key59605_ _k59634_)
                            (begin
                              (vector-set!
                               _table59608_
                               _probe59629_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59608_
                               (fx+ _probe59629_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59603_
                                  (fx- (&raw-table-count _tab59603_) '1)))))
                            (_loop59626_
                             (let ((_next-probe59641_
                                    (fx+ _start59622_
                                         _i59631_
                                         (fx* _i59631_ _i59631_))))
                               (fxmodulo _next-probe59641_ _size59616_))
                             (fx+ _i59631_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_size-hint59584_ _seed59586_)
        (make-raw-table__% _size-hint59584_ immediate-hash eq? _seed59586_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_size-hint59592_ '#f) (_seed59594_ '0))
          (make-immediate-table__% _size-hint59592_ _seed59594_))))
    (define make-immediate-table__1
      (lambda (_size-hint59596_)
        (let ((_seed59598_ '0))
          (make-immediate-table__% _size-hint59596_ _seed59598_))))
    (define make-immediate-table
      (lambda _g60740_
        (let ((_g60739_ (##length _g60740_)))
          (cond ((##fx= _g60739_ 0)
                 (apply (lambda () (make-immediate-table__0)) _g60740_))
                ((##fx= _g60739_ 1)
                 (apply (lambda (_size-hint59596_)
                          (make-immediate-table__1 _size-hint59596_))
                        _g60740_))
                ((##fx= _g60739_ 2)
                 (apply (lambda (_size-hint59600_ _seed59601_)
                          (make-immediate-table__%
                           _size-hint59600_
                           _seed59601_))
                        _g60740_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g60740_))))))
    (define immediate-table-ref
      (lambda (_tab59541_ _key59542_ _default59543_)
        (let ((_table59545_ (&raw-table-table _tab59541_))
              (_seed59546_ (&raw-table-seed _tab59541_)))
          (let* ((_h59548_ (fxxor (immediate-hash _key59542_) _seed59546_))
                 (_size59551_ (vector-length _table59545_))
                 (_entries59554_ (fxquotient _size59551_ '2))
                 (_start59557_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59548_ _entries59554_)
                   '1)))
            (let _loop59561_ ((_probe59564_ _start59557_)
                              (_i59566_ '1)
                              (_deleted59568_ '#f))
              (let ((_k59571_ (vector-ref _table59545_ _probe59564_)))
                (if (eq? _k59571_ (macro-unused-obj))
                    _default59543_
                    (if (eq? _k59571_ (macro-deleted-obj))
                        (_loop59561_
                         (let ((_next-probe59574_
                                (fx+ _start59557_
                                     _i59566_
                                     (fx* _i59566_ _i59566_))))
                           (fxmodulo _next-probe59574_ _size59551_))
                         (fx+ _i59566_ '1)
                         (let ((_$e59577_ _deleted59568_))
                           (if _$e59577_ _$e59577_ _probe59564_)))
                        (if (eq? _key59542_ _k59571_)
                            (vector-ref _table59545_ (fx+ _probe59564_ '1))
                            (_loop59561_
                             (let ((_next-probe59580_
                                    (fx+ _start59557_
                                         _i59566_
                                         (fx* _i59566_ _i59566_))))
                               (fxmodulo _next-probe59580_ _size59551_))
                             (fx+ _i59566_ '1)
                             _deleted59568_))))))))))
    (define immediate-table-set!
      (lambda (_tab59537_ _key59538_ _value59539_)
        (if (fx< (&raw-table-free _tab59537_)
                 (fxquotient (vector-length (&raw-table-table _tab59537_)) '4))
            (__raw-table-rehash! _tab59537_)
            '#!void)
        (__immediate-table-set! _tab59537_ _key59538_ _value59539_)))
    (define __immediate-table-set!
      (lambda (_tab59492_ _key59493_ _value59494_)
        (let ((_table59497_ (&raw-table-table _tab59492_))
              (_seed59498_ (&raw-table-seed _tab59492_)))
          (let* ((_h59500_ (fxxor (immediate-hash _key59493_) _seed59498_))
                 (_size59503_ (vector-length _table59497_))
                 (_entries59506_ (fxquotient _size59503_ '2))
                 (_start59509_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59500_ _entries59506_)
                   '1)))
            (let _loop59513_ ((_probe59516_ _start59509_)
                              (_i59518_ '1)
                              (_deleted59520_ '#f))
              (let ((_k59523_ (vector-ref _table59497_ _probe59516_)))
                (if (eq? _k59523_ (macro-unused-obj))
                    (if _deleted59520_
                        (begin
                          (vector-set! _table59497_ _deleted59520_ _key59493_)
                          (vector-set!
                           _table59497_
                           (fx+ _deleted59520_ '1)
                           _value59494_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59492_
                              (fx+ (&raw-table-count _tab59492_) '1)))))
                        (begin
                          (vector-set! _table59497_ _probe59516_ _key59493_)
                          (vector-set!
                           _table59497_
                           (fx+ _probe59516_ '1)
                           _value59494_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59492_
                              (fx- (&raw-table-free _tab59492_) '1))
                             (&raw-table-count-set!
                              _tab59492_
                              (fx+ (&raw-table-count _tab59492_) '1))))))
                    (if (eq? _k59523_ (macro-deleted-obj))
                        (_loop59513_
                         (let ((_next-probe59528_
                                (fx+ _start59509_
                                     _i59518_
                                     (fx* _i59518_ _i59518_))))
                           (fxmodulo _next-probe59528_ _size59503_))
                         (fx+ _i59518_ '1)
                         (let ((_$e59531_ _deleted59520_))
                           (if _$e59531_ _$e59531_ _probe59516_)))
                        (if (eq? _key59493_ _k59523_)
                            (begin
                              (vector-set!
                               _table59497_
                               _probe59516_
                               _key59493_)
                              (vector-set!
                               _table59497_
                               (fx+ _probe59516_ '1)
                               _value59494_))
                            (_loop59513_
                             (let ((_next-probe59534_
                                    (fx+ _start59509_
                                         _i59518_
                                         (fx* _i59518_ _i59518_))))
                               (fxmodulo _next-probe59534_ _size59503_))
                             (fx+ _i59518_ '1)
                             _deleted59520_))))))))))
    (define immediate-table-update!
      (lambda (_tab59487_
               _key59488_
               _immediate-table-update!59489_
               _default59490_)
        (if (fx< (&raw-table-free _tab59487_)
                 (fxquotient (vector-length (&raw-table-table _tab59487_)) '4))
            (__raw-table-rehash! _tab59487_)
            '#!void)
        (__immediate-table-update!
         _tab59487_
         _key59488_
         _immediate-table-update!59489_
         _default59490_)))
    (define __immediate-table-update!
      (lambda (_tab59441_
               _key59442_
               _immediate-table-update!59443_
               _default59444_)
        (let ((_table59447_ (&raw-table-table _tab59441_))
              (_seed59448_ (&raw-table-seed _tab59441_)))
          (let* ((_h59450_ (fxxor (immediate-hash _key59442_) _seed59448_))
                 (_size59453_ (vector-length _table59447_))
                 (_entries59456_ (fxquotient _size59453_ '2))
                 (_start59459_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59450_ _entries59456_)
                   '1)))
            (let _loop59463_ ((_probe59466_ _start59459_)
                              (_i59468_ '1)
                              (_deleted59470_ '#f))
              (let ((_k59473_ (vector-ref _table59447_ _probe59466_)))
                (if (eq? _k59473_ (macro-unused-obj))
                    (if _deleted59470_
                        (begin
                          (vector-set! _table59447_ _deleted59470_ _key59442_)
                          (vector-set!
                           _table59447_
                           (fx+ _deleted59470_ '1)
                           (_immediate-table-update!59443_ _default59444_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab59441_
                              (fx+ (&raw-table-count _tab59441_) '1)))))
                        (begin
                          (vector-set! _table59447_ _probe59466_ _key59442_)
                          (vector-set!
                           _table59447_
                           (fx+ _probe59466_ '1)
                           (_immediate-table-update!59443_ _default59444_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab59441_
                              (fx- (&raw-table-free _tab59441_) '1))
                             (&raw-table-count-set!
                              _tab59441_
                              (fx+ (&raw-table-count _tab59441_) '1))))))
                    (if (eq? _k59473_ (macro-deleted-obj))
                        (_loop59463_
                         (let ((_next-probe59478_
                                (fx+ _start59459_
                                     _i59468_
                                     (fx* _i59468_ _i59468_))))
                           (fxmodulo _next-probe59478_ _size59453_))
                         (fx+ _i59468_ '1)
                         (let ((_$e59481_ _deleted59470_))
                           (if _$e59481_ _$e59481_ _probe59466_)))
                        (if (eq? _key59442_ _k59473_)
                            (begin
                              (vector-set!
                               _table59447_
                               _probe59466_
                               _key59442_)
                              (vector-set!
                               _table59447_
                               (fx+ _probe59466_ '1)
                               (_immediate-table-update!59443_
                                (vector-ref
                                 _table59447_
                                 (fx+ _probe59466_ '1)))))
                            (_loop59463_
                             (let ((_next-probe59484_
                                    (fx+ _start59459_
                                         _i59468_
                                         (fx* _i59468_ _i59468_))))
                               (fxmodulo _next-probe59484_ _size59453_))
                             (fx+ _i59468_ '1)
                             _deleted59470_))))))))))
    (define immediate-table-delete!
      (lambda (_tab59400_ _key59402_)
        (let ((_table59405_ (&raw-table-table _tab59400_))
              (_seed59407_ (&raw-table-seed _tab59400_)))
          (let* ((_h59410_ (fxxor (immediate-hash _key59402_) _seed59407_))
                 (_size59413_ (vector-length _table59405_))
                 (_entries59416_ (fxquotient _size59413_ '2))
                 (_start59419_
                  (fxarithmetic-shift-left
                   (fxmodulo _h59410_ _entries59416_)
                   '1)))
            (let _loop59423_ ((_probe59426_ _start59419_) (_i59428_ '1))
              (let ((_k59431_ (vector-ref _table59405_ _probe59426_)))
                (if (eq? _k59431_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k59431_ (macro-deleted-obj))
                        (_loop59423_
                         (let ((_next-probe59434_
                                (fx+ _start59419_
                                     _i59428_
                                     (fx* _i59428_ _i59428_))))
                           (fxmodulo _next-probe59434_ _size59413_))
                         (fx+ _i59428_ '1))
                        (if (eq? _key59402_ _k59431_)
                            (begin
                              (vector-set!
                               _table59405_
                               _probe59426_
                               (macro-deleted-obj))
                              (vector-set!
                               _table59405_
                               (fx+ _probe59426_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab59400_
                                  (fx- (&raw-table-count _tab59400_) '1)))))
                            (_loop59423_
                             (let ((_next-probe59438_
                                    (fx+ _start59419_
                                         _i59428_
                                         (fx* _i59428_ _i59428_))))
                               (fxmodulo _next-probe59438_ _size59413_))
                             (fx+ _i59428_ '1)))))))))))
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
      (lambda (_tab59398_)
        (##unchecked-structure-ref
         _tab59398_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_tab59396_)
        (##unchecked-structure-ref
         _tab59396_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_tab59393_ _val59394_)
        (##unchecked-structure-set!
         _tab59393_
         _val59394_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_tab59390_ _val59391_)
        (##unchecked-structure-set!
         _tab59390_
         _val59391_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_size-hint59366_ _klass59367_ _flags59368_)
        (let ((_gcht59370_
               (__gc-table-new
                (if (fixnum? _size-hint59366_) _size-hint59366_ '16)
                _flags59368_)))
          (##structure _klass59367_ _gcht59370_ '#f))))
    (define make-gc-table__0
      (lambda (_size-hint59375_)
        (let* ((_klass59377_ __gc-table::t) (_flags59379_ '0))
          (make-gc-table__% _size-hint59375_ _klass59377_ _flags59379_))))
    (define make-gc-table__1
      (lambda (_size-hint59381_ _klass59382_)
        (let ((_flags59384_ '0))
          (make-gc-table__% _size-hint59381_ _klass59382_ _flags59384_))))
    (define make-gc-table
      (lambda _g60742_
        (let ((_g60741_ (##length _g60742_)))
          (cond ((##fx= _g60741_ 1)
                 (apply (lambda (_size-hint59375_)
                          (make-gc-table__0 _size-hint59375_))
                        _g60742_))
                ((##fx= _g60741_ 2)
                 (apply (lambda (_size-hint59381_ _klass59382_)
                          (make-gc-table__1 _size-hint59381_ _klass59382_))
                        _g60742_))
                ((##fx= _g60741_ 3)
                 (apply (lambda (_size-hint59386_ _klass59387_ _flags59388_)
                          (make-gc-table__%
                           _size-hint59386_
                           _klass59387_
                           _flags59388_))
                        _g60742_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g60742_))))))
    (define __gc-table-immediate
      (lambda (_tab59358_)
        (let ((_$e59360_ (&gc-table-immediate _tab59358_)))
          (if _$e59360_
              _$e59360_
              (let ((_immediate59363_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _tab59358_ _immediate59363_)
                _immediate59363_)))))
    (define __gc-table-new
      (lambda (_size59348_ _flags59349_)
        (let* ((_flags59351_
                (fxand _flags59349_
                       (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_flags59353_
                (fxior _flags59351_ (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_gcht59355_
                (##gc-hash-table-allocate
                 _size59348_
                 _flags59353_
                 __gc-table-loads)))
          _gcht59355_)))
    (define __gc-table-e
      (lambda (_tab59343_)
        (declare (not interrupts-enabled))
        (let ((_gcht59346_ (&gc-table-gcht _tab59343_)))
          (if (fx= '0
                   (fxand (macro-gc-hash-table-flags _gcht59346_)
                          (macro-gc-hash-table-flag-need-rehash)))
              _gcht59346_
              (begin
                (__gc-table-rehash! _tab59343_)
                (&gc-table-gcht _tab59343_))))))
    (define __gc-table-rehash!
      (lambda (_tab59334_)
        (let* ((_old-table59336_ (&gc-table-gcht _tab59334_))
               (_new-table59338_
                (##gc-hash-table-resize! _old-table59336_ __gc-table-loads))
               (_gcht59340_
                (##gc-hash-table-rehash! _old-table59336_ _new-table59338_)))
          (&gc-table-gcht-set! _tab59334_ _gcht59340_))))
    (define gc-table-ref
      (lambda (_tab59320_ _key59321_ _default59322_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key59321_)
            (let* ((_gcht59325_ (__gc-table-e _tab59320_))
                   (_value59327_ (##gc-hash-table-ref _gcht59325_ _key59321_)))
              (if (eq? _value59327_ (macro-unused-obj))
                  _default59322_
                  _value59327_))
            (let ((_$e59329_ (&gc-table-immediate _tab59320_)))
              (if _$e59329_
                  ((lambda (_immediate59332_)
                     (immediate-table-ref
                      _immediate59332_
                      _key59321_
                      _default59322_))
                   _$e59329_)
                  _default59322_)))))
    (define gc-table-set!
      (lambda (_tab59313_ _key59314_ _value59315_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key59314_)
            (let ((_gcht59318_ (__gc-table-e _tab59313_)))
              (if (##gc-hash-table-set! _gcht59318_ _key59314_ _value59315_)
                  (begin
                    (__gc-table-rehash! _tab59313_)
                    (gc-table-set! _tab59313_ _key59314_ _value59315_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _tab59313_)
             _key59314_
             _value59315_))))
    (define gc-table-update!
      (lambda (_tab59306_ _key59307_ _update59308_ _default59309_)
        (if (##mem-allocated? _key59307_)
            (let ((_value59311_
                   (gc-table-ref _tab59306_ _key59307_ _default59309_)))
              (gc-table-set!
               _tab59306_
               _key59307_
               (_update59308_ _value59311_)))
            (immediate-table-update!
             (__gc-table-immediate _tab59306_)
             _key59307_
             _update59308_
             _default59309_))))
    (define gc-table-delete!
      (lambda (_tab59295_ _key59296_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key59296_)
            (let ((_gcht59299_ (__gc-table-e _tab59295_)))
              (if (##gc-hash-table-set!
                   _gcht59299_
                   _key59296_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _tab59295_)
                    (gc-table-delete! _tab59295_ _key59296_))
                  '#!void))
            (let ((_$e59301_ (&gc-table-immediate _tab59295_)))
              (if _$e59301_
                  ((lambda (_immediate59304_)
                     (immediate-table-delete! _immediate59304_ _key59296_))
                   _$e59301_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_tab59276_ _proc59277_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_gcht59280_ (__gc-table-e _tab59276_)))
            (let _loop59282_ ((_i59284_ (macro-gc-hash-table-key0)))
              (if (fx< _i59284_ (##vector-length _gcht59280_))
                  (let ((_key59286_ (##vector-ref _gcht59280_ _i59284_)))
                    (if (and (not (eq? _key59286_ (macro-unused-obj)))
                             (not (eq? _key59286_ (macro-deleted-obj))))
                        (_proc59277_
                         _key59286_
                         (##vector-ref _gcht59280_ (fx+ _i59284_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_loop59282_ (fx+ _i59284_ '2))))
                  '#!void)))
          (let ((_$e59290_ (&gc-table-immediate _tab59276_)))
            (if _$e59290_
                ((lambda (_immediate59293_)
                   (raw-table-for-each _immediate59293_ _proc59277_))
                 _$e59290_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_tab59264_)
        (let* ((_gcht59266_ (__gc-table-e _tab59264_))
               (_new-table59268_
                (__gc-table-new
                 (macro-gc-hash-table-count _gcht59266_)
                 (macro-gc-hash-table-flags _gcht59266_)))
               (_result59270_
                (##structure
                 (##structure-type _tab59264_)
                 _new-table59268_
                 '#f)))
          (gc-table-for-each
           _tab59264_
           (lambda (_k59273_ _v59274_)
             (gc-table-set! _result59270_ _k59273_ _v59274_)))
          _result59270_)))
    (define gc-table-clear!
      (lambda (_tab59257_)
        (let* ((_gcht59259_ (__gc-table-e _tab59257_))
               (_new-table59261_
                (__gc-table-new '16 (macro-gc-hash-table-flags _gcht59259_))))
          (&gc-table-gcht-set! _tab59257_ _new-table59261_)
          (&gc-table-immediate-set! _tab59257_ '#f))))
    (define gc-table-length
      (lambda (_tab59250_)
        (let ((_gcht59252_ (__gc-table-e _tab59250_)))
          (fx+ (macro-gc-hash-table-count _gcht59252_)
               (let ((_$e59254_ (&gc-table-immediate _tab59250_)))
                 (if _$e59254_ (&raw-table-count _$e59254_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_obj59235_)
        (declare (not interrupts-enabled))
        (let ((_val59238_ (gc-table-ref __object-eq-hash _obj59235_ '#f)))
          (if _val59238_
              _val59238_
              (let* ((_mix59240_ __object-eq-hash-next)
                     (_ptr59242_ (##type-cast _obj59235_ '0))
                     (_h59244_
                      (fxand (fxxor _mix59240_ _ptr59242_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_$e59247_ (##fx+? __object-eq-hash-next '1)))
                        (if _$e59247_ _$e59247_ '0)))
                (gc-table-set! __object-eq-hash _obj59235_ _h59244_)
                _h59244_)))))))
