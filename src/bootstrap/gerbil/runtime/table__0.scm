(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1708451991)
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
      (lambda (_tab56920_)
        (##unchecked-structure-ref _tab56920_ '1 __table::t 'raw-table-table)))
    (define &raw-table-count
      (lambda (_tab56918_)
        (##unchecked-structure-ref _tab56918_ '2 __table::t 'raw-table-count)))
    (define &raw-table-free
      (lambda (_tab56916_)
        (##unchecked-structure-ref _tab56916_ '3 __table::t 'raw-table-free)))
    (define &raw-table-hash
      (lambda (_tab56914_)
        (##unchecked-structure-ref _tab56914_ '4 __table::t 'raw-table-hash)))
    (define &raw-table-test
      (lambda (_tab56912_)
        (##unchecked-structure-ref _tab56912_ '5 __table::t 'raw-table-test)))
    (define &raw-table-seed
      (lambda (_tab56910_)
        (##unchecked-structure-ref _tab56910_ '6 __table::t 'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_tab56907_ _val56908_)
        (##unchecked-structure-set!
         _tab56907_
         _val56908_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_tab56904_ _val56905_)
        (##unchecked-structure-set!
         _tab56904_
         _val56905_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_tab56901_ _val56902_)
        (##unchecked-structure-set!
         _tab56901_
         _val56902_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_tab56898_ _val56899_)
        (##unchecked-structure-set!
         _tab56898_
         _val56899_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_tab56895_ _val56896_)
        (##unchecked-structure-set!
         _tab56895_
         _val56896_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_tab56892_ _val56893_)
        (##unchecked-structure-set!
         _tab56892_
         _val56893_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_size-hint56890_)
        (if (and (fixnum? _size-hint56890_) (fx> _size-hint56890_ '0))
            (fx* (fxmax '2 (expt '2 (integer-length _size-hint56890_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_size-hint56866_ _hash56867_ _test56868_ _seed56869_)
        (let* ((_size56871_ (raw-table-size-hint->size _size-hint56866_))
               (_table56873_ (make-vector _size56871_ (macro-unused-obj))))
          (##structure
           __table::t
           _table56873_
           '0
           (fxquotient _size56871_ '2)
           _hash56867_
           _test56868_
           _seed56869_))))
    (define make-raw-table__0
      (lambda (_size-hint56879_ _hash56880_ _test56881_)
        (let ((_seed56883_ '0))
          (make-raw-table__%
           _size-hint56879_
           _hash56880_
           _test56881_
           _seed56883_))))
    (define make-raw-table
      (lambda _g56922_
        (let ((_g56921_ (##length _g56922_)))
          (cond ((##fx= _g56921_ 3)
                 (apply (lambda (_size-hint56879_ _hash56880_ _test56881_)
                          (make-raw-table__0
                           _size-hint56879_
                           _hash56880_
                           _test56881_))
                        _g56922_))
                ((##fx= _g56921_ 4)
                 (apply (lambda (_size-hint56885_
                                 _hash56886_
                                 _test56887_
                                 _seed56888_)
                          (make-raw-table__%
                           _size-hint56885_
                           _hash56886_
                           _test56887_
                           _seed56888_))
                        _g56922_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g56922_))))))
    (define raw-table-ref
      (lambda (_tab56821_ _key56822_ _default56823_)
        (let ((_table56825_ (&raw-table-table _tab56821_))
              (_seed56826_ (&raw-table-seed _tab56821_))
              (_hash56827_ (&raw-table-hash _tab56821_))
              (_test56828_ (&raw-table-test _tab56821_)))
          (let* ((_h56830_ (fxxor (_hash56827_ _key56822_) _seed56826_))
                 (_size56833_ (vector-length _table56825_))
                 (_entries56836_ (fxquotient _size56833_ '2))
                 (_start56839_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56830_ _entries56836_)
                   '1)))
            (let _loop56843_ ((_probe56846_ _start56839_)
                              (_i56848_ '1)
                              (_deleted56850_ '#f))
              (let ((_k56853_ (vector-ref _table56825_ _probe56846_)))
                (if (eq? _k56853_ (macro-unused-obj))
                    _default56823_
                    (if (eq? _k56853_ (macro-deleted-obj))
                        (_loop56843_
                         (let ((_next-probe56856_
                                (fx+ _start56839_
                                     _i56848_
                                     (fx* _i56848_ _i56848_))))
                           (fxmodulo _next-probe56856_ _size56833_))
                         (fx+ _i56848_ '1)
                         (let ((_$e56859_ _deleted56850_))
                           (if _$e56859_ _$e56859_ _probe56846_)))
                        (if (_test56828_ _key56822_ _k56853_)
                            (vector-ref _table56825_ (fx+ _probe56846_ '1))
                            (_loop56843_
                             (let ((_next-probe56862_
                                    (fx+ _start56839_
                                         _i56848_
                                         (fx* _i56848_ _i56848_))))
                               (fxmodulo _next-probe56862_ _size56833_))
                             (fx+ _i56848_ '1)
                             _deleted56850_))))))))))
    (define raw-table-set!
      (lambda (_tab56817_ _key56818_ _value56819_)
        (if (fx< (&raw-table-free _tab56817_)
                 (fxquotient (vector-length (&raw-table-table _tab56817_)) '4))
            (__raw-table-rehash! _tab56817_)
            '#!void)
        (__raw-table-set! _tab56817_ _key56818_ _value56819_)))
    (define raw-table-update!
      (lambda (_tab56812_ _key56813_ _update56814_ _default56815_)
        (if (fx< (&raw-table-free _tab56812_)
                 (fxquotient (vector-length (&raw-table-table _tab56812_)) '4))
            (__raw-table-rehash! _tab56812_)
            '#!void)
        (__raw-table-update!
         _tab56812_
         _key56813_
         _update56814_
         _default56815_)))
    (define raw-table-delete!
      (lambda (_tab56773_ _key56774_)
        (let ((_table56776_ (&raw-table-table _tab56773_))
              (_seed56777_ (&raw-table-seed _tab56773_))
              (_hash56778_ (&raw-table-hash _tab56773_))
              (_test56779_ (&raw-table-test _tab56773_)))
          (let* ((_h56781_ (fxxor (_hash56778_ _key56774_) _seed56777_))
                 (_size56784_ (vector-length _table56776_))
                 (_entries56787_ (fxquotient _size56784_ '2))
                 (_start56790_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56781_ _entries56787_)
                   '1)))
            (let _loop56794_ ((_probe56797_ _start56790_) (_i56799_ '1))
              (let ((_k56802_ (vector-ref _table56776_ _probe56797_)))
                (if (eq? _k56802_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k56802_ (macro-deleted-obj))
                        (_loop56794_
                         (let ((_next-probe56805_
                                (fx+ _start56790_
                                     _i56799_
                                     (fx* _i56799_ _i56799_))))
                           (fxmodulo _next-probe56805_ _size56784_))
                         (fx+ _i56799_ '1))
                        (if (_test56779_ _key56774_ _k56802_)
                            (begin
                              (vector-set!
                               _table56776_
                               _probe56797_
                               (macro-deleted-obj))
                              (vector-set!
                               _table56776_
                               (fx+ _probe56797_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab56773_
                                  (fx- (&raw-table-count _tab56773_) '1)))))
                            (_loop56794_
                             (let ((_next-probe56809_
                                    (fx+ _start56790_
                                         _i56799_
                                         (fx* _i56799_ _i56799_))))
                               (fxmodulo _next-probe56809_ _size56784_))
                             (fx+ _i56799_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_tab56757_ _proc56758_)
        (let* ((_table56760_ (&raw-table-table _tab56757_))
               (_size56762_ (vector-length _table56760_)))
          (let _loop56765_ ((_i56767_ '0))
            (if (fx< _i56767_ _size56762_)
                (begin
                  (let ((_key56769_ (vector-ref _table56760_ _i56767_)))
                    (if (and (not (eq? _key56769_ (macro-unused-obj)))
                             (not (eq? _key56769_ (macro-deleted-obj))))
                        (let ((_value56771_
                               (vector-ref _table56760_ (fx+ _i56767_ '1))))
                          (_proc56758_ _key56769_ _value56771_))
                        '#!void))
                  (_loop56765_ (fx+ _i56767_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_tab56753_)
        (let ((_new-tab56755_ (##structure-copy _tab56753_)))
          (&raw-table-table-set!
           _new-tab56755_
           (vector-copy (&raw-table-table _tab56753_)))
          _new-tab56755_)))
    (define raw-table-clear!
      (lambda (_tab56751_)
        (vector-fill! (&raw-table-table _tab56751_) (macro-unused-obj))
        (&raw-table-count-set! _tab56751_ '0)
        (&raw-table-free-set!
         _tab56751_
         (fxquotient (vector-length (&raw-table-table _tab56751_)) '2))))
    (define __raw-table-set!
      (lambda (_tab56705_ _key56706_ _value56707_)
        (let ((_table56709_ (&raw-table-table _tab56705_))
              (_seed56710_ (&raw-table-seed _tab56705_))
              (_hash56711_ (&raw-table-hash _tab56705_))
              (_test56712_ (&raw-table-test _tab56705_)))
          (let* ((_h56714_ (fxxor (_hash56711_ _key56706_) _seed56710_))
                 (_size56717_ (vector-length _table56709_))
                 (_entries56720_ (fxquotient _size56717_ '2))
                 (_start56723_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56714_ _entries56720_)
                   '1)))
            (let _loop56727_ ((_probe56730_ _start56723_)
                              (_i56732_ '1)
                              (_deleted56734_ '#f))
              (let ((_k56737_ (vector-ref _table56709_ _probe56730_)))
                (if (eq? _k56737_ (macro-unused-obj))
                    (if _deleted56734_
                        (begin
                          (vector-set! _table56709_ _deleted56734_ _key56706_)
                          (vector-set!
                           _table56709_
                           (fx+ _deleted56734_ '1)
                           _value56707_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab56705_
                              (fx+ (&raw-table-count _tab56705_) '1)))))
                        (begin
                          (vector-set! _table56709_ _probe56730_ _key56706_)
                          (vector-set!
                           _table56709_
                           (fx+ _probe56730_ '1)
                           _value56707_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab56705_
                              (fx- (&raw-table-free _tab56705_) '1))
                             (&raw-table-count-set!
                              _tab56705_
                              (fx+ (&raw-table-count _tab56705_) '1))))))
                    (if (eq? _k56737_ (macro-deleted-obj))
                        (_loop56727_
                         (let ((_next-probe56742_
                                (fx+ _start56723_
                                     _i56732_
                                     (fx* _i56732_ _i56732_))))
                           (fxmodulo _next-probe56742_ _size56717_))
                         (fx+ _i56732_ '1)
                         (let ((_$e56745_ _deleted56734_))
                           (if _$e56745_ _$e56745_ _probe56730_)))
                        (if (_test56712_ _key56706_ _k56737_)
                            (begin
                              (vector-set!
                               _table56709_
                               _probe56730_
                               _key56706_)
                              (vector-set!
                               _table56709_
                               (fx+ _probe56730_ '1)
                               _value56707_))
                            (_loop56727_
                             (let ((_next-probe56748_
                                    (fx+ _start56723_
                                         _i56732_
                                         (fx* _i56732_ _i56732_))))
                               (fxmodulo _next-probe56748_ _size56717_))
                             (fx+ _i56732_ '1)
                             _deleted56734_))))))))))
    (define __raw-table-update!
      (lambda (_tab56658_ _key56659_ _update56660_ _default56661_)
        (let ((_table56663_ (&raw-table-table _tab56658_))
              (_seed56664_ (&raw-table-seed _tab56658_))
              (_hash56665_ (&raw-table-hash _tab56658_))
              (_test56666_ (&raw-table-test _tab56658_)))
          (let* ((_h56668_ (fxxor (_hash56665_ _key56659_) _seed56664_))
                 (_size56671_ (vector-length _table56663_))
                 (_entries56674_ (fxquotient _size56671_ '2))
                 (_start56677_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56668_ _entries56674_)
                   '1)))
            (let _loop56681_ ((_probe56684_ _start56677_)
                              (_i56686_ '1)
                              (_deleted56688_ '#f))
              (let ((_k56691_ (vector-ref _table56663_ _probe56684_)))
                (if (eq? _k56691_ (macro-unused-obj))
                    (if _deleted56688_
                        (begin
                          (vector-set! _table56663_ _deleted56688_ _key56659_)
                          (vector-set!
                           _table56663_
                           (fx+ _deleted56688_ '1)
                           (_update56660_ _default56661_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab56658_
                              (fx+ (&raw-table-count _tab56658_) '1)))))
                        (begin
                          (vector-set! _table56663_ _probe56684_ _key56659_)
                          (vector-set!
                           _table56663_
                           (fx+ _probe56684_ '1)
                           (_update56660_ _default56661_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab56658_
                              (fx- (&raw-table-free _tab56658_) '1))
                             (&raw-table-count-set!
                              _tab56658_
                              (fx+ (&raw-table-count _tab56658_) '1))))))
                    (if (eq? _k56691_ (macro-deleted-obj))
                        (_loop56681_
                         (let ((_next-probe56696_
                                (fx+ _start56677_
                                     _i56686_
                                     (fx* _i56686_ _i56686_))))
                           (fxmodulo _next-probe56696_ _size56671_))
                         (fx+ _i56686_ '1)
                         (let ((_$e56699_ _deleted56688_))
                           (if _$e56699_ _$e56699_ _probe56684_)))
                        (if (_test56666_ _key56659_ _k56691_)
                            (begin
                              (vector-set!
                               _table56663_
                               _probe56684_
                               _key56659_)
                              (vector-set!
                               _table56663_
                               (fx+ _probe56684_ '1)
                               (_update56660_
                                (vector-ref
                                 _table56663_
                                 (fx+ _probe56684_ '1)))))
                            (_loop56681_
                             (let ((_next-probe56702_
                                    (fx+ _start56677_
                                         _i56686_
                                         (fx* _i56686_ _i56686_))))
                               (fxmodulo _next-probe56702_ _size56671_))
                             (fx+ _i56686_ '1)
                             _deleted56688_))))))))))
    (define __raw-table-rehash!
      (lambda (_tab56639_)
        (let* ((_old-table56641_ (&raw-table-table _tab56639_))
               (_old-size56643_ (vector-length _old-table56641_))
               (_new-size56645_
                (if (fx< (&raw-table-count _tab56639_)
                         (fxquotient _old-size56643_ '4))
                    (vector-length _old-table56641_)
                    (fx* '2 (vector-length _old-table56641_))))
               (_new-table56647_
                (make-vector _new-size56645_ (macro-unused-obj))))
          (&raw-table-table-set! _tab56639_ _new-table56647_)
          (&raw-table-count-set! _tab56639_ '0)
          (&raw-table-free-set! _tab56639_ (fxquotient _new-size56645_ '2))
          (let _lp56650_ ((_i56652_ '0))
            (if (fx< _i56652_ _old-size56643_)
                (begin
                  (let ((_key56654_ (vector-ref _old-table56641_ _i56652_)))
                    (if (and (not (eq? _key56654_ (macro-unused-obj)))
                             (not (eq? _key56654_ (macro-deleted-obj))))
                        (let ((_value56656_
                               (vector-ref
                                _old-table56641_
                                (fx+ _i56652_ '1))))
                          (__raw-table-set!
                           _tab56639_
                           _key56654_
                           _value56656_))
                        '#!void))
                  (_lp56650_ (fx+ _i56652_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_obj56635_)
        (let ((_t56637_ (##type _obj56635_)))
          (if (fx= (fxand _t56637_ '1) '0)
              (fxand (##type-cast _obj56635_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _obj56635_)
                  (symbolic-hash _obj56635_)
                  (fxand (__eq-hash _obj56635_) (macro-max-fixnum32)))))))
    (define __eq-hash
      (lambda (_obj56632_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _obj56632_)))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash-loads '#f64(.25 .75))
    (define __object-eq-hash
      (##gc-hash-table-allocate
       '1024
       (##fxior (macro-gc-hash-table-flag-mem-alloc-keys)
                (macro-gc-hash-table-flag-weak-keys))
       __object-eq-hash-loads))
    (define __object->eq-hash
      (lambda (_obj56620_)
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
          (let ((_val56623_ (##gc-hash-table-ref __object-eq-hash _obj56620_)))
            (if (##eq? _val56623_ (macro-unused-obj))
                (let ((_val56625_ __object-eq-hash-next))
                  (set! __object-eq-hash-next
                        (let ((_$e56627_ (##fx+? __object-eq-hash-next '1)))
                          (if _$e56627_ _$e56627_ '0)))
                  (if (##gc-hash-table-set!
                       __object-eq-hash
                       _obj56620_
                       _val56625_)
                      (let ((_new-table56630_
                             (##gc-hash-table-rehash!
                              __object-eq-hash
                              (##gc-hash-table-resize!
                               __object-eq-hash
                               __object-eq-hash-loads))))
                        (##gc-hash-table-set!
                         _new-table56630_
                         _obj56620_
                         _val56625_)
                        (set! __object-eq-hash _new-table56630_))
                      '#!void)
                  _val56625_)
                _val56623_)))))
    (define eqv-hash
      (lambda (_obj56610_)
        (letrec ((_combine56612_
                  (lambda (_a56617_ _b56618_)
                    (fxand (fx* (fx+ _a56617_
                                     (fxarithmetic-shift-left _b56618_ '1))
                                '331804471)
                           (macro-max-fixnum32))))
                 (_hash56613_
                  (lambda (_obj56615_)
                    (macro-number-dispatch
                     _obj56615_
                     (eq-hash _obj56615_)
                     (fxand _obj56615_ (macro-max-fixnum32))
                     (modulo _obj56615_ '331804481)
                     (_combine56612_
                      (_hash56613_ (macro-ratnum-numerator _obj56615_))
                      (_hash56613_ (macro-ratnum-denominator _obj56615_)))
                     (_combine56612_
                      (##u16vector-ref _obj56615_ '0)
                      (_combine56612_
                       (##u16vector-ref _obj56615_ '1)
                       (_combine56612_
                        (##u16vector-ref _obj56615_ '2)
                        (##u16vector-ref _obj56615_ '3))))
                     (_combine56612_
                      (_hash56613_ (macro-cpxnum-real _obj56615_))
                      (_hash56613_ (macro-cpxnum-imag _obj56615_)))))))
          (_hash56613_ _obj56610_))))
    (define symbolic?
      (lambda (_obj56605_)
        (let ((_$e56607_ (symbol? _obj56605_)))
          (if _$e56607_ _$e56607_ (keyword? _obj56605_)))))
    (define symbolic-hash (lambda (_obj56603_) (macro-slot '1 _obj56603_)))
    (define string-hash (lambda (_obj56601_) (##string=?-hash _obj56601_)))
    (define make-eq-table__%
      (lambda (_size-hint56582_ _seed56584_)
        (make-raw-table__% _size-hint56582_ eq-hash eq? _seed56584_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_size-hint56590_ '#f) (_seed56592_ '0))
          (make-eq-table__% _size-hint56590_ _seed56592_))))
    (define make-eq-table__1
      (lambda (_size-hint56594_)
        (let ((_seed56596_ '0))
          (make-eq-table__% _size-hint56594_ _seed56596_))))
    (define make-eq-table
      (lambda _g56924_
        (let ((_g56923_ (##length _g56924_)))
          (cond ((##fx= _g56923_ 0)
                 (apply (lambda () (make-eq-table__0)) _g56924_))
                ((##fx= _g56923_ 1)
                 (apply (lambda (_size-hint56594_)
                          (make-eq-table__1 _size-hint56594_))
                        _g56924_))
                ((##fx= _g56923_ 2)
                 (apply (lambda (_size-hint56598_ _seed56599_)
                          (make-eq-table__% _size-hint56598_ _seed56599_))
                        _g56924_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g56924_))))))
    (define eq-table-ref
      (lambda (_tab56539_ _key56540_ _default56541_)
        (let ((_table56543_ (&raw-table-table _tab56539_))
              (_seed56544_ (&raw-table-seed _tab56539_)))
          (let* ((_h56546_ (fxxor (eq-hash _key56540_) _seed56544_))
                 (_size56549_ (vector-length _table56543_))
                 (_entries56552_ (fxquotient _size56549_ '2))
                 (_start56555_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56546_ _entries56552_)
                   '1)))
            (let _loop56559_ ((_probe56562_ _start56555_)
                              (_i56564_ '1)
                              (_deleted56566_ '#f))
              (let ((_k56569_ (vector-ref _table56543_ _probe56562_)))
                (if (eq? _k56569_ (macro-unused-obj))
                    _default56541_
                    (if (eq? _k56569_ (macro-deleted-obj))
                        (_loop56559_
                         (let ((_next-probe56572_
                                (fx+ _start56555_
                                     _i56564_
                                     (fx* _i56564_ _i56564_))))
                           (fxmodulo _next-probe56572_ _size56549_))
                         (fx+ _i56564_ '1)
                         (let ((_$e56575_ _deleted56566_))
                           (if _$e56575_ _$e56575_ _probe56562_)))
                        (if (eq? _key56540_ _k56569_)
                            (vector-ref _table56543_ (fx+ _probe56562_ '1))
                            (_loop56559_
                             (let ((_next-probe56578_
                                    (fx+ _start56555_
                                         _i56564_
                                         (fx* _i56564_ _i56564_))))
                               (fxmodulo _next-probe56578_ _size56549_))
                             (fx+ _i56564_ '1)
                             _deleted56566_))))))))))
    (define eq-table-set!
      (lambda (_tab56535_ _key56536_ _value56537_)
        (if (fx< (&raw-table-free _tab56535_)
                 (fxquotient (vector-length (&raw-table-table _tab56535_)) '4))
            (__raw-table-rehash! _tab56535_)
            '#!void)
        (__eq-table-set! _tab56535_ _key56536_ _value56537_)))
    (define __eq-table-set!
      (lambda (_tab56490_ _key56491_ _value56492_)
        (let ((_table56495_ (&raw-table-table _tab56490_))
              (_seed56496_ (&raw-table-seed _tab56490_)))
          (let* ((_h56498_ (fxxor (eq-hash _key56491_) _seed56496_))
                 (_size56501_ (vector-length _table56495_))
                 (_entries56504_ (fxquotient _size56501_ '2))
                 (_start56507_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56498_ _entries56504_)
                   '1)))
            (let _loop56511_ ((_probe56514_ _start56507_)
                              (_i56516_ '1)
                              (_deleted56518_ '#f))
              (let ((_k56521_ (vector-ref _table56495_ _probe56514_)))
                (if (eq? _k56521_ (macro-unused-obj))
                    (if _deleted56518_
                        (begin
                          (vector-set! _table56495_ _deleted56518_ _key56491_)
                          (vector-set!
                           _table56495_
                           (fx+ _deleted56518_ '1)
                           _value56492_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab56490_
                              (fx+ (&raw-table-count _tab56490_) '1)))))
                        (begin
                          (vector-set! _table56495_ _probe56514_ _key56491_)
                          (vector-set!
                           _table56495_
                           (fx+ _probe56514_ '1)
                           _value56492_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab56490_
                              (fx- (&raw-table-free _tab56490_) '1))
                             (&raw-table-count-set!
                              _tab56490_
                              (fx+ (&raw-table-count _tab56490_) '1))))))
                    (if (eq? _k56521_ (macro-deleted-obj))
                        (_loop56511_
                         (let ((_next-probe56526_
                                (fx+ _start56507_
                                     _i56516_
                                     (fx* _i56516_ _i56516_))))
                           (fxmodulo _next-probe56526_ _size56501_))
                         (fx+ _i56516_ '1)
                         (let ((_$e56529_ _deleted56518_))
                           (if _$e56529_ _$e56529_ _probe56514_)))
                        (if (eq? _key56491_ _k56521_)
                            (begin
                              (vector-set!
                               _table56495_
                               _probe56514_
                               _key56491_)
                              (vector-set!
                               _table56495_
                               (fx+ _probe56514_ '1)
                               _value56492_))
                            (_loop56511_
                             (let ((_next-probe56532_
                                    (fx+ _start56507_
                                         _i56516_
                                         (fx* _i56516_ _i56516_))))
                               (fxmodulo _next-probe56532_ _size56501_))
                             (fx+ _i56516_ '1)
                             _deleted56518_))))))))))
    (define eq-table-update!
      (lambda (_tab56485_ _key56486_ _eq-table-update!56487_ _default56488_)
        (if (fx< (&raw-table-free _tab56485_)
                 (fxquotient (vector-length (&raw-table-table _tab56485_)) '4))
            (__raw-table-rehash! _tab56485_)
            '#!void)
        (__eq-table-update!
         _tab56485_
         _key56486_
         _eq-table-update!56487_
         _default56488_)))
    (define __eq-table-update!
      (lambda (_tab56439_ _key56440_ _eq-table-update!56441_ _default56442_)
        (let ((_table56445_ (&raw-table-table _tab56439_))
              (_seed56446_ (&raw-table-seed _tab56439_)))
          (let* ((_h56448_ (fxxor (eq-hash _key56440_) _seed56446_))
                 (_size56451_ (vector-length _table56445_))
                 (_entries56454_ (fxquotient _size56451_ '2))
                 (_start56457_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56448_ _entries56454_)
                   '1)))
            (let _loop56461_ ((_probe56464_ _start56457_)
                              (_i56466_ '1)
                              (_deleted56468_ '#f))
              (let ((_k56471_ (vector-ref _table56445_ _probe56464_)))
                (if (eq? _k56471_ (macro-unused-obj))
                    (if _deleted56468_
                        (begin
                          (vector-set! _table56445_ _deleted56468_ _key56440_)
                          (vector-set!
                           _table56445_
                           (fx+ _deleted56468_ '1)
                           (_eq-table-update!56441_ _default56442_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab56439_
                              (fx+ (&raw-table-count _tab56439_) '1)))))
                        (begin
                          (vector-set! _table56445_ _probe56464_ _key56440_)
                          (vector-set!
                           _table56445_
                           (fx+ _probe56464_ '1)
                           (_eq-table-update!56441_ _default56442_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab56439_
                              (fx- (&raw-table-free _tab56439_) '1))
                             (&raw-table-count-set!
                              _tab56439_
                              (fx+ (&raw-table-count _tab56439_) '1))))))
                    (if (eq? _k56471_ (macro-deleted-obj))
                        (_loop56461_
                         (let ((_next-probe56476_
                                (fx+ _start56457_
                                     _i56466_
                                     (fx* _i56466_ _i56466_))))
                           (fxmodulo _next-probe56476_ _size56451_))
                         (fx+ _i56466_ '1)
                         (let ((_$e56479_ _deleted56468_))
                           (if _$e56479_ _$e56479_ _probe56464_)))
                        (if (eq? _key56440_ _k56471_)
                            (begin
                              (vector-set!
                               _table56445_
                               _probe56464_
                               _key56440_)
                              (vector-set!
                               _table56445_
                               (fx+ _probe56464_ '1)
                               (_eq-table-update!56441_
                                (vector-ref
                                 _table56445_
                                 (fx+ _probe56464_ '1)))))
                            (_loop56461_
                             (let ((_next-probe56482_
                                    (fx+ _start56457_
                                         _i56466_
                                         (fx* _i56466_ _i56466_))))
                               (fxmodulo _next-probe56482_ _size56451_))
                             (fx+ _i56466_ '1)
                             _deleted56468_))))))))))
    (define eq-table-delete!
      (lambda (_tab56398_ _key56400_)
        (let ((_table56403_ (&raw-table-table _tab56398_))
              (_seed56405_ (&raw-table-seed _tab56398_)))
          (let* ((_h56408_ (fxxor (eq-hash _key56400_) _seed56405_))
                 (_size56411_ (vector-length _table56403_))
                 (_entries56414_ (fxquotient _size56411_ '2))
                 (_start56417_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56408_ _entries56414_)
                   '1)))
            (let _loop56421_ ((_probe56424_ _start56417_) (_i56426_ '1))
              (let ((_k56429_ (vector-ref _table56403_ _probe56424_)))
                (if (eq? _k56429_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k56429_ (macro-deleted-obj))
                        (_loop56421_
                         (let ((_next-probe56432_
                                (fx+ _start56417_
                                     _i56426_
                                     (fx* _i56426_ _i56426_))))
                           (fxmodulo _next-probe56432_ _size56411_))
                         (fx+ _i56426_ '1))
                        (if (eq? _key56400_ _k56429_)
                            (begin
                              (vector-set!
                               _table56403_
                               _probe56424_
                               (macro-deleted-obj))
                              (vector-set!
                               _table56403_
                               (fx+ _probe56424_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab56398_
                                  (fx- (&raw-table-count _tab56398_) '1)))))
                            (_loop56421_
                             (let ((_next-probe56436_
                                    (fx+ _start56417_
                                         _i56426_
                                         (fx* _i56426_ _i56426_))))
                               (fxmodulo _next-probe56436_ _size56411_))
                             (fx+ _i56426_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_size-hint56379_ _seed56381_)
        (make-raw-table__% _size-hint56379_ eqv-hash eqv? _seed56381_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_size-hint56387_ '#f) (_seed56389_ '0))
          (make-eqv-table__% _size-hint56387_ _seed56389_))))
    (define make-eqv-table__1
      (lambda (_size-hint56391_)
        (let ((_seed56393_ '0))
          (make-eqv-table__% _size-hint56391_ _seed56393_))))
    (define make-eqv-table
      (lambda _g56926_
        (let ((_g56925_ (##length _g56926_)))
          (cond ((##fx= _g56925_ 0)
                 (apply (lambda () (make-eqv-table__0)) _g56926_))
                ((##fx= _g56925_ 1)
                 (apply (lambda (_size-hint56391_)
                          (make-eqv-table__1 _size-hint56391_))
                        _g56926_))
                ((##fx= _g56925_ 2)
                 (apply (lambda (_size-hint56395_ _seed56396_)
                          (make-eqv-table__% _size-hint56395_ _seed56396_))
                        _g56926_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g56926_))))))
    (define eqv-table-ref
      (lambda (_tab56336_ _key56337_ _default56338_)
        (let ((_table56340_ (&raw-table-table _tab56336_))
              (_seed56341_ (&raw-table-seed _tab56336_)))
          (let* ((_h56343_ (fxxor (eqv-hash _key56337_) _seed56341_))
                 (_size56346_ (vector-length _table56340_))
                 (_entries56349_ (fxquotient _size56346_ '2))
                 (_start56352_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56343_ _entries56349_)
                   '1)))
            (let _loop56356_ ((_probe56359_ _start56352_)
                              (_i56361_ '1)
                              (_deleted56363_ '#f))
              (let ((_k56366_ (vector-ref _table56340_ _probe56359_)))
                (if (eq? _k56366_ (macro-unused-obj))
                    _default56338_
                    (if (eq? _k56366_ (macro-deleted-obj))
                        (_loop56356_
                         (let ((_next-probe56369_
                                (fx+ _start56352_
                                     _i56361_
                                     (fx* _i56361_ _i56361_))))
                           (fxmodulo _next-probe56369_ _size56346_))
                         (fx+ _i56361_ '1)
                         (let ((_$e56372_ _deleted56363_))
                           (if _$e56372_ _$e56372_ _probe56359_)))
                        (if (eqv? _key56337_ _k56366_)
                            (vector-ref _table56340_ (fx+ _probe56359_ '1))
                            (_loop56356_
                             (let ((_next-probe56375_
                                    (fx+ _start56352_
                                         _i56361_
                                         (fx* _i56361_ _i56361_))))
                               (fxmodulo _next-probe56375_ _size56346_))
                             (fx+ _i56361_ '1)
                             _deleted56363_))))))))))
    (define eqv-table-set!
      (lambda (_tab56332_ _key56333_ _value56334_)
        (if (fx< (&raw-table-free _tab56332_)
                 (fxquotient (vector-length (&raw-table-table _tab56332_)) '4))
            (__raw-table-rehash! _tab56332_)
            '#!void)
        (__eqv-table-set! _tab56332_ _key56333_ _value56334_)))
    (define __eqv-table-set!
      (lambda (_tab56287_ _key56288_ _value56289_)
        (let ((_table56292_ (&raw-table-table _tab56287_))
              (_seed56293_ (&raw-table-seed _tab56287_)))
          (let* ((_h56295_ (fxxor (eqv-hash _key56288_) _seed56293_))
                 (_size56298_ (vector-length _table56292_))
                 (_entries56301_ (fxquotient _size56298_ '2))
                 (_start56304_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56295_ _entries56301_)
                   '1)))
            (let _loop56308_ ((_probe56311_ _start56304_)
                              (_i56313_ '1)
                              (_deleted56315_ '#f))
              (let ((_k56318_ (vector-ref _table56292_ _probe56311_)))
                (if (eq? _k56318_ (macro-unused-obj))
                    (if _deleted56315_
                        (begin
                          (vector-set! _table56292_ _deleted56315_ _key56288_)
                          (vector-set!
                           _table56292_
                           (fx+ _deleted56315_ '1)
                           _value56289_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab56287_
                              (fx+ (&raw-table-count _tab56287_) '1)))))
                        (begin
                          (vector-set! _table56292_ _probe56311_ _key56288_)
                          (vector-set!
                           _table56292_
                           (fx+ _probe56311_ '1)
                           _value56289_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab56287_
                              (fx- (&raw-table-free _tab56287_) '1))
                             (&raw-table-count-set!
                              _tab56287_
                              (fx+ (&raw-table-count _tab56287_) '1))))))
                    (if (eq? _k56318_ (macro-deleted-obj))
                        (_loop56308_
                         (let ((_next-probe56323_
                                (fx+ _start56304_
                                     _i56313_
                                     (fx* _i56313_ _i56313_))))
                           (fxmodulo _next-probe56323_ _size56298_))
                         (fx+ _i56313_ '1)
                         (let ((_$e56326_ _deleted56315_))
                           (if _$e56326_ _$e56326_ _probe56311_)))
                        (if (eqv? _key56288_ _k56318_)
                            (begin
                              (vector-set!
                               _table56292_
                               _probe56311_
                               _key56288_)
                              (vector-set!
                               _table56292_
                               (fx+ _probe56311_ '1)
                               _value56289_))
                            (_loop56308_
                             (let ((_next-probe56329_
                                    (fx+ _start56304_
                                         _i56313_
                                         (fx* _i56313_ _i56313_))))
                               (fxmodulo _next-probe56329_ _size56298_))
                             (fx+ _i56313_ '1)
                             _deleted56315_))))))))))
    (define eqv-table-update!
      (lambda (_tab56282_ _key56283_ _eqv-table-update!56284_ _default56285_)
        (if (fx< (&raw-table-free _tab56282_)
                 (fxquotient (vector-length (&raw-table-table _tab56282_)) '4))
            (__raw-table-rehash! _tab56282_)
            '#!void)
        (__eqv-table-update!
         _tab56282_
         _key56283_
         _eqv-table-update!56284_
         _default56285_)))
    (define __eqv-table-update!
      (lambda (_tab56236_ _key56237_ _eqv-table-update!56238_ _default56239_)
        (let ((_table56242_ (&raw-table-table _tab56236_))
              (_seed56243_ (&raw-table-seed _tab56236_)))
          (let* ((_h56245_ (fxxor (eqv-hash _key56237_) _seed56243_))
                 (_size56248_ (vector-length _table56242_))
                 (_entries56251_ (fxquotient _size56248_ '2))
                 (_start56254_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56245_ _entries56251_)
                   '1)))
            (let _loop56258_ ((_probe56261_ _start56254_)
                              (_i56263_ '1)
                              (_deleted56265_ '#f))
              (let ((_k56268_ (vector-ref _table56242_ _probe56261_)))
                (if (eq? _k56268_ (macro-unused-obj))
                    (if _deleted56265_
                        (begin
                          (vector-set! _table56242_ _deleted56265_ _key56237_)
                          (vector-set!
                           _table56242_
                           (fx+ _deleted56265_ '1)
                           (_eqv-table-update!56238_ _default56239_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab56236_
                              (fx+ (&raw-table-count _tab56236_) '1)))))
                        (begin
                          (vector-set! _table56242_ _probe56261_ _key56237_)
                          (vector-set!
                           _table56242_
                           (fx+ _probe56261_ '1)
                           (_eqv-table-update!56238_ _default56239_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab56236_
                              (fx- (&raw-table-free _tab56236_) '1))
                             (&raw-table-count-set!
                              _tab56236_
                              (fx+ (&raw-table-count _tab56236_) '1))))))
                    (if (eq? _k56268_ (macro-deleted-obj))
                        (_loop56258_
                         (let ((_next-probe56273_
                                (fx+ _start56254_
                                     _i56263_
                                     (fx* _i56263_ _i56263_))))
                           (fxmodulo _next-probe56273_ _size56248_))
                         (fx+ _i56263_ '1)
                         (let ((_$e56276_ _deleted56265_))
                           (if _$e56276_ _$e56276_ _probe56261_)))
                        (if (eqv? _key56237_ _k56268_)
                            (begin
                              (vector-set!
                               _table56242_
                               _probe56261_
                               _key56237_)
                              (vector-set!
                               _table56242_
                               (fx+ _probe56261_ '1)
                               (_eqv-table-update!56238_
                                (vector-ref
                                 _table56242_
                                 (fx+ _probe56261_ '1)))))
                            (_loop56258_
                             (let ((_next-probe56279_
                                    (fx+ _start56254_
                                         _i56263_
                                         (fx* _i56263_ _i56263_))))
                               (fxmodulo _next-probe56279_ _size56248_))
                             (fx+ _i56263_ '1)
                             _deleted56265_))))))))))
    (define eqv-table-delete!
      (lambda (_tab56195_ _key56197_)
        (let ((_table56200_ (&raw-table-table _tab56195_))
              (_seed56202_ (&raw-table-seed _tab56195_)))
          (let* ((_h56205_ (fxxor (eqv-hash _key56197_) _seed56202_))
                 (_size56208_ (vector-length _table56200_))
                 (_entries56211_ (fxquotient _size56208_ '2))
                 (_start56214_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56205_ _entries56211_)
                   '1)))
            (let _loop56218_ ((_probe56221_ _start56214_) (_i56223_ '1))
              (let ((_k56226_ (vector-ref _table56200_ _probe56221_)))
                (if (eq? _k56226_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k56226_ (macro-deleted-obj))
                        (_loop56218_
                         (let ((_next-probe56229_
                                (fx+ _start56214_
                                     _i56223_
                                     (fx* _i56223_ _i56223_))))
                           (fxmodulo _next-probe56229_ _size56208_))
                         (fx+ _i56223_ '1))
                        (if (eqv? _key56197_ _k56226_)
                            (begin
                              (vector-set!
                               _table56200_
                               _probe56221_
                               (macro-deleted-obj))
                              (vector-set!
                               _table56200_
                               (fx+ _probe56221_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab56195_
                                  (fx- (&raw-table-count _tab56195_) '1)))))
                            (_loop56218_
                             (let ((_next-probe56233_
                                    (fx+ _start56214_
                                         _i56223_
                                         (fx* _i56223_ _i56223_))))
                               (fxmodulo _next-probe56233_ _size56208_))
                             (fx+ _i56223_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_size-hint56176_ _seed56178_)
        (make-raw-table__% _size-hint56176_ symbolic-hash eq? _seed56178_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_size-hint56184_ '#f) (_seed56186_ '0))
          (make-symbolic-table__% _size-hint56184_ _seed56186_))))
    (define make-symbolic-table__1
      (lambda (_size-hint56188_)
        (let ((_seed56190_ '0))
          (make-symbolic-table__% _size-hint56188_ _seed56190_))))
    (define make-symbolic-table
      (lambda _g56928_
        (let ((_g56927_ (##length _g56928_)))
          (cond ((##fx= _g56927_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g56928_))
                ((##fx= _g56927_ 1)
                 (apply (lambda (_size-hint56188_)
                          (make-symbolic-table__1 _size-hint56188_))
                        _g56928_))
                ((##fx= _g56927_ 2)
                 (apply (lambda (_size-hint56192_ _seed56193_)
                          (make-symbolic-table__%
                           _size-hint56192_
                           _seed56193_))
                        _g56928_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g56928_))))))
    (define symbolic-table-ref
      (lambda (_tab56133_ _key56134_ _default56135_)
        (let ((_table56137_ (&raw-table-table _tab56133_))
              (_seed56138_ (&raw-table-seed _tab56133_)))
          (let* ((_h56140_ (fxxor (symbolic-hash _key56134_) _seed56138_))
                 (_size56143_ (vector-length _table56137_))
                 (_entries56146_ (fxquotient _size56143_ '2))
                 (_start56149_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56140_ _entries56146_)
                   '1)))
            (let _loop56153_ ((_probe56156_ _start56149_)
                              (_i56158_ '1)
                              (_deleted56160_ '#f))
              (let ((_k56163_ (vector-ref _table56137_ _probe56156_)))
                (if (eq? _k56163_ (macro-unused-obj))
                    _default56135_
                    (if (eq? _k56163_ (macro-deleted-obj))
                        (_loop56153_
                         (let ((_next-probe56166_
                                (fx+ _start56149_
                                     _i56158_
                                     (fx* _i56158_ _i56158_))))
                           (fxmodulo _next-probe56166_ _size56143_))
                         (fx+ _i56158_ '1)
                         (let ((_$e56169_ _deleted56160_))
                           (if _$e56169_ _$e56169_ _probe56156_)))
                        (if (eq? _key56134_ _k56163_)
                            (vector-ref _table56137_ (fx+ _probe56156_ '1))
                            (_loop56153_
                             (let ((_next-probe56172_
                                    (fx+ _start56149_
                                         _i56158_
                                         (fx* _i56158_ _i56158_))))
                               (fxmodulo _next-probe56172_ _size56143_))
                             (fx+ _i56158_ '1)
                             _deleted56160_))))))))))
    (define symbolic-table-set!
      (lambda (_tab56129_ _key56130_ _value56131_)
        (if (fx< (&raw-table-free _tab56129_)
                 (fxquotient (vector-length (&raw-table-table _tab56129_)) '4))
            (__raw-table-rehash! _tab56129_)
            '#!void)
        (__symbolic-table-set! _tab56129_ _key56130_ _value56131_)))
    (define __symbolic-table-set!
      (lambda (_tab56084_ _key56085_ _value56086_)
        (let ((_table56089_ (&raw-table-table _tab56084_))
              (_seed56090_ (&raw-table-seed _tab56084_)))
          (let* ((_h56092_ (fxxor (symbolic-hash _key56085_) _seed56090_))
                 (_size56095_ (vector-length _table56089_))
                 (_entries56098_ (fxquotient _size56095_ '2))
                 (_start56101_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56092_ _entries56098_)
                   '1)))
            (let _loop56105_ ((_probe56108_ _start56101_)
                              (_i56110_ '1)
                              (_deleted56112_ '#f))
              (let ((_k56115_ (vector-ref _table56089_ _probe56108_)))
                (if (eq? _k56115_ (macro-unused-obj))
                    (if _deleted56112_
                        (begin
                          (vector-set! _table56089_ _deleted56112_ _key56085_)
                          (vector-set!
                           _table56089_
                           (fx+ _deleted56112_ '1)
                           _value56086_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab56084_
                              (fx+ (&raw-table-count _tab56084_) '1)))))
                        (begin
                          (vector-set! _table56089_ _probe56108_ _key56085_)
                          (vector-set!
                           _table56089_
                           (fx+ _probe56108_ '1)
                           _value56086_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab56084_
                              (fx- (&raw-table-free _tab56084_) '1))
                             (&raw-table-count-set!
                              _tab56084_
                              (fx+ (&raw-table-count _tab56084_) '1))))))
                    (if (eq? _k56115_ (macro-deleted-obj))
                        (_loop56105_
                         (let ((_next-probe56120_
                                (fx+ _start56101_
                                     _i56110_
                                     (fx* _i56110_ _i56110_))))
                           (fxmodulo _next-probe56120_ _size56095_))
                         (fx+ _i56110_ '1)
                         (let ((_$e56123_ _deleted56112_))
                           (if _$e56123_ _$e56123_ _probe56108_)))
                        (if (eq? _key56085_ _k56115_)
                            (begin
                              (vector-set!
                               _table56089_
                               _probe56108_
                               _key56085_)
                              (vector-set!
                               _table56089_
                               (fx+ _probe56108_ '1)
                               _value56086_))
                            (_loop56105_
                             (let ((_next-probe56126_
                                    (fx+ _start56101_
                                         _i56110_
                                         (fx* _i56110_ _i56110_))))
                               (fxmodulo _next-probe56126_ _size56095_))
                             (fx+ _i56110_ '1)
                             _deleted56112_))))))))))
    (define symbolic-table-update!
      (lambda (_tab56079_
               _key56080_
               _symbolic-table-update!56081_
               _default56082_)
        (if (fx< (&raw-table-free _tab56079_)
                 (fxquotient (vector-length (&raw-table-table _tab56079_)) '4))
            (__raw-table-rehash! _tab56079_)
            '#!void)
        (__symbolic-table-update!
         _tab56079_
         _key56080_
         _symbolic-table-update!56081_
         _default56082_)))
    (define __symbolic-table-update!
      (lambda (_tab56033_
               _key56034_
               _symbolic-table-update!56035_
               _default56036_)
        (let ((_table56039_ (&raw-table-table _tab56033_))
              (_seed56040_ (&raw-table-seed _tab56033_)))
          (let* ((_h56042_ (fxxor (symbolic-hash _key56034_) _seed56040_))
                 (_size56045_ (vector-length _table56039_))
                 (_entries56048_ (fxquotient _size56045_ '2))
                 (_start56051_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56042_ _entries56048_)
                   '1)))
            (let _loop56055_ ((_probe56058_ _start56051_)
                              (_i56060_ '1)
                              (_deleted56062_ '#f))
              (let ((_k56065_ (vector-ref _table56039_ _probe56058_)))
                (if (eq? _k56065_ (macro-unused-obj))
                    (if _deleted56062_
                        (begin
                          (vector-set! _table56039_ _deleted56062_ _key56034_)
                          (vector-set!
                           _table56039_
                           (fx+ _deleted56062_ '1)
                           (_symbolic-table-update!56035_ _default56036_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab56033_
                              (fx+ (&raw-table-count _tab56033_) '1)))))
                        (begin
                          (vector-set! _table56039_ _probe56058_ _key56034_)
                          (vector-set!
                           _table56039_
                           (fx+ _probe56058_ '1)
                           (_symbolic-table-update!56035_ _default56036_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab56033_
                              (fx- (&raw-table-free _tab56033_) '1))
                             (&raw-table-count-set!
                              _tab56033_
                              (fx+ (&raw-table-count _tab56033_) '1))))))
                    (if (eq? _k56065_ (macro-deleted-obj))
                        (_loop56055_
                         (let ((_next-probe56070_
                                (fx+ _start56051_
                                     _i56060_
                                     (fx* _i56060_ _i56060_))))
                           (fxmodulo _next-probe56070_ _size56045_))
                         (fx+ _i56060_ '1)
                         (let ((_$e56073_ _deleted56062_))
                           (if _$e56073_ _$e56073_ _probe56058_)))
                        (if (eq? _key56034_ _k56065_)
                            (begin
                              (vector-set!
                               _table56039_
                               _probe56058_
                               _key56034_)
                              (vector-set!
                               _table56039_
                               (fx+ _probe56058_ '1)
                               (_symbolic-table-update!56035_
                                (vector-ref
                                 _table56039_
                                 (fx+ _probe56058_ '1)))))
                            (_loop56055_
                             (let ((_next-probe56076_
                                    (fx+ _start56051_
                                         _i56060_
                                         (fx* _i56060_ _i56060_))))
                               (fxmodulo _next-probe56076_ _size56045_))
                             (fx+ _i56060_ '1)
                             _deleted56062_))))))))))
    (define symbolic-table-delete!
      (lambda (_tab55992_ _key55994_)
        (let ((_table55997_ (&raw-table-table _tab55992_))
              (_seed55999_ (&raw-table-seed _tab55992_)))
          (let* ((_h56002_ (fxxor (symbolic-hash _key55994_) _seed55999_))
                 (_size56005_ (vector-length _table55997_))
                 (_entries56008_ (fxquotient _size56005_ '2))
                 (_start56011_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56002_ _entries56008_)
                   '1)))
            (let _loop56015_ ((_probe56018_ _start56011_) (_i56020_ '1))
              (let ((_k56023_ (vector-ref _table55997_ _probe56018_)))
                (if (eq? _k56023_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k56023_ (macro-deleted-obj))
                        (_loop56015_
                         (let ((_next-probe56026_
                                (fx+ _start56011_
                                     _i56020_
                                     (fx* _i56020_ _i56020_))))
                           (fxmodulo _next-probe56026_ _size56005_))
                         (fx+ _i56020_ '1))
                        (if (eq? _key55994_ _k56023_)
                            (begin
                              (vector-set!
                               _table55997_
                               _probe56018_
                               (macro-deleted-obj))
                              (vector-set!
                               _table55997_
                               (fx+ _probe56018_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab55992_
                                  (fx- (&raw-table-count _tab55992_) '1)))))
                            (_loop56015_
                             (let ((_next-probe56030_
                                    (fx+ _start56011_
                                         _i56020_
                                         (fx* _i56020_ _i56020_))))
                               (fxmodulo _next-probe56030_ _size56005_))
                             (fx+ _i56020_ '1)))))))))))
    (define make-string-table__%
      (lambda (_size-hint55973_ _seed55975_)
        (make-raw-table__%
         _size-hint55973_
         string-hash
         ##string=?
         _seed55975_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_size-hint55981_ '#f) (_seed55983_ '0))
          (make-string-table__% _size-hint55981_ _seed55983_))))
    (define make-string-table__1
      (lambda (_size-hint55985_)
        (let ((_seed55987_ '0))
          (make-string-table__% _size-hint55985_ _seed55987_))))
    (define make-string-table
      (lambda _g56930_
        (let ((_g56929_ (##length _g56930_)))
          (cond ((##fx= _g56929_ 0)
                 (apply (lambda () (make-string-table__0)) _g56930_))
                ((##fx= _g56929_ 1)
                 (apply (lambda (_size-hint55985_)
                          (make-string-table__1 _size-hint55985_))
                        _g56930_))
                ((##fx= _g56929_ 2)
                 (apply (lambda (_size-hint55989_ _seed55990_)
                          (make-string-table__% _size-hint55989_ _seed55990_))
                        _g56930_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g56930_))))))
    (define string-table-ref
      (lambda (_tab55930_ _key55931_ _default55932_)
        (let ((_table55934_ (&raw-table-table _tab55930_))
              (_seed55935_ (&raw-table-seed _tab55930_)))
          (let* ((_h55937_ (fxxor (##string=?-hash _key55931_) _seed55935_))
                 (_size55940_ (vector-length _table55934_))
                 (_entries55943_ (fxquotient _size55940_ '2))
                 (_start55946_
                  (fxarithmetic-shift-left
                   (fxmodulo _h55937_ _entries55943_)
                   '1)))
            (let _loop55950_ ((_probe55953_ _start55946_)
                              (_i55955_ '1)
                              (_deleted55957_ '#f))
              (let ((_k55960_ (vector-ref _table55934_ _probe55953_)))
                (if (eq? _k55960_ (macro-unused-obj))
                    _default55932_
                    (if (eq? _k55960_ (macro-deleted-obj))
                        (_loop55950_
                         (let ((_next-probe55963_
                                (fx+ _start55946_
                                     _i55955_
                                     (fx* _i55955_ _i55955_))))
                           (fxmodulo _next-probe55963_ _size55940_))
                         (fx+ _i55955_ '1)
                         (let ((_$e55966_ _deleted55957_))
                           (if _$e55966_ _$e55966_ _probe55953_)))
                        (if (##string=? _key55931_ _k55960_)
                            (vector-ref _table55934_ (fx+ _probe55953_ '1))
                            (_loop55950_
                             (let ((_next-probe55969_
                                    (fx+ _start55946_
                                         _i55955_
                                         (fx* _i55955_ _i55955_))))
                               (fxmodulo _next-probe55969_ _size55940_))
                             (fx+ _i55955_ '1)
                             _deleted55957_))))))))))
    (define string-table-set!
      (lambda (_tab55926_ _key55927_ _value55928_)
        (if (fx< (&raw-table-free _tab55926_)
                 (fxquotient (vector-length (&raw-table-table _tab55926_)) '4))
            (__raw-table-rehash! _tab55926_)
            '#!void)
        (__string-table-set! _tab55926_ _key55927_ _value55928_)))
    (define __string-table-set!
      (lambda (_tab55881_ _key55882_ _value55883_)
        (let ((_table55886_ (&raw-table-table _tab55881_))
              (_seed55887_ (&raw-table-seed _tab55881_)))
          (let* ((_h55889_ (fxxor (##string=?-hash _key55882_) _seed55887_))
                 (_size55892_ (vector-length _table55886_))
                 (_entries55895_ (fxquotient _size55892_ '2))
                 (_start55898_
                  (fxarithmetic-shift-left
                   (fxmodulo _h55889_ _entries55895_)
                   '1)))
            (let _loop55902_ ((_probe55905_ _start55898_)
                              (_i55907_ '1)
                              (_deleted55909_ '#f))
              (let ((_k55912_ (vector-ref _table55886_ _probe55905_)))
                (if (eq? _k55912_ (macro-unused-obj))
                    (if _deleted55909_
                        (begin
                          (vector-set! _table55886_ _deleted55909_ _key55882_)
                          (vector-set!
                           _table55886_
                           (fx+ _deleted55909_ '1)
                           _value55883_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab55881_
                              (fx+ (&raw-table-count _tab55881_) '1)))))
                        (begin
                          (vector-set! _table55886_ _probe55905_ _key55882_)
                          (vector-set!
                           _table55886_
                           (fx+ _probe55905_ '1)
                           _value55883_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab55881_
                              (fx- (&raw-table-free _tab55881_) '1))
                             (&raw-table-count-set!
                              _tab55881_
                              (fx+ (&raw-table-count _tab55881_) '1))))))
                    (if (eq? _k55912_ (macro-deleted-obj))
                        (_loop55902_
                         (let ((_next-probe55917_
                                (fx+ _start55898_
                                     _i55907_
                                     (fx* _i55907_ _i55907_))))
                           (fxmodulo _next-probe55917_ _size55892_))
                         (fx+ _i55907_ '1)
                         (let ((_$e55920_ _deleted55909_))
                           (if _$e55920_ _$e55920_ _probe55905_)))
                        (if (##string=? _key55882_ _k55912_)
                            (begin
                              (vector-set!
                               _table55886_
                               _probe55905_
                               _key55882_)
                              (vector-set!
                               _table55886_
                               (fx+ _probe55905_ '1)
                               _value55883_))
                            (_loop55902_
                             (let ((_next-probe55923_
                                    (fx+ _start55898_
                                         _i55907_
                                         (fx* _i55907_ _i55907_))))
                               (fxmodulo _next-probe55923_ _size55892_))
                             (fx+ _i55907_ '1)
                             _deleted55909_))))))))))
    (define string-table-update!
      (lambda (_tab55876_
               _key55877_
               _string-table-update!55878_
               _default55879_)
        (if (fx< (&raw-table-free _tab55876_)
                 (fxquotient (vector-length (&raw-table-table _tab55876_)) '4))
            (__raw-table-rehash! _tab55876_)
            '#!void)
        (__string-table-update!
         _tab55876_
         _key55877_
         _string-table-update!55878_
         _default55879_)))
    (define __string-table-update!
      (lambda (_tab55830_
               _key55831_
               _string-table-update!55832_
               _default55833_)
        (let ((_table55836_ (&raw-table-table _tab55830_))
              (_seed55837_ (&raw-table-seed _tab55830_)))
          (let* ((_h55839_ (fxxor (##string=?-hash _key55831_) _seed55837_))
                 (_size55842_ (vector-length _table55836_))
                 (_entries55845_ (fxquotient _size55842_ '2))
                 (_start55848_
                  (fxarithmetic-shift-left
                   (fxmodulo _h55839_ _entries55845_)
                   '1)))
            (let _loop55852_ ((_probe55855_ _start55848_)
                              (_i55857_ '1)
                              (_deleted55859_ '#f))
              (let ((_k55862_ (vector-ref _table55836_ _probe55855_)))
                (if (eq? _k55862_ (macro-unused-obj))
                    (if _deleted55859_
                        (begin
                          (vector-set! _table55836_ _deleted55859_ _key55831_)
                          (vector-set!
                           _table55836_
                           (fx+ _deleted55859_ '1)
                           (_string-table-update!55832_ _default55833_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab55830_
                              (fx+ (&raw-table-count _tab55830_) '1)))))
                        (begin
                          (vector-set! _table55836_ _probe55855_ _key55831_)
                          (vector-set!
                           _table55836_
                           (fx+ _probe55855_ '1)
                           (_string-table-update!55832_ _default55833_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab55830_
                              (fx- (&raw-table-free _tab55830_) '1))
                             (&raw-table-count-set!
                              _tab55830_
                              (fx+ (&raw-table-count _tab55830_) '1))))))
                    (if (eq? _k55862_ (macro-deleted-obj))
                        (_loop55852_
                         (let ((_next-probe55867_
                                (fx+ _start55848_
                                     _i55857_
                                     (fx* _i55857_ _i55857_))))
                           (fxmodulo _next-probe55867_ _size55842_))
                         (fx+ _i55857_ '1)
                         (let ((_$e55870_ _deleted55859_))
                           (if _$e55870_ _$e55870_ _probe55855_)))
                        (if (##string=? _key55831_ _k55862_)
                            (begin
                              (vector-set!
                               _table55836_
                               _probe55855_
                               _key55831_)
                              (vector-set!
                               _table55836_
                               (fx+ _probe55855_ '1)
                               (_string-table-update!55832_
                                (vector-ref
                                 _table55836_
                                 (fx+ _probe55855_ '1)))))
                            (_loop55852_
                             (let ((_next-probe55873_
                                    (fx+ _start55848_
                                         _i55857_
                                         (fx* _i55857_ _i55857_))))
                               (fxmodulo _next-probe55873_ _size55842_))
                             (fx+ _i55857_ '1)
                             _deleted55859_))))))))))
    (define string-table-delete!
      (lambda (_tab55789_ _key55791_)
        (let ((_table55794_ (&raw-table-table _tab55789_))
              (_seed55796_ (&raw-table-seed _tab55789_)))
          (let* ((_h55799_ (fxxor (##string=?-hash _key55791_) _seed55796_))
                 (_size55802_ (vector-length _table55794_))
                 (_entries55805_ (fxquotient _size55802_ '2))
                 (_start55808_
                  (fxarithmetic-shift-left
                   (fxmodulo _h55799_ _entries55805_)
                   '1)))
            (let _loop55812_ ((_probe55815_ _start55808_) (_i55817_ '1))
              (let ((_k55820_ (vector-ref _table55794_ _probe55815_)))
                (if (eq? _k55820_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k55820_ (macro-deleted-obj))
                        (_loop55812_
                         (let ((_next-probe55823_
                                (fx+ _start55808_
                                     _i55817_
                                     (fx* _i55817_ _i55817_))))
                           (fxmodulo _next-probe55823_ _size55802_))
                         (fx+ _i55817_ '1))
                        (if (##string=? _key55791_ _k55820_)
                            (begin
                              (vector-set!
                               _table55794_
                               _probe55815_
                               (macro-deleted-obj))
                              (vector-set!
                               _table55794_
                               (fx+ _probe55815_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab55789_
                                  (fx- (&raw-table-count _tab55789_) '1)))))
                            (_loop55812_
                             (let ((_next-probe55827_
                                    (fx+ _start55808_
                                         _i55817_
                                         (fx* _i55817_ _i55817_))))
                               (fxmodulo _next-probe55827_ _size55802_))
                             (fx+ _i55817_ '1)))))))))))))
