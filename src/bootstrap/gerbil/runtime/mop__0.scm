(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1709125254)
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
      (let* ((_slots64437_
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
             (_slot-vector64439_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots64437_))))
             (_slot-table64446_
              (let ((_slot-table64441_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot64443_ _field64444_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table64441_
                      _slot64443_
                      _field64444_))
                   (let ((__tmp64587 (symbol->keyword _slot64443_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table64441_
                      __tmp64587
                      _field64444_)))
                 _slots64437_
                 (let ((__tmp64588 (length _slots64437_)))
                   (declare (not safe))
                   (iota__1 __tmp64588 '1)))
                _slot-table64441_))
             (_flags64448_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields64454_
              (list->vector
               (apply append
                      (map (lambda (_g6444964451_) (list _g6444964451_ '5 '#f))
                           (let ()
                             (declare (not safe))
                             (drop _slots64437_ '5))))))
             (_properties64456_
              (let ((__tmp64591
                     (let ((__tmp64592
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots64437_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp64592)))
                    (__tmp64589
                     (let ((__tmp64590
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp64590 '()))))
                (declare (not safe))
                (cons __tmp64591 __tmp64589)))
             (_t64458_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags64448_
                 ##type-type
                 _fields64454_
                 '()
                 _slot-vector64439_
                 _slot-table64446_
                 _properties64456_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t64458_ _t64458_))
        _t64458_))
    (define class-type?
      (lambda (_obj64435_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj64435_ class::t.id))))
    (define class-type=?
      (lambda (_x64432_ _y64433_)
        (let ((__tmp64594 (##structure-ref _x64432_ '1 class::t '#f))
              (__tmp64593 (##structure-ref _y64433_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp64594 __tmp64593))))
    (define type-opaque?
      (lambda (_type64430_)
        (let ((__tmp64595
               (let ((__tmp64596
                      (let ()
                        (declare (not safe))
                        (##type-flags _type64430_))))
                 (declare (not safe))
                 (##fxand __tmp64596 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp64595 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type64428_)
        (let ((__tmp64597
               (let ((__tmp64598
                      (let ()
                        (declare (not safe))
                        (##type-flags _type64428_))))
                 (declare (not safe))
                 (##fxand __tmp64598 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp64597 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type64426_)
        (let ((__tmp64599
               (let ((__tmp64600
                      (let ()
                        (declare (not safe))
                        (##type-flags _type64426_))))
                 (declare (not safe))
                 (##fxand __tmp64600 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp64599 '0))))
    (define class-type-struct?
      (lambda (_klass64424_)
        (let ((__tmp64601
               (let ((__tmp64602
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64424_))))
                 (declare (not safe))
                 (##fxand __tmp64602 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp64601 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass64422_)
        (let ((__tmp64603
               (let ((__tmp64604
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64422_))))
                 (declare (not safe))
                 (##fxand __tmp64604 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp64603 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass64420_)
        (let ((__tmp64605
               (let ((__tmp64606
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64420_))))
                 (declare (not safe))
                 (##fxand __tmp64606 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp64605 class-type-flag-metaclass))))
    (define properties-form
      (lambda (_properties64386_)
        (map (lambda (_e6438764389_)
               (let* ((_g6439164398_ _e6438764389_)
                      (_E6439364402_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (error '"No clause matching" _g6439164398_))))
                      (_K6439464408_
                       (lambda (_val64405_ _key64406_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key64406_ 'direct-supers:))
                             (let ((__tmp64607 (map class-type-id _val64405_)))
                               (declare (not safe))
                               (cons _key64406_ __tmp64607))
                             (let ()
                               (declare (not safe))
                               (cons _key64406_ _val64405_))))))
                 (if (let () (declare (not safe)) (##pair? _g6439164398_))
                     (let ((_hd6439564411_
                            (let ()
                              (declare (not safe))
                              (##car _g6439164398_)))
                           (_tl6439664413_
                            (let ()
                              (declare (not safe))
                              (##cdr _g6439164398_))))
                       (let* ((_key64416_ _hd6439564411_)
                              (_val64418_ _tl6439664413_))
                         (declare (not safe))
                         (_K6439464408_ _val64418_ _key64416_)))
                     (let () (declare (not safe)) (_E6439364402_)))))
             _properties64386_)))
    (define make-class-type-descriptor
      (lambda (_type-id64285_
               _type-name64286_
               _type-super64287_
               _precedence-list64288_
               _slot-vector64289_
               _properties64290_
               _constructor64291_
               _slot-table64292_
               _methods64293_)
        (letrec ((_make-props!64295_
                  (lambda (_key64355_)
                    (letrec* ((_ht64357_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_put-slots!64358_
                               (lambda (_ht64379_ _slots64380_)
                                 (for-each
                                  (lambda (_g6438164383_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _ht64379_
                                       _g6438164383_
                                       '#t)))
                                  _slots64380_)))
                              (_put-alist!64359_
                               (lambda (_ht64368_ _key64369_ _alist64370_)
                                 (let ((_$e64372_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq__0
                                           _key64369_
                                           _alist64370_))))
                                   (if _$e64372_
                                       ((lambda (_g6437464376_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!64358_
                                             _ht64368_
                                             _g6437464376_)))
                                        _$e64372_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!64359_
                         _ht64357_
                         _key64355_
                         _properties64290_))
                      (for-each
                       (lambda (_mixin64361_)
                         (let ((_alist64363_
                                (##structure-ref
                                 _mixin64361_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq__0 'transparent: _alist64363_))
                                   (let ((__tmp64609
                                          (let ()
                                            (declare (not safe))
                                            (assgetq__0
                                             _key64355_
                                             _alist64363_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp64609)))
                               (let ((__tmp64608
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin64361_))))
                                 (declare (not safe))
                                 (_put-slots!64358_ _ht64357_ __tmp64608))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!64359_
                                  _ht64357_
                                  _key64355_
                                  _alist64363_)))))
                       _precedence-list64288_)
                      _ht64357_))))
          (let* ((_transparent?64297_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'transparent: _properties64290_)))
                 (_all-slots-printable?64302_
                  (let ((_$e64299_ _transparent?64297_))
                    (if _$e64299_
                        _$e64299_
                        (let ((__tmp64610
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'print: _properties64290_))))
                          (declare (not safe))
                          (eq? '#t __tmp64610)))))
                 (_printable64304_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?64302_))
                      (let ()
                        (declare (not safe))
                        (_make-props!64295_ 'print:))
                      '#f))
                 (_all-slots-equalable?64309_
                  (let ((_$e64306_ _transparent?64297_))
                    (if _$e64306_
                        _$e64306_
                        (let ((__tmp64611
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'equal: _properties64290_))))
                          (declare (not safe))
                          (eq? '#t __tmp64611)))))
                 (_equalable64311_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?64309_))
                      (let ()
                        (declare (not safe))
                        (_make-props!64295_ 'equal:))
                      '#f))
                 (_first-new-field64313_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super64287_
                         'gerbil#class::t))
                      (let ((__tmp64612
                             (##structure-ref
                              _type-super64287_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp64612))
                      '1))
                 (_field-info-length64315_
                  (let ((__tmp64613
                         (let ((__tmp64614
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector64289_))))
                           (declare (not safe))
                           (##fx- __tmp64614 _first-new-field64313_))))
                    (declare (not safe))
                    (##fx* '3 __tmp64613)))
                 (_field-info64317_ (make-vector _field-info-length64315_ '#f))
                 (_struct?64319_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'struct: _properties64290_)))
                 (_final?64321_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'final: _properties64290_)))
                 (_metaclass64329_
                  (let ((_metaclass6432264324_
                         (let ()
                           (declare (not safe))
                           (assgetq__0 'metaclass: _properties64290_))))
                    (if _metaclass6432264324_
                        (let ((_metaclass64327_ _metaclass6432264324_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass64327_
                                 'gerbil#class::t))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (error '"metaclass is not a class type"
                                       'class:
                                       _type-id64285_
                                       'metaclass:
                                       _metaclass64327_)))
                          _metaclass64327_)
                        '#f)))
                 (_opaque?64334_
                  (let ((_$e64331_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?64309_))))
                    (if _$e64331_
                        _$e64331_
                        (if _type-super64287_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super64287_))
                            '#f))))
                 (_type-flags64336_
                  (let ((__tmp64618 (if _final?64321_ '0 type-flag-extensible))
                        (__tmp64617 (if _opaque?64334_ type-flag-opaque '0))
                        (__tmp64616
                         (if _struct?64319_ class-type-flag-struct '0))
                        (__tmp64615
                         (if _metaclass64329_ class-type-flag-metaclass '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp64618
                             __tmp64617
                             __tmp64616
                             __tmp64615))))
            (let _loop64339_ ((_i64341_ _first-new-field64313_) (_j64342_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j64342_ _field-info-length64315_))
                  (let* ((_slot64344_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector64289_ _i64341_)))
                         (_flags64352_
                          (if _transparent?64297_
                              '0
                              (let ((__tmp64620
                                     (if (or _all-slots-printable?64302_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _printable64304_
                                                _slot64344_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp64619
                                     (if (or _all-slots-equalable?64309_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _equalable64311_
                                                _slot64344_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp64620 __tmp64619)))))
                    (vector-set! _field-info64317_ _j64342_ _slot64344_)
                    (vector-set!
                     _field-info64317_
                     (let () (declare (not safe)) (##fx+ _j64342_ '1))
                     _flags64352_)
                    (let ((__tmp64622
                           (let () (declare (not safe)) (##fx+ _i64341_ '1)))
                          (__tmp64621
                           (let () (declare (not safe)) (##fx+ _j64342_ '3))))
                      (declare (not safe))
                      (_loop64339_ __tmp64622 __tmp64621)))
                  '#!void))
            (if _metaclass64329_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass64329_
                   _type-id64285_
                   _type-name64286_
                   _type-flags64336_
                   _type-super64287_
                   _field-info64317_
                   _precedence-list64288_
                   _slot-vector64289_
                   _slot-table64292_
                   _properties64290_
                   _constructor64291_
                   _methods64293_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id64285_
                   _type-name64286_
                   _type-flags64336_
                   _type-super64287_
                   _field-info64317_
                   _precedence-list64288_
                   _slot-vector64289_
                   _slot-table64292_
                   _properties64290_
                   _constructor64291_
                   _methods64293_)))))))
    (define class-type-id
      (lambda (_klass64283_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64283_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass64281_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64281_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass64278_ _val64279_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64278_ _val64279_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass64273_ _val64275_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64273_
           _val64275_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass64271_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64271_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass64269_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64269_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass64266_ _val64267_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64266_ _val64267_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass64261_ _val64263_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64261_
           _val64263_
           '2
           class::t
           'name))))
    (define class-type-super
      (lambda (_klass64259_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64259_ '3 class::t 'super))))
    (define &class-type-super
      (lambda (_klass64257_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64257_ '3 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass64254_ _val64255_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64254_ _val64255_ '3 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass64249_ _val64251_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64249_
           _val64251_
           '3
           class::t
           'super))))
    (define class-type-flags
      (lambda (_klass64247_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64247_ '4 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass64245_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64245_ '4 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass64242_ _val64243_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64242_ _val64243_ '4 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass64237_ _val64239_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64237_
           _val64239_
           '4
           class::t
           'flags))))
    (define class-type-fields
      (lambda (_klass64235_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64235_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass64233_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64233_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass64230_ _val64231_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64230_ _val64231_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass64225_ _val64227_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64225_
           _val64227_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass64223_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64223_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass64221_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass64221_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass64218_ _val64219_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass64218_
           _val64219_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass64213_ _val64215_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64213_
           _val64215_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass64211_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64211_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass64209_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64209_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass64206_ _val64207_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass64206_
           _val64207_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass64201_ _val64203_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64201_
           _val64203_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass64199_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64199_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass64197_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64197_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass64194_ _val64195_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64194_ _val64195_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass64189_ _val64191_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64189_
           _val64191_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass64187_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64187_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass64185_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64185_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass64182_ _val64183_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64182_ _val64183_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass64177_ _val64179_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64177_
           _val64179_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass64175_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64175_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass64173_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64173_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass64170_ _val64171_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass64170_
           _val64171_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass64165_ _val64167_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64165_
           _val64167_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass64163_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass64163_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass64161_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass64161_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass64158_ _val64159_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass64158_ _val64159_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass64153_ _val64155_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64153_
           _val64155_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass64151_)
        (cdr (vector->list (##structure-ref _klass64151_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass64149_)
        (let ((__tmp64623
               (let ((__tmp64624
                      (##structure-ref _klass64149_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp64624))))
          (declare (not safe))
          (##fx- __tmp64623 '1))))
    (define class-type-seal!
      (lambda (_klass64147_)
        (let ((__tmp64625
               (let ((__tmp64626
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64147_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp64626))))
          (declare (not safe))
          (##structure-set!
           _klass64147_
           __tmp64625
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass64145_)
        (let ((__tmp64627
               (let ((__tmp64628
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass64145_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp64628))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass64145_
           __tmp64627
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct64136_ _maybe-super-struct64137_)
        (let ((_maybe-super-struct-id64139_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct64137_))))
          (let _lp64141_ ((_super-struct64143_ _maybe-sub-struct64136_))
            (if (let () (declare (not safe)) (not _super-struct64143_))
                '#f
                (if (let ((__tmp64630
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct64143_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id64139_ __tmp64630))
                    '#t
                    (let ((__tmp64629
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct64143_))))
                      (declare (not safe))
                      (_lp64141_ __tmp64629))))))))
    (define base-struct/1
      (lambda (_klass64134_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass64134_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass64134_))
                _klass64134_
                (let () (declare (not safe)) (##type-super _klass64134_)))
            (if (let () (declare (not safe)) (not _klass64134_))
                '#f
                (let ()
                  (declare (not safe))
                  (error '"not a class or false" _klass64134_))))))
    (define base-struct/2
      (lambda (_klass164122_ _klass264123_)
        (let ((_s164125_
               (let () (declare (not safe)) (base-struct/1 _klass164122_)))
              (_s264126_
               (let () (declare (not safe)) (base-struct/1 _klass264123_))))
          (if (or (let () (declare (not safe)) (not _s164125_))
                  (and _s264126_
                       (let ()
                         (declare (not safe))
                         (substruct? _s164125_ _s264126_))))
              _s264126_
              (if (or (let () (declare (not safe)) (not _s264126_))
                      (and _s164125_
                           (let ()
                             (declare (not safe))
                             (substruct? _s264126_ _s164125_))))
                  _s164125_
                  (let ()
                    (declare (not safe))
                    (error '"bad mixin: incompatible struct bases"
                           _klass164122_
                           _klass264123_
                           _s164125_
                           _s264126_)))))))
    (define base-struct/list
      (lambda (_all-supers64006_)
        (let* ((_all-supers6400764032_ _all-supers64006_)
               (_E6401264036_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _all-supers6400764032_)))))
          (let ((_K6403064119_ (lambda () '#f))
                (_K6402764105_
                 (lambda (_x64103_)
                   (let () (declare (not safe)) (base-struct/1 _x64103_))))
                (_K6402264082_
                 (lambda (_y64079_ _x64080_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x64080_ _y64079_))))
                (_K6401364043_
                 (lambda (_y64040_ _x64041_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x64041_ _y64040_)))))
            (let* ((___match6458164582_
                    (lambda (_hd6401464046_ _tl6401564048_)
                      (let ((_x64051_ _hd6401464046_))
                        (letrec ((_splice-rest6401764053_
                                  (lambda (_rest6402164060_ _y64062_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest6402164060_))
                                        (let ()
                                          (declare (not safe))
                                          (_K6401364043_ _y64062_ _x64051_))
                                        (let ()
                                          (declare (not safe))
                                          (_E6401264036_)))))
                                 (_splice-try6401964055_
                                  (lambda (_hd6402064064_
                                           _rest6402164066_
                                           _y6401664067_)
                                    (let ((_y64070_ _hd6402064064_))
                                      (let ((__tmp64632
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest6402164066_)))
                                            (__tmp64631
                                             (let ()
                                               (declare (not safe))
                                               (cons _y64070_ _y6401664067_))))
                                        (declare (not safe))
                                        (_splice-loop6401864057_
                                         __tmp64632
                                         __tmp64631)))))
                                 (_splice-loop6401864057_
                                  (lambda (_rest6402164072_ _y6401664073_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest6402164072_))
                                        (let ((__tmp64634
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest6402164072_))))
                                          (declare (not safe))
                                          (_splice-try6401964055_
                                           __tmp64634
                                           _rest6402164072_
                                           _y6401664073_))
                                        (let ((__tmp64633
                                               (reverse _y6401664073_)))
                                          (declare (not safe))
                                          (_splice-rest6401764053_
                                           _rest6402164072_
                                           __tmp64633))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop6401864057_ _tl6401564048_ '()))))))
                   (_try-match6400964115_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers6400764032_))
                          (let ((_tl6402964110_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers6400764032_)))
                                (_hd6402864108_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers6400764032_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl6402964110_))
                                (let ((_x64113_ _hd6402864108_))
                                  (declare (not safe))
                                  (base-struct/1 _x64113_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl6402964110_))
                                    (let ((_tl6402664094_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl6402964110_)))
                                          (_hd6402564092_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl6402964110_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl6402664094_))
                                          (let ((_x64090_ _hd6402864108_)
                                                (_y64097_ _hd6402564092_))
                                            (let ()
                                              (declare (not safe))
                                              (_K6402264082_
                                               _y64097_
                                               _x64090_)))
                                          (___match6458164582_
                                           _hd6402864108_
                                           _tl6402964110_)))
                                    (___match6458164582_
                                     _hd6402864108_
                                     _tl6402964110_))))
                          (let () (declare (not safe)) (_E6401264036_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers6400764032_))
                  (let () (declare (not safe)) (_K6403064119_))
                  (let () (declare (not safe)) (_try-match6400964115_))))))))
    (define base-struct
      (lambda _all-supers64004_
        (let () (declare (not safe)) (base-struct/list _all-supers64004_))))
    (define find-super-constructor
      (lambda (_super63956_)
        (let _lp63958_ ((_rest63960_ _super63956_) (_constructor63961_ '#f))
          (let* ((_rest6396263970_ _rest63960_)
                 (_else6396463978_ (lambda () _constructor63961_))
                 (_K6396663992_
                  (lambda (_rest63981_ _hd63982_)
                    (let ((_$e63984_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd63982_
                              '10
                              class::t
                              '#f))))
                      (if _$e63984_
                          ((lambda (_xconstructor63987_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor63961_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor63961_
                                            _xconstructor63987_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp63958_ _rest63981_ _xconstructor63987_))
                                 (let ()
                                   (declare (not safe))
                                   (error '"conflicting implicit constructors"
                                          _constructor63961_
                                          _xconstructor63987_))))
                           _$e63984_)
                          (let ()
                            (declare (not safe))
                            (_lp63958_ _rest63981_ _constructor63961_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6396263970_))
                (let ((_hd6396763995_
                       (let () (declare (not safe)) (##car _rest6396263970_)))
                      (_tl6396863997_
                       (let () (declare (not safe)) (##cdr _rest6396263970_))))
                  (let* ((_hd64000_ _hd6396763995_)
                         (_rest64002_ _tl6396863997_))
                    (declare (not safe))
                    (_K6396663992_ _rest64002_ _hd64000_)))
                (let () (declare (not safe)) (_else6396463978_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list63932_ _direct-slots63933_)
        (let* ((_next-slot63935_ '1)
               (_slot-table63937_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_r-slots63939_ '(__class))
               (_process-slot63943_
                (lambda (_slot63941_)
                  (if (let () (declare (not safe)) (symbol? _slot63941_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"invalid slot name" _slot63941_)))
                  (if (let ((__tmp64636
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _slot-table63937_
                                _slot63941_
                                absent-value))))
                        (declare (not safe))
                        (eq? __tmp64636 absent-value))
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table63937_
                           _slot63941_
                           _next-slot63935_))
                        (let ((__tmp64635 (symbol->keyword _slot63941_)))
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table63937_
                           __tmp64635
                           _next-slot63935_))
                        (set! _r-slots63939_
                              (let ()
                                (declare (not safe))
                                (cons _slot63941_ _r-slots63939_)))
                        (set! _next-slot63935_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot63935_ '1))))
                      '#!void)))
               (_process-slots63949_
                (lambda (_g6394463946_)
                  (for-each _process-slot63943_ _g6394463946_))))
          (for-each
           (lambda (_mixin63952_)
             (let ((__tmp64637
                    (let ((__tmp64638
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin63952_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq__% 'direct-slots: __tmp64638 '()))))
               (declare (not safe))
               (_process-slots63949_ __tmp64637)))
           (reverse _class-precedence-list63932_))
          (let ()
            (declare (not safe))
            (_process-slots63949_ _direct-slots63933_))
          (let ((_slot-vector63954_ (list->vector (reverse _r-slots63939_))))
            (values _slot-vector63954_ _slot-table63937_)))))
    (define make-class-type
      (lambda (_id63894_
               _name63895_
               _direct-supers63896_
               _direct-slots63897_
               _properties63898_
               _constructor63899_)
        (let ((_$e63904_
               (let ((__tmp64639
                      (lambda (_$obj63901_)
                        (let ((__tmp64640
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj63901_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp64640)))))
                 (declare (not safe))
                 (find __tmp64639 _direct-supers63896_))))
          (if _$e63904_
              ((lambda (_g6390663908_)
                 (let ()
                   (declare (not safe))
                   (error '"Illegal super class; not a class descriptor"
                          _g6390663908_)))
               _$e63904_)
              (let ((_$e63911_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers63896_))))
                (if _$e63911_
                    ((lambda (_g6391363915_)
                       (let ()
                         (declare (not safe))
                         (error '"Cannot extend final class" _g6391363915_)))
                     _$e63911_)
                    '#!void))))
        (let ((_g64641_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers63896_))))
          (begin
            (let ((_g64642_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g64641_) (##vector-length _g64641_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g64642_ 2)))
                  (error "Context expects 2 values" _g64642_)))
            (let ((_precedence-list63918_
                   (let () (declare (not safe)) (##vector-ref _g64641_ 0)))
                  (_struct-super63919_
                   (let () (declare (not safe)) (##vector-ref _g64641_ 1))))
              (let ((_g64643_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list63918_
                        _direct-slots63897_))))
                (begin
                  (let ((_g64644_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g64643_)
                               (##vector-length _g64643_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g64644_ 2)))
                        (error "Context expects 2 values" _g64644_)))
                  (let ((_slot-vector63921_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g64643_ 0)))
                        (_slot-table63922_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g64643_ 1))))
                    (let* ((_properties63924_
                            (let ((__tmp64647
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots63897_)))
                                  (__tmp64645
                                   (let ((__tmp64646
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers63896_))))
                                     (declare (not safe))
                                     (cons __tmp64646 _properties63898_))))
                              (declare (not safe))
                              (cons __tmp64647 __tmp64645)))
                           (_constructor*63929_
                            (let ((_$e63926_ _constructor63899_))
                              (if _$e63926_
                                  _$e63926_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers63896_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id63894_
                         _name63895_
                         _struct-super63919_
                         _precedence-list63918_
                         _slot-vector63921_
                         _properties63924_
                         _constructor*63929_
                         _slot-table63922_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass63892_)
        (let ((__tmp64648
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass63892_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass63892_ __tmp64648))))
    (define compute-precedence-list
      (lambda (_direct-supers63890_)
        (let ()
          (declare (not safe))
          (c4-linearize
           '()
           _direct-supers63890_
           'get-precedence-list:
           class-precedence-list
           'struct:
           class-type-struct?
           'eq:
           eq?
           'get-name:
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass63874_)
        (let ((_tid63876_
               (let () (declare (not safe)) (##type-id _klass63874_))))
          (if (let () (declare (not safe)) (class-type-final? _klass63874_))
              (lambda (_g6387763879_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g6387763879_ _tid63876_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass63874_))
                  (lambda (_g6388163883_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g6388163883_ _tid63876_)))
                  (lambda (_g6388563887_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass63874_ _g6388563887_))))))))
    (define if-class-slot-field
      (lambda (_klass63863_
               _slot63864_
               _if-final63865_
               _if-struct63866_
               _if-struct-field63867_
               _if-class-slot63868_)
        (let ((_field63870_
               (let ((__tmp64649
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass63863_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (symbolic-table-ref __tmp64649 _slot63864_ '#f))))
          (if (let () (declare (not safe)) (not _field63870_))
              (let ()
                (declare (not safe))
                (error '"unknown slot"
                       'class:
                       _klass63863_
                       'slot:
                       _slot63864_))
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass63863_))
                  (_if-final63865_ _klass63863_ _slot63864_ _field63870_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass63863_))
                      (_if-struct63866_ _klass63863_ _slot63864_ _field63870_)
                      (if (let ((_strukt63872_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass63863_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt63872_
                                    'gerbil#class::t))
                                 (let ((__tmp64650
                                        (let ((__tmp64651
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt63872_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp64651))))
                                   (declare (not safe))
                                   (##fx< _field63870_ __tmp64650))))
                          (_if-struct-field63867_
                           _klass63863_
                           _slot63864_
                           _field63870_)
                          (_if-class-slot63868_
                           _klass63863_
                           _slot63864_
                           _field63870_))))))))
    (define make-class-slot-accessor
      (lambda (_klass63860_ _slot63861_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63860_
           _slot63861_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass63857_ _slot63858_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63857_
           _slot63858_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass63854_ _slot63855_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63854_
           _slot63855_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass63851_ _slot63852_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass63851_
           _slot63852_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object63835_ _class63836_ _slot63837_)
        (apply error
               '"not an instance"
               'object:
               _object63835_
               'class:
               _class63836_
               (if _slot63837_
                   (let ((__tmp64652
                          (let ()
                            (declare (not safe))
                            (cons _slot63837_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp64652))
                   '()))))
    (define not-an-instance__0
      (lambda (_object63842_ _class63843_)
        (let ((_slot63845_ '#f))
          (declare (not safe))
          (not-an-instance__% _object63842_ _class63843_ _slot63845_))))
    (define not-an-instance
      (lambda _g64654_
        (let ((_g64653_ (let () (declare (not safe)) (##length _g64654_))))
          (cond ((let () (declare (not safe)) (##fx= _g64653_ 2))
                 (apply (lambda (_object63842_ _class63843_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object63842_ _class63843_)))
                        _g64654_))
                ((let () (declare (not safe)) (##fx= _g64653_ 3))
                 (apply (lambda (_object63847_ _class63848_ _slot63849_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object63847_
                             _class63848_
                             _slot63849_)))
                        _g64654_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g64654_))))))
    (define make-final-slot-accessor
      (lambda (_klass63828_ _slot63829_ _field63830_)
        (lambda (_obj63832_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj63832_
             _field63830_
             _klass63828_
             _slot63829_)))))
    (define make-final-slot-mutator
      (lambda (_klass63821_ _slot63822_ _field63823_)
        (lambda (_obj63825_ _val63826_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj63825_
             _val63826_
             _field63823_
             _klass63821_
             _slot63822_)))))
    (define make-struct-slot-accessor
      (lambda (_klass63815_ _slot63816_ _field63817_)
        (lambda (_obj63819_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj63819_
             _field63817_
             _klass63815_
             _slot63816_)))))
    (define make-struct-slot-mutator
      (lambda (_klass63808_ _slot63809_ _field63810_)
        (lambda (_obj63812_ _val63813_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj63812_
             _val63813_
             _field63810_
             _klass63808_
             _slot63809_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass63802_ _slot63803_ _field63804_)
        (lambda (_obj63806_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj63806_
             _field63804_
             _klass63802_
             _slot63803_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass63795_ _slot63796_ _field63797_)
        (lambda (_obj63799_ _val63800_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj63799_
             _val63800_
             _field63797_
             _klass63795_
             _slot63796_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass63789_ _slot63790_ _field63791_)
        (lambda (_obj63793_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass63789_ _obj63793_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj63793_ _field63791_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj63793_ _klass63789_ _slot63790_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass63782_ _slot63783_ _field63784_)
        (lambda (_obj63786_ _val63787_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass63782_ _obj63786_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj63786_ _field63784_ _val63787_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj63786_ _klass63782_ _slot63783_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass63776_ _slot63777_ _field63778_)
        (lambda (_obj63780_)
          (if (let ((__tmp64655
                     (let () (declare (not safe)) (##type-id _klass63776_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63780_ __tmp64655))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj63780_ _field63778_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass63776_ _obj63780_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj63780_ _slot63777_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj63780_
                     _klass63776_
                     _slot63777_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass63769_ _slot63770_ _field63771_)
        (lambda (_obj63773_ _val63774_)
          (if (let ((__tmp64656
                     (let () (declare (not safe)) (##type-id _klass63769_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63773_ __tmp64656))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj63773_ _field63771_ _val63774_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass63769_ _obj63773_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj63773_ _slot63770_ _val63774_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj63773_
                     _klass63769_
                     _slot63770_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass63763_ _slot63764_ _field63765_)
        (lambda (_obj63767_)
          (if (let ((__tmp64657
                     (let () (declare (not safe)) (##type-id _klass63763_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63767_ __tmp64657))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj63767_ _field63765_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj63767_ _slot63764_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass63756_ _slot63757_ _field63758_)
        (lambda (_obj63760_ _val63761_)
          (if (let ((__tmp64658
                     (let () (declare (not safe)) (##type-id _klass63756_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj63760_ __tmp64658))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj63760_ _field63758_ _val63761_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj63760_ _slot63757_ _val63761_))))))
    (define class-slot-offset
      (lambda (_klass63753_ _slot63754_)
        (let ((__tmp64659
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass63753_ '8 class::t '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp64659 _slot63754_ '#f))))
    (define class-slot-ref
      (lambda (_klass63747_ _obj63748_ _slot63749_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass63747_ _obj63748_))
            (let ((_off63751_
                   (let ((__tmp64660 (object-type _obj63748_)))
                     (declare (not safe))
                     (class-slot-offset __tmp64660 _slot63749_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj63748_
               _off63751_
               _klass63747_
               _slot63749_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj63748_ _klass63747_)))))
    (define class-slot-set!
      (lambda (_klass63740_ _obj63741_ _slot63742_ _val63743_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass63740_ _obj63741_))
            (let ((_off63745_
                   (let ((__tmp64661 (object-type _obj63741_)))
                     (declare (not safe))
                     (class-slot-offset __tmp64661 _slot63742_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj63741_
               _val63743_
               _off63745_
               _klass63740_
               _slot63742_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj63741_ _klass63740_)))))
    (define unchecked-field-ref
      (lambda (_obj63737_ _off63738_)
        (let ((__tmp64662
               (let () (declare (not safe)) (##structure-type _obj63737_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj63737_ _off63738_ __tmp64662 '#f))))
    (define unchecked-field-set!
      (lambda (_obj63733_ _off63734_ _val63735_)
        (let ((__tmp64663
               (let () (declare (not safe)) (##structure-type _obj63733_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj63733_
           _val63735_
           _off63734_
           __tmp64663
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj63730_ _slot63731_)
        (let ((__tmp64664
               (let ((__tmp64665
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj63730_))))
                 (declare (not safe))
                 (class-slot-offset __tmp64665 _slot63731_))))
          (declare (not safe))
          (unchecked-field-ref _obj63730_ __tmp64664))))
    (define unchecked-slot-set!
      (lambda (_obj63726_ _slot63727_ _val63728_)
        (let ((__tmp64666
               (let ((__tmp64667
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj63726_))))
                 (declare (not safe))
                 (class-slot-offset __tmp64667 _slot63727_))))
          (declare (not safe))
          (unchecked-field-set! _obj63726_ __tmp64666 _val63728_))))
    (define slot-ref__%
      (lambda (_obj63702_ _slot63703_ _E63704_)
        (if (object? _obj63702_)
            (let* ((_klass63706_ (object-type _obj63702_))
                   (_$e63709_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass63706_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass63706_ _slot63703_))
                        '#f)))
              (if _$e63709_
                  ((lambda (_off63712_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj63702_ _off63712_)))
                   _$e63709_)
                  (_E63704_ _obj63702_ _slot63703_)))
            (_E63704_ _obj63702_ _slot63703_))))
    (define slot-ref__0
      (lambda (_obj63717_ _slot63718_)
        (let ((_E63720_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj63717_ _slot63718_ _E63720_))))
    (define slot-ref
      (lambda _g64669_
        (let ((_g64668_ (let () (declare (not safe)) (##length _g64669_))))
          (cond ((let () (declare (not safe)) (##fx= _g64668_ 2))
                 (apply (lambda (_obj63717_ _slot63718_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj63717_ _slot63718_)))
                        _g64669_))
                ((let () (declare (not safe)) (##fx= _g64668_ 3))
                 (apply (lambda (_obj63722_ _slot63723_ _E63724_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj63722_ _slot63723_ _E63724_)))
                        _g64669_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g64669_))))))
    (define slot-set!__%
      (lambda (_obj63674_ _slot63675_ _val63676_ _E63677_)
        (if (object? _obj63674_)
            (let* ((_klass63679_ (object-type _obj63674_))
                   (_$e63682_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass63679_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass63679_ _slot63675_))
                        '#f)))
              (if _$e63682_
                  ((lambda (_off63685_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj63674_
                        _off63685_
                        _val63676_)))
                   _$e63682_)
                  (_E63677_ _obj63674_ _slot63675_)))
            (_E63677_ _obj63674_ _slot63675_))))
    (define slot-set!__0
      (lambda (_obj63690_ _slot63691_ _val63692_)
        (let ((_E63694_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj63690_ _slot63691_ _val63692_ _E63694_))))
    (define slot-set!
      (lambda _g64671_
        (let ((_g64670_ (let () (declare (not safe)) (##length _g64671_))))
          (cond ((let () (declare (not safe)) (##fx= _g64670_ 3))
                 (apply (lambda (_obj63690_ _slot63691_ _val63692_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj63690_ _slot63691_ _val63692_)))
                        _g64671_))
                ((let () (declare (not safe)) (##fx= _g64670_ 4))
                 (apply (lambda (_obj63696_ _slot63697_ _val63698_ _E63699_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj63696_
                             _slot63697_
                             _val63698_
                             _E63699_)))
                        _g64671_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g64671_))))))
    (define __slot-error
      (lambda (_obj63670_ _slot63671_)
        (let ()
          (declare (not safe))
          (error '"Cannot find slot" 'object: _obj63670_ 'slot: _slot63671_))))
    (define subclass?
      (lambda (_maybe-sub-class63660_ _maybe-super-class63661_)
        (let* ((_maybe-super-class-id63663_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class63661_)))
               (_$e63665_
                (let ((__tmp64672
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class63660_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id63663_ __tmp64672))))
          (if _$e63665_
              _$e63665_
              (let ((__tmp64674
                     (lambda (_super-class63668_)
                       (let ((__tmp64675
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class63668_))))
                         (declare (not safe))
                         (eq? __tmp64675 _maybe-super-class-id63663_))))
                    (__tmp64673
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class63660_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp64674 __tmp64673))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass63657_ _obj63658_)
        (let ((__tmp64676
               (let () (declare (not safe)) (##type-id _klass63657_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj63658_ __tmp64676))))
    (define struct-instance?
      (lambda (_klass63654_ _obj63655_)
        (let ((__tmp64677
               (let () (declare (not safe)) (##type-id _klass63654_))))
          (declare (not safe))
          (##structure-instance-of? _obj63655_ __tmp64677))))
    (define class-instance?
      (lambda (_klass63649_ _obj63650_)
        (if (object? _obj63650_)
            (let ((_type63652_ (object-type _obj63650_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type63652_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type63652_ _klass63649_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass63644_ _k63645_)
        (let ((_obj63647_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass63644_ _k63645_))))
          (let () (declare (not safe)) (object-fill! _obj63647_ '#f))
          _obj63647_)))
    (define object-fill!
      (lambda (_obj63637_ _fill63638_)
        (let _loop63640_ ((_i63642_
                           (let ((__tmp64679
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj63637_))))
                             (declare (not safe))
                             (##fx- __tmp64679 '1))))
          (if (let () (declare (not safe)) (##fx> _i63642_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj63637_
                   _fill63638_
                   _i63642_
                   '#f
                   '#f))
                (let ((__tmp64678
                       (let () (declare (not safe)) (##fx- _i63642_ '1))))
                  (declare (not safe))
                  (_loop63640_ __tmp64678)))
              _obj63637_))))
    (define new-instance
      (lambda (_klass63635_)
        (let ((__obj64583
               (let ((__tmp64680
                      (let ((__tmp64681
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass63635_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp64681))))
                 (declare (not safe))
                 (##make-structure _klass63635_ __tmp64680))))
          (let () (declare (not safe)) (object-fill! __obj64583 '#f))
          __obj64583)))
    (define make-instance
      (lambda (_klass63625_ . _args63626_)
        (let* ((_obj63628_
                (let () (declare (not safe)) (new-instance _klass63625_)))
               (_$e63630_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass63625_ '10 class::t '#f))))
          (if _$e63630_
              ((lambda (_kons-id63633_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass63625_
                    _kons-id63633_
                    _obj63628_
                    _args63626_)))
               _$e63630_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass63625_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass63625_
                     _obj63628_
                     _args63626_))
                  (if (let ((__tmp64686
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass63625_))))
                        (declare (not safe))
                        (not __tmp64686))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass63625_
                         _obj63628_
                         _args63626_))
                      (if (let ((__tmp64684
                                 (let ((__tmp64685
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj63628_))))
                                   (declare (not safe))
                                   (##fx- __tmp64685 '1)))
                                (__tmp64683 (length _args63626_)))
                            (declare (not safe))
                            (##fx= __tmp64684 __tmp64683))
                          (apply ##structure _klass63625_ _args63626_)
                          (let ((__tmp64682
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass63625_))))
                            (declare (not safe))
                            (error '"arguments don't match object size"
                                   'class:
                                   _klass63625_
                                   'slots:
                                   __tmp64682
                                   'args:
                                   _args63626_)))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj63622_ . _args63623_)
        (if (let ((__tmp64688 (length _args63623_))
                  (__tmp64687
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj63622_))))
              (declare (not safe))
              (##fx< __tmp64688 __tmp64687))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj63622_ _args63623_))
            (let ()
              (declare (not safe))
              (error '"too many arguments for struct"
                     'object:
                     _obj63622_
                     'args:
                     _args63623_)))))
    (define __struct-instance-init!
      (lambda (_obj63581_ _args63582_)
        (let _lp63584_ ((_k63586_ '1) (_rest63587_ _args63582_))
          (let* ((_rest6358863596_ _rest63587_)
                 (_else6359063604_ (lambda () _obj63581_))
                 (_K6359263610_
                  (lambda (_rest63607_ _hd63608_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj63581_ _k63586_ _hd63608_))
                    (let ((__tmp64689
                           (let () (declare (not safe)) (##fx+ _k63586_ '1))))
                      (declare (not safe))
                      (_lp63584_ __tmp64689 _rest63607_)))))
            (if (let () (declare (not safe)) (##pair? _rest6358863596_))
                (let ((_hd6359363613_
                       (let () (declare (not safe)) (##car _rest6358863596_)))
                      (_tl6359463615_
                       (let () (declare (not safe)) (##cdr _rest6358863596_))))
                  (let* ((_hd63618_ _hd6359363613_)
                         (_rest63620_ _tl6359463615_))
                    (declare (not safe))
                    (_K6359263610_ _rest63620_ _hd63618_)))
                (let () (declare (not safe)) (_else6359063604_)))))))
    (define class-instance-init!
      (lambda (_obj63578_ . _args63579_)
        (let ((__tmp64690 (object-type _obj63578_)))
          (declare (not safe))
          (__class-instance-init! __tmp64690 _obj63578_ _args63579_))))
    (define __class-instance-init!
      (lambda (_klass63522_ _obj63523_ _args63524_)
        (let _lp63526_ ((_rest63528_ _args63524_))
          (let* ((_rest6352963539_ _rest63528_)
                 (_else6353163547_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest63528_))
                        _obj63523_
                        (let ()
                          (declare (not safe))
                          (error '"unexpected class initializer arguments"
                                 'class:
                                 _klass63522_
                                 'rest:
                                 _rest63528_)))))
                 (_K6353363559_
                  (lambda (_rest63550_ _val63551_ _key63552_)
                    (let ((_$e63554_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass63522_ _key63552_))))
                      (if _$e63554_
                          ((lambda (_off63557_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj63523_
                                _off63557_
                                _val63551_))
                             (let ()
                               (declare (not safe))
                               (_lp63526_ _rest63550_)))
                           _$e63554_)
                          (let ()
                            (declare (not safe))
                            (error '"unknown slot"
                                   'class:
                                   _klass63522_
                                   'slot:
                                   _key63552_)))))))
            (if (let () (declare (not safe)) (##pair? _rest6352963539_))
                (let ((_hd6353463562_
                       (let () (declare (not safe)) (##car _rest6352963539_)))
                      (_tl6353563564_
                       (let () (declare (not safe)) (##cdr _rest6352963539_))))
                  (let ((_key63567_ _hd6353463562_))
                    (if (let () (declare (not safe)) (##pair? _tl6353563564_))
                        (let ((_hd6353663569_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl6353563564_)))
                              (_tl6353763571_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl6353563564_))))
                          (let* ((_val63574_ _hd6353663569_)
                                 (_rest63576_ _tl6353763571_))
                            (declare (not safe))
                            (_K6353363559_ _rest63576_ _val63574_ _key63567_)))
                        (let () (declare (not safe)) (_else6353163547_)))))
                (let () (declare (not safe)) (_else6353163547_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass63518_ _obj63519_ _args63520_)
        (apply call-method
               _klass63518_
               'instance-init!
               _obj63519_
               _args63520_)))
    (define constructor-init!
      (lambda (_klass63513_ _kons-id63514_ _obj63515_ . _args63516_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass63513_
           _kons-id63514_
           _obj63515_
           _args63516_))))
    (define __constructor-init!
      (lambda (_klass63503_ _kons-id63504_ _obj63505_ _args63506_)
        (let ((_$e63508_
               (let ()
                 (declare (not safe))
                 (__find-method _klass63503_ _obj63505_ _kons-id63504_))))
          (if _$e63508_
              ((lambda (_kons63511_)
                 (apply _kons63511_ _obj63505_ _args63506_)
                 _obj63505_)
               _$e63508_)
              (let ()
                (declare (not safe))
                (error '"missing constructor"
                       'class:
                       _klass63503_
                       'method:
                       _kons-id63504_))))))
    (define struct-copy
      (lambda (_struct63501_)
        (if (let () (declare (not safe)) (##structure? _struct63501_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"not a structure" _struct63501_)))
        (let () (declare (not safe)) (##structure-copy _struct63501_))))
    (define struct->list
      (lambda (_obj63499_)
        (if (object? _obj63499_)
            (let () (declare (not safe)) (##vector->list _obj63499_))
            (let ()
              (declare (not safe))
              (error '"not an object" _obj63499_)))))
    (define class->list
      (lambda (_obj63486_)
        (if (object? _obj63486_)
            (let ((_klass63488_ (object-type _obj63486_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass63488_ 'gerbil#class::t))
                  (let ((_slot-vector63490_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass63488_
                            '7
                            class::t
                            '#f))))
                    (let _loop63492_ ((_index63494_
                                       (let ((__tmp64696
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector63490_))))
                                         (declare (not safe))
                                         (##fx- __tmp64696 '1)))
                                      (_plist63495_ '()))
                      (if (let () (declare (not safe)) (##fx< _index63494_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass63488_ _plist63495_))
                          (let ((_slot63497_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector63490_
                                    _index63494_))))
                            (let ((__tmp64695
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index63494_ '1)))
                                  (__tmp64691
                                   (let ((__tmp64694
                                          (symbol->keyword _slot63497_))
                                         (__tmp64692
                                          (let ((__tmp64693
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj63486_
                                                    _index63494_))))
                                            (declare (not safe))
                                            (cons __tmp64693 _plist63495_))))
                                     (declare (not safe))
                                     (cons __tmp64694 __tmp64692))))
                              (declare (not safe))
                              (_loop63492_ __tmp64695 __tmp64691))))))
                  (let ()
                    (declare (not safe))
                    (error '"not a class type"
                           'object:
                           _obj63486_
                           'class:
                           _klass63488_))))
            (let ()
              (declare (not safe))
              (error '"not an object" _obj63486_)))))
    (define call-method
      (lambda (_obj63477_ _id63478_ . _args63479_)
        (let ((_$e63481_
               (let ()
                 (declare (not safe))
                 (method-ref _obj63477_ _id63478_))))
          (if _$e63481_
              ((lambda (_method63484_)
                 (apply _method63484_ _obj63477_ _args63479_))
               _$e63481_)
              (let ()
                (declare (not safe))
                (error '"cannot find method"
                       'object:
                       _obj63477_
                       'method:
                       _id63478_))))))
    (define __builtin-type-methods
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define method-ref
      (lambda (_obj63474_ _id63475_)
        (if (object? _obj63474_)
            (let ((__tmp64697 (object-type _obj63474_)))
              (declare (not safe))
              (find-method __tmp64697 _obj63474_ _id63475_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj63468_ _id63469_)
        (let ((_$e63471_
               (let ()
                 (declare (not safe))
                 (method-ref _obj63468_ _id63469_))))
          (if _$e63471_
              _$e63471_
              (let ()
                (declare (not safe))
                (error '"missing method"
                       'object:
                       _obj63468_
                       'method:
                       _id63469_))))))
    (define bound-method-ref
      (lambda (_obj63458_ _id63459_)
        (let ((_$e63461_
               (let ()
                 (declare (not safe))
                 (method-ref _obj63458_ _id63459_))))
          (if _$e63461_
              ((lambda (_method63464_)
                 (lambda _args63466_
                   (apply _method63464_ _obj63458_ _args63466_)))
               _$e63461_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj63451_ _id63452_)
        (let ((_method63454_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj63451_ _id63452_))))
          (lambda _args63456_ (apply _method63454_ _obj63451_ _args63456_)))))
    (define find-method
      (lambda (_klass63447_ _obj63448_ _id63449_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63447_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass63447_ _obj63448_ _id63449_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass63447_ _obj63448_ _id63449_)))))
    (define __find-method
      (lambda (_klass63440_ _obj63441_ _id63442_)
        (let ((_$e63444_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass63440_ _obj63441_ _id63442_))))
          (if _$e63444_
              _$e63444_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass63440_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass63440_ _obj63441_ _id63442_)))))))
    (define class-find-method
      (lambda (_klass63436_ _obj63437_ _id63438_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass63436_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass63436_ _obj63437_ _id63438_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins63428_ _obj63429_ _id63430_)
        (let ((__tmp64698
               (lambda (_g6343163433_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g6343163433_ _obj63429_ _id63430_)))))
          (declare (not safe))
          (ormap1 __tmp64698 _mixins63428_))))
    (define builtin-find-method
      (lambda (_klass63421_ _obj63422_ _id63423_)
        (if (let () (declare (not safe)) (##type? _klass63421_))
            (let ((_$e63425_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass63421_ _obj63422_ _id63423_))))
              (if _$e63425_
                  _$e63425_
                  (let ((__tmp64699
                         (let ()
                           (declare (not safe))
                           (##type-super _klass63421_))))
                    (declare (not safe))
                    (builtin-find-method __tmp64699 _obj63422_ _id63423_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass63398_ _obj63399_ _id63400_)
        (letrec ((_metaclass-resolve-method63402_
                  (lambda ()
                    (let ((__method64584
                           (let ()
                             (declare (not safe))
                             (method-ref _klass63398_ 'direct-method-ref))))
                      (if __method64584
                          (__method64584 _klass63398_ _obj63399_ _id63400_)
                          (let ()
                            (declare (not safe))
                            (error '"Missing method"
                                   _klass63398_
                                   'direct-method-ref))))))
                 (_metaclass-resolve-method!63403_
                  (lambda ()
                    (let ((_method63418_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method63402_))))
                      (let ((__tmp64701
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass63398_
                                '11
                                class::t
                                '#f)))
                            (__tmp64700 (if _method63418_ 'resolved 'unknown)))
                        (declare (not safe))
                        (symbolic-table-set! __tmp64701 _id63400_ __tmp64700))
                      _method63418_))))
          (let ((_$e63405_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass63398_ '11 class::t '#f))))
            (if _$e63405_
                ((lambda (_ht63408_)
                   (let ((_method63410_
                          (let ()
                            (declare (not safe))
                            (symbolic-table-ref _ht63408_ _id63400_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method63410_))
                         _method63410_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass63398_))
                             (let ((_$e63412_ _method63410_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e63412_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method63402_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'unknown _$e63412_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!63403_)))))
                             '#f))))
                 _$e63405_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass63398_))
                    (let ((_tab63415_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass63398_
                         _tab63415_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!63403_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass63394_ _obj63395_ _id63396_)
        (let ((__tmp64702 (##structure-ref _klass63394_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp64702 _obj63395_ _id63396_))))
    (define builtin-method-ref
      (lambda (_klass63385_ _obj63386_ _id63387_)
        (let ((_$e63389_
               (let ((__tmp64703
                      (let () (declare (not safe)) (##type-id _klass63385_))))
                 (declare (not safe))
                 (symbolic-table-ref __builtin-type-methods __tmp64703 '#f))))
          (if _$e63389_
              ((lambda (_mtab63392_)
                 (let ()
                   (declare (not safe))
                   (symbolic-table-ref _mtab63392_ _id63387_ '#f)))
               _$e63389_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass63351_ _id63352_ _proc63353_ _rebind?63354_)
        (letrec ((_bind!63356_
                  (lambda (_ht63369_)
                    (if (and (let () (declare (not safe)) (not _rebind?63354_))
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref _ht63369_ _id63352_ '#f)))
                        (let ()
                          (declare (not safe))
                          (error '"method already bound"
                                 'class:
                                 _klass63351_
                                 'method:
                                 _id63352_))
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _ht63369_
                           _id63352_
                           _proc63353_))))))
          (if (let () (declare (not safe)) (procedure? _proc63353_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad method; expected procedure" _proc63353_)))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass63351_ 'gerbil#class::t))
              (let ((_ht63358_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass63351_
                        '11
                        class::t
                        '#f))))
                (if _ht63358_
                    (let () (declare (not safe)) (_bind!63356_ _ht63358_))
                    (let ((_ht63360_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass63351_
                         _ht63360_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!63356_ _ht63360_)))))
              (if (let () (declare (not safe)) (##type? _klass63351_))
                  (let ((_ht63367_
                         (let ((_$e63362_
                                (let ((__tmp64704
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass63351_))))
                                  (declare (not safe))
                                  (symbolic-table-ref
                                   __builtin-type-methods
                                   __tmp64704
                                   '#f))))
                           (if _$e63362_
                               _$e63362_
                               (let ((_ht63365_
                                      (let ()
                                        (declare (not safe))
                                        (make-symbolic-table__% '#f '0))))
                                 (let ((__tmp64705
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass63351_))))
                                   (declare (not safe))
                                   (symbolic-table-set!
                                    __builtin-type-methods
                                    __tmp64705
                                    _ht63365_))
                                 _ht63365_)))))
                    (declare (not safe))
                    (_bind!63356_ _ht63367_))
                  (let ()
                    (declare (not safe))
                    (error '"bad class; expected class or builtin type"
                           _klass63351_)))))))
    (define bind-method!__0
      (lambda (_klass63374_ _id63375_ _proc63376_)
        (let ((_rebind?63378_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass63374_
           _id63375_
           _proc63376_
           _rebind?63378_))))
    (define bind-method!
      (lambda _g64707_
        (let ((_g64706_ (let () (declare (not safe)) (##length _g64707_))))
          (cond ((let () (declare (not safe)) (##fx= _g64706_ 3))
                 (apply (lambda (_klass63374_ _id63375_ _proc63376_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass63374_
                             _id63375_
                             _proc63376_)))
                        _g64707_))
                ((let () (declare (not safe)) (##fx= _g64706_ 4))
                 (apply (lambda (_klass63380_
                                 _id63381_
                                 _proc63382_
                                 _rebind?63383_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass63380_
                             _id63381_
                             _proc63382_
                             _rebind?63383_)))
                        _g64707_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g64707_))))))
    (define make-method-specializer-table__%
      (lambda (_size-hint63331_ _seed63333_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint63331_
           procedure-hash
           eq?
           _seed63333_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_size-hint63339_ '#f) (_seed63341_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint63339_ _seed63341_))))
    (define make-method-specializer-table__1
      (lambda (_size-hint63343_)
        (let ((_seed63345_ '0))
          (declare (not safe))
          (make-method-specializer-table__% _size-hint63343_ _seed63345_))))
    (define make-method-specializer-table
      (lambda _g64709_
        (let ((_g64708_ (let () (declare (not safe)) (##length _g64709_))))
          (cond ((let () (declare (not safe)) (##fx= _g64708_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__0)))
                        _g64709_))
                ((let () (declare (not safe)) (##fx= _g64708_ 1))
                 (apply (lambda (_size-hint63343_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__1
                             _size-hint63343_)))
                        _g64709_))
                ((let () (declare (not safe)) (##fx= _g64708_ 2))
                 (apply (lambda (_size-hint63347_ _seed63348_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__%
                             _size-hint63347_
                             _seed63348_)))
                        _g64709_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g64709_))))))
    (define method-specializer-table-ref
      (lambda (_tab63288_ _key63289_ _default63290_)
        (let ((_table63292_
               (let () (declare (not safe)) (&raw-table-table _tab63288_)))
              (_seed63293_
               (let () (declare (not safe)) (&raw-table-seed _tab63288_))))
          (let* ((_h63295_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key63289_))
                         _seed63293_))
                 (_size63298_ (vector-length _table63292_))
                 (_entries63301_ (fxquotient _size63298_ '2))
                 (_start63304_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63295_ _entries63301_)
                   '1)))
            (let _loop63308_ ((_probe63311_ _start63304_)
                              (_i63313_ '1)
                              (_deleted63315_ '#f))
              (let ((_k63318_ (vector-ref _table63292_ _probe63311_)))
                (if (let ((__tmp64716 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63318_ __tmp64716))
                    _default63290_
                    (if (let ((__tmp64715 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63318_ __tmp64715))
                        (let ((__tmp64714
                               (let ((_next-probe63321_
                                      (fx+ _start63304_
                                           _i63313_
                                           (fx* _i63313_ _i63313_))))
                                 (fxmodulo _next-probe63321_ _size63298_)))
                              (__tmp64713 (fx+ _i63313_ '1))
                              (__tmp64712
                               (let ((_$e63324_ _deleted63315_))
                                 (if _$e63324_ _$e63324_ _probe63311_))))
                          (declare (not safe))
                          (_loop63308_ __tmp64714 __tmp64713 __tmp64712))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63289_ _k63318_))
                            (vector-ref _table63292_ (fx+ _probe63311_ '1))
                            (let ((__tmp64711
                                   (let ((_next-probe63327_
                                          (fx+ _start63304_
                                               _i63313_
                                               (fx* _i63313_ _i63313_))))
                                     (fxmodulo _next-probe63327_ _size63298_)))
                                  (__tmp64710 (fx+ _i63313_ '1)))
                              (declare (not safe))
                              (_loop63308_
                               __tmp64711
                               __tmp64710
                               _deleted63315_)))))))))))
    (define method-specializer-table-set!
      (lambda (_tab63284_ _key63285_ _value63286_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab63284_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab63284_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63284_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-set!
           _tab63284_
           _key63285_
           _value63286_))))
    (define __method-specializer-table-set!
      (lambda (_tab63239_ _key63240_ _value63241_)
        (let ((_table63244_
               (let () (declare (not safe)) (&raw-table-table _tab63239_)))
              (_seed63245_
               (let () (declare (not safe)) (&raw-table-seed _tab63239_))))
          (let* ((_h63247_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key63240_))
                         _seed63245_))
                 (_size63250_ (vector-length _table63244_))
                 (_entries63253_ (fxquotient _size63250_ '2))
                 (_start63256_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63247_ _entries63253_)
                   '1)))
            (let _loop63260_ ((_probe63263_ _start63256_)
                              (_i63265_ '1)
                              (_deleted63267_ '#f))
              (let ((_k63270_ (vector-ref _table63244_ _probe63263_)))
                (if (let ((__tmp64726 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63270_ __tmp64726))
                    (if _deleted63267_
                        (begin
                          (vector-set! _table63244_ _deleted63267_ _key63240_)
                          (vector-set!
                           _table63244_
                           (fx+ _deleted63267_ '1)
                           _value63241_)
                          ((lambda ()
                             (let ((__tmp64725
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63239_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63239_
                                __tmp64725)))))
                        (begin
                          (vector-set! _table63244_ _probe63263_ _key63240_)
                          (vector-set!
                           _table63244_
                           (fx+ _probe63263_ '1)
                           _value63241_)
                          ((lambda ()
                             (let ((__tmp64723
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab63239_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab63239_ __tmp64723))
                             (let ((__tmp64724
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63239_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63239_
                                __tmp64724))))))
                    (if (let ((__tmp64722 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63270_ __tmp64722))
                        (let ((__tmp64721
                               (let ((_next-probe63275_
                                      (fx+ _start63256_
                                           _i63265_
                                           (fx* _i63265_ _i63265_))))
                                 (fxmodulo _next-probe63275_ _size63250_)))
                              (__tmp64720 (fx+ _i63265_ '1))
                              (__tmp64719
                               (let ((_$e63278_ _deleted63267_))
                                 (if _$e63278_ _$e63278_ _probe63263_))))
                          (declare (not safe))
                          (_loop63260_ __tmp64721 __tmp64720 __tmp64719))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63240_ _k63270_))
                            (begin
                              (vector-set!
                               _table63244_
                               _probe63263_
                               _key63240_)
                              (vector-set!
                               _table63244_
                               (fx+ _probe63263_ '1)
                               _value63241_))
                            (let ((__tmp64718
                                   (let ((_next-probe63281_
                                          (fx+ _start63256_
                                               _i63265_
                                               (fx* _i63265_ _i63265_))))
                                     (fxmodulo _next-probe63281_ _size63250_)))
                                  (__tmp64717 (fx+ _i63265_ '1)))
                              (declare (not safe))
                              (_loop63260_
                               __tmp64718
                               __tmp64717
                               _deleted63267_)))))))))))
    (define method-specializer-table-update!
      (lambda (_tab63234_
               _key63235_
               _method-specializer-table-update!63236_
               _default63237_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab63234_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab63234_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63234_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-update!
           _tab63234_
           _key63235_
           _method-specializer-table-update!63236_
           _default63237_))))
    (define __method-specializer-table-update!
      (lambda (_tab63188_
               _key63189_
               _method-specializer-table-update!63190_
               _default63191_)
        (let ((_table63194_
               (let () (declare (not safe)) (&raw-table-table _tab63188_)))
              (_seed63195_
               (let () (declare (not safe)) (&raw-table-seed _tab63188_))))
          (let* ((_h63197_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key63189_))
                         _seed63195_))
                 (_size63200_ (vector-length _table63194_))
                 (_entries63203_ (fxquotient _size63200_ '2))
                 (_start63206_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63197_ _entries63203_)
                   '1)))
            (let _loop63210_ ((_probe63213_ _start63206_)
                              (_i63215_ '1)
                              (_deleted63217_ '#f))
              (let ((_k63220_ (vector-ref _table63194_ _probe63213_)))
                (if (let ((__tmp64736 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63220_ __tmp64736))
                    (if _deleted63217_
                        (begin
                          (vector-set! _table63194_ _deleted63217_ _key63189_)
                          (vector-set!
                           _table63194_
                           (fx+ _deleted63217_ '1)
                           (_method-specializer-table-update!63190_
                            _default63191_))
                          ((lambda ()
                             (let ((__tmp64735
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63188_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63188_
                                __tmp64735)))))
                        (begin
                          (vector-set! _table63194_ _probe63213_ _key63189_)
                          (vector-set!
                           _table63194_
                           (fx+ _probe63213_ '1)
                           (_method-specializer-table-update!63190_
                            _default63191_))
                          ((lambda ()
                             (let ((__tmp64733
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab63188_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab63188_ __tmp64733))
                             (let ((__tmp64734
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63188_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63188_
                                __tmp64734))))))
                    (if (let ((__tmp64732 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63220_ __tmp64732))
                        (let ((__tmp64731
                               (let ((_next-probe63225_
                                      (fx+ _start63206_
                                           _i63215_
                                           (fx* _i63215_ _i63215_))))
                                 (fxmodulo _next-probe63225_ _size63200_)))
                              (__tmp64730 (fx+ _i63215_ '1))
                              (__tmp64729
                               (let ((_$e63228_ _deleted63217_))
                                 (if _$e63228_ _$e63228_ _probe63213_))))
                          (declare (not safe))
                          (_loop63210_ __tmp64731 __tmp64730 __tmp64729))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63189_ _k63220_))
                            (begin
                              (vector-set!
                               _table63194_
                               _probe63213_
                               _key63189_)
                              (vector-set!
                               _table63194_
                               (fx+ _probe63213_ '1)
                               (_method-specializer-table-update!63190_
                                (vector-ref
                                 _table63194_
                                 (fx+ _probe63213_ '1)))))
                            (let ((__tmp64728
                                   (let ((_next-probe63231_
                                          (fx+ _start63206_
                                               _i63215_
                                               (fx* _i63215_ _i63215_))))
                                     (fxmodulo _next-probe63231_ _size63200_)))
                                  (__tmp64727 (fx+ _i63215_ '1)))
                              (declare (not safe))
                              (_loop63210_
                               __tmp64728
                               __tmp64727
                               _deleted63217_)))))))))))
    (define method-specializer-table-delete!
      (lambda (_tab63147_ _key63149_)
        (let ((_table63152_
               (let () (declare (not safe)) (&raw-table-table _tab63147_)))
              (_seed63154_
               (let () (declare (not safe)) (&raw-table-seed _tab63147_))))
          (let* ((_h63157_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _key63149_))
                         _seed63154_))
                 (_size63160_ (vector-length _table63152_))
                 (_entries63163_ (fxquotient _size63160_ '2))
                 (_start63166_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63157_ _entries63163_)
                   '1)))
            (let _loop63170_ ((_probe63173_ _start63166_) (_i63175_ '1))
              (let ((_k63178_ (vector-ref _table63152_ _probe63173_)))
                (if (let ((__tmp64743 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63178_ __tmp64743))
                    '#!void
                    (if (let ((__tmp64742 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63178_ __tmp64742))
                        (let ((__tmp64741
                               (let ((_next-probe63181_
                                      (fx+ _start63166_
                                           _i63175_
                                           (fx* _i63175_ _i63175_))))
                                 (fxmodulo _next-probe63181_ _size63160_)))
                              (__tmp64740 (fx+ _i63175_ '1)))
                          (declare (not safe))
                          (_loop63170_ __tmp64741 __tmp64740))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63149_ _k63178_))
                            (begin
                              (vector-set!
                               _table63152_
                               _probe63173_
                               (macro-deleted-obj))
                              (vector-set!
                               _table63152_
                               (fx+ _probe63173_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp64739
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab63147_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab63147_
                                    __tmp64739)))))
                            (let ((__tmp64738
                                   (let ((_next-probe63185_
                                          (fx+ _start63166_
                                               _i63175_
                                               (fx* _i63175_ _i63175_))))
                                     (fxmodulo _next-probe63185_ _size63160_)))
                                  (__tmp64737 (fx+ _i63175_ '1)))
                              (declare (not safe))
                              (_loop63170_ __tmp64738 __tmp64737)))))))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-method-specializer-table__% '#f '0)))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_method-proc63138_ _specializer63139_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again63143_ ()
            (if (let ((__tmp64744
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64744 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again63143_))))))
        (let ()
          (declare (not safe))
          (method-specializer-table-set!
           __method-specializers
           _method-proc63138_
           _specializer63139_))
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_proc63128_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again63132_ ()
            (if (let ((__tmp64745
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64745 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again63132_))))))
        (let ((_specializer63136_
               (let ()
                 (declare (not safe))
                 (method-specializer-table-ref
                  __method-specializers
                  _proc63128_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _specializer63136_)))
    (define __class-specializer-hash-key
      (lambda (_klass63126_)
        (let ((__tmp64746
               (let () (declare (not safe)) (##type-id _klass63126_))))
          (declare (not safe))
          (symbolic-hash __tmp64746))))
    (define make-class-specializer-table__%
      (lambda (_size-hint63107_ _seed63109_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _size-hint63107_
           __class-specializer-hash-key
           eq?
           _seed63109_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_size-hint63115_ '#f) (_seed63117_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint63115_ _seed63117_))))
    (define make-class-specializer-table__1
      (lambda (_size-hint63119_)
        (let ((_seed63121_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _size-hint63119_ _seed63121_))))
    (define make-class-specializer-table
      (lambda _g64748_
        (let ((_g64747_ (let () (declare (not safe)) (##length _g64748_))))
          (cond ((let () (declare (not safe)) (##fx= _g64747_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__0)))
                        _g64748_))
                ((let () (declare (not safe)) (##fx= _g64747_ 1))
                 (apply (lambda (_size-hint63119_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__1
                             _size-hint63119_)))
                        _g64748_))
                ((let () (declare (not safe)) (##fx= _g64747_ 2))
                 (apply (lambda (_size-hint63123_ _seed63124_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__%
                             _size-hint63123_
                             _seed63124_)))
                        _g64748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g64748_))))))
    (define class-specializer-table-ref
      (lambda (_tab63064_ _key63065_ _default63066_)
        (let ((_table63068_
               (let () (declare (not safe)) (&raw-table-table _tab63064_)))
              (_seed63069_
               (let () (declare (not safe)) (&raw-table-seed _tab63064_))))
          (let* ((_h63071_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key63065_))
                         _seed63069_))
                 (_size63074_ (vector-length _table63068_))
                 (_entries63077_ (fxquotient _size63074_ '2))
                 (_start63080_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63071_ _entries63077_)
                   '1)))
            (let _loop63084_ ((_probe63087_ _start63080_)
                              (_i63089_ '1)
                              (_deleted63091_ '#f))
              (let ((_k63094_ (vector-ref _table63068_ _probe63087_)))
                (if (let ((__tmp64755 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63094_ __tmp64755))
                    _default63066_
                    (if (let ((__tmp64754 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63094_ __tmp64754))
                        (let ((__tmp64753
                               (let ((_next-probe63097_
                                      (fx+ _start63080_
                                           _i63089_
                                           (fx* _i63089_ _i63089_))))
                                 (fxmodulo _next-probe63097_ _size63074_)))
                              (__tmp64752 (fx+ _i63089_ '1))
                              (__tmp64751
                               (let ((_$e63100_ _deleted63091_))
                                 (if _$e63100_ _$e63100_ _probe63087_))))
                          (declare (not safe))
                          (_loop63084_ __tmp64753 __tmp64752 __tmp64751))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63065_ _k63094_))
                            (vector-ref _table63068_ (fx+ _probe63087_ '1))
                            (let ((__tmp64750
                                   (let ((_next-probe63103_
                                          (fx+ _start63080_
                                               _i63089_
                                               (fx* _i63089_ _i63089_))))
                                     (fxmodulo _next-probe63103_ _size63074_)))
                                  (__tmp64749 (fx+ _i63089_ '1)))
                              (declare (not safe))
                              (_loop63084_
                               __tmp64750
                               __tmp64749
                               _deleted63091_)))))))))))
    (define class-specializer-table-set!
      (lambda (_tab63060_ _key63061_ _value63062_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab63060_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab63060_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63060_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-set!
           _tab63060_
           _key63061_
           _value63062_))))
    (define __class-specializer-table-set!
      (lambda (_tab63015_ _key63016_ _value63017_)
        (let ((_table63020_
               (let () (declare (not safe)) (&raw-table-table _tab63015_)))
              (_seed63021_
               (let () (declare (not safe)) (&raw-table-seed _tab63015_))))
          (let* ((_h63023_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key63016_))
                         _seed63021_))
                 (_size63026_ (vector-length _table63020_))
                 (_entries63029_ (fxquotient _size63026_ '2))
                 (_start63032_
                  (fxarithmetic-shift-left
                   (fxmodulo _h63023_ _entries63029_)
                   '1)))
            (let _loop63036_ ((_probe63039_ _start63032_)
                              (_i63041_ '1)
                              (_deleted63043_ '#f))
              (let ((_k63046_ (vector-ref _table63020_ _probe63039_)))
                (if (let ((__tmp64765 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k63046_ __tmp64765))
                    (if _deleted63043_
                        (begin
                          (vector-set! _table63020_ _deleted63043_ _key63016_)
                          (vector-set!
                           _table63020_
                           (fx+ _deleted63043_ '1)
                           _value63017_)
                          ((lambda ()
                             (let ((__tmp64764
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63015_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63015_
                                __tmp64764)))))
                        (begin
                          (vector-set! _table63020_ _probe63039_ _key63016_)
                          (vector-set!
                           _table63020_
                           (fx+ _probe63039_ '1)
                           _value63017_)
                          ((lambda ()
                             (let ((__tmp64762
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab63015_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab63015_ __tmp64762))
                             (let ((__tmp64763
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab63015_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab63015_
                                __tmp64763))))))
                    (if (let ((__tmp64761 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k63046_ __tmp64761))
                        (let ((__tmp64760
                               (let ((_next-probe63051_
                                      (fx+ _start63032_
                                           _i63041_
                                           (fx* _i63041_ _i63041_))))
                                 (fxmodulo _next-probe63051_ _size63026_)))
                              (__tmp64759 (fx+ _i63041_ '1))
                              (__tmp64758
                               (let ((_$e63054_ _deleted63043_))
                                 (if _$e63054_ _$e63054_ _probe63039_))))
                          (declare (not safe))
                          (_loop63036_ __tmp64760 __tmp64759 __tmp64758))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key63016_ _k63046_))
                            (begin
                              (vector-set!
                               _table63020_
                               _probe63039_
                               _key63016_)
                              (vector-set!
                               _table63020_
                               (fx+ _probe63039_ '1)
                               _value63017_))
                            (let ((__tmp64757
                                   (let ((_next-probe63057_
                                          (fx+ _start63032_
                                               _i63041_
                                               (fx* _i63041_ _i63041_))))
                                     (fxmodulo _next-probe63057_ _size63026_)))
                                  (__tmp64756 (fx+ _i63041_ '1)))
                              (declare (not safe))
                              (_loop63036_
                               __tmp64757
                               __tmp64756
                               _deleted63043_)))))))))))
    (define class-specializer-table-update!
      (lambda (_tab63010_
               _key63011_
               _class-specializer-table-update!63012_
               _default63013_)
        (if (fx< (let () (declare (not safe)) (&raw-table-free _tab63010_))
                 (fxquotient
                  (vector-length
                   (let () (declare (not safe)) (&raw-table-table _tab63010_)))
                  '4))
            (let () (declare (not safe)) (__raw-table-rehash! _tab63010_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-update!
           _tab63010_
           _key63011_
           _class-specializer-table-update!63012_
           _default63013_))))
    (define __class-specializer-table-update!
      (lambda (_tab62964_
               _key62965_
               _class-specializer-table-update!62966_
               _default62967_)
        (let ((_table62970_
               (let () (declare (not safe)) (&raw-table-table _tab62964_)))
              (_seed62971_
               (let () (declare (not safe)) (&raw-table-seed _tab62964_))))
          (let* ((_h62973_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key62965_))
                         _seed62971_))
                 (_size62976_ (vector-length _table62970_))
                 (_entries62979_ (fxquotient _size62976_ '2))
                 (_start62982_
                  (fxarithmetic-shift-left
                   (fxmodulo _h62973_ _entries62979_)
                   '1)))
            (let _loop62986_ ((_probe62989_ _start62982_)
                              (_i62991_ '1)
                              (_deleted62993_ '#f))
              (let ((_k62996_ (vector-ref _table62970_ _probe62989_)))
                (if (let ((__tmp64775 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k62996_ __tmp64775))
                    (if _deleted62993_
                        (begin
                          (vector-set! _table62970_ _deleted62993_ _key62965_)
                          (vector-set!
                           _table62970_
                           (fx+ _deleted62993_ '1)
                           (_class-specializer-table-update!62966_
                            _default62967_))
                          ((lambda ()
                             (let ((__tmp64774
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab62964_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62964_
                                __tmp64774)))))
                        (begin
                          (vector-set! _table62970_ _probe62989_ _key62965_)
                          (vector-set!
                           _table62970_
                           (fx+ _probe62989_ '1)
                           (_class-specializer-table-update!62966_
                            _default62967_))
                          ((lambda ()
                             (let ((__tmp64772
                                    (fx- (let ()
                                           (declare (not safe))
                                           (&raw-table-free _tab62964_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-free-set! _tab62964_ __tmp64772))
                             (let ((__tmp64773
                                    (fx+ (let ()
                                           (declare (not safe))
                                           (&raw-table-count _tab62964_))
                                         '1)))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _tab62964_
                                __tmp64773))))))
                    (if (let ((__tmp64771 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k62996_ __tmp64771))
                        (let ((__tmp64770
                               (let ((_next-probe63001_
                                      (fx+ _start62982_
                                           _i62991_
                                           (fx* _i62991_ _i62991_))))
                                 (fxmodulo _next-probe63001_ _size62976_)))
                              (__tmp64769 (fx+ _i62991_ '1))
                              (__tmp64768
                               (let ((_$e63004_ _deleted62993_))
                                 (if _$e63004_ _$e63004_ _probe62989_))))
                          (declare (not safe))
                          (_loop62986_ __tmp64770 __tmp64769 __tmp64768))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key62965_ _k62996_))
                            (begin
                              (vector-set!
                               _table62970_
                               _probe62989_
                               _key62965_)
                              (vector-set!
                               _table62970_
                               (fx+ _probe62989_ '1)
                               (_class-specializer-table-update!62966_
                                (vector-ref
                                 _table62970_
                                 (fx+ _probe62989_ '1)))))
                            (let ((__tmp64767
                                   (let ((_next-probe63007_
                                          (fx+ _start62982_
                                               _i62991_
                                               (fx* _i62991_ _i62991_))))
                                     (fxmodulo _next-probe63007_ _size62976_)))
                                  (__tmp64766 (fx+ _i62991_ '1)))
                              (declare (not safe))
                              (_loop62986_
                               __tmp64767
                               __tmp64766
                               _deleted62993_)))))))))))
    (define class-specializer-table-delete!
      (lambda (_tab62923_ _key62925_)
        (let ((_table62928_
               (let () (declare (not safe)) (&raw-table-table _tab62923_)))
              (_seed62930_
               (let () (declare (not safe)) (&raw-table-seed _tab62923_))))
          (let* ((_h62933_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _key62925_))
                         _seed62930_))
                 (_size62936_ (vector-length _table62928_))
                 (_entries62939_ (fxquotient _size62936_ '2))
                 (_start62942_
                  (fxarithmetic-shift-left
                   (fxmodulo _h62933_ _entries62939_)
                   '1)))
            (let _loop62946_ ((_probe62949_ _start62942_) (_i62951_ '1))
              (let ((_k62954_ (vector-ref _table62928_ _probe62949_)))
                (if (let ((__tmp64782 (macro-unused-obj)))
                      (declare (not safe))
                      (eq? _k62954_ __tmp64782))
                    '#!void
                    (if (let ((__tmp64781 (macro-deleted-obj)))
                          (declare (not safe))
                          (eq? _k62954_ __tmp64781))
                        (let ((__tmp64780
                               (let ((_next-probe62957_
                                      (fx+ _start62942_
                                           _i62951_
                                           (fx* _i62951_ _i62951_))))
                                 (fxmodulo _next-probe62957_ _size62936_)))
                              (__tmp64779 (fx+ _i62951_ '1)))
                          (declare (not safe))
                          (_loop62946_ __tmp64780 __tmp64779))
                        (if (let ()
                              (declare (not safe))
                              (eq? _key62925_ _k62954_))
                            (begin
                              (vector-set!
                               _table62928_
                               _probe62949_
                               (macro-deleted-obj))
                              (vector-set!
                               _table62928_
                               (fx+ _probe62949_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp64778
                                        (fx- (let ()
                                               (declare (not safe))
                                               (&raw-table-count _tab62923_))
                                             '1)))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _tab62923_
                                    __tmp64778)))))
                            (let ((__tmp64777
                                   (let ((_next-probe62961_
                                          (fx+ _start62942_
                                               _i62951_
                                               (fx* _i62951_ _i62951_))))
                                     (fxmodulo _next-probe62961_ _size62936_)))
                                  (__tmp64776 (fx+ _i62951_ '1)))
                              (declare (not safe))
                              (_loop62946_ __tmp64777 __tmp64776)))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers
      (let () (declare (not safe)) (make-class-specializer-table__% '#f '0)))
    (define __class-specializers-key
      (let () (declare (not safe)) (cons '#f '#f)))
    (define specialize-class
      (lambda (_klass62916_)
        (let ((_$e62918_
               (let ()
                 (declare (not safe))
                 (__lookup-class-specializer _klass62916_))))
          (if _$e62918_
              _$e62918_
              (let ((_method-table62921_
                     (let ()
                       (declare (not safe))
                       (__specialize-class _klass62916_))))
                (let ()
                  (declare (not safe))
                  (__bind-class-specializer! _klass62916_ _method-table62921_))
                _method-table62921_)))))
    (define __lookup-class-specializer
      (lambda (_klass62906_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again62910_ ()
            (if (let ((__tmp64783
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64783 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again62910_))))))
        (let ((_method-table62914_
               (let ()
                 (declare (not safe))
                 (class-specializer-table-ref
                  __class-specializers
                  _klass62906_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _method-table62914_)))
    (define __bind-class-specializer!
      (lambda (_klass62897_ _method-table62898_)
        (let ()
          (declare (not interrupts-enabled))
          (let _again62902_ ()
            (if (let ((__tmp64784
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp64784 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_again62902_))))))
        (let ()
          (declare (not safe))
          (class-specializer-table-set!
           __class-specializers
           _klass62897_
           _method-table62898_))
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_klass62882_ _method-table62883_ _method62884_ _proc62885_)
        (let ((_$e62887_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _method-table62883_ _method62884_ '#f))))
          (if _$e62887_
              _$e62887_
              (let ((_$e62890_
                     (let ()
                       (declare (not safe))
                       (__lookup-method-specializer _proc62885_))))
                (if _$e62890_
                    ((lambda (_specialize62893_)
                       (let ((_specialized-proc62895_
                              (_specialize62893_
                               _klass62882_
                               _method-table62883_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _method-table62883_
                          _method62884_
                          _specialized-proc62895_)))
                     _$e62890_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _method-table62883_
                       _method62884_
                       _proc62885_))))))))
    (define __specialize-class
      (lambda (_klass62809_)
        (if (let ((__tmp64790
                   (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _klass62809_
                      'gerbil#class::t))))
              (declare (not safe))
              (not __tmp64790))
            (if (let () (declare (not safe)) (##type? _klass62809_))
                (let ((_method-table62811_
                       (let ()
                         (declare (not safe))
                         (make-symbolic-table__% '#f '0))))
                  (let _loop62813_ ((_xklass62815_ _klass62809_))
                    (if _xklass62815_
                        (begin
                          (let ((_xmethod-table6281662818_
                                 (let ((__tmp64787
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _xklass62815_))))
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    __builtin-type-methods
                                    __tmp64787
                                    '#f))))
                            (if _xmethod-table6281662818_
                                (let* ((_xmethod-table62821_
                                        _xmethod-table6281662818_)
                                       (__tmp64788
                                        (lambda (_g6282262825_ _g6282362827_)
                                          (let ()
                                            (declare (not safe))
                                            (__specialize-method
                                             _klass62809_
                                             _method-table62811_
                                             _g6282262825_
                                             _g6282362827_)))))
                                  (declare (not safe))
                                  (raw-table-for-each
                                   _xmethod-table62821_
                                   __tmp64788))
                                '#f))
                          (let ((__tmp64789
                                 (let ()
                                   (declare (not safe))
                                   (##type-super _xklass62815_))))
                            (declare (not safe))
                            (_loop62813_ __tmp64789)))
                        '#!void))
                  _method-table62811_)
                (let ()
                  (declare (not safe))
                  (error '"bad class; cannot specialize" _klass62809_)))
            (if (let ()
                  (declare (not safe))
                  (class-type-metaclass? _klass62809_))
                (let ((__method64585
                       (let ()
                         (declare (not safe))
                         (method-ref _klass62809_ 'specialize-class))))
                  (if __method64585
                      (__method64585 _klass62809_)
                      (let ()
                        (declare (not safe))
                        (error '"Missing method"
                               _klass62809_
                               'specialize-class))))
                (if (let ((__tmp64786
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _klass62809_
                              '6
                              class::t
                              '#f))))
                      (declare (not safe))
                      (find class-type-metaclass? __tmp64786))
                    (let ()
                      (declare (not safe))
                      (error '"cannot specialize class that extends metaclass without a metaclass"
                             _klass62809_))
                    (let ((_method-table62830_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _loop62832_ ((_rest62834_
                                         (let ()
                                           (declare (not safe))
                                           (class-precedence-list
                                            _klass62809_))))
                        (let* ((_rest6283562843_ _rest62834_)
                               (_else6283762851_
                                (lambda () _method-table62830_))
                               (_K6283962870_
                                (lambda (_rest62854_ _xklass62855_)
                                  (let ((_xmethod-table6285662858_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _xklass62855_
                                            '11
                                            class::t
                                            '#f))))
                                    (if _xmethod-table6285662858_
                                        (let* ((_xmethod-table62861_
                                                _xmethod-table6285662858_)
                                               (__tmp64785
                                                (lambda (_g6286262865_
                                                         _g6286362867_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (__specialize-method
                                                     _klass62809_
                                                     _method-table62830_
                                                     _g6286262865_
                                                     _g6286362867_)))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _xmethod-table62861_
                                           __tmp64785))
                                        '#f))
                                  (let ()
                                    (declare (not safe))
                                    (_loop62832_ _rest62854_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest6283562843_))
                              (let ((_hd6284062873_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest6283562843_)))
                                    (_tl6284162875_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest6283562843_))))
                                (let* ((_xklass62878_ _hd6284062873_)
                                       (_rest62880_ _tl6284162875_))
                                  (declare (not safe))
                                  (_K6283962870_ _rest62880_ _xklass62878_)))
                              (let ()
                                (declare (not safe))
                                (_else6283762851_)))))))))))
    (define seal-class!
      (lambda (_klass62805_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass62805_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-sealed? _klass62805_))
                '#!void
                (begin
                  (if (let ()
                        (declare (not safe))
                        (class-type-final? _klass62805_))
                      '#!void
                      (let ()
                        (declare (not safe))
                        (error '"cannot seal non-final class" _klass62805_)))
                  (if (let ()
                        (declare (not safe))
                        (class-type-metaclass? _klass62805_))
                      (let ((__method64586
                             (let ()
                               (declare (not safe))
                               (method-ref _klass62805_ 'seal-class!))))
                        (if __method64586
                            (__method64586 _klass62805_)
                            (let ()
                              (declare (not safe))
                              (error '"Missing method"
                                     _klass62805_
                                     'seal-class!))))
                      (if (let ((__tmp64791
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _klass62805_
                                    '6
                                    class::t
                                    '#f))))
                            (declare (not safe))
                            (find class-type-metaclass? __tmp64791))
                          (let ()
                            (declare (not safe))
                            (error '"cannot seal class that extends metaclass without a metaclass"
                                   _klass62805_))
                          (let ((_method-table62807_
                                 (let ()
                                   (declare (not safe))
                                   (specialize-class _klass62805_))))
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _klass62805_
                             _method-table62807_
                             '11
                             class::t
                             '#f))))
                  (let ()
                    (declare (not safe))
                    (&class-type-seal! _klass62805_))))
            '#!void)))
    (define next-method
      (lambda (_subklass62754_ _obj62755_ _id62756_)
        (let ((_klass62758_ (object-type _obj62755_))
              (_type-id62759_
               (let () (declare (not safe)) (##type-id _subklass62754_))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass62758_ 'gerbil#class::t))
              (let _lp62761_ ((_rest62763_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass62758_))))
                (let* ((_rest6276462772_ _rest62763_)
                       (_else6276662780_ (lambda () '#f))
                       (_K6276862786_
                        (lambda (_rest62783_ _klass62784_)
                          (if (let ((__tmp64794
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass62784_))))
                                (declare (not safe))
                                (eq? _type-id62759_ __tmp64794))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method
                                 _rest62783_
                                 _obj62755_
                                 _id62756_))
                              (let ()
                                (declare (not safe))
                                (_lp62761_ _rest62783_))))))
                  (if (let () (declare (not safe)) (##pair? _rest6276462772_))
                      (let ((_hd6276962789_
                             (let ()
                               (declare (not safe))
                               (##car _rest6276462772_)))
                            (_tl6277062791_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest6276462772_))))
                        (let* ((_klass62794_ _hd6276962789_)
                               (_rest62796_ _tl6277062791_))
                          (declare (not safe))
                          (_K6276862786_ _rest62796_ _klass62794_)))
                      (let () (declare (not safe)) (_else6276662780_)))))
              (if (let () (declare (not safe)) (##type? _klass62758_))
                  (let _lp62798_ ((_klass62800_ _klass62758_))
                    (if (let ((__tmp64793
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass62800_))))
                          (declare (not safe))
                          (eq? _type-id62759_ __tmp64793))
                        (let ((__tmp64792
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass62800_))))
                          (declare (not safe))
                          (builtin-find-method
                           __tmp64792
                           _obj62755_
                           _id62756_))
                        (let ((_$e62802_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass62800_))))
                          (if _$e62802_
                              (let ()
                                (declare (not safe))
                                (_lp62798_ _$e62802_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass62744_ _obj62745_ _id62746_ . _args62747_)
        (let ((_$e62749_
               (let ()
                 (declare (not safe))
                 (next-method _subklass62744_ _obj62745_ _id62746_))))
          (if _$e62749_
              ((lambda (_methodf62752_)
                 (apply _methodf62752_ _obj62745_ _args62747_))
               _$e62749_)
              (let ()
                (declare (not safe))
                (error '"cannot find next method"
                       'object:
                       _obj62745_
                       'method:
                       _id62746_))))))
    (define write-style (lambda (_we62742_) (macro-writeenv-style _we62742_)))
    (define write-object
      (lambda (_we62734_ _obj62735_)
        (let ((_$e62737_
               (let () (declare (not safe)) (method-ref _obj62735_ ':wr))))
          (if _$e62737_
              ((lambda (_method62740_) (_method62740_ _obj62735_ _we62734_))
               _$e62737_)
              (let ()
                (declare (not safe))
                (##default-wr _we62734_ _obj62735_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
