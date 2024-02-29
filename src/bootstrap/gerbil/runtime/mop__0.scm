(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1709229969)
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
      (let* ((_slots64444_
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
             (_slot-vector64446_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots64444_))))
             (_slot-table64453_
              (let ((_slot-table64448_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot64450_ _field64451_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table64448_
                      _slot64450_
                      _field64451_))
                   (let ((__tmp64594 (symbol->keyword _slot64450_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table64448_
                      __tmp64594
                      _field64451_)))
                 _slots64444_
                 (let ((__tmp64595 (length _slots64444_)))
                   (declare (not safe))
                   (iota__1 __tmp64595 '1)))
                _slot-table64448_))
             (_flags64455_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields64461_
              (list->vector
               (apply append
                      (map (lambda (_g6445664458_) (list _g6445664458_ '5 '#f))
                           (let ()
                             (declare (not safe))
                             (drop _slots64444_ '5))))))
             (_properties64463_
              (let ((__tmp64598
                     (let ((__tmp64599
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots64444_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp64599)))
                    (__tmp64596
                     (let ((__tmp64597
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp64597 '()))))
                (declare (not safe))
                (cons __tmp64598 __tmp64596)))
             (_t64465_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags64455_
                 ##type-type
                 _fields64461_
                 '()
                 _slot-vector64446_
                 _slot-table64453_
                 _properties64463_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t64465_ _t64465_))
        _t64465_))
    (define class-type?
      (lambda (_obj64442_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj64442_ class::t.id))))
    (define class-type=?
      (lambda (_x64439_ _y64440_)
        (let ((__tmp64601 (##structure-ref _x64439_ '1 class::t '#f))
              (__tmp64600 (##structure-ref _y64440_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp64601 __tmp64600))))
    (define type-opaque?
      (lambda (_type64437_)
        (let ((__tmp64602
               (let ((__tmp64603
                      (let ()
                        (declare (not safe))
                        (##type-flags _type64437_))))
                 (declare (not safe))
                 (##fxand __tmp64603 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp64602 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type64435_)
        (let ((__tmp64604
               (let ((__tmp64605
                      (let ()
                        (declare (not safe))
                        (##type-flags _type64435_))))
                 (declare (not safe))
                 (##fxand __tmp64605 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp64604 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type64433_)
        (let ((__tmp64606
               (let ((__tmp64607
                      (let ()
                        (declare (not safe))
                        (##type-flags _type64433_))))
                 (declare (not safe))
                 (##fxand __tmp64607 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp64606 '0))))
    (define class-type-struct?
      (lambda (_klass64431_)
        (let ((__tmp64608
               (let ((__tmp64609
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64431_))))
                 (declare (not safe))
                 (##fxand __tmp64609 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp64608 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass64429_)
        (let ((__tmp64610
               (let ((__tmp64611
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64429_))))
                 (declare (not safe))
                 (##fxand __tmp64611 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp64610 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass64427_)
        (let ((__tmp64612
               (let ((__tmp64613
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64427_))))
                 (declare (not safe))
                 (##fxand __tmp64613 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp64612 class-type-flag-metaclass))))
    (define properties-form
      (lambda (_properties64393_)
        (map (lambda (_e6439464396_)
               (let* ((_g6439864405_ _e6439464396_)
                      (_E6440064409_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (error '"No clause matching" _g6439864405_))))
                      (_K6440164415_
                       (lambda (_val64412_ _key64413_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key64413_ 'direct-supers:))
                             (let ((__tmp64614 (map class-type-id _val64412_)))
                               (declare (not safe))
                               (cons _key64413_ __tmp64614))
                             (let ()
                               (declare (not safe))
                               (cons _key64413_ _val64412_))))))
                 (if (let () (declare (not safe)) (##pair? _g6439864405_))
                     (let ((_hd6440264418_
                            (let ()
                              (declare (not safe))
                              (##car _g6439864405_)))
                           (_tl6440364420_
                            (let ()
                              (declare (not safe))
                              (##cdr _g6439864405_))))
                       (let* ((_key64423_ _hd6440264418_)
                              (_val64425_ _tl6440364420_))
                         (declare (not safe))
                         (_K6440164415_ _val64425_ _key64423_)))
                     (let () (declare (not safe)) (_E6440064409_)))))
             _properties64393_)))
    (define make-class-type-descriptor
      (lambda (_type-id64292_
               _type-name64293_
               _type-super64294_
               _precedence-list64295_
               _slot-vector64296_
               _properties64297_
               _constructor64298_
               _slot-table64299_
               _methods64300_)
        (letrec ((_make-props!64302_
                  (lambda (_key64362_)
                    (letrec* ((_ht64364_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_put-slots!64365_
                               (lambda (_ht64386_ _slots64387_)
                                 (for-each
                                  (lambda (_g6438864390_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _ht64386_
                                       _g6438864390_
                                       '#t)))
                                  _slots64387_)))
                              (_put-alist!64366_
                               (lambda (_ht64375_ _key64376_ _alist64377_)
                                 (let ((_$e64379_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq__0
                                           _key64376_
                                           _alist64377_))))
                                   (if _$e64379_
                                       ((lambda (_g6438164383_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!64365_
                                             _ht64375_
                                             _g6438164383_)))
                                        _$e64379_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!64366_
                         _ht64364_
                         _key64362_
                         _properties64297_))
                      (for-each
                       (lambda (_mixin64368_)
                         (let ((_alist64370_
                                (##structure-ref
                                 _mixin64368_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq__0 'transparent: _alist64370_))
                                   (let ((__tmp64616
                                          (let ()
                                            (declare (not safe))
                                            (assgetq__0
                                             _key64362_
                                             _alist64370_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp64616)))
                               (let ((__tmp64615
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin64368_))))
                                 (declare (not safe))
                                 (_put-slots!64365_ _ht64364_ __tmp64615))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!64366_
                                  _ht64364_
                                  _key64362_
                                  _alist64370_)))))
                       _precedence-list64295_)
                      _ht64364_))))
          (let* ((_transparent?64304_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'transparent: _properties64297_)))
                 (_all-slots-printable?64309_
                  (let ((_$e64306_ _transparent?64304_))
                    (if _$e64306_
                        _$e64306_
                        (let ((__tmp64617
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'print: _properties64297_))))
                          (declare (not safe))
                          (eq? '#t __tmp64617)))))
                 (_printable64311_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?64309_))
                      (let ()
                        (declare (not safe))
                        (_make-props!64302_ 'print:))
                      '#f))
                 (_all-slots-equalable?64316_
                  (let ((_$e64313_ _transparent?64304_))
                    (if _$e64313_
                        _$e64313_
                        (let ((__tmp64618
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'equal: _properties64297_))))
                          (declare (not safe))
                          (eq? '#t __tmp64618)))))
                 (_equalable64318_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?64316_))
                      (let ()
                        (declare (not safe))
                        (_make-props!64302_ 'equal:))
                      '#f))
                 (_first-new-field64320_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super64294_
                         'gerbil#class::t))
                      (let ((__tmp64619
                             (##structure-ref
                              _type-super64294_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp64619))
                      '1))
                 (_field-info-length64322_
                  (let ((__tmp64620
                         (let ((__tmp64621
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector64296_))))
                           (declare (not safe))
                           (##fx- __tmp64621 _first-new-field64320_))))
                    (declare (not safe))
                    (##fx* '3 __tmp64620)))
                 (_field-info64324_ (make-vector _field-info-length64322_ '#f))
                 (_struct?64326_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'struct: _properties64297_)))
                 (_final?64328_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'final: _properties64297_)))
                 (_metaclass64336_
                  (let ((_metaclass6432964331_
                         (let ()
                           (declare (not safe))
                           (assgetq__0 'metaclass: _properties64297_))))
                    (if _metaclass6432964331_
                        (let ((_metaclass64334_ _metaclass6432964331_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass64334_
                                 'gerbil#class::t))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (error '"metaclass is not a class type"
                                       'class:
                                       _type-id64292_
                                       'metaclass:
                                       _metaclass64334_)))
                          _metaclass64334_)
                        '#f)))
                 (_opaque?64341_
                  (let ((_$e64338_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?64316_))))
                    (if _$e64338_
                        _$e64338_
                        (if _type-super64294_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super64294_))
                            '#f))))
                 (_type-flags64343_
                  (let ((__tmp64625 (if _final?64328_ '0 type-flag-extensible))
                        (__tmp64624 (if _opaque?64341_ type-flag-opaque '0))
                        (__tmp64623
                         (if _struct?64326_ class-type-flag-struct '0))
                        (__tmp64622
                         (if _metaclass64336_ class-type-flag-metaclass '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp64625
                             __tmp64624
                             __tmp64623
                             __tmp64622))))
            (let _loop64346_ ((_i64348_ _first-new-field64320_) (_j64349_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j64349_ _field-info-length64322_))
                  (let* ((_slot64351_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector64296_ _i64348_)))
                         (_flags64359_
                          (if _transparent?64304_
                              '0
                              (let ((__tmp64627
                                     (if (or _all-slots-printable?64309_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _printable64311_
                                                _slot64351_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp64626
                                     (if (or _all-slots-equalable?64316_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _equalable64318_
                                                _slot64351_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp64627 __tmp64626)))))
                    (vector-set! _field-info64324_ _j64349_ _slot64351_)
                    (vector-set!
                     _field-info64324_
                     (let () (declare (not safe)) (##fx+ _j64349_ '1))
                     _flags64359_)
                    (let ((__tmp64629
                           (let () (declare (not safe)) (##fx+ _i64348_ '1)))
                          (__tmp64628
                           (let () (declare (not safe)) (##fx+ _j64349_ '3))))
                      (declare (not safe))
                      (_loop64346_ __tmp64629 __tmp64628)))
                  '#!void))
            (if _metaclass64336_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass64336_
                   _type-id64292_
                   _type-name64293_
                   _type-flags64343_
                   _type-super64294_
                   _field-info64324_
                   _precedence-list64295_
                   _slot-vector64296_
                   _slot-table64299_
                   _properties64297_
                   _constructor64298_
                   _methods64300_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id64292_
                   _type-name64293_
                   _type-flags64343_
                   _type-super64294_
                   _field-info64324_
                   _precedence-list64295_
                   _slot-vector64296_
                   _slot-table64299_
                   _properties64297_
                   _constructor64298_
                   _methods64300_)))))))
    (define class-type-id
      (lambda (_klass64290_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64290_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass64288_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64288_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass64285_ _val64286_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64285_ _val64286_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass64280_ _val64282_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64280_
           _val64282_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass64278_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64278_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass64276_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64276_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass64273_ _val64274_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64273_ _val64274_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass64268_ _val64270_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64268_
           _val64270_
           '2
           class::t
           'name))))
    (define class-type-super
      (lambda (_klass64266_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64266_ '3 class::t 'super))))
    (define &class-type-super
      (lambda (_klass64264_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64264_ '3 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass64261_ _val64262_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64261_ _val64262_ '3 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass64256_ _val64258_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64256_
           _val64258_
           '3
           class::t
           'super))))
    (define class-type-flags
      (lambda (_klass64254_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64254_ '4 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass64252_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64252_ '4 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass64249_ _val64250_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64249_ _val64250_ '4 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass64244_ _val64246_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64244_
           _val64246_
           '4
           class::t
           'flags))))
    (define class-type-fields
      (lambda (_klass64242_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64242_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass64240_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64240_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass64237_ _val64238_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64237_ _val64238_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass64232_ _val64234_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64232_
           _val64234_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass64230_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64230_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass64228_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass64228_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass64225_ _val64226_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass64225_
           _val64226_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass64220_ _val64222_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64220_
           _val64222_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass64218_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64218_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass64216_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64216_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass64213_ _val64214_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass64213_
           _val64214_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass64208_ _val64210_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64208_
           _val64210_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass64206_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64206_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass64204_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64204_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass64201_ _val64202_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64201_ _val64202_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass64196_ _val64198_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64196_
           _val64198_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass64194_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64194_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass64192_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64192_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass64189_ _val64190_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64189_ _val64190_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass64184_ _val64186_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64184_
           _val64186_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass64182_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64182_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass64180_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64180_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass64177_ _val64178_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass64177_
           _val64178_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass64172_ _val64174_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64172_
           _val64174_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass64170_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64170_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass64168_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64168_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass64165_ _val64166_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64165_ _val64166_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass64160_ _val64162_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64160_
           _val64162_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass64158_)
        (cdr (vector->list (##structure-ref _klass64158_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass64156_)
        (let ((__tmp64630
               (let ((__tmp64631
                      (##structure-ref _klass64156_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp64631))))
          (declare (not safe))
          (##fx- __tmp64630 '1))))
    (define class-type-seal!
      (lambda (_klass64154_)
        (let ((__tmp64632
               (let ((__tmp64633
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64154_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp64633))))
          (declare (not safe))
          (##structure-set!
           _klass64154_
           __tmp64632
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass64152_)
        (let ((__tmp64634
               (let ((__tmp64635
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64152_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp64635))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64152_
           __tmp64634
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct64143_ _maybe-super-struct64144_)
        (let ((_maybe-super-struct-id64146_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct64144_))))
          (let _lp64148_ ((_super-struct64150_ _maybe-sub-struct64143_))
            (if (let () (declare (not safe)) (not _super-struct64150_))
                '#f
                (if (let ((__tmp64637
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct64150_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id64146_ __tmp64637))
                    '#t
                    (let ((__tmp64636
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct64150_))))
                      (declare (not safe))
                      (_lp64148_ __tmp64636))))))))
    (define base-struct/1
      (lambda (_klass64141_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass64141_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass64141_))
                _klass64141_
                (let () (declare (not safe)) (##type-super _klass64141_)))
            (if (let () (declare (not safe)) (not _klass64141_))
                '#f
                (let ()
                  (declare (not safe))
                  (error '"not a class or false" _klass64141_))))))
    (define base-struct/2
      (lambda (_klass164129_ _klass264130_)
        (let ((_s164132_
               (let () (declare (not safe)) (base-struct/1 _klass164129_)))
              (_s264133_
               (let () (declare (not safe)) (base-struct/1 _klass264130_))))
          (if (or (let () (declare (not safe)) (not _s164132_))
                  (and _s264133_
                       (let ()
                         (declare (not safe))
                         (substruct? _s164132_ _s264133_))))
              _s264133_
              (if (or (let () (declare (not safe)) (not _s264133_))
                      (and _s164132_
                           (let ()
                             (declare (not safe))
                             (substruct? _s264133_ _s164132_))))
                  _s164132_
                  (let ()
                    (declare (not safe))
                    (error '"bad mixin: incompatible struct bases"
                           _klass164129_
                           _klass264130_
                           _s164132_
                           _s264133_)))))))
    (define base-struct/list
      (lambda (_all-supers64013_)
        (let* ((_all-supers6401464039_ _all-supers64013_)
               (_E6401964043_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _all-supers6401464039_)))))
          (let ((_K6403764126_ (lambda () '#f))
                (_K6403464112_
                 (lambda (_x64110_)
                   (let () (declare (not safe)) (base-struct/1 _x64110_))))
                (_K6402964089_
                 (lambda (_y64086_ _x64087_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x64087_ _y64086_))))
                (_K6402064050_
                 (lambda (_y64047_ _x64048_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x64048_ _y64047_)))))
            (let* ((___match6458864589_
                    (lambda (_hd6402164053_ _tl6402264055_)
                      (let ((_x64058_ _hd6402164053_))
                        (letrec ((_splice-rest6402464060_
                                  (lambda (_rest6402864067_ _y64069_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest6402864067_))
                                        (let ()
                                          (declare (not safe))
                                          (_K6402064050_ _y64069_ _x64058_))
                                        (let ()
                                          (declare (not safe))
                                          (_E6401964043_)))))
                                 (_splice-try6402664062_
                                  (lambda (_hd6402764071_
                                           _rest6402864073_
                                           _y6402364074_)
                                    (let ((_y64077_ _hd6402764071_))
                                      (let ((__tmp64639
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest6402864073_)))
                                            (__tmp64638
                                             (let ()
                                               (declare (not safe))
                                               (cons _y64077_ _y6402364074_))))
                                        (declare (not safe))
                                        (_splice-loop6402564064_
                                         __tmp64639
                                         __tmp64638)))))
                                 (_splice-loop6402564064_
                                  (lambda (_rest6402864079_ _y6402364080_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest6402864079_))
                                        (let ((__tmp64641
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest6402864079_))))
                                          (declare (not safe))
                                          (_splice-try6402664062_
                                           __tmp64641
                                           _rest6402864079_
                                           _y6402364080_))
                                        (let ((__tmp64640
                                               (reverse _y6402364080_)))
                                          (declare (not safe))
                                          (_splice-rest6402464060_
                                           _rest6402864079_
                                           __tmp64640))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop6402564064_ _tl6402264055_ '()))))))
                   (_try-match6401664122_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers6401464039_))
                          (let ((_tl6403664117_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers6401464039_)))
                                (_hd6403564115_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers6401464039_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl6403664117_))
                                (let ((_x64120_ _hd6403564115_))
                                  (declare (not safe))
                                  (base-struct/1 _x64120_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl6403664117_))
                                    (let ((_tl6403364101_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl6403664117_)))
                                          (_hd6403264099_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl6403664117_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl6403364101_))
                                          (let ((_x64097_ _hd6403564115_)
                                                (_y64104_ _hd6403264099_))
                                            (let ()
                                              (declare (not safe))
                                              (_K6402964089_
                                               _y64104_
                                               _x64097_)))
                                          (___match6458864589_
                                           _hd6403564115_
                                           _tl6403664117_)))
                                    (___match6458864589_
                                     _hd6403564115_
                                     _tl6403664117_))))
                          (let () (declare (not safe)) (_E6401964043_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers6401464039_))
                  (let () (declare (not safe)) (_K6403764126_))
                  (let () (declare (not safe)) (_try-match6401664122_))))))))
    (define base-struct
      (lambda _all-supers64011_
        (let () (declare (not safe)) (base-struct/list _all-supers64011_))))
    (define find-super-constructor
      (lambda (_super63963_)
        (let _lp63965_ ((_rest63967_ _super63963_) (_constructor63968_ '#f))
          (let* ((_rest6396963977_ _rest63967_)
                 (_else6397163985_ (lambda () _constructor63968_))
                 (_K6397363999_
                  (lambda (_rest63988_ _hd63989_)
                    (let ((_$e63991_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd63989_
                              '10
                              class::t
                              '#f))))
                      (if _$e63991_
                          ((lambda (_xconstructor63994_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor63968_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor63968_
                                            _xconstructor63994_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp63965_ _rest63988_ _xconstructor63994_))
                                 (let ()
                                   (declare (not safe))
                                   (error '"conflicting implicit constructors"
                                          _constructor63968_
                                          _xconstructor63994_))))
                           _$e63991_)
                          (let ()
                            (declare (not safe))
                            (_lp63965_ _rest63988_ _constructor63968_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6396963977_))
                (let ((_hd6397464002_
                       (let () (declare (not safe)) (##car _rest6396963977_)))
                      (_tl6397564004_
                       (let () (declare (not safe)) (##cdr _rest6396963977_))))
                  (let* ((_hd64007_ _hd6397464002_)
                         (_rest64009_ _tl6397564004_))
                    (declare (not safe))
                    (_K6397363999_ _rest64009_ _hd64007_)))
                (let () (declare (not safe)) (_else6397163985_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list63939_ _direct-slots63940_)
        (let* ((_next-slot63942_ '1)
               (_slot-table63944_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_r-slots63946_ '(__class))
               (_process-slot63950_
                (lambda (_slot63948_)
                  (if (let () (declare (not safe)) (symbol? _slot63948_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"invalid slot name" _slot63948_)))
                  (if (let ((__tmp64643
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _slot-table63944_
                                _slot63948_
                                absent-value))))
                        (declare (not safe))
                        (eq? __tmp64643 absent-value))
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table63944_
                           _slot63948_
                           _next-slot63942_))
                        (let ((__tmp64642 (symbol->keyword _slot63948_)))
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table63944_
                           __tmp64642
                           _next-slot63942_))
                        (set! _r-slots63946_
                              (let ()
                                (declare (not safe))
                                (cons _slot63948_ _r-slots63946_)))
                        (set! _next-slot63942_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot63942_ '1))))
                      '#!void)))
               (_process-slots63956_
                (lambda (_g6395163953_)
                  (for-each _process-slot63950_ _g6395163953_))))
          (for-each
           (lambda (_mixin63959_)
             (let ((__tmp64644
                    (let ((__tmp64645
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin63959_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq__% 'direct-slots: __tmp64645 '()))))
               (declare (not safe))
               (_process-slots63956_ __tmp64644)))
           (reverse _class-precedence-list63939_))
          (let ()
            (declare (not safe))
            (_process-slots63956_ _direct-slots63940_))
          (let ((_slot-vector63961_ (list->vector (reverse _r-slots63946_))))
            (values _slot-vector63961_ _slot-table63944_)))))
    (define make-class-type
      (lambda (_id63901_
               _name63902_
               _direct-supers63903_
               _direct-slots63904_
               _properties63905_
               _constructor63906_)
        (let ((_$e63911_
               (let ((__tmp64646
                      (lambda (_$obj63908_)
                        (let ((__tmp64647
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj63908_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp64647)))))
                 (declare (not safe))
                 (find __tmp64646 _direct-supers63903_))))
          (if _$e63911_
              ((lambda (_g6391363915_)
                 (let ()
                   (declare (not safe))
                   (error '"Illegal super class; not a class descriptor"
                          _g6391363915_)))
               _$e63911_)
              (let ((_$e63918_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers63903_))))
                (if _$e63918_
                    ((lambda (_g6392063922_)
                       (let ()
                         (declare (not safe))
                         (error '"Cannot extend final class" _g6392063922_)))
                     _$e63918_)
                    '#!void))))
        (let ((_g64648_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers63903_))))
          (begin
            (let ((_g64649_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g64648_) (##vector-length _g64648_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g64649_ 2)))
                  (error "Context expects 2 values" _g64649_)))
            (let ((_precedence-list63925_
                   (let () (declare (not safe)) (##vector-ref _g64648_ 0)))
                  (_struct-super63926_
                   (let () (declare (not safe)) (##vector-ref _g64648_ 1))))
              (let ((_g64650_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list63925_
                        _direct-slots63904_))))
                (begin
                  (let ((_g64651_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g64650_)
                               (##vector-length _g64650_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g64651_ 2)))
                        (error "Context expects 2 values" _g64651_)))
                  (let ((_slot-vector63928_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g64650_ 0)))
                        (_slot-table63929_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g64650_ 1))))
                    (let* ((_properties63931_
                            (let ((__tmp64654
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots63904_)))
                                  (__tmp64652
                                   (let ((__tmp64653
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers63903_))))
                                     (declare (not safe))
                                     (cons __tmp64653 _properties63905_))))
                              (declare (not safe))
                              (cons __tmp64654 __tmp64652)))
                           (_constructor*63936_
                            (let ((_$e63933_ _constructor63906_))
                              (if _$e63933_
                                  _$e63933_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers63903_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id63901_
                         _name63902_
                         _struct-super63926_
                         _precedence-list63925_
                         _slot-vector63928_
                         _properties63931_
                         _constructor*63936_
                         _slot-table63929_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass63899_)
        (let ((__tmp64655
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass63899_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass63899_ __tmp64655))))
    (define compute-precedence-list
      (lambda (_direct-supers63897_)
        (let ()
          (declare (not safe))
          (c4-linearize
           '()
           _direct-supers63897_
           'get-precedence-list:
           class-precedence-list
           'struct:
           class-type-struct?
           'eq:
           eq?
           'get-name:
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass63881_)
        (let ((_tid63883_
               (let () (declare (not safe)) (##type-id _klass63881_))))
          (if (let () (declare (not safe)) (class-type-final? _klass63881_))
              (lambda (_g6388463886_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g6388463886_ _tid63883_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass63881_))
                  (lambda (_g6388863890_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g6388863890_ _tid63883_)))
                  (lambda (_g6389263894_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass63881_ _g6389263894_))))))))
    (define if-class-slot-field
      (lambda (_klass63870_
               _slot63871_
               _if-final63872_
               _if-struct63873_
               _if-struct-field63874_
               _if-class-slot63875_)
        (let ((_field63877_
               (let ((__tmp64656
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass63870_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (symbolic-table-ref __tmp64656 _slot63871_ '#f))))
          (if (let () (declare (not safe)) (not _field63877_))
              (let ()
                (declare (not safe))
                (error '"unknown slot"
                       'class:
                       _klass63870_
                       'slot:
                       _slot63871_))
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass63870_))
                  (_if-final63872_ _klass63870_ _slot63871_ _field63877_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass63870_))
                      (_if-struct63873_ _klass63870_ _slot63871_ _field63877_)
                      (if (let ((_strukt63879_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass63870_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt63879_
                                    'gerbil#class::t))
                                 (let ((__tmp64657
                                        (let ((__tmp64658
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt63879_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp64658))))
                                   (declare (not safe))
                                   (##fx< _field63877_ __tmp64657))))
                          (_if-struct-field63874_
                           _klass63870_
                           _slot63871_
                           _field63877_)
                          (_if-class-slot63875_
                           _klass63870_
                           _slot63871_
                           _field63877_))))))))
    (define make-class-slot-accessor
      (lambda (_klass63867_ _slot63868_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63867_
           _slot63868_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass63864_ _slot63865_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63864_
           _slot63865_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass63861_ _slot63862_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63861_
           _slot63862_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass63858_ _slot63859_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63858_
           _slot63859_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object63842_ _class63843_ _slot63844_)
        (apply error
               '"not an instance"
               'object:
               _object63842_
               'class:
               _class63843_
               (if _slot63844_
                   (let ((__tmp64659
                          (let ()
                            (declare (not safe))
                            (cons _slot63844_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp64659))
                   '()))))
    (define not-an-instance__0
      (lambda (_object63849_ _class63850_)
        (let ((_slot63852_ '#f))
          (declare (not safe))
          (not-an-instance__% _object63849_ _class63850_ _slot63852_))))
    (define not-an-instance
      (lambda _g64661_
        (let ((_g64660_ (let () (declare (not safe)) (##length _g64661_))))
          (cond ((let () (declare (not safe)) (##fx= _g64660_ 2))
                 (apply (lambda (_object63849_ _class63850_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object63849_ _class63850_)))
                        _g64661_))
                ((let () (declare (not safe)) (##fx= _g64660_ 3))
                 (apply (lambda (_object63854_ _class63855_ _slot63856_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object63854_
                             _class63855_
                             _slot63856_)))
                        _g64661_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g64661_))))))
    (define make-final-slot-accessor
      (lambda (_klass63835_ _slot63836_ _field63837_)
        (lambda (_obj63839_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj63839_
             _field63837_
             _klass63835_
             _slot63836_)))))
    (define make-final-slot-mutator
      (lambda (_klass63828_ _slot63829_ _field63830_)
        (lambda (_obj63832_ _val63833_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj63832_
             _val63833_
             _field63830_
             _klass63828_
             _slot63829_)))))
    (define make-struct-slot-accessor
      (lambda (_klass63822_ _slot63823_ _field63824_)
        (lambda (_obj63826_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj63826_
             _field63824_
             _klass63822_
             _slot63823_)))))
    (define make-struct-slot-mutator
      (lambda (_klass63815_ _slot63816_ _field63817_)
        (lambda (_obj63819_ _val63820_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj63819_
             _val63820_
             _field63817_
             _klass63815_
             _slot63816_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass63809_ _slot63810_ _field63811_)
        (lambda (_obj63813_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj63813_
             _field63811_
             _klass63809_
             _slot63810_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass63802_ _slot63803_ _field63804_)
        (lambda (_obj63806_ _val63807_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj63806_
             _val63807_
             _field63804_
             _klass63802_
             _slot63803_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass63796_ _slot63797_ _field63798_)
        (lambda (_obj63800_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass63796_ _obj63800_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj63800_ _field63798_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj63800_ _klass63796_ _slot63797_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass63789_ _slot63790_ _field63791_)
        (lambda (_obj63793_ _val63794_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass63789_ _obj63793_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj63793_ _field63791_ _val63794_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj63793_ _klass63789_ _slot63790_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass63783_ _slot63784_ _field63785_)
        (lambda (_obj63787_)
          (if (let ((__tmp64662
                     (let () (declare (not safe)) (##type-id _klass63783_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63787_ __tmp64662))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj63787_ _field63785_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass63783_ _obj63787_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj63787_ _slot63784_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj63787_
                     _klass63783_
                     _slot63784_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass63776_ _slot63777_ _field63778_)
        (lambda (_obj63780_ _val63781_)
          (if (let ((__tmp64663
                     (let () (declare (not safe)) (##type-id _klass63776_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63780_ __tmp64663))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj63780_ _field63778_ _val63781_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass63776_ _obj63780_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj63780_ _slot63777_ _val63781_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj63780_
                     _klass63776_
                     _slot63777_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass63770_ _slot63771_ _field63772_)
        (lambda (_obj63774_)
          (if (let ((__tmp64664
                     (let () (declare (not safe)) (##type-id _klass63770_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63774_ __tmp64664))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj63774_ _field63772_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj63774_ _slot63771_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass63763_ _slot63764_ _field63765_)
        (lambda (_obj63767_ _val63768_)
          (if (let ((__tmp64665
                     (let () (declare (not safe)) (##type-id _klass63763_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63767_ __tmp64665))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj63767_ _field63765_ _val63768_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj63767_ _slot63764_ _val63768_))))))
    (define class-slot-offset
      (lambda (_klass63760_ _slot63761_)
        (let ((__tmp64666
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass63760_ '8 class::t '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp64666 _slot63761_ '#f))))
    (define class-slot-ref
      (lambda (_klass63754_ _obj63755_ _slot63756_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass63754_ _obj63755_))
            (let ((_off63758_
                   (let ((__tmp64667 (object-type _obj63755_)))
                     (declare (not safe))
                     (class-slot-offset __tmp64667 _slot63756_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj63755_
               _off63758_
               _klass63754_
               _slot63756_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj63755_ _klass63754_)))))
    (define class-slot-set!
      (lambda (_klass63747_ _obj63748_ _slot63749_ _val63750_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass63747_ _obj63748_))
            (let ((_off63752_
                   (let ((__tmp64668 (object-type _obj63748_)))
                     (declare (not safe))
                     (class-slot-offset __tmp64668 _slot63749_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj63748_
               _val63750_
               _off63752_
               _klass63747_
               _slot63749_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj63748_ _klass63747_)))))
    (define unchecked-field-ref
      (lambda (_obj63744_ _off63745_)
        (let ((__tmp64669
               (let () (declare (not safe)) (##structure-type _obj63744_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj63744_ _off63745_ __tmp64669 '#f))))
    (define unchecked-field-set!
      (lambda (_obj63740_ _off63741_ _val63742_)
        (let ((__tmp64670
               (let () (declare (not safe)) (##structure-type _obj63740_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj63740_
           _val63742_
           _off63741_
           __tmp64670
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj63737_ _slot63738_)
        (let ((__tmp64671
               (let ((__tmp64672
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj63737_))))
                 (declare (not safe))
                 (class-slot-offset __tmp64672 _slot63738_))))
          (declare (not safe))
          (unchecked-field-ref _obj63737_ __tmp64671))))
    (define unchecked-slot-set!
      (lambda (_obj63733_ _slot63734_ _val63735_)
        (let ((__tmp64673
               (let ((__tmp64674
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj63733_))))
                 (declare (not safe))
                 (class-slot-offset __tmp64674 _slot63734_))))
          (declare (not safe))
          (unchecked-field-set! _obj63733_ __tmp64673 _val63735_))))
    (define slot-ref__%
      (lambda (_obj63709_ _slot63710_ _E63711_)
        (if (object? _obj63709_)
            (let* ((_klass63713_ (object-type _obj63709_))
                   (_$e63716_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass63713_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass63713_ _slot63710_))
                        '#f)))
              (if _$e63716_
                  ((lambda (_off63719_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj63709_ _off63719_)))
                   _$e63716_)
                  (_E63711_ _obj63709_ _slot63710_)))
            (_E63711_ _obj63709_ _slot63710_))))
    (define slot-ref__0
      (lambda (_obj63724_ _slot63725_)
        (let ((_E63727_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj63724_ _slot63725_ _E63727_))))
    (define slot-ref
      (lambda _g64676_
        (let ((_g64675_ (let () (declare (not safe)) (##length _g64676_))))
          (cond ((let () (declare (not safe)) (##fx= _g64675_ 2))
                 (apply (lambda (_obj63724_ _slot63725_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj63724_ _slot63725_)))
                        _g64676_))
                ((let () (declare (not safe)) (##fx= _g64675_ 3))
                 (apply (lambda (_obj63729_ _slot63730_ _E63731_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj63729_ _slot63730_ _E63731_)))
                        _g64676_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g64676_))))))
    (define slot-set!__%
      (lambda (_obj63681_ _slot63682_ _val63683_ _E63684_)
        (if (object? _obj63681_)
            (let* ((_klass63686_ (object-type _obj63681_))
                   (_$e63689_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass63686_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass63686_ _slot63682_))
                        '#f)))
              (if _$e63689_
                  ((lambda (_off63692_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj63681_
                        _off63692_
                        _val63683_)))
                   _$e63689_)
                  (_E63684_ _obj63681_ _slot63682_)))
            (_E63684_ _obj63681_ _slot63682_))))
    (define slot-set!__0
      (lambda (_obj63697_ _slot63698_ _val63699_)
        (let ((_E63701_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj63697_ _slot63698_ _val63699_ _E63701_))))
    (define slot-set!
      (lambda _g64678_
        (let ((_g64677_ (let () (declare (not safe)) (##length _g64678_))))
          (cond ((let () (declare (not safe)) (##fx= _g64677_ 3))
                 (apply (lambda (_obj63697_ _slot63698_ _val63699_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj63697_ _slot63698_ _val63699_)))
                        _g64678_))
                ((let () (declare (not safe)) (##fx= _g64677_ 4))
                 (apply (lambda (_obj63703_ _slot63704_ _val63705_ _E63706_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj63703_
                             _slot63704_
                             _val63705_
                             _E63706_)))
                        _g64678_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g64678_))))))
    (define __slot-error
      (lambda (_obj63677_ _slot63678_)
        (let ()
          (declare (not safe))
          (error '"Cannot find slot" 'object: _obj63677_ 'slot: _slot63678_))))
    (define subclass?
      (lambda (_maybe-sub-class63667_ _maybe-super-class63668_)
        (let* ((_maybe-super-class-id63670_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class63668_)))
               (_$e63672_
                (let ((__tmp64679
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class63667_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id63670_ __tmp64679))))
          (if _$e63672_
              _$e63672_
              (let ((__tmp64681
                     (lambda (_super-class63675_)
                       (let ((__tmp64682
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class63675_))))
                         (declare (not safe))
                         (eq? __tmp64682 _maybe-super-class-id63670_))))
                    (__tmp64680
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class63667_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp64681 __tmp64680))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass63664_ _obj63665_)
        (let ((__tmp64683
               (let () (declare (not safe)) (##type-id _klass63664_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj63665_ __tmp64683))))
    (define struct-instance?
      (lambda (_klass63661_ _obj63662_)
        (let ((__tmp64684
               (let () (declare (not safe)) (##type-id _klass63661_))))
          (declare (not safe))
          (##structure-instance-of? _obj63662_ __tmp64684))))
    (define class-instance?
      (lambda (_klass63656_ _obj63657_)
        (if (object? _obj63657_)
            (let ((_type63659_ (object-type _obj63657_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type63659_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type63659_ _klass63656_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass63651_ _k63652_)
        (let ((_obj63654_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass63651_ _k63652_))))
          (let () (declare (not safe)) (object-fill! _obj63654_ '#f))
          _obj63654_)))
    (define object-fill!
      (lambda (_obj63644_ _fill63645_)
        (let _loop63647_ ((_i63649_
                           (let ((__tmp64686
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj63644_))))
                             (declare (not safe))
                             (##fx- __tmp64686 '1))))
          (if (let () (declare (not safe)) (##fx> _i63649_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj63644_
                   _fill63645_
                   _i63649_
                   '#f
                   '#f))
                (let ((__tmp64685
                       (let () (declare (not safe)) (##fx- _i63649_ '1))))
                  (declare (not safe))
                  (_loop63647_ __tmp64685)))
              _obj63644_))))
    (define new-instance
      (lambda (_klass63642_)
        (let ((__obj64590
               (let ((__tmp64687
                      (let ((__tmp64688
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass63642_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp64688))))
                 (declare (not safe))
                 (##make-structure _klass63642_ __tmp64687))))
          (let () (declare (not safe)) (object-fill! __obj64590 '#f))
          __obj64590)))
    (define make-instance
      (lambda (_klass63632_ . _args63633_)
        (let* ((_obj63635_
                (let () (declare (not safe)) (new-instance _klass63632_)))
               (_$e63637_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass63632_ '10 class::t '#f))))
          (if _$e63637_
              ((lambda (_kons-id63640_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass63632_
                    _kons-id63640_
                    _obj63635_
                    _args63633_)))
               _$e63637_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass63632_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass63632_
                     _obj63635_
                     _args63633_))
                  (if (let ((__tmp64693
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass63632_))))
                        (declare (not safe))
                        (not __tmp64693))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass63632_
                         _obj63635_
                         _args63633_))
                      (if (let ((__tmp64691
                                 (let ((__tmp64692
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj63635_))))
                                   (declare (not safe))
                                   (##fx- __tmp64692 '1)))
                                (__tmp64690 (length _args63633_)))
                            (declare (not safe))
                            (##fx= __tmp64691 __tmp64690))
                          (apply ##structure _klass63632_ _args63633_)
                          (let ((__tmp64689
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass63632_))))
                            (declare (not safe))
                            (error '"arguments don't match object size"
                                   'class:
                                   _klass63632_
                                   'slots:
                                   __tmp64689
                                   'args:
                                   _args63633_)))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj63629_ . _args63630_)
        (if (let ((__tmp64695 (length _args63630_))
                  (__tmp64694
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj63629_))))
              (declare (not safe))
              (##fx< __tmp64695 __tmp64694))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj63629_ _args63630_))
            (let ()
              (declare (not safe))
              (error '"too many arguments for struct"
                     'object:
                     _obj63629_
                     'args:
                     _args63630_)))))
    (define __struct-instance-init!
      (lambda (_obj63588_ _args63589_)
        (let _lp63591_ ((_k63593_ '1) (_rest63594_ _args63589_))
          (let* ((_rest6359563603_ _rest63594_)
                 (_else6359763611_ (lambda () _obj63588_))
                 (_K6359963617_
                  (lambda (_rest63614_ _hd63615_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj63588_ _k63593_ _hd63615_))
                    (let ((__tmp64696
                           (let () (declare (not safe)) (##fx+ _k63593_ '1))))
                      (declare (not safe))
                      (_lp63591_ __tmp64696 _rest63614_)))))
            (if (let () (declare (not safe)) (##pair? _rest6359563603_))
                (let ((_hd6360063620_
                       (let () (declare (not safe)) (##car _rest6359563603_)))
                      (_tl6360163622_
                       (let () (declare (not safe)) (##cdr _rest6359563603_))))
                  (let* ((_hd63625_ _hd6360063620_)
                         (_rest63627_ _tl6360163622_))
                    (declare (not safe))
                    (_K6359963617_ _rest63627_ _hd63625_)))
                (let () (declare (not safe)) (_else6359763611_)))))))
    (define class-instance-init!
      (lambda (_obj63585_ . _args63586_)
        (let ((__tmp64697 (object-type _obj63585_)))
          (declare (not safe))
          (__class-instance-init! __tmp64697 _obj63585_ _args63586_))))
    (define __class-instance-init!
      (lambda (_klass63529_ _obj63530_ _args63531_)
        (let _lp63533_ ((_rest63535_ _args63531_))
          (let* ((_rest6353663546_ _rest63535_)
                 (_else6353863554_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest63535_))
                        _obj63530_
                        (let ()
                          (declare (not safe))
                          (error '"unexpected class initializer arguments"
                                 'class:
                                 _klass63529_
                                 'rest:
                                 _rest63535_)))))
                 (_K6354063566_
                  (lambda (_rest63557_ _val63558_ _key63559_)
                    (let ((_$e63561_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass63529_ _key63559_))))
                      (if _$e63561_
                          ((lambda (_off63564_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj63530_
                                _off63564_
                                _val63558_))
                             (let ()
                               (declare (not safe))
                               (_lp63533_ _rest63557_)))
                           _$e63561_)
                          (let ()
                            (declare (not safe))
                            (error '"unknown slot"
                                   'class:
                                   _klass63529_
                                   'slot:
                                   _key63559_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6353663546_))
                (let ((_hd6354163569_
                       (let () (declare (not safe)) (##car _rest6353663546_)))
                      (_tl6354263571_
                       (let () (declare (not safe)) (##cdr _rest6353663546_))))
                  (let ((_key63574_ _hd6354163569_))
                    (if (let () (declare (not safe)) (##pair? _tl6354263571_))
                        (let ((_hd6354363576_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6354263571_)))
                              (_tl6354463578_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6354263571_))))
                          (let* ((_val63581_ _hd6354363576_)
                                 (_rest63583_ _tl6354463578_))
                            (declare (not safe))
                            (_K6354063566_ _rest63583_ _val63581_ _key63574_)))
                        (let () (declare (not safe)) (_else6353863554_)))))
                (let () (declare (not safe)) (_else6353863554_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass63525_ _obj63526_ _args63527_)
        (apply call-method
               _klass63525_
               'instance-init!
               _obj63526_
               _args63527_)))
    (define constructor-init!
      (lambda (_klass63520_ _kons-id63521_ _obj63522_ . _args63523_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass63520_
           _kons-id63521_
           _obj63522_
           _args63523_))))
    (define __constructor-init!
      (lambda (_klass63510_ _kons-id63511_ _obj63512_ _args63513_)
        (let ((_$e63515_
               (let ()
                 (declare (not safe))
                 (__find-method _klass63510_ _obj63512_ _kons-id63511_))))
          (if _$e63515_
              ((lambda (_kons63518_)
                 (apply _kons63518_ _obj63512_ _args63513_)
                 _obj63512_)
               _$e63515_)
              (let ()
                (declare (not safe))
                (error '"missing constructor"
                       'class:
                       _klass63510_
                       'method:
                       _kons-id63511_))))))
    (define struct-copy
      (lambda (_struct63508_)
        (if (let () (declare (not safe)) (##structure? _struct63508_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"not a structure" _struct63508_)))
        (let () (declare (not safe)) (##structure-copy _struct63508_))))
    (define struct->list
      (lambda (_obj63506_)
        (if (object? _obj63506_)
            (let () (declare (not safe)) (##vector->list _obj63506_))
            (let ()
              (declare (not safe))
              (error '"not an object" _obj63506_)))))
    (define class->list
      (lambda (_obj63493_)
        (if (object? _obj63493_)
            (let ((_klass63495_ (object-type _obj63493_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass63495_ 'gerbil#class::t))
                  (let ((_slot-vector63497_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass63495_
                            '7
                            class::t
                            '#f))))
                    (let _loop63499_ ((_index63501_
                                       (let ((__tmp64703
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector63497_))))
                                         (declare (not safe))
                                         (##fx- __tmp64703 '1)))
                                      (_plist63502_ '()))
                      (if (let () (declare (not safe)) (##fx< _index63501_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass63495_ _plist63502_))
                          (let ((_slot63504_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector63497_
                                    _index63501_))))
                            (let ((__tmp64702
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index63501_ '1)))
                                  (__tmp64698
                                   (let ((__tmp64701
                                          (symbol->keyword _slot63504_))
                                         (__tmp64699
                                          (let ((__tmp64700
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj63493_
                                                    _index63501_))))
                                            (declare (not safe))
                                            (cons __tmp64700 _plist63502_))))
                                     (declare (not safe))
                                     (cons __tmp64701 __tmp64699))))
                              (declare (not safe))
                              (_loop63499_ __tmp64702 __tmp64698))))))
                  (let ()
                    (declare (not safe))
                    (error '"not a class type"
                           'object:
                           _obj63493_
                           'class:
                           _klass63495_))))
            (let ()
              (declare (not safe))
              (error '"not an object" _obj63493_)))))
    (define call-method
      (lambda (_obj63484_ _id63485_ . _args63486_)
        (let ((_$e63488_
               (let ()
                 (declare (not safe))
                 (method-ref _obj63484_ _id63485_))))
          (if _$e63488_
              ((lambda (_method63491_)
                 (apply _method63491_ _obj63484_ _args63486_))
               _$e63488_)
              (let ()
                (declare (not safe))
                (error '"cannot find method"
                       'object:
                       _obj63484_
                       'method:
                       _id63485_))))))
    (define __builtin-type-methods
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define method-ref
      (lambda (_obj63481_ _id63482_)
        (if (object? _obj63481_)
            (let ((__tmp64704 (object-type _obj63481_)))
              (declare (not safe))
              (find-method __tmp64704 _obj63481_ _id63482_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj63475_ _id63476_)
        (let ((_$e63478_
               (let ()
                 (declare (not safe))
                 (method-ref _obj63475_ _id63476_))))
          (if _$e63478_
              _$e63478_
              (let ()
                (declare (not safe))
                (error '"missing method"
                       'object:
                       _obj63475_
                       'method:
                       _id63476_))))))
    (define bound-method-ref
      (lambda (_obj63465_ _id63466_)
        (let ((_$e63468_
               (let ()
                 (declare (not safe))
                 (method-ref _obj63465_ _id63466_))))
          (if _$e63468_
              ((lambda (_method63471_)
                 (lambda _args63473_
                   (apply _method63471_ _obj63465_ _args63473_)))
               _$e63468_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj63458_ _id63459_)
        (let ((_method63461_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj63458_ _id63459_))))
          (lambda _args63463_ (apply _method63461_ _obj63458_ _args63463_)))))
    (define find-method
      (lambda (_klass63454_ _obj63455_ _id63456_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63454_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass63454_ _obj63455_ _id63456_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass63454_ _obj63455_ _id63456_)))))
    (define __find-method
      (lambda (_klass63447_ _obj63448_ _id63449_)
        (let ((_$e63451_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass63447_ _obj63448_ _id63449_))))
          (if _$e63451_
              _$e63451_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass63447_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass63447_ _obj63448_ _id63449_)))))))
    (define class-find-method
      (lambda (_klass63443_ _obj63444_ _id63445_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63443_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass63443_ _obj63444_ _id63445_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins63435_ _obj63436_ _id63437_)
        (let ((__tmp64705
               (lambda (_g6343863440_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g6343863440_ _obj63436_ _id63437_)))))
          (declare (not safe))
          (ormap1 __tmp64705 _mixins63435_))))
    (define builtin-find-method
      (lambda (_klass63428_ _obj63429_ _id63430_)
        (if (let () (declare (not safe)) (##type? _klass63428_))
            (let ((_$e63432_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass63428_ _obj63429_ _id63430_))))
              (if _$e63432_
                  _$e63432_
                  (let ((__tmp64706
                         (let ()
                           (declare (not safe))
                           (##type-super _klass63428_))))
                    (declare (not safe))
                    (builtin-find-method __tmp64706 _obj63429_ _id63430_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass63405_ _obj63406_ _id63407_)
        (letrec ((_metaclass-resolve-method63409_
                  (lambda ()
                    (let ((__method64591
                           (let ()
                             (declare (not safe))
                             (method-ref _klass63405_ 'direct-method-ref))))
                      (if __method64591
                          (__method64591 _klass63405_ _obj63406_ _id63407_)
                          (let ()
                            (declare (not safe))
                            (error '"Missing method"
                                   _klass63405_
                                   'direct-method-ref))))))
                 (_metaclass-resolve-method!63410_
                  (lambda ()
                    (let ((_method63425_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method63409_))))
                      (let ((__tmp64708
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass63405_
                                '11
                                class::t
                                '#f)))
                            (__tmp64707 (if _method63425_ 'resolved 'unknown)))
                        (declare (not safe))
                        (symbolic-table-set! __tmp64708 _id63407_ __tmp64707))
                      _method63425_))))
          (let ((_$e63412_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass63405_ '11 class::t '#f))))
            (if _$e63412_
                ((lambda (_ht63415_)
                   (let ((_method63417_
                          (let ()
                            (declare (not safe))
                            (symbolic-table-ref _ht63415_ _id63407_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method63417_))
                         _method63417_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass63405_))
                             (let ((_$e63419_ _method63417_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e63419_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method63409_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'unknown _$e63419_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!63410_)))))
                             '#f))))
                 _$e63412_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass63405_))
                    (let ((_tab63422_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass63405_
                         _tab63422_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!63410_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass63401_ _obj63402_ _id63403_)
        (let ((__tmp64709 (##structure-ref _klass63401_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp64709 _obj63402_ _id63403_))))
    (define builtin-method-ref
      (lambda (_klass63392_ _obj63393_ _id63394_)
        (let ((_$e63396_
               (let ((__tmp64710
                      (let () (declare (not safe)) (##type-id _klass63392_))))
                 (declare (not safe))
                 (symbolic-table-ref __builtin-type-methods __tmp64710 '#f))))
          (if _$e63396_
              ((lambda (_mtab63399_)
                 (let ()
                   (declare (not safe))
                   (symbolic-table-ref _mtab63399_ _id63394_ '#f)))
               _$e63396_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass63358_ _id63359_ _proc63360_ _rebind?63361_)
        (letrec ((_bind!63363_
                  (lambda (_ht63376_)
                    (if (and (let () (declare (not safe)) (not _rebind?63361_))
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref _ht63376_ _id63359_ '#f)))
                        (let ()
                          (declare (not safe))
                          (error '"method already bound"
                                 'class:
                                 _klass63358_
                                 'method:
                                 _id63359_))
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _ht63376_
                           _id63359_
                           _proc63360_))))))
          (if (let () (declare (not safe)) (procedure? _proc63360_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad method; expected procedure" _proc63360_)))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass63358_ 'gerbil#class::t))
              (let ((_ht63365_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass63358_
                        '11
                        class::t
                        '#f))))
                (if _ht63365_
                    (let () (declare (not safe)) (_bind!63363_ _ht63365_))
                    (let ((_ht63367_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass63358_
                         _ht63367_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!63363_ _ht63367_)))))
              (if (let () (declare (not safe)) (##type? _klass63358_))
                  (let ((_ht63374_
                         (let ((_$e63369_
                                (let ((__tmp64711
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass63358_))))
                                  (declare (not safe))
                                  (symbolic-table-ref
                                   __builtin-type-methods
                                   __tmp64711
                                   '#f))))
                           (if _$e63369_
                               _$e63369_
                               (let ((_ht63372_
                                      (let ()
                                        (declare (not safe))
                                        (make-symbolic-table__% '#f '0))))
                                 (let ((__tmp64712
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass63358_))))
                                   (declare (not safe))
                                   (symbolic-table-set!
                                    __builtin-type-methods
                                    __tmp64712
                                    _ht63372_))
                                 _ht63372_)))))
                    (declare (not safe))
                    (_bind!63363_ _ht63374_))
                  (let ()
                    (declare (not safe))
                    (error '"bad class; expected class or builtin type"
                           _klass63358_)))))))
    (define bind-method!__0
      (lambda (_klass63381_ _id63382_ _proc63383_)
        (let ((_rebind?63385_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass63381_
           _id63382_
           _proc63383_
           _rebind?63385_))))
    (define bind-method!
      (lambda _g64714_
        (let ((_g64713_ (let () (declare (not safe)) (##length _g64714_))))
          (cond ((let () (declare (not safe)) (##fx= _g64713_ 3))
                 (apply (lambda (_klass63381_ _id63382_ _proc63383_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass63381_
                             _id63382_
                             _proc63383_)))
                        _g64714_))
                ((let () (declare (not safe)) (##fx= _g64713_ 4))
                 (apply (lambda (_klass63387_
                                 _id63388_
                                 _proc63389_
                                 _rebind?63390_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass63387_
                             _id63388_
                             _proc63389_
                             _rebind?63390_)))
                        _g64714_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g64714_))))))
    (define make-method-specializer-table__%
      (lambda (_size-hint63338_ _seed63340_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint63338_
           procedure-hash
           eq?
           _seed63340_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_size-hint63346_ '#f) (_seed63348_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint63346_ _seed63348_))))
    (define make-method-specializer-table__1
      (lambda (_size-hint63350_)
        (let ((_seed63352_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint63350_ _seed63352_))))
    (define make-method-specializer-table
      (lambda _g64716_
        (let ((_g64715_ (let () (declare (not safe)) (##length _g64716_))))
          (cond ((let () (declare (not safe)) (##fx= _g64715_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__0)))
                        _g64716_))
                ((let () (declare (not safe)) (##fx= _g64715_ 1))
                 (apply (lambda (_size-hint63350_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__1
                             _size-hint63350_)))
                        _g64716_))
                ((let () (declare (not safe)) (##fx= _g64715_ 2))
                 (apply (lambda (_size-hint63354_ _seed63355_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__%
                             _size-hint63354_
                             _seed63355_)))
                        _g64716_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g64716_))))))
    (define method-specializer-table-ref
      (lambda (_tab63295_ _key63296_ _default63297_)
        (let ((_table63299_
               (let () (declare (not safe)) (&raw-table-table _tab63295_)))
              (_seed63300_
               (let () (declare (not safe)) (&raw-table-seed _tab63295_))))
          (let* ((_h63302_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key63296_))
                         _seed63300_))
                 (_size63305_ (vector-length _table63299_))
                 (_entries63308_ (fxquotient _size63305_ '2))
                 (_start63311_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63302_ _entries63308_)
                   '1)))
            (let _loop63315_ ((_probe63318_ _start63311_)
                              (_i63320_ '1)
                              (_deleted63322_ '#f))
              (let ((_k63325_ (vector-ref _table63299_ _probe63318_)))
                (if (let ((__tmp64723 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63325_ __tmp64723))
                    _default63297_
                    (if (let ((__tmp64722 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63325_ __tmp64722))
                        (let ((__tmp64721
                               (let ((_next-probe63328_
                                      (fx+ _start63311_
                                           _i63320_
                                           (fx* _i63320_ _i63320_))))
                                 (fxmodulo _next-probe63328_ _size63305_)))
                              (__tmp64720 (fx+ _i63320_ '1))
                              (__tmp64719
                               (let ((_$e63331_ _deleted63322_))
                                 (if _$e63331_ _$e63331_ _probe63318_))))
                          (declare (not safe))
                          (_loop63315_ __tmp64721 __tmp64720 __tmp64719))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63296_ _k63325_))
                            (vector-ref _table63299_ (fx+ _probe63318_ '1))
                            (let ((__tmp64718
                                   (let ((_next-probe63334_
                                          (fx+ _start63311_
                                               _i63320_
                                               (fx* _i63320_ _i63320_))))
                                     (fxmodulo _next-probe63334_ _size63305_)))
                                  (__tmp64717 (fx+ _i63320_ '1)))
                              (declare (not safe))
                              (_loop63315_
                               __tmp64718
                               __tmp64717
                               _deleted63322_)))))))))))
    (define method-specializer-table-set!
      (lambda (_tab63291_ _key63292_ _value63293_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab63291_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab63291_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63291_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-set!
           _tab63291_
           _key63292_
           _value63293_))))
    (define __method-specializer-table-set!
      (lambda (_tab63246_ _key63247_ _value63248_)
        (let ((_table63251_
               (let () (declare (not safe)) (&raw-table-table _tab63246_)))
              (_seed63252_
               (let () (declare (not safe)) (&raw-table-seed _tab63246_))))
          (let* ((_h63254_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key63247_))
                         _seed63252_))
                 (_size63257_ (vector-length _table63251_))
                 (_entries63260_ (fxquotient _size63257_ '2))
                 (_start63263_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63254_ _entries63260_)
                   '1)))
            (let _loop63267_ ((_probe63270_ _start63263_)
                              (_i63272_ '1)
                              (_deleted63274_ '#f))
              (let ((_k63277_ (vector-ref _table63251_ _probe63270_)))
                (if (let ((__tmp64733 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63277_ __tmp64733))
                    (if _deleted63274_
                        (begin
                          (vector-set! _table63251_ _deleted63274_ _key63247_)
                          (vector-set!
                           _table63251_
                           (fx+ _deleted63274_ '1)
                           _value63248_)
                          ((lambda ()
                             (let ((__tmp64732
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63246_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63246_
                                __tmp64732)))))
                        (begin
                          (vector-set! _table63251_ _probe63270_ _key63247_)
                          (vector-set!
                           _table63251_
                           (fx+ _probe63270_ '1)
                           _value63248_)
                          ((lambda ()
                             (let ((__tmp64730
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab63246_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab63246_ __tmp64730))
                             (let ((__tmp64731
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63246_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63246_
                                __tmp64731))))))
                    (if (let ((__tmp64729 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63277_ __tmp64729))
                        (let ((__tmp64728
                               (let ((_next-probe63282_
                                      (fx+ _start63263_
                                           _i63272_
                                           (fx* _i63272_ _i63272_))))
                                 (fxmodulo _next-probe63282_ _size63257_)))
                              (__tmp64727 (fx+ _i63272_ '1))
                              (__tmp64726
                               (let ((_$e63285_ _deleted63274_))
                                 (if _$e63285_ _$e63285_ _probe63270_))))
                          (declare (not safe))
                          (_loop63267_ __tmp64728 __tmp64727 __tmp64726))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63247_ _k63277_))
                            (begin
                              (vector-set!
                               _table63251_
                               _probe63270_
                               _key63247_)
                              (vector-set!
                               _table63251_
                               (fx+ _probe63270_ '1)
                               _value63248_))
                            (let ((__tmp64725
                                   (let ((_next-probe63288_
                                          (fx+ _start63263_
                                               _i63272_
                                               (fx* _i63272_ _i63272_))))
                                     (fxmodulo _next-probe63288_ _size63257_)))
                                  (__tmp64724 (fx+ _i63272_ '1)))
                              (declare (not safe))
                              (_loop63267_
                               __tmp64725
                               __tmp64724
                               _deleted63274_)))))))))))
    (define method-specializer-table-update!
      (lambda (_tab63241_
               _key63242_
               _method-specializer-table-update!63243_
               _default63244_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab63241_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab63241_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63241_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-update!
           _tab63241_
           _key63242_
           _method-specializer-table-update!63243_
           _default63244_))))
    (define __method-specializer-table-update!
      (lambda (_tab63195_
               _key63196_
               _method-specializer-table-update!63197_
               _default63198_)
        (let ((_table63201_
               (let () (declare (not safe)) (&raw-table-table _tab63195_)))
              (_seed63202_
               (let () (declare (not safe)) (&raw-table-seed _tab63195_))))
          (let* ((_h63204_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key63196_))
                         _seed63202_))
                 (_size63207_ (vector-length _table63201_))
                 (_entries63210_ (fxquotient _size63207_ '2))
                 (_start63213_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63204_ _entries63210_)
                   '1)))
            (let _loop63217_ ((_probe63220_ _start63213_)
                              (_i63222_ '1)
                              (_deleted63224_ '#f))
              (let ((_k63227_ (vector-ref _table63201_ _probe63220_)))
                (if (let ((__tmp64743 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63227_ __tmp64743))
                    (if _deleted63224_
                        (begin
                          (vector-set! _table63201_ _deleted63224_ _key63196_)
                          (vector-set!
                           _table63201_
                           (fx+ _deleted63224_ '1)
                           (_method-specializer-table-update!63197_
                            _default63198_))
                          ((lambda ()
                             (let ((__tmp64742
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63195_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63195_
                                __tmp64742)))))
                        (begin
                          (vector-set! _table63201_ _probe63220_ _key63196_)
                          (vector-set!
                           _table63201_
                           (fx+ _probe63220_ '1)
                           (_method-specializer-table-update!63197_
                            _default63198_))
                          ((lambda ()
                             (let ((__tmp64740
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab63195_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab63195_ __tmp64740))
                             (let ((__tmp64741
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63195_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63195_
                                __tmp64741))))))
                    (if (let ((__tmp64739 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63227_ __tmp64739))
                        (let ((__tmp64738
                               (let ((_next-probe63232_
                                      (fx+ _start63213_
                                           _i63222_
                                           (fx* _i63222_ _i63222_))))
                                 (fxmodulo _next-probe63232_ _size63207_)))
                              (__tmp64737 (fx+ _i63222_ '1))
                              (__tmp64736
                               (let ((_$e63235_ _deleted63224_))
                                 (if _$e63235_ _$e63235_ _probe63220_))))
                          (declare (not safe))
                          (_loop63217_ __tmp64738 __tmp64737 __tmp64736))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63196_ _k63227_))
                            (begin
                              (vector-set!
                               _table63201_
                               _probe63220_
                               _key63196_)
                              (vector-set!
                               _table63201_
                               (fx+ _probe63220_ '1)
                               (_method-specializer-table-update!63197_
                                (vector-ref
                                 _table63201_
                                 (fx+ _probe63220_ '1)))))
                            (let ((__tmp64735
                                   (let ((_next-probe63238_
                                          (fx+ _start63213_
                                               _i63222_
                                               (fx* _i63222_ _i63222_))))
                                     (fxmodulo _next-probe63238_ _size63207_)))
                                  (__tmp64734 (fx+ _i63222_ '1)))
                              (declare (not safe))
                              (_loop63217_
                               __tmp64735
                               __tmp64734
                               _deleted63224_)))))))))))
    (define method-specializer-table-delete!
      (lambda (_tab63154_ _key63156_)
        (let ((_table63159_
               (let () (declare (not safe)) (&raw-table-table _tab63154_)))
              (_seed63161_
               (let () (declare (not safe)) (&raw-table-seed _tab63154_))))
          (let* ((_h63164_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key63156_))
                         _seed63161_))
                 (_size63167_ (vector-length _table63159_))
                 (_entries63170_ (fxquotient _size63167_ '2))
                 (_start63173_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63164_ _entries63170_)
                   '1)))
            (let _loop63177_ ((_probe63180_ _start63173_) (_i63182_ '1))
              (let ((_k63185_ (vector-ref _table63159_ _probe63180_)))
                (if (let ((__tmp64750 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63185_ __tmp64750))
                    '#!void
                    (if (let ((__tmp64749 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63185_ __tmp64749))
                        (let ((__tmp64748
                               (let ((_next-probe63188_
                                      (fx+ _start63173_
                                           _i63182_
                                           (fx* _i63182_ _i63182_))))
                                 (fxmodulo _next-probe63188_ _size63167_)))
                              (__tmp64747 (fx+ _i63182_ '1)))
                          (declare (not safe))
                          (_loop63177_ __tmp64748 __tmp64747))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63156_ _k63185_))
                            (begin
                              (vector-set!
                               _table63159_
                               _probe63180_
                               (macro-deleted-obj))
                              (vector-set!
                               _table63159_
                               (fx+ _probe63180_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp64746
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab63154_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab63154_
                                    __tmp64746)))))
                            (let ((__tmp64745
                                   (let ((_next-probe63192_
                                          (fx+ _start63173_
                                               _i63182_
                                               (fx* _i63182_ _i63182_))))
                                     (fxmodulo _next-probe63192_ _size63167_)))
                                  (__tmp64744 (fx+ _i63182_ '1)))
                              (declare (not safe))
                              (_loop63177_ __tmp64745 __tmp64744)))))))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-method-specializer-table__% '#f '0)))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_method-proc63145_ _specializer63146_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again63150_ ()
            (if (let ((__tmp64751
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64751 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again63150_))))))
        (let ()
          (declare (not safe))
          (method-specializer-table-set!
           __method-specializers
           _method-proc63145_
           _specializer63146_))
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_proc63135_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again63139_ ()
            (if (let ((__tmp64752
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64752 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again63139_))))))
        (let ((_specializer63143_
               (let ()
                 (declare (not safe))
                 (method-specializer-table-ref
                  __method-specializers
                  _proc63135_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _specializer63143_)))
    (define __class-specializer-hash-key
      (lambda (_klass63133_)
        (let ((__tmp64753
               (let () (declare (not safe)) (##type-id _klass63133_))))
          (declare (not safe))
          (symbolic-hash __tmp64753))))
    (define make-class-specializer-table__%
      (lambda (_size-hint63114_ _seed63116_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint63114_
           __class-specializer-hash-key
           eq?
           _seed63116_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_size-hint63122_ '#f) (_seed63124_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint63122_ _seed63124_))))
    (define make-class-specializer-table__1
      (lambda (_size-hint63126_)
        (let ((_seed63128_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint63126_ _seed63128_))))
    (define make-class-specializer-table
      (lambda _g64755_
        (let ((_g64754_ (let () (declare (not safe)) (##length _g64755_))))
          (cond ((let () (declare (not safe)) (##fx= _g64754_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__0)))
                        _g64755_))
                ((let () (declare (not safe)) (##fx= _g64754_ 1))
                 (apply (lambda (_size-hint63126_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__1
                             _size-hint63126_)))
                        _g64755_))
                ((let () (declare (not safe)) (##fx= _g64754_ 2))
                 (apply (lambda (_size-hint63130_ _seed63131_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__%
                             _size-hint63130_
                             _seed63131_)))
                        _g64755_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g64755_))))))
    (define class-specializer-table-ref
      (lambda (_tab63071_ _key63072_ _default63073_)
        (let ((_table63075_
               (let () (declare (not safe)) (&raw-table-table _tab63071_)))
              (_seed63076_
               (let () (declare (not safe)) (&raw-table-seed _tab63071_))))
          (let* ((_h63078_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key63072_))
                         _seed63076_))
                 (_size63081_ (vector-length _table63075_))
                 (_entries63084_ (fxquotient _size63081_ '2))
                 (_start63087_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63078_ _entries63084_)
                   '1)))
            (let _loop63091_ ((_probe63094_ _start63087_)
                              (_i63096_ '1)
                              (_deleted63098_ '#f))
              (let ((_k63101_ (vector-ref _table63075_ _probe63094_)))
                (if (let ((__tmp64762 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63101_ __tmp64762))
                    _default63073_
                    (if (let ((__tmp64761 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63101_ __tmp64761))
                        (let ((__tmp64760
                               (let ((_next-probe63104_
                                      (fx+ _start63087_
                                           _i63096_
                                           (fx* _i63096_ _i63096_))))
                                 (fxmodulo _next-probe63104_ _size63081_)))
                              (__tmp64759 (fx+ _i63096_ '1))
                              (__tmp64758
                               (let ((_$e63107_ _deleted63098_))
                                 (if _$e63107_ _$e63107_ _probe63094_))))
                          (declare (not safe))
                          (_loop63091_ __tmp64760 __tmp64759 __tmp64758))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63072_ _k63101_))
                            (vector-ref _table63075_ (fx+ _probe63094_ '1))
                            (let ((__tmp64757
                                   (let ((_next-probe63110_
                                          (fx+ _start63087_
                                               _i63096_
                                               (fx* _i63096_ _i63096_))))
                                     (fxmodulo _next-probe63110_ _size63081_)))
                                  (__tmp64756 (fx+ _i63096_ '1)))
                              (declare (not safe))
                              (_loop63091_
                               __tmp64757
                               __tmp64756
                               _deleted63098_)))))))))))
    (define class-specializer-table-set!
      (lambda (_tab63067_ _key63068_ _value63069_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab63067_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab63067_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63067_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-set!
           _tab63067_
           _key63068_
           _value63069_))))
    (define __class-specializer-table-set!
      (lambda (_tab63022_ _key63023_ _value63024_)
        (let ((_table63027_
               (let () (declare (not safe)) (&raw-table-table _tab63022_)))
              (_seed63028_
               (let () (declare (not safe)) (&raw-table-seed _tab63022_))))
          (let* ((_h63030_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key63023_))
                         _seed63028_))
                 (_size63033_ (vector-length _table63027_))
                 (_entries63036_ (fxquotient _size63033_ '2))
                 (_start63039_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63030_ _entries63036_)
                   '1)))
            (let _loop63043_ ((_probe63046_ _start63039_)
                              (_i63048_ '1)
                              (_deleted63050_ '#f))
              (let ((_k63053_ (vector-ref _table63027_ _probe63046_)))
                (if (let ((__tmp64772 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63053_ __tmp64772))
                    (if _deleted63050_
                        (begin
                          (vector-set! _table63027_ _deleted63050_ _key63023_)
                          (vector-set!
                           _table63027_
                           (fx+ _deleted63050_ '1)
                           _value63024_)
                          ((lambda ()
                             (let ((__tmp64771
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63022_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63022_
                                __tmp64771)))))
                        (begin
                          (vector-set! _table63027_ _probe63046_ _key63023_)
                          (vector-set!
                           _table63027_
                           (fx+ _probe63046_ '1)
                           _value63024_)
                          ((lambda ()
                             (let ((__tmp64769
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab63022_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab63022_ __tmp64769))
                             (let ((__tmp64770
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63022_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63022_
                                __tmp64770))))))
                    (if (let ((__tmp64768 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63053_ __tmp64768))
                        (let ((__tmp64767
                               (let ((_next-probe63058_
                                      (fx+ _start63039_
                                           _i63048_
                                           (fx* _i63048_ _i63048_))))
                                 (fxmodulo _next-probe63058_ _size63033_)))
                              (__tmp64766 (fx+ _i63048_ '1))
                              (__tmp64765
                               (let ((_$e63061_ _deleted63050_))
                                 (if _$e63061_ _$e63061_ _probe63046_))))
                          (declare (not safe))
                          (_loop63043_ __tmp64767 __tmp64766 __tmp64765))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63023_ _k63053_))
                            (begin
                              (vector-set!
                               _table63027_
                               _probe63046_
                               _key63023_)
                              (vector-set!
                               _table63027_
                               (fx+ _probe63046_ '1)
                               _value63024_))
                            (let ((__tmp64764
                                   (let ((_next-probe63064_
                                          (fx+ _start63039_
                                               _i63048_
                                               (fx* _i63048_ _i63048_))))
                                     (fxmodulo _next-probe63064_ _size63033_)))
                                  (__tmp64763 (fx+ _i63048_ '1)))
                              (declare (not safe))
                              (_loop63043_
                               __tmp64764
                               __tmp64763
                               _deleted63050_)))))))))))
    (define class-specializer-table-update!
      (lambda (_tab63017_
               _key63018_
               _class-specializer-table-update!63019_
               _default63020_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab63017_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab63017_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63017_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-update!
           _tab63017_
           _key63018_
           _class-specializer-table-update!63019_
           _default63020_))))
    (define __class-specializer-table-update!
      (lambda (_tab62971_
               _key62972_
               _class-specializer-table-update!62973_
               _default62974_)
        (let ((_table62977_
               (let () (declare (not safe)) (&raw-table-table _tab62971_)))
              (_seed62978_
               (let () (declare (not safe)) (&raw-table-seed _tab62971_))))
          (let* ((_h62980_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key62972_))
                         _seed62978_))
                 (_size62983_ (vector-length _table62977_))
                 (_entries62986_ (fxquotient _size62983_ '2))
                 (_start62989_
                  (fxarithmetic-shift-left
                   (fxmodulo _h62980_ _entries62986_)
                   '1)))
            (let _loop62993_ ((_probe62996_ _start62989_)
                              (_i62998_ '1)
                              (_deleted63000_ '#f))
              (let ((_k63003_ (vector-ref _table62977_ _probe62996_)))
                (if (let ((__tmp64782 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63003_ __tmp64782))
                    (if _deleted63000_
                        (begin
                          (vector-set! _table62977_ _deleted63000_ _key62972_)
                          (vector-set!
                           _table62977_
                           (fx+ _deleted63000_ '1)
                           (_class-specializer-table-update!62973_
                            _default62974_))
                          ((lambda ()
                             (let ((__tmp64781
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab62971_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62971_
                                __tmp64781)))))
                        (begin
                          (vector-set! _table62977_ _probe62996_ _key62972_)
                          (vector-set!
                           _table62977_
                           (fx+ _probe62996_ '1)
                           (_class-specializer-table-update!62973_
                            _default62974_))
                          ((lambda ()
                             (let ((__tmp64779
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab62971_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab62971_ __tmp64779))
                             (let ((__tmp64780
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab62971_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62971_
                                __tmp64780))))))
                    (if (let ((__tmp64778 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63003_ __tmp64778))
                        (let ((__tmp64777
                               (let ((_next-probe63008_
                                      (fx+ _start62989_
                                           _i62998_
                                           (fx* _i62998_ _i62998_))))
                                 (fxmodulo _next-probe63008_ _size62983_)))
                              (__tmp64776 (fx+ _i62998_ '1))
                              (__tmp64775
                               (let ((_$e63011_ _deleted63000_))
                                 (if _$e63011_ _$e63011_ _probe62996_))))
                          (declare (not safe))
                          (_loop62993_ __tmp64777 __tmp64776 __tmp64775))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key62972_ _k63003_))
                            (begin
                              (vector-set!
                               _table62977_
                               _probe62996_
                               _key62972_)
                              (vector-set!
                               _table62977_
                               (fx+ _probe62996_ '1)
                               (_class-specializer-table-update!62973_
                                (vector-ref
                                 _table62977_
                                 (fx+ _probe62996_ '1)))))
                            (let ((__tmp64774
                                   (let ((_next-probe63014_
                                          (fx+ _start62989_
                                               _i62998_
                                               (fx* _i62998_ _i62998_))))
                                     (fxmodulo _next-probe63014_ _size62983_)))
                                  (__tmp64773 (fx+ _i62998_ '1)))
                              (declare (not safe))
                              (_loop62993_
                               __tmp64774
                               __tmp64773
                               _deleted63000_)))))))))))
    (define class-specializer-table-delete!
      (lambda (_tab62930_ _key62932_)
        (let ((_table62935_
               (let () (declare (not safe)) (&raw-table-table _tab62930_)))
              (_seed62937_
               (let () (declare (not safe)) (&raw-table-seed _tab62930_))))
          (let* ((_h62940_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key62932_))
                         _seed62937_))
                 (_size62943_ (vector-length _table62935_))
                 (_entries62946_ (fxquotient _size62943_ '2))
                 (_start62949_
                  (fxarithmetic-shift-left
                   (fxmodulo _h62940_ _entries62946_)
                   '1)))
            (let _loop62953_ ((_probe62956_ _start62949_) (_i62958_ '1))
              (let ((_k62961_ (vector-ref _table62935_ _probe62956_)))
                (if (let ((__tmp64789 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k62961_ __tmp64789))
                    '#!void
                    (if (let ((__tmp64788 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k62961_ __tmp64788))
                        (let ((__tmp64787
                               (let ((_next-probe62964_
                                      (fx+ _start62949_
                                           _i62958_
                                           (fx* _i62958_ _i62958_))))
                                 (fxmodulo _next-probe62964_ _size62943_)))
                              (__tmp64786 (fx+ _i62958_ '1)))
                          (declare (not safe))
                          (_loop62953_ __tmp64787 __tmp64786))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key62932_ _k62961_))
                            (begin
                              (vector-set!
                               _table62935_
                               _probe62956_
                               (macro-deleted-obj))
                              (vector-set!
                               _table62935_
                               (fx+ _probe62956_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp64785
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab62930_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab62930_
                                    __tmp64785)))))
                            (let ((__tmp64784
                                   (let ((_next-probe62968_
                                          (fx+ _start62949_
                                               _i62958_
                                               (fx* _i62958_ _i62958_))))
                                     (fxmodulo _next-probe62968_ _size62943_)))
                                  (__tmp64783 (fx+ _i62958_ '1)))
                              (declare (not safe))
                              (_loop62953_ __tmp64784 __tmp64783)))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers
      (let () (declare (not safe)) (make-class-specializer-table__% '#f '0)))
    (define __class-specializers-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define specialize-class
      (lambda (_klass62923_)
        (let ((_$e62925_
               (let ()
                 (declare (not safe))
                 (__lookup-class-specializer _klass62923_))))
          (if _$e62925_
              _$e62925_
              (let ((_method-table62928_
                     (let ()
                       (declare (not safe))
                       (__specialize-class _klass62923_))))
                (let ()
                  (declare (not safe))
                  (__bind-class-specializer! _klass62923_ _method-table62928_))
                _method-table62928_)))))
    (define __lookup-class-specializer
      (lambda (_klass62913_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again62917_ ()
            (if (let ((__tmp64790
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64790 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again62917_))))))
        (let ((_method-table62921_
               (let ()
                 (declare (not safe))
                 (class-specializer-table-ref
                  __class-specializers
                  _klass62913_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _method-table62921_)))
    (define __bind-class-specializer!
      (lambda (_klass62904_ _method-table62905_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again62909_ ()
            (if (let ((__tmp64791
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64791 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again62909_))))))
        (let ()
          (declare (not safe))
          (class-specializer-table-set!
           __class-specializers
           _klass62904_
           _method-table62905_))
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_klass62889_ _method-table62890_ _method62891_ _proc62892_)
        (let ((_$e62894_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _method-table62890_ _method62891_ '#f))))
          (if _$e62894_
              _$e62894_
              (let ((_$e62897_
                     (let ()
                       (declare (not safe))
                       (__lookup-method-specializer _proc62892_))))
                (if _$e62897_
                    ((lambda (_specialize62900_)
                       (let ((_specialized-proc62902_
                              (_specialize62900_
                               _klass62889_
                               _method-table62890_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _method-table62890_
                          _method62891_
                          _specialized-proc62902_)))
                     _$e62897_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _method-table62890_
                       _method62891_
                       _proc62892_))))))))
    (define __specialize-class
      (lambda (_klass62816_)
        (if (let ((__tmp64797
                   (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _klass62816_
                      'gerbil#class::t))))
              (declare (not safe))
              (not __tmp64797))
            (if (let () (declare (not safe)) (##type? _klass62816_))
                (let ((_method-table62818_
                       (let ()
                         (declare (not safe))
                         (make-symbolic-table__% '#f '0))))
                  (let _loop62820_ ((_xklass62822_ _klass62816_))
                    (if _xklass62822_
                        (begin
                          (let ((_xmethod-table6282362825_
                                 (let ((__tmp64794
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _xklass62822_))))
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    __builtin-type-methods
                                    __tmp64794
                                    '#f))))
                            (if _xmethod-table6282362825_
                                (let* ((_xmethod-table62828_
                                        _xmethod-table6282362825_)
                                       (__tmp64795
                                        (lambda (_g6282962832_ _g6283062834_)
                                          (let ()
                                            (declare (not safe))
                                            (__specialize-method
                                             _klass62816_
                                             _method-table62818_
                                             _g6282962832_
                                             _g6283062834_)))))
                                  (declare (not safe))
                                  (raw-table-for-each
                                   _xmethod-table62828_
                                   __tmp64795))
                                '#f))
                          (let ((__tmp64796
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _xklass62822_))))
                            (declare (not safe))
                            (_loop62820_ __tmp64796)))
                        '#!void))
                  _method-table62818_)
                (let ()
                  (declare (not safe))
                  (error '"bad class; cannot specialize" _klass62816_)))
            (if (let ()
                  (declare (not safe))
                  (class-type-metaclass? _klass62816_))
                (let ((__method64592
                       (let ()
                         (declare (not safe))
                         (method-ref _klass62816_ 'specialize-class))))
                  (if __method64592
                      (__method64592 _klass62816_)
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _klass62816_
                               'specialize-class))))
                (if (let ((__tmp64793
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _klass62816_
                              '6
                              class::t
                              '#f))))
                      (declare (not safe))
                      (find class-type-metaclass? __tmp64793))
                    (let ()
                      (declare (not safe))
                      (error '"cannot specialize class that extends metaclass without a metaclass"
                             _klass62816_))
                    (let ((_method-table62837_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _loop62839_ ((_rest62841_
                                         (let ()
                                           (declare (not safe))
                                           (class-precedence-list
                                            _klass62816_))))
                        (let* ((_rest6284262850_ _rest62841_)
                               (_else6284462858_
                                (lambda () _method-table62837_))
                               (_K6284662877_
                                (lambda (_rest62861_ _xklass62862_)
                                  (let ((_xmethod-table6286362865_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _xklass62862_
                                            '11
                                            class::t
                                            '#f))))
                                    (if _xmethod-table6286362865_
                                        (let* ((_xmethod-table62868_
                                                _xmethod-table6286362865_)
                                               (__tmp64792
                                                (lambda (_g6286962872_
                                                         _g6287062874_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (__specialize-method
                                                     _klass62816_
                                                     _method-table62837_
                                                     _g6286962872_
                                                     _g6287062874_)))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _xmethod-table62868_
                                           __tmp64792))
                                        '#f))
                                  (let ()
                                    (declare (not safe))
                                    (_loop62839_ _rest62861_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6284262850_))
                              (let ((_hd6284762880_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6284262850_)))
                                    (_tl6284862882_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6284262850_))))
                                (let* ((_xklass62885_ _hd6284762880_)
                                       (_rest62887_ _tl6284862882_))
                                  (declare (not safe))
                                  (_K6284662877_ _rest62887_ _xklass62885_)))
                              (let ()
                                (declare (not safe))
                                (_else6284462858_)))))))))))
    (define seal-class!
      (lambda (_klass62812_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass62812_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-sealed? _klass62812_))
                '#!void
                (begin
                  (if (let ()
                        (declare (not safe))
                        (class-type-final? _klass62812_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"cannot seal non-final class" _klass62812_)))
                  (if (let ()
                        (declare (not safe))
                        (class-type-metaclass? _klass62812_))
                      (let ((__method64593
                             (let ()
                               (declare (not safe))
                               (method-ref _klass62812_ 'seal-class!))))
                        (if __method64593
                            (__method64593 _klass62812_)
                            (let ()
                              (declare (not safe))
                              (error '"Missing method"
                                     _klass62812_
                                     'seal-class!))))
                      (if (let ((__tmp64798
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _klass62812_
                                    '6
                                    class::t
                                    '#f))))
                            (declare (not safe))
                            (find class-type-metaclass? __tmp64798))
                          (let ()
                            (declare (not safe))
                            (error '"cannot seal class that extends metaclass without a metaclass"
                                   _klass62812_))
                          (let ((_method-table62814_
                                 (let ()
                                   (declare (not safe))
                                   (specialize-class _klass62812_))))
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _klass62812_
                             _method-table62814_
                             '11
                             class::t
                             '#f))))
                  (let ()
                    (declare (not safe))
                    (&class-type-seal! _klass62812_))))
            '#!void)))
    (define next-method
      (lambda (_subklass62761_ _obj62762_ _id62763_)
        (let ((_klass62765_ (object-type _obj62762_))
              (_type-id62766_
               (let () (declare (not safe)) (##type-id _subklass62761_))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass62765_ 'gerbil#class::t))
              (let _lp62768_ ((_rest62770_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass62765_))))
                (let* ((_rest6277162779_ _rest62770_)
                       (_else6277362787_ (lambda () '#f))
                       (_K6277562793_
                        (lambda (_rest62790_ _klass62791_)
                          (if (let ((__tmp64801
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass62791_))))
                                (declare (not safe))
                                (eq? _type-id62766_ __tmp64801))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method
                                 _rest62790_
                                 _obj62762_
                                 _id62763_))
                              (let ()
                                (declare (not safe))
                                (_lp62768_ _rest62790_))))))
                  (if (let () (declare (not safe)) (##pair? _rest6277162779_))
                      (let ((_hd6277662796_
                             (let ()
                               (declare (not safe))
                               (##car _rest6277162779_)))
                            (_tl6277762798_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest6277162779_))))
                        (let* ((_klass62801_ _hd6277662796_)
                               (_rest62803_ _tl6277762798_))
                          (declare (not safe))
                          (_K6277562793_ _rest62803_ _klass62801_)))
                      (let () (declare (not safe)) (_else6277362787_)))))
              (if (let () (declare (not safe)) (##type? _klass62765_))
                  (let _lp62805_ ((_klass62807_ _klass62765_))
                    (if (let ((__tmp64800
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass62807_))))
                          (declare (not safe))
                          (eq? _type-id62766_ __tmp64800))
                        (let ((__tmp64799
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass62807_))))
                          (declare (not safe))
                          (builtin-find-method
                           __tmp64799
                           _obj62762_
                           _id62763_))
                        (let ((_$e62809_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass62807_))))
                          (if _$e62809_
                              (let ()
                                (declare (not safe))
                                (_lp62805_ _$e62809_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass62751_ _obj62752_ _id62753_ . _args62754_)
        (let ((_$e62756_
               (let ()
                 (declare (not safe))
                 (next-method _subklass62751_ _obj62752_ _id62753_))))
          (if _$e62756_
              ((lambda (_methodf62759_)
                 (apply _methodf62759_ _obj62752_ _args62754_))
               _$e62756_)
              (let ()
                (declare (not safe))
                (error '"cannot find next method"
                       'object:
                       _obj62752_
                       'method:
                       _id62753_))))))
    (define write-style (lambda (_we62749_) (macro-writeenv-style _we62749_)))
    (define write-object
      (lambda (_we62741_ _obj62742_)
        (let ((_$e62744_
               (let () (declare (not safe)) (method-ref _obj62742_ ':wr))))
          (if _$e62744_
              ((lambda (_method62747_) (_method62747_ _obj62742_ _we62741_))
               _$e62744_)
              (let ()
                (declare (not safe))
                (##default-wr _we62741_ _obj62742_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
