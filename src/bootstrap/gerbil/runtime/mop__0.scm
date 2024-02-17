(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1708165428)
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
      (let* ((_slots92135_
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
             (_slot-vector92137_
              (list->vector
               (let () (declare (not safe)) (cons '##type _slots92135_))))
             (_slot-table92144_
              (let ((_slot-table92139_
                     (let () (declare (not safe)) (make-table 'test: eq?))))
                (for-each
                 (lambda (_slot92141_ _field92142_)
                   (let ()
                     (declare (not safe))
                     (table-set! _slot-table92139_ _slot92141_ _field92142_))
                   (let ((__tmp96852 (symbol->keyword _slot92141_)))
                     (declare (not safe))
                     (table-set! _slot-table92139_ __tmp96852 _field92142_)))
                 _slots92135_
                 (let ((__tmp96853 (length _slots92135_)))
                   (declare (not safe))
                   (iota __tmp96853 '1)))
                _slot-table92139_))
             (_flags92146_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields92152_
              (list->vector
               (apply append
                      (map (lambda (_g9214792149_) (list _g9214792149_ '5 '#f))
                           (let ()
                             (declare (not safe))
                             (drop _slots92135_ '5))))))
             (_properties92154_
              (let ((__tmp96856
                     (let ((__tmp96857
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots92135_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp96857)))
                    (__tmp96854
                     (let ((__tmp96855
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp96855 '()))))
                (declare (not safe))
                (cons __tmp96856 __tmp96854)))
             (_t92156_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags92146_
                 ##type-type
                 _fields92152_
                 '()
                 _slot-vector92137_
                 _slot-table92144_
                 _properties92154_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t92156_ _t92156_))
        _t92156_))
    (define class-type?
      (lambda (_obj92133_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj92133_ class::t.id))))
    (define class-type=?
      (lambda (_x92130_ _y92131_)
        (let ((__tmp96859 (##structure-ref _x92130_ '1 class::t '#f))
              (__tmp96858 (##structure-ref _y92131_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp96859 __tmp96858))))
    (define type-opaque?
      (lambda (_type92128_)
        (let ((__tmp96860
               (let ((__tmp96861
                      (let ()
                        (declare (not safe))
                        (##type-flags _type92128_))))
                 (declare (not safe))
                 (##fxand __tmp96861 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp96860 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type92126_)
        (let ((__tmp96862
               (let ((__tmp96863
                      (let ()
                        (declare (not safe))
                        (##type-flags _type92126_))))
                 (declare (not safe))
                 (##fxand __tmp96863 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp96862 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type92124_)
        (let ((__tmp96864
               (let ((__tmp96865
                      (let ()
                        (declare (not safe))
                        (##type-flags _type92124_))))
                 (declare (not safe))
                 (##fxand __tmp96865 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp96864 '0))))
    (define class-type-struct?
      (lambda (_klass92122_)
        (let ((__tmp96866
               (let ((__tmp96867
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass92122_))))
                 (declare (not safe))
                 (##fxand __tmp96867 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp96866 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass92120_)
        (let ((__tmp96868
               (let ((__tmp96869
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass92120_))))
                 (declare (not safe))
                 (##fxand __tmp96869 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp96868 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass92118_)
        (let ((__tmp96870
               (let ((__tmp96871
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass92118_))))
                 (declare (not safe))
                 (##fxand __tmp96871 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp96870 class-type-flag-metaclass))))
    (define properties-form
      (lambda (_properties92084_)
        (map (lambda (_e9208592087_)
               (let* ((_g9208992096_ _e9208592087_)
                      (_E9209192100_
                       (lambda () (error '"No clause matching" _g9208992096_)))
                      (_K9209292106_
                       (lambda (_val92103_ _key92104_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key92104_ 'direct-supers:))
                             (let ((__tmp96872 (map class-type-id _val92103_)))
                               (declare (not safe))
                               (cons _key92104_ __tmp96872))
                             (let ()
                               (declare (not safe))
                               (cons _key92104_ _val92103_))))))
                 (if (let () (declare (not safe)) (##pair? _g9208992096_))
                     (let ((_hd9209392109_
                            (let ()
                              (declare (not safe))
                              (##car _g9208992096_)))
                           (_tl9209492111_
                            (let ()
                              (declare (not safe))
                              (##cdr _g9208992096_))))
                       (let* ((_key92114_ _hd9209392109_)
                              (_val92116_ _tl9209492111_))
                         (declare (not safe))
                         (_K9209292106_ _val92116_ _key92114_)))
                     (let () (declare (not safe)) (_E9209192100_)))))
             _properties92084_)))
    (define make-class-type-descriptor
      (lambda (_type-id91983_
               _type-name91984_
               _type-super91985_
               _precedence-list91986_
               _slot-vector91987_
               _properties91988_
               _constructor91989_
               _slot-table91990_
               _methods91991_)
        (letrec ((_make-props!91993_
                  (lambda (_key92053_)
                    (letrec* ((_ht92055_
                               (let ()
                                 (declare (not safe))
                                 (make-table 'test: eq?)))
                              (_put-slots!92056_
                               (lambda (_ht92077_ _slots92078_)
                                 (for-each
                                  (lambda (_g9207992081_)
                                    (let ()
                                      (declare (not safe))
                                      (table-set!
                                       _ht92077_
                                       _g9207992081_
                                       '#t)))
                                  _slots92078_)))
                              (_put-alist!92057_
                               (lambda (_ht92066_ _key92067_ _alist92068_)
                                 (let ((_$e92070_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq _key92067_ _alist92068_))))
                                   (if _$e92070_
                                       ((lambda (_g9207292074_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!92056_
                                             _ht92066_
                                             _g9207292074_)))
                                        _$e92070_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!92057_
                         _ht92055_
                         _key92053_
                         _properties91988_))
                      (for-each
                       (lambda (_mixin92059_)
                         (let ((_alist92061_
                                (##structure-ref
                                 _mixin92059_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq 'transparent: _alist92061_))
                                   (let ((__tmp96874
                                          (let ()
                                            (declare (not safe))
                                            (assgetq _key92053_
                                                     _alist92061_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp96874)))
                               (let ((__tmp96873
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin92059_))))
                                 (declare (not safe))
                                 (_put-slots!92056_ _ht92055_ __tmp96873))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!92057_
                                  _ht92055_
                                  _key92053_
                                  _alist92061_)))))
                       _precedence-list91986_)
                      _ht92055_))))
          (let* ((_transparent?91995_
                  (let ()
                    (declare (not safe))
                    (assgetq 'transparent: _properties91988_)))
                 (_all-slots-printable?92000_
                  (let ((_$e91997_ _transparent?91995_))
                    (if _$e91997_
                        _$e91997_
                        (let ((__tmp96875
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'print: _properties91988_))))
                          (declare (not safe))
                          (eq? '#t __tmp96875)))))
                 (_printable92002_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?92000_))
                      (let ()
                        (declare (not safe))
                        (_make-props!91993_ 'print:))
                      '#f))
                 (_all-slots-equalable?92007_
                  (let ((_$e92004_ _transparent?91995_))
                    (if _$e92004_
                        _$e92004_
                        (let ((__tmp96876
                               (let ()
                                 (declare (not safe))
                                 (assgetq 'equal: _properties91988_))))
                          (declare (not safe))
                          (eq? '#t __tmp96876)))))
                 (_equalable92009_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?92007_))
                      (let ()
                        (declare (not safe))
                        (_make-props!91993_ 'equal:))
                      '#f))
                 (_first-new-field92011_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super91985_
                         'gerbil#class::t))
                      (let ((__tmp96877
                             (##structure-ref
                              _type-super91985_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp96877))
                      '1))
                 (_field-info-length92013_
                  (let ((__tmp96878
                         (let ((__tmp96879
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector91987_))))
                           (declare (not safe))
                           (##fx- __tmp96879 _first-new-field92011_))))
                    (declare (not safe))
                    (##fx* '3 __tmp96878)))
                 (_field-info92015_ (make-vector _field-info-length92013_ '#f))
                 (_struct?92017_
                  (let ()
                    (declare (not safe))
                    (assgetq 'struct: _properties91988_)))
                 (_final?92019_
                  (let ()
                    (declare (not safe))
                    (assgetq 'final: _properties91988_)))
                 (_metaclass92027_
                  (let ((_metaclass9202092022_
                         (let ()
                           (declare (not safe))
                           (assgetq 'metaclass: _properties91988_))))
                    (if _metaclass9202092022_
                        (let ((_metaclass92025_ _metaclass9202092022_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass92025_
                                 'gerbil#class::t))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _type-id91983_
                                     'metaclass:
                                     _metaclass92025_))
                          _metaclass92025_)
                        '#f)))
                 (_opaque?92032_
                  (let ((_$e92029_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?92007_))))
                    (if _$e92029_
                        _$e92029_
                        (if _type-super91985_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super91985_))
                            '#f))))
                 (_type-flags92034_
                  (let ((__tmp96883 (if _final?92019_ '0 type-flag-extensible))
                        (__tmp96882 (if _opaque?92032_ type-flag-opaque '0))
                        (__tmp96881
                         (if _struct?92017_ class-type-flag-struct '0))
                        (__tmp96880
                         (if _metaclass92027_ class-type-flag-metaclass '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp96883
                             __tmp96882
                             __tmp96881
                             __tmp96880))))
            (let _loop92037_ ((_i92039_ _first-new-field92011_) (_j92040_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j92040_ _field-info-length92013_))
                  (let* ((_slot92042_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector91987_ _i92039_)))
                         (_flags92050_
                          (if _transparent?91995_
                              '0
                              (let ((__tmp96885
                                     (if (or _all-slots-printable?92000_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _printable92002_
                                                _slot92042_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp96884
                                     (if (or _all-slots-equalable?92007_
                                             (let ()
                                               (declare (not safe))
                                               (table-ref
                                                _equalable92009_
                                                _slot92042_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp96885 __tmp96884)))))
                    (vector-set! _field-info92015_ _j92040_ _slot92042_)
                    (vector-set!
                     _field-info92015_
                     (let () (declare (not safe)) (##fx+ _j92040_ '1))
                     _flags92050_)
                    (let ((__tmp96887
                           (let () (declare (not safe)) (##fx+ _i92039_ '1)))
                          (__tmp96886
                           (let () (declare (not safe)) (##fx+ _j92040_ '3))))
                      (declare (not safe))
                      (_loop92037_ __tmp96887 __tmp96886)))
                  '#!void))
            (if _metaclass92027_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass92027_
                   _type-id91983_
                   _type-name91984_
                   _type-flags92034_
                   _type-super91985_
                   _field-info92015_
                   _precedence-list91986_
                   _slot-vector91987_
                   _slot-table91990_
                   _properties91988_
                   _constructor91989_
                   _methods91991_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id91983_
                   _type-name91984_
                   _type-flags92034_
                   _type-super91985_
                   _field-info92015_
                   _precedence-list91986_
                   _slot-vector91987_
                   _slot-table91990_
                   _properties91988_
                   _constructor91989_
                   _methods91991_)))))))
    (define class-type-id
      (lambda (_klass91981_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass91981_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass91979_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass91979_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass91976_ _val91977_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass91976_ _val91977_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass91971_ _val91973_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass91971_
           _val91973_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass91969_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass91969_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass91967_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass91967_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass91964_ _val91965_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass91964_ _val91965_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass91959_ _val91961_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass91959_
           _val91961_
           '2
           class::t
           'name))))
    (define class-type-super
      (lambda (_klass91957_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass91957_ '3 class::t 'super))))
    (define &class-type-super
      (lambda (_klass91955_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass91955_ '3 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass91952_ _val91953_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass91952_ _val91953_ '3 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass91947_ _val91949_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass91947_
           _val91949_
           '3
           class::t
           'super))))
    (define class-type-flags
      (lambda (_klass91945_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass91945_ '4 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass91943_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass91943_ '4 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass91940_ _val91941_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass91940_ _val91941_ '4 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass91935_ _val91937_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass91935_
           _val91937_
           '4
           class::t
           'flags))))
    (define class-type-fields
      (lambda (_klass91933_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass91933_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass91931_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass91931_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass91928_ _val91929_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass91928_ _val91929_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass91923_ _val91925_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass91923_
           _val91925_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass91921_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass91921_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass91919_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass91919_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass91916_ _val91917_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass91916_
           _val91917_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass91911_ _val91913_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass91911_
           _val91913_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass91909_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass91909_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass91907_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass91907_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass91904_ _val91905_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass91904_
           _val91905_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass91899_ _val91901_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass91899_
           _val91901_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass91897_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass91897_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass91895_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass91895_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass91892_ _val91893_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass91892_ _val91893_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass91887_ _val91889_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass91887_
           _val91889_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass91885_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass91885_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass91883_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass91883_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass91880_ _val91881_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass91880_ _val91881_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass91875_ _val91877_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass91875_
           _val91877_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass91873_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass91873_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass91871_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass91871_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass91868_ _val91869_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass91868_
           _val91869_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass91863_ _val91865_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass91863_
           _val91865_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass91861_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass91861_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass91859_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass91859_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass91856_ _val91857_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass91856_ _val91857_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass91851_ _val91853_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass91851_
           _val91853_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass91849_)
        (cdr (vector->list (##structure-ref _klass91849_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass91847_)
        (let ((__tmp96888
               (let ((__tmp96889
                      (##structure-ref _klass91847_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp96889))))
          (declare (not safe))
          (##fx- __tmp96888 '1))))
    (define class-type-seal!
      (lambda (_klass91845_)
        (let ((__tmp96890
               (let ((__tmp96891
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass91845_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp96891))))
          (declare (not safe))
          (##structure-set!
           _klass91845_
           __tmp96890
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass91843_)
        (let ((__tmp96892
               (let ((__tmp96893
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass91843_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp96893))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass91843_
           __tmp96892
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct91834_ _maybe-super-struct91835_)
        (let ((_maybe-super-struct-id91837_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct91835_))))
          (let _lp91839_ ((_super-struct91841_ _maybe-sub-struct91834_))
            (if (let () (declare (not safe)) (not _super-struct91841_))
                '#f
                (if (let ((__tmp96895
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct91841_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id91837_ __tmp96895))
                    '#t
                    (let ((__tmp96894
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct91841_))))
                      (declare (not safe))
                      (_lp91839_ __tmp96894))))))))
    (define base-struct/1
      (lambda (_klass91832_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass91832_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass91832_))
                _klass91832_
                (let () (declare (not safe)) (##type-super _klass91832_)))
            (if (let () (declare (not safe)) (not _klass91832_))
                '#f
                (error '"not a class or false" _klass91832_)))))
    (define base-struct/2
      (lambda (_klass191820_ _klass291821_)
        (let ((_s191823_
               (let () (declare (not safe)) (base-struct/1 _klass191820_)))
              (_s291824_
               (let () (declare (not safe)) (base-struct/1 _klass291821_))))
          (if (or (let () (declare (not safe)) (not _s191823_))
                  (and _s291824_
                       (let ()
                         (declare (not safe))
                         (substruct? _s191823_ _s291824_))))
              _s291824_
              (if (or (let () (declare (not safe)) (not _s291824_))
                      (and _s191823_
                           (let ()
                             (declare (not safe))
                             (substruct? _s291824_ _s191823_))))
                  _s191823_
                  (error '"bad mixin: incompatible struct bases"
                         _klass191820_
                         _klass291821_
                         _s191823_
                         _s291824_))))))
    (define base-struct/list
      (lambda (_all-supers91704_)
        (let* ((_all-supers9170591730_ _all-supers91704_)
               (_E9171091734_
                (lambda ()
                  (error '"No clause matching" _all-supers9170591730_))))
          (let ((_K9172891817_ (lambda () '#f))
                (_K9172591803_
                 (lambda (_x91801_)
                   (let () (declare (not safe)) (base-struct/1 _x91801_))))
                (_K9172091780_
                 (lambda (_y91777_ _x91778_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x91778_ _y91777_))))
                (_K9171191741_
                 (lambda (_y91738_ _x91739_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x91739_ _y91738_)))))
            (let* ((___match9684796848_
                    (lambda (_hd9171291744_ _tl9171391746_)
                      (let ((_x91749_ _hd9171291744_))
                        (letrec ((_splice-rest9171591751_
                                  (lambda (_rest9171991758_ _y91760_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest9171991758_))
                                        (let ()
                                          (declare (not safe))
                                          (_K9171191741_ _y91760_ _x91749_))
                                        (let ()
                                          (declare (not safe))
                                          (_E9171091734_)))))
                                 (_splice-try9171791753_
                                  (lambda (_hd9171891762_
                                           _rest9171991764_
                                           _y9171491765_)
                                    (let ((_y91768_ _hd9171891762_))
                                      (let ((__tmp96897
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest9171991764_)))
                                            (__tmp96896
                                             (let ()
                                               (declare (not safe))
                                               (cons _y91768_ _y9171491765_))))
                                        (declare (not safe))
                                        (_splice-loop9171691755_
                                         __tmp96897
                                         __tmp96896)))))
                                 (_splice-loop9171691755_
                                  (lambda (_rest9171991770_ _y9171491771_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest9171991770_))
                                        (let ((__tmp96899
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest9171991770_))))
                                          (declare (not safe))
                                          (_splice-try9171791753_
                                           __tmp96899
                                           _rest9171991770_
                                           _y9171491771_))
                                        (let ((__tmp96898
                                               (reverse _y9171491771_)))
                                          (declare (not safe))
                                          (_splice-rest9171591751_
                                           _rest9171991770_
                                           __tmp96898))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop9171691755_ _tl9171391746_ '()))))))
                   (_try-match9170791813_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers9170591730_))
                          (let ((_tl9172791808_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers9170591730_)))
                                (_hd9172691806_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers9170591730_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl9172791808_))
                                (let ((_x91811_ _hd9172691806_))
                                  (declare (not safe))
                                  (base-struct/1 _x91811_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl9172791808_))
                                    (let ((_tl9172491792_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl9172791808_)))
                                          (_hd9172391790_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl9172791808_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl9172491792_))
                                          (let ((_x91788_ _hd9172691806_)
                                                (_y91795_ _hd9172391790_))
                                            (let ()
                                              (declare (not safe))
                                              (_K9172091780_
                                               _y91795_
                                               _x91788_)))
                                          (___match9684796848_
                                           _hd9172691806_
                                           _tl9172791808_)))
                                    (___match9684796848_
                                     _hd9172691806_
                                     _tl9172791808_))))
                          (let () (declare (not safe)) (_E9171091734_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers9170591730_))
                  (let () (declare (not safe)) (_K9172891817_))
                  (let () (declare (not safe)) (_try-match9170791813_))))))))
    (define base-struct
      (lambda _all-supers91702_
        (let () (declare (not safe)) (base-struct/list _all-supers91702_))))
    (define find-super-constructor
      (lambda (_super91654_)
        (let _lp91656_ ((_rest91658_ _super91654_) (_constructor91659_ '#f))
          (let* ((_rest9166091668_ _rest91658_)
                 (_else9166291676_ (lambda () _constructor91659_))
                 (_K9166491690_
                  (lambda (_rest91679_ _hd91680_)
                    (let ((_$e91682_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd91680_
                              '10
                              class::t
                              '#f))))
                      (if _$e91682_
                          ((lambda (_xconstructor91685_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor91659_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor91659_
                                            _xconstructor91685_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp91656_ _rest91679_ _xconstructor91685_))
                                 (error '"conflicting implicit constructors"
                                        _constructor91659_
                                        _xconstructor91685_)))
                           _$e91682_)
                          (let ()
                            (declare (not safe))
                            (_lp91656_ _rest91679_ _constructor91659_)))))))
            (if (let () (declare (not safe)) (##pair? _rest9166091668_))
                (let ((_hd9166591693_
                       (let () (declare (not safe)) (##car _rest9166091668_)))
                      (_tl9166691695_
                       (let () (declare (not safe)) (##cdr _rest9166091668_))))
                  (let* ((_hd91698_ _hd9166591693_)
                         (_rest91700_ _tl9166691695_))
                    (declare (not safe))
                    (_K9166491690_ _rest91700_ _hd91698_)))
                (let () (declare (not safe)) (_else9166291676_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list91630_ _direct-slots91631_)
        (let* ((_next-slot91633_ '1)
               (_slot-table91635_
                (let () (declare (not safe)) (make-table 'test: eq?)))
               (_r-slots91637_ '(__class))
               (_process-slot91641_
                (lambda (_slot91639_)
                  (if (let () (declare (not safe)) (symbol? _slot91639_))
                      '#!void
                      (error '"invalid slot name" _slot91639_))
                  (if (let ()
                        (declare (not safe))
                        (hash-key? _slot-table91635_ _slot91639_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (table-set!
                           _slot-table91635_
                           _slot91639_
                           _next-slot91633_))
                        (let ((__tmp96900 (symbol->keyword _slot91639_)))
                          (declare (not safe))
                          (table-set!
                           _slot-table91635_
                           __tmp96900
                           _next-slot91633_))
                        (set! _r-slots91637_
                              (let ()
                                (declare (not safe))
                                (cons _slot91639_ _r-slots91637_)))
                        (set! _next-slot91633_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot91633_ '1)))))))
               (_process-slots91647_
                (lambda (_g9164291644_)
                  (for-each _process-slot91641_ _g9164291644_))))
          (for-each
           (lambda (_mixin91650_)
             (let ((__tmp96901
                    (let ((__tmp96902
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin91650_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq 'direct-slots: __tmp96902 '()))))
               (declare (not safe))
               (_process-slots91647_ __tmp96901)))
           (reverse _class-precedence-list91630_))
          (let ()
            (declare (not safe))
            (_process-slots91647_ _direct-slots91631_))
          (let ((_slot-vector91652_ (list->vector (reverse _r-slots91637_))))
            (values _slot-vector91652_ _slot-table91635_)))))
    (define make-class-type
      (lambda (_id91592_
               _name91593_
               _direct-supers91594_
               _direct-slots91595_
               _properties91596_
               _constructor91597_)
        (let ((_$e91602_
               (let ((__tmp96903
                      (lambda (_$obj91599_)
                        (let ((__tmp96904
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj91599_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp96904)))))
                 (declare (not safe))
                 (find __tmp96903 _direct-supers91594_))))
          (if _$e91602_
              ((lambda (_g9160491606_)
                 (error '"Illegal super class; not a class descriptor"
                        _g9160491606_))
               _$e91602_)
              (let ((_$e91609_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers91594_))))
                (if _$e91609_
                    ((lambda (_g9161191613_)
                       (error '"Cannot extend final class" _g9161191613_))
                     _$e91609_)
                    '#!void))))
        (let ((_g96905_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers91594_))))
          (begin
            (let ((_g96906_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g96905_) (##vector-length _g96905_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g96906_ 2)))
                  (error "Context expects 2 values" _g96906_)))
            (let ((_precedence-list91616_
                   (let () (declare (not safe)) (##vector-ref _g96905_ 0)))
                  (_struct-super91617_
                   (let () (declare (not safe)) (##vector-ref _g96905_ 1))))
              (let ((_g96907_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list91616_
                        _direct-slots91595_))))
                (begin
                  (let ((_g96908_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g96907_)
                               (##vector-length _g96907_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g96908_ 2)))
                        (error "Context expects 2 values" _g96908_)))
                  (let ((_slot-vector91619_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g96907_ 0)))
                        (_slot-table91620_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g96907_ 1))))
                    (let* ((_properties91622_
                            (let ((__tmp96911
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots91595_)))
                                  (__tmp96909
                                   (let ((__tmp96910
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers91594_))))
                                     (declare (not safe))
                                     (cons __tmp96910 _properties91596_))))
                              (declare (not safe))
                              (cons __tmp96911 __tmp96909)))
                           (_constructor*91627_
                            (let ((_$e91624_ _constructor91597_))
                              (if _$e91624_
                                  _$e91624_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers91594_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id91592_
                         _name91593_
                         _struct-super91617_
                         _precedence-list91616_
                         _slot-vector91619_
                         _properties91622_
                         _constructor*91627_
                         _slot-table91620_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass91590_)
        (let ((__tmp96912
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass91590_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass91590_ __tmp96912))))
    (define compute-precedence-list
      (lambda (_direct-supers91588_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _direct-supers91588_))))
    (define make-class-predicate
      (lambda (_klass91572_)
        (let ((_tid91574_
               (let () (declare (not safe)) (##type-id _klass91572_))))
          (if (let () (declare (not safe)) (class-type-final? _klass91572_))
              (lambda (_g9157591577_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g9157591577_ _tid91574_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass91572_))
                  (lambda (_g9157991581_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g9157991581_ _tid91574_)))
                  (lambda (_g9158391585_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass91572_ _g9158391585_))))))))
    (define if-class-slot-field
      (lambda (_klass91561_
               _slot91562_
               _if-final91563_
               _if-struct91564_
               _if-struct-field91565_
               _if-class-slot91566_)
        (let ((_field91568_
               (let ((__tmp96913
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass91561_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (table-ref __tmp96913 _slot91562_ '#f))))
          (if (let () (declare (not safe)) (not _field91568_))
              (error '"unknown slot" 'class: _klass91561_ 'slot: _slot91562_)
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass91561_))
                  (_if-final91563_ _klass91561_ _slot91562_ _field91568_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass91561_))
                      (_if-struct91564_ _klass91561_ _slot91562_ _field91568_)
                      (if (let ((_strukt91570_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass91561_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt91570_
                                    'gerbil#class::t))
                                 (let ((__tmp96914
                                        (let ((__tmp96915
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt91570_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp96915))))
                                   (declare (not safe))
                                   (##fx< _field91568_ __tmp96914))))
                          (_if-struct-field91565_
                           _klass91561_
                           _slot91562_
                           _field91568_)
                          (_if-class-slot91566_
                           _klass91561_
                           _slot91562_
                           _field91568_))))))))
    (define make-class-slot-accessor
      (lambda (_klass91558_ _slot91559_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass91558_
           _slot91559_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass91555_ _slot91556_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass91555_
           _slot91556_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass91552_ _slot91553_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass91552_
           _slot91553_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass91549_ _slot91550_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass91549_
           _slot91550_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object91533_ _class91534_ _slot91535_)
        (apply error
               '"not an instance"
               'object:
               _object91533_
               'class:
               _class91534_
               (if _slot91535_
                   (let ((__tmp96916
                          (let ()
                            (declare (not safe))
                            (cons _slot91535_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp96916))
                   '()))))
    (define not-an-instance__0
      (lambda (_object91540_ _class91541_)
        (let ((_slot91543_ '#f))
          (declare (not safe))
          (not-an-instance__% _object91540_ _class91541_ _slot91543_))))
    (define not-an-instance
      (lambda _g96918_
        (let ((_g96917_ (let () (declare (not safe)) (##length _g96918_))))
          (cond ((let () (declare (not safe)) (##fx= _g96917_ 2))
                 (apply (lambda (_object91540_ _class91541_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object91540_ _class91541_)))
                        _g96918_))
                ((let () (declare (not safe)) (##fx= _g96917_ 3))
                 (apply (lambda (_object91545_ _class91546_ _slot91547_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object91545_
                             _class91546_
                             _slot91547_)))
                        _g96918_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g96918_))))))
    (define make-final-slot-accessor
      (lambda (_klass91526_ _slot91527_ _field91528_)
        (lambda (_obj91530_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj91530_
             _field91528_
             _klass91526_
             _slot91527_)))))
    (define make-final-slot-mutator
      (lambda (_klass91519_ _slot91520_ _field91521_)
        (lambda (_obj91523_ _val91524_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj91523_
             _val91524_
             _field91521_
             _klass91519_
             _slot91520_)))))
    (define make-struct-slot-accessor
      (lambda (_klass91513_ _slot91514_ _field91515_)
        (lambda (_obj91517_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj91517_
             _field91515_
             _klass91513_
             _slot91514_)))))
    (define make-struct-slot-mutator
      (lambda (_klass91506_ _slot91507_ _field91508_)
        (lambda (_obj91510_ _val91511_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj91510_
             _val91511_
             _field91508_
             _klass91506_
             _slot91507_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass91500_ _slot91501_ _field91502_)
        (lambda (_obj91504_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj91504_
             _field91502_
             _klass91500_
             _slot91501_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass91493_ _slot91494_ _field91495_)
        (lambda (_obj91497_ _val91498_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj91497_
             _val91498_
             _field91495_
             _klass91493_
             _slot91494_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass91487_ _slot91488_ _field91489_)
        (lambda (_obj91491_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass91487_ _obj91491_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj91491_ _field91489_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj91491_ _klass91487_ _slot91488_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass91480_ _slot91481_ _field91482_)
        (lambda (_obj91484_ _val91485_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass91480_ _obj91484_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj91484_ _field91482_ _val91485_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj91484_ _klass91480_ _slot91481_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass91474_ _slot91475_ _field91476_)
        (lambda (_obj91478_)
          (if (let ((__tmp96919
                     (let () (declare (not safe)) (##type-id _klass91474_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj91478_ __tmp96919))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj91478_ _field91476_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass91474_ _obj91478_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj91478_ _slot91475_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj91478_
                     _klass91474_
                     _slot91475_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass91467_ _slot91468_ _field91469_)
        (lambda (_obj91471_ _val91472_)
          (if (let ((__tmp96920
                     (let () (declare (not safe)) (##type-id _klass91467_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj91471_ __tmp96920))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj91471_ _field91469_ _val91472_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass91467_ _obj91471_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj91471_ _slot91468_ _val91472_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj91471_
                     _klass91467_
                     _slot91468_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass91461_ _slot91462_ _field91463_)
        (lambda (_obj91465_)
          (if (let ((__tmp96921
                     (let () (declare (not safe)) (##type-id _klass91461_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj91465_ __tmp96921))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj91465_ _field91463_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj91465_ _slot91462_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass91454_ _slot91455_ _field91456_)
        (lambda (_obj91458_ _val91459_)
          (if (let ((__tmp96922
                     (let () (declare (not safe)) (##type-id _klass91454_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj91458_ __tmp96922))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj91458_ _field91456_ _val91459_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj91458_ _slot91455_ _val91459_))))))
    (define class-slot-offset
      (lambda (_klass91451_ _slot91452_)
        (let ((__tmp96923
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass91451_ '8 class::t '#f))))
          (declare (not safe))
          (table-ref __tmp96923 _slot91452_ '#f))))
    (define class-slot-ref
      (lambda (_klass91445_ _obj91446_ _slot91447_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass91445_ _obj91446_))
            (let ((_off91449_
                   (let ((__tmp96924
                          (let ()
                            (declare (not safe))
                            (object-type _obj91446_))))
                     (declare (not safe))
                     (class-slot-offset __tmp96924 _slot91447_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj91446_
               _off91449_
               _klass91445_
               _slot91447_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj91446_ _klass91445_)))))
    (define class-slot-set!
      (lambda (_klass91438_ _obj91439_ _slot91440_ _val91441_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass91438_ _obj91439_))
            (let ((_off91443_
                   (let ((__tmp96925
                          (let ()
                            (declare (not safe))
                            (object-type _obj91439_))))
                     (declare (not safe))
                     (class-slot-offset __tmp96925 _slot91440_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj91439_
               _val91441_
               _off91443_
               _klass91438_
               _slot91440_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj91439_ _klass91438_)))))
    (define unchecked-field-ref
      (lambda (_obj91435_ _off91436_)
        (let ((__tmp96926
               (let () (declare (not safe)) (##structure-type _obj91435_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj91435_ _off91436_ __tmp96926 '#f))))
    (define unchecked-field-set!
      (lambda (_obj91431_ _off91432_ _val91433_)
        (let ((__tmp96927
               (let () (declare (not safe)) (##structure-type _obj91431_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj91431_
           _val91433_
           _off91432_
           __tmp96927
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj91428_ _slot91429_)
        (let ((__tmp96928
               (let ((__tmp96929
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj91428_))))
                 (declare (not safe))
                 (class-slot-offset __tmp96929 _slot91429_))))
          (declare (not safe))
          (unchecked-field-ref _obj91428_ __tmp96928))))
    (define unchecked-slot-set!
      (lambda (_obj91424_ _slot91425_ _val91426_)
        (let ((__tmp96930
               (let ((__tmp96931
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj91424_))))
                 (declare (not safe))
                 (class-slot-offset __tmp96931 _slot91425_))))
          (declare (not safe))
          (unchecked-field-set! _obj91424_ __tmp96930 _val91426_))))
    (define slot-ref__%
      (lambda (_obj91400_ _slot91401_ _E91402_)
        (if (let () (declare (not safe)) (object? _obj91400_))
            (let* ((_klass91404_
                    (let () (declare (not safe)) (object-type _obj91400_)))
                   (_$e91407_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass91404_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass91404_ _slot91401_))
                        '#f)))
              (if _$e91407_
                  ((lambda (_off91410_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj91400_ _off91410_)))
                   _$e91407_)
                  (_E91402_ _obj91400_ _slot91401_)))
            (_E91402_ _obj91400_ _slot91401_))))
    (define slot-ref__0
      (lambda (_obj91415_ _slot91416_)
        (let ((_E91418_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj91415_ _slot91416_ _E91418_))))
    (define slot-ref
      (lambda _g96933_
        (let ((_g96932_ (let () (declare (not safe)) (##length _g96933_))))
          (cond ((let () (declare (not safe)) (##fx= _g96932_ 2))
                 (apply (lambda (_obj91415_ _slot91416_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj91415_ _slot91416_)))
                        _g96933_))
                ((let () (declare (not safe)) (##fx= _g96932_ 3))
                 (apply (lambda (_obj91420_ _slot91421_ _E91422_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj91420_ _slot91421_ _E91422_)))
                        _g96933_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g96933_))))))
    (define slot-set!__%
      (lambda (_obj91372_ _slot91373_ _val91374_ _E91375_)
        (if (let () (declare (not safe)) (object? _obj91372_))
            (let* ((_klass91377_
                    (let () (declare (not safe)) (object-type _obj91372_)))
                   (_$e91380_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass91377_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass91377_ _slot91373_))
                        '#f)))
              (if _$e91380_
                  ((lambda (_off91383_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj91372_
                        _off91383_
                        _val91374_)))
                   _$e91380_)
                  (_E91375_ _obj91372_ _slot91373_)))
            (_E91375_ _obj91372_ _slot91373_))))
    (define slot-set!__0
      (lambda (_obj91388_ _slot91389_ _val91390_)
        (let ((_E91392_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj91388_ _slot91389_ _val91390_ _E91392_))))
    (define slot-set!
      (lambda _g96935_
        (let ((_g96934_ (let () (declare (not safe)) (##length _g96935_))))
          (cond ((let () (declare (not safe)) (##fx= _g96934_ 3))
                 (apply (lambda (_obj91388_ _slot91389_ _val91390_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj91388_ _slot91389_ _val91390_)))
                        _g96935_))
                ((let () (declare (not safe)) (##fx= _g96934_ 4))
                 (apply (lambda (_obj91394_ _slot91395_ _val91396_ _E91397_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj91394_
                             _slot91395_
                             _val91396_
                             _E91397_)))
                        _g96935_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g96935_))))))
    (define __slot-error
      (lambda (_obj91368_ _slot91369_)
        (error '"Cannot find slot" 'object: _obj91368_ 'slot: _slot91369_)))
    (define subclass?
      (lambda (_maybe-sub-class91358_ _maybe-super-class91359_)
        (let* ((_maybe-super-class-id91361_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class91359_)))
               (_$e91363_
                (let ((__tmp96936
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class91358_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id91361_ __tmp96936))))
          (if _$e91363_
              _$e91363_
              (let ((__tmp96938
                     (lambda (_super-class91366_)
                       (let ((__tmp96939
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class91366_))))
                         (declare (not safe))
                         (eq? __tmp96939 _maybe-super-class-id91361_))))
                    (__tmp96937
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class91358_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp96938 __tmp96937))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass91355_ _obj91356_)
        (let ((__tmp96940
               (let () (declare (not safe)) (##type-id _klass91355_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj91356_ __tmp96940))))
    (define struct-instance?
      (lambda (_klass91352_ _obj91353_)
        (let ((__tmp96941
               (let () (declare (not safe)) (##type-id _klass91352_))))
          (declare (not safe))
          (##structure-instance-of? _obj91353_ __tmp96941))))
    (define class-instance?
      (lambda (_klass91347_ _obj91348_)
        (if (let () (declare (not safe)) (object? _obj91348_))
            (let ((_type91350_
                   (let () (declare (not safe)) (object-type _obj91348_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type91350_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type91350_ _klass91347_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass91342_ _k91343_)
        (let ((_obj91345_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass91342_ _k91343_))))
          (let () (declare (not safe)) (object-fill! _obj91345_ '#f))
          _obj91345_)))
    (define object-fill!
      (lambda (_obj91335_ _fill91336_)
        (let _loop91338_ ((_i91340_
                           (let ((__tmp96943
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj91335_))))
                             (declare (not safe))
                             (##fx- __tmp96943 '1))))
          (if (let () (declare (not safe)) (##fx> _i91340_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj91335_
                   _fill91336_
                   _i91340_
                   '#f
                   '#f))
                (let ((__tmp96942
                       (let () (declare (not safe)) (##fx- _i91340_ '1))))
                  (declare (not safe))
                  (_loop91338_ __tmp96942)))
              _obj91335_))))
    (define new-instance
      (lambda (_klass91333_)
        (let ((__obj96849
               (let ((__tmp96944
                      (let ((__tmp96945
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass91333_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp96945))))
                 (declare (not safe))
                 (##make-structure _klass91333_ __tmp96944))))
          (let () (declare (not safe)) (object-fill! __obj96849 '#f))
          __obj96849)))
    (define make-instance
      (lambda (_klass91323_ . _args91324_)
        (let* ((_obj91326_
                (let () (declare (not safe)) (new-instance _klass91323_)))
               (_$e91328_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass91323_ '10 class::t '#f))))
          (if _$e91328_
              ((lambda (_kons-id91331_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass91323_
                    _kons-id91331_
                    _obj91326_
                    _args91324_)))
               _$e91328_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass91323_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass91323_
                     _obj91326_
                     _args91324_))
                  (if (let ((__tmp96949
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass91323_))))
                        (declare (not safe))
                        (not __tmp96949))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass91323_
                         _obj91326_
                         _args91324_))
                      (if (let ((__tmp96947
                                 (let ((__tmp96948
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj91326_))))
                                   (declare (not safe))
                                   (##fx- __tmp96948 '1)))
                                (__tmp96946 (length _args91324_)))
                            (declare (not safe))
                            (##fx= __tmp96947 __tmp96946))
                          (apply ##structure _klass91323_ _args91324_)
                          (error '"arguments don't match object size"
                                 'class:
                                 _klass91323_
                                 'slots:
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass91323_))
                                 'args:
                                 _args91324_))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj91320_ . _args91321_)
        (if (let ((__tmp96951 (length _args91321_))
                  (__tmp96950
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj91320_))))
              (declare (not safe))
              (##fx< __tmp96951 __tmp96950))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj91320_ _args91321_))
            (error '"too many arguments for struct"
                   'object:
                   _obj91320_
                   'args:
                   _args91321_))))
    (define __struct-instance-init!
      (lambda (_obj91279_ _args91280_)
        (let _lp91282_ ((_k91284_ '1) (_rest91285_ _args91280_))
          (let* ((_rest9128691294_ _rest91285_)
                 (_else9128891302_ (lambda () _obj91279_))
                 (_K9129091308_
                  (lambda (_rest91305_ _hd91306_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj91279_ _k91284_ _hd91306_))
                    (let ((__tmp96952
                           (let () (declare (not safe)) (##fx+ _k91284_ '1))))
                      (declare (not safe))
                      (_lp91282_ __tmp96952 _rest91305_)))))
            (if (let () (declare (not safe)) (##pair? _rest9128691294_))
                (let ((_hd9129191311_
                       (let () (declare (not safe)) (##car _rest9128691294_)))
                      (_tl9129291313_
                       (let () (declare (not safe)) (##cdr _rest9128691294_))))
                  (let* ((_hd91316_ _hd9129191311_)
                         (_rest91318_ _tl9129291313_))
                    (declare (not safe))
                    (_K9129091308_ _rest91318_ _hd91316_)))
                (let () (declare (not safe)) (_else9128891302_)))))))
    (define class-instance-init!
      (lambda (_obj91276_ . _args91277_)
        (let ((__tmp96953
               (let () (declare (not safe)) (object-type _obj91276_))))
          (declare (not safe))
          (__class-instance-init! __tmp96953 _obj91276_ _args91277_))))
    (define __class-instance-init!
      (lambda (_klass91220_ _obj91221_ _args91222_)
        (let _lp91224_ ((_rest91226_ _args91222_))
          (let* ((_rest9122791237_ _rest91226_)
                 (_else9122991245_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest91226_))
                        _obj91221_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass91220_
                               'rest:
                               _rest91226_))))
                 (_K9123191257_
                  (lambda (_rest91248_ _val91249_ _key91250_)
                    (let ((_$e91252_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass91220_ _key91250_))))
                      (if _$e91252_
                          ((lambda (_off91255_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj91221_
                                _off91255_
                                _val91249_))
                             (let ()
                               (declare (not safe))
                               (_lp91224_ _rest91248_)))
                           _$e91252_)
                          (error '"unknown slot"
                                 'class:
                                 _klass91220_
                                 'slot:
                                 _key91250_))))))
            (if (let () (declare (not safe)) (##pair? _rest9122791237_))
                (let ((_hd9123291260_
                       (let () (declare (not safe)) (##car _rest9122791237_)))
                      (_tl9123391262_
                       (let () (declare (not safe)) (##cdr _rest9122791237_))))
                  (let ((_key91265_ _hd9123291260_))
                    (if (let () (declare (not safe)) (##pair? _tl9123391262_))
                        (let ((_hd9123491267_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl9123391262_)))
                              (_tl9123591269_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl9123391262_))))
                          (let* ((_val91272_ _hd9123491267_)
                                 (_rest91274_ _tl9123591269_))
                            (declare (not safe))
                            (_K9123191257_ _rest91274_ _val91272_ _key91265_)))
                        (let () (declare (not safe)) (_else9122991245_)))))
                (let () (declare (not safe)) (_else9122991245_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass91216_ _obj91217_ _args91218_)
        (apply call-method
               _klass91216_
               'instance-init!
               _obj91217_
               _args91218_)))
    (define constructor-init!
      (lambda (_klass91211_ _kons-id91212_ _obj91213_ . _args91214_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass91211_
           _kons-id91212_
           _obj91213_
           _args91214_))))
    (define __constructor-init!
      (lambda (_klass91201_ _kons-id91202_ _obj91203_ _args91204_)
        (let ((_$e91206_
               (let ()
                 (declare (not safe))
                 (__find-method _klass91201_ _obj91203_ _kons-id91202_))))
          (if _$e91206_
              ((lambda (_kons91209_)
                 (apply _kons91209_ _obj91203_ _args91204_)
                 _obj91203_)
               _$e91206_)
              (error '"missing constructor"
                     'class:
                     _klass91201_
                     'method:
                     _kons-id91202_)))))
    (define struct-copy
      (lambda (_struct91199_)
        (if (let () (declare (not safe)) (##structure? _struct91199_))
            '#!void
            (error '"not a structure" _struct91199_))
        (let () (declare (not safe)) (##structure-copy _struct91199_))))
    (define struct->list
      (lambda (_obj91197_)
        (if (let () (declare (not safe)) (object? _obj91197_))
            (let () (declare (not safe)) (##vector->list _obj91197_))
            (error '"not an object" _obj91197_))))
    (define class->list
      (lambda (_obj91184_)
        (if (let () (declare (not safe)) (object? _obj91184_))
            (let ((_klass91186_
                   (let () (declare (not safe)) (object-type _obj91184_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass91186_ 'gerbil#class::t))
                  (let ((_slot-vector91188_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass91186_
                            '7
                            class::t
                            '#f))))
                    (let _loop91190_ ((_index91192_
                                       (let ((__tmp96959
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector91188_))))
                                         (declare (not safe))
                                         (##fx- __tmp96959 '1)))
                                      (_plist91193_ '()))
                      (if (let () (declare (not safe)) (##fx< _index91192_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass91186_ _plist91193_))
                          (let ((_slot91195_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector91188_
                                    _index91192_))))
                            (let ((__tmp96958
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index91192_ '1)))
                                  (__tmp96954
                                   (let ((__tmp96957
                                          (symbol->keyword _slot91195_))
                                         (__tmp96955
                                          (let ((__tmp96956
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj91184_
                                                    _index91192_))))
                                            (declare (not safe))
                                            (cons __tmp96956 _plist91193_))))
                                     (declare (not safe))
                                     (cons __tmp96957 __tmp96955))))
                              (declare (not safe))
                              (_loop91190_ __tmp96958 __tmp96954))))))
                  (error '"not a class type"
                         'object:
                         _obj91184_
                         'class:
                         _klass91186_)))
            (error '"not an object" _obj91184_))))
    (define call-method
      (lambda (_obj91175_ _id91176_ . _args91177_)
        (let ((_$e91179_
               (let ()
                 (declare (not safe))
                 (method-ref _obj91175_ _id91176_))))
          (if _$e91179_
              ((lambda (_method91182_)
                 (apply _method91182_ _obj91175_ _args91177_))
               _$e91179_)
              (error '"cannot find method"
                     'object:
                     _obj91175_
                     'method:
                     _id91176_)))))
    (define __builtin-type-methods (make-table 'test: eq?))
    (define method-ref
      (lambda (_obj91172_ _id91173_)
        (if (let () (declare (not safe)) (object? _obj91172_))
            (let ((__tmp96960
                   (let () (declare (not safe)) (object-type _obj91172_))))
              (declare (not safe))
              (find-method __tmp96960 _obj91172_ _id91173_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj91166_ _id91167_)
        (let ((_$e91169_
               (let ()
                 (declare (not safe))
                 (method-ref _obj91166_ _id91167_))))
          (if _$e91169_
              _$e91169_
              (error '"missing method"
                     'object:
                     _obj91166_
                     'method:
                     _id91167_)))))
    (define bound-method-ref
      (lambda (_obj91156_ _id91157_)
        (let ((_$e91159_
               (let ()
                 (declare (not safe))
                 (method-ref _obj91156_ _id91157_))))
          (if _$e91159_
              ((lambda (_method91162_)
                 (lambda _args91164_
                   (apply _method91162_ _obj91156_ _args91164_)))
               _$e91159_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj91149_ _id91150_)
        (let ((_method91152_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj91149_ _id91150_))))
          (lambda _args91154_ (apply _method91152_ _obj91149_ _args91154_)))))
    (define find-method
      (lambda (_klass91145_ _obj91146_ _id91147_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass91145_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass91145_ _obj91146_ _id91147_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass91145_ _obj91146_ _id91147_)))))
    (define __find-method
      (lambda (_klass91138_ _obj91139_ _id91140_)
        (let ((_$e91142_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass91138_ _obj91139_ _id91140_))))
          (if _$e91142_
              _$e91142_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass91138_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass91138_ _obj91139_ _id91140_)))))))
    (define class-find-method
      (lambda (_klass91134_ _obj91135_ _id91136_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass91134_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass91134_ _obj91135_ _id91136_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins91126_ _obj91127_ _id91128_)
        (let ((__tmp96961
               (lambda (_g9112991131_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g9112991131_ _obj91127_ _id91128_)))))
          (declare (not safe))
          (ormap1 __tmp96961 _mixins91126_))))
    (define builtin-find-method
      (lambda (_klass91119_ _obj91120_ _id91121_)
        (if (let () (declare (not safe)) (##type? _klass91119_))
            (let ((_$e91123_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass91119_ _obj91120_ _id91121_))))
              (if _$e91123_
                  _$e91123_
                  (let ((__tmp96962
                         (let ()
                           (declare (not safe))
                           (##type-super _klass91119_))))
                    (declare (not safe))
                    (builtin-find-method __tmp96962 _obj91120_ _id91121_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass91096_ _obj91097_ _id91098_)
        (letrec ((_metaclass-resolve-method91100_
                  (lambda ()
                    (let ((__method96850
                           (let ()
                             (declare (not safe))
                             (method-ref _klass91096_ 'direct-method-ref))))
                      (if __method96850
                          (__method96850 _klass91096_ _obj91097_ _id91098_)
                          (error '"Missing method"
                                 _klass91096_
                                 'direct-method-ref)))))
                 (_metaclass-resolve-method!91101_
                  (lambda ()
                    (let ((_method91116_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method91100_))))
                      (let ((__tmp96964
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass91096_
                                '11
                                class::t
                                '#f)))
                            (__tmp96963 (if _method91116_ 'resolved 'unknown)))
                        (declare (not safe))
                        (table-set! __tmp96964 _id91098_ __tmp96963))
                      _method91116_))))
          (let ((_$e91103_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass91096_ '11 class::t '#f))))
            (if _$e91103_
                ((lambda (_ht91106_)
                   (let ((_method91108_
                          (let ()
                            (declare (not safe))
                            (table-ref _ht91106_ _id91098_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method91108_))
                         _method91108_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass91096_))
                             (let ((_$e91110_ _method91108_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e91110_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method91100_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'uknown _$e91110_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!91101_)))))
                             '#f))))
                 _$e91103_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass91096_))
                    (let ((_tab91113_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass91096_
                         _tab91113_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!91101_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass91092_ _obj91093_ _id91094_)
        (let ((__tmp96965 (##structure-ref _klass91092_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp96965 _obj91093_ _id91094_))))
    (define builtin-method-ref
      (lambda (_klass91083_ _obj91084_ _id91085_)
        (let ((_$e91087_
               (let ((__tmp96966
                      (let () (declare (not safe)) (##type-id _klass91083_))))
                 (declare (not safe))
                 (table-ref __builtin-type-methods __tmp96966 '#f))))
          (if _$e91087_
              ((lambda (_mtab91090_)
                 (let ()
                   (declare (not safe))
                   (table-ref _mtab91090_ _id91085_ '#f)))
               _$e91087_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass91049_ _id91050_ _proc91051_ _rebind?91052_)
        (letrec ((_bind!91054_
                  (lambda (_ht91067_)
                    (if (and (let () (declare (not safe)) (not _rebind?91052_))
                             (let ()
                               (declare (not safe))
                               (table-ref _ht91067_ _id91050_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass91049_
                               'method:
                               _id91050_)
                        (let ()
                          (declare (not safe))
                          (table-set! _ht91067_ _id91050_ _proc91051_))))))
          (if (let () (declare (not safe)) (procedure? _proc91051_))
              '#!void
              (error '"bad method; expected procedure" _proc91051_))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass91049_ 'gerbil#class::t))
              (let ((_ht91056_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass91049_
                        '11
                        class::t
                        '#f))))
                (if _ht91056_
                    (let () (declare (not safe)) (_bind!91054_ _ht91056_))
                    (let ((_ht91058_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass91049_
                         _ht91058_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!91054_ _ht91058_)))))
              (if (let () (declare (not safe)) (##type? _klass91049_))
                  (let ((_ht91065_
                         (let ((_$e91060_
                                (let ((__tmp96967
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass91049_))))
                                  (declare (not safe))
                                  (table-ref
                                   __builtin-type-methods
                                   __tmp96967
                                   '#f))))
                           (if _$e91060_
                               _$e91060_
                               (let ((_ht91063_
                                      (let ()
                                        (declare (not safe))
                                        (make-table 'test: eq?))))
                                 (let ((__tmp96968
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass91049_))))
                                   (declare (not safe))
                                   (table-set!
                                    __builtin-type-methods
                                    __tmp96968
                                    _ht91063_))
                                 _ht91063_)))))
                    (declare (not safe))
                    (_bind!91054_ _ht91065_))
                  (error '"bad class; expected class or builtin type"
                         _klass91049_))))))
    (define bind-method!__0
      (lambda (_klass91072_ _id91073_ _proc91074_)
        (let ((_rebind?91076_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass91072_
           _id91073_
           _proc91074_
           _rebind?91076_))))
    (define bind-method!
      (lambda _g96970_
        (let ((_g96969_ (let () (declare (not safe)) (##length _g96970_))))
          (cond ((let () (declare (not safe)) (##fx= _g96969_ 3))
                 (apply (lambda (_klass91072_ _id91073_ _proc91074_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass91072_
                             _id91073_
                             _proc91074_)))
                        _g96970_))
                ((let () (declare (not safe)) (##fx= _g96969_ 4))
                 (apply (lambda (_klass91078_
                                 _id91079_
                                 _proc91080_
                                 _rebind?91081_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass91078_
                             _id91079_
                             _proc91080_
                             _rebind?91081_)))
                        _g96970_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g96970_))))))
    (define __method-specializers (make-table 'test: eq?))
    (define bind-specializer!
      (lambda (_proc91045_ _specializer91046_)
        (let ()
          (declare (not safe))
          (table-set! __method-specializers _proc91045_ _specializer91046_))))
    (define seal-class!
      (lambda (_klass91012_)
        (letrec ((_collect-methods!91014_
                  (lambda (_mtab91030_)
                    (letrec ((_merge!91032_
                              (lambda (_tab91040_)
                                (let ((__tmp96971
                                       (lambda (_id91042_ _proc91043_)
                                         (let ()
                                           (declare (not safe))
                                           (table-set!
                                            _mtab91030_
                                            _id91042_
                                            _proc91043_)))))
                                  (declare (not safe))
                                  (table-for-each __tmp96971 _tab91040_))))
                             (_collect-direct-methods!91033_
                              (lambda (_klass91035_)
                                (let ((_$e91037_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _klass91035_
                                          '11
                                          class::t
                                          '#f))))
                                  (if _$e91037_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!91032_ _$e91037_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!91033_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass91012_))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass91012_ 'gerbil#class::t))
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass91012_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (class-type-final? _klass91012_))
                        '#!void
                        (error '"cannot seal non-final class" _klass91012_))
                    (if (let ()
                          (declare (not safe))
                          (class-type-metaclass? _klass91012_))
                        (let ((__method96851
                               (let ()
                                 (declare (not safe))
                                 (method-ref _klass91012_ 'seal-class!))))
                          (if __method96851
                              (__method96851 _klass91012_)
                              (error '"Missing method"
                                     _klass91012_
                                     'seal-class!)))
                        (if (let ((__tmp96978
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _klass91012_
                                      '6
                                      class::t
                                      '#f))))
                              (declare (not safe))
                              (find class-type-metaclass? __tmp96978))
                            (error '"cannot seal class that extends metaclass without a metaclass"
                                   _klass91012_)
                            (let ((_vtab91016_
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?)))
                                  (_mtab91017_
                                   (let ()
                                     (declare (not safe))
                                     (make-table 'test: eq?))))
                              (let ()
                                (declare (not safe))
                                (_collect-methods!91014_ _mtab91017_))
                              (let ((__tmp96972
                                     (lambda (_id91019_ _proc91020_)
                                       (let ((_$e91022_
                                              (let ()
                                                (declare (not safe))
                                                (table-ref
                                                 __method-specializers
                                                 _proc91020_
                                                 '#f))))
                                         (if _$e91022_
                                             ((lambda (_specializer91025_)
                                                (let ((_proc91027_
                                                       (_specializer91025_
                                                        _klass91012_))
                                                      (_gid91028_
                                                       (let ((__tmp96973
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##type-id _klass91012_))))
                 (declare (not safe))
                 (make-symbol__1 __tmp96973 '"::[" _id91019_ '"]"))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (eval (let ((__tmp96974
                                                               (let ((__tmp96975
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp96976
                                     (let ((__tmp96977
                                            (let ()
                                              (declare (not safe))
                                              (cons _proc91027_ '()))))
                                       (declare (not safe))
                                       (cons 'quote __tmp96977))))
                                (declare (not safe))
                                (cons __tmp96976 '()))))
                         (declare (not safe))
                         (cons _gid91028_ __tmp96975))))
                  (declare (not safe))
                  (cons 'def __tmp96974)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-set!
                                                     _vtab91016_
                                                     _id91019_
                                                     _proc91027_))))
                                              _$e91022_)
                                             (let ()
                                               (declare (not safe))
                                               (table-set!
                                                _vtab91016_
                                                _id91019_
                                                _proc91020_)))))))
                                (declare (not safe))
                                (table-for-each __tmp96972 _mtab91017_))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _klass91012_
                                 _vtab91016_
                                 '11
                                 class::t
                                 '#f)))))
                    (let ()
                      (declare (not safe))
                      (&class-type-seal! _klass91012_))))
              '#!void))))
    (define next-method
      (lambda (_subklass90961_ _obj90962_ _id90963_)
        (let ((_klass90965_
               (let () (declare (not safe)) (object-type _obj90962_)))
              (_type-id90966_
               (let () (declare (not safe)) (##type-id _subklass90961_))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass90965_ 'gerbil#class::t))
              (let _lp90968_ ((_rest90970_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass90965_))))
                (let* ((_rest9097190979_ _rest90970_)
                       (_else9097390987_ (lambda () '#f))
                       (_K9097590993_
                        (lambda (_rest90990_ _klass90991_)
                          (if (let ((__tmp96981
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass90991_))))
                                (declare (not safe))
                                (eq? _type-id90966_ __tmp96981))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method
                                 _rest90990_
                                 _obj90962_
                                 _id90963_))
                              (let ()
                                (declare (not safe))
                                (_lp90968_ _rest90990_))))))
                  (if (let () (declare (not safe)) (##pair? _rest9097190979_))
                      (let ((_hd9097690996_
                             (let ()
                               (declare (not safe))
                               (##car _rest9097190979_)))
                            (_tl9097790998_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest9097190979_))))
                        (let* ((_klass91001_ _hd9097690996_)
                               (_rest91003_ _tl9097790998_))
                          (declare (not safe))
                          (_K9097590993_ _rest91003_ _klass91001_)))
                      (let () (declare (not safe)) (_else9097390987_)))))
              (if (let () (declare (not safe)) (##type? _klass90965_))
                  (let _lp91005_ ((_klass91007_ _klass90965_))
                    (if (let ((__tmp96980
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass91007_))))
                          (declare (not safe))
                          (eq? _type-id90966_ __tmp96980))
                        (let ((__tmp96979
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass91007_))))
                          (declare (not safe))
                          (builtin-find-method
                           __tmp96979
                           _obj90962_
                           _id90963_))
                        (let ((_$e91009_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass91007_))))
                          (if _$e91009_
                              (let ()
                                (declare (not safe))
                                (_lp91005_ _$e91009_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass90951_ _obj90952_ _id90953_ . _args90954_)
        (let ((_$e90956_
               (let ()
                 (declare (not safe))
                 (next-method _subklass90951_ _obj90952_ _id90953_))))
          (if _$e90956_
              ((lambda (_methodf90959_)
                 (apply _methodf90959_ _obj90952_ _args90954_))
               _$e90956_)
              (error '"cannot find next method"
                     'object:
                     _obj90952_
                     'method:
                     _id90953_)))))
    (define write-style (lambda (_we90949_) (macro-writeenv-style _we90949_)))
    (define write-object
      (lambda (_we90941_ _obj90942_)
        (let ((_$e90944_
               (let () (declare (not safe)) (method-ref _obj90942_ ':wr))))
          (if _$e90944_
              ((lambda (_method90947_) (_method90947_ _obj90942_ _we90941_))
               _$e90944_)
              (let ()
                (declare (not safe))
                (##default-wr _we90941_ _obj90942_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
