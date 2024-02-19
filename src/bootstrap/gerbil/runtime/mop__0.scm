(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1708337963)
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
      (let* ((_slots84562_
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
             (_slot-vector84564_
              (list->vector
               (let () (declare (not safe)) (cons '#f _slots84562_))))
             (_slot-table84571_
              (let ((_slot-table84566_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (for-each
                 (lambda (_slot84568_ _field84569_)
                   (let ()
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table84566_
                      _slot84568_
                      _field84569_))
                   (let ((__tmp88697 (symbol->keyword _slot84568_)))
                     (declare (not safe))
                     (symbolic-table-set!
                      _slot-table84566_
                      __tmp88697
                      _field84569_)))
                 _slots84562_
                 (let ((__tmp88698 (length _slots84562_)))
                   (declare (not safe))
                   (iota__1 __tmp88698 '1)))
                _slot-table84566_))
             (_flags84573_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_fields84579_
              (list->vector
               (apply append
                      (map (lambda (_g8457484576_) (list _g8457484576_ '5 '#f))
                           (let ()
                             (declare (not safe))
                             (drop _slots84562_ '5))))))
             (_properties84581_
              (let ((__tmp88701
                     (let ((__tmp88702
                            (let ()
                              (declare (not safe))
                              (foldr1 cons '() _slots84562_))))
                       (declare (not safe))
                       (cons 'direct-slots: __tmp88702)))
                    (__tmp88699
                     (let ((__tmp88700
                            (let () (declare (not safe)) (cons 'struct: '#t))))
                       (declare (not safe))
                       (cons __tmp88700 '()))))
                (declare (not safe))
                (cons __tmp88701 __tmp88699)))
             (_t84583_
              (let ()
                (declare (not safe))
                (##structure
                 '#f
                 class::t.id
                 'class
                 _flags84573_
                 ##type-type
                 _fields84579_
                 '()
                 _slot-vector84564_
                 _slot-table84571_
                 _properties84581_
                 '#f
                 '#f))))
        (let () (declare (not safe)) (##structure-type-set! _t84583_ _t84583_))
        _t84583_))
    (define class-type?
      (lambda (_obj84560_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _obj84560_ class::t.id))))
    (define class-type=?
      (lambda (_x84557_ _y84558_)
        (let ((__tmp88704 (##structure-ref _x84557_ '1 class::t '#f))
              (__tmp88703 (##structure-ref _y84558_ '1 class::t '#f)))
          (declare (not safe))
          (eq? __tmp88704 __tmp88703))))
    (define type-opaque?
      (lambda (_type84555_)
        (let ((__tmp88705
               (let ((__tmp88706
                      (let ()
                        (declare (not safe))
                        (##type-flags _type84555_))))
                 (declare (not safe))
                 (##fxand __tmp88706 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp88705 type-flag-opaque))))
    (define type-extensible?
      (lambda (_type84553_)
        (let ((__tmp88707
               (let ((__tmp88708
                      (let ()
                        (declare (not safe))
                        (##type-flags _type84553_))))
                 (declare (not safe))
                 (##fxand __tmp88708 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp88707 type-flag-extensible))))
    (define class-type-final?
      (lambda (_type84551_)
        (let ((__tmp88709
               (let ((__tmp88710
                      (let ()
                        (declare (not safe))
                        (##type-flags _type84551_))))
                 (declare (not safe))
                 (##fxand __tmp88710 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp88709 '0))))
    (define class-type-struct?
      (lambda (_klass84549_)
        (let ((__tmp88711
               (let ((__tmp88712
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84549_))))
                 (declare (not safe))
                 (##fxand __tmp88712 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp88711 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_klass84547_)
        (let ((__tmp88713
               (let ((__tmp88714
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84547_))))
                 (declare (not safe))
                 (##fxand __tmp88714 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp88713 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_klass84545_)
        (let ((__tmp88715
               (let ((__tmp88716
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84545_))))
                 (declare (not safe))
                 (##fxand __tmp88716 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp88715 class-type-flag-metaclass))))
    (define properties-form
      (lambda (_properties84511_)
        (map (lambda (_e8451284514_)
               (let* ((_g8451684523_ _e8451284514_)
                      (_E8451884527_
                       (lambda () (error '"No clause matching" _g8451684523_)))
                      (_K8451984533_
                       (lambda (_val84530_ _key84531_)
                         (if (let ()
                               (declare (not safe))
                               (eq? _key84531_ 'direct-supers:))
                             (let ((__tmp88717 (map class-type-id _val84530_)))
                               (declare (not safe))
                               (cons _key84531_ __tmp88717))
                             (let ()
                               (declare (not safe))
                               (cons _key84531_ _val84530_))))))
                 (if (let () (declare (not safe)) (##pair? _g8451684523_))
                     (let ((_hd8452084536_
                            (let ()
                              (declare (not safe))
                              (##car _g8451684523_)))
                           (_tl8452184538_
                            (let ()
                              (declare (not safe))
                              (##cdr _g8451684523_))))
                       (let* ((_key84541_ _hd8452084536_)
                              (_val84543_ _tl8452184538_))
                         (declare (not safe))
                         (_K8451984533_ _val84543_ _key84541_)))
                     (let () (declare (not safe)) (_E8451884527_)))))
             _properties84511_)))
    (define make-class-type-descriptor
      (lambda (_type-id84410_
               _type-name84411_
               _type-super84412_
               _precedence-list84413_
               _slot-vector84414_
               _properties84415_
               _constructor84416_
               _slot-table84417_
               _methods84418_)
        (letrec ((_make-props!84420_
                  (lambda (_key84480_)
                    (letrec* ((_ht84482_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_put-slots!84483_
                               (lambda (_ht84504_ _slots84505_)
                                 (for-each
                                  (lambda (_g8450684508_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _ht84504_
                                       _g8450684508_
                                       '#t)))
                                  _slots84505_)))
                              (_put-alist!84484_
                               (lambda (_ht84493_ _key84494_ _alist84495_)
                                 (let ((_$e84497_
                                        (let ()
                                          (declare (not safe))
                                          (assgetq__0
                                           _key84494_
                                           _alist84495_))))
                                   (if _$e84497_
                                       ((lambda (_g8449984501_)
                                          (let ()
                                            (declare (not safe))
                                            (_put-slots!84483_
                                             _ht84493_
                                             _g8449984501_)))
                                        _$e84497_)
                                       '#!void)))))
                      (let ()
                        (declare (not safe))
                        (_put-alist!84484_
                         _ht84482_
                         _key84480_
                         _properties84415_))
                      (for-each
                       (lambda (_mixin84486_)
                         (let ((_alist84488_
                                (##structure-ref
                                 _mixin84486_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (assgetq__0 'transparent: _alist84488_))
                                   (let ((__tmp88719
                                          (let ()
                                            (declare (not safe))
                                            (assgetq__0
                                             _key84480_
                                             _alist84488_))))
                                     (declare (not safe))
                                     (eq? '#t __tmp88719)))
                               (let ((__tmp88718
                                      (let ()
                                        (declare (not safe))
                                        (class-type-slot-list _mixin84486_))))
                                 (declare (not safe))
                                 (_put-slots!84483_ _ht84482_ __tmp88718))
                               (let ()
                                 (declare (not safe))
                                 (_put-alist!84484_
                                  _ht84482_
                                  _key84480_
                                  _alist84488_)))))
                       _precedence-list84413_)
                      _ht84482_))))
          (let* ((_transparent?84422_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'transparent: _properties84415_)))
                 (_all-slots-printable?84427_
                  (let ((_$e84424_ _transparent?84422_))
                    (if _$e84424_
                        _$e84424_
                        (let ((__tmp88720
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'print: _properties84415_))))
                          (declare (not safe))
                          (eq? '#t __tmp88720)))))
                 (_printable84429_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-printable?84427_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84420_ 'print:))
                      '#f))
                 (_all-slots-equalable?84434_
                  (let ((_$e84431_ _transparent?84422_))
                    (if _$e84431_
                        _$e84431_
                        (let ((__tmp88721
                               (let ()
                                 (declare (not safe))
                                 (assgetq__0 'equal: _properties84415_))))
                          (declare (not safe))
                          (eq? '#t __tmp88721)))))
                 (_equalable84436_
                  (if (let ()
                        (declare (not safe))
                        (not _all-slots-equalable?84434_))
                      (let ()
                        (declare (not safe))
                        (_make-props!84420_ 'equal:))
                      '#f))
                 (_first-new-field84438_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of?
                         _type-super84412_
                         'gerbil#class::t))
                      (let ((__tmp88722
                             (##structure-ref
                              _type-super84412_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp88722))
                      '1))
                 (_field-info-length84440_
                  (let ((__tmp88723
                         (let ((__tmp88724
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _slot-vector84414_))))
                           (declare (not safe))
                           (##fx- __tmp88724 _first-new-field84438_))))
                    (declare (not safe))
                    (##fx* '3 __tmp88723)))
                 (_field-info84442_ (make-vector _field-info-length84440_ '#f))
                 (_struct?84444_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'struct: _properties84415_)))
                 (_final?84446_
                  (let ()
                    (declare (not safe))
                    (assgetq__0 'final: _properties84415_)))
                 (_metaclass84454_
                  (let ((_metaclass8444784449_
                         (let ()
                           (declare (not safe))
                           (assgetq__0 'metaclass: _properties84415_))))
                    (if _metaclass8444784449_
                        (let ((_metaclass84452_ _metaclass8444784449_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _metaclass84452_
                                 'gerbil#class::t))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _type-id84410_
                                     'metaclass:
                                     _metaclass84452_))
                          _metaclass84452_)
                        '#f)))
                 (_opaque?84459_
                  (let ((_$e84456_
                         (let ()
                           (declare (not safe))
                           (not _all-slots-equalable?84434_))))
                    (if _$e84456_
                        _$e84456_
                        (if _type-super84412_
                            (let ()
                              (declare (not safe))
                              (type-opaque? _type-super84412_))
                            '#f))))
                 (_type-flags84461_
                  (let ((__tmp88728 (if _final?84446_ '0 type-flag-extensible))
                        (__tmp88727 (if _opaque?84459_ type-flag-opaque '0))
                        (__tmp88726
                         (if _struct?84444_ class-type-flag-struct '0))
                        (__tmp88725
                         (if _metaclass84454_ class-type-flag-metaclass '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp88728
                             __tmp88727
                             __tmp88726
                             __tmp88725))))
            (let _loop84464_ ((_i84466_ _first-new-field84438_) (_j84467_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _j84467_ _field-info-length84440_))
                  (let* ((_slot84469_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _slot-vector84414_ _i84466_)))
                         (_flags84477_
                          (if _transparent?84422_
                              '0
                              (let ((__tmp88730
                                     (if (or _all-slots-printable?84427_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _printable84429_
                                                _slot84469_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp88729
                                     (if (or _all-slots-equalable?84434_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _equalable84436_
                                                _slot84469_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp88730 __tmp88729)))))
                    (vector-set! _field-info84442_ _j84467_ _slot84469_)
                    (vector-set!
                     _field-info84442_
                     (let () (declare (not safe)) (##fx+ _j84467_ '1))
                     _flags84477_)
                    (let ((__tmp88732
                           (let () (declare (not safe)) (##fx+ _i84466_ '1)))
                          (__tmp88731
                           (let () (declare (not safe)) (##fx+ _j84467_ '3))))
                      (declare (not safe))
                      (_loop84464_ __tmp88732 __tmp88731)))
                  '#!void))
            (if _metaclass84454_
                (let ()
                  (declare (not safe))
                  (make-instance
                   _metaclass84454_
                   _type-id84410_
                   _type-name84411_
                   _type-flags84461_
                   _type-super84412_
                   _field-info84442_
                   _precedence-list84413_
                   _slot-vector84414_
                   _slot-table84417_
                   _properties84415_
                   _constructor84416_
                   _methods84418_))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _type-id84410_
                   _type-name84411_
                   _type-flags84461_
                   _type-super84412_
                   _field-info84442_
                   _precedence-list84413_
                   _slot-vector84414_
                   _slot-table84417_
                   _properties84415_
                   _constructor84416_
                   _methods84418_)))))))
    (define class-type-id
      (lambda (_klass84408_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84408_ '1 class::t 'id))))
    (define &class-type-id
      (lambda (_klass84406_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84406_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_klass84403_ _val84404_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84403_ _val84404_ '1 class::t 'id))))
    (define &class-type-id-set!
      (lambda (_klass84398_ _val84400_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84398_
           _val84400_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_klass84396_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84396_ '2 class::t 'name))))
    (define &class-type-name
      (lambda (_klass84394_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84394_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_klass84391_ _val84392_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84391_ _val84392_ '2 class::t 'name))))
    (define &class-type-name-set!
      (lambda (_klass84386_ _val84388_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84386_
           _val84388_
           '2
           class::t
           'name))))
    (define class-type-super
      (lambda (_klass84384_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84384_ '3 class::t 'super))))
    (define &class-type-super
      (lambda (_klass84382_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84382_ '3 class::t 'super))))
    (define class-type-super-set!
      (lambda (_klass84379_ _val84380_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84379_ _val84380_ '3 class::t 'super))))
    (define &class-type-super-set!
      (lambda (_klass84374_ _val84376_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84374_
           _val84376_
           '3
           class::t
           'super))))
    (define class-type-flags
      (lambda (_klass84372_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84372_ '4 class::t 'flags))))
    (define &class-type-flags
      (lambda (_klass84370_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84370_ '4 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_klass84367_ _val84368_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84367_ _val84368_ '4 class::t 'flags))))
    (define &class-type-flags-set!
      (lambda (_klass84362_ _val84364_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84362_
           _val84364_
           '4
           class::t
           'flags))))
    (define class-type-fields
      (lambda (_klass84360_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84360_ '5 class::t 'fields))))
    (define &class-type-fields
      (lambda (_klass84358_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84358_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_klass84355_ _val84356_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84355_ _val84356_ '5 class::t 'fields))))
    (define &class-type-fields-set!
      (lambda (_klass84350_ _val84352_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84350_
           _val84352_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_klass84348_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84348_ '6 class::t 'precedence-list))))
    (define &class-type-precedence-list
      (lambda (_klass84346_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _klass84346_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_klass84343_ _val84344_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass84343_
           _val84344_
           '6
           class::t
           'precedence-list))))
    (define &class-type-precedence-list-set!
      (lambda (_klass84338_ _val84340_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84338_
           _val84340_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_klass84336_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84336_ '7 class::t 'slot-vector))))
    (define &class-type-slot-vector
      (lambda (_klass84334_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84334_ '7 class::t 'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_klass84331_ _val84332_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass84331_
           _val84332_
           '7
           class::t
           'slot-vector))))
    (define &class-type-slot-vector-set!
      (lambda (_klass84326_ _val84328_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84326_
           _val84328_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_klass84324_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84324_ '8 class::t 'slot-table))))
    (define &class-type-slot-table
      (lambda (_klass84322_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84322_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_klass84319_ _val84320_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84319_ _val84320_ '8 class::t 'slot-table))))
    (define &class-type-slot-table-set!
      (lambda (_klass84314_ _val84316_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84314_
           _val84316_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_klass84312_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84312_ '9 class::t 'properties))))
    (define &class-type-properties
      (lambda (_klass84310_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84310_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_klass84307_ _val84308_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84307_ _val84308_ '9 class::t 'properties))))
    (define &class-type-properties-set!
      (lambda (_klass84302_ _val84304_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84302_
           _val84304_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_klass84300_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84300_ '10 class::t 'constructor))))
    (define &class-type-constructor
      (lambda (_klass84298_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84298_ '10 class::t 'constructor))))
    (define class-type-constructor-set!
      (lambda (_klass84295_ _val84296_)
        (let ()
          (declare (not safe))
          (##structure-set!
           _klass84295_
           _val84296_
           '10
           class::t
           'constructor))))
    (define &class-type-constructor-set!
      (lambda (_klass84290_ _val84292_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84290_
           _val84292_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_klass84288_)
        (let ()
          (declare (not safe))
          (##structure-ref _klass84288_ '11 class::t 'methods))))
    (define &class-type-methods
      (lambda (_klass84286_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _klass84286_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_klass84283_ _val84284_)
        (let ()
          (declare (not safe))
          (##structure-set! _klass84283_ _val84284_ '11 class::t 'methods))))
    (define &class-type-methods-set!
      (lambda (_klass84278_ _val84280_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84278_
           _val84280_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_klass84276_)
        (cdr (vector->list (##structure-ref _klass84276_ '7 class::t '#f)))))
    (define class-type-field-count
      (lambda (_klass84274_)
        (let ((__tmp88733
               (let ((__tmp88734
                      (##structure-ref _klass84274_ '7 class::t '#f)))
                 (declare (not safe))
                 (##vector-length __tmp88734))))
          (declare (not safe))
          (##fx- __tmp88733 '1))))
    (define class-type-seal!
      (lambda (_klass84272_)
        (let ((__tmp88735
               (let ((__tmp88736
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84272_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp88736))))
          (declare (not safe))
          (##structure-set!
           _klass84272_
           __tmp88735
           '3
           class::t
           class-type-seal!))))
    (define &class-type-seal!
      (lambda (_klass84270_)
        (let ((__tmp88737
               (let ((__tmp88738
                      (let ()
                        (declare (not safe))
                        (##type-flags _klass84270_))))
                 (declare (not safe))
                 (##fxior class-type-flag-sealed __tmp88738))))
          (declare (not safe))
          (##unchecked-structure-set!
           _klass84270_
           __tmp88737
           '3
           class::t
           class-type-seal!))))
    (define substruct?
      (lambda (_maybe-sub-struct84261_ _maybe-super-struct84262_)
        (let ((_maybe-super-struct-id84264_
               (let ()
                 (declare (not safe))
                 (##type-id _maybe-super-struct84262_))))
          (let _lp84266_ ((_super-struct84268_ _maybe-sub-struct84261_))
            (if (let () (declare (not safe)) (not _super-struct84268_))
                '#f
                (if (let ((__tmp88740
                           (let ()
                             (declare (not safe))
                             (##type-id _super-struct84268_))))
                      (declare (not safe))
                      (eq? _maybe-super-struct-id84264_ __tmp88740))
                    '#t
                    (let ((__tmp88739
                           (let ()
                             (declare (not safe))
                             (##type-super _super-struct84268_))))
                      (declare (not safe))
                      (_lp84266_ __tmp88739))))))))
    (define base-struct/1
      (lambda (_klass84259_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass84259_ 'gerbil#class::t))
            (if (let () (declare (not safe)) (class-type-struct? _klass84259_))
                _klass84259_
                (let () (declare (not safe)) (##type-super _klass84259_)))
            (if (let () (declare (not safe)) (not _klass84259_))
                '#f
                (error '"not a class or false" _klass84259_)))))
    (define base-struct/2
      (lambda (_klass184247_ _klass284248_)
        (let ((_s184250_
               (let () (declare (not safe)) (base-struct/1 _klass184247_)))
              (_s284251_
               (let () (declare (not safe)) (base-struct/1 _klass284248_))))
          (if (or (let () (declare (not safe)) (not _s184250_))
                  (and _s284251_
                       (let ()
                         (declare (not safe))
                         (substruct? _s184250_ _s284251_))))
              _s284251_
              (if (or (let () (declare (not safe)) (not _s284251_))
                      (and _s184250_
                           (let ()
                             (declare (not safe))
                             (substruct? _s284251_ _s184250_))))
                  _s184250_
                  (error '"bad mixin: incompatible struct bases"
                         _klass184247_
                         _klass284248_
                         _s184250_
                         _s284251_))))))
    (define base-struct/list
      (lambda (_all-supers84131_)
        (let* ((_all-supers8413284157_ _all-supers84131_)
               (_E8413784161_
                (lambda ()
                  (error '"No clause matching" _all-supers8413284157_))))
          (let ((_K8415584244_ (lambda () '#f))
                (_K8415284230_
                 (lambda (_x84228_)
                   (let () (declare (not safe)) (base-struct/1 _x84228_))))
                (_K8414784207_
                 (lambda (_y84204_ _x84205_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _x84205_ _y84204_))))
                (_K8413884168_
                 (lambda (_y84165_ _x84166_)
                   (let ()
                     (declare (not safe))
                     (foldr1 base-struct/2 _x84166_ _y84165_)))))
            (let* ((___match8869288693_
                    (lambda (_hd8413984171_ _tl8414084173_)
                      (let ((_x84176_ _hd8413984171_))
                        (letrec ((_splice-rest8414284178_
                                  (lambda (_rest8414684185_ _y84187_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _rest8414684185_))
                                        (let ()
                                          (declare (not safe))
                                          (_K8413884168_ _y84187_ _x84176_))
                                        (let ()
                                          (declare (not safe))
                                          (_E8413784161_)))))
                                 (_splice-try8414484180_
                                  (lambda (_hd8414584189_
                                           _rest8414684191_
                                           _y8414184192_)
                                    (let ((_y84195_ _hd8414584189_))
                                      (let ((__tmp88742
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _rest8414684191_)))
                                            (__tmp88741
                                             (let ()
                                               (declare (not safe))
                                               (cons _y84195_ _y8414184192_))))
                                        (declare (not safe))
                                        (_splice-loop8414384182_
                                         __tmp88742
                                         __tmp88741)))))
                                 (_splice-loop8414384182_
                                  (lambda (_rest8414684197_ _y8414184198_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _rest8414684197_))
                                        (let ((__tmp88744
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _rest8414684197_))))
                                          (declare (not safe))
                                          (_splice-try8414484180_
                                           __tmp88744
                                           _rest8414684197_
                                           _y8414184198_))
                                        (let ((__tmp88743
                                               (reverse _y8414184198_)))
                                          (declare (not safe))
                                          (_splice-rest8414284178_
                                           _rest8414684197_
                                           __tmp88743))))))
                          (let ()
                            (declare (not safe))
                            (_splice-loop8414384182_ _tl8414084173_ '()))))))
                   (_try-match8413484240_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all-supers8413284157_))
                          (let ((_tl8415484235_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all-supers8413284157_)))
                                (_hd8415384233_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all-supers8413284157_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl8415484235_))
                                (let ((_x84238_ _hd8415384233_))
                                  (declare (not safe))
                                  (base-struct/1 _x84238_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl8415484235_))
                                    (let ((_tl8415184219_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl8415484235_)))
                                          (_hd8415084217_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl8415484235_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl8415184219_))
                                          (let ((_x84215_ _hd8415384233_)
                                                (_y84222_ _hd8415084217_))
                                            (let ()
                                              (declare (not safe))
                                              (_K8414784207_
                                               _y84222_
                                               _x84215_)))
                                          (___match8869288693_
                                           _hd8415384233_
                                           _tl8415484235_)))
                                    (___match8869288693_
                                     _hd8415384233_
                                     _tl8415484235_))))
                          (let () (declare (not safe)) (_E8413784161_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _all-supers8413284157_))
                  (let () (declare (not safe)) (_K8415584244_))
                  (let () (declare (not safe)) (_try-match8413484240_))))))))
    (define base-struct
      (lambda _all-supers84129_
        (let () (declare (not safe)) (base-struct/list _all-supers84129_))))
    (define find-super-constructor
      (lambda (_super84081_)
        (let _lp84083_ ((_rest84085_ _super84081_) (_constructor84086_ '#f))
          (let* ((_rest8408784095_ _rest84085_)
                 (_else8408984103_ (lambda () _constructor84086_))
                 (_K8409184117_
                  (lambda (_rest84106_ _hd84107_)
                    (let ((_$e84109_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _hd84107_
                              '10
                              class::t
                              '#f))))
                      (if _$e84109_
                          ((lambda (_xconstructor84112_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _constructor84086_))
                                     (let ()
                                       (declare (not safe))
                                       (eq? _constructor84086_
                                            _xconstructor84112_)))
                                 (let ()
                                   (declare (not safe))
                                   (_lp84083_ _rest84106_ _xconstructor84112_))
                                 (error '"conflicting implicit constructors"
                                        _constructor84086_
                                        _xconstructor84112_)))
                           _$e84109_)
                          (let ()
                            (declare (not safe))
                            (_lp84083_ _rest84106_ _constructor84086_)))))))
            (if (let () (declare (not safe)) (##pair? _rest8408784095_))
                (let ((_hd8409284120_
                       (let () (declare (not safe)) (##car _rest8408784095_)))
                      (_tl8409384122_
                       (let () (declare (not safe)) (##cdr _rest8408784095_))))
                  (let* ((_hd84125_ _hd8409284120_)
                         (_rest84127_ _tl8409384122_))
                    (declare (not safe))
                    (_K8409184117_ _rest84127_ _hd84125_)))
                (let () (declare (not safe)) (_else8408984103_)))))))
    (define compute-class-slots
      (lambda (_class-precedence-list84057_ _direct-slots84058_)
        (let* ((_next-slot84060_ '1)
               (_slot-table84062_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_r-slots84064_ '(__class))
               (_process-slot84068_
                (lambda (_slot84066_)
                  (if (let () (declare (not safe)) (symbol? _slot84066_))
                      '#!void
                      (error '"invalid slot name" _slot84066_))
                  (if (let ((__tmp88746
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref
                                _slot-table84062_
                                _slot84066_
                                absent-value))))
                        (declare (not safe))
                        (eq? __tmp88746 absent-value))
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table84062_
                           _slot84066_
                           _next-slot84060_))
                        (let ((__tmp88745 (symbol->keyword _slot84066_)))
                          (declare (not safe))
                          (symbolic-table-set!
                           _slot-table84062_
                           __tmp88745
                           _next-slot84060_))
                        (set! _r-slots84064_
                              (let ()
                                (declare (not safe))
                                (cons _slot84066_ _r-slots84064_)))
                        (set! _next-slot84060_
                              (let ()
                                (declare (not safe))
                                (##fx+ _next-slot84060_ '1))))
                      '#!void)))
               (_process-slots84074_
                (lambda (_g8406984071_)
                  (for-each _process-slot84068_ _g8406984071_))))
          (for-each
           (lambda (_mixin84077_)
             (let ((__tmp88747
                    (let ((__tmp88748
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _mixin84077_
                              '9
                              class::t
                              '#f))))
                      (declare (not safe))
                      (assgetq__% 'direct-slots: __tmp88748 '()))))
               (declare (not safe))
               (_process-slots84074_ __tmp88747)))
           (reverse _class-precedence-list84057_))
          (let ()
            (declare (not safe))
            (_process-slots84074_ _direct-slots84058_))
          (let ((_slot-vector84079_ (list->vector (reverse _r-slots84064_))))
            (values _slot-vector84079_ _slot-table84062_)))))
    (define make-class-type
      (lambda (_id84019_
               _name84020_
               _direct-supers84021_
               _direct-slots84022_
               _properties84023_
               _constructor84024_)
        (let ((_$e84029_
               (let ((__tmp88749
                      (lambda (_$obj84026_)
                        (let ((__tmp88750
                               (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _$obj84026_
                                  'gerbil#class::t))))
                          (declare (not safe))
                          (not __tmp88750)))))
                 (declare (not safe))
                 (find __tmp88749 _direct-supers84021_))))
          (if _$e84029_
              ((lambda (_g8403184033_)
                 (error '"Illegal super class; not a class descriptor"
                        _g8403184033_))
               _$e84029_)
              (let ((_$e84036_
                     (let ()
                       (declare (not safe))
                       (find class-type-final? _direct-supers84021_))))
                (if _$e84036_
                    ((lambda (_g8403884040_)
                       (error '"Cannot extend final class" _g8403884040_))
                     _$e84036_)
                    '#!void))))
        (let ((_g88751_
               (let ()
                 (declare (not safe))
                 (compute-precedence-list _direct-supers84021_))))
          (begin
            (let ((_g88752_
                   (let ()
                     (declare (not safe))
                     (if (##values? _g88751_) (##vector-length _g88751_) 1))))
              (if (not (let () (declare (not safe)) (##fx= _g88752_ 2)))
                  (error "Context expects 2 values" _g88752_)))
            (let ((_precedence-list84043_
                   (let () (declare (not safe)) (##vector-ref _g88751_ 0)))
                  (_struct-super84044_
                   (let () (declare (not safe)) (##vector-ref _g88751_ 1))))
              (let ((_g88753_
                     (let ()
                       (declare (not safe))
                       (compute-class-slots
                        _precedence-list84043_
                        _direct-slots84022_))))
                (begin
                  (let ((_g88754_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g88753_)
                               (##vector-length _g88753_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g88754_ 2)))
                        (error "Context expects 2 values" _g88754_)))
                  (let ((_slot-vector84046_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g88753_ 0)))
                        (_slot-table84047_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g88753_ 1))))
                    (let* ((_properties84049_
                            (let ((__tmp88757
                                   (let ()
                                     (declare (not safe))
                                     (cons 'direct-slots:
                                           _direct-slots84022_)))
                                  (__tmp88755
                                   (let ((__tmp88756
                                          (let ()
                                            (declare (not safe))
                                            (cons 'direct-supers:
                                                  _direct-supers84021_))))
                                     (declare (not safe))
                                     (cons __tmp88756 _properties84023_))))
                              (declare (not safe))
                              (cons __tmp88757 __tmp88755)))
                           (_constructor*84054_
                            (let ((_$e84051_ _constructor84024_))
                              (if _$e84051_
                                  _$e84051_
                                  (let ()
                                    (declare (not safe))
                                    (find-super-constructor
                                     _direct-supers84021_))))))
                      (let ()
                        (declare (not safe))
                        (make-class-type-descriptor
                         _id84019_
                         _name84020_
                         _struct-super84044_
                         _precedence-list84043_
                         _slot-vector84046_
                         _properties84049_
                         _constructor*84054_
                         _slot-table84047_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_klass84017_)
        (let ((__tmp88758
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass84017_ '6 class::t '#f))))
          (declare (not safe))
          (cons _klass84017_ __tmp88758))))
    (define compute-precedence-list
      (lambda (_direct-supers84015_)
        (let ()
          (declare (not safe))
          (c4-linearize
           '()
           _direct-supers84015_
           'get-precedence-list:
           class-precedence-list
           'struct:
           class-type-struct?
           'eq:
           eq?
           'get-name:
           ##type-name))))
    (define make-class-predicate
      (lambda (_klass83999_)
        (let ((_tid84001_
               (let () (declare (not safe)) (##type-id _klass83999_))))
          (if (let () (declare (not safe)) (class-type-final? _klass83999_))
              (lambda (_g8400284004_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of? _g8400284004_ _tid84001_)))
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _klass83999_))
                  (lambda (_g8400684008_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _g8400684008_ _tid84001_)))
                  (lambda (_g8401084012_)
                    (let ()
                      (declare (not safe))
                      (class-instance? _klass83999_ _g8401084012_))))))))
    (define if-class-slot-field
      (lambda (_klass83988_
               _slot83989_
               _if-final83990_
               _if-struct83991_
               _if-struct-field83992_
               _if-class-slot83993_)
        (let ((_field83995_
               (let ((__tmp88759
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _klass83988_
                         '8
                         class::t
                         '#f))))
                 (declare (not safe))
                 (symbolic-table-ref __tmp88759 _slot83989_ '#f))))
          (if (let () (declare (not safe)) (not _field83995_))
              (error '"unknown slot" 'class: _klass83988_ 'slot: _slot83989_)
              (if (let ()
                    (declare (not safe))
                    (class-type-final? _klass83988_))
                  (_if-final83990_ _klass83988_ _slot83989_ _field83995_)
                  (if (let ()
                        (declare (not safe))
                        (class-type-struct? _klass83988_))
                      (_if-struct83991_ _klass83988_ _slot83989_ _field83995_)
                      (if (let ((_strukt83997_
                                 (let ()
                                   (declare (not safe))
                                   (base-struct/1 _klass83988_))))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _strukt83997_
                                    'gerbil#class::t))
                                 (let ((__tmp88760
                                        (let ((__tmp88761
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _strukt83997_
                                                  '7
                                                  class::t
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp88761))))
                                   (declare (not safe))
                                   (##fx< _field83995_ __tmp88760))))
                          (_if-struct-field83992_
                           _klass83988_
                           _slot83989_
                           _field83995_)
                          (_if-class-slot83993_
                           _klass83988_
                           _slot83989_
                           _field83995_))))))))
    (define make-class-slot-accessor
      (lambda (_klass83985_ _slot83986_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83985_
           _slot83986_
           make-final-slot-accessor
           make-struct-slot-accessor
           make-struct-subclass-slot-accessor
           make-class-cached-slot-accessor))))
    (define make-class-slot-mutator
      (lambda (_klass83982_ _slot83983_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83982_
           _slot83983_
           make-final-slot-mutator
           make-struct-slot-mutator
           make-struct-subclass-slot-mutator
           make-class-cached-slot-mutator))))
    (define make-class-slot-unchecked-accessor
      (lambda (_klass83979_ _slot83980_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83979_
           _slot83980_
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-struct-slot-unchecked-accessor
           make-class-cached-slot-unchecked-accessor))))
    (define make-class-slot-unchecked-mutator
      (lambda (_klass83976_ _slot83977_)
        (let ()
          (declare (not safe))
          (if-class-slot-field
           _klass83976_
           _slot83977_
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-struct-slot-unchecked-mutator
           make-class-cached-slot-unchecked-mutator))))
    (define not-an-instance__%
      (lambda (_object83960_ _class83961_ _slot83962_)
        (apply error
               '"not an instance"
               'object:
               _object83960_
               'class:
               _class83961_
               (if _slot83962_
                   (let ((__tmp88762
                          (let ()
                            (declare (not safe))
                            (cons _slot83962_ '()))))
                     (declare (not safe))
                     (cons 'slot: __tmp88762))
                   '()))))
    (define not-an-instance__0
      (lambda (_object83967_ _class83968_)
        (let ((_slot83970_ '#f))
          (declare (not safe))
          (not-an-instance__% _object83967_ _class83968_ _slot83970_))))
    (define not-an-instance
      (lambda _g88764_
        (let ((_g88763_ (let () (declare (not safe)) (##length _g88764_))))
          (cond ((let () (declare (not safe)) (##fx= _g88763_ 2))
                 (apply (lambda (_object83967_ _class83968_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0 _object83967_ _class83968_)))
                        _g88764_))
                ((let () (declare (not safe)) (##fx= _g88763_ 3))
                 (apply (lambda (_object83972_ _class83973_ _slot83974_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _object83972_
                             _class83973_
                             _slot83974_)))
                        _g88764_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g88764_))))))
    (define make-final-slot-accessor
      (lambda (_klass83953_ _slot83954_ _field83955_)
        (lambda (_obj83957_)
          (let ()
            (declare (not safe))
            (##direct-structure-ref
             _obj83957_
             _field83955_
             _klass83953_
             _slot83954_)))))
    (define make-final-slot-mutator
      (lambda (_klass83946_ _slot83947_ _field83948_)
        (lambda (_obj83950_ _val83951_)
          (let ()
            (declare (not safe))
            (##direct-structure-set!
             _obj83950_
             _val83951_
             _field83948_
             _klass83946_
             _slot83947_)))))
    (define make-struct-slot-accessor
      (lambda (_klass83940_ _slot83941_ _field83942_)
        (lambda (_obj83944_)
          (let ()
            (declare (not safe))
            (##structure-ref
             _obj83944_
             _field83942_
             _klass83940_
             _slot83941_)))))
    (define make-struct-slot-mutator
      (lambda (_klass83933_ _slot83934_ _field83935_)
        (lambda (_obj83937_ _val83938_)
          (let ()
            (declare (not safe))
            (##structure-set!
             _obj83937_
             _val83938_
             _field83935_
             _klass83933_
             _slot83934_)))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_klass83927_ _slot83928_ _field83929_)
        (lambda (_obj83931_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _obj83931_
             _field83929_
             _klass83927_
             _slot83928_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_klass83920_ _slot83921_ _field83922_)
        (lambda (_obj83924_ _val83925_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _obj83924_
             _val83925_
             _field83922_
             _klass83920_
             _slot83921_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_klass83914_ _slot83915_ _field83916_)
        (lambda (_obj83918_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass83914_ _obj83918_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj83918_ _field83916_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj83918_ _klass83914_ _slot83915_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_klass83907_ _slot83908_ _field83909_)
        (lambda (_obj83911_ _val83912_)
          (if (let ()
                (declare (not safe))
                (class-instance? _klass83907_ _obj83911_))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83911_ _field83909_ _val83912_))
              (let ()
                (declare (not safe))
                (not-an-instance__% _obj83911_ _klass83907_ _slot83908_))))))
    (define make-class-cached-slot-accessor
      (lambda (_klass83901_ _slot83902_ _field83903_)
        (lambda (_obj83905_)
          (if (let ((__tmp88765
                     (let () (declare (not safe)) (##type-id _klass83901_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83905_ __tmp88765))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj83905_ _field83903_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass83901_ _obj83905_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _obj83905_ _slot83902_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj83905_
                     _klass83901_
                     _slot83902_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_klass83894_ _slot83895_ _field83896_)
        (lambda (_obj83898_ _val83899_)
          (if (let ((__tmp88766
                     (let () (declare (not safe)) (##type-id _klass83894_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83898_ __tmp88766))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83898_ _field83896_ _val83899_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _klass83894_ _obj83898_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set! _obj83898_ _slot83895_ _val83899_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _obj83898_
                     _klass83894_
                     _slot83895_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_klass83888_ _slot83889_ _field83890_)
        (lambda (_obj83892_)
          (if (let ((__tmp88767
                     (let () (declare (not safe)) (##type-id _klass83888_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83892_ __tmp88767))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _obj83892_ _field83890_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _obj83892_ _slot83889_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_klass83881_ _slot83882_ _field83883_)
        (lambda (_obj83885_ _val83886_)
          (if (let ((__tmp88768
                     (let () (declare (not safe)) (##type-id _klass83881_))))
                (declare (not safe))
                (##structure-direct-instance-of? _obj83885_ __tmp88768))
              (let ()
                (declare (not safe))
                (unchecked-field-set! _obj83885_ _field83883_ _val83886_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set! _obj83885_ _slot83882_ _val83886_))))))
    (define class-slot-offset
      (lambda (_klass83878_ _slot83879_)
        (let ((__tmp88769
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _klass83878_ '8 class::t '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp88769 _slot83879_ '#f))))
    (define class-slot-ref
      (lambda (_klass83872_ _obj83873_ _slot83874_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass83872_ _obj83873_))
            (let ((_off83876_
                   (let ((__tmp88770 (object-type _obj83873_)))
                     (declare (not safe))
                     (class-slot-offset __tmp88770 _slot83874_))))
              (declare (not safe))
              (##unchecked-structure-ref
               _obj83873_
               _off83876_
               _klass83872_
               _slot83874_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj83873_ _klass83872_)))))
    (define class-slot-set!
      (lambda (_klass83865_ _obj83866_ _slot83867_ _val83868_)
        (if (let ()
              (declare (not safe))
              (class-instance? _klass83865_ _obj83866_))
            (let ((_off83870_
                   (let ((__tmp88771 (object-type _obj83866_)))
                     (declare (not safe))
                     (class-slot-offset __tmp88771 _slot83867_))))
              (declare (not safe))
              (##unchecked-structure-set!
               _obj83866_
               _val83868_
               _off83870_
               _klass83865_
               _slot83867_))
            (let ()
              (declare (not safe))
              (not-an-instance__0 _obj83866_ _klass83865_)))))
    (define unchecked-field-ref
      (lambda (_obj83862_ _off83863_)
        (let ((__tmp88772
               (let () (declare (not safe)) (##structure-type _obj83862_))))
          (declare (not safe))
          (##unchecked-structure-ref _obj83862_ _off83863_ __tmp88772 '#f))))
    (define unchecked-field-set!
      (lambda (_obj83858_ _off83859_ _val83860_)
        (let ((__tmp88773
               (let () (declare (not safe)) (##structure-type _obj83858_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _obj83858_
           _val83860_
           _off83859_
           __tmp88773
           '#f))))
    (define unchecked-slot-ref
      (lambda (_obj83855_ _slot83856_)
        (let ((__tmp88774
               (let ((__tmp88775
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj83855_))))
                 (declare (not safe))
                 (class-slot-offset __tmp88775 _slot83856_))))
          (declare (not safe))
          (unchecked-field-ref _obj83855_ __tmp88774))))
    (define unchecked-slot-set!
      (lambda (_obj83851_ _slot83852_ _val83853_)
        (let ((__tmp88776
               (let ((__tmp88777
                      (let ()
                        (declare (not safe))
                        (##structure-type _obj83851_))))
                 (declare (not safe))
                 (class-slot-offset __tmp88777 _slot83852_))))
          (declare (not safe))
          (unchecked-field-set! _obj83851_ __tmp88776 _val83853_))))
    (define slot-ref__%
      (lambda (_obj83827_ _slot83828_ _E83829_)
        (if (object? _obj83827_)
            (let* ((_klass83831_ (object-type _obj83827_))
                   (_$e83834_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass83831_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass83831_ _slot83828_))
                        '#f)))
              (if _$e83834_
                  ((lambda (_off83837_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _obj83827_ _off83837_)))
                   _$e83834_)
                  (_E83829_ _obj83827_ _slot83828_)))
            (_E83829_ _obj83827_ _slot83828_))))
    (define slot-ref__0
      (lambda (_obj83842_ _slot83843_)
        (let ((_E83845_ __slot-error))
          (declare (not safe))
          (slot-ref__% _obj83842_ _slot83843_ _E83845_))))
    (define slot-ref
      (lambda _g88779_
        (let ((_g88778_ (let () (declare (not safe)) (##length _g88779_))))
          (cond ((let () (declare (not safe)) (##fx= _g88778_ 2))
                 (apply (lambda (_obj83842_ _slot83843_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _obj83842_ _slot83843_)))
                        _g88779_))
                ((let () (declare (not safe)) (##fx= _g88778_ 3))
                 (apply (lambda (_obj83847_ _slot83848_ _E83849_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__% _obj83847_ _slot83848_ _E83849_)))
                        _g88779_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g88779_))))))
    (define slot-set!__%
      (lambda (_obj83799_ _slot83800_ _val83801_ _E83802_)
        (if (object? _obj83799_)
            (let* ((_klass83804_ (object-type _obj83799_))
                   (_$e83807_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _klass83804_
                           'gerbil#class::t))
                        (let ()
                          (declare (not safe))
                          (class-slot-offset _klass83804_ _slot83800_))
                        '#f)))
              (if _$e83807_
                  ((lambda (_off83810_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _obj83799_
                        _off83810_
                        _val83801_)))
                   _$e83807_)
                  (_E83802_ _obj83799_ _slot83800_)))
            (_E83802_ _obj83799_ _slot83800_))))
    (define slot-set!__0
      (lambda (_obj83815_ _slot83816_ _val83817_)
        (let ((_E83819_ __slot-error))
          (declare (not safe))
          (slot-set!__% _obj83815_ _slot83816_ _val83817_ _E83819_))))
    (define slot-set!
      (lambda _g88781_
        (let ((_g88780_ (let () (declare (not safe)) (##length _g88781_))))
          (cond ((let () (declare (not safe)) (##fx= _g88780_ 3))
                 (apply (lambda (_obj83815_ _slot83816_ _val83817_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0 _obj83815_ _slot83816_ _val83817_)))
                        _g88781_))
                ((let () (declare (not safe)) (##fx= _g88780_ 4))
                 (apply (lambda (_obj83821_ _slot83822_ _val83823_ _E83824_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _obj83821_
                             _slot83822_
                             _val83823_
                             _E83824_)))
                        _g88781_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g88781_))))))
    (define __slot-error
      (lambda (_obj83795_ _slot83796_)
        (error '"Cannot find slot" 'object: _obj83795_ 'slot: _slot83796_)))
    (define subclass?
      (lambda (_maybe-sub-class83785_ _maybe-super-class83786_)
        (let* ((_maybe-super-class-id83788_
                (let ()
                  (declare (not safe))
                  (##type-id _maybe-super-class83786_)))
               (_$e83790_
                (let ((__tmp88782
                       (let ()
                         (declare (not safe))
                         (##type-id _maybe-sub-class83785_))))
                  (declare (not safe))
                  (eq? _maybe-super-class-id83788_ __tmp88782))))
          (if _$e83790_
              _$e83790_
              (let ((__tmp88784
                     (lambda (_super-class83793_)
                       (let ((__tmp88785
                              (let ()
                                (declare (not safe))
                                (##type-id _super-class83793_))))
                         (declare (not safe))
                         (eq? __tmp88785 _maybe-super-class-id83788_))))
                    (__tmp88783
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _maybe-sub-class83785_
                        '6
                        class::t
                        '#f))))
                (declare (not safe))
                (ormap1 __tmp88784 __tmp88783))))))
    (define object? ##structure?)
    (define object-type ##structure-type)
    (define direct-instance?
      (lambda (_klass83782_ _obj83783_)
        (let ((__tmp88786
               (let () (declare (not safe)) (##type-id _klass83782_))))
          (declare (not safe))
          (##structure-direct-instance-of? _obj83783_ __tmp88786))))
    (define struct-instance?
      (lambda (_klass83779_ _obj83780_)
        (let ((__tmp88787
               (let () (declare (not safe)) (##type-id _klass83779_))))
          (declare (not safe))
          (##structure-instance-of? _obj83780_ __tmp88787))))
    (define class-instance?
      (lambda (_klass83774_ _obj83775_)
        (if (object? _obj83775_)
            (let ((_type83777_ (object-type _obj83775_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _type83777_ 'gerbil#class::t))
                  (let ()
                    (declare (not safe))
                    (subclass? _type83777_ _klass83774_))
                  '#f))
            '#f)))
    (define make-object
      (lambda (_klass83769_ _k83770_)
        (let ((_obj83772_
               (let ()
                 (declare (not safe))
                 (##make-structure _klass83769_ _k83770_))))
          (let () (declare (not safe)) (object-fill! _obj83772_ '#f))
          _obj83772_)))
    (define object-fill!
      (lambda (_obj83762_ _fill83763_)
        (let _loop83765_ ((_i83767_
                           (let ((__tmp88789
                                  (let ()
                                    (declare (not safe))
                                    (##structure-length _obj83762_))))
                             (declare (not safe))
                             (##fx- __tmp88789 '1))))
          (if (let () (declare (not safe)) (##fx> _i83767_ '0))
              (begin
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _obj83762_
                   _fill83763_
                   _i83767_
                   '#f
                   '#f))
                (let ((__tmp88788
                       (let () (declare (not safe)) (##fx- _i83767_ '1))))
                  (declare (not safe))
                  (_loop83765_ __tmp88788)))
              _obj83762_))))
    (define new-instance
      (lambda (_klass83760_)
        (let ((__obj88694
               (let ((__tmp88790
                      (let ((__tmp88791
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass83760_
                                '7
                                class::t
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp88791))))
                 (declare (not safe))
                 (##make-structure _klass83760_ __tmp88790))))
          (let () (declare (not safe)) (object-fill! __obj88694 '#f))
          __obj88694)))
    (define make-instance
      (lambda (_klass83750_ . _args83751_)
        (let* ((_obj83753_
                (let () (declare (not safe)) (new-instance _klass83750_)))
               (_$e83755_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _klass83750_ '10 class::t '#f))))
          (if _$e83755_
              ((lambda (_kons-id83758_)
                 (let ()
                   (declare (not safe))
                   (__constructor-init!
                    _klass83750_
                    _kons-id83758_
                    _obj83753_
                    _args83751_)))
               _$e83755_)
              (if (let ()
                    (declare (not safe))
                    (class-type-metaclass? _klass83750_))
                  (let ()
                    (declare (not safe))
                    (__metaclass-instance-init!
                     _klass83750_
                     _obj83753_
                     _args83751_))
                  (if (let ((__tmp88795
                             (let ()
                               (declare (not safe))
                               (class-type-struct? _klass83750_))))
                        (declare (not safe))
                        (not __tmp88795))
                      (let ()
                        (declare (not safe))
                        (__class-instance-init!
                         _klass83750_
                         _obj83753_
                         _args83751_))
                      (if (let ((__tmp88793
                                 (let ((__tmp88794
                                        (let ()
                                          (declare (not safe))
                                          (##structure-length _obj83753_))))
                                   (declare (not safe))
                                   (##fx- __tmp88794 '1)))
                                (__tmp88792 (length _args83751_)))
                            (declare (not safe))
                            (##fx= __tmp88793 __tmp88792))
                          (apply ##structure _klass83750_ _args83751_)
                          (error '"arguments don't match object size"
                                 'class:
                                 _klass83750_
                                 'slots:
                                 (let ()
                                   (declare (not safe))
                                   (class-type-slot-list _klass83750_))
                                 'args:
                                 _args83751_))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_obj83747_ . _args83748_)
        (if (let ((__tmp88797 (length _args83748_))
                  (__tmp88796
                   (let ()
                     (declare (not safe))
                     (##structure-length _obj83747_))))
              (declare (not safe))
              (##fx< __tmp88797 __tmp88796))
            (let ()
              (declare (not safe))
              (__struct-instance-init! _obj83747_ _args83748_))
            (error '"too many arguments for struct"
                   'object:
                   _obj83747_
                   'args:
                   _args83748_))))
    (define __struct-instance-init!
      (lambda (_obj83706_ _args83707_)
        (let _lp83709_ ((_k83711_ '1) (_rest83712_ _args83707_))
          (let* ((_rest8371383721_ _rest83712_)
                 (_else8371583729_ (lambda () _obj83706_))
                 (_K8371783735_
                  (lambda (_rest83732_ _hd83733_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set! _obj83706_ _k83711_ _hd83733_))
                    (let ((__tmp88798
                           (let () (declare (not safe)) (##fx+ _k83711_ '1))))
                      (declare (not safe))
                      (_lp83709_ __tmp88798 _rest83732_)))))
            (if (let () (declare (not safe)) (##pair? _rest8371383721_))
                (let ((_hd8371883738_
                       (let () (declare (not safe)) (##car _rest8371383721_)))
                      (_tl8371983740_
                       (let () (declare (not safe)) (##cdr _rest8371383721_))))
                  (let* ((_hd83743_ _hd8371883738_)
                         (_rest83745_ _tl8371983740_))
                    (declare (not safe))
                    (_K8371783735_ _rest83745_ _hd83743_)))
                (let () (declare (not safe)) (_else8371583729_)))))))
    (define class-instance-init!
      (lambda (_obj83703_ . _args83704_)
        (let ((__tmp88799 (object-type _obj83703_)))
          (declare (not safe))
          (__class-instance-init! __tmp88799 _obj83703_ _args83704_))))
    (define __class-instance-init!
      (lambda (_klass83647_ _obj83648_ _args83649_)
        (let _lp83651_ ((_rest83653_ _args83649_))
          (let* ((_rest8365483664_ _rest83653_)
                 (_else8365683672_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _rest83653_))
                        _obj83648_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _klass83647_
                               'rest:
                               _rest83653_))))
                 (_K8365883684_
                  (lambda (_rest83675_ _val83676_ _key83677_)
                    (let ((_$e83679_
                           (let ()
                             (declare (not safe))
                             (class-slot-offset _klass83647_ _key83677_))))
                      (if _$e83679_
                          ((lambda (_off83682_)
                             (let ()
                               (declare (not safe))
                               (unchecked-field-set!
                                _obj83648_
                                _off83682_
                                _val83676_))
                             (let ()
                               (declare (not safe))
                               (_lp83651_ _rest83675_)))
                           _$e83679_)
                          (error '"unknown slot"
                                 'class:
                                 _klass83647_
                                 'slot:
                                 _key83677_))))))
            (if (let () (declare (not safe)) (##pair? _rest8365483664_))
                (let ((_hd8365983687_
                       (let () (declare (not safe)) (##car _rest8365483664_)))
                      (_tl8366083689_
                       (let () (declare (not safe)) (##cdr _rest8365483664_))))
                  (let ((_key83692_ _hd8365983687_))
                    (if (let () (declare (not safe)) (##pair? _tl8366083689_))
                        (let ((_hd8366183694_
                               (let ()
                                 (declare (not safe))
                                 (##car _tl8366083689_)))
                              (_tl8366283696_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _tl8366083689_))))
                          (let* ((_val83699_ _hd8366183694_)
                                 (_rest83701_ _tl8366283696_))
                            (declare (not safe))
                            (_K8365883684_ _rest83701_ _val83699_ _key83692_)))
                        (let () (declare (not safe)) (_else8365683672_)))))
                (let () (declare (not safe)) (_else8365683672_)))))))
    (define __metaclass-instance-init!
      (lambda (_klass83643_ _obj83644_ _args83645_)
        (apply call-method
               _klass83643_
               'instance-init!
               _obj83644_
               _args83645_)))
    (define constructor-init!
      (lambda (_klass83638_ _kons-id83639_ _obj83640_ . _args83641_)
        (let ()
          (declare (not safe))
          (__constructor-init!
           _klass83638_
           _kons-id83639_
           _obj83640_
           _args83641_))))
    (define __constructor-init!
      (lambda (_klass83628_ _kons-id83629_ _obj83630_ _args83631_)
        (let ((_$e83633_
               (let ()
                 (declare (not safe))
                 (__find-method _klass83628_ _obj83630_ _kons-id83629_))))
          (if _$e83633_
              ((lambda (_kons83636_)
                 (apply _kons83636_ _obj83630_ _args83631_)
                 _obj83630_)
               _$e83633_)
              (error '"missing constructor"
                     'class:
                     _klass83628_
                     'method:
                     _kons-id83629_)))))
    (define struct-copy
      (lambda (_struct83626_)
        (if (let () (declare (not safe)) (##structure? _struct83626_))
            '#!void
            (error '"not a structure" _struct83626_))
        (let () (declare (not safe)) (##structure-copy _struct83626_))))
    (define struct->list
      (lambda (_obj83624_)
        (if (object? _obj83624_)
            (let () (declare (not safe)) (##vector->list _obj83624_))
            (error '"not an object" _obj83624_))))
    (define class->list
      (lambda (_obj83611_)
        (if (object? _obj83611_)
            (let ((_klass83613_ (object-type _obj83611_)))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _klass83613_ 'gerbil#class::t))
                  (let ((_slot-vector83615_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _klass83613_
                            '7
                            class::t
                            '#f))))
                    (let _loop83617_ ((_index83619_
                                       (let ((__tmp88805
                                              (let ()
                                                (declare (not safe))
                                                (##vector-length
                                                 _slot-vector83615_))))
                                         (declare (not safe))
                                         (##fx- __tmp88805 '1)))
                                      (_plist83620_ '()))
                      (if (let () (declare (not safe)) (##fx< _index83619_ '1))
                          (let ()
                            (declare (not safe))
                            (cons _klass83613_ _plist83620_))
                          (let ((_slot83622_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _slot-vector83615_
                                    _index83619_))))
                            (let ((__tmp88804
                                   (let ()
                                     (declare (not safe))
                                     (##fx- _index83619_ '1)))
                                  (__tmp88800
                                   (let ((__tmp88803
                                          (symbol->keyword _slot83622_))
                                         (__tmp88801
                                          (let ((__tmp88802
                                                 (let ()
                                                   (declare (not safe))
                                                   (unchecked-field-ref
                                                    _obj83611_
                                                    _index83619_))))
                                            (declare (not safe))
                                            (cons __tmp88802 _plist83620_))))
                                     (declare (not safe))
                                     (cons __tmp88803 __tmp88801))))
                              (declare (not safe))
                              (_loop83617_ __tmp88804 __tmp88800))))))
                  (error '"not a class type"
                         'object:
                         _obj83611_
                         'class:
                         _klass83613_)))
            (error '"not an object" _obj83611_))))
    (define call-method
      (lambda (_obj83602_ _id83603_ . _args83604_)
        (let ((_$e83606_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83602_ _id83603_))))
          (if _$e83606_
              ((lambda (_method83609_)
                 (apply _method83609_ _obj83602_ _args83604_))
               _$e83606_)
              (error '"cannot find method"
                     'object:
                     _obj83602_
                     'method:
                     _id83603_)))))
    (define __builtin-type-methods
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define method-ref
      (lambda (_obj83599_ _id83600_)
        (if (object? _obj83599_)
            (let ((__tmp88806 (object-type _obj83599_)))
              (declare (not safe))
              (find-method __tmp88806 _obj83599_ _id83600_))
            '#f)))
    (define checked-method-ref
      (lambda (_obj83593_ _id83594_)
        (let ((_$e83596_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83593_ _id83594_))))
          (if _$e83596_
              _$e83596_
              (error '"missing method"
                     'object:
                     _obj83593_
                     'method:
                     _id83594_)))))
    (define bound-method-ref
      (lambda (_obj83583_ _id83584_)
        (let ((_$e83586_
               (let ()
                 (declare (not safe))
                 (method-ref _obj83583_ _id83584_))))
          (if _$e83586_
              ((lambda (_method83589_)
                 (lambda _args83591_
                   (apply _method83589_ _obj83583_ _args83591_)))
               _$e83586_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_obj83576_ _id83577_)
        (let ((_method83579_
               (let ()
                 (declare (not safe))
                 (checked-method-ref _obj83576_ _id83577_))))
          (lambda _args83581_ (apply _method83579_ _obj83576_ _args83581_)))))
    (define find-method
      (lambda (_klass83572_ _obj83573_ _id83574_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass83572_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass83572_ _obj83573_ _id83574_))
            (let ()
              (declare (not safe))
              (builtin-find-method _klass83572_ _obj83573_ _id83574_)))))
    (define __find-method
      (lambda (_klass83565_ _obj83566_ _id83567_)
        (let ((_$e83569_
               (let ()
                 (declare (not safe))
                 (direct-method-ref _klass83565_ _obj83566_ _id83567_))))
          (if _$e83569_
              _$e83569_
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass83565_))
                  '#f
                  (let ()
                    (declare (not safe))
                    (mixin-method-ref _klass83565_ _obj83566_ _id83567_)))))))
    (define class-find-method
      (lambda (_klass83561_ _obj83562_ _id83563_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _klass83561_ 'gerbil#class::t))
            (let ()
              (declare (not safe))
              (__find-method _klass83561_ _obj83562_ _id83563_))
            '#f)))
    (define mixin-find-method
      (lambda (_mixins83553_ _obj83554_ _id83555_)
        (let ((__tmp88807
               (lambda (_g8355683558_)
                 (let ()
                   (declare (not safe))
                   (direct-method-ref _g8355683558_ _obj83554_ _id83555_)))))
          (declare (not safe))
          (ormap1 __tmp88807 _mixins83553_))))
    (define builtin-find-method
      (lambda (_klass83546_ _obj83547_ _id83548_)
        (if (let () (declare (not safe)) (##type? _klass83546_))
            (let ((_$e83550_
                   (let ()
                     (declare (not safe))
                     (builtin-method-ref _klass83546_ _obj83547_ _id83548_))))
              (if _$e83550_
                  _$e83550_
                  (let ((__tmp88808
                         (let ()
                           (declare (not safe))
                           (##type-super _klass83546_))))
                    (declare (not safe))
                    (builtin-find-method __tmp88808 _obj83547_ _id83548_))))
            '#f)))
    (define direct-method-ref
      (lambda (_klass83523_ _obj83524_ _id83525_)
        (letrec ((_metaclass-resolve-method83527_
                  (lambda ()
                    (let ((__method88695
                           (let ()
                             (declare (not safe))
                             (method-ref _klass83523_ 'direct-method-ref))))
                      (if __method88695
                          (__method88695 _klass83523_ _obj83524_ _id83525_)
                          (error '"Missing method"
                                 _klass83523_
                                 'direct-method-ref)))))
                 (_metaclass-resolve-method!83528_
                  (lambda ()
                    (let ((_method83543_
                           (let ()
                             (declare (not safe))
                             (_metaclass-resolve-method83527_))))
                      (let ((__tmp88810
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _klass83523_
                                '11
                                class::t
                                '#f)))
                            (__tmp88809 (if _method83543_ 'resolved 'unknown)))
                        (declare (not safe))
                        (symbolic-table-set! __tmp88810 _id83525_ __tmp88809))
                      _method83543_))))
          (let ((_$e83530_
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _klass83523_ '11 class::t '#f))))
            (if _$e83530_
                ((lambda (_ht83533_)
                   (let ((_method83535_
                          (let ()
                            (declare (not safe))
                            (symbolic-table-ref _ht83533_ _id83525_ '#f))))
                     (if (let ()
                           (declare (not safe))
                           (procedure? _method83535_))
                         _method83535_
                         (if (let ()
                               (declare (not safe))
                               (class-type-metaclass? _klass83523_))
                             (let ((_$e83537_ _method83535_))
                               (if (let ()
                                     (declare (not safe))
                                     (eq? 'resolved _$e83537_))
                                   (let ()
                                     (declare (not safe))
                                     (_metaclass-resolve-method83527_))
                                   (if (let ()
                                         (declare (not safe))
                                         (eq? 'unknown _$e83537_))
                                       '#f
                                       (let ()
                                         (declare (not safe))
                                         (_metaclass-resolve-method!83528_)))))
                             '#f))))
                 _$e83530_)
                (if (let ()
                      (declare (not safe))
                      (class-type-metaclass? _klass83523_))
                    (let ((_tab83540_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass83523_
                         _tab83540_
                         '11
                         class::t
                         '#f))
                      (let ()
                        (declare (not safe))
                        (_metaclass-resolve-method!83528_)))
                    '#f))))))
    (define mixin-method-ref
      (lambda (_klass83519_ _obj83520_ _id83521_)
        (let ((__tmp88811 (##structure-ref _klass83519_ '6 class::t '#f)))
          (declare (not safe))
          (mixin-find-method __tmp88811 _obj83520_ _id83521_))))
    (define builtin-method-ref
      (lambda (_klass83510_ _obj83511_ _id83512_)
        (let ((_$e83514_
               (let ((__tmp88812
                      (let () (declare (not safe)) (##type-id _klass83510_))))
                 (declare (not safe))
                 (symbolic-table-ref __builtin-type-methods __tmp88812 '#f))))
          (if _$e83514_
              ((lambda (_mtab83517_)
                 (let ()
                   (declare (not safe))
                   (symbolic-table-ref _mtab83517_ _id83512_ '#f)))
               _$e83514_)
              '#f))))
    (define bind-method!__%
      (lambda (_klass83476_ _id83477_ _proc83478_ _rebind?83479_)
        (letrec ((_bind!83481_
                  (lambda (_ht83494_)
                    (if (and (let () (declare (not safe)) (not _rebind?83479_))
                             (let ()
                               (declare (not safe))
                               (symbolic-table-ref _ht83494_ _id83477_ '#f)))
                        (error '"method already bound"
                               'class:
                               _klass83476_
                               'method:
                               _id83477_)
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _ht83494_
                           _id83477_
                           _proc83478_))))))
          (if (let () (declare (not safe)) (procedure? _proc83478_))
              '#!void
              (error '"bad method; expected procedure" _proc83478_))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass83476_ 'gerbil#class::t))
              (let ((_ht83483_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _klass83476_
                        '11
                        class::t
                        '#f))))
                (if _ht83483_
                    (let () (declare (not safe)) (_bind!83481_ _ht83483_))
                    (let ((_ht83485_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _klass83476_
                         _ht83485_
                         '11
                         class::t
                         '#f))
                      (let () (declare (not safe)) (_bind!83481_ _ht83485_)))))
              (if (let () (declare (not safe)) (##type? _klass83476_))
                  (let ((_ht83492_
                         (let ((_$e83487_
                                (let ((__tmp88813
                                       (let ()
                                         (declare (not safe))
                                         (##type-id _klass83476_))))
                                  (declare (not safe))
                                  (symbolic-table-ref
                                   __builtin-type-methods
                                   __tmp88813
                                   '#f))))
                           (if _$e83487_
                               _$e83487_
                               (let ((_ht83490_
                                      (let ()
                                        (declare (not safe))
                                        (make-symbolic-table__% '#f '0))))
                                 (let ((__tmp88814
                                        (let ()
                                          (declare (not safe))
                                          (##type-id _klass83476_))))
                                   (declare (not safe))
                                   (symbolic-table-set!
                                    __builtin-type-methods
                                    __tmp88814
                                    _ht83490_))
                                 _ht83490_)))))
                    (declare (not safe))
                    (_bind!83481_ _ht83492_))
                  (error '"bad class; expected class or builtin type"
                         _klass83476_))))))
    (define bind-method!__0
      (lambda (_klass83499_ _id83500_ _proc83501_)
        (let ((_rebind?83503_ '#t))
          (declare (not safe))
          (bind-method!__%
           _klass83499_
           _id83500_
           _proc83501_
           _rebind?83503_))))
    (define bind-method!
      (lambda _g88816_
        (let ((_g88815_ (let () (declare (not safe)) (##length _g88816_))))
          (cond ((let () (declare (not safe)) (##fx= _g88815_ 3))
                 (apply (lambda (_klass83499_ _id83500_ _proc83501_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _klass83499_
                             _id83500_
                             _proc83501_)))
                        _g88816_))
                ((let () (declare (not safe)) (##fx= _g88815_ 4))
                 (apply (lambda (_klass83505_
                                 _id83506_
                                 _proc83507_
                                 _rebind?83508_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _klass83505_
                             _id83506_
                             _proc83507_
                             _rebind?83508_)))
                        _g88816_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g88816_))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-eq-table__% '#f '0)))
    (define bind-specializer!
      (lambda (_proc83472_ _specializer83473_)
        (let ()
          (declare (not safe))
          (eq-table-set!
           __method-specializers
           _proc83472_
           _specializer83473_))))
    (define seal-class!
      (lambda (_klass83439_)
        (letrec ((_collect-methods!83441_
                  (lambda (_mtab83457_)
                    (letrec ((_merge!83459_
                              (lambda (_tab83467_)
                                (let ((__tmp88817
                                       (lambda (_id83469_ _proc83470_)
                                         (let ()
                                           (declare (not safe))
                                           (symbolic-table-set!
                                            _mtab83457_
                                            _id83469_
                                            _proc83470_)))))
                                  (declare (not safe))
                                  (raw-table-for-each _tab83467_ __tmp88817))))
                             (_collect-direct-methods!83460_
                              (lambda (_klass83462_)
                                (let ((_$e83464_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _klass83462_
                                          '11
                                          class::t
                                          '#f))))
                                  (if _$e83464_
                                      (let ()
                                        (declare (not safe))
                                        (_merge!83459_ _$e83464_))
                                      '#!void)))))
                      (for-each
                       _collect-direct-methods!83460_
                       (reverse (let ()
                                  (declare (not safe))
                                  (class-precedence-list _klass83439_))))))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass83439_ 'gerbil#class::t))
              (if (let ()
                    (declare (not safe))
                    (class-type-sealed? _klass83439_))
                  '#!void
                  (begin
                    (if (let ()
                          (declare (not safe))
                          (class-type-final? _klass83439_))
                        '#!void
                        (error '"cannot seal non-final class" _klass83439_))
                    (if (let ()
                          (declare (not safe))
                          (class-type-metaclass? _klass83439_))
                        (let ((__method88696
                               (let ()
                                 (declare (not safe))
                                 (method-ref _klass83439_ 'seal-class!))))
                          (if __method88696
                              (__method88696 _klass83439_)
                              (error '"Missing method"
                                     _klass83439_
                                     'seal-class!)))
                        (if (let ((__tmp88824
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _klass83439_
                                      '6
                                      class::t
                                      '#f))))
                              (declare (not safe))
                              (find class-type-metaclass? __tmp88824))
                            (error '"cannot seal class that extends metaclass without a metaclass"
                                   _klass83439_)
                            (let ((_vtab83443_
                                   (let ()
                                     (declare (not safe))
                                     (make-symbolic-table__% '#f '0)))
                                  (_mtab83444_
                                   (let ()
                                     (declare (not safe))
                                     (make-symbolic-table__% '#f '0))))
                              (let ()
                                (declare (not safe))
                                (_collect-methods!83441_ _mtab83444_))
                              (let ((__tmp88818
                                     (lambda (_id83446_ _proc83447_)
                                       (let ((_$e83449_
                                              (let ()
                                                (declare (not safe))
                                                (eq-table-ref
                                                 __method-specializers
                                                 _proc83447_
                                                 '#f))))
                                         (if _$e83449_
                                             ((lambda (_specializer83452_)
                                                (let ((_proc83454_
                                                       (_specializer83452_
                                                        _klass83439_))
                                                      (_gid83455_
                                                       (let ((__tmp88819
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##type-id _klass83439_))))
                 (declare (not safe))
                 (make-symbol__1 __tmp88819 '"::[" _id83446_ '"]"))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (eval (let ((__tmp88820
                                                               (let ((__tmp88821
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp88822
                                     (let ((__tmp88823
                                            (let ()
                                              (declare (not safe))
                                              (cons _proc83454_ '()))))
                                       (declare (not safe))
                                       (cons 'quote __tmp88823))))
                                (declare (not safe))
                                (cons __tmp88822 '()))))
                         (declare (not safe))
                         (cons _gid83455_ __tmp88821))))
                  (declare (not safe))
                  (cons 'def __tmp88820)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (symbolic-table-set!
                                                     _vtab83443_
                                                     _id83446_
                                                     _proc83454_))))
                                              _$e83449_)
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-set!
                                                _vtab83443_
                                                _id83446_
                                                _proc83447_)))))))
                                (declare (not safe))
                                (raw-table-for-each _mtab83444_ __tmp88818))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-set!
                                 _klass83439_
                                 _vtab83443_
                                 '11
                                 class::t
                                 '#f)))))
                    (let ()
                      (declare (not safe))
                      (&class-type-seal! _klass83439_))))
              '#!void))))
    (define next-method
      (lambda (_subklass83388_ _obj83389_ _id83390_)
        (let ((_klass83392_ (object-type _obj83389_))
              (_type-id83393_
               (let () (declare (not safe)) (##type-id _subklass83388_))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _klass83392_ 'gerbil#class::t))
              (let _lp83395_ ((_rest83397_
                               (let ()
                                 (declare (not safe))
                                 (class-precedence-list _klass83392_))))
                (let* ((_rest8339883406_ _rest83397_)
                       (_else8340083414_ (lambda () '#f))
                       (_K8340283420_
                        (lambda (_rest83417_ _klass83418_)
                          (if (let ((__tmp88827
                                     (let ()
                                       (declare (not safe))
                                       (##type-id _klass83418_))))
                                (declare (not safe))
                                (eq? _type-id83393_ __tmp88827))
                              (let ()
                                (declare (not safe))
                                (mixin-find-method
                                 _rest83417_
                                 _obj83389_
                                 _id83390_))
                              (let ()
                                (declare (not safe))
                                (_lp83395_ _rest83417_))))))
                  (if (let () (declare (not safe)) (##pair? _rest8339883406_))
                      (let ((_hd8340383423_
                             (let ()
                               (declare (not safe))
                               (##car _rest8339883406_)))
                            (_tl8340483425_
                             (let ()
                               (declare (not safe))
                               (##cdr _rest8339883406_))))
                        (let* ((_klass83428_ _hd8340383423_)
                               (_rest83430_ _tl8340483425_))
                          (declare (not safe))
                          (_K8340283420_ _rest83430_ _klass83428_)))
                      (let () (declare (not safe)) (_else8340083414_)))))
              (if (let () (declare (not safe)) (##type? _klass83392_))
                  (let _lp83432_ ((_klass83434_ _klass83392_))
                    (if (let ((__tmp88826
                               (let ()
                                 (declare (not safe))
                                 (##type-id _klass83434_))))
                          (declare (not safe))
                          (eq? _type-id83393_ __tmp88826))
                        (let ((__tmp88825
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83434_))))
                          (declare (not safe))
                          (builtin-find-method
                           __tmp88825
                           _obj83389_
                           _id83390_))
                        (let ((_$e83436_
                               (let ()
                                 (declare (not safe))
                                 (##type-super _klass83434_))))
                          (if _$e83436_
                              (let ()
                                (declare (not safe))
                                (_lp83432_ _$e83436_))
                              '#f))))
                  '#f)))))
    (define call-next-method
      (lambda (_subklass83378_ _obj83379_ _id83380_ . _args83381_)
        (let ((_$e83383_
               (let ()
                 (declare (not safe))
                 (next-method _subklass83378_ _obj83379_ _id83380_))))
          (if _$e83383_
              ((lambda (_methodf83386_)
                 (apply _methodf83386_ _obj83379_ _args83381_))
               _$e83383_)
              (error '"cannot find next method"
                     'object:
                     _obj83379_
                     'method:
                     _id83380_)))))
    (define write-style (lambda (_we83376_) (macro-writeenv-style _we83376_)))
    (define write-object
      (lambda (_we83368_ _obj83369_)
        (let ((_$e83371_
               (let () (declare (not safe)) (method-ref _obj83369_ ':wr))))
          (if _$e83371_
              ((lambda (_method83374_) (_method83374_ _obj83369_ _we83368_))
               _$e83371_)
              (let ()
                (declare (not safe))
                (##default-wr _we83368_ _obj83369_))))))
    (let () (declare (not safe)) (##wr-set! write-object))))
