(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/table::timestamp 1708168067)
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
      (lambda (_tab66081_)
        (##unchecked-structure-ref _tab66081_ '1 __table::t 'raw-table-table)))
    (define &raw-table-count
      (lambda (_tab66079_)
        (##unchecked-structure-ref _tab66079_ '2 __table::t 'raw-table-count)))
    (define &raw-table-free
      (lambda (_tab66077_)
        (##unchecked-structure-ref _tab66077_ '3 __table::t 'raw-table-free)))
    (define &raw-table-hash
      (lambda (_tab66075_)
        (##unchecked-structure-ref _tab66075_ '4 __table::t 'raw-table-hash)))
    (define &raw-table-test
      (lambda (_tab66073_)
        (##unchecked-structure-ref _tab66073_ '5 __table::t 'raw-table-test)))
    (define &raw-table-table-set!
      (lambda (_tab66070_ _val66071_)
        (##unchecked-structure-set!
         _tab66070_
         _val66071_
         '1
         __table::t
         'raw-table-table-set!)))
    (define &raw-table-count-set!
      (lambda (_tab66067_ _val66068_)
        (##unchecked-structure-set!
         _tab66067_
         _val66068_
         '2
         __table::t
         'raw-table-count-set!)))
    (define &raw-table-free-set!
      (lambda (_tab66064_ _val66065_)
        (##unchecked-structure-set!
         _tab66064_
         _val66065_
         '3
         __table::t
         'raw-table-free-set!)))
    (define &raw-table-hash-set!
      (lambda (_tab66061_ _val66062_)
        (##unchecked-structure-set!
         _tab66061_
         _val66062_
         '4
         __table::t
         'raw-table-hash-set!)))
    (define &raw-table-test-set!
      (lambda (_tab66058_ _val66059_)
        (##unchecked-structure-set!
         _tab66058_
         _val66059_
         '5
         __table::t
         'raw-table-test-set!)))
    (define make-raw-table
      (lambda (_size-hint66049_ _hash66050_ _test66051_)
        (let* ((_size66053_
                (if (and (fixnum? _size-hint66049_) (fx> _size-hint66049_ '0))
                    (fx* (max _size-hint66049_ '2) '4)
                    '16))
               (_table66055_ (make-vector _size66053_ (macro-unused-obj))))
          (##structure
           __table::t
           _table66055_
           '0
           (fxquotient _size66053_ '2)
           _hash66050_
           _test66051_))))
    (define raw-table-ref
      (lambda (_tab66006_ _key66007_ _default66008_)
        (let ((_table66010_ (&raw-table-table _tab66006_))
              (_hash66011_ (&raw-table-hash _tab66006_))
              (_test66012_ (&raw-table-test _tab66006_)))
          (let* ((_h66014_ (_hash66011_ _key66007_))
                 (_size66017_ (vector-length _table66010_))
                 (_entries66020_ (fxquotient _size66017_ '2))
                 (_start66023_
                  (fxarithmetic-shift-left
                   (fxmodulo _h66014_ _entries66020_)
                   '1)))
            (let _loop66027_ ((_probe66030_ _start66023_)
                              (_i66032_ '1)
                              (_deleted66034_ '#f))
              (let ((_k66037_ (vector-ref _table66010_ _probe66030_)))
                (if (eq? _k66037_ (macro-unused-obj))
                    _default66008_
                    (if (eq? _k66037_ (macro-deleted-obj))
                        (_loop66027_
                         (let ((_next-probe66040_
                                (fx+ _start66023_
                                     _i66032_
                                     (fx* _i66032_ _i66032_))))
                           (fxmodulo _next-probe66040_ _size66017_))
                         (fx+ _i66032_ '1)
                         (let ((_$e66043_ _deleted66034_))
                           (if _$e66043_ _$e66043_ _probe66030_)))
                        (if (_test66012_ _key66007_ _k66037_)
                            (vector-ref _table66010_ (fx+ _probe66030_ '1))
                            (_loop66027_
                             (let ((_next-probe66046_
                                    (fx+ _start66023_
                                         _i66032_
                                         (fx* _i66032_ _i66032_))))
                               (fxmodulo _next-probe66046_ _size66017_))
                             (fx+ _i66032_ '1)
                             _deleted66034_))))))))))
    (define raw-table-set!
      (lambda (_tab66002_ _key66003_ _value66004_)
        (if (fx< (&raw-table-free _tab66002_)
                 (fxquotient (vector-length (&raw-table-table _tab66002_)) '4))
            (__raw-table-rehash! _tab66002_)
            '#!void)
        (__raw-table-set! _tab66002_ _key66003_ _value66004_)))
    (define raw-table-delete!
      (lambda (_tab65964_ _key65965_)
        (let ((_table65967_ (&raw-table-table _tab65964_))
              (_hash65968_ (&raw-table-hash _tab65964_))
              (_test65969_ (&raw-table-test _tab65964_)))
          (let* ((_h65971_ (_hash65968_ _key65965_))
                 (_size65974_ (vector-length _table65967_))
                 (_entries65977_ (fxquotient _size65974_ '2))
                 (_start65980_
                  (fxarithmetic-shift-left
                   (fxmodulo _h65971_ _entries65977_)
                   '1)))
            (let _loop65984_ ((_probe65987_ _start65980_) (_i65989_ '1))
              (let ((_k65992_ (vector-ref _table65967_ _probe65987_)))
                (if (eq? _k65992_ (macro-unused-obj))
                    '#!void
                    (if (eq? _k65992_ (macro-deleted-obj))
                        (_loop65984_
                         (let ((_next-probe65995_
                                (fx+ _start65980_
                                     _i65989_
                                     (fx* _i65989_ _i65989_))))
                           (fxmodulo _next-probe65995_ _size65974_))
                         (fx+ _i65989_ '1))
                        (if (_test65969_ _key65965_ _k65992_)
                            (begin
                              (vector-set!
                               _table65967_
                               _probe65987_
                               (macro-deleted-obj))
                              (vector-set!
                               _table65967_
                               (fx+ _probe65987_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _tab65964_
                                  (fx- (&raw-table-count _tab65964_) '1)))))
                            (_loop65984_
                             (let ((_next-probe65999_
                                    (fx+ _start65980_
                                         _i65989_
                                         (fx* _i65989_ _i65989_))))
                               (fxmodulo _next-probe65999_ _size65974_))
                             (fx+ _i65989_ '1)))))))))))
    (define __raw-table-set!
      (lambda (_tab65919_ _key65920_ _value65921_)
        (let ((_table65923_ (&raw-table-table _tab65919_))
              (_hash65924_ (&raw-table-hash _tab65919_))
              (_test65925_ (&raw-table-test _tab65919_)))
          (let* ((_h65927_ (_hash65924_ _key65920_))
                 (_size65930_ (vector-length _table65923_))
                 (_entries65933_ (fxquotient _size65930_ '2))
                 (_start65936_
                  (fxarithmetic-shift-left
                   (fxmodulo _h65927_ _entries65933_)
                   '1)))
            (let _loop65940_ ((_probe65943_ _start65936_)
                              (_i65945_ '1)
                              (_deleted65947_ '#f))
              (let ((_k65950_ (vector-ref _table65923_ _probe65943_)))
                (if (eq? _k65950_ (macro-unused-obj))
                    (if _deleted65947_
                        (begin
                          (vector-set! _table65923_ _deleted65947_ _key65920_)
                          (vector-set!
                           _table65923_
                           (fx+ _deleted65947_ '1)
                           _value65921_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _tab65919_
                              (fx+ (&raw-table-count _tab65919_) '1)))))
                        (begin
                          (vector-set! _table65923_ _probe65943_ _key65920_)
                          (vector-set!
                           _table65923_
                           (fx+ _probe65943_ '1)
                           _value65921_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _tab65919_
                              (fx- (&raw-table-free _tab65919_) '1))
                             (&raw-table-count-set!
                              _tab65919_
                              (fx+ (&raw-table-count _tab65919_) '1))))))
                    (if (eq? _k65950_ (macro-deleted-obj))
                        (_loop65940_
                         (let ((_next-probe65955_
                                (fx+ _start65936_
                                     _i65945_
                                     (fx* _i65945_ _i65945_))))
                           (fxmodulo _next-probe65955_ _size65930_))
                         (fx+ _i65945_ '1)
                         (let ((_$e65958_ _deleted65947_))
                           (if _$e65958_ _$e65958_ _probe65943_)))
                        (if (_test65925_ _key65920_ _k65950_)
                            (begin
                              (vector-set!
                               _table65923_
                               _probe65943_
                               _key65920_)
                              (vector-set!
                               _table65923_
                               (fx+ _probe65943_ '1)
                               _value65921_))
                            (_loop65940_
                             (let ((_next-probe65961_
                                    (fx+ _start65936_
                                         _i65945_
                                         (fx* _i65945_ _i65945_))))
                               (fxmodulo _next-probe65961_ _size65930_))
                             (fx+ _i65945_ '1)
                             _deleted65947_))))))))))
    (define __raw-table-rehash!
      (lambda (_tab65900_)
        (let* ((_old-table65902_ (&raw-table-table _tab65900_))
               (_old-size65904_ (vector-length _old-table65902_))
               (_new-size65906_
                (if (fx< (&raw-table-count _tab65900_)
                         (fxquotient _old-size65904_ '4))
                    (vector-length _old-table65902_)
                    (fx* '2 (vector-length _old-table65902_))))
               (_new-table65908_
                (make-vector _new-size65906_ (macro-unused-obj))))
          (&raw-table-table-set! _tab65900_ _new-table65908_)
          (&raw-table-count-set! _tab65900_ '0)
          (&raw-table-free-set! _tab65900_ (fxquotient _new-size65906_ '2))
          (let _lp65911_ ((_i65913_ '0))
            (if (fx< _i65913_ _old-size65904_)
                (begin
                  (let ((_key65915_ (vector-ref _old-table65902_ _i65913_)))
                    (if (and (not (eq? _key65915_ (macro-unused-obj)))
                             (not (eq? _key65915_ (macro-deleted-obj))))
                        (let ((_value65917_
                               (vector-ref
                                _old-table65902_
                                (fx+ _i65913_ '1))))
                          (__raw-table-set!
                           _tab65900_
                           _key65915_
                           _value65917_))
                        '#!void))
                  (_lp65911_ (fx+ _i65913_ '2)))
                '#!void)))))
    (define eq-hash
      (lambda (_obj65891_)
        (let ((_t65893_ (##type _obj65891_)))
          (if (fx= (fxand _t65893_ '1) '0)
              (fxand (##type-cast _obj65891_ (macro-type-fixnum))
                     (macro-max-fixnum32))
              (if (or (symbol? _obj65891_) (keyword? _obj65891_))
                  (symbolic-hash _obj65891_)
                  (fxand (let ((_sn65898_ (object->serial-number _obj65891_)))
                           (if (fixnum? _sn65898_)
                               _sn65898_
                               (fxarithmetic-shift-left
                                (##bignum.mdigit-ref _sn65898_ '0)
                                '10)))
                         (macro-max-fixnum32)))))))
    (define symbolic-hash (lambda (_obj65889_) (macro-slot '1 _obj65889_)))
    (define string-hash (lambda (_obj65887_) (##string=?-hash _obj65887_)))
    (define make-eq-table__%
      (lambda (_size-hint65876_)
        (make-raw-table _size-hint65876_ eq-hash eq?)))
    (define make-eq-table__0
      (lambda ()
        (let ((_size-hint65883_ '#f)) (make-eq-table__% _size-hint65883_))))
    (define make-eq-table
      (lambda _g70651_
        (let ((_g70650_ (##length _g70651_)))
          (cond ((##fx= _g70650_ 0)
                 (apply (lambda () (make-eq-table__0)) _g70651_))
                ((##fx= _g70650_ 1)
                 (apply (lambda (_size-hint65885_)
                          (make-eq-table__% _size-hint65885_))
                        _g70651_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-eq-table
                  _g70651_))))))
    (define eq-table-ref
      (lambda (_tab65833_ _key65834_ _default65835_)
        (let* ((_table65838_ (&raw-table-table _tab65833_))
               (_h65840_ (eq-hash _key65834_))
               (_size65843_ (vector-length _table65838_))
               (_entries65846_ (fxquotient _size65843_ '2))
               (_start65849_
                (fxarithmetic-shift-left
                 (fxmodulo _h65840_ _entries65846_)
                 '1)))
          (let _loop65853_ ((_probe65856_ _start65849_)
                            (_i65858_ '1)
                            (_deleted65860_ '#f))
            (let ((_k65863_ (vector-ref _table65838_ _probe65856_)))
              (if (eq? _k65863_ (macro-unused-obj))
                  _default65835_
                  (if (eq? _k65863_ (macro-deleted-obj))
                      (_loop65853_
                       (let ((_next-probe65866_
                              (fx+ _start65849_
                                   _i65858_
                                   (fx* _i65858_ _i65858_))))
                         (fxmodulo _next-probe65866_ _size65843_))
                       (fx+ _i65858_ '1)
                       (let ((_$e65869_ _deleted65860_))
                         (if _$e65869_ _$e65869_ _probe65856_)))
                      (if (eq? _key65834_ _k65863_)
                          (vector-ref _table65838_ (fx+ _probe65856_ '1))
                          (_loop65853_
                           (let ((_next-probe65872_
                                  (fx+ _start65849_
                                       _i65858_
                                       (fx* _i65858_ _i65858_))))
                             (fxmodulo _next-probe65872_ _size65843_))
                           (fx+ _i65858_ '1)
                           _deleted65860_)))))))))
    (define eq-table-set!
      (lambda (_tab65829_ _key65830_ _value65831_)
        (if (fx< (&raw-table-free _tab65829_)
                 (fxquotient (vector-length (&raw-table-table _tab65829_)) '4))
            (__raw-table-rehash! _tab65829_)
            '#!void)
        (__eq-table-set! _tab65829_ _key65830_ _value65831_)))
    (define __eq-table-set!
      (lambda (_tab65785_ _key65786_ _value65787_)
        (let* ((_table65790_ (&raw-table-table _tab65785_))
               (_h65792_ (eq-hash _key65786_))
               (_size65795_ (vector-length _table65790_))
               (_entries65798_ (fxquotient _size65795_ '2))
               (_start65801_
                (fxarithmetic-shift-left
                 (fxmodulo _h65792_ _entries65798_)
                 '1)))
          (let _loop65805_ ((_probe65808_ _start65801_)
                            (_i65810_ '1)
                            (_deleted65812_ '#f))
            (let ((_k65815_ (vector-ref _table65790_ _probe65808_)))
              (if (eq? _k65815_ (macro-unused-obj))
                  (if _deleted65812_
                      (begin
                        (vector-set! _table65790_ _deleted65812_ _key65786_)
                        (vector-set!
                         _table65790_
                         (fx+ _deleted65812_ '1)
                         _value65787_)
                        ((lambda ()
                           (&raw-table-count-set!
                            _tab65785_
                            (fx+ (&raw-table-count _tab65785_) '1)))))
                      (begin
                        (vector-set! _table65790_ _probe65808_ _key65786_)
                        (vector-set!
                         _table65790_
                         (fx+ _probe65808_ '1)
                         _value65787_)
                        ((lambda ()
                           (&raw-table-free-set!
                            _tab65785_
                            (fx- (&raw-table-free _tab65785_) '1))
                           (&raw-table-count-set!
                            _tab65785_
                            (fx+ (&raw-table-count _tab65785_) '1))))))
                  (if (eq? _k65815_ (macro-deleted-obj))
                      (_loop65805_
                       (let ((_next-probe65820_
                              (fx+ _start65801_
                                   _i65810_
                                   (fx* _i65810_ _i65810_))))
                         (fxmodulo _next-probe65820_ _size65795_))
                       (fx+ _i65810_ '1)
                       (let ((_$e65823_ _deleted65812_))
                         (if _$e65823_ _$e65823_ _probe65808_)))
                      (if (eq? _key65786_ _k65815_)
                          (begin
                            (vector-set! _table65790_ _probe65808_ _key65786_)
                            (vector-set!
                             _table65790_
                             (fx+ _probe65808_ '1)
                             _value65787_))
                          (_loop65805_
                           (let ((_next-probe65826_
                                  (fx+ _start65801_
                                       _i65810_
                                       (fx* _i65810_ _i65810_))))
                             (fxmodulo _next-probe65826_ _size65795_))
                           (fx+ _i65810_ '1)
                           _deleted65812_)))))))))
    (define eq-table-delete!
      (lambda (_tab65746_ _key65748_)
        (let* ((_table65751_ (&raw-table-table _tab65746_))
               (_h65754_ (eq-hash _key65748_))
               (_size65757_ (vector-length _table65751_))
               (_entries65760_ (fxquotient _size65757_ '2))
               (_start65763_
                (fxarithmetic-shift-left
                 (fxmodulo _h65754_ _entries65760_)
                 '1)))
          (let _loop65767_ ((_probe65770_ _start65763_) (_i65772_ '1))
            (let ((_k65775_ (vector-ref _table65751_ _probe65770_)))
              (if (eq? _k65775_ (macro-unused-obj))
                  '#!void
                  (if (eq? _k65775_ (macro-deleted-obj))
                      (_loop65767_
                       (let ((_next-probe65778_
                              (fx+ _start65763_
                                   _i65772_
                                   (fx* _i65772_ _i65772_))))
                         (fxmodulo _next-probe65778_ _size65757_))
                       (fx+ _i65772_ '1))
                      (if (eq? _key65748_ _k65775_)
                          (begin
                            (vector-set!
                             _table65751_
                             _probe65770_
                             (macro-deleted-obj))
                            (vector-set!
                             _table65751_
                             (fx+ _probe65770_ '1)
                             (macro-absent-obj))
                            ((lambda ()
                               (&raw-table-count-set!
                                _tab65746_
                                (fx- (&raw-table-count _tab65746_) '1)))))
                          (_loop65767_
                           (let ((_next-probe65782_
                                  (fx+ _start65763_
                                       _i65772_
                                       (fx* _i65772_ _i65772_))))
                             (fxmodulo _next-probe65782_ _size65757_))
                           (fx+ _i65772_ '1))))))))))
    (define make-symbolic-table__%
      (lambda (_size-hint65735_)
        (make-raw-table _size-hint65735_ symbolic-hash eq?)))
    (define make-symbolic-table__0
      (lambda ()
        (let ((_size-hint65742_ '#f))
          (make-symbolic-table__% _size-hint65742_))))
    (define make-symbolic-table
      (lambda _g70653_
        (let ((_g70652_ (##length _g70653_)))
          (cond ((##fx= _g70652_ 0)
                 (apply (lambda () (make-symbolic-table__0)) _g70653_))
                ((##fx= _g70652_ 1)
                 (apply (lambda (_size-hint65744_)
                          (make-symbolic-table__% _size-hint65744_))
                        _g70653_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbolic-table
                  _g70653_))))))
    (define symbolic-table-ref
      (lambda (_tab65692_ _key65693_ _default65694_)
        (let* ((_table65697_ (&raw-table-table _tab65692_))
               (_h65699_ (symbolic-hash _key65693_))
               (_size65702_ (vector-length _table65697_))
               (_entries65705_ (fxquotient _size65702_ '2))
               (_start65708_
                (fxarithmetic-shift-left
                 (fxmodulo _h65699_ _entries65705_)
                 '1)))
          (let _loop65712_ ((_probe65715_ _start65708_)
                            (_i65717_ '1)
                            (_deleted65719_ '#f))
            (let ((_k65722_ (vector-ref _table65697_ _probe65715_)))
              (if (eq? _k65722_ (macro-unused-obj))
                  _default65694_
                  (if (eq? _k65722_ (macro-deleted-obj))
                      (_loop65712_
                       (let ((_next-probe65725_
                              (fx+ _start65708_
                                   _i65717_
                                   (fx* _i65717_ _i65717_))))
                         (fxmodulo _next-probe65725_ _size65702_))
                       (fx+ _i65717_ '1)
                       (let ((_$e65728_ _deleted65719_))
                         (if _$e65728_ _$e65728_ _probe65715_)))
                      (if (eq? _key65693_ _k65722_)
                          (vector-ref _table65697_ (fx+ _probe65715_ '1))
                          (_loop65712_
                           (let ((_next-probe65731_
                                  (fx+ _start65708_
                                       _i65717_
                                       (fx* _i65717_ _i65717_))))
                             (fxmodulo _next-probe65731_ _size65702_))
                           (fx+ _i65717_ '1)
                           _deleted65719_)))))))))
    (define symbolic-table-set!
      (lambda (_tab65688_ _key65689_ _value65690_)
        (if (fx< (&raw-table-free _tab65688_)
                 (fxquotient (vector-length (&raw-table-table _tab65688_)) '4))
            (__raw-table-rehash! _tab65688_)
            '#!void)
        (__symbolic-table-set! _tab65688_ _key65689_ _value65690_)))
    (define __symbolic-table-set!
      (lambda (_tab65644_ _key65645_ _value65646_)
        (let* ((_table65649_ (&raw-table-table _tab65644_))
               (_h65651_ (symbolic-hash _key65645_))
               (_size65654_ (vector-length _table65649_))
               (_entries65657_ (fxquotient _size65654_ '2))
               (_start65660_
                (fxarithmetic-shift-left
                 (fxmodulo _h65651_ _entries65657_)
                 '1)))
          (let _loop65664_ ((_probe65667_ _start65660_)
                            (_i65669_ '1)
                            (_deleted65671_ '#f))
            (let ((_k65674_ (vector-ref _table65649_ _probe65667_)))
              (if (eq? _k65674_ (macro-unused-obj))
                  (if _deleted65671_
                      (begin
                        (vector-set! _table65649_ _deleted65671_ _key65645_)
                        (vector-set!
                         _table65649_
                         (fx+ _deleted65671_ '1)
                         _value65646_)
                        ((lambda ()
                           (&raw-table-count-set!
                            _tab65644_
                            (fx+ (&raw-table-count _tab65644_) '1)))))
                      (begin
                        (vector-set! _table65649_ _probe65667_ _key65645_)
                        (vector-set!
                         _table65649_
                         (fx+ _probe65667_ '1)
                         _value65646_)
                        ((lambda ()
                           (&raw-table-free-set!
                            _tab65644_
                            (fx- (&raw-table-free _tab65644_) '1))
                           (&raw-table-count-set!
                            _tab65644_
                            (fx+ (&raw-table-count _tab65644_) '1))))))
                  (if (eq? _k65674_ (macro-deleted-obj))
                      (_loop65664_
                       (let ((_next-probe65679_
                              (fx+ _start65660_
                                   _i65669_
                                   (fx* _i65669_ _i65669_))))
                         (fxmodulo _next-probe65679_ _size65654_))
                       (fx+ _i65669_ '1)
                       (let ((_$e65682_ _deleted65671_))
                         (if _$e65682_ _$e65682_ _probe65667_)))
                      (if (eq? _key65645_ _k65674_)
                          (begin
                            (vector-set! _table65649_ _probe65667_ _key65645_)
                            (vector-set!
                             _table65649_
                             (fx+ _probe65667_ '1)
                             _value65646_))
                          (_loop65664_
                           (let ((_next-probe65685_
                                  (fx+ _start65660_
                                       _i65669_
                                       (fx* _i65669_ _i65669_))))
                             (fxmodulo _next-probe65685_ _size65654_))
                           (fx+ _i65669_ '1)
                           _deleted65671_)))))))))
    (define symbolic-table-delete!
      (lambda (_tab65605_ _key65607_)
        (let* ((_table65610_ (&raw-table-table _tab65605_))
               (_h65613_ (symbolic-hash _key65607_))
               (_size65616_ (vector-length _table65610_))
               (_entries65619_ (fxquotient _size65616_ '2))
               (_start65622_
                (fxarithmetic-shift-left
                 (fxmodulo _h65613_ _entries65619_)
                 '1)))
          (let _loop65626_ ((_probe65629_ _start65622_) (_i65631_ '1))
            (let ((_k65634_ (vector-ref _table65610_ _probe65629_)))
              (if (eq? _k65634_ (macro-unused-obj))
                  '#!void
                  (if (eq? _k65634_ (macro-deleted-obj))
                      (_loop65626_
                       (let ((_next-probe65637_
                              (fx+ _start65622_
                                   _i65631_
                                   (fx* _i65631_ _i65631_))))
                         (fxmodulo _next-probe65637_ _size65616_))
                       (fx+ _i65631_ '1))
                      (if (eq? _key65607_ _k65634_)
                          (begin
                            (vector-set!
                             _table65610_
                             _probe65629_
                             (macro-deleted-obj))
                            (vector-set!
                             _table65610_
                             (fx+ _probe65629_ '1)
                             (macro-absent-obj))
                            ((lambda ()
                               (&raw-table-count-set!
                                _tab65605_
                                (fx- (&raw-table-count _tab65605_) '1)))))
                          (_loop65626_
                           (let ((_next-probe65641_
                                  (fx+ _start65622_
                                       _i65631_
                                       (fx* _i65631_ _i65631_))))
                             (fxmodulo _next-probe65641_ _size65616_))
                           (fx+ _i65631_ '1))))))))))
    (define make-string-table__%
      (lambda (_size-hint65594_)
        (make-raw-table _size-hint65594_ string-hash ##string=?)))
    (define make-string-table__0
      (lambda ()
        (let ((_size-hint65601_ '#f))
          (make-string-table__% _size-hint65601_))))
    (define make-string-table
      (lambda _g70655_
        (let ((_g70654_ (##length _g70655_)))
          (cond ((##fx= _g70654_ 0)
                 (apply (lambda () (make-string-table__0)) _g70655_))
                ((##fx= _g70654_ 1)
                 (apply (lambda (_size-hint65603_)
                          (make-string-table__% _size-hint65603_))
                        _g70655_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-string-table
                  _g70655_))))))
    (define string-table-ref
      (lambda (_tab65551_ _key65552_ _default65553_)
        (let* ((_table65556_ (&raw-table-table _tab65551_))
               (_h65558_ (##string=?-hash _key65552_))
               (_size65561_ (vector-length _table65556_))
               (_entries65564_ (fxquotient _size65561_ '2))
               (_start65567_
                (fxarithmetic-shift-left
                 (fxmodulo _h65558_ _entries65564_)
                 '1)))
          (let _loop65571_ ((_probe65574_ _start65567_)
                            (_i65576_ '1)
                            (_deleted65578_ '#f))
            (let ((_k65581_ (vector-ref _table65556_ _probe65574_)))
              (if (eq? _k65581_ (macro-unused-obj))
                  _default65553_
                  (if (eq? _k65581_ (macro-deleted-obj))
                      (_loop65571_
                       (let ((_next-probe65584_
                              (fx+ _start65567_
                                   _i65576_
                                   (fx* _i65576_ _i65576_))))
                         (fxmodulo _next-probe65584_ _size65561_))
                       (fx+ _i65576_ '1)
                       (let ((_$e65587_ _deleted65578_))
                         (if _$e65587_ _$e65587_ _probe65574_)))
                      (if (##string=? _key65552_ _k65581_)
                          (vector-ref _table65556_ (fx+ _probe65574_ '1))
                          (_loop65571_
                           (let ((_next-probe65590_
                                  (fx+ _start65567_
                                       _i65576_
                                       (fx* _i65576_ _i65576_))))
                             (fxmodulo _next-probe65590_ _size65561_))
                           (fx+ _i65576_ '1)
                           _deleted65578_)))))))))
    (define string-table-set!
      (lambda (_tab65547_ _key65548_ _value65549_)
        (if (fx< (&raw-table-free _tab65547_)
                 (fxquotient (vector-length (&raw-table-table _tab65547_)) '4))
            (__raw-table-rehash! _tab65547_)
            '#!void)
        (__string-table-set! _tab65547_ _key65548_ _value65549_)))
    (define __string-table-set!
      (lambda (_tab65503_ _key65504_ _value65505_)
        (let* ((_table65508_ (&raw-table-table _tab65503_))
               (_h65510_ (##string=?-hash _key65504_))
               (_size65513_ (vector-length _table65508_))
               (_entries65516_ (fxquotient _size65513_ '2))
               (_start65519_
                (fxarithmetic-shift-left
                 (fxmodulo _h65510_ _entries65516_)
                 '1)))
          (let _loop65523_ ((_probe65526_ _start65519_)
                            (_i65528_ '1)
                            (_deleted65530_ '#f))
            (let ((_k65533_ (vector-ref _table65508_ _probe65526_)))
              (if (eq? _k65533_ (macro-unused-obj))
                  (if _deleted65530_
                      (begin
                        (vector-set! _table65508_ _deleted65530_ _key65504_)
                        (vector-set!
                         _table65508_
                         (fx+ _deleted65530_ '1)
                         _value65505_)
                        ((lambda ()
                           (&raw-table-count-set!
                            _tab65503_
                            (fx+ (&raw-table-count _tab65503_) '1)))))
                      (begin
                        (vector-set! _table65508_ _probe65526_ _key65504_)
                        (vector-set!
                         _table65508_
                         (fx+ _probe65526_ '1)
                         _value65505_)
                        ((lambda ()
                           (&raw-table-free-set!
                            _tab65503_
                            (fx- (&raw-table-free _tab65503_) '1))
                           (&raw-table-count-set!
                            _tab65503_
                            (fx+ (&raw-table-count _tab65503_) '1))))))
                  (if (eq? _k65533_ (macro-deleted-obj))
                      (_loop65523_
                       (let ((_next-probe65538_
                              (fx+ _start65519_
                                   _i65528_
                                   (fx* _i65528_ _i65528_))))
                         (fxmodulo _next-probe65538_ _size65513_))
                       (fx+ _i65528_ '1)
                       (let ((_$e65541_ _deleted65530_))
                         (if _$e65541_ _$e65541_ _probe65526_)))
                      (if (##string=? _key65504_ _k65533_)
                          (begin
                            (vector-set! _table65508_ _probe65526_ _key65504_)
                            (vector-set!
                             _table65508_
                             (fx+ _probe65526_ '1)
                             _value65505_))
                          (_loop65523_
                           (let ((_next-probe65544_
                                  (fx+ _start65519_
                                       _i65528_
                                       (fx* _i65528_ _i65528_))))
                             (fxmodulo _next-probe65544_ _size65513_))
                           (fx+ _i65528_ '1)
                           _deleted65530_)))))))))
    (define string-table-delete!
      (lambda (_tab65464_ _key65466_)
        (let* ((_table65469_ (&raw-table-table _tab65464_))
               (_h65472_ (##string=?-hash _key65466_))
               (_size65475_ (vector-length _table65469_))
               (_entries65478_ (fxquotient _size65475_ '2))
               (_start65481_
                (fxarithmetic-shift-left
                 (fxmodulo _h65472_ _entries65478_)
                 '1)))
          (let _loop65485_ ((_probe65488_ _start65481_) (_i65490_ '1))
            (let ((_k65493_ (vector-ref _table65469_ _probe65488_)))
              (if (eq? _k65493_ (macro-unused-obj))
                  '#!void
                  (if (eq? _k65493_ (macro-deleted-obj))
                      (_loop65485_
                       (let ((_next-probe65496_
                              (fx+ _start65481_
                                   _i65490_
                                   (fx* _i65490_ _i65490_))))
                         (fxmodulo _next-probe65496_ _size65475_))
                       (fx+ _i65490_ '1))
                      (if (##string=? _key65466_ _k65493_)
                          (begin
                            (vector-set!
                             _table65469_
                             _probe65488_
                             (macro-deleted-obj))
                            (vector-set!
                             _table65469_
                             (fx+ _probe65488_ '1)
                             (macro-absent-obj))
                            ((lambda ()
                               (&raw-table-count-set!
                                _tab65464_
                                (fx- (&raw-table-count _tab65464_) '1)))))
                          (_loop65485_
                           (let ((_next-probe65500_
                                  (fx+ _start65481_
                                       _i65490_
                                       (fx* _i65490_ _i65490_))))
                             (fxmodulo _next-probe65500_ _size65475_))
                           (fx+ _i65490_ '1))))))))))))
