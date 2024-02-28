(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1709111635)
  (begin
    (define type-flag-opaque '1)
    (define type-flag-extensible '2)
    (define type-flag-macros '4)
    (define type-flag-concrete '8)
    (define type-flag-id '16)
    (define class-type-flag-struct '1024)
    (define class-type-flag-sealed '2048)
    (define class-type-flag-metaclass '4096)
    (define class::t.id 'gerbil#class::t)
    (define class::t
      (let* ((_slots64082_
              '(id name
                   super
                   flags
                   fields
                   precedence-list
                   slot-vector
                   slot-table
                   properties
                   constructor
                   methods))
             (_slot-vector64084_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots64082_))))
             (_slot-table64091_
              (let ((_slot-table64086_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot64088_ _field64089_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table64086_
                      _slot64088_
                      _field64089_))
                   (let ((__tmp64232 (symbol->keyword _slot64088_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table64086_
                      __tmp64232
                      _field64089_)))
                 _slots64082_
                 (let ((__tmp64233 (length _slots64082_)))
                   (declare (not safe))
                   (iota__1 __tmp64233 '1)))
                _slot-table64086_))
             (_flags64093_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields64099_
              (list->vector
               (apply append
                      (map (lambda (_g6409464096_) (list _g6409464096_ '5 '#f))
                           (let ()
                             (declare (not safe))
                             (drop _slots64082_ '5))))))
             (_properties64101_
              (let ((__tmp64236
                     (let ((__tmp64237
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots64082_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp64237)))
                    (__tmp64234
                     (let ((__tmp64235
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp64235 '()))))
                (declare (not safe))
                (cons __tmp64236 __tmp64234)))
             (_t64103_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags64093_
                 ##type-type
                 _fields64099_
                 '()
                 _slot-vector64084_
                 _slot-table64091_
                 _properties64101_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t64103_ _t64103_))
        _t64103_))
    (define class-type?
      (lambda (_obj64080_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj64080_ class::t.id))))
    (define class-type=?
      (lambda (_x64077_ _y64078_)
        (let ((__tmp64239 (##structure-ref _x64077_ '1 class::t '#f))
              (__tmp64238 (##structure-ref _y64078_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp64239 __tmp64238))))
    (define type-opaque?
      (lambda (_type64075_)
        (let ((__tmp64240
               (let ((__tmp64241
                      (let ()
                        (declare (not safe))
                        (##type-flags _type64075_))))
                 (declare (not safe))
                 (##fxand __tmp64241 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp64240 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type64073_)
        (let ((__tmp64242
               (let ((__tmp64243
                      (let ()
                        (declare (not safe))
                        (##type-flags _type64073_))))
                 (declare (not safe))
                 (##fxand __tmp64243 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp64242 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type64071_)
        (let ((__tmp64244
               (let ((__tmp64245
                      (let ()
                        (declare (not safe))
                        (##type-flags _type64071_))))
                 (declare (not safe))
                 (##fxand __tmp64245 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp64244 '0))))
    (define class-type-struct?
      (lambda (_klass64069_)
        (let ((__tmp64246
               (let ((__tmp64247
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64069_))))
                 (declare (not safe))
                 (##fxand __tmp64247 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp64246 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass64067_)
        (let ((__tmp64248
               (let ((__tmp64249
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64067_))))
                 (declare (not safe))
                 (##fxand __tmp64249 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp64248 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass64065_)
        (let ((__tmp64250
               (let ((__tmp64251
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64065_))))
                 (declare (not safe))
                 (##fxand __tmp64251 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp64250 class-type-flag-metaclass))))
    (define properties-form
      (lambda (_properties64031_)
        (map (lambda (_e6403264034_)
               (let* ((_g6403664043_ _e6403264034_)
                      (_E6403864047_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (error '"No clause matching" _g6403664043_))))
                      (_K6403964053_
                       (lambda (_val64050_ _key64051_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key64051_ 'direct-supers:))
                             (let ((__tmp64252 (map class-type-id _val64050_)))
                               (declare (not safe))
                               (cons _key64051_ __tmp64252))
                             (let ()
                               (declare (not safe))
                               (cons _key64051_ _val64050_))))))
                 (if (let () (declare (not safe)) (##pair? _g6403664043_))
                     (let ((_hd6404064056_
                            (let ()
                              (declare (not safe))
                              (##car _g6403664043_)))
                           (_tl6404164058_
                            (let ()
                              (declare (not safe))
                              (##cdr _g6403664043_))))
                       (let* ((_key64061_ _hd6404064056_)
                              (_val64063_ _tl6404164058_))
                         (declare (not safe))
                         (_K6403964053_ _val64063_ _key64061_)))
                     (let () (declare (not safe)) (_E6403864047_)))))
             _properties64031_)))
    (define make-class-type-descriptor
      (lambda (_type-id63930_
               _type-name63931_
               _type-super63932_
               _precedence-list63933_
               _slot-vector63934_
               _properties63935_
               _constructor63936_
               _slot-table63937_
               _methods63938_)
        (letrec ((_make-props!63940_
                  (lambda (_key64000_)
                    (letrec* ((_ht64002_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_put-slots!64003_
                               (lambda (_ht64024_ _slots64025_)
                                 (for-each
                                  (lambda (_g6402664028_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _ht64024_
                                       _g6402664028_
                                       '#t)))
                                  _slots64025_)))
                              (_put-alist!64004_
                               (lambda (_ht64013_ _key64014_ _alist64015_)
                                 (let ((_$e64017_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq__0
                                           _key64014_
                                           _alist64015_))))
                                   (if _$e64017_
                                       ((lambda (_g6401964021_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!64003_
                                             _ht64013_
                                             _g6401964021_)))
                                        _$e64017_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!64004_
                         _ht64002_
                         _key64000_
                         _properties63935_))
                      (for-each
                       (lambda (_mixin64006_)
                         (let ((_alist64008_
                                (##structure-ref
                                 _mixin64006_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq__0 'transparent: _alist64008_))
                                   (let ((__tmp64254
                                          (let ()
                                            (declare (not safe))
                                            (assgetq__0
                                             _key64000_
                                             _alist64008_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp64254)))
                               (let ((__tmp64253
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin64006_))))
                                 (declare (not safe))
                                 (_put-slots!64003_ _ht64002_ __tmp64253))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!64004_
                                  _ht64002_
                                  _key64000_
                                  _alist64008_)))))
                       _precedence-list63933_)
                      _ht64002_))))
          (let* ((_transparent?63942_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'transparent: _properties63935_)))
                 (_all-slots-printable?63947_
                  (let ((_$e63944_ _transparent?63942_))
                    (if _$e63944_
                        _$e63944_
                        (let ((__tmp64255
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'print: _properties63935_))))
                          (declare (not safe))
                          (eq? '#t __tmp64255)))))
                 (_printable63949_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?63947_))
                      (let ()
                        (declare (not safe))
                        (_make-props!63940_ 'print:))
                      '#f))
                 (_all-slots-equalable?63954_
                  (let ((_$e63951_ _transparent?63942_))
                    (if _$e63951_
                        _$e63951_
                        (let ((__tmp64256
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'equal: _properties63935_))))
                          (declare (not safe))
                          (eq? '#t __tmp64256)))))
                 (_equalable63956_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?63954_))
                      (let ()
                        (declare (not safe))
                        (_make-props!63940_ 'equal:))
                      '#f))
                 (_first-new-field63958_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super63932_
                         'gerbil#class::t))
                      (let ((__tmp64257
                             (##structure-ref
                              _type-super63932_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp64257))
                      '1))
                 (_field-info-length63960_
                  (let ((__tmp64258
                         (let ((__tmp64259
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector63934_))))
                           (declare (not safe))
                           (##fx- __tmp64259 _first-new-field63958_))))
                    (declare (not safe))
                    (##fx* '3 __tmp64258)))
                 (_field-info63962_ (make-vector _field-info-length63960_ '#f))
                 (_struct?63964_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'struct: _properties63935_)))
                 (_final?63966_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'final: _properties63935_)))
                 (_metaclass63974_
                  (let ((_metaclass6396763969_
                         (let ()
                           (declare (not safe))
                           (assgetq__0 'metaclass: _properties63935_))))
                    (if _metaclass6396763969_
                        (let ((_metaclass63972_ _metaclass6396763969_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass63972_
                                 'gerbil#class::t))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (error '"metaclass is not a class type"
                                       'class:
                                       _type-id63930_
                                       'metaclass:
                                       _metaclass63972_)))
                          _metaclass63972_)
                        '#f)))
                 (_opaque?63979_
                  (let ((_$e63976_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?63954_))))
                    (if _$e63976_
                        _$e63976_
                        (if _type-super63932_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super63932_))
                            '#f))))
                 (_type-flags63981_
                  (let ((__tmp64263 (if _final?63966_ '0 type-flag-extensible))
                        (__tmp64262 (if _opaque?63979_ type-flag-opaque '0))
                        (__tmp64261
                         (if _struct?63964_ class-type-flag-struct '0))
                        (__tmp64260
                         (if _metaclass63974_ class-type-flag-metaclass '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp64263
                             __tmp64262
                             __tmp64261
                             __tmp64260))))
            (let _loop63984_ ((_i63986_ _first-new-field63958_) (_j63987_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j63987_ _field-info-length63960_))
                  (let* ((_slot63989_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector63934_ _i63986_)))
                         (_flags63997_
                          (if _transparent?63942_
                              '0
                              (let ((__tmp64265
                                     (if (or _all-slots-printable?63947_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _printable63949_
                                                _slot63989_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp64264
                                     (if (or _all-slots-equalable?63954_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _equalable63956_
                                                _slot63989_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp64265 __tmp64264)))))
                    (vector-set! _field-info63962_ _j63987_ _slot63989_)
                    (vector-set!
                     _field-info63962_
                     (let () (declare (not safe)) (##fx+ _j63987_ '1))
                     _flags63997_)
                    (let ((__tmp64267
                           (let () (declare (not safe)) (##fx+ _i63986_ '1)))
                          (__tmp64266
                           (let () (declare (not safe)) (##fx+ _j63987_ '3))))
                      (declare (not safe))
                      (_loop63984_ __tmp64267 __tmp64266)))
                  '#!void))
            (if _metaclass63974_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass63974_
                   _type-id63930_
                   _type-name63931_
                   _type-flags63981_
                   _type-super63932_
                   _field-info63962_
                   _precedence-list63933_
                   _slot-vector63934_
                   _slot-table63937_
                   _properties63935_
                   _constructor63936_
                   _methods63938_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id63930_
                   _type-name63931_
                   _type-flags63981_
                   _type-super63932_
                   _field-info63962_
                   _precedence-list63933_
                   _slot-vector63934_
                   _slot-table63937_
                   _properties63935_
                   _constructor63936_
                   _methods63938_)))))))
    (define class-type-id
      (lambda (_klass63928_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63928_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass63926_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63926_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass63923_ _val63924_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63923_ _val63924_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass63918_ _val63920_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63918_
           _val63920_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass63916_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63916_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass63914_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63914_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass63911_ _val63912_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63911_ _val63912_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass63906_ _val63908_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63906_
           _val63908_
           '2
           class::t
           'name))))
    (define class-type-super
      (lambda (_klass63904_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63904_ '3 class::t 'super))))
    (define &class-type-super
      (lambda (_klass63902_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63902_ '3 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass63899_ _val63900_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63899_ _val63900_ '3 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass63894_ _val63896_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63894_
           _val63896_
           '3
           class::t
           'super))))
    (define class-type-flags
      (lambda (_klass63892_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63892_ '4 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass63890_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63890_ '4 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass63887_ _val63888_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63887_ _val63888_ '4 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass63882_ _val63884_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63882_
           _val63884_
           '4
           class::t
           'flags))))
    (define class-type-fields
      (lambda (_klass63880_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63880_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass63878_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63878_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass63875_ _val63876_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63875_ _val63876_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass63870_ _val63872_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63870_
           _val63872_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass63868_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63868_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass63866_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass63866_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass63863_ _val63864_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass63863_
           _val63864_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass63858_ _val63860_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63858_
           _val63860_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass63856_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63856_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass63854_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63854_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass63851_ _val63852_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass63851_
           _val63852_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass63846_ _val63848_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63846_
           _val63848_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass63844_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63844_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass63842_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63842_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass63839_ _val63840_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63839_ _val63840_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass63834_ _val63836_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63834_
           _val63836_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass63832_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63832_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass63830_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63830_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass63827_ _val63828_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63827_ _val63828_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass63822_ _val63824_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63822_
           _val63824_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass63820_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63820_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass63818_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63818_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass63815_ _val63816_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass63815_
           _val63816_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass63810_ _val63812_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63810_
           _val63812_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass63808_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass63808_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass63806_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass63806_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass63803_ _val63804_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass63803_ _val63804_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass63798_ _val63800_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63798_
           _val63800_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass63796_)
        (cdr (vector->list (##structure-ref _klass63796_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass63794_)
        (let ((__tmp64268
               (let ((__tmp64269
                      (##structure-ref _klass63794_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp64269))))
          (declare (not safe))
          (##fx- __tmp64268 '1))))
    (define class-type-seal!
      (lambda (_klass63792_)
        (let ((__tmp64270
               (let ((__tmp64271
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass63792_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp64271))))
          (declare (not safe))
          (##structure-set!
           _klass63792_
           __tmp64270
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass63790_)
        (let ((__tmp64272
               (let ((__tmp64273
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass63790_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp64273))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass63790_
           __tmp64272
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct63781_ _maybe-super-struct63782_)
        (let ((_maybe-super-struct-id63784_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct63782_))))
          (let _lp63786_ ((_super-struct63788_ _maybe-sub-struct63781_))
            (if (let () (declare (not safe)) (not _super-struct63788_))
                '#f
                (if (let ((__tmp64275
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct63788_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id63784_ __tmp64275))
                    '#t
                    (let ((__tmp64274
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct63788_))))
                      (declare (not safe))
                      (_lp63786_ __tmp64274))))))))
    (define base-struct/1
      (lambda (_klass63779_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63779_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass63779_))
                _klass63779_
                (let () (declare (not safe)) (##type-super _klass63779_)))
            (if (let () (declare (not safe)) (not _klass63779_))
                '#f
                (let ()
                  (declare (not safe))
                  (error '"not a class or false" _klass63779_))))))
    (define base-struct/2
      (lambda (_klass163767_ _klass263768_)
        (let ((_s163770_
               (let () (declare (not safe)) (base-struct/1 _klass163767_)))
              (_s263771_
               (let () (declare (not safe)) (base-struct/1 _klass263768_))))
          (if (or (let () (declare (not safe)) (not _s163770_))
                  (and _s263771_
                       (let ()
                         (declare (not safe))
                         (substruct? _s163770_ _s263771_))))
              _s263771_
              (if (or (let () (declare (not safe)) (not _s263771_))
                      (and _s163770_
                           (let ()
                             (declare (not safe))
                             (substruct? _s263771_ _s163770_))))
                  _s163770_
                  (let ()
                    (declare (not safe))
                    (error '"bad mixin: incompatible struct bases"
                           _klass163767_
                           _klass263768_
                           _s163770_
                           _s263771_)))))))
    (define base-struct/list
      (lambda (_all-supers63651_)
        (let* ((_all-supers6365263677_ _all-supers63651_)
               (_E6365763681_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _all-supers6365263677_)))))
          (let ((_K6367563764_ (lambda () '#f))
                (_K6367263750_
                 (lambda (_x63748_)
                   (let () (declare (not safe)) (base-struct/1 _x63748_))))
                (_K6366763727_
                 (lambda (_y63724_ _x63725_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x63725_ _y63724_))))
                (_K6365863688_
                 (lambda (_y63685_ _x63686_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x63686_ _y63685_)))))
            (let* ((___match6422664227_
                    (lambda (_hd6365963691_ _tl6366063693_)
                      (let ((_x63696_ _hd6365963691_))
                        (letrec ((_splice-rest6366263698_
                                  (lambda (_rest6366663705_ _y63707_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest6366663705_))
                                        (let ()
                                          (declare (not safe))
                                          (_K6365863688_ _y63707_ _x63696_))
                                        (let ()
                                          (declare (not safe))
                                          (_E6365763681_)))))
                                 (_splice-try6366463700_
                                  (lambda (_hd6366563709_
                                           _rest6366663711_
                                           _y6366163712_)
                                    (let ((_y63715_ _hd6366563709_))
                                      (let ((__tmp64277
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest6366663711_)))
                                            (__tmp64276
                                             (let ()
                                               (declare (not safe))
                                               (cons _y63715_ _y6366163712_))))
                                        (declare (not safe))
                                        (_splice-loop6366363702_
                                         __tmp64277
                                         __tmp64276)))))
                                 (_splice-loop6366363702_
                                  (lambda (_rest6366663717_ _y6366163718_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest6366663717_))
                                        (let ((__tmp64279
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest6366663717_))))
                                          (declare (not safe))
                                          (_splice-try6366463700_
                                           __tmp64279
                                           _rest6366663717_
                                           _y6366163718_))
                                        (let ((__tmp64278
                                               (reverse _y6366163718_)))
                                          (declare (not safe))
                                          (_splice-rest6366263698_
                                           _rest6366663717_
                                           __tmp64278))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop6366363702_ _tl6366063693_ '()))))))
                   (_try-match6365463760_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers6365263677_))
                          (let ((_tl6367463755_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers6365263677_)))
                                (_hd6367363753_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers6365263677_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl6367463755_))
                                (let ((_x63758_ _hd6367363753_))
                                  (declare (not safe))
                                  (base-struct/1 _x63758_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl6367463755_))
                                    (let ((_tl6367163739_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl6367463755_)))
                                          (_hd6367063737_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl6367463755_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl6367163739_))
                                          (let ((_x63735_ _hd6367363753_)
                                                (_y63742_ _hd6367063737_))
                                            (let ()
                                              (declare (not safe))
                                              (_K6366763727_
                                               _y63742_
                                               _x63735_)))
                                          (___match6422664227_
                                           _hd6367363753_
                                           _tl6367463755_)))
                                    (___match6422664227_
                                     _hd6367363753_
                                     _tl6367463755_))))
                          (let () (declare (not safe)) (_E6365763681_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers6365263677_))
                  (let () (declare (not safe)) (_K6367563764_))
                  (let () (declare (not safe)) (_try-match6365463760_))))))))
    (define base-struct
      (lambda _all-supers63649_
        (let () (declare (not safe)) (base-struct/list _all-supers63649_))))
    (define find-super-constructor
      (lambda (_super63601_)
        (let _lp63603_ ((_rest63605_ _super63601_) (_constructor63606_ '#f))
          (let* ((_rest6360763615_ _rest63605_)
                 (_else6360963623_ (lambda () _constructor63606_))
                 (_K6361163637_
                  (lambda (_rest63626_ _hd63627_)
                    (let ((_$e63629_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd63627_
                              '10
                              class::t
                              '#f))))
                      (if _$e63629_
                          ((lambda (_xconstructor63632_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor63606_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor63606_
                                            _xconstructor63632_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp63603_ _rest63626_ _xconstructor63632_))
                                 (let ()
                                   (declare (not safe))
                                   (error '"conflicting implicit constructors"
                                          _constructor63606_
                                          _xconstructor63632_))))
                           _$e63629_)
                          (let ()
                            (declare (not safe))
                            (_lp63603_ _rest63626_ _constructor63606_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6360763615_))
                (let ((_hd6361263640_
                       (let () (declare (not safe)) (##car _rest6360763615_)))
                      (_tl6361363642_
                       (let () (declare (not safe)) (##cdr _rest6360763615_))))
                  (let* ((_hd63645_ _hd6361263640_)
                         (_rest63647_ _tl6361363642_))
                    (declare (not safe))
                    (_K6361163637_ _rest63647_ _hd63645_)))
                (let () (declare (not safe)) (_else6360963623_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list63577_ _direct-slots63578_)
        (let* ((_next-slot63580_ '1)
               (_slot-table63582_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_r-slots63584_ '(__class))
               (_process-slot63588_
                (lambda (_slot63586_)
                  (if (let () (declare (not safe)) (symbol? _slot63586_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"invalid slot name" _slot63586_)))
                  (if (let ((__tmp64281
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _slot-table63582_
                                _slot63586_
                                absent-value))))
                        (declare (not safe))
                        (eq? __tmp64281 absent-value))
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table63582_
                           _slot63586_
                           _next-slot63580_))
                        (let ((__tmp64280 (symbol->keyword _slot63586_)))
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table63582_
                           __tmp64280
                           _next-slot63580_))
                        (set! _r-slots63584_
                              (let ()
                                (declare (not safe))
                                (cons _slot63586_ _r-slots63584_)))
                        (set! _next-slot63580_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot63580_ '1))))
                      '#!void)))
               (_process-slots63594_
                (lambda (_g6358963591_)
                  (for-each _process-slot63588_ _g6358963591_))))
          (for-each
           (lambda (_mixin63597_)
             (let ((__tmp64282
                    (let ((__tmp64283
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin63597_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq__% 'direct-slots: __tmp64283 '()))))
               (declare (not safe))
               (_process-slots63594_ __tmp64282)))
           (reverse _class-precedence-list63577_))
          (let ()
            (declare (not safe))
            (_process-slots63594_ _direct-slots63578_))
          (let ((_slot-vector63599_ (list->vector (reverse _r-slots63584_))))
            (values _slot-vector63599_ _slot-table63582_)))))
    (define make-class-type
      (lambda (_id63539_
               _name63540_
               _direct-supers63541_
               _direct-slots63542_
               _properties63543_
               _constructor63544_)
        (let ((_$e63549_
               (let ((__tmp64284
                      (lambda (_$obj63546_)
                        (let ((__tmp64285
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj63546_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp64285)))))
                 (declare (not safe))
                 (find __tmp64284 _direct-supers63541_))))
          (if _$e63549_
              ((lambda (_g6355163553_)
                 (let ()
                   (declare (not safe))
                   (error '"Illegal super class; not a class descriptor"
                          _g6355163553_)))
               _$e63549_)
              (let ((_$e63556_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers63541_))))
                (if _$e63556_
                    ((lambda (_g6355863560_)
                       (let ()
                         (declare (not safe))
                         (error '"Cannot extend final class" _g6355863560_)))
                     _$e63556_)
                    '#!void))))
        (let ((_g64286_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers63541_))))
          (begin
            (let ((_g64287_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g64286_) (##vector-length _g64286_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g64287_ 2)))
                  (error "Context expects 2 values" _g64287_)))
            (let ((_precedence-list63563_
                   (let () (declare (not safe)) (##vector-ref _g64286_ 0)))
                  (_struct-super63564_
                   (let () (declare (not safe)) (##vector-ref _g64286_ 1))))
              (let ((_g64288_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list63563_
                        _direct-slots63542_))))
                (begin
                  (let ((_g64289_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g64288_)
                               (##vector-length _g64288_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g64289_ 2)))
                        (error "Context expects 2 values" _g64289_)))
                  (let ((_slot-vector63566_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g64288_ 0)))
                        (_slot-table63567_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g64288_ 1))))
                    (let* ((_properties63569_
                            (let ((__tmp64292
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots63542_)))
                                  (__tmp64290
                                   (let ((__tmp64291
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers63541_))))
                                     (declare (not safe))
                                     (cons __tmp64291 _properties63543_))))
                              (declare (not safe))
                              (cons __tmp64292 __tmp64290)))
                           (_constructor*63574_
                            (let ((_$e63571_ _constructor63544_))
                              (if _$e63571_
                                  _$e63571_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers63541_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id63539_
                         _name63540_
                         _struct-super63564_
                         _precedence-list63563_
                         _slot-vector63566_
                         _properties63569_
                         _constructor*63574_
                         _slot-table63567_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass63537_)
        (let ((__tmp64293
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass63537_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass63537_ __tmp64293))))
    (define compute-precedence-list
      (lambda (_direct-supers63535_)
        (let ()
          (declare (not safe))
          (c4-linearize
           '()
           _direct-supers63535_
           'get-precedence-list:
           class-precedence-list
           'struct:
           class-type-struct?
           'eq:
           eq?
           'get-name:
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass63519_)
        (let ((_tid63521_
               (let () (declare (not safe)) (##type-id _klass63519_))))
          (if (let () (declare (not safe)) (class-type-final? _klass63519_))
              (lambda (_g6352263524_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g6352263524_ _tid63521_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass63519_))
                  (lambda (_g6352663528_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g6352663528_ _tid63521_)))
                  (lambda (_g6353063532_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass63519_ _g6353063532_))))))))
    (define if-class-slot-field
      (lambda (_klass63508_
               _slot63509_
               _if-final63510_
               _if-struct63511_
               _if-struct-field63512_
               _if-class-slot63513_)
        (let ((_field63515_
               (let ((__tmp64294
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass63508_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (symbolic-table-ref __tmp64294 _slot63509_ '#f))))
          (if (let () (declare (not safe)) (not _field63515_))
              (let ()
                (declare (not safe))
                (error '"unknown slot"
                       'class:
                       _klass63508_
                       'slot:
                       _slot63509_))
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass63508_))
                  (_if-final63510_ _klass63508_ _slot63509_ _field63515_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass63508_))
                      (_if-struct63511_ _klass63508_ _slot63509_ _field63515_)
                      (if (let ((_strukt63517_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass63508_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt63517_
                                    'gerbil#class::t))
                                 (let ((__tmp64295
                                        (let ((__tmp64296
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt63517_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp64296))))
                                   (declare (not safe))
                                   (##fx< _field63515_ __tmp64295))))
                          (_if-struct-field63512_
                           _klass63508_
                           _slot63509_
                           _field63515_)
                          (_if-class-slot63513_
                           _klass63508_
                           _slot63509_
                           _field63515_))))))))
    (define make-class-slot-accessor
      (lambda (_klass63505_ _slot63506_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63505_
           _slot63506_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass63502_ _slot63503_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63502_
           _slot63503_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass63499_ _slot63500_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63499_
           _slot63500_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass63496_ _slot63497_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63496_
           _slot63497_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object63480_ _class63481_ _slot63482_)
        (apply error
               '"not an instance"
               'object:
               _object63480_
               'class:
               _class63481_
               (if _slot63482_
                   (let ((__tmp64297
                          (let ()
                            (declare (not safe))
                            (cons _slot63482_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp64297))
                   '()))))
    (define not-an-instance__0
      (lambda (_object63487_ _class63488_)
        (let ((_slot63490_ '#f))
          (declare (not safe))
          (not-an-instance__% _object63487_ _class63488_ _slot63490_))))
    (define not-an-instance
      (lambda _g64299_
        (let ((_g64298_ (let () (declare (not safe)) (##length _g64299_))))
          (cond ((let () (declare (not safe)) (##fx= _g64298_ 2))
                 (apply (lambda (_object63487_ _class63488_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object63487_ _class63488_)))
                        _g64299_))
                ((let () (declare (not safe)) (##fx= _g64298_ 3))
                 (apply (lambda (_object63492_ _class63493_ _slot63494_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object63492_
                             _class63493_
                             _slot63494_)))
                        _g64299_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g64299_))))))
    (define make-final-slot-accessor
      (lambda (_klass63473_ _slot63474_ _field63475_)
        (lambda (_obj63477_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj63477_
             _field63475_
             _klass63473_
             _slot63474_)))))
    (define make-final-slot-mutator
      (lambda (_klass63466_ _slot63467_ _field63468_)
        (lambda (_obj63470_ _val63471_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj63470_
             _val63471_
             _field63468_
             _klass63466_
             _slot63467_)))))
    (define make-struct-slot-accessor
      (lambda (_klass63460_ _slot63461_ _field63462_)
        (lambda (_obj63464_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj63464_
             _field63462_
             _klass63460_
             _slot63461_)))))
    (define make-struct-slot-mutator
      (lambda (_klass63453_ _slot63454_ _field63455_)
        (lambda (_obj63457_ _val63458_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj63457_
             _val63458_
             _field63455_
             _klass63453_
             _slot63454_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass63447_ _slot63448_ _field63449_)
        (lambda (_obj63451_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj63451_
             _field63449_
             _klass63447_
             _slot63448_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass63440_ _slot63441_ _field63442_)
        (lambda (_obj63444_ _val63445_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj63444_
             _val63445_
             _field63442_
             _klass63440_
             _slot63441_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass63434_ _slot63435_ _field63436_)
        (lambda (_obj63438_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass63434_ _obj63438_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj63438_ _field63436_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj63438_ _klass63434_ _slot63435_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass63427_ _slot63428_ _field63429_)
        (lambda (_obj63431_ _val63432_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass63427_ _obj63431_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj63431_ _field63429_ _val63432_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj63431_ _klass63427_ _slot63428_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass63421_ _slot63422_ _field63423_)
        (lambda (_obj63425_)
          (if (let ((__tmp64300
                     (let () (declare (not safe)) (##type-id _klass63421_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63425_ __tmp64300))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj63425_ _field63423_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass63421_ _obj63425_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj63425_ _slot63422_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj63425_
                     _klass63421_
                     _slot63422_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass63414_ _slot63415_ _field63416_)
        (lambda (_obj63418_ _val63419_)
          (if (let ((__tmp64301
                     (let () (declare (not safe)) (##type-id _klass63414_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63418_ __tmp64301))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj63418_ _field63416_ _val63419_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass63414_ _obj63418_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj63418_ _slot63415_ _val63419_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj63418_
                     _klass63414_
                     _slot63415_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass63408_ _slot63409_ _field63410_)
        (lambda (_obj63412_)
          (if (let ((__tmp64302
                     (let () (declare (not safe)) (##type-id _klass63408_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63412_ __tmp64302))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj63412_ _field63410_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj63412_ _slot63409_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass63401_ _slot63402_ _field63403_)
        (lambda (_obj63405_ _val63406_)
          (if (let ((__tmp64303
                     (let () (declare (not safe)) (##type-id _klass63401_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63405_ __tmp64303))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj63405_ _field63403_ _val63406_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj63405_ _slot63402_ _val63406_))))))
    (define class-slot-offset
      (lambda (_klass63398_ _slot63399_)
        (let ((__tmp64304
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass63398_ '8 class::t '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp64304 _slot63399_ '#f))))
    (define class-slot-ref
      (lambda (_klass63392_ _obj63393_ _slot63394_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass63392_ _obj63393_))
            (let ((_off63396_
                   (let ((__tmp64305 (object-type _obj63393_)))
                     (declare (not safe))
                     (class-slot-offset __tmp64305 _slot63394_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj63393_
               _off63396_
               _klass63392_
               _slot63394_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj63393_ _klass63392_)))))
    (define class-slot-set!
      (lambda (_klass63385_ _obj63386_ _slot63387_ _val63388_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass63385_ _obj63386_))
            (let ((_off63390_
                   (let ((__tmp64306 (object-type _obj63386_)))
                     (declare (not safe))
                     (class-slot-offset __tmp64306 _slot63387_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj63386_
               _val63388_
               _off63390_
               _klass63385_
               _slot63387_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj63386_ _klass63385_)))))
    (define unchecked-field-ref
      (lambda (_obj63382_ _off63383_)
        (let ((__tmp64307
               (let () (declare (not safe)) (##structure-type _obj63382_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj63382_ _off63383_ __tmp64307 '#f))))
    (define unchecked-field-set!
      (lambda (_obj63378_ _off63379_ _val63380_)
        (let ((__tmp64308
               (let () (declare (not safe)) (##structure-type _obj63378_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj63378_
           _val63380_
           _off63379_
           __tmp64308
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj63375_ _slot63376_)
        (let ((__tmp64309
               (let ((__tmp64310
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj63375_))))
                 (declare (not safe))
                 (class-slot-offset __tmp64310 _slot63376_))))
          (declare (not safe))
          (unchecked-field-ref _obj63375_ __tmp64309))))
    (define unchecked-slot-set!
      (lambda (_obj63371_ _slot63372_ _val63373_)
        (let ((__tmp64311
               (let ((__tmp64312
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj63371_))))
                 (declare (not safe))
                 (class-slot-offset __tmp64312 _slot63372_))))
          (declare (not safe))
          (unchecked-field-set! _obj63371_ __tmp64311 _val63373_))))
    (define slot-ref__%
      (lambda (_obj63347_ _slot63348_ _E63349_)
        (if (object? _obj63347_)
            (let* ((_klass63351_ (object-type _obj63347_))
                   (_$e63354_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass63351_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass63351_ _slot63348_))
                        '#f)))
              (if _$e63354_
                  ((lambda (_off63357_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj63347_ _off63357_)))
                   _$e63354_)
                  (_E63349_ _obj63347_ _slot63348_)))
            (_E63349_ _obj63347_ _slot63348_))))
    (define slot-ref__0
      (lambda (_obj63362_ _slot63363_)
        (let ((_E63365_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj63362_ _slot63363_ _E63365_))))
    (define slot-ref
      (lambda _g64314_
        (let ((_g64313_ (let () (declare (not safe)) (##length _g64314_))))
          (cond ((let () (declare (not safe)) (##fx= _g64313_ 2))
                 (apply (lambda (_obj63362_ _slot63363_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj63362_ _slot63363_)))
                        _g64314_))
                ((let () (declare (not safe)) (##fx= _g64313_ 3))
                 (apply (lambda (_obj63367_ _slot63368_ _E63369_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj63367_ _slot63368_ _E63369_)))
                        _g64314_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g64314_))))))
    (define slot-set!__%
      (lambda (_obj63319_ _slot63320_ _val63321_ _E63322_)
        (if (object? _obj63319_)
            (let* ((_klass63324_ (object-type _obj63319_))
                   (_$e63327_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass63324_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass63324_ _slot63320_))
                        '#f)))
              (if _$e63327_
                  ((lambda (_off63330_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj63319_
                        _off63330_
                        _val63321_)))
                   _$e63327_)
                  (_E63322_ _obj63319_ _slot63320_)))
            (_E63322_ _obj63319_ _slot63320_))))
    (define slot-set!__0
      (lambda (_obj63335_ _slot63336_ _val63337_)
        (let ((_E63339_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj63335_ _slot63336_ _val63337_ _E63339_))))
    (define slot-set!
      (lambda _g64316_
        (let ((_g64315_ (let () (declare (not safe)) (##length _g64316_))))
          (cond ((let () (declare (not safe)) (##fx= _g64315_ 3))
                 (apply (lambda (_obj63335_ _slot63336_ _val63337_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj63335_ _slot63336_ _val63337_)))
                        _g64316_))
                ((let () (declare (not safe)) (##fx= _g64315_ 4))
                 (apply (lambda (_obj63341_ _slot63342_ _val63343_ _E63344_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj63341_
                             _slot63342_
                             _val63343_
                             _E63344_)))
                        _g64316_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g64316_))))))
    (define __slot-error
      (lambda (_obj63315_ _slot63316_)
        (let ()
          (declare (not safe))
          (error '"Cannot find slot" 'object: _obj63315_ 'slot: _slot63316_))))
    (define subclass?
      (lambda (_maybe-sub-class63305_ _maybe-super-class63306_)
        (let* ((_maybe-super-class-id63308_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class63306_)))
               (_$e63310_
                (let ((__tmp64317
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class63305_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id63308_ __tmp64317))))
          (if _$e63310_
              _$e63310_
              (let ((__tmp64319
                     (lambda (_super-class63313_)
                       (let ((__tmp64320
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class63313_))))
                         (declare (not safe))
                         (eq? __tmp64320 _maybe-super-class-id63308_))))
                    (__tmp64318
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class63305_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp64319 __tmp64318))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass63302_ _obj63303_)
        (let ((__tmp64321
               (let () (declare (not safe)) (##type-id _klass63302_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj63303_ __tmp64321))))
    (define struct-instance?
      (lambda (_klass63299_ _obj63300_)
        (let ((__tmp64322
               (let () (declare (not safe)) (##type-id _klass63299_))))
          (declare (not safe))
          (##structure-instance-of? _obj63300_ __tmp64322))))
    (define class-instance?
      (lambda (_klass63294_ _obj63295_)
        (if (object? _obj63295_)
            (let ((_type63297_ (object-type _obj63295_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type63297_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type63297_ _klass63294_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass63289_ _k63290_)
        (let ((_obj63292_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass63289_ _k63290_))))
          (let () (declare (not safe)) (object-fill! _obj63292_ '#f))
          _obj63292_)))
    (define object-fill!
      (lambda (_obj63282_ _fill63283_)
        (let _loop63285_ ((_i63287_
                           (let ((__tmp64324
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj63282_))))
                             (declare (not safe))
                             (##fx- __tmp64324 '1))))
          (if (let () (declare (not safe)) (##fx> _i63287_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj63282_
                   _fill63283_
                   _i63287_
                   '#f
                   '#f))
                (let ((__tmp64323
                       (let () (declare (not safe)) (##fx- _i63287_ '1))))
                  (declare (not safe))
                  (_loop63285_ __tmp64323)))
              _obj63282_))))
    (define new-instance
      (lambda (_klass63280_)
        (let ((__obj64228
               (let ((__tmp64325
                      (let ((__tmp64326
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass63280_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp64326))))
                 (declare (not safe))
                 (##make-structure _klass63280_ __tmp64325))))
          (let () (declare (not safe)) (object-fill! __obj64228 '#f))
          __obj64228)))
    (define make-instance
      (lambda (_klass63270_ . _args63271_)
        (let* ((_obj63273_
                (let () (declare (not safe)) (new-instance _klass63270_)))
               (_$e63275_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass63270_ '10 class::t '#f))))
          (if _$e63275_
              ((lambda (_kons-id63278_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass63270_
                    _kons-id63278_
                    _obj63273_
                    _args63271_)))
               _$e63275_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass63270_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass63270_
                     _obj63273_
                     _args63271_))
                  (if (let ((__tmp64331
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass63270_))))
                        (declare (not safe))
                        (not __tmp64331))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass63270_
                         _obj63273_
                         _args63271_))
                      (if (let ((__tmp64329
                                 (let ((__tmp64330
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj63273_))))
                                   (declare (not safe))
                                   (##fx- __tmp64330 '1)))
                                (__tmp64328 (length _args63271_)))
                            (declare (not safe))
                            (##fx= __tmp64329 __tmp64328))
                          (apply ##structure _klass63270_ _args63271_)
                          (let ((__tmp64327
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass63270_))))
                            (declare (not safe))
                            (error '"arguments don't match object size"
                                   'class:
                                   _klass63270_
                                   'slots:
                                   __tmp64327
                                   'args:
                                   _args63271_)))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj63267_ . _args63268_)
        (if (let ((__tmp64333 (length _args63268_))
                  (__tmp64332
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj63267_))))
              (declare (not safe))
              (##fx< __tmp64333 __tmp64332))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj63267_ _args63268_))
            (let ()
              (declare (not safe))
              (error '"too many arguments for struct"
                     'object:
                     _obj63267_
                     'args:
                     _args63268_)))))
    (define __struct-instance-init!
      (lambda (_obj63226_ _args63227_)
        (let _lp63229_ ((_k63231_ '1) (_rest63232_ _args63227_))
          (let* ((_rest6323363241_ _rest63232_)
                 (_else6323563249_ (lambda () _obj63226_))
                 (_K6323763255_
                  (lambda (_rest63252_ _hd63253_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj63226_ _k63231_ _hd63253_))
                    (let ((__tmp64334
                           (let () (declare (not safe)) (##fx+ _k63231_ '1))))
                      (declare (not safe))
                      (_lp63229_ __tmp64334 _rest63252_)))))
            (if (let () (declare (not safe)) (##pair? _rest6323363241_))
                (let ((_hd6323863258_
                       (let () (declare (not safe)) (##car _rest6323363241_)))
                      (_tl6323963260_
                       (let () (declare (not safe)) (##cdr _rest6323363241_))))
                  (let* ((_hd63263_ _hd6323863258_)
                         (_rest63265_ _tl6323963260_))
                    (declare (not safe))
                    (_K6323763255_ _rest63265_ _hd63263_)))
                (let () (declare (not safe)) (_else6323563249_)))))))
    (define class-instance-init!
      (lambda (_obj63223_ . _args63224_)
        (let ((__tmp64335 (object-type _obj63223_)))
          (declare (not safe))
          (__class-instance-init! __tmp64335 _obj63223_ _args63224_))))
    (define __class-instance-init!
      (lambda (_klass63167_ _obj63168_ _args63169_)
        (let _lp63171_ ((_rest63173_ _args63169_))
          (let* ((_rest6317463184_ _rest63173_)
                 (_else6317663192_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest63173_))
                        _obj63168_
                        (let ()
                          (declare (not safe))
                          (error '"unexpected class initializer arguments"
                                 'class:
                                 _klass63167_
                                 'rest:
                                 _rest63173_)))))
                 (_K6317863204_
                  (lambda (_rest63195_ _val63196_ _key63197_)
                    (let ((_$e63199_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass63167_ _key63197_))))
                      (if _$e63199_
                          ((lambda (_off63202_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj63168_
                                _off63202_
                                _val63196_))
                             (let ()
                               (declare (not safe))
                               (_lp63171_ _rest63195_)))
                           _$e63199_)
                          (let ()
                            (declare (not safe))
                            (error '"unknown slot"
                                   'class:
                                   _klass63167_
                                   'slot:
                                   _key63197_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6317463184_))
                (let ((_hd6317963207_
                       (let () (declare (not safe)) (##car _rest6317463184_)))
                      (_tl6318063209_
                       (let () (declare (not safe)) (##cdr _rest6317463184_))))
                  (let ((_key63212_ _hd6317963207_))
                    (if (let () (declare (not safe)) (##pair? _tl6318063209_))
                        (let ((_hd6318163214_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6318063209_)))
                              (_tl6318263216_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6318063209_))))
                          (let* ((_val63219_ _hd6318163214_)
                                 (_rest63221_ _tl6318263216_))
                            (declare (not safe))
                            (_K6317863204_ _rest63221_ _val63219_ _key63212_)))
                        (let () (declare (not safe)) (_else6317663192_)))))
                (let () (declare (not safe)) (_else6317663192_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass63163_ _obj63164_ _args63165_)
        (apply call-method
               _klass63163_
               'instance-init!
               _obj63164_
               _args63165_)))
    (define constructor-init!
      (lambda (_klass63158_ _kons-id63159_ _obj63160_ . _args63161_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass63158_
           _kons-id63159_
           _obj63160_
           _args63161_))))
    (define __constructor-init!
      (lambda (_klass63148_ _kons-id63149_ _obj63150_ _args63151_)
        (let ((_$e63153_
               (let ()
                 (declare (not safe))
                 (__find-method _klass63148_ _obj63150_ _kons-id63149_))))
          (if _$e63153_
              ((lambda (_kons63156_)
                 (apply _kons63156_ _obj63150_ _args63151_)
                 _obj63150_)
               _$e63153_)
              (let ()
                (declare (not safe))
                (error '"missing constructor"
                       'class:
                       _klass63148_
                       'method:
                       _kons-id63149_))))))
    (define struct-copy
      (lambda (_struct63146_)
        (if (let () (declare (not safe)) (##structure? _struct63146_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"not a structure" _struct63146_)))
        (let () (declare (not safe)) (##structure-copy _struct63146_))))
    (define struct->list
      (lambda (_obj63144_)
        (if (object? _obj63144_)
            (let () (declare (not safe)) (##vector->list _obj63144_))
            (let ()
              (declare (not safe))
              (error '"not an object" _obj63144_)))))
    (define class->list
      (lambda (_obj63131_)
        (if (object? _obj63131_)
            (let ((_klass63133_ (object-type _obj63131_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass63133_ 'gerbil#class::t))
                  (let ((_slot-vector63135_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass63133_
                            '7
                            class::t
                            '#f))))
                    (let _loop63137_ ((_index63139_
                                       (let ((__tmp64341
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector63135_))))
                                         (declare (not safe))
                                         (##fx- __tmp64341 '1)))
                                      (_plist63140_ '()))
                      (if (let () (declare (not safe)) (##fx< _index63139_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass63133_ _plist63140_))
                          (let ((_slot63142_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector63135_
                                    _index63139_))))
                            (let ((__tmp64340
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index63139_ '1)))
                                  (__tmp64336
                                   (let ((__tmp64339
                                          (symbol->keyword _slot63142_))
                                         (__tmp64337
                                          (let ((__tmp64338
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj63131_
                                                    _index63139_))))
                                            (declare (not safe))
                                            (cons __tmp64338 _plist63140_))))
                                     (declare (not safe))
                                     (cons __tmp64339 __tmp64337))))
                              (declare (not safe))
                              (_loop63137_ __tmp64340 __tmp64336))))))
                  (let ()
                    (declare (not safe))
                    (error '"not a class type"
                           'object:
                           _obj63131_
                           'class:
                           _klass63133_))))
            (let ()
              (declare (not safe))
              (error '"not an object" _obj63131_)))))
    (define call-method
      (lambda (_obj63122_ _id63123_ . _args63124_)
        (let ((_$e63126_
               (let ()
                 (declare (not safe))
                 (method-ref _obj63122_ _id63123_))))
          (if _$e63126_
              ((lambda (_method63129_)
                 (apply _method63129_ _obj63122_ _args63124_))
               _$e63126_)
              (let ()
                (declare (not safe))
                (error '"cannot find method"
                       'object:
                       _obj63122_
                       'method:
                       _id63123_))))))
    (define __builtin-type-methods
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define method-ref
      (lambda (_obj63119_ _id63120_)
        (if (object? _obj63119_)
            (let ((__tmp64342 (object-type _obj63119_)))
              (declare (not safe))
              (find-method __tmp64342 _obj63119_ _id63120_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj63113_ _id63114_)
        (let ((_$e63116_
               (let ()
                 (declare (not safe))
                 (method-ref _obj63113_ _id63114_))))
          (if _$e63116_
              _$e63116_
              (let ()
                (declare (not safe))
                (error '"missing method"
                       'object:
                       _obj63113_
                       'method:
                       _id63114_))))))
    (define bound-method-ref
      (lambda (_obj63103_ _id63104_)
        (let ((_$e63106_
               (let ()
                 (declare (not safe))
                 (method-ref _obj63103_ _id63104_))))
          (if _$e63106_
              ((lambda (_method63109_)
                 (lambda _args63111_
                   (apply _method63109_ _obj63103_ _args63111_)))
               _$e63106_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj63096_ _id63097_)
        (let ((_method63099_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj63096_ _id63097_))))
          (lambda _args63101_ (apply _method63099_ _obj63096_ _args63101_)))))
    (define find-method
      (lambda (_klass63092_ _obj63093_ _id63094_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63092_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass63092_ _obj63093_ _id63094_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass63092_ _obj63093_ _id63094_)))))
    (define __find-method
      (lambda (_klass63085_ _obj63086_ _id63087_)
        (let ((_$e63089_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass63085_ _obj63086_ _id63087_))))
          (if _$e63089_
              _$e63089_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass63085_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass63085_ _obj63086_ _id63087_)))))))
    (define class-find-method
      (lambda (_klass63081_ _obj63082_ _id63083_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63081_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass63081_ _obj63082_ _id63083_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins63073_ _obj63074_ _id63075_)
        (let ((__tmp64343
               (lambda (_g6307663078_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g6307663078_ _obj63074_ _id63075_)))))
          (declare (not safe))
          (ormap1 __tmp64343 _mixins63073_))))
    (define builtin-find-method
      (lambda (_klass63066_ _obj63067_ _id63068_)
        (if (let () (declare (not safe)) (##type? _klass63066_))
            (let ((_$e63070_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass63066_ _obj63067_ _id63068_))))
              (if _$e63070_
                  _$e63070_
                  (let ((__tmp64344
                         (let ()
                           (declare (not safe))
                           (##type-super _klass63066_))))
                    (declare (not safe))
                    (builtin-find-method __tmp64344 _obj63067_ _id63068_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass63043_ _obj63044_ _id63045_)
        (letrec ((_metaclass-resolve-method63047_
                  (lambda ()
                    (let ((__method64229
                           (let ()
                             (declare (not safe))
                             (method-ref _klass63043_ 'direct-method-ref))))
                      (if __method64229
                          (__method64229 _klass63043_ _obj63044_ _id63045_)
                          (let ()
                            (declare (not safe))
                            (error '"Missing method"
                                   _klass63043_
                                   'direct-method-ref))))))
                 (_metaclass-resolve-method!63048_
                  (lambda ()
                    (let ((_method63063_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method63047_))))
                      (let ((__tmp64346
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass63043_
                                '11
                                class::t
                                '#f)))
                            (__tmp64345 (if _method63063_ 'resolved 'unknown)))
                        (declare (not safe))
                        (symbolic-table-set! __tmp64346 _id63045_ __tmp64345))
                      _method63063_))))
          (let ((_$e63050_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass63043_ '11 class::t '#f))))
            (if _$e63050_
                ((lambda (_ht63053_)
                   (let ((_method63055_
                          (let ()
                            (declare (not safe))
                            (symbolic-table-ref _ht63053_ _id63045_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method63055_))
                         _method63055_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass63043_))
                             (let ((_$e63057_ _method63055_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e63057_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method63047_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'unknown _$e63057_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!63048_)))))
                             '#f))))
                 _$e63050_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass63043_))
                    (let ((_tab63060_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass63043_
                         _tab63060_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!63048_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass63039_ _obj63040_ _id63041_)
        (let ((__tmp64347 (##structure-ref _klass63039_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp64347 _obj63040_ _id63041_))))
    (define builtin-method-ref
      (lambda (_klass63030_ _obj63031_ _id63032_)
        (let ((_$e63034_
               (let ((__tmp64348
                      (let () (declare (not safe)) (##type-id _klass63030_))))
                 (declare (not safe))
                 (symbolic-table-ref __builtin-type-methods __tmp64348 '#f))))
          (if _$e63034_
              ((lambda (_mtab63037_)
                 (let ()
                   (declare (not safe))
                   (symbolic-table-ref _mtab63037_ _id63032_ '#f)))
               _$e63034_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass62996_ _id62997_ _proc62998_ _rebind?62999_)
        (letrec ((_bind!63001_
                  (lambda (_ht63014_)
                    (if (and (let () (declare (not safe)) (not _rebind?62999_))
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref _ht63014_ _id62997_ '#f)))
                        (let ()
                          (declare (not safe))
                          (error '"method already bound"
                                 'class:
                                 _klass62996_
                                 'method:
                                 _id62997_))
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _ht63014_
                           _id62997_
                           _proc62998_))))))
          (if (let () (declare (not safe)) (procedure? _proc62998_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad method; expected procedure" _proc62998_)))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass62996_ 'gerbil#class::t))
              (let ((_ht63003_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass62996_
                        '11
                        class::t
                        '#f))))
                (if _ht63003_
                    (let () (declare (not safe)) (_bind!63001_ _ht63003_))
                    (let ((_ht63005_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass62996_
                         _ht63005_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!63001_ _ht63005_)))))
              (if (let () (declare (not safe)) (##type? _klass62996_))
                  (let ((_ht63012_
                         (let ((_$e63007_
                                (let ((__tmp64349
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass62996_))))
                                  (declare (not safe))
                                  (symbolic-table-ref
                                   __builtin-type-methods
                                   __tmp64349
                                   '#f))))
                           (if _$e63007_
                               _$e63007_
                               (let ((_ht63010_
                                      (let ()
                                        (declare (not safe))
                                        (make-symbolic-table__% '#f '0))))
                                 (let ((__tmp64350
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass62996_))))
                                   (declare (not safe))
                                   (symbolic-table-set!
                                    __builtin-type-methods
                                    __tmp64350
                                    _ht63010_))
                                 _ht63010_)))))
                    (declare (not safe))
                    (_bind!63001_ _ht63012_))
                  (let ()
                    (declare (not safe))
                    (error '"bad class; expected class or builtin type"
                           _klass62996_)))))))
    (define bind-method!__0
      (lambda (_klass63019_ _id63020_ _proc63021_)
        (let ((_rebind?63023_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass63019_
           _id63020_
           _proc63021_
           _rebind?63023_))))
    (define bind-method!
      (lambda _g64352_
        (let ((_g64351_ (let () (declare (not safe)) (##length _g64352_))))
          (cond ((let () (declare (not safe)) (##fx= _g64351_ 3))
                 (apply (lambda (_klass63019_ _id63020_ _proc63021_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass63019_
                             _id63020_
                             _proc63021_)))
                        _g64352_))
                ((let () (declare (not safe)) (##fx= _g64351_ 4))
                 (apply (lambda (_klass63025_
                                 _id63026_
                                 _proc63027_
                                 _rebind?63028_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass63025_
                             _id63026_
                             _proc63027_
                             _rebind?63028_)))
                        _g64352_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g64352_))))))
    (define make-method-specializer-table__%
      (lambda (_size-hint62976_ _seed62978_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint62976_
           procedure-hash
           eq?
           _seed62978_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_size-hint62984_ '#f) (_seed62986_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint62984_ _seed62986_))))
    (define make-method-specializer-table__1
      (lambda (_size-hint62988_)
        (let ((_seed62990_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint62988_ _seed62990_))))
    (define make-method-specializer-table
      (lambda _g64354_
        (let ((_g64353_ (let () (declare (not safe)) (##length _g64354_))))
          (cond ((let () (declare (not safe)) (##fx= _g64353_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__0)))
                        _g64354_))
                ((let () (declare (not safe)) (##fx= _g64353_ 1))
                 (apply (lambda (_size-hint62988_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__1
                             _size-hint62988_)))
                        _g64354_))
                ((let () (declare (not safe)) (##fx= _g64353_ 2))
                 (apply (lambda (_size-hint62992_ _seed62993_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__%
                             _size-hint62992_
                             _seed62993_)))
                        _g64354_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g64354_))))))
    (define method-specializer-table-ref
      (lambda (_tab62933_ _key62934_ _default62935_)
        (let ((_table62937_
               (let () (declare (not safe)) (&raw-table-table _tab62933_)))
              (_seed62938_
               (let () (declare (not safe)) (&raw-table-seed _tab62933_))))
          (let* ((_h62940_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key62934_))
                         _seed62938_))
                 (_size62943_ (vector-length _table62937_))
                 (_entries62946_ (fxquotient _size62943_ '2))
                 (_start62949_
                  (fxarithmetic-shift-left
                   (fxmodulo _h62940_ _entries62946_)
                   '1)))
            (let _loop62953_ ((_probe62956_ _start62949_)
                              (_i62958_ '1)
                              (_deleted62960_ '#f))
              (let ((_k62963_ (vector-ref _table62937_ _probe62956_)))
                (if (let ((__tmp64361 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k62963_ __tmp64361))
                    _default62935_
                    (if (let ((__tmp64360 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k62963_ __tmp64360))
                        (let ((__tmp64359
                               (let ((_next-probe62966_
                                      (fx+ _start62949_
                                           _i62958_
                                           (fx* _i62958_ _i62958_))))
                                 (fxmodulo _next-probe62966_ _size62943_)))
                              (__tmp64358 (fx+ _i62958_ '1))
                              (__tmp64357
                               (let ((_$e62969_ _deleted62960_))
                                 (if _$e62969_ _$e62969_ _probe62956_))))
                          (declare (not safe))
                          (_loop62953_ __tmp64359 __tmp64358 __tmp64357))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key62934_ _k62963_))
                            (vector-ref _table62937_ (fx+ _probe62956_ '1))
                            (let ((__tmp64356
                                   (let ((_next-probe62972_
                                          (fx+ _start62949_
                                               _i62958_
                                               (fx* _i62958_ _i62958_))))
                                     (fxmodulo _next-probe62972_ _size62943_)))
                                  (__tmp64355 (fx+ _i62958_ '1)))
                              (declare (not safe))
                              (_loop62953_
                               __tmp64356
                               __tmp64355
                               _deleted62960_)))))))))))
    (define method-specializer-table-set!
      (lambda (_tab62929_ _key62930_ _value62931_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab62929_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab62929_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab62929_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-set!
           _tab62929_
           _key62930_
           _value62931_))))
    (define __method-specializer-table-set!
      (lambda (_tab62884_ _key62885_ _value62886_)
        (let ((_table62889_
               (let () (declare (not safe)) (&raw-table-table _tab62884_)))
              (_seed62890_
               (let () (declare (not safe)) (&raw-table-seed _tab62884_))))
          (let* ((_h62892_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key62885_))
                         _seed62890_))
                 (_size62895_ (vector-length _table62889_))
                 (_entries62898_ (fxquotient _size62895_ '2))
                 (_start62901_
                  (fxarithmetic-shift-left
                   (fxmodulo _h62892_ _entries62898_)
                   '1)))
            (let _loop62905_ ((_probe62908_ _start62901_)
                              (_i62910_ '1)
                              (_deleted62912_ '#f))
              (let ((_k62915_ (vector-ref _table62889_ _probe62908_)))
                (if (let ((__tmp64371 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k62915_ __tmp64371))
                    (if _deleted62912_
                        (begin
                          (vector-set! _table62889_ _deleted62912_ _key62885_)
                          (vector-set!
                           _table62889_
                           (fx+ _deleted62912_ '1)
                           _value62886_)
                          ((lambda ()
                             (let ((__tmp64370
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab62884_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62884_
                                __tmp64370)))))
                        (begin
                          (vector-set! _table62889_ _probe62908_ _key62885_)
                          (vector-set!
                           _table62889_
                           (fx+ _probe62908_ '1)
                           _value62886_)
                          ((lambda ()
                             (let ((__tmp64368
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab62884_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab62884_ __tmp64368))
                             (let ((__tmp64369
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab62884_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62884_
                                __tmp64369))))))
                    (if (let ((__tmp64367 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k62915_ __tmp64367))
                        (let ((__tmp64366
                               (let ((_next-probe62920_
                                      (fx+ _start62901_
                                           _i62910_
                                           (fx* _i62910_ _i62910_))))
                                 (fxmodulo _next-probe62920_ _size62895_)))
                              (__tmp64365 (fx+ _i62910_ '1))
                              (__tmp64364
                               (let ((_$e62923_ _deleted62912_))
                                 (if _$e62923_ _$e62923_ _probe62908_))))
                          (declare (not safe))
                          (_loop62905_ __tmp64366 __tmp64365 __tmp64364))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key62885_ _k62915_))
                            (begin
                              (vector-set!
                               _table62889_
                               _probe62908_
                               _key62885_)
                              (vector-set!
                               _table62889_
                               (fx+ _probe62908_ '1)
                               _value62886_))
                            (let ((__tmp64363
                                   (let ((_next-probe62926_
                                          (fx+ _start62901_
                                               _i62910_
                                               (fx* _i62910_ _i62910_))))
                                     (fxmodulo _next-probe62926_ _size62895_)))
                                  (__tmp64362 (fx+ _i62910_ '1)))
                              (declare (not safe))
                              (_loop62905_
                               __tmp64363
                               __tmp64362
                               _deleted62912_)))))))))))
    (define method-specializer-table-update!
      (lambda (_tab62879_
               _key62880_
               _method-specializer-table-update!62881_
               _default62882_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab62879_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab62879_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab62879_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-update!
           _tab62879_
           _key62880_
           _method-specializer-table-update!62881_
           _default62882_))))
    (define __method-specializer-table-update!
      (lambda (_tab62833_
               _key62834_
               _method-specializer-table-update!62835_
               _default62836_)
        (let ((_table62839_
               (let () (declare (not safe)) (&raw-table-table _tab62833_)))
              (_seed62840_
               (let () (declare (not safe)) (&raw-table-seed _tab62833_))))
          (let* ((_h62842_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key62834_))
                         _seed62840_))
                 (_size62845_ (vector-length _table62839_))
                 (_entries62848_ (fxquotient _size62845_ '2))
                 (_start62851_
                  (fxarithmetic-shift-left
                   (fxmodulo _h62842_ _entries62848_)
                   '1)))
            (let _loop62855_ ((_probe62858_ _start62851_)
                              (_i62860_ '1)
                              (_deleted62862_ '#f))
              (let ((_k62865_ (vector-ref _table62839_ _probe62858_)))
                (if (let ((__tmp64381 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k62865_ __tmp64381))
                    (if _deleted62862_
                        (begin
                          (vector-set! _table62839_ _deleted62862_ _key62834_)
                          (vector-set!
                           _table62839_
                           (fx+ _deleted62862_ '1)
                           (_method-specializer-table-update!62835_
                            _default62836_))
                          ((lambda ()
                             (let ((__tmp64380
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab62833_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62833_
                                __tmp64380)))))
                        (begin
                          (vector-set! _table62839_ _probe62858_ _key62834_)
                          (vector-set!
                           _table62839_
                           (fx+ _probe62858_ '1)
                           (_method-specializer-table-update!62835_
                            _default62836_))
                          ((lambda ()
                             (let ((__tmp64378
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab62833_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab62833_ __tmp64378))
                             (let ((__tmp64379
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab62833_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62833_
                                __tmp64379))))))
                    (if (let ((__tmp64377 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k62865_ __tmp64377))
                        (let ((__tmp64376
                               (let ((_next-probe62870_
                                      (fx+ _start62851_
                                           _i62860_
                                           (fx* _i62860_ _i62860_))))
                                 (fxmodulo _next-probe62870_ _size62845_)))
                              (__tmp64375 (fx+ _i62860_ '1))
                              (__tmp64374
                               (let ((_$e62873_ _deleted62862_))
                                 (if _$e62873_ _$e62873_ _probe62858_))))
                          (declare (not safe))
                          (_loop62855_ __tmp64376 __tmp64375 __tmp64374))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key62834_ _k62865_))
                            (begin
                              (vector-set!
                               _table62839_
                               _probe62858_
                               _key62834_)
                              (vector-set!
                               _table62839_
                               (fx+ _probe62858_ '1)
                               (_method-specializer-table-update!62835_
                                (vector-ref
                                 _table62839_
                                 (fx+ _probe62858_ '1)))))
                            (let ((__tmp64373
                                   (let ((_next-probe62876_
                                          (fx+ _start62851_
                                               _i62860_
                                               (fx* _i62860_ _i62860_))))
                                     (fxmodulo _next-probe62876_ _size62845_)))
                                  (__tmp64372 (fx+ _i62860_ '1)))
                              (declare (not safe))
                              (_loop62855_
                               __tmp64373
                               __tmp64372
                               _deleted62862_)))))))))))
    (define method-specializer-table-delete!
      (lambda (_tab62792_ _key62794_)
        (let ((_table62797_
               (let () (declare (not safe)) (&raw-table-table _tab62792_)))
              (_seed62799_
               (let () (declare (not safe)) (&raw-table-seed _tab62792_))))
          (let* ((_h62802_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key62794_))
                         _seed62799_))
                 (_size62805_ (vector-length _table62797_))
                 (_entries62808_ (fxquotient _size62805_ '2))
                 (_start62811_
                  (fxarithmetic-shift-left
                   (fxmodulo _h62802_ _entries62808_)
                   '1)))
            (let _loop62815_ ((_probe62818_ _start62811_) (_i62820_ '1))
              (let ((_k62823_ (vector-ref _table62797_ _probe62818_)))
                (if (let ((__tmp64388 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k62823_ __tmp64388))
                    '#!void
                    (if (let ((__tmp64387 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k62823_ __tmp64387))
                        (let ((__tmp64386
                               (let ((_next-probe62826_
                                      (fx+ _start62811_
                                           _i62820_
                                           (fx* _i62820_ _i62820_))))
                                 (fxmodulo _next-probe62826_ _size62805_)))
                              (__tmp64385 (fx+ _i62820_ '1)))
                          (declare (not safe))
                          (_loop62815_ __tmp64386 __tmp64385))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key62794_ _k62823_))
                            (begin
                              (vector-set!
                               _table62797_
                               _probe62818_
                               (macro-deleted-obj))
                              (vector-set!
                               _table62797_
                               (fx+ _probe62818_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp64384
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab62792_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab62792_
                                    __tmp64384)))))
                            (let ((__tmp64383
                                   (let ((_next-probe62830_
                                          (fx+ _start62811_
                                               _i62820_
                                               (fx* _i62820_ _i62820_))))
                                     (fxmodulo _next-probe62830_ _size62805_)))
                                  (__tmp64382 (fx+ _i62820_ '1)))
                              (declare (not safe))
                              (_loop62815_ __tmp64383 __tmp64382)))))))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-method-specializer-table__% '#f '0)))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_method-proc62783_ _specializer62784_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again62788_ ()
            (if (let ((__tmp64389
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64389 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again62788_))))))
        (let ()
          (declare (not safe))
          (method-specializer-table-set!
           __method-specializers
           _method-proc62783_
           _specializer62784_))
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_proc62773_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again62777_ ()
            (if (let ((__tmp64390
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64390 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again62777_))))))
        (let ((_specializer62781_
               (let ()
                 (declare (not safe))
                 (method-specializer-table-ref
                  __method-specializers
                  _proc62773_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _specializer62781_)))
    (define __class-specializer-hash-key
      (lambda (_klass62771_)
        (let ((__tmp64391
               (let () (declare (not safe)) (##type-id _klass62771_))))
          (declare (not safe))
          (symbolic-hash __tmp64391))))
    (define make-class-specializer-table__%
      (lambda (_size-hint62752_ _seed62754_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint62752_
           __class-specializer-hash-key
           eq?
           _seed62754_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_size-hint62760_ '#f) (_seed62762_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint62760_ _seed62762_))))
    (define make-class-specializer-table__1
      (lambda (_size-hint62764_)
        (let ((_seed62766_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint62764_ _seed62766_))))
    (define make-class-specializer-table
      (lambda _g64393_
        (let ((_g64392_ (let () (declare (not safe)) (##length _g64393_))))
          (cond ((let () (declare (not safe)) (##fx= _g64392_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__0)))
                        _g64393_))
                ((let () (declare (not safe)) (##fx= _g64392_ 1))
                 (apply (lambda (_size-hint62764_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__1
                             _size-hint62764_)))
                        _g64393_))
                ((let () (declare (not safe)) (##fx= _g64392_ 2))
                 (apply (lambda (_size-hint62768_ _seed62769_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__%
                             _size-hint62768_
                             _seed62769_)))
                        _g64393_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g64393_))))))
    (define class-specializer-table-ref
      (lambda (_tab62709_ _key62710_ _default62711_)
        (let ((_table62713_
               (let () (declare (not safe)) (&raw-table-table _tab62709_)))
              (_seed62714_
               (let () (declare (not safe)) (&raw-table-seed _tab62709_))))
          (let* ((_h62716_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key62710_))
                         _seed62714_))
                 (_size62719_ (vector-length _table62713_))
                 (_entries62722_ (fxquotient _size62719_ '2))
                 (_start62725_
                  (fxarithmetic-shift-left
                   (fxmodulo _h62716_ _entries62722_)
                   '1)))
            (let _loop62729_ ((_probe62732_ _start62725_)
                              (_i62734_ '1)
                              (_deleted62736_ '#f))
              (let ((_k62739_ (vector-ref _table62713_ _probe62732_)))
                (if (let ((__tmp64400 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k62739_ __tmp64400))
                    _default62711_
                    (if (let ((__tmp64399 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k62739_ __tmp64399))
                        (let ((__tmp64398
                               (let ((_next-probe62742_
                                      (fx+ _start62725_
                                           _i62734_
                                           (fx* _i62734_ _i62734_))))
                                 (fxmodulo _next-probe62742_ _size62719_)))
                              (__tmp64397 (fx+ _i62734_ '1))
                              (__tmp64396
                               (let ((_$e62745_ _deleted62736_))
                                 (if _$e62745_ _$e62745_ _probe62732_))))
                          (declare (not safe))
                          (_loop62729_ __tmp64398 __tmp64397 __tmp64396))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key62710_ _k62739_))
                            (vector-ref _table62713_ (fx+ _probe62732_ '1))
                            (let ((__tmp64395
                                   (let ((_next-probe62748_
                                          (fx+ _start62725_
                                               _i62734_
                                               (fx* _i62734_ _i62734_))))
                                     (fxmodulo _next-probe62748_ _size62719_)))
                                  (__tmp64394 (fx+ _i62734_ '1)))
                              (declare (not safe))
                              (_loop62729_
                               __tmp64395
                               __tmp64394
                               _deleted62736_)))))))))))
    (define class-specializer-table-set!
      (lambda (_tab62705_ _key62706_ _value62707_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab62705_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab62705_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab62705_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-set!
           _tab62705_
           _key62706_
           _value62707_))))
    (define __class-specializer-table-set!
      (lambda (_tab62660_ _key62661_ _value62662_)
        (let ((_table62665_
               (let () (declare (not safe)) (&raw-table-table _tab62660_)))
              (_seed62666_
               (let () (declare (not safe)) (&raw-table-seed _tab62660_))))
          (let* ((_h62668_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key62661_))
                         _seed62666_))
                 (_size62671_ (vector-length _table62665_))
                 (_entries62674_ (fxquotient _size62671_ '2))
                 (_start62677_
                  (fxarithmetic-shift-left
                   (fxmodulo _h62668_ _entries62674_)
                   '1)))
            (let _loop62681_ ((_probe62684_ _start62677_)
                              (_i62686_ '1)
                              (_deleted62688_ '#f))
              (let ((_k62691_ (vector-ref _table62665_ _probe62684_)))
                (if (let ((__tmp64410 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k62691_ __tmp64410))
                    (if _deleted62688_
                        (begin
                          (vector-set! _table62665_ _deleted62688_ _key62661_)
                          (vector-set!
                           _table62665_
                           (fx+ _deleted62688_ '1)
                           _value62662_)
                          ((lambda ()
                             (let ((__tmp64409
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab62660_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62660_
                                __tmp64409)))))
                        (begin
                          (vector-set! _table62665_ _probe62684_ _key62661_)
                          (vector-set!
                           _table62665_
                           (fx+ _probe62684_ '1)
                           _value62662_)
                          ((lambda ()
                             (let ((__tmp64407
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab62660_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab62660_ __tmp64407))
                             (let ((__tmp64408
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab62660_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62660_
                                __tmp64408))))))
                    (if (let ((__tmp64406 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k62691_ __tmp64406))
                        (let ((__tmp64405
                               (let ((_next-probe62696_
                                      (fx+ _start62677_
                                           _i62686_
                                           (fx* _i62686_ _i62686_))))
                                 (fxmodulo _next-probe62696_ _size62671_)))
                              (__tmp64404 (fx+ _i62686_ '1))
                              (__tmp64403
                               (let ((_$e62699_ _deleted62688_))
                                 (if _$e62699_ _$e62699_ _probe62684_))))
                          (declare (not safe))
                          (_loop62681_ __tmp64405 __tmp64404 __tmp64403))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key62661_ _k62691_))
                            (begin
                              (vector-set!
                               _table62665_
                               _probe62684_
                               _key62661_)
                              (vector-set!
                               _table62665_
                               (fx+ _probe62684_ '1)
                               _value62662_))
                            (let ((__tmp64402
                                   (let ((_next-probe62702_
                                          (fx+ _start62677_
                                               _i62686_
                                               (fx* _i62686_ _i62686_))))
                                     (fxmodulo _next-probe62702_ _size62671_)))
                                  (__tmp64401 (fx+ _i62686_ '1)))
                              (declare (not safe))
                              (_loop62681_
                               __tmp64402
                               __tmp64401
                               _deleted62688_)))))))))))
    (define class-specializer-table-update!
      (lambda (_tab62655_
               _key62656_
               _class-specializer-table-update!62657_
               _default62658_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab62655_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab62655_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab62655_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-update!
           _tab62655_
           _key62656_
           _class-specializer-table-update!62657_
           _default62658_))))
    (define __class-specializer-table-update!
      (lambda (_tab62609_
               _key62610_
               _class-specializer-table-update!62611_
               _default62612_)
        (let ((_table62615_
               (let () (declare (not safe)) (&raw-table-table _tab62609_)))
              (_seed62616_
               (let () (declare (not safe)) (&raw-table-seed _tab62609_))))
          (let* ((_h62618_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key62610_))
                         _seed62616_))
                 (_size62621_ (vector-length _table62615_))
                 (_entries62624_ (fxquotient _size62621_ '2))
                 (_start62627_
                  (fxarithmetic-shift-left
                   (fxmodulo _h62618_ _entries62624_)
                   '1)))
            (let _loop62631_ ((_probe62634_ _start62627_)
                              (_i62636_ '1)
                              (_deleted62638_ '#f))
              (let ((_k62641_ (vector-ref _table62615_ _probe62634_)))
                (if (let ((__tmp64420 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k62641_ __tmp64420))
                    (if _deleted62638_
                        (begin
                          (vector-set! _table62615_ _deleted62638_ _key62610_)
                          (vector-set!
                           _table62615_
                           (fx+ _deleted62638_ '1)
                           (_class-specializer-table-update!62611_
                            _default62612_))
                          ((lambda ()
                             (let ((__tmp64419
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab62609_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62609_
                                __tmp64419)))))
                        (begin
                          (vector-set! _table62615_ _probe62634_ _key62610_)
                          (vector-set!
                           _table62615_
                           (fx+ _probe62634_ '1)
                           (_class-specializer-table-update!62611_
                            _default62612_))
                          ((lambda ()
                             (let ((__tmp64417
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab62609_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab62609_ __tmp64417))
                             (let ((__tmp64418
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab62609_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62609_
                                __tmp64418))))))
                    (if (let ((__tmp64416 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k62641_ __tmp64416))
                        (let ((__tmp64415
                               (let ((_next-probe62646_
                                      (fx+ _start62627_
                                           _i62636_
                                           (fx* _i62636_ _i62636_))))
                                 (fxmodulo _next-probe62646_ _size62621_)))
                              (__tmp64414 (fx+ _i62636_ '1))
                              (__tmp64413
                               (let ((_$e62649_ _deleted62638_))
                                 (if _$e62649_ _$e62649_ _probe62634_))))
                          (declare (not safe))
                          (_loop62631_ __tmp64415 __tmp64414 __tmp64413))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key62610_ _k62641_))
                            (begin
                              (vector-set!
                               _table62615_
                               _probe62634_
                               _key62610_)
                              (vector-set!
                               _table62615_
                               (fx+ _probe62634_ '1)
                               (_class-specializer-table-update!62611_
                                (vector-ref
                                 _table62615_
                                 (fx+ _probe62634_ '1)))))
                            (let ((__tmp64412
                                   (let ((_next-probe62652_
                                          (fx+ _start62627_
                                               _i62636_
                                               (fx* _i62636_ _i62636_))))
                                     (fxmodulo _next-probe62652_ _size62621_)))
                                  (__tmp64411 (fx+ _i62636_ '1)))
                              (declare (not safe))
                              (_loop62631_
                               __tmp64412
                               __tmp64411
                               _deleted62638_)))))))))))
    (define class-specializer-table-delete!
      (lambda (_tab62568_ _key62570_)
        (let ((_table62573_
               (let () (declare (not safe)) (&raw-table-table _tab62568_)))
              (_seed62575_
               (let () (declare (not safe)) (&raw-table-seed _tab62568_))))
          (let* ((_h62578_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key62570_))
                         _seed62575_))
                 (_size62581_ (vector-length _table62573_))
                 (_entries62584_ (fxquotient _size62581_ '2))
                 (_start62587_
                  (fxarithmetic-shift-left
                   (fxmodulo _h62578_ _entries62584_)
                   '1)))
            (let _loop62591_ ((_probe62594_ _start62587_) (_i62596_ '1))
              (let ((_k62599_ (vector-ref _table62573_ _probe62594_)))
                (if (let ((__tmp64427 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k62599_ __tmp64427))
                    '#!void
                    (if (let ((__tmp64426 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k62599_ __tmp64426))
                        (let ((__tmp64425
                               (let ((_next-probe62602_
                                      (fx+ _start62587_
                                           _i62596_
                                           (fx* _i62596_ _i62596_))))
                                 (fxmodulo _next-probe62602_ _size62581_)))
                              (__tmp64424 (fx+ _i62596_ '1)))
                          (declare (not safe))
                          (_loop62591_ __tmp64425 __tmp64424))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key62570_ _k62599_))
                            (begin
                              (vector-set!
                               _table62573_
                               _probe62594_
                               (macro-deleted-obj))
                              (vector-set!
                               _table62573_
                               (fx+ _probe62594_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp64423
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab62568_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab62568_
                                    __tmp64423)))))
                            (let ((__tmp64422
                                   (let ((_next-probe62606_
                                          (fx+ _start62587_
                                               _i62596_
                                               (fx* _i62596_ _i62596_))))
                                     (fxmodulo _next-probe62606_ _size62581_)))
                                  (__tmp64421 (fx+ _i62596_ '1)))
                              (declare (not safe))
                              (_loop62591_ __tmp64422 __tmp64421)))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers
      (let () (declare (not safe)) (make-class-specializer-table__% '#f '0)))
    (define __class-specializers-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define specialize-class
      (lambda (_klass62561_)
        (let ((_$e62563_
               (let ()
                 (declare (not safe))
                 (__lookup-class-specializer _klass62561_))))
          (if _$e62563_
              _$e62563_
              (let ((_method-table62566_
                     (let ()
                       (declare (not safe))
                       (__specialize-class _klass62561_))))
                (let ()
                  (declare (not safe))
                  (__bind-class-specializer! _klass62561_ _method-table62566_))
                _method-table62566_)))))
    (define __lookup-class-specializer
      (lambda (_klass62551_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again62555_ ()
            (if (let ((__tmp64428
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64428 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again62555_))))))
        (let ((_method-table62559_
               (let ()
                 (declare (not safe))
                 (class-specializer-table-ref
                  __class-specializers
                  _klass62551_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _method-table62559_)))
    (define __bind-class-specializer!
      (lambda (_klass62542_ _method-table62543_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again62547_ ()
            (if (let ((__tmp64429
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64429 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again62547_))))))
        (let ()
          (declare (not safe))
          (class-specializer-table-set!
           __class-specializers
           _klass62542_
           _method-table62543_))
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_klass62527_ _method-table62528_ _method62529_ _proc62530_)
        (let ((_$e62532_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _method-table62528_ _method62529_ '#f))))
          (if _$e62532_
              _$e62532_
              (let ((_$e62535_
                     (let ()
                       (declare (not safe))
                       (__lookup-method-specializer _proc62530_))))
                (if _$e62535_
                    ((lambda (_specialize62538_)
                       (let ((_specialized-proc62540_
                              (_specialize62538_
                               _klass62527_
                               _method-table62528_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _method-table62528_
                          _method62529_
                          _specialized-proc62540_)))
                     _$e62535_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _method-table62528_
                       _method62529_
                       _proc62530_))))))))
    (define __specialize-class
      (lambda (_klass62454_)
        (if (let ((__tmp64435
                   (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _klass62454_
                      'gerbil#class::t))))
              (declare (not safe))
              (not __tmp64435))
            (if (let () (declare (not safe)) (##type? _klass62454_))
                (let ((_method-table62456_
                       (let ()
                         (declare (not safe))
                         (make-symbolic-table__% '#f '0))))
                  (let _loop62458_ ((_xklass62460_ _klass62454_))
                    (if _xklass62460_
                        (begin
                          (let ((_xmethod-table6246162463_
                                 (let ((__tmp64432
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _xklass62460_))))
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    __builtin-type-methods
                                    __tmp64432
                                    '#f))))
                            (if _xmethod-table6246162463_
                                (let* ((_xmethod-table62466_
                                        _xmethod-table6246162463_)
                                       (__tmp64433
                                        (lambda (_g6246762470_ _g6246862472_)
                                          (let ()
                                            (declare (not safe))
                                            (__specialize-method
                                             _klass62454_
                                             _method-table62456_
                                             _g6246762470_
                                             _g6246862472_)))))
                                  (declare (not safe))
                                  (raw-table-for-each
                                   _xmethod-table62466_
                                   __tmp64433))
                                '#f))
                          (let ((__tmp64434
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _xklass62460_))))
                            (declare (not safe))
                            (_loop62458_ __tmp64434)))
                        '#!void))
                  _method-table62456_)
                (let ()
                  (declare (not safe))
                  (error '"bad class; cannot specialize" _klass62454_)))
            (if (let ()
                  (declare (not safe))
                  (class-type-metaclass? _klass62454_))
                (let ((__method64230
                       (let ()
                         (declare (not safe))
                         (method-ref _klass62454_ 'specialize-class))))
                  (if __method64230
                      (__method64230 _klass62454_)
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _klass62454_
                               'specialize-class))))
                (if (let ((__tmp64431
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _klass62454_
                              '6
                              class::t
                              '#f))))
                      (declare (not safe))
                      (find class-type-metaclass? __tmp64431))
                    (let ()
                      (declare (not safe))
                      (error '"cannot specialize class that extends metaclass without a metaclass"
                             _klass62454_))
                    (let ((_method-table62475_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _loop62477_ ((_rest62479_
                                         (let ()
                                           (declare (not safe))
                                           (class-precedence-list
                                            _klass62454_))))
                        (let* ((_rest6248062488_ _rest62479_)
                               (_else6248262496_
                                (lambda () _method-table62475_))
                               (_K6248462515_
                                (lambda (_rest62499_ _xklass62500_)
                                  (let ((_xmethod-table6250162503_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _xklass62500_
                                            '11
                                            class::t
                                            '#f))))
                                    (if _xmethod-table6250162503_
                                        (let* ((_xmethod-table62506_
                                                _xmethod-table6250162503_)
                                               (__tmp64430
                                                (lambda (_g6250762510_
                                                         _g6250862512_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (__specialize-method
                                                     _klass62454_
                                                     _method-table62475_
                                                     _g6250762510_
                                                     _g6250862512_)))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _xmethod-table62506_
                                           __tmp64430))
                                        '#f))
                                  (let ()
                                    (declare (not safe))
                                    (_loop62477_ _rest62499_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6248062488_))
                              (let ((_hd6248562518_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6248062488_)))
                                    (_tl6248662520_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6248062488_))))
                                (let* ((_xklass62523_ _hd6248562518_)
                                       (_rest62525_ _tl6248662520_))
                                  (declare (not safe))
                                  (_K6248462515_ _rest62525_ _xklass62523_)))
                              (let ()
                                (declare (not safe))
                                (_else6248262496_)))))))))))
    (define seal-class!
      (lambda (_klass62450_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass62450_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-sealed? _klass62450_))
                '#!void
                (begin
                  (if (let ()
                        (declare (not safe))
                        (class-type-final? _klass62450_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"cannot seal non-final class" _klass62450_)))
                  (if (let ()
                        (declare (not safe))
                        (class-type-metaclass? _klass62450_))
                      (let ((__method64231
                             (let ()
                               (declare (not safe))
                               (method-ref _klass62450_ 'seal-class!))))
                        (if __method64231
                            (__method64231 _klass62450_)
                            (let ()
                              (declare (not safe))
                              (error '"Missing method"
                                     _klass62450_
                                     'seal-class!))))
                      (if (let ((__tmp64436
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _klass62450_
                                    '6
                                    class::t
                                    '#f))))
                            (declare (not safe))
                            (find class-type-metaclass? __tmp64436))
                          (let ()
                            (declare (not safe))
                            (error '"cannot seal class that extends metaclass without a metaclass"
                                   _klass62450_))
                          (let ((_method-table62452_
                                 (let ()
                                   (declare (not safe))
                                   (specialize-class _klass62450_))))
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _klass62450_
                             _method-table62452_
                             '11
                             class::t
                             '#f))))
                  (let ()
                    (declare (not safe))
                    (&class-type-seal! _klass62450_))))
            '#!void)))
    (define next-method
      (lambda (_subklass62399_ _obj62400_ _id62401_)
        (let ((_klass62403_ (object-type _obj62400_))
              (_type-id62404_
               (let () (declare (not safe)) (##type-id _subklass62399_))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass62403_ 'gerbil#class::t))
              (let _lp62406_ ((_rest62408_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass62403_))))
                (let* ((_rest6240962417_ _rest62408_)
                       (_else6241162425_ (lambda () '#f))
                       (_K6241362431_
                        (lambda (_rest62428_ _klass62429_)
                          (if (let ((__tmp64439
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass62429_))))
                                (declare (not safe))
                                (eq? _type-id62404_ __tmp64439))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method
                                 _rest62428_
                                 _obj62400_
                                 _id62401_))
                              (let ()
                                (declare (not safe))
                                (_lp62406_ _rest62428_))))))
                  (if (let () (declare (not safe)) (##pair? _rest6240962417_))
                      (let ((_hd6241462434_
                             (let ()
                               (declare (not safe))
                               (##car _rest6240962417_)))
                            (_tl6241562436_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest6240962417_))))
                        (let* ((_klass62439_ _hd6241462434_)
                               (_rest62441_ _tl6241562436_))
                          (declare (not safe))
                          (_K6241362431_ _rest62441_ _klass62439_)))
                      (let () (declare (not safe)) (_else6241162425_)))))
              (if (let () (declare (not safe)) (##type? _klass62403_))
                  (let _lp62443_ ((_klass62445_ _klass62403_))
                    (if (let ((__tmp64438
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass62445_))))
                          (declare (not safe))
                          (eq? _type-id62404_ __tmp64438))
                        (let ((__tmp64437
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass62445_))))
                          (declare (not safe))
                          (builtin-find-method
                           __tmp64437
                           _obj62400_
                           _id62401_))
                        (let ((_$e62447_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass62445_))))
                          (if _$e62447_
                              (let ()
                                (declare (not safe))
                                (_lp62443_ _$e62447_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass62389_ _obj62390_ _id62391_ . _args62392_)
        (let ((_$e62394_
               (let ()
                 (declare (not safe))
                 (next-method _subklass62389_ _obj62390_ _id62391_))))
          (if _$e62394_
              ((lambda (_methodf62397_)
                 (apply _methodf62397_ _obj62390_ _args62392_))
               _$e62394_)
              (let ()
                (declare (not safe))
                (error '"cannot find next method"
                       'object:
                       _obj62390_
                       'method:
                       _id62391_))))))
    (define write-style (lambda (_we62387_) (macro-writeenv-style _we62387_)))
    (define write-object
      (lambda (_we62379_ _obj62380_)
        (let ((_$e62382_
               (let () (declare (not safe)) (method-ref _obj62380_ ':wr))))
          (if _$e62382_
              ((lambda (_method62385_) (_method62385_ _obj62380_ _we62379_))
               _$e62382_)
              (let ()
                (declare (not safe))
                (##default-wr _we62379_ _obj62380_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
