(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1710064745)
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
      (lambda (_tab56988_)
        (##unchecked-structure-ref _tab56988_ '1 __table::t 'raw-table-table)))
    (define &raw-table-count
      (lambda (_tab56986_)
        (##unchecked-structure-ref _tab56986_ '2 __table::t 'raw-table-count)))
    (define &raw-table-free
      (lambda (_tab56984_)
        (##unchecked-structure-ref _tab56984_ '3 __table::t 'raw-table-free)))
    (define &raw-table-hash
      (lambda (_tab56982_)
        (##unchecked-structure-ref _tab56982_ '4 __table::t 'raw-table-hash)))
    (define &raw-table-test
      (lambda (_tab56980_)
        (##unchecked-structure-ref _tab56980_ '5 __table::t 'raw-table-test)))
    (define &raw-table-seed
      (lambda (_tab56978_)
        (##unchecked-structure-ref _tab56978_ '6 __table::t 'raw-table-seed)))
    (define &raw-table-table-set!
      (lambda (_tab56975_ _val56976_)
        (##unchecked-structure-set!
         _tab56975_
         _val56976_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_tab56972_ _val56973_)
        (##unchecked-structure-set!
         _tab56972_
         _val56973_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_tab56969_ _val56970_)
        (##unchecked-structure-set!
         _tab56969_
         _val56970_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_tab56966_ _val56967_)
        (##unchecked-structure-set!
         _tab56966_
         _val56967_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_tab56963_ _val56964_)
        (##unchecked-structure-set!
         _tab56963_
         _val56964_
         '5
         __table::t
         'raw-table-test-set!)))
    (define &raw-table-seed-set!
      (lambda (_tab56960_ _val56961_)
        (##unchecked-structure-set!
         _tab56960_
         _val56961_
         '6
         __table::t
         'raw-table-seed-set!)))
    (define raw-table-size-hint->size
      (lambda (_size-hint56958_)
        (if (and (fixnum? _size-hint56958_) (fx> _size-hint56958_ '0))
            (fx* (fxmax '2 (expt '2 (integer-length _size-hint56958_))) '4)
            '16)))
    (define make-raw-table__%
      (lambda (_size-hint56934_ _hash56935_ _test56936_ _seed56937_)
        (let* ((_size56939_ (raw-table-size-hint->size _size-hint56934_))
               (_table56941_ (make-vector _size56939_ (macro-unused-obj))))
          (##structure
           __table::t
           _table56941_
           '0
           (fxquotient _size56939_ '2)
           _hash56935_
           _test56936_
           _seed56937_))))
    (define make-raw-table__0
      (lambda (_size-hint56947_ _hash56948_ _test56949_)
        (let ((_seed56951_ '0))
          (make-raw-table__%
           _size-hint56947_
           _hash56948_
           _test56949_
           _seed56951_))))
    (define make-raw-table
      (lambda _g56990_
        (let ((_g56989_ (##length _g56990_)))
          (cond ((##fx= _g56989_ 3)
                 (apply (lambda (_size-hint56947_ _hash56948_ _test56949_)
                          (make-raw-table__0
                           _size-hint56947_
                           _hash56948_
                           _test56949_))
                        _g56990_))
                ((##fx= _g56989_ 4)
                 (apply (lambda (_size-hint56953_
                                 _hash56954_
                                 _test56955_
                                 _seed56956_)
                          (make-raw-table__%
                           _size-hint56953_
                           _hash56954_
                           _test56955_
                           _seed56956_))
                        _g56990_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-raw-table
                  _g56990_))))))
    (define raw-table-ref
      (lambda (_tab56889_ _key56890_ _default56891_)
        (let ((_table56893_ (&raw-table-table _tab56889_))
              (_seed56894_ (&raw-table-seed _tab56889_))
              (_hash56895_ (&raw-table-hash _tab56889_))
              (_test56896_ (&raw-table-test _tab56889_)))
          (let* ((_h56898_ (fxxor (_hash56895_ _key56890_) _seed56894_))
                 (_size56901_ (vector-length _table56893_))
                 (_entries56904_ (fxquotient _size56901_ '2))
                 (_start56907_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56898_ _entries56904_)
                   '1)))
            (let _loop56911_ ((_probe56914_ _start56907_)
                              (_i56916_ '1)
                              (_deleted56918_ '#f))
              (let ((_k56921_ (vector-ref _table56893_ _probe56914_)))
                (if (eq? _k56921_ (macro-unused-obj))
                    _default56891_
                    (if (eq? _k56921_ (macro-deleted-obj))
                        (_loop56911_
                         (let ((_next-probe56924_
                                (fx+ _start56907_
                                     _i56916_
                                     (fx* _i56916_ _i56916_))))
                           (fxmodulo _next-probe56924_ _size56901_))
                         (fx+ _i56916_ '1)
                         (let ((_$e56927_ _deleted56918_))
                           (if _$e56927_ _$e56927_ _probe56914_)))
                        (if (_test56896_ _key56890_ _k56921_)
                            (vector-ref _table56893_ (fx+ _probe56914_ '1))
                            (_loop56911_
                             (let ((_next-probe56930_
                                    (fx+ _start56907_
                                         _i56916_
                                         (fx* _i56916_ _i56916_))))
                               (fxmodulo _next-probe56930_ _size56901_))
                             (fx+ _i56916_ '1)
                             _deleted56918_))))))))))
    (define raw-table-set!
      (lambda (_tab56885_ _key56886_ _value56887_)
        (if (fx< (&raw-table-free _tab56885_)
                 (fxquotient (vector-length (&raw-table-table _tab56885_)) '4))
            (__raw-table-rehash! _tab56885_)
            '#!void)
        (__raw-table-set! _tab56885_ _key56886_ _value56887_)))
    (define raw-table-update!
      (lambda (_tab56880_ _key56881_ _update56882_ _default56883_)
        (if (fx< (&raw-table-free _tab56880_)
                 (fxquotient (vector-length (&raw-table-table _tab56880_)) '4))
            (__raw-table-rehash! _tab56880_)
            '#!void)
        (__raw-table-update!
         _tab56880_
         _key56881_
         _update56882_
         _default56883_)))
    (define raw-table-delete!
      (lambda (_tab56841_ _key56842_)
        (let ((_table56844_ (&raw-table-table _tab56841_))
              (_seed56845_ (&raw-table-seed _tab56841_))
              (_hash56846_ (&raw-table-hash _tab56841_))
              (_test56847_ (&raw-table-test _tab56841_)))
          (let* ((_h56849_ (fxxor (_hash56846_ _key56842_) _seed56845_))
                 (_size56852_ (vector-length _table56844_))
                 (_entries56855_ (fxquotient _size56852_ '2))
                 (_start56858_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56849_ _entries56855_)
                   '1)))
            (let _loop56862_ ((_probe56865_ _start56858_) (_i56867_ '1))
              (let ((_k56870_ (vector-ref _table56844_ _probe56865_)))
                (if (eq? _k56870_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k56870_ (macro-deleted-obj))
                        (_loop56862_
                         (let ((_next-probe56873_
                                (fx+ _start56858_
                                     _i56867_
                                     (fx* _i56867_ _i56867_))))
                           (fxmodulo _next-probe56873_ _size56852_))
                         (fx+ _i56867_ '1))
                        (if (_test56847_ _key56842_ _k56870_)
                            (begin
                              (vector-set!
                               _table56844_
                               _probe56865_
                               (macro-deleted-obj))
                              (vector-set!
                               _table56844_
                               (fx+ _probe56865_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab56841_
                                  (fx- (&raw-table-count _tab56841_) '1)))))
                            (_loop56862_
                             (let ((_next-probe56877_
                                    (fx+ _start56858_
                                         _i56867_
                                         (fx* _i56867_ _i56867_))))
                               (fxmodulo _next-probe56877_ _size56852_))
                             (fx+ _i56867_ '1)))))))))))
    (define raw-table-for-each
      (lambda (_tab56825_ _proc56826_)
        (let* ((_table56828_ (&raw-table-table _tab56825_))
               (_size56830_ (vector-length _table56828_)))
          (let _loop56833_ ((_i56835_ '0))
            (if (fx< _i56835_ _size56830_)
                (begin
                  (let ((_key56837_ (vector-ref _table56828_ _i56835_)))
                    (if (and (not (eq? _key56837_ (macro-unused-obj)))
                             (not (eq? _key56837_ (macro-deleted-obj))))
                        (let ((_value56839_
                               (vector-ref _table56828_ (fx+ _i56835_ '1))))
                          (_proc56826_ _key56837_ _value56839_))
                        '#!void))
                  (_loop56833_ (fx+ _i56835_ '2)))
                '#!void)))))
    (define raw-table-copy
      (lambda (_tab56821_)
        (let ((_new-tab56823_ (##structure-copy _tab56821_)))
          (&raw-table-table-set!
           _new-tab56823_
           (vector-copy (&raw-table-table _tab56821_)))
          _new-tab56823_)))
    (define raw-table-clear!
      (lambda (_tab56819_)
        (vector-fill! (&raw-table-table _tab56819_) (macro-unused-obj))
        (&raw-table-count-set! _tab56819_ '0)
        (&raw-table-free-set!
         _tab56819_
         (fxquotient (vector-length (&raw-table-table _tab56819_)) '2))))
    (define __raw-table-set!
      (lambda (_tab56773_ _key56774_ _value56775_)
        (let ((_table56777_ (&raw-table-table _tab56773_))
              (_seed56778_ (&raw-table-seed _tab56773_))
              (_hash56779_ (&raw-table-hash _tab56773_))
              (_test56780_ (&raw-table-test _tab56773_)))
          (let* ((_h56782_ (fxxor (_hash56779_ _key56774_) _seed56778_))
                 (_size56785_ (vector-length _table56777_))
                 (_entries56788_ (fxquotient _size56785_ '2))
                 (_start56791_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56782_ _entries56788_)
                   '1)))
            (let _loop56795_ ((_probe56798_ _start56791_)
                              (_i56800_ '1)
                              (_deleted56802_ '#f))
              (let ((_k56805_ (vector-ref _table56777_ _probe56798_)))
                (if (eq? _k56805_ (macro-unused-obj))
                    (if _deleted56802_
                        (begin
                          (vector-set! _table56777_ _deleted56802_ _key56774_)
                          (vector-set!
                           _table56777_
                           (fx+ _deleted56802_ '1)
                           _value56775_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab56773_
                              (fx+ (&raw-table-count _tab56773_) '1)))))
                        (begin
                          (vector-set! _table56777_ _probe56798_ _key56774_)
                          (vector-set!
                           _table56777_
                           (fx+ _probe56798_ '1)
                           _value56775_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab56773_
                              (fx- (&raw-table-free _tab56773_) '1))
                             (&raw-table-count-set!
                              _tab56773_
                              (fx+ (&raw-table-count _tab56773_) '1))))))
                    (if (eq? _k56805_ (macro-deleted-obj))
                        (_loop56795_
                         (let ((_next-probe56810_
                                (fx+ _start56791_
                                     _i56800_
                                     (fx* _i56800_ _i56800_))))
                           (fxmodulo _next-probe56810_ _size56785_))
                         (fx+ _i56800_ '1)
                         (let ((_$e56813_ _deleted56802_))
                           (if _$e56813_ _$e56813_ _probe56798_)))
                        (if (_test56780_ _key56774_ _k56805_)
                            (begin
                              (vector-set!
                               _table56777_
                               _probe56798_
                               _key56774_)
                              (vector-set!
                               _table56777_
                               (fx+ _probe56798_ '1)
                               _value56775_))
                            (_loop56795_
                             (let ((_next-probe56816_
                                    (fx+ _start56791_
                                         _i56800_
                                         (fx* _i56800_ _i56800_))))
                               (fxmodulo _next-probe56816_ _size56785_))
                             (fx+ _i56800_ '1)
                             _deleted56802_))))))))))
    (define __raw-table-update!
      (lambda (_tab56726_ _key56727_ _update56728_ _default56729_)
        (let ((_table56731_ (&raw-table-table _tab56726_))
              (_seed56732_ (&raw-table-seed _tab56726_))
              (_hash56733_ (&raw-table-hash _tab56726_))
              (_test56734_ (&raw-table-test _tab56726_)))
          (let* ((_h56736_ (fxxor (_hash56733_ _key56727_) _seed56732_))
                 (_size56739_ (vector-length _table56731_))
                 (_entries56742_ (fxquotient _size56739_ '2))
                 (_start56745_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56736_ _entries56742_)
                   '1)))
            (let _loop56749_ ((_probe56752_ _start56745_)
                              (_i56754_ '1)
                              (_deleted56756_ '#f))
              (let ((_k56759_ (vector-ref _table56731_ _probe56752_)))
                (if (eq? _k56759_ (macro-unused-obj))
                    (if _deleted56756_
                        (begin
                          (vector-set! _table56731_ _deleted56756_ _key56727_)
                          (vector-set!
                           _table56731_
                           (fx+ _deleted56756_ '1)
                           (_update56728_ _default56729_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab56726_
                              (fx+ (&raw-table-count _tab56726_) '1)))))
                        (begin
                          (vector-set! _table56731_ _probe56752_ _key56727_)
                          (vector-set!
                           _table56731_
                           (fx+ _probe56752_ '1)
                           (_update56728_ _default56729_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab56726_
                              (fx- (&raw-table-free _tab56726_) '1))
                             (&raw-table-count-set!
                              _tab56726_
                              (fx+ (&raw-table-count _tab56726_) '1))))))
                    (if (eq? _k56759_ (macro-deleted-obj))
                        (_loop56749_
                         (let ((_next-probe56764_
                                (fx+ _start56745_
                                     _i56754_
                                     (fx* _i56754_ _i56754_))))
                           (fxmodulo _next-probe56764_ _size56739_))
                         (fx+ _i56754_ '1)
                         (let ((_$e56767_ _deleted56756_))
                           (if _$e56767_ _$e56767_ _probe56752_)))
                        (if (_test56734_ _key56727_ _k56759_)
                            (begin
                              (vector-set!
                               _table56731_
                               _probe56752_
                               _key56727_)
                              (vector-set!
                               _table56731_
                               (fx+ _probe56752_ '1)
                               (_update56728_
                                (vector-ref
                                 _table56731_
                                 (fx+ _probe56752_ '1)))))
                            (_loop56749_
                             (let ((_next-probe56770_
                                    (fx+ _start56745_
                                         _i56754_
                                         (fx* _i56754_ _i56754_))))
                               (fxmodulo _next-probe56770_ _size56739_))
                             (fx+ _i56754_ '1)
                             _deleted56756_))))))))))
    (define __raw-table-rehash!
      (lambda (_tab56707_)
        (let* ((_old-table56709_ (&raw-table-table _tab56707_))
               (_old-size56711_ (vector-length _old-table56709_))
               (_new-size56713_
                (if (fx< (&raw-table-count _tab56707_)
                         (fxquotient _old-size56711_ '4))
                    (vector-length _old-table56709_)
                    (fx* '2 (vector-length _old-table56709_))))
               (_new-table56715_
                (make-vector _new-size56713_ (macro-unused-obj))))
          (&raw-table-table-set! _tab56707_ _new-table56715_)
          (&raw-table-count-set! _tab56707_ '0)
          (&raw-table-free-set! _tab56707_ (fxquotient _new-size56713_ '2))
          (let _lp56718_ ((_i56720_ '0))
            (if (fx< _i56720_ _old-size56711_)
                (begin
                  (let ((_key56722_ (vector-ref _old-table56709_ _i56720_)))
                    (if (and (not (eq? _key56722_ (macro-unused-obj)))
                             (not (eq? _key56722_ (macro-deleted-obj))))
                        (let ((_value56724_
                               (vector-ref
                                _old-table56709_
                                (fx+ _i56720_ '1))))
                          (__raw-table-set!
                           _tab56707_
                           _key56722_
                           _value56724_))
                        '#!void))
                  (_lp56718_ (fx+ _i56720_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_obj56703_)
        (let ((_t56705_ (##type _obj56703_)))
          (if (fx= (fxand _t56705_ '1) '0)
              (fxand (##type-cast _obj56703_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (symbolic? _obj56703_)
                  (symbolic-hash _obj56703_)
                  (if (procedure? _obj56703_)
                      (procedure-hash _obj56703_)
                      (fxand (__eq-hash _obj56703_) (macro-max-fixnum32))))))))
    (define procedure-hash
      (lambda (_obj56699_)
        (let ((_h56701_
               (if (##closure? _obj56699_)
                   (__eq-hash _obj56699_)
                   (##type-cast _obj56699_ '0))))
          (fxand _h56701_ (macro-max-fixnum32)))))
    (define __eq-hash
      (lambda (_obj56696_)
        (declare (not interrupts-enabled))
        (__object->eq-hash _obj56696_)))
    (define eqv-hash
      (lambda (_obj56686_)
        (letrec ((_combine56688_
                  (lambda (_a56693_ _b56694_)
                    (fxand (fx* (fx+ _a56693_
                                     (fxarithmetic-shift-left _b56694_ '1))
                                '331804471)
                           (macro-max-fixnum32))))
                 (_hash56689_
                  (lambda (_obj56691_)
                    (macro-number-dispatch
                     _obj56691_
                     (eq-hash _obj56691_)
                     (fxand _obj56691_ (macro-max-fixnum32))
                     (modulo _obj56691_ '331804481)
                     (_combine56688_
                      (_hash56689_ (macro-ratnum-numerator _obj56691_))
                      (_hash56689_ (macro-ratnum-denominator _obj56691_)))
                     (_combine56688_
                      (##u16vector-ref _obj56691_ '0)
                      (_combine56688_
                       (##u16vector-ref _obj56691_ '1)
                       (_combine56688_
                        (##u16vector-ref _obj56691_ '2)
                        (##u16vector-ref _obj56691_ '3))))
                     (_combine56688_
                      (_hash56689_ (macro-cpxnum-real _obj56691_))
                      (_hash56689_ (macro-cpxnum-imag _obj56691_)))))))
          (_hash56689_ _obj56686_))))
    (define symbolic?
      (lambda (_obj56681_)
        (let ((_$e56683_ (symbol? _obj56681_)))
          (if _$e56683_ _$e56683_ (keyword? _obj56681_)))))
    (define symbolic-hash (lambda (_obj56679_) (macro-slot '1 _obj56679_)))
    (define string-hash (lambda (_obj56677_) (##string=?-hash _obj56677_)))
    (define immediate-hash
      (lambda (_obj56675_) (##type-cast _obj56675_ (macro-type-fixnum))))
    (define make-eq-table__%
      (lambda (_size-hint56656_ _seed56658_)
        (make-raw-table__% _size-hint56656_ eq-hash eq? _seed56658_)))
    (define make-eq-table__0
      (lambda ()
        (let* ((_size-hint56664_ '#f) (_seed56666_ '0))
          (make-eq-table__% _size-hint56664_ _seed56666_))))
    (define make-eq-table__1
      (lambda (_size-hint56668_)
        (let ((_seed56670_ '0))
          (make-eq-table__% _size-hint56668_ _seed56670_))))
    (define make-eq-table
      (lambda _g56992_
        (let ((_g56991_ (##length _g56992_)))
          (cond ((##fx= _g56991_ 0)
                 (apply (lambda () (make-eq-table__0)) _g56992_))
                ((##fx= _g56991_ 1)
                 (apply (lambda (_size-hint56668_)
                          (make-eq-table__1 _size-hint56668_))
                        _g56992_))
                ((##fx= _g56991_ 2)
                 (apply (lambda (_size-hint56672_ _seed56673_)
                          (make-eq-table__% _size-hint56672_ _seed56673_))
                        _g56992_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g56992_))))))
    (define eq-table-ref
      (lambda (_tab56613_ _key56614_ _default56615_)
        (let ((_table56617_ (&raw-table-table _tab56613_))
              (_seed56618_ (&raw-table-seed _tab56613_)))
          (let* ((_h56620_ (fxxor (eq-hash _key56614_) _seed56618_))
                 (_size56623_ (vector-length _table56617_))
                 (_entries56626_ (fxquotient _size56623_ '2))
                 (_start56629_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56620_ _entries56626_)
                   '1)))
            (let _loop56633_ ((_probe56636_ _start56629_)
                              (_i56638_ '1)
                              (_deleted56640_ '#f))
              (let ((_k56643_ (vector-ref _table56617_ _probe56636_)))
                (if (eq? _k56643_ (macro-unused-obj))
                    _default56615_
                    (if (eq? _k56643_ (macro-deleted-obj))
                        (_loop56633_
                         (let ((_next-probe56646_
                                (fx+ _start56629_
                                     _i56638_
                                     (fx* _i56638_ _i56638_))))
                           (fxmodulo _next-probe56646_ _size56623_))
                         (fx+ _i56638_ '1)
                         (let ((_$e56649_ _deleted56640_))
                           (if _$e56649_ _$e56649_ _probe56636_)))
                        (if (eq? _key56614_ _k56643_)
                            (vector-ref _table56617_ (fx+ _probe56636_ '1))
                            (_loop56633_
                             (let ((_next-probe56652_
                                    (fx+ _start56629_
                                         _i56638_
                                         (fx* _i56638_ _i56638_))))
                               (fxmodulo _next-probe56652_ _size56623_))
                             (fx+ _i56638_ '1)
                             _deleted56640_))))))))))
    (define eq-table-set!
      (lambda (_tab56609_ _key56610_ _value56611_)
        (if (fx< (&raw-table-free _tab56609_)
                 (fxquotient (vector-length (&raw-table-table _tab56609_)) '4))
            (__raw-table-rehash! _tab56609_)
            '#!void)
        (__eq-table-set! _tab56609_ _key56610_ _value56611_)))
    (define __eq-table-set!
      (lambda (_tab56564_ _key56565_ _value56566_)
        (let ((_table56569_ (&raw-table-table _tab56564_))
              (_seed56570_ (&raw-table-seed _tab56564_)))
          (let* ((_h56572_ (fxxor (eq-hash _key56565_) _seed56570_))
                 (_size56575_ (vector-length _table56569_))
                 (_entries56578_ (fxquotient _size56575_ '2))
                 (_start56581_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56572_ _entries56578_)
                   '1)))
            (let _loop56585_ ((_probe56588_ _start56581_)
                              (_i56590_ '1)
                              (_deleted56592_ '#f))
              (let ((_k56595_ (vector-ref _table56569_ _probe56588_)))
                (if (eq? _k56595_ (macro-unused-obj))
                    (if _deleted56592_
                        (begin
                          (vector-set! _table56569_ _deleted56592_ _key56565_)
                          (vector-set!
                           _table56569_
                           (fx+ _deleted56592_ '1)
                           _value56566_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab56564_
                              (fx+ (&raw-table-count _tab56564_) '1)))))
                        (begin
                          (vector-set! _table56569_ _probe56588_ _key56565_)
                          (vector-set!
                           _table56569_
                           (fx+ _probe56588_ '1)
                           _value56566_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab56564_
                              (fx- (&raw-table-free _tab56564_) '1))
                             (&raw-table-count-set!
                              _tab56564_
                              (fx+ (&raw-table-count _tab56564_) '1))))))
                    (if (eq? _k56595_ (macro-deleted-obj))
                        (_loop56585_
                         (let ((_next-probe56600_
                                (fx+ _start56581_
                                     _i56590_
                                     (fx* _i56590_ _i56590_))))
                           (fxmodulo _next-probe56600_ _size56575_))
                         (fx+ _i56590_ '1)
                         (let ((_$e56603_ _deleted56592_))
                           (if _$e56603_ _$e56603_ _probe56588_)))
                        (if (eq? _key56565_ _k56595_)
                            (begin
                              (vector-set!
                               _table56569_
                               _probe56588_
                               _key56565_)
                              (vector-set!
                               _table56569_
                               (fx+ _probe56588_ '1)
                               _value56566_))
                            (_loop56585_
                             (let ((_next-probe56606_
                                    (fx+ _start56581_
                                         _i56590_
                                         (fx* _i56590_ _i56590_))))
                               (fxmodulo _next-probe56606_ _size56575_))
                             (fx+ _i56590_ '1)
                             _deleted56592_))))))))))
    (define eq-table-update!
      (lambda (_tab56559_ _key56560_ _eq-table-update!56561_ _default56562_)
        (if (fx< (&raw-table-free _tab56559_)
                 (fxquotient (vector-length (&raw-table-table _tab56559_)) '4))
            (__raw-table-rehash! _tab56559_)
            '#!void)
        (__eq-table-update!
         _tab56559_
         _key56560_
         _eq-table-update!56561_
         _default56562_)))
    (define __eq-table-update!
      (lambda (_tab56513_ _key56514_ _eq-table-update!56515_ _default56516_)
        (let ((_table56519_ (&raw-table-table _tab56513_))
              (_seed56520_ (&raw-table-seed _tab56513_)))
          (let* ((_h56522_ (fxxor (eq-hash _key56514_) _seed56520_))
                 (_size56525_ (vector-length _table56519_))
                 (_entries56528_ (fxquotient _size56525_ '2))
                 (_start56531_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56522_ _entries56528_)
                   '1)))
            (let _loop56535_ ((_probe56538_ _start56531_)
                              (_i56540_ '1)
                              (_deleted56542_ '#f))
              (let ((_k56545_ (vector-ref _table56519_ _probe56538_)))
                (if (eq? _k56545_ (macro-unused-obj))
                    (if _deleted56542_
                        (begin
                          (vector-set! _table56519_ _deleted56542_ _key56514_)
                          (vector-set!
                           _table56519_
                           (fx+ _deleted56542_ '1)
                           (_eq-table-update!56515_ _default56516_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab56513_
                              (fx+ (&raw-table-count _tab56513_) '1)))))
                        (begin
                          (vector-set! _table56519_ _probe56538_ _key56514_)
                          (vector-set!
                           _table56519_
                           (fx+ _probe56538_ '1)
                           (_eq-table-update!56515_ _default56516_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab56513_
                              (fx- (&raw-table-free _tab56513_) '1))
                             (&raw-table-count-set!
                              _tab56513_
                              (fx+ (&raw-table-count _tab56513_) '1))))))
                    (if (eq? _k56545_ (macro-deleted-obj))
                        (_loop56535_
                         (let ((_next-probe56550_
                                (fx+ _start56531_
                                     _i56540_
                                     (fx* _i56540_ _i56540_))))
                           (fxmodulo _next-probe56550_ _size56525_))
                         (fx+ _i56540_ '1)
                         (let ((_$e56553_ _deleted56542_))
                           (if _$e56553_ _$e56553_ _probe56538_)))
                        (if (eq? _key56514_ _k56545_)
                            (begin
                              (vector-set!
                               _table56519_
                               _probe56538_
                               _key56514_)
                              (vector-set!
                               _table56519_
                               (fx+ _probe56538_ '1)
                               (_eq-table-update!56515_
                                (vector-ref
                                 _table56519_
                                 (fx+ _probe56538_ '1)))))
                            (_loop56535_
                             (let ((_next-probe56556_
                                    (fx+ _start56531_
                                         _i56540_
                                         (fx* _i56540_ _i56540_))))
                               (fxmodulo _next-probe56556_ _size56525_))
                             (fx+ _i56540_ '1)
                             _deleted56542_))))))))))
    (define eq-table-delete!
      (lambda (_tab56472_ _key56474_)
        (let ((_table56477_ (&raw-table-table _tab56472_))
              (_seed56479_ (&raw-table-seed _tab56472_)))
          (let* ((_h56482_ (fxxor (eq-hash _key56474_) _seed56479_))
                 (_size56485_ (vector-length _table56477_))
                 (_entries56488_ (fxquotient _size56485_ '2))
                 (_start56491_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56482_ _entries56488_)
                   '1)))
            (let _loop56495_ ((_probe56498_ _start56491_) (_i56500_ '1))
              (let ((_k56503_ (vector-ref _table56477_ _probe56498_)))
                (if (eq? _k56503_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k56503_ (macro-deleted-obj))
                        (_loop56495_
                         (let ((_next-probe56506_
                                (fx+ _start56491_
                                     _i56500_
                                     (fx* _i56500_ _i56500_))))
                           (fxmodulo _next-probe56506_ _size56485_))
                         (fx+ _i56500_ '1))
                        (if (eq? _key56474_ _k56503_)
                            (begin
                              (vector-set!
                               _table56477_
                               _probe56498_
                               (macro-deleted-obj))
                              (vector-set!
                               _table56477_
                               (fx+ _probe56498_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab56472_
                                  (fx- (&raw-table-count _tab56472_) '1)))))
                            (_loop56495_
                             (let ((_next-probe56510_
                                    (fx+ _start56491_
                                         _i56500_
                                         (fx* _i56500_ _i56500_))))
                               (fxmodulo _next-probe56510_ _size56485_))
                             (fx+ _i56500_ '1)))))))))))
    (define make-eqv-table__%
      (lambda (_size-hint56453_ _seed56455_)
        (make-raw-table__% _size-hint56453_ eqv-hash eqv? _seed56455_)))
    (define make-eqv-table__0
      (lambda ()
        (let* ((_size-hint56461_ '#f) (_seed56463_ '0))
          (make-eqv-table__% _size-hint56461_ _seed56463_))))
    (define make-eqv-table__1
      (lambda (_size-hint56465_)
        (let ((_seed56467_ '0))
          (make-eqv-table__% _size-hint56465_ _seed56467_))))
    (define make-eqv-table
      (lambda _g56994_
        (let ((_g56993_ (##length _g56994_)))
          (cond ((##fx= _g56993_ 0)
                 (apply (lambda () (make-eqv-table__0)) _g56994_))
                ((##fx= _g56993_ 1)
                 (apply (lambda (_size-hint56465_)
                          (make-eqv-table__1 _size-hint56465_))
                        _g56994_))
                ((##fx= _g56993_ 2)
                 (apply (lambda (_size-hint56469_ _seed56470_)
                          (make-eqv-table__% _size-hint56469_ _seed56470_))
                        _g56994_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eqv-table
                  _g56994_))))))
    (define eqv-table-ref
      (lambda (_tab56410_ _key56411_ _default56412_)
        (let ((_table56414_ (&raw-table-table _tab56410_))
              (_seed56415_ (&raw-table-seed _tab56410_)))
          (let* ((_h56417_ (fxxor (eqv-hash _key56411_) _seed56415_))
                 (_size56420_ (vector-length _table56414_))
                 (_entries56423_ (fxquotient _size56420_ '2))
                 (_start56426_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56417_ _entries56423_)
                   '1)))
            (let _loop56430_ ((_probe56433_ _start56426_)
                              (_i56435_ '1)
                              (_deleted56437_ '#f))
              (let ((_k56440_ (vector-ref _table56414_ _probe56433_)))
                (if (eq? _k56440_ (macro-unused-obj))
                    _default56412_
                    (if (eq? _k56440_ (macro-deleted-obj))
                        (_loop56430_
                         (let ((_next-probe56443_
                                (fx+ _start56426_
                                     _i56435_
                                     (fx* _i56435_ _i56435_))))
                           (fxmodulo _next-probe56443_ _size56420_))
                         (fx+ _i56435_ '1)
                         (let ((_$e56446_ _deleted56437_))
                           (if _$e56446_ _$e56446_ _probe56433_)))
                        (if (eqv? _key56411_ _k56440_)
                            (vector-ref _table56414_ (fx+ _probe56433_ '1))
                            (_loop56430_
                             (let ((_next-probe56449_
                                    (fx+ _start56426_
                                         _i56435_
                                         (fx* _i56435_ _i56435_))))
                               (fxmodulo _next-probe56449_ _size56420_))
                             (fx+ _i56435_ '1)
                             _deleted56437_))))))))))
    (define eqv-table-set!
      (lambda (_tab56406_ _key56407_ _value56408_)
        (if (fx< (&raw-table-free _tab56406_)
                 (fxquotient (vector-length (&raw-table-table _tab56406_)) '4))
            (__raw-table-rehash! _tab56406_)
            '#!void)
        (__eqv-table-set! _tab56406_ _key56407_ _value56408_)))
    (define __eqv-table-set!
      (lambda (_tab56361_ _key56362_ _value56363_)
        (let ((_table56366_ (&raw-table-table _tab56361_))
              (_seed56367_ (&raw-table-seed _tab56361_)))
          (let* ((_h56369_ (fxxor (eqv-hash _key56362_) _seed56367_))
                 (_size56372_ (vector-length _table56366_))
                 (_entries56375_ (fxquotient _size56372_ '2))
                 (_start56378_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56369_ _entries56375_)
                   '1)))
            (let _loop56382_ ((_probe56385_ _start56378_)
                              (_i56387_ '1)
                              (_deleted56389_ '#f))
              (let ((_k56392_ (vector-ref _table56366_ _probe56385_)))
                (if (eq? _k56392_ (macro-unused-obj))
                    (if _deleted56389_
                        (begin
                          (vector-set! _table56366_ _deleted56389_ _key56362_)
                          (vector-set!
                           _table56366_
                           (fx+ _deleted56389_ '1)
                           _value56363_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab56361_
                              (fx+ (&raw-table-count _tab56361_) '1)))))
                        (begin
                          (vector-set! _table56366_ _probe56385_ _key56362_)
                          (vector-set!
                           _table56366_
                           (fx+ _probe56385_ '1)
                           _value56363_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab56361_
                              (fx- (&raw-table-free _tab56361_) '1))
                             (&raw-table-count-set!
                              _tab56361_
                              (fx+ (&raw-table-count _tab56361_) '1))))))
                    (if (eq? _k56392_ (macro-deleted-obj))
                        (_loop56382_
                         (let ((_next-probe56397_
                                (fx+ _start56378_
                                     _i56387_
                                     (fx* _i56387_ _i56387_))))
                           (fxmodulo _next-probe56397_ _size56372_))
                         (fx+ _i56387_ '1)
                         (let ((_$e56400_ _deleted56389_))
                           (if _$e56400_ _$e56400_ _probe56385_)))
                        (if (eqv? _key56362_ _k56392_)
                            (begin
                              (vector-set!
                               _table56366_
                               _probe56385_
                               _key56362_)
                              (vector-set!
                               _table56366_
                               (fx+ _probe56385_ '1)
                               _value56363_))
                            (_loop56382_
                             (let ((_next-probe56403_
                                    (fx+ _start56378_
                                         _i56387_
                                         (fx* _i56387_ _i56387_))))
                               (fxmodulo _next-probe56403_ _size56372_))
                             (fx+ _i56387_ '1)
                             _deleted56389_))))))))))
    (define eqv-table-update!
      (lambda (_tab56356_ _key56357_ _eqv-table-update!56358_ _default56359_)
        (if (fx< (&raw-table-free _tab56356_)
                 (fxquotient (vector-length (&raw-table-table _tab56356_)) '4))
            (__raw-table-rehash! _tab56356_)
            '#!void)
        (__eqv-table-update!
         _tab56356_
         _key56357_
         _eqv-table-update!56358_
         _default56359_)))
    (define __eqv-table-update!
      (lambda (_tab56310_ _key56311_ _eqv-table-update!56312_ _default56313_)
        (let ((_table56316_ (&raw-table-table _tab56310_))
              (_seed56317_ (&raw-table-seed _tab56310_)))
          (let* ((_h56319_ (fxxor (eqv-hash _key56311_) _seed56317_))
                 (_size56322_ (vector-length _table56316_))
                 (_entries56325_ (fxquotient _size56322_ '2))
                 (_start56328_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56319_ _entries56325_)
                   '1)))
            (let _loop56332_ ((_probe56335_ _start56328_)
                              (_i56337_ '1)
                              (_deleted56339_ '#f))
              (let ((_k56342_ (vector-ref _table56316_ _probe56335_)))
                (if (eq? _k56342_ (macro-unused-obj))
                    (if _deleted56339_
                        (begin
                          (vector-set! _table56316_ _deleted56339_ _key56311_)
                          (vector-set!
                           _table56316_
                           (fx+ _deleted56339_ '1)
                           (_eqv-table-update!56312_ _default56313_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab56310_
                              (fx+ (&raw-table-count _tab56310_) '1)))))
                        (begin
                          (vector-set! _table56316_ _probe56335_ _key56311_)
                          (vector-set!
                           _table56316_
                           (fx+ _probe56335_ '1)
                           (_eqv-table-update!56312_ _default56313_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab56310_
                              (fx- (&raw-table-free _tab56310_) '1))
                             (&raw-table-count-set!
                              _tab56310_
                              (fx+ (&raw-table-count _tab56310_) '1))))))
                    (if (eq? _k56342_ (macro-deleted-obj))
                        (_loop56332_
                         (let ((_next-probe56347_
                                (fx+ _start56328_
                                     _i56337_
                                     (fx* _i56337_ _i56337_))))
                           (fxmodulo _next-probe56347_ _size56322_))
                         (fx+ _i56337_ '1)
                         (let ((_$e56350_ _deleted56339_))
                           (if _$e56350_ _$e56350_ _probe56335_)))
                        (if (eqv? _key56311_ _k56342_)
                            (begin
                              (vector-set!
                               _table56316_
                               _probe56335_
                               _key56311_)
                              (vector-set!
                               _table56316_
                               (fx+ _probe56335_ '1)
                               (_eqv-table-update!56312_
                                (vector-ref
                                 _table56316_
                                 (fx+ _probe56335_ '1)))))
                            (_loop56332_
                             (let ((_next-probe56353_
                                    (fx+ _start56328_
                                         _i56337_
                                         (fx* _i56337_ _i56337_))))
                               (fxmodulo _next-probe56353_ _size56322_))
                             (fx+ _i56337_ '1)
                             _deleted56339_))))))))))
    (define eqv-table-delete!
      (lambda (_tab56269_ _key56271_)
        (let ((_table56274_ (&raw-table-table _tab56269_))
              (_seed56276_ (&raw-table-seed _tab56269_)))
          (let* ((_h56279_ (fxxor (eqv-hash _key56271_) _seed56276_))
                 (_size56282_ (vector-length _table56274_))
                 (_entries56285_ (fxquotient _size56282_ '2))
                 (_start56288_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56279_ _entries56285_)
                   '1)))
            (let _loop56292_ ((_probe56295_ _start56288_) (_i56297_ '1))
              (let ((_k56300_ (vector-ref _table56274_ _probe56295_)))
                (if (eq? _k56300_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k56300_ (macro-deleted-obj))
                        (_loop56292_
                         (let ((_next-probe56303_
                                (fx+ _start56288_
                                     _i56297_
                                     (fx* _i56297_ _i56297_))))
                           (fxmodulo _next-probe56303_ _size56282_))
                         (fx+ _i56297_ '1))
                        (if (eqv? _key56271_ _k56300_)
                            (begin
                              (vector-set!
                               _table56274_
                               _probe56295_
                               (macro-deleted-obj))
                              (vector-set!
                               _table56274_
                               (fx+ _probe56295_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab56269_
                                  (fx- (&raw-table-count _tab56269_) '1)))))
                            (_loop56292_
                             (let ((_next-probe56307_
                                    (fx+ _start56288_
                                         _i56297_
                                         (fx* _i56297_ _i56297_))))
                               (fxmodulo _next-probe56307_ _size56282_))
                             (fx+ _i56297_ '1)))))))))))
    (define make-symbolic-table__%
      (lambda (_size-hint56250_ _seed56252_)
        (make-raw-table__% _size-hint56250_ symbolic-hash eq? _seed56252_)))
    (define make-symbolic-table__0
      (lambda ()
        (let* ((_size-hint56258_ '#f) (_seed56260_ '0))
          (make-symbolic-table__% _size-hint56258_ _seed56260_))))
    (define make-symbolic-table__1
      (lambda (_size-hint56262_)
        (let ((_seed56264_ '0))
          (make-symbolic-table__% _size-hint56262_ _seed56264_))))
    (define make-symbolic-table
      (lambda _g56996_
        (let ((_g56995_ (##length _g56996_)))
          (cond ((##fx= _g56995_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g56996_))
                ((##fx= _g56995_ 1)
                 (apply (lambda (_size-hint56262_)
                          (make-symbolic-table__1 _size-hint56262_))
                        _g56996_))
                ((##fx= _g56995_ 2)
                 (apply (lambda (_size-hint56266_ _seed56267_)
                          (make-symbolic-table__%
                           _size-hint56266_
                           _seed56267_))
                        _g56996_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g56996_))))))
    (define symbolic-table-ref
      (lambda (_tab56207_ _key56208_ _default56209_)
        (let ((_table56211_ (&raw-table-table _tab56207_))
              (_seed56212_ (&raw-table-seed _tab56207_)))
          (let* ((_h56214_ (fxxor (symbolic-hash _key56208_) _seed56212_))
                 (_size56217_ (vector-length _table56211_))
                 (_entries56220_ (fxquotient _size56217_ '2))
                 (_start56223_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56214_ _entries56220_)
                   '1)))
            (let _loop56227_ ((_probe56230_ _start56223_)
                              (_i56232_ '1)
                              (_deleted56234_ '#f))
              (let ((_k56237_ (vector-ref _table56211_ _probe56230_)))
                (if (eq? _k56237_ (macro-unused-obj))
                    _default56209_
                    (if (eq? _k56237_ (macro-deleted-obj))
                        (_loop56227_
                         (let ((_next-probe56240_
                                (fx+ _start56223_
                                     _i56232_
                                     (fx* _i56232_ _i56232_))))
                           (fxmodulo _next-probe56240_ _size56217_))
                         (fx+ _i56232_ '1)
                         (let ((_$e56243_ _deleted56234_))
                           (if _$e56243_ _$e56243_ _probe56230_)))
                        (if (eq? _key56208_ _k56237_)
                            (vector-ref _table56211_ (fx+ _probe56230_ '1))
                            (_loop56227_
                             (let ((_next-probe56246_
                                    (fx+ _start56223_
                                         _i56232_
                                         (fx* _i56232_ _i56232_))))
                               (fxmodulo _next-probe56246_ _size56217_))
                             (fx+ _i56232_ '1)
                             _deleted56234_))))))))))
    (define symbolic-table-set!
      (lambda (_tab56203_ _key56204_ _value56205_)
        (if (fx< (&raw-table-free _tab56203_)
                 (fxquotient (vector-length (&raw-table-table _tab56203_)) '4))
            (__raw-table-rehash! _tab56203_)
            '#!void)
        (__symbolic-table-set! _tab56203_ _key56204_ _value56205_)))
    (define __symbolic-table-set!
      (lambda (_tab56158_ _key56159_ _value56160_)
        (let ((_table56163_ (&raw-table-table _tab56158_))
              (_seed56164_ (&raw-table-seed _tab56158_)))
          (let* ((_h56166_ (fxxor (symbolic-hash _key56159_) _seed56164_))
                 (_size56169_ (vector-length _table56163_))
                 (_entries56172_ (fxquotient _size56169_ '2))
                 (_start56175_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56166_ _entries56172_)
                   '1)))
            (let _loop56179_ ((_probe56182_ _start56175_)
                              (_i56184_ '1)
                              (_deleted56186_ '#f))
              (let ((_k56189_ (vector-ref _table56163_ _probe56182_)))
                (if (eq? _k56189_ (macro-unused-obj))
                    (if _deleted56186_
                        (begin
                          (vector-set! _table56163_ _deleted56186_ _key56159_)
                          (vector-set!
                           _table56163_
                           (fx+ _deleted56186_ '1)
                           _value56160_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab56158_
                              (fx+ (&raw-table-count _tab56158_) '1)))))
                        (begin
                          (vector-set! _table56163_ _probe56182_ _key56159_)
                          (vector-set!
                           _table56163_
                           (fx+ _probe56182_ '1)
                           _value56160_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab56158_
                              (fx- (&raw-table-free _tab56158_) '1))
                             (&raw-table-count-set!
                              _tab56158_
                              (fx+ (&raw-table-count _tab56158_) '1))))))
                    (if (eq? _k56189_ (macro-deleted-obj))
                        (_loop56179_
                         (let ((_next-probe56194_
                                (fx+ _start56175_
                                     _i56184_
                                     (fx* _i56184_ _i56184_))))
                           (fxmodulo _next-probe56194_ _size56169_))
                         (fx+ _i56184_ '1)
                         (let ((_$e56197_ _deleted56186_))
                           (if _$e56197_ _$e56197_ _probe56182_)))
                        (if (eq? _key56159_ _k56189_)
                            (begin
                              (vector-set!
                               _table56163_
                               _probe56182_
                               _key56159_)
                              (vector-set!
                               _table56163_
                               (fx+ _probe56182_ '1)
                               _value56160_))
                            (_loop56179_
                             (let ((_next-probe56200_
                                    (fx+ _start56175_
                                         _i56184_
                                         (fx* _i56184_ _i56184_))))
                               (fxmodulo _next-probe56200_ _size56169_))
                             (fx+ _i56184_ '1)
                             _deleted56186_))))))))))
    (define symbolic-table-update!
      (lambda (_tab56153_
               _key56154_
               _symbolic-table-update!56155_
               _default56156_)
        (if (fx< (&raw-table-free _tab56153_)
                 (fxquotient (vector-length (&raw-table-table _tab56153_)) '4))
            (__raw-table-rehash! _tab56153_)
            '#!void)
        (__symbolic-table-update!
         _tab56153_
         _key56154_
         _symbolic-table-update!56155_
         _default56156_)))
    (define __symbolic-table-update!
      (lambda (_tab56107_
               _key56108_
               _symbolic-table-update!56109_
               _default56110_)
        (let ((_table56113_ (&raw-table-table _tab56107_))
              (_seed56114_ (&raw-table-seed _tab56107_)))
          (let* ((_h56116_ (fxxor (symbolic-hash _key56108_) _seed56114_))
                 (_size56119_ (vector-length _table56113_))
                 (_entries56122_ (fxquotient _size56119_ '2))
                 (_start56125_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56116_ _entries56122_)
                   '1)))
            (let _loop56129_ ((_probe56132_ _start56125_)
                              (_i56134_ '1)
                              (_deleted56136_ '#f))
              (let ((_k56139_ (vector-ref _table56113_ _probe56132_)))
                (if (eq? _k56139_ (macro-unused-obj))
                    (if _deleted56136_
                        (begin
                          (vector-set! _table56113_ _deleted56136_ _key56108_)
                          (vector-set!
                           _table56113_
                           (fx+ _deleted56136_ '1)
                           (_symbolic-table-update!56109_ _default56110_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab56107_
                              (fx+ (&raw-table-count _tab56107_) '1)))))
                        (begin
                          (vector-set! _table56113_ _probe56132_ _key56108_)
                          (vector-set!
                           _table56113_
                           (fx+ _probe56132_ '1)
                           (_symbolic-table-update!56109_ _default56110_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab56107_
                              (fx- (&raw-table-free _tab56107_) '1))
                             (&raw-table-count-set!
                              _tab56107_
                              (fx+ (&raw-table-count _tab56107_) '1))))))
                    (if (eq? _k56139_ (macro-deleted-obj))
                        (_loop56129_
                         (let ((_next-probe56144_
                                (fx+ _start56125_
                                     _i56134_
                                     (fx* _i56134_ _i56134_))))
                           (fxmodulo _next-probe56144_ _size56119_))
                         (fx+ _i56134_ '1)
                         (let ((_$e56147_ _deleted56136_))
                           (if _$e56147_ _$e56147_ _probe56132_)))
                        (if (eq? _key56108_ _k56139_)
                            (begin
                              (vector-set!
                               _table56113_
                               _probe56132_
                               _key56108_)
                              (vector-set!
                               _table56113_
                               (fx+ _probe56132_ '1)
                               (_symbolic-table-update!56109_
                                (vector-ref
                                 _table56113_
                                 (fx+ _probe56132_ '1)))))
                            (_loop56129_
                             (let ((_next-probe56150_
                                    (fx+ _start56125_
                                         _i56134_
                                         (fx* _i56134_ _i56134_))))
                               (fxmodulo _next-probe56150_ _size56119_))
                             (fx+ _i56134_ '1)
                             _deleted56136_))))))))))
    (define symbolic-table-delete!
      (lambda (_tab56066_ _key56068_)
        (let ((_table56071_ (&raw-table-table _tab56066_))
              (_seed56073_ (&raw-table-seed _tab56066_)))
          (let* ((_h56076_ (fxxor (symbolic-hash _key56068_) _seed56073_))
                 (_size56079_ (vector-length _table56071_))
                 (_entries56082_ (fxquotient _size56079_ '2))
                 (_start56085_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56076_ _entries56082_)
                   '1)))
            (let _loop56089_ ((_probe56092_ _start56085_) (_i56094_ '1))
              (let ((_k56097_ (vector-ref _table56071_ _probe56092_)))
                (if (eq? _k56097_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k56097_ (macro-deleted-obj))
                        (_loop56089_
                         (let ((_next-probe56100_
                                (fx+ _start56085_
                                     _i56094_
                                     (fx* _i56094_ _i56094_))))
                           (fxmodulo _next-probe56100_ _size56079_))
                         (fx+ _i56094_ '1))
                        (if (eq? _key56068_ _k56097_)
                            (begin
                              (vector-set!
                               _table56071_
                               _probe56092_
                               (macro-deleted-obj))
                              (vector-set!
                               _table56071_
                               (fx+ _probe56092_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab56066_
                                  (fx- (&raw-table-count _tab56066_) '1)))))
                            (_loop56089_
                             (let ((_next-probe56104_
                                    (fx+ _start56085_
                                         _i56094_
                                         (fx* _i56094_ _i56094_))))
                               (fxmodulo _next-probe56104_ _size56079_))
                             (fx+ _i56094_ '1)))))))))))
    (define make-string-table__%
      (lambda (_size-hint56047_ _seed56049_)
        (make-raw-table__%
         _size-hint56047_
         string-hash
         ##string=?
         _seed56049_)))
    (define make-string-table__0
      (lambda ()
        (let* ((_size-hint56055_ '#f) (_seed56057_ '0))
          (make-string-table__% _size-hint56055_ _seed56057_))))
    (define make-string-table__1
      (lambda (_size-hint56059_)
        (let ((_seed56061_ '0))
          (make-string-table__% _size-hint56059_ _seed56061_))))
    (define make-string-table
      (lambda _g56998_
        (let ((_g56997_ (##length _g56998_)))
          (cond ((##fx= _g56997_ 0)
                 (apply (lambda () (make-string-table__0)) _g56998_))
                ((##fx= _g56997_ 1)
                 (apply (lambda (_size-hint56059_)
                          (make-string-table__1 _size-hint56059_))
                        _g56998_))
                ((##fx= _g56997_ 2)
                 (apply (lambda (_size-hint56063_ _seed56064_)
                          (make-string-table__% _size-hint56063_ _seed56064_))
                        _g56998_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g56998_))))))
    (define string-table-ref
      (lambda (_tab56004_ _key56005_ _default56006_)
        (let ((_table56008_ (&raw-table-table _tab56004_))
              (_seed56009_ (&raw-table-seed _tab56004_)))
          (let* ((_h56011_ (fxxor (##string=?-hash _key56005_) _seed56009_))
                 (_size56014_ (vector-length _table56008_))
                 (_entries56017_ (fxquotient _size56014_ '2))
                 (_start56020_
                  (fxarithmetic-shift-left
                   (fxmodulo _h56011_ _entries56017_)
                   '1)))
            (let _loop56024_ ((_probe56027_ _start56020_)
                              (_i56029_ '1)
                              (_deleted56031_ '#f))
              (let ((_k56034_ (vector-ref _table56008_ _probe56027_)))
                (if (eq? _k56034_ (macro-unused-obj))
                    _default56006_
                    (if (eq? _k56034_ (macro-deleted-obj))
                        (_loop56024_
                         (let ((_next-probe56037_
                                (fx+ _start56020_
                                     _i56029_
                                     (fx* _i56029_ _i56029_))))
                           (fxmodulo _next-probe56037_ _size56014_))
                         (fx+ _i56029_ '1)
                         (let ((_$e56040_ _deleted56031_))
                           (if _$e56040_ _$e56040_ _probe56027_)))
                        (if (##string=? _key56005_ _k56034_)
                            (vector-ref _table56008_ (fx+ _probe56027_ '1))
                            (_loop56024_
                             (let ((_next-probe56043_
                                    (fx+ _start56020_
                                         _i56029_
                                         (fx* _i56029_ _i56029_))))
                               (fxmodulo _next-probe56043_ _size56014_))
                             (fx+ _i56029_ '1)
                             _deleted56031_))))))))))
    (define string-table-set!
      (lambda (_tab56000_ _key56001_ _value56002_)
        (if (fx< (&raw-table-free _tab56000_)
                 (fxquotient (vector-length (&raw-table-table _tab56000_)) '4))
            (__raw-table-rehash! _tab56000_)
            '#!void)
        (__string-table-set! _tab56000_ _key56001_ _value56002_)))
    (define __string-table-set!
      (lambda (_tab55955_ _key55956_ _value55957_)
        (let ((_table55960_ (&raw-table-table _tab55955_))
              (_seed55961_ (&raw-table-seed _tab55955_)))
          (let* ((_h55963_ (fxxor (##string=?-hash _key55956_) _seed55961_))
                 (_size55966_ (vector-length _table55960_))
                 (_entries55969_ (fxquotient _size55966_ '2))
                 (_start55972_
                  (fxarithmetic-shift-left
                   (fxmodulo _h55963_ _entries55969_)
                   '1)))
            (let _loop55976_ ((_probe55979_ _start55972_)
                              (_i55981_ '1)
                              (_deleted55983_ '#f))
              (let ((_k55986_ (vector-ref _table55960_ _probe55979_)))
                (if (eq? _k55986_ (macro-unused-obj))
                    (if _deleted55983_
                        (begin
                          (vector-set! _table55960_ _deleted55983_ _key55956_)
                          (vector-set!
                           _table55960_
                           (fx+ _deleted55983_ '1)
                           _value55957_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab55955_
                              (fx+ (&raw-table-count _tab55955_) '1)))))
                        (begin
                          (vector-set! _table55960_ _probe55979_ _key55956_)
                          (vector-set!
                           _table55960_
                           (fx+ _probe55979_ '1)
                           _value55957_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab55955_
                              (fx- (&raw-table-free _tab55955_) '1))
                             (&raw-table-count-set!
                              _tab55955_
                              (fx+ (&raw-table-count _tab55955_) '1))))))
                    (if (eq? _k55986_ (macro-deleted-obj))
                        (_loop55976_
                         (let ((_next-probe55991_
                                (fx+ _start55972_
                                     _i55981_
                                     (fx* _i55981_ _i55981_))))
                           (fxmodulo _next-probe55991_ _size55966_))
                         (fx+ _i55981_ '1)
                         (let ((_$e55994_ _deleted55983_))
                           (if _$e55994_ _$e55994_ _probe55979_)))
                        (if (##string=? _key55956_ _k55986_)
                            (begin
                              (vector-set!
                               _table55960_
                               _probe55979_
                               _key55956_)
                              (vector-set!
                               _table55960_
                               (fx+ _probe55979_ '1)
                               _value55957_))
                            (_loop55976_
                             (let ((_next-probe55997_
                                    (fx+ _start55972_
                                         _i55981_
                                         (fx* _i55981_ _i55981_))))
                               (fxmodulo _next-probe55997_ _size55966_))
                             (fx+ _i55981_ '1)
                             _deleted55983_))))))))))
    (define string-table-update!
      (lambda (_tab55950_
               _key55951_
               _string-table-update!55952_
               _default55953_)
        (if (fx< (&raw-table-free _tab55950_)
                 (fxquotient (vector-length (&raw-table-table _tab55950_)) '4))
            (__raw-table-rehash! _tab55950_)
            '#!void)
        (__string-table-update!
         _tab55950_
         _key55951_
         _string-table-update!55952_
         _default55953_)))
    (define __string-table-update!
      (lambda (_tab55904_
               _key55905_
               _string-table-update!55906_
               _default55907_)
        (let ((_table55910_ (&raw-table-table _tab55904_))
              (_seed55911_ (&raw-table-seed _tab55904_)))
          (let* ((_h55913_ (fxxor (##string=?-hash _key55905_) _seed55911_))
                 (_size55916_ (vector-length _table55910_))
                 (_entries55919_ (fxquotient _size55916_ '2))
                 (_start55922_
                  (fxarithmetic-shift-left
                   (fxmodulo _h55913_ _entries55919_)
                   '1)))
            (let _loop55926_ ((_probe55929_ _start55922_)
                              (_i55931_ '1)
                              (_deleted55933_ '#f))
              (let ((_k55936_ (vector-ref _table55910_ _probe55929_)))
                (if (eq? _k55936_ (macro-unused-obj))
                    (if _deleted55933_
                        (begin
                          (vector-set! _table55910_ _deleted55933_ _key55905_)
                          (vector-set!
                           _table55910_
                           (fx+ _deleted55933_ '1)
                           (_string-table-update!55906_ _default55907_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab55904_
                              (fx+ (&raw-table-count _tab55904_) '1)))))
                        (begin
                          (vector-set! _table55910_ _probe55929_ _key55905_)
                          (vector-set!
                           _table55910_
                           (fx+ _probe55929_ '1)
                           (_string-table-update!55906_ _default55907_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab55904_
                              (fx- (&raw-table-free _tab55904_) '1))
                             (&raw-table-count-set!
                              _tab55904_
                              (fx+ (&raw-table-count _tab55904_) '1))))))
                    (if (eq? _k55936_ (macro-deleted-obj))
                        (_loop55926_
                         (let ((_next-probe55941_
                                (fx+ _start55922_
                                     _i55931_
                                     (fx* _i55931_ _i55931_))))
                           (fxmodulo _next-probe55941_ _size55916_))
                         (fx+ _i55931_ '1)
                         (let ((_$e55944_ _deleted55933_))
                           (if _$e55944_ _$e55944_ _probe55929_)))
                        (if (##string=? _key55905_ _k55936_)
                            (begin
                              (vector-set!
                               _table55910_
                               _probe55929_
                               _key55905_)
                              (vector-set!
                               _table55910_
                               (fx+ _probe55929_ '1)
                               (_string-table-update!55906_
                                (vector-ref
                                 _table55910_
                                 (fx+ _probe55929_ '1)))))
                            (_loop55926_
                             (let ((_next-probe55947_
                                    (fx+ _start55922_
                                         _i55931_
                                         (fx* _i55931_ _i55931_))))
                               (fxmodulo _next-probe55947_ _size55916_))
                             (fx+ _i55931_ '1)
                             _deleted55933_))))))))))
    (define string-table-delete!
      (lambda (_tab55863_ _key55865_)
        (let ((_table55868_ (&raw-table-table _tab55863_))
              (_seed55870_ (&raw-table-seed _tab55863_)))
          (let* ((_h55873_ (fxxor (##string=?-hash _key55865_) _seed55870_))
                 (_size55876_ (vector-length _table55868_))
                 (_entries55879_ (fxquotient _size55876_ '2))
                 (_start55882_
                  (fxarithmetic-shift-left
                   (fxmodulo _h55873_ _entries55879_)
                   '1)))
            (let _loop55886_ ((_probe55889_ _start55882_) (_i55891_ '1))
              (let ((_k55894_ (vector-ref _table55868_ _probe55889_)))
                (if (eq? _k55894_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k55894_ (macro-deleted-obj))
                        (_loop55886_
                         (let ((_next-probe55897_
                                (fx+ _start55882_
                                     _i55891_
                                     (fx* _i55891_ _i55891_))))
                           (fxmodulo _next-probe55897_ _size55876_))
                         (fx+ _i55891_ '1))
                        (if (##string=? _key55865_ _k55894_)
                            (begin
                              (vector-set!
                               _table55868_
                               _probe55889_
                               (macro-deleted-obj))
                              (vector-set!
                               _table55868_
                               (fx+ _probe55889_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab55863_
                                  (fx- (&raw-table-count _tab55863_) '1)))))
                            (_loop55886_
                             (let ((_next-probe55901_
                                    (fx+ _start55882_
                                         _i55891_
                                         (fx* _i55891_ _i55891_))))
                               (fxmodulo _next-probe55901_ _size55876_))
                             (fx+ _i55891_ '1)))))))))))
    (define make-immediate-table__%
      (lambda (_size-hint55844_ _seed55846_)
        (make-raw-table__% _size-hint55844_ immediate-hash eq? _seed55846_)))
    (define make-immediate-table__0
      (lambda ()
        (let* ((_size-hint55852_ '#f) (_seed55854_ '0))
          (make-immediate-table__% _size-hint55852_ _seed55854_))))
    (define make-immediate-table__1
      (lambda (_size-hint55856_)
        (let ((_seed55858_ '0))
          (make-immediate-table__% _size-hint55856_ _seed55858_))))
    (define make-immediate-table
      (lambda _g57000_
        (let ((_g56999_ (##length _g57000_)))
          (cond ((##fx= _g56999_ 0)
                 (apply (lambda () (make-immediate-table__0)) _g57000_))
                ((##fx= _g56999_ 1)
                 (apply (lambda (_size-hint55856_)
                          (make-immediate-table__1 _size-hint55856_))
                        _g57000_))
                ((##fx= _g56999_ 2)
                 (apply (lambda (_size-hint55860_ _seed55861_)
                          (make-immediate-table__%
                           _size-hint55860_
                           _seed55861_))
                        _g57000_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-immediate-table
                  _g57000_))))))
    (define immediate-table-ref
      (lambda (_tab55801_ _key55802_ _default55803_)
        (let ((_table55805_ (&raw-table-table _tab55801_))
              (_seed55806_ (&raw-table-seed _tab55801_)))
          (let* ((_h55808_ (fxxor (immediate-hash _key55802_) _seed55806_))
                 (_size55811_ (vector-length _table55805_))
                 (_entries55814_ (fxquotient _size55811_ '2))
                 (_start55817_
                  (fxarithmetic-shift-left
                   (fxmodulo _h55808_ _entries55814_)
                   '1)))
            (let _loop55821_ ((_probe55824_ _start55817_)
                              (_i55826_ '1)
                              (_deleted55828_ '#f))
              (let ((_k55831_ (vector-ref _table55805_ _probe55824_)))
                (if (eq? _k55831_ (macro-unused-obj))
                    _default55803_
                    (if (eq? _k55831_ (macro-deleted-obj))
                        (_loop55821_
                         (let ((_next-probe55834_
                                (fx+ _start55817_
                                     _i55826_
                                     (fx* _i55826_ _i55826_))))
                           (fxmodulo _next-probe55834_ _size55811_))
                         (fx+ _i55826_ '1)
                         (let ((_$e55837_ _deleted55828_))
                           (if _$e55837_ _$e55837_ _probe55824_)))
                        (if (eq? _key55802_ _k55831_)
                            (vector-ref _table55805_ (fx+ _probe55824_ '1))
                            (_loop55821_
                             (let ((_next-probe55840_
                                    (fx+ _start55817_
                                         _i55826_
                                         (fx* _i55826_ _i55826_))))
                               (fxmodulo _next-probe55840_ _size55811_))
                             (fx+ _i55826_ '1)
                             _deleted55828_))))))))))
    (define immediate-table-set!
      (lambda (_tab55797_ _key55798_ _value55799_)
        (if (fx< (&raw-table-free _tab55797_)
                 (fxquotient (vector-length (&raw-table-table _tab55797_)) '4))
            (__raw-table-rehash! _tab55797_)
            '#!void)
        (__immediate-table-set! _tab55797_ _key55798_ _value55799_)))
    (define __immediate-table-set!
      (lambda (_tab55752_ _key55753_ _value55754_)
        (let ((_table55757_ (&raw-table-table _tab55752_))
              (_seed55758_ (&raw-table-seed _tab55752_)))
          (let* ((_h55760_ (fxxor (immediate-hash _key55753_) _seed55758_))
                 (_size55763_ (vector-length _table55757_))
                 (_entries55766_ (fxquotient _size55763_ '2))
                 (_start55769_
                  (fxarithmetic-shift-left
                   (fxmodulo _h55760_ _entries55766_)
                   '1)))
            (let _loop55773_ ((_probe55776_ _start55769_)
                              (_i55778_ '1)
                              (_deleted55780_ '#f))
              (let ((_k55783_ (vector-ref _table55757_ _probe55776_)))
                (if (eq? _k55783_ (macro-unused-obj))
                    (if _deleted55780_
                        (begin
                          (vector-set! _table55757_ _deleted55780_ _key55753_)
                          (vector-set!
                           _table55757_
                           (fx+ _deleted55780_ '1)
                           _value55754_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab55752_
                              (fx+ (&raw-table-count _tab55752_) '1)))))
                        (begin
                          (vector-set! _table55757_ _probe55776_ _key55753_)
                          (vector-set!
                           _table55757_
                           (fx+ _probe55776_ '1)
                           _value55754_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab55752_
                              (fx- (&raw-table-free _tab55752_) '1))
                             (&raw-table-count-set!
                              _tab55752_
                              (fx+ (&raw-table-count _tab55752_) '1))))))
                    (if (eq? _k55783_ (macro-deleted-obj))
                        (_loop55773_
                         (let ((_next-probe55788_
                                (fx+ _start55769_
                                     _i55778_
                                     (fx* _i55778_ _i55778_))))
                           (fxmodulo _next-probe55788_ _size55763_))
                         (fx+ _i55778_ '1)
                         (let ((_$e55791_ _deleted55780_))
                           (if _$e55791_ _$e55791_ _probe55776_)))
                        (if (eq? _key55753_ _k55783_)
                            (begin
                              (vector-set!
                               _table55757_
                               _probe55776_
                               _key55753_)
                              (vector-set!
                               _table55757_
                               (fx+ _probe55776_ '1)
                               _value55754_))
                            (_loop55773_
                             (let ((_next-probe55794_
                                    (fx+ _start55769_
                                         _i55778_
                                         (fx* _i55778_ _i55778_))))
                               (fxmodulo _next-probe55794_ _size55763_))
                             (fx+ _i55778_ '1)
                             _deleted55780_))))))))))
    (define immediate-table-update!
      (lambda (_tab55747_
               _key55748_
               _immediate-table-update!55749_
               _default55750_)
        (if (fx< (&raw-table-free _tab55747_)
                 (fxquotient (vector-length (&raw-table-table _tab55747_)) '4))
            (__raw-table-rehash! _tab55747_)
            '#!void)
        (__immediate-table-update!
         _tab55747_
         _key55748_
         _immediate-table-update!55749_
         _default55750_)))
    (define __immediate-table-update!
      (lambda (_tab55701_
               _key55702_
               _immediate-table-update!55703_
               _default55704_)
        (let ((_table55707_ (&raw-table-table _tab55701_))
              (_seed55708_ (&raw-table-seed _tab55701_)))
          (let* ((_h55710_ (fxxor (immediate-hash _key55702_) _seed55708_))
                 (_size55713_ (vector-length _table55707_))
                 (_entries55716_ (fxquotient _size55713_ '2))
                 (_start55719_
                  (fxarithmetic-shift-left
                   (fxmodulo _h55710_ _entries55716_)
                   '1)))
            (let _loop55723_ ((_probe55726_ _start55719_)
                              (_i55728_ '1)
                              (_deleted55730_ '#f))
              (let ((_k55733_ (vector-ref _table55707_ _probe55726_)))
                (if (eq? _k55733_ (macro-unused-obj))
                    (if _deleted55730_
                        (begin
                          (vector-set! _table55707_ _deleted55730_ _key55702_)
                          (vector-set!
                           _table55707_
                           (fx+ _deleted55730_ '1)
                           (_immediate-table-update!55703_ _default55704_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab55701_
                              (fx+ (&raw-table-count _tab55701_) '1)))))
                        (begin
                          (vector-set! _table55707_ _probe55726_ _key55702_)
                          (vector-set!
                           _table55707_
                           (fx+ _probe55726_ '1)
                           (_immediate-table-update!55703_ _default55704_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab55701_
                              (fx- (&raw-table-free _tab55701_) '1))
                             (&raw-table-count-set!
                              _tab55701_
                              (fx+ (&raw-table-count _tab55701_) '1))))))
                    (if (eq? _k55733_ (macro-deleted-obj))
                        (_loop55723_
                         (let ((_next-probe55738_
                                (fx+ _start55719_
                                     _i55728_
                                     (fx* _i55728_ _i55728_))))
                           (fxmodulo _next-probe55738_ _size55713_))
                         (fx+ _i55728_ '1)
                         (let ((_$e55741_ _deleted55730_))
                           (if _$e55741_ _$e55741_ _probe55726_)))
                        (if (eq? _key55702_ _k55733_)
                            (begin
                              (vector-set!
                               _table55707_
                               _probe55726_
                               _key55702_)
                              (vector-set!
                               _table55707_
                               (fx+ _probe55726_ '1)
                               (_immediate-table-update!55703_
                                (vector-ref
                                 _table55707_
                                 (fx+ _probe55726_ '1)))))
                            (_loop55723_
                             (let ((_next-probe55744_
                                    (fx+ _start55719_
                                         _i55728_
                                         (fx* _i55728_ _i55728_))))
                               (fxmodulo _next-probe55744_ _size55713_))
                             (fx+ _i55728_ '1)
                             _deleted55730_))))))))))
    (define immediate-table-delete!
      (lambda (_tab55660_ _key55662_)
        (let ((_table55665_ (&raw-table-table _tab55660_))
              (_seed55667_ (&raw-table-seed _tab55660_)))
          (let* ((_h55670_ (fxxor (immediate-hash _key55662_) _seed55667_))
                 (_size55673_ (vector-length _table55665_))
                 (_entries55676_ (fxquotient _size55673_ '2))
                 (_start55679_
                  (fxarithmetic-shift-left
                   (fxmodulo _h55670_ _entries55676_)
                   '1)))
            (let _loop55683_ ((_probe55686_ _start55679_) (_i55688_ '1))
              (let ((_k55691_ (vector-ref _table55665_ _probe55686_)))
                (if (eq? _k55691_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k55691_ (macro-deleted-obj))
                        (_loop55683_
                         (let ((_next-probe55694_
                                (fx+ _start55679_
                                     _i55688_
                                     (fx* _i55688_ _i55688_))))
                           (fxmodulo _next-probe55694_ _size55673_))
                         (fx+ _i55688_ '1))
                        (if (eq? _key55662_ _k55691_)
                            (begin
                              (vector-set!
                               _table55665_
                               _probe55686_
                               (macro-deleted-obj))
                              (vector-set!
                               _table55665_
                               (fx+ _probe55686_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab55660_
                                  (fx- (&raw-table-count _tab55660_) '1)))))
                            (_loop55683_
                             (let ((_next-probe55698_
                                    (fx+ _start55679_
                                         _i55688_
                                         (fx* _i55688_ _i55688_))))
                               (fxmodulo _next-probe55698_ _size55673_))
                             (fx+ _i55688_ '1)))))))))))
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
      (lambda (_tab55658_)
        (##unchecked-structure-ref
         _tab55658_
         '1
         __gc-table::t
         'gc-table-gcht)))
    (define &gc-table-immediate
      (lambda (_tab55656_)
        (##unchecked-structure-ref
         _tab55656_
         '2
         __gc-table::t
         'gc-table-immediate)))
    (define &gc-table-gcht-set!
      (lambda (_tab55653_ _val55654_)
        (##unchecked-structure-set!
         _tab55653_
         _val55654_
         '1
         __gc-table::t
         'gc-table-gcht-set!)))
    (define &gc-table-immediate-set!
      (lambda (_tab55650_ _val55651_)
        (##unchecked-structure-set!
         _tab55650_
         _val55651_
         '2
         __gc-table::t
         'gc-table-immediate-set!)))
    (define make-gc-table__%
      (lambda (_size-hint55626_ _klass55627_ _flags55628_)
        (let ((_gcht55630_
               (__gc-table-new
                (if (fixnum? _size-hint55626_) _size-hint55626_ '16)
                _flags55628_)))
          (##structure _klass55627_ _gcht55630_ '#f))))
    (define make-gc-table__0
      (lambda (_size-hint55635_)
        (let* ((_klass55637_ __gc-table::t) (_flags55639_ '0))
          (make-gc-table__% _size-hint55635_ _klass55637_ _flags55639_))))
    (define make-gc-table__1
      (lambda (_size-hint55641_ _klass55642_)
        (let ((_flags55644_ '0))
          (make-gc-table__% _size-hint55641_ _klass55642_ _flags55644_))))
    (define make-gc-table
      (lambda _g57002_
        (let ((_g57001_ (##length _g57002_)))
          (cond ((##fx= _g57001_ 1)
                 (apply (lambda (_size-hint55635_)
                          (make-gc-table__0 _size-hint55635_))
                        _g57002_))
                ((##fx= _g57001_ 2)
                 (apply (lambda (_size-hint55641_ _klass55642_)
                          (make-gc-table__1 _size-hint55641_ _klass55642_))
                        _g57002_))
                ((##fx= _g57001_ 3)
                 (apply (lambda (_size-hint55646_ _klass55647_ _flags55648_)
                          (make-gc-table__%
                           _size-hint55646_
                           _klass55647_
                           _flags55648_))
                        _g57002_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-gc-table
                  _g57002_))))))
    (define __gc-table-immediate
      (lambda (_tab55618_)
        (let ((_$e55620_ (&gc-table-immediate _tab55618_)))
          (if _$e55620_
              _$e55620_
              (let ((_immediate55623_ (make-immediate-table__% '#f '0)))
                (&gc-table-immediate-set! _tab55618_ _immediate55623_)
                _immediate55623_)))))
    (define __gc-table-new
      (lambda (_size55608_ _flags55609_)
        (let* ((_flags55611_
                (fxand _flags55609_
                       (fxnot (macro-gc-hash-table-flag-need-rehash))))
               (_flags55613_
                (fxior _flags55611_ (macro-gc-hash-table-flag-mem-alloc-keys)))
               (_gcht55615_
                (##gc-hash-table-allocate
                 _size55608_
                 _flags55613_
                 __gc-table-loads)))
          _gcht55615_)))
    (define __gc-table-e
      (lambda (_tab55603_)
        (declare (not interrupts-enabled))
        (let ((_gcht55606_ (&gc-table-gcht _tab55603_)))
          (if (fx= '0
                   (fxand (macro-gc-hash-table-flags _gcht55606_)
                          (macro-gc-hash-table-flag-need-rehash)))
              _gcht55606_
              (begin
                (__gc-table-rehash! _tab55603_)
                (&gc-table-gcht _tab55603_))))))
    (define __gc-table-rehash!
      (lambda (_tab55594_)
        (let* ((_old-table55596_ (&gc-table-gcht _tab55594_))
               (_new-table55598_
                (##gc-hash-table-resize! _old-table55596_ __gc-table-loads))
               (_gcht55600_
                (##gc-hash-table-rehash! _old-table55596_ _new-table55598_)))
          (&gc-table-gcht-set! _tab55594_ _gcht55600_))))
    (define gc-table-ref
      (lambda (_tab55580_ _key55581_ _default55582_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key55581_)
            (let* ((_gcht55585_ (__gc-table-e _tab55580_))
                   (_value55587_ (##gc-hash-table-ref _gcht55585_ _key55581_)))
              (if (eq? _value55587_ (macro-unused-obj))
                  _default55582_
                  _value55587_))
            (let ((_$e55589_ (&gc-table-immediate _tab55580_)))
              (if _$e55589_
                  ((lambda (_immediate55592_)
                     (immediate-table-ref
                      _immediate55592_
                      _key55581_
                      _default55582_))
                   _$e55589_)
                  _default55582_)))))
    (define gc-table-set!
      (lambda (_tab55573_ _key55574_ _value55575_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key55574_)
            (let ((_gcht55578_ (__gc-table-e _tab55573_)))
              (if (##gc-hash-table-set! _gcht55578_ _key55574_ _value55575_)
                  (begin
                    (__gc-table-rehash! _tab55573_)
                    (gc-table-set! _tab55573_ _key55574_ _value55575_))
                  '#!void))
            (immediate-table-set!
             (__gc-table-immediate _tab55573_)
             _key55574_
             _value55575_))))
    (define gc-table-update!
      (lambda (_tab55566_ _key55567_ _update55568_ _default55569_)
        (if (##mem-allocated? _key55567_)
            (let ((_value55571_
                   (gc-table-ref _tab55566_ _key55567_ _default55569_)))
              (gc-table-set!
               _tab55566_
               _key55567_
               (_update55568_ _value55571_)))
            (immediate-table-update!
             (__gc-table-immediate _tab55566_)
             _key55567_
             _update55568_
             _default55569_))))
    (define gc-table-delete!
      (lambda (_tab55555_ _key55556_)
        (declare (not interrupts-enabled))
        (if (##mem-allocated? _key55556_)
            (let ((_gcht55559_ (__gc-table-e _tab55555_)))
              (if (##gc-hash-table-set!
                   _gcht55559_
                   _key55556_
                   (macro-absent-obj))
                  (begin
                    (__gc-table-rehash! _tab55555_)
                    (gc-table-delete! _tab55555_ _key55556_))
                  '#!void))
            (let ((_$e55561_ (&gc-table-immediate _tab55555_)))
              (if _$e55561_
                  ((lambda (_immediate55564_)
                     (immediate-table-delete! _immediate55564_ _key55556_))
                   _$e55561_)
                  '#!void)))))
    (define gc-table-for-each
      (lambda (_tab55536_ _proc55537_)
        (declare (not interrupts-enabled))
        (begin
          (let ((_gcht55540_ (__gc-table-e _tab55536_)))
            (let _loop55542_ ((_i55544_ (macro-gc-hash-table-key0)))
              (if (fx< _i55544_ (##vector-length _gcht55540_))
                  (let ((_key55546_ (##vector-ref _gcht55540_ _i55544_)))
                    (if (and (not (eq? _key55546_ (macro-unused-obj)))
                             (not (eq? _key55546_ (macro-deleted-obj))))
                        (_proc55537_
                         _key55546_
                         (##vector-ref _gcht55540_ (fx+ _i55544_ '1)))
                        '#!void)
                    (let ()
                      (declare (interrupts-enabled))
                      (_loop55542_ (fx+ _i55544_ '2))))
                  '#!void)))
          (let ((_$e55550_ (&gc-table-immediate _tab55536_)))
            (if _$e55550_
                ((lambda (_immediate55553_)
                   (raw-table-for-each _immediate55553_ _proc55537_))
                 _$e55550_)
                '#!void)))))
    (define gc-table-copy
      (lambda (_tab55524_)
        (let* ((_gcht55526_ (__gc-table-e _tab55524_))
               (_new-table55528_
                (__gc-table-new
                 (macro-gc-hash-table-count _gcht55526_)
                 (macro-gc-hash-table-flags _gcht55526_)))
               (_result55530_
                (##structure
                 (##structure-type _tab55524_)
                 _new-table55528_
                 '#f)))
          (gc-table-for-each
           _tab55524_
           (lambda (_k55533_ _v55534_)
             (gc-table-set! _result55530_ _k55533_ _v55534_)))
          _result55530_)))
    (define gc-table-clear!
      (lambda (_tab55517_)
        (let* ((_gcht55519_ (__gc-table-e _tab55517_))
               (_new-table55521_
                (__gc-table-new '16 (macro-gc-hash-table-flags _gcht55519_))))
          (&gc-table-gcht-set! _tab55517_ _new-table55521_)
          (&gc-table-immediate-set! _tab55517_ '#f))))
    (define gc-table-length
      (lambda (_tab55510_)
        (let ((_gcht55512_ (__gc-table-e _tab55510_)))
          (fx+ (macro-gc-hash-table-count _gcht55512_)
               (let ((_$e55514_ (&gc-table-immediate _tab55510_)))
                 (if _$e55514_ (&raw-table-count _$e55514_) '0))))))
    (define __object-eq-hash-next '0)
    (define __object-eq-hash
      (make-gc-table__%
       '1024
       __gc-table::t
       (macro-gc-hash-table-flag-weak-keys)))
    (define __object->eq-hash
      (lambda (_obj55495_)
        (declare (not interrupts-enabled))
        (let ((_val55498_ (gc-table-ref __object-eq-hash _obj55495_ '#f)))
          (if _val55498_
              _val55498_
              (let* ((_mix55500_ __object-eq-hash-next)
                     (_ptr55502_ (##type-cast _obj55495_ '0))
                     (_h55504_
                      (fxand (fxxor _mix55500_ _ptr55502_)
                             (macro-max-fixnum32))))
                (set! __object-eq-hash-next
                      (let ((_$e55507_ (##fx+? __object-eq-hash-next '1)))
                        (if _$e55507_ _$e55507_ '0)))
                (gc-table-set! __object-eq-hash _obj55495_ _h55504_)
                _h55504_)))))))
